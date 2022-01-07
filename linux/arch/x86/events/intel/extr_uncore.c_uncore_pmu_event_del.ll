; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/events/intel/extr_uncore.c_uncore_pmu_event_del.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/events/intel/extr_uncore.c_uncore_pmu_event_del.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.perf_event = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i64 }
%struct.intel_uncore_box = type { i32, %struct.perf_event** }

@PERF_EF_UPDATE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @uncore_pmu_event_del(%struct.perf_event* %0, i32 %1) #0 {
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
  %10 = load i32, i32* @PERF_EF_UPDATE, align 4
  %11 = call i32 @uncore_pmu_event_stop(%struct.perf_event* %9, i32 %10)
  %12 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %13 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = call i64 @uncore_pmc_freerunning(i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %2
  br label %82

19:                                               ; preds = %2
  store i32 0, i32* %6, align 4
  br label %20

20:                                               ; preds = %72, %19
  %21 = load i32, i32* %6, align 4
  %22 = load %struct.intel_uncore_box*, %struct.intel_uncore_box** %5, align 8
  %23 = getelementptr inbounds %struct.intel_uncore_box, %struct.intel_uncore_box* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = icmp slt i32 %21, %24
  br i1 %25, label %26, label %75

26:                                               ; preds = %20
  %27 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %28 = load %struct.intel_uncore_box*, %struct.intel_uncore_box** %5, align 8
  %29 = getelementptr inbounds %struct.intel_uncore_box, %struct.intel_uncore_box* %28, i32 0, i32 1
  %30 = load %struct.perf_event**, %struct.perf_event*** %29, align 8
  %31 = load i32, i32* %6, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.perf_event*, %struct.perf_event** %30, i64 %32
  %34 = load %struct.perf_event*, %struct.perf_event** %33, align 8
  %35 = icmp eq %struct.perf_event* %27, %34
  br i1 %35, label %36, label %71

36:                                               ; preds = %26
  %37 = load %struct.intel_uncore_box*, %struct.intel_uncore_box** %5, align 8
  %38 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %39 = call i32 @uncore_put_event_constraint(%struct.intel_uncore_box* %37, %struct.perf_event* %38)
  %40 = load i32, i32* %6, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %6, align 4
  br label %42

42:                                               ; preds = %63, %36
  %43 = load i32, i32* %6, align 4
  %44 = load %struct.intel_uncore_box*, %struct.intel_uncore_box** %5, align 8
  %45 = getelementptr inbounds %struct.intel_uncore_box, %struct.intel_uncore_box* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = icmp slt i32 %43, %46
  br i1 %47, label %48, label %66

48:                                               ; preds = %42
  %49 = load %struct.intel_uncore_box*, %struct.intel_uncore_box** %5, align 8
  %50 = getelementptr inbounds %struct.intel_uncore_box, %struct.intel_uncore_box* %49, i32 0, i32 1
  %51 = load %struct.perf_event**, %struct.perf_event*** %50, align 8
  %52 = load i32, i32* %6, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds %struct.perf_event*, %struct.perf_event** %51, i64 %53
  %55 = load %struct.perf_event*, %struct.perf_event** %54, align 8
  %56 = load %struct.intel_uncore_box*, %struct.intel_uncore_box** %5, align 8
  %57 = getelementptr inbounds %struct.intel_uncore_box, %struct.intel_uncore_box* %56, i32 0, i32 1
  %58 = load %struct.perf_event**, %struct.perf_event*** %57, align 8
  %59 = load i32, i32* %6, align 4
  %60 = sub nsw i32 %59, 1
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds %struct.perf_event*, %struct.perf_event** %58, i64 %61
  store %struct.perf_event* %55, %struct.perf_event** %62, align 8
  br label %63

63:                                               ; preds = %48
  %64 = load i32, i32* %6, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %6, align 4
  br label %42

66:                                               ; preds = %42
  %67 = load %struct.intel_uncore_box*, %struct.intel_uncore_box** %5, align 8
  %68 = getelementptr inbounds %struct.intel_uncore_box, %struct.intel_uncore_box* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = add nsw i32 %69, -1
  store i32 %70, i32* %68, align 8
  br label %75

71:                                               ; preds = %26
  br label %72

72:                                               ; preds = %71
  %73 = load i32, i32* %6, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %6, align 4
  br label %20

75:                                               ; preds = %66, %20
  %76 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %77 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i32 0, i32 0
  store i32 -1, i32* %78, align 8
  %79 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %80 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i32 0, i32 1
  store i64 -1, i64* %81, align 8
  br label %82

82:                                               ; preds = %75, %18
  ret void
}

declare dso_local %struct.intel_uncore_box* @uncore_event_to_box(%struct.perf_event*) #1

declare dso_local i32 @uncore_pmu_event_stop(%struct.perf_event*, i32) #1

declare dso_local i64 @uncore_pmc_freerunning(i32) #1

declare dso_local i32 @uncore_put_event_constraint(%struct.intel_uncore_box*, %struct.perf_event*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
