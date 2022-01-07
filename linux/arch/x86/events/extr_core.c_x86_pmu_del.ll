; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/events/extr_core.c_x86_pmu_del.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/events/extr_core.c_x86_pmu_del.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 (%struct.perf_event*)*, i32 (%struct.cpu_hw_events*, %struct.perf_event*)* }
%struct.perf_event = type { i32 }
%struct.cpu_hw_events = type { i32, i32, i32, i32**, %struct.perf_event** }

@cpu_hw_events = common dso_local global i32 0, align 4
@PERF_PMU_TXN_ADD = common dso_local global i32 0, align 4
@PERF_EF_UPDATE = common dso_local global i32 0, align 4
@x86_pmu = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.perf_event*, i32)* @x86_pmu_del to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @x86_pmu_del(%struct.perf_event* %0, i32 %1) #0 {
  %3 = alloca %struct.perf_event*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.cpu_hw_events*, align 8
  %6 = alloca i32, align 4
  store %struct.perf_event* %0, %struct.perf_event** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = call %struct.cpu_hw_events* @this_cpu_ptr(i32* @cpu_hw_events)
  store %struct.cpu_hw_events* %7, %struct.cpu_hw_events** %5, align 8
  %8 = load %struct.cpu_hw_events*, %struct.cpu_hw_events** %5, align 8
  %9 = getelementptr inbounds %struct.cpu_hw_events, %struct.cpu_hw_events* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = load i32, i32* @PERF_PMU_TXN_ADD, align 4
  %12 = and i32 %10, %11
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %2
  br label %124

15:                                               ; preds = %2
  %16 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %17 = load i32, i32* @PERF_EF_UPDATE, align 4
  %18 = call i32 @x86_pmu_stop(%struct.perf_event* %16, i32 %17)
  store i32 0, i32* %6, align 4
  br label %19

19:                                               ; preds = %37, %15
  %20 = load i32, i32* %6, align 4
  %21 = load %struct.cpu_hw_events*, %struct.cpu_hw_events** %5, align 8
  %22 = getelementptr inbounds %struct.cpu_hw_events, %struct.cpu_hw_events* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = icmp slt i32 %20, %23
  br i1 %24, label %25, label %40

25:                                               ; preds = %19
  %26 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %27 = load %struct.cpu_hw_events*, %struct.cpu_hw_events** %5, align 8
  %28 = getelementptr inbounds %struct.cpu_hw_events, %struct.cpu_hw_events* %27, i32 0, i32 4
  %29 = load %struct.perf_event**, %struct.perf_event*** %28, align 8
  %30 = load i32, i32* %6, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.perf_event*, %struct.perf_event** %29, i64 %31
  %33 = load %struct.perf_event*, %struct.perf_event** %32, align 8
  %34 = icmp eq %struct.perf_event* %26, %33
  br i1 %34, label %35, label %36

35:                                               ; preds = %25
  br label %40

36:                                               ; preds = %25
  br label %37

37:                                               ; preds = %36
  %38 = load i32, i32* %6, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %6, align 4
  br label %19

40:                                               ; preds = %35, %19
  %41 = load i32, i32* %6, align 4
  %42 = load %struct.cpu_hw_events*, %struct.cpu_hw_events** %5, align 8
  %43 = getelementptr inbounds %struct.cpu_hw_events, %struct.cpu_hw_events* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = icmp eq i32 %41, %44
  %46 = zext i1 %45 to i32
  %47 = call i64 @WARN_ON_ONCE(i32 %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %40
  br label %131

50:                                               ; preds = %40
  %51 = load i32, i32* %6, align 4
  %52 = load %struct.cpu_hw_events*, %struct.cpu_hw_events** %5, align 8
  %53 = getelementptr inbounds %struct.cpu_hw_events, %struct.cpu_hw_events* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.cpu_hw_events*, %struct.cpu_hw_events** %5, align 8
  %56 = getelementptr inbounds %struct.cpu_hw_events, %struct.cpu_hw_events* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 8
  %58 = sub nsw i32 %54, %57
  %59 = icmp sge i32 %51, %58
  br i1 %59, label %60, label %65

60:                                               ; preds = %50
  %61 = load %struct.cpu_hw_events*, %struct.cpu_hw_events** %5, align 8
  %62 = getelementptr inbounds %struct.cpu_hw_events, %struct.cpu_hw_events* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 8
  %64 = add nsw i32 %63, -1
  store i32 %64, i32* %62, align 8
  br label %65

65:                                               ; preds = %60, %50
  %66 = load i32 (%struct.cpu_hw_events*, %struct.perf_event*)*, i32 (%struct.cpu_hw_events*, %struct.perf_event*)** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @x86_pmu, i32 0, i32 1), align 8
  %67 = icmp ne i32 (%struct.cpu_hw_events*, %struct.perf_event*)* %66, null
  br i1 %67, label %68, label %73

