; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/events/intel/extr_uncore.c_uncore_pmu_event_stop.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/events/intel/extr_uncore.c_uncore_pmu_event_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.perf_event = type { i32, %struct.hw_perf_event }
%struct.hw_perf_event = type { i64, i32 }
%struct.intel_uncore_box = type { i64, i32**, i32 }

@PERF_HES_STOPPED = common dso_local global i32 0, align 4
@PERF_EF_UPDATE = common dso_local global i32 0, align 4
@PERF_HES_UPTODATE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @uncore_pmu_event_stop(%struct.perf_event* %0, i32 %1) #0 {
  %3 = alloca %struct.perf_event*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.intel_uncore_box*, align 8
  %6 = alloca %struct.hw_perf_event*, align 8
  store %struct.perf_event* %0, %struct.perf_event** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %8 = call %struct.intel_uncore_box* @uncore_event_to_box(%struct.perf_event* %7)
  store %struct.intel_uncore_box* %8, %struct.intel_uncore_box** %5, align 8
  %9 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %10 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %9, i32 0, i32 1
  store %struct.hw_perf_event* %10, %struct.hw_perf_event** %6, align 8
  %11 = load %struct.hw_perf_event*, %struct.hw_perf_event** %6, align 8
  %12 = getelementptr inbounds %struct.hw_perf_event, %struct.hw_perf_event* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = call i64 @uncore_pmc_freerunning(i64 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %32

16:                                               ; preds = %2
  %17 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %18 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %17, i32 0, i32 0
  %19 = call i32 @list_del(i32* %18)
  %20 = load %struct.intel_uncore_box*, %struct.intel_uncore_box** %5, align 8
  %21 = getelementptr inbounds %struct.intel_uncore_box, %struct.intel_uncore_box* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = add nsw i64 %22, -1
  store i64 %23, i64* %21, align 8
  %24 = icmp eq i64 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %16
  %26 = load %struct.intel_uncore_box*, %struct.intel_uncore_box** %5, align 8
  %27 = call i32 @uncore_pmu_cancel_hrtimer(%struct.intel_uncore_box* %26)
  br label %28

28:                                               ; preds = %25, %16
  %29 = load %struct.intel_uncore_box*, %struct.intel_uncore_box** %5, align 8
  %30 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %31 = call i32 @uncore_perf_event_update(%struct.intel_uncore_box* %29, %struct.perf_event* %30)
  br label %96

32:                                               ; preds = %2
  %33 = load %struct.hw_perf_event*, %struct.hw_perf_event** %6, align 8
  %34 = getelementptr inbounds %struct.hw_perf_event, %struct.hw_perf_event* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load %struct.intel_uncore_box*, %struct.intel_uncore_box** %5, align 8
  %37 = getelementptr inbounds %struct.intel_uncore_box, %struct.intel_uncore_box* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 8
  %39 = call i64 @__test_and_clear_bit(i64 %35, i32 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %75

41:                                               ; preds = %32
  %42 = load %struct.intel_uncore_box*, %struct.intel_uncore_box** %5, align 8
  %43 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %44 = call i32 @uncore_disable_event(%struct.intel_uncore_box* %42, %struct.perf_event* %43)
  %45 = load %struct.intel_uncore_box*, %struct.intel_uncore_box** %5, align 8
  %46 = getelementptr inbounds %struct.intel_uncore_box, %struct.intel_uncore_box* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = add nsw i64 %47, -1
  store i64 %48, i64* %46, align 8
  %49 = load %struct.intel_uncore_box*, %struct.intel_uncore_box** %5, align 8
  %50 = getelementptr inbounds %struct.intel_uncore_box, %struct.intel_uncore_box* %49, i32 0, i32 1
  %51 = load i32**, i32*** %50, align 8
  %52 = load %struct.hw_perf_event*, %struct.hw_perf_event** %6, align 8
  %53 = getelementptr inbounds %struct.hw_perf_event, %struct.hw_perf_event* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = getelementptr inbounds i32*, i32** %51, i64 %54
  store i32* null, i32** %55, align 8
  %56 = load %struct.hw_perf_event*, %struct.hw_perf_event** %6, align 8
  %57 = getelementptr inbounds %struct.hw_perf_event, %struct.hw_perf_event* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 8
  %59 = load i32, i32* @PERF_HES_STOPPED, align 4
  %60 = and i32 %58, %59
  %61 = call i32 @WARN_ON_ONCE(i32 %60)
  %62 = load i32, i32* @PERF_HES_STOPPED, align 4
  %63 = load %struct.hw_perf_event*, %struct.hw_perf_event** %6, align 8
  %64 = getelementptr inbounds %struct.hw_perf_event, %struct.hw_perf_event* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 8
  %66 = or i32 %65, %62
  store i32 %66, i32* %64, align 8
  %67 = load %struct.intel_uncore_box*, %struct.intel_uncore_box** %5, align 8
  %68 = getelementptr inbounds %struct.intel_uncore_box, %struct.intel_uncore_box* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = icmp eq i64 %69, 0
  br i1 %70, label %71, label %74

71:                                               ; preds = %41
  %72 = load %struct.intel_uncore_box*, %struct.intel_uncore_box** %5, align 8
  %73 = call i32 @uncore_pmu_cancel_hrtimer(%struct.intel_uncore_box* %72)
  br label %74

74:                                               ; preds = %71, %41
  br label %75

75:                                               ; preds = %74, %32
  %76 = load i32, i32* %4, align 4
  %77 = load i32, i32* @PERF_EF_UPDATE, align 4
  %78 = and i32 %76, %77
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %96

80:                                               ; preds = %75
  %81 = load %struct.hw_perf_event*, %struct.hw_perf_event** %6, align 8
  %82 = getelementptr inbounds %struct.hw_perf_event, %struct.hw_perf_event* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 8
  %84 = load i32, i32* @PERF_HES_UPTODATE, align 4
  %85 = and i32 %83, %84
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %96, label %87

87:                                               ; preds = %80
  %88 = load %struct.intel_uncore_box*, %struct.intel_uncore_box** %5, align 8
  %89 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %90 = call i32 @uncore_perf_event_update(%struct.intel_uncore_box* %88, %struct.perf_event* %89)
  %91 = load i32, i32* @PERF_HES_UPTODATE, align 4
  %92 = load %struct.hw_perf_event*, %struct.hw_perf_event** %6, align 8
  %93 = getelementptr inbounds %struct.hw_perf_event, %struct.hw_perf_event* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 8
  %95 = or i32 %94, %91
  store i32 %95, i32* %93, align 8
  br label %96

96:                                               ; preds = %28, %87, %80, %75
  ret void
}

declare dso_local %struct.intel_uncore_box* @uncore_event_to_box(%struct.perf_event*) #1

declare dso_local i64 @uncore_pmc_freerunning(i64) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @uncore_pmu_cancel_hrtimer(%struct.intel_uncore_box*) #1

declare dso_local i32 @uncore_perf_event_update(%struct.intel_uncore_box*, %struct.perf_event*) #1

declare dso_local i64 @__test_and_clear_bit(i64, i32) #1

declare dso_local i32 @uncore_disable_event(%struct.intel_uncore_box*, %struct.perf_event*) #1

declare dso_local i32 @WARN_ON_ONCE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
