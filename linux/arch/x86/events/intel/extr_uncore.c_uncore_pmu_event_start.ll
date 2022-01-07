; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/events/intel/extr_uncore.c_uncore_pmu_event_start.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/events/intel/extr_uncore.c_uncore_pmu_event_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.perf_event = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i32, i32 }
%struct.intel_uncore_box = type { i32, i32, %struct.perf_event**, i32 }

@UNCORE_PMC_IDX_MAX = common dso_local global i32 0, align 4
@PERF_HES_STOPPED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @uncore_pmu_event_start(%struct.perf_event* %0, i32 %1) #0 {
  %3 = alloca %struct.perf_event*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.intel_uncore_box*, align 8
  %6 = alloca i32, align 4
  store %struct.perf_event* %0, %struct.perf_event** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %8 = call %struct.intel_uncore_box* @uncore_event_to_box(%struct.perf_event* %7)
  store %struct.intel_uncore_box* %8, %struct.intel_uncore_box** %5, align 8
  %9 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %10 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  store i32 %12, i32* %6, align 4
  %13 = load i32, i32* %6, align 4
  %14 = icmp eq i32 %13, -1
  br i1 %14, label %19, label %15

15:                                               ; preds = %2
  %16 = load i32, i32* %6, align 4
  %17 = load i32, i32* @UNCORE_PMC_IDX_MAX, align 4
  %18 = icmp sge i32 %16, %17
  br label %19

19:                                               ; preds = %15, %2
  %20 = phi i1 [ true, %2 ], [ %18, %15 ]
  %21 = zext i1 %20 to i32
  %22 = call i64 @WARN_ON_ONCE(i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %19
  br label %104

25:                                               ; preds = %19
  %26 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %27 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i64 @uncore_pmc_freerunning(i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %54

32:                                               ; preds = %25
  %33 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %34 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %33, i32 0, i32 1
  %35 = load %struct.intel_uncore_box*, %struct.intel_uncore_box** %5, align 8
  %36 = getelementptr inbounds %struct.intel_uncore_box, %struct.intel_uncore_box* %35, i32 0, i32 3
  %37 = call i32 @list_add_tail(i32* %34, i32* %36)
  %38 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %39 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 2
  %41 = load %struct.intel_uncore_box*, %struct.intel_uncore_box** %5, align 8
  %42 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %43 = call i32 @uncore_read_counter(%struct.intel_uncore_box* %41, %struct.perf_event* %42)
  %44 = call i32 @local64_set(i32* %40, i32 %43)
  %45 = load %struct.intel_uncore_box*, %struct.intel_uncore_box** %5, align 8
  %46 = getelementptr inbounds %struct.intel_uncore_box, %struct.intel_uncore_box* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %46, align 8
  %49 = icmp eq i32 %47, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %32
  %51 = load %struct.intel_uncore_box*, %struct.intel_uncore_box** %5, align 8
  %52 = call i32 @uncore_pmu_start_hrtimer(%struct.intel_uncore_box* %51)
  br label %53

53:                                               ; preds = %50, %32
  br label %104

54:                                               ; preds = %25
  %55 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %56 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* @PERF_HES_STOPPED, align 4
  %60 = and i32 %58, %59
  %61 = icmp ne i32 %60, 0
  %62 = xor i1 %61, true
  %63 = zext i1 %62 to i32
  %64 = call i64 @WARN_ON_ONCE(i32 %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %54
  br label %104

67:                                               ; preds = %54
  %68 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %69 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 1
  store i32 0, i32* %70, align 4
  %71 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %72 = load %struct.intel_uncore_box*, %struct.intel_uncore_box** %5, align 8
  %73 = getelementptr inbounds %struct.intel_uncore_box, %struct.intel_uncore_box* %72, i32 0, i32 2
  %74 = load %struct.perf_event**, %struct.perf_event*** %73, align 8
  %75 = load i32, i32* %6, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds %struct.perf_event*, %struct.perf_event** %74, i64 %76
  store %struct.perf_event* %71, %struct.perf_event** %77, align 8
  %78 = load %struct.intel_uncore_box*, %struct.intel_uncore_box** %5, align 8
  %79 = getelementptr inbounds %struct.intel_uncore_box, %struct.intel_uncore_box* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %79, align 8
  %82 = load i32, i32* %6, align 4
  %83 = load %struct.intel_uncore_box*, %struct.intel_uncore_box** %5, align 8
  %84 = getelementptr inbounds %struct.intel_uncore_box, %struct.intel_uncore_box* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = call i32 @__set_bit(i32 %82, i32 %85)
  %87 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %88 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %88, i32 0, i32 2
  %90 = load %struct.intel_uncore_box*, %struct.intel_uncore_box** %5, align 8
  %91 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %92 = call i32 @uncore_read_counter(%struct.intel_uncore_box* %90, %struct.perf_event* %91)
  %93 = call i32 @local64_set(i32* %89, i32 %92)
  %94 = load %struct.intel_uncore_box*, %struct.intel_uncore_box** %5, align 8
  %95 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %96 = call i32 @uncore_enable_event(%struct.intel_uncore_box* %94, %struct.perf_event* %95)
  %97 = load %struct.intel_uncore_box*, %struct.intel_uncore_box** %5, align 8
  %98 = getelementptr inbounds %struct.intel_uncore_box, %struct.intel_uncore_box* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = icmp eq i32 %99, 1
  br i1 %100, label %101, label %104

101:                                              ; preds = %67
  %102 = load %struct.intel_uncore_box*, %struct.intel_uncore_box** %5, align 8
  %103 = call i32 @uncore_pmu_start_hrtimer(%struct.intel_uncore_box* %102)
  br label %104

104:                                              ; preds = %24, %53, %66, %101, %67
  ret void
}

declare dso_local %struct.intel_uncore_box* @uncore_event_to_box(%struct.perf_event*) #1

declare dso_local i64 @WARN_ON_ONCE(i32) #1

declare dso_local i64 @uncore_pmc_freerunning(i32) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @local64_set(i32*, i32) #1

declare dso_local i32 @uncore_read_counter(%struct.intel_uncore_box*, %struct.perf_event*) #1

declare dso_local i32 @uncore_pmu_start_hrtimer(%struct.intel_uncore_box*) #1

declare dso_local i32 @__set_bit(i32, i32) #1

declare dso_local i32 @uncore_enable_event(%struct.intel_uncore_box*, %struct.perf_event*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