68:                                               ; preds = %65
  %69 = load i32 (%struct.cpu_hw_events*, %struct.perf_event*)*, i32 (%struct.cpu_hw_events*, %struct.perf_event*)** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @x86_pmu, i32 0, i32 1), align 8
  %70 = load %struct.cpu_hw_events*, %struct.cpu_hw_events** %5, align 8
  %71 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %72 = call i32 %69(%struct.cpu_hw_events* %70, %struct.perf_event* %71)
  br label %73

73:                                               ; preds = %68, %65
  br label %74

74:                                               ; preds = %81, %73
  %75 = load i32, i32* %6, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %6, align 4
  %77 = load %struct.cpu_hw_events*, %struct.cpu_hw_events** %5, align 8
  %78 = getelementptr inbounds %struct.cpu_hw_events, %struct.cpu_hw_events* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = icmp slt i32 %76, %79
  br i1 %80, label %81, label %110

81:                                               ; preds = %74
  %82 = load %struct.cpu_hw_events*, %struct.cpu_hw_events** %5, align 8
  %83 = getelementptr inbounds %struct.cpu_hw_events, %struct.cpu_hw_events* %82, i32 0, i32 4
  %84 = load %struct.perf_event**, %struct.perf_event*** %83, align 8
  %85 = load i32, i32* %6, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds %struct.perf_event*, %struct.perf_event** %84, i64 %86
  %88 = load %struct.perf_event*, %struct.perf_event** %87, align 8
  %89 = load %struct.cpu_hw_events*, %struct.cpu_hw_events** %5, align 8
  %90 = getelementptr inbounds %struct.cpu_hw_events, %struct.cpu_hw_events* %89, i32 0, i32 4
  %91 = load %struct.perf_event**, %struct.perf_event*** %90, align 8
  %92 = load i32, i32* %6, align 4
  %93 = sub nsw i32 %92, 1
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds %struct.perf_event*, %struct.perf_event** %91, i64 %94
  store %struct.perf_event* %88, %struct.perf_event** %95, align 8
  %96 = load %struct.cpu_hw_events*, %struct.cpu_hw_events** %5, align 8
  %97 = getelementptr inbounds %struct.cpu_hw_events, %struct.cpu_hw_events* %96, i32 0, i32 3
  %98 = load i32**, i32*** %97, align 8
  %99 = load i32, i32* %6, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds i32*, i32** %98, i64 %100
  %102 = load i32*, i32** %101, align 8
  %103 = load %struct.cpu_hw_events*, %struct.cpu_hw_events** %5, align 8
  %104 = getelementptr inbounds %struct.cpu_hw_events, %struct.cpu_hw_events* %103, i32 0, i32 3
  %105 = load i32**, i32*** %104, align 8
  %106 = load i32, i32* %6, align 4
  %107 = sub nsw i32 %106, 1
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds i32*, i32** %105, i64 %108
  store i32* %102, i32** %109, align 8
  br label %74

110:                                              ; preds = %74
  %111 = load %struct.cpu_hw_events*, %struct.cpu_hw_events** %5, align 8
  %112 = getelementptr inbounds %struct.cpu_hw_events, %struct.cpu_hw_events* %111, i32 0, i32 3
  %113 = load i32**, i32*** %112, align 8
  %114 = load i32, i32* %6, align 4
  %115 = sub nsw i32 %114, 1
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds i32*, i32** %113, i64 %116
  store i32* null, i32** %117, align 8
  %118 = load %struct.cpu_hw_events*, %struct.cpu_hw_events** %5, align 8
  %119 = getelementptr inbounds %struct.cpu_hw_events, %struct.cpu_hw_events* %118, i32 0, i32 1
  %120 = load i32, i32* %119, align 4
  %121 = add nsw i32 %120, -1
  store i32 %121, i32* %119, align 4
  %122 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %123 = call i32 @perf_event_update_userpage(%struct.perf_event* %122)
  br label %124

124:                                              ; preds = %110, %14
  %125 = load i32 (%struct.perf_event*)*, i32 (%struct.perf_event*)** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @x86_pmu, i32 0, i32 0), align 8
  %126 = icmp ne i32 (%struct.perf_event*)* %125, null
  br i1 %126, label %127, label %131

127:                                              ; preds = %124
  %128 = load i32 (%struct.perf_event*)*, i32 (%struct.perf_event*)** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @x86_pmu, i32 0, i32 0), align 8
  %129 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %130 = call i32 %128(%struct.perf_event* %129)
  br label %131

131:                                              ; preds = %49, %127, %124
  ret void
}

declare dso_local %struct.cpu_hw_events* @this_cpu_ptr(i32*) #1

declare dso_local i32 @x86_pmu_stop(%struct.perf_event*, i32) #1

declare dso_local i64 @WARN_ON_ONCE(i32) #1

declare dso_local i32 @perf_event_update_userpage(%struct.perf_event*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
