; ModuleID = '/home/carl/AnghaBench/linux/arch/sh/kernel/cpu/sh2/extr_smp-j2.c_j2_prepare_cpus.c'
source_filename = "/home/carl/AnghaBench/linux/arch/sh/kernel/cpu/sh2/extr_smp-j2.c_j2_prepare_cpus.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device_node = type { i32 }

@.str = private unnamed_addr constant [21 x i8] c"jcore,ipi-controller\00", align 1
@j2_ipi_irq = common dso_local global i32 0, align 4
@j2_ipi_trigger = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [17 x i8] c"jcore,cpuid-mmio\00", align 1
@sh2_cpuid_addr = common dso_local global i8* null, align 8
@j2_ipi_interrupt_handler = common dso_local global i64 0, align 8
@IRQF_PERCPU = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [4 x i8] c"ipi\00", align 1
@NR_CPUS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @j2_prepare_cpus to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @j2_prepare_cpus(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.device_node*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  store i32 1, i32* %5, align 4
  %6 = call %struct.device_node* @of_find_compatible_node(i32* null, i32* null, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  store %struct.device_node* %6, %struct.device_node** %3, align 8
  %7 = load %struct.device_node*, %struct.device_node** %3, align 8
  %8 = icmp ne %struct.device_node* %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  br label %43

10:                                               ; preds = %1
  %11 = load %struct.device_node*, %struct.device_node** %3, align 8
  %12 = call i32 @irq_of_parse_and_map(%struct.device_node* %11, i32 0)
  store i32 %12, i32* @j2_ipi_irq, align 4
  %13 = load %struct.device_node*, %struct.device_node** %3, align 8
  %14 = call i8* @of_iomap(%struct.device_node* %13, i32 0)
  store i8* %14, i8** @j2_ipi_trigger, align 8
  %15 = load i32, i32* @j2_ipi_irq, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %10
  %18 = load i8*, i8** @j2_ipi_trigger, align 8
  %19 = icmp ne i8* %18, null
  br i1 %19, label %21, label %20

20:                                               ; preds = %17, %10
  br label %43

21:                                               ; preds = %17
  %22 = call %struct.device_node* @of_find_compatible_node(i32* null, i32* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  store %struct.device_node* %22, %struct.device_node** %3, align 8
  %23 = load %struct.device_node*, %struct.device_node** %3, align 8
  %24 = icmp ne %struct.device_node* %23, null
  br i1 %24, label %26, label %25

25:                                               ; preds = %21
  br label %43

26:                                               ; preds = %21
  %27 = load %struct.device_node*, %struct.device_node** %3, align 8
  %28 = call i8* @of_iomap(%struct.device_node* %27, i32 0)
  store i8* %28, i8** @sh2_cpuid_addr, align 8
  %29 = load i8*, i8** @sh2_cpuid_addr, align 8
  %30 = icmp ne i8* %29, null
  br i1 %30, label %32, label %31

31:                                               ; preds = %26
  br label %43

32:                                               ; preds = %26
  %33 = load i32, i32* @j2_ipi_irq, align 4
  %34 = load i64, i64* @j2_ipi_interrupt_handler, align 8
  %35 = load i32, i32* @IRQF_PERCPU, align 4
  %36 = load i64, i64* @j2_ipi_interrupt_handler, align 8
  %37 = inttoptr i64 %36 to i8*
  %38 = call i64 @request_irq(i32 %33, i64 %34, i32 %35, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8* %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %32
  br label %43

41:                                               ; preds = %32
  %42 = load i32, i32* %2, align 4
  store i32 %42, i32* %5, align 4
  br label %43

43:                                               ; preds = %41, %40, %31, %25, %20, %9
  %44 = load i32, i32* %5, align 4
  store i32 %44, i32* %4, align 4
  br label %45

45:                                               ; preds = %54, %43
  %46 = load i32, i32* %4, align 4
  %47 = load i32, i32* @NR_CPUS, align 4
  %48 = icmp ult i32 %46, %47
  br i1 %48, label %49, label %57

49:                                               ; preds = %45
  %50 = load i32, i32* %4, align 4
  %51 = call i32 @set_cpu_possible(i32 %50, i32 0)
  %52 = load i32, i32* %4, align 4
  %53 = call i32 @set_cpu_present(i32 %52, i32 0)
  br label %54

54:                                               ; preds = %49
  %55 = load i32, i32* %4, align 4
  %56 = add i32 %55, 1
  store i32 %56, i32* %4, align 4
  br label %45

57:                                               ; preds = %45
  ret void
}

declare dso_local %struct.device_node* @of_find_compatible_node(i32*, i32*, i8*) #1

declare dso_local i32 @irq_of_parse_and_map(%struct.device_node*, i32) #1

declare dso_local i8* @of_iomap(%struct.device_node*, i32) #1

declare dso_local i64 @request_irq(i32, i64, i32, i8*, i8*) #1

declare dso_local i32 @set_cpu_possible(i32, i32) #1

declare dso_local i32 @set_cpu_present(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
