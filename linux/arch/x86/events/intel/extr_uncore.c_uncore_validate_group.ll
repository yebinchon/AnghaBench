; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/events/intel/extr_uncore.c_uncore_validate_group.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/events/intel/extr_uncore.c_uncore_validate_group.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_uncore_pmu = type { i32 }
%struct.perf_event = type { %struct.TYPE_2__, %struct.perf_event* }
%struct.TYPE_2__ = type { i32 }
%struct.intel_uncore_box = type { i32, %struct.intel_uncore_pmu* }

@EINVAL = common dso_local global i32 0, align 4
@NUMA_NO_NODE = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.intel_uncore_pmu*, %struct.perf_event*)* @uncore_validate_group to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uncore_validate_group(%struct.intel_uncore_pmu* %0, %struct.perf_event* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.intel_uncore_pmu*, align 8
  %5 = alloca %struct.perf_event*, align 8
  %6 = alloca %struct.perf_event*, align 8
  %7 = alloca %struct.intel_uncore_box*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.intel_uncore_pmu* %0, %struct.intel_uncore_pmu** %4, align 8
  store %struct.perf_event* %1, %struct.perf_event** %5, align 8
  %10 = load %struct.perf_event*, %struct.perf_event** %5, align 8
  %11 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %10, i32 0, i32 1
  %12 = load %struct.perf_event*, %struct.perf_event** %11, align 8
  store %struct.perf_event* %12, %struct.perf_event** %6, align 8
  %13 = load i32, i32* @EINVAL, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %8, align 4
  %15 = load %struct.perf_event*, %struct.perf_event** %5, align 8
  %16 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = call i64 @uncore_pmc_freerunning(i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %64

22:                                               ; preds = %2
  %23 = load %struct.intel_uncore_pmu*, %struct.intel_uncore_pmu** %4, align 8
  %24 = getelementptr inbounds %struct.intel_uncore_pmu, %struct.intel_uncore_pmu* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @NUMA_NO_NODE, align 4
  %27 = call %struct.intel_uncore_box* @uncore_alloc_box(i32 %25, i32 %26)
  store %struct.intel_uncore_box* %27, %struct.intel_uncore_box** %7, align 8
  %28 = load %struct.intel_uncore_box*, %struct.intel_uncore_box** %7, align 8
  %29 = icmp ne %struct.intel_uncore_box* %28, null
  br i1 %29, label %33, label %30

30:                                               ; preds = %22
  %31 = load i32, i32* @ENOMEM, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %3, align 4
  br label %64

33:                                               ; preds = %22
  %34 = load %struct.intel_uncore_pmu*, %struct.intel_uncore_pmu** %4, align 8
  %35 = load %struct.intel_uncore_box*, %struct.intel_uncore_box** %7, align 8
  %36 = getelementptr inbounds %struct.intel_uncore_box, %struct.intel_uncore_box* %35, i32 0, i32 1
  store %struct.intel_uncore_pmu* %34, %struct.intel_uncore_pmu** %36, align 8
  %37 = load %struct.intel_uncore_box*, %struct.intel_uncore_box** %7, align 8
  %38 = load %struct.perf_event*, %struct.perf_event** %6, align 8
  %39 = call i32 @uncore_collect_events(%struct.intel_uncore_box* %37, %struct.perf_event* %38, i32 1)
  store i32 %39, i32* %9, align 4
  %40 = load i32, i32* %9, align 4
  %41 = icmp slt i32 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %33
  br label %60

43:                                               ; preds = %33
  %44 = load i32, i32* %9, align 4
  %45 = load %struct.intel_uncore_box*, %struct.intel_uncore_box** %7, align 8
  %46 = getelementptr inbounds %struct.intel_uncore_box, %struct.intel_uncore_box* %45, i32 0, i32 0
  store i32 %44, i32* %46, align 8
  %47 = load %struct.intel_uncore_box*, %struct.intel_uncore_box** %7, align 8
  %48 = load %struct.perf_event*, %struct.perf_event** %5, align 8
  %49 = call i32 @uncore_collect_events(%struct.intel_uncore_box* %47, %struct.perf_event* %48, i32 0)
  store i32 %49, i32* %9, align 4
  %50 = load i32, i32* %9, align 4
  %51 = icmp slt i32 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %43
  br label %60

53:                                               ; preds = %43
  %54 = load i32, i32* %9, align 4
  %55 = load %struct.intel_uncore_box*, %struct.intel_uncore_box** %7, align 8
  %56 = getelementptr inbounds %struct.intel_uncore_box, %struct.intel_uncore_box* %55, i32 0, i32 0
  store i32 %54, i32* %56, align 8
  %57 = load %struct.intel_uncore_box*, %struct.intel_uncore_box** %7, align 8
  %58 = load i32, i32* %9, align 4
  %59 = call i32 @uncore_assign_events(%struct.intel_uncore_box* %57, i32* null, i32 %58)
  store i32 %59, i32* %8, align 4
  br label %60

60:                                               ; preds = %53, %52, %42
  %61 = load %struct.intel_uncore_box*, %struct.intel_uncore_box** %7, align 8
  %62 = call i32 @kfree(%struct.intel_uncore_box* %61)
  %63 = load i32, i32* %8, align 4
  store i32 %63, i32* %3, align 4
  br label %64

64:                                               ; preds = %60, %30, %21
  %65 = load i32, i32* %3, align 4
  ret i32 %65
}

declare dso_local i64 @uncore_pmc_freerunning(i32) #1

declare dso_local %struct.intel_uncore_box* @uncore_alloc_box(i32, i32) #1

declare dso_local i32 @uncore_collect_events(%struct.intel_uncore_box*, %struct.perf_event*, i32) #1

declare dso_local i32 @uncore_assign_events(%struct.intel_uncore_box*, i32*, i32) #1

declare dso_local i32 @kfree(%struct.intel_uncore_box*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
