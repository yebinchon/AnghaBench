; ModuleID = '/home/carl/AnghaBench/linux/arch/s390/kernel/extr_topology.c_cpu_thread_map.c'
source_filename = "/home/carl/AnghaBench/linux/arch/s390/kernel/extr_topology.c_cpu_thread_map.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@topology_mode = common dso_local global i64 0, align 8
@TOPOLOGY_MODE_HW = common dso_local global i64 0, align 8
@smp_cpu_mtid = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @cpu_thread_map to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cpu_thread_map(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %6 = load i32, i32* %3, align 4
  %7 = call i32 @cpumask_of(i32 %6)
  %8 = call i32 @cpumask_copy(i32* %4, i32 %7)
  %9 = load i64, i64* @topology_mode, align 8
  %10 = load i64, i64* @TOPOLOGY_MODE_HW, align 8
  %11 = icmp ne i64 %9, %10
  br i1 %11, label %12, label %14

12:                                               ; preds = %1
  %13 = load i32, i32* %4, align 4
  store i32 %13, i32* %2, align 4
  br label %42

14:                                               ; preds = %1
  %15 = load i32, i32* %3, align 4
  %16 = load i32, i32* @smp_cpu_mtid, align 4
  %17 = add nsw i32 %16, 1
  %18 = urem i32 %15, %17
  %19 = load i32, i32* %3, align 4
  %20 = sub i32 %19, %18
  store i32 %20, i32* %3, align 4
  store i32 0, i32* %5, align 4
  br label %21

21:                                               ; preds = %37, %14
  %22 = load i32, i32* %5, align 4
  %23 = load i32, i32* @smp_cpu_mtid, align 4
  %24 = icmp sle i32 %22, %23
  br i1 %24, label %25, label %40

25:                                               ; preds = %21
  %26 = load i32, i32* %3, align 4
  %27 = load i32, i32* %5, align 4
  %28 = add i32 %26, %27
  %29 = call i64 @cpu_present(i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %36

31:                                               ; preds = %25
  %32 = load i32, i32* %3, align 4
  %33 = load i32, i32* %5, align 4
  %34 = add i32 %32, %33
  %35 = call i32 @cpumask_set_cpu(i32 %34, i32* %4)
  br label %36

36:                                               ; preds = %31, %25
  br label %37

37:                                               ; preds = %36
  %38 = load i32, i32* %5, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %5, align 4
  br label %21

40:                                               ; preds = %21
  %41 = load i32, i32* %4, align 4
  store i32 %41, i32* %2, align 4
  br label %42

42:                                               ; preds = %40, %12
  %43 = load i32, i32* %2, align 4
  ret i32 %43
}

declare dso_local i32 @cpumask_copy(i32*, i32) #1

declare dso_local i32 @cpumask_of(i32) #1

declare dso_local i64 @cpu_present(i32) #1

declare dso_local i32 @cpumask_set_cpu(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
