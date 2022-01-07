; ModuleID = '/home/carl/AnghaBench/linux/arch/sparc/kernel/extr_smp_64.c_smp_boot_one_cpu.c'
source_filename = "/home/carl/AnghaBench/linux/arch/sparc/kernel/extr_smp_64.c_smp_boot_one_cpu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.task_struct = type { i32 }
%struct.device_node = type { i32 }

@sparc64_cpu_startup = common dso_local global i32 0, align 4
@cpu_new_thread = common dso_local global i32* null, align 8
@callin_flag = common dso_local global i64 0, align 8
@tlb_type = common dso_local global i64 0, align 8
@hypervisor = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [24 x i8] c"Processor %d is stuck.\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@ldom_domaining_enabled = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.task_struct*)* @smp_boot_one_cpu to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @smp_boot_one_cpu(i32 %0, %struct.task_struct* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.task_struct*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.device_node*, align 8
  store i32 %0, i32* %3, align 4
  store %struct.task_struct* %1, %struct.task_struct** %4, align 8
  store i64 ptrtoint (i32* @sparc64_cpu_startup to i64), i64* %5, align 8
  store i64 ptrtoint (i32** @cpu_new_thread to i64), i64* %6, align 8
  store i8* null, i8** %7, align 8
  store i64 0, i64* @callin_flag, align 8
  %11 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %12 = call i32* @task_thread_info(%struct.task_struct* %11)
  store i32* %12, i32** @cpu_new_thread, align 8
  %13 = load i64, i64* @tlb_type, align 8
  %14 = load i64, i64* @hypervisor, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %21

16:                                               ; preds = %2
  %17 = load i32, i32* %3, align 4
  %18 = load i64, i64* %5, align 8
  %19 = load i64, i64* %6, align 8
  %20 = call i32 @prom_startcpu_cpuid(i32 %17, i64 %18, i64 %19)
  br label %30

21:                                               ; preds = %2
  %22 = load i32, i32* %3, align 4
  %23 = call %struct.device_node* @of_find_node_by_cpuid(i32 %22)
  store %struct.device_node* %23, %struct.device_node** %10, align 8
  %24 = load %struct.device_node*, %struct.device_node** %10, align 8
  %25 = getelementptr inbounds %struct.device_node, %struct.device_node* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i64, i64* %5, align 8
  %28 = load i64, i64* %6, align 8
  %29 = call i32 @prom_startcpu(i32 %26, i64 %27, i64 %28)
  br label %30

30:                                               ; preds = %21, %16
  store i32 0, i32* %8, align 4
  br label %31

31:                                               ; preds = %40, %30
  %32 = load i32, i32* %8, align 4
  %33 = icmp slt i32 %32, 50000
  br i1 %33, label %34, label %43

34:                                               ; preds = %31
  %35 = load i64, i64* @callin_flag, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %34
  br label %43

38:                                               ; preds = %34
  %39 = call i32 @udelay(i32 100)
  br label %40

40:                                               ; preds = %38
  %41 = load i32, i32* %8, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %8, align 4
  br label %31

43:                                               ; preds = %37, %31
  %44 = load i64, i64* @callin_flag, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %43
  store i32 0, i32* %9, align 4
  br label %52

47:                                               ; preds = %43
  %48 = load i32, i32* %3, align 4
  %49 = call i32 @printk(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %48)
  %50 = load i32, i32* @ENODEV, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %9, align 4
  br label %52

52:                                               ; preds = %47, %46
  store i32* null, i32** @cpu_new_thread, align 8
  %53 = load i8*, i8** %7, align 8
  %54 = call i32 @kfree(i8* %53)
  %55 = load i32, i32* %9, align 4
  ret i32 %55
}

declare dso_local i32* @task_thread_info(%struct.task_struct*) #1

declare dso_local i32 @prom_startcpu_cpuid(i32, i64, i64) #1

declare dso_local %struct.device_node* @of_find_node_by_cpuid(i32) #1

declare dso_local i32 @prom_startcpu(i32, i64, i64) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @printk(i8*, i32) #1

declare dso_local i32 @kfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
