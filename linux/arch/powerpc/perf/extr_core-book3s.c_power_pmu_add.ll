; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/perf/extr_core-book3s.c_power_pmu_add.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/perf/extr_core-book3s.c_power_pmu_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32 (i32)* }
%struct.perf_event = type { i32, %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32, i32, i32 }
%struct.cpu_hw_events = type { i32, i32, i32, i32, i32*, i32*, %struct.perf_event** }

@EAGAIN = common dso_local global i32 0, align 4
@cpu_hw_events = common dso_local global i32 0, align 4
@ppmu = common dso_local global %struct.TYPE_6__* null, align 8
@PERF_EF_START = common dso_local global i32 0, align 4
@PERF_HES_STOPPED = common dso_local global i32 0, align 4
@PERF_HES_UPTODATE = common dso_local global i32 0, align 4
@PERF_PMU_TXN_ADD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.perf_event*, i32)* @power_pmu_add to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @power_pmu_add(%struct.perf_event* %0, i32 %1) #0 {
  %3 = alloca %struct.perf_event*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.cpu_hw_events*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.perf_event* %0, %struct.perf_event** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load i32, i32* @EAGAIN, align 4
  %10 = sub nsw i32 0, %9
  store i32 %10, i32* %8, align 4
  %11 = load i64, i64* %6, align 8
  %12 = call i32 @local_irq_save(i64 %11)
  %13 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %14 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @perf_pmu_disable(i32 %15)
  %17 = call %struct.cpu_hw_events* @this_cpu_ptr(i32* @cpu_hw_events)
  store %struct.cpu_hw_events* %17, %struct.cpu_hw_events** %5, align 8
  %18 = load %struct.cpu_hw_events*, %struct.cpu_hw_events** %5, align 8
  %19 = getelementptr inbounds %struct.cpu_hw_events, %struct.cpu_hw_events* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  store i32 %20, i32* %7, align 4
  %21 = load i32, i32* %7, align 4
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** @ppmu, align 8
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = icmp sge i32 %21, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %2
  br label %124

27:                                               ; preds = %2
  %28 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %29 = load %struct.cpu_hw_events*, %struct.cpu_hw_events** %5, align 8
  %30 = getelementptr inbounds %struct.cpu_hw_events, %struct.cpu_hw_events* %29, i32 0, i32 6
  %31 = load %struct.perf_event**, %struct.perf_event*** %30, align 8
  %32 = load i32, i32* %7, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.perf_event*, %struct.perf_event** %31, i64 %33
  store %struct.perf_event* %28, %struct.perf_event** %34, align 8
  %35 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %36 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %35, i32 0, i32 2
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.cpu_hw_events*, %struct.cpu_hw_events** %5, align 8
  %40 = getelementptr inbounds %struct.cpu_hw_events, %struct.cpu_hw_events* %39, i32 0, i32 4
  %41 = load i32*, i32** %40, align 8
  %42 = load i32, i32* %7, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i32, i32* %41, i64 %43
  store i32 %38, i32* %44, align 4
  %45 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %46 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %45, i32 0, i32 2
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.cpu_hw_events*, %struct.cpu_hw_events** %5, align 8
  %50 = getelementptr inbounds %struct.cpu_hw_events, %struct.cpu_hw_events* %49, i32 0, i32 5
  %51 = load i32*, i32** %50, align 8
  %52 = load i32, i32* %7, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i32, i32* %51, i64 %53
  store i32 %48, i32* %54, align 4
  %55 = load i32, i32* %4, align 4
  %56 = load i32, i32* @PERF_EF_START, align 4
  %57 = and i32 %55, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %66, label %59

59:                                               ; preds = %27
  %60 = load i32, i32* @PERF_HES_STOPPED, align 4
  %61 = load i32, i32* @PERF_HES_UPTODATE, align 4
  %62 = or i32 %60, %61
  %63 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %64 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %63, i32 0, i32 2
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 0
  store i32 %62, i32* %65, align 4
  br label %70

66:                                               ; preds = %27
  %67 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %68 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %67, i32 0, i32 2
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 0
  store i32 0, i32* %69, align 4
  br label %70

70:                                               ; preds = %66, %59
  %71 = load %struct.cpu_hw_events*, %struct.cpu_hw_events** %5, align 8
  %72 = getelementptr inbounds %struct.cpu_hw_events, %struct.cpu_hw_events* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = load i32, i32* @PERF_PMU_TXN_ADD, align 4
  %75 = and i32 %73, %74
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %78

77:                                               ; preds = %70
  br label %113

78:                                               ; preds = %70
  %79 = load %struct.cpu_hw_events*, %struct.cpu_hw_events** %5, align 8
  %80 = getelementptr inbounds %struct.cpu_hw_events, %struct.cpu_hw_events* %79, i32 0, i32 6
  %81 = load %struct.perf_event**, %struct.perf_event*** %80, align 8
  %82 = load %struct.cpu_hw_events*, %struct.cpu_hw_events** %5, align 8
  %83 = getelementptr inbounds %struct.cpu_hw_events, %struct.cpu_hw_events* %82, i32 0, i32 5
  %84 = load i32*, i32** %83, align 8
  %85 = load i32, i32* %7, align 4
  %86 = call i64 @check_excludes(%struct.perf_event** %81, i32* %84, i32 %85, i32 1)
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %89

88:                                               ; preds = %78
  br label %124

89:                                               ; preds = %78
  %90 = load %struct.cpu_hw_events*, %struct.cpu_hw_events** %5, align 8
  %91 = load %struct.cpu_hw_events*, %struct.cpu_hw_events** %5, align 8
  %92 = getelementptr inbounds %struct.cpu_hw_events, %struct.cpu_hw_events* %91, i32 0, i32 4
  %93 = load i32*, i32** %92, align 8
  %94 = load %struct.cpu_hw_events*, %struct.cpu_hw_events** %5, align 8
  %95 = getelementptr inbounds %struct.cpu_hw_events, %struct.cpu_hw_events* %94, i32 0, i32 5
  %96 = load i32*, i32** %95, align 8
  %97 = load i32, i32* %7, align 4
  %98 = add nsw i32 %97, 1
  %99 = call i64 @power_check_constraints(%struct.cpu_hw_events* %90, i32* %93, i32* %96, i32 %98)
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %102

101:                                              ; preds = %89
  br label %124

102:                                              ; preds = %89
  %103 = load %struct.cpu_hw_events*, %struct.cpu_hw_events** %5, align 8
  %104 = getelementptr inbounds %struct.cpu_hw_events, %struct.cpu_hw_events* %103, i32 0, i32 4
  %105 = load i32*, i32** %104, align 8
  %106 = load i32, i32* %7, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds i32, i32* %105, i64 %107
  %109 = load i32, i32* %108, align 4
  %110 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %111 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %110, i32 0, i32 2
  %112 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %111, i32 0, i32 1
  store i32 %109, i32* %112, align 4
  br label %113

113:                                              ; preds = %102, %77
  %114 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %115 = call i32 @ebb_event_add(%struct.perf_event* %114)
  %116 = load %struct.cpu_hw_events*, %struct.cpu_hw_events** %5, align 8
  %117 = getelementptr inbounds %struct.cpu_hw_events, %struct.cpu_hw_events* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 8
  %119 = add nsw i32 %118, 1
  store i32 %119, i32* %117, align 8
  %120 = load %struct.cpu_hw_events*, %struct.cpu_hw_events** %5, align 8
  %121 = getelementptr inbounds %struct.cpu_hw_events, %struct.cpu_hw_events* %120, i32 0, i32 3
  %122 = load i32, i32* %121, align 4
  %123 = add nsw i32 %122, 1
  store i32 %123, i32* %121, align 4
  store i32 0, i32* %8, align 4
  br label %124

124:                                              ; preds = %113, %101, %88, %26
  %125 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %126 = call i64 @has_branch_stack(%struct.perf_event* %125)
  %127 = icmp ne i64 %126, 0
  br i1 %127, label %128, label %141

128:                                              ; preds = %124
  %129 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %130 = call i32 @power_pmu_bhrb_enable(%struct.perf_event* %129)
  %131 = load %struct.TYPE_6__*, %struct.TYPE_6__** @ppmu, align 8
  %132 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %131, i32 0, i32 1
  %133 = load i32 (i32)*, i32 (i32)** %132, align 8
  %134 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %135 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %134, i32 0, i32 1
  %136 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 4
  %138 = call i32 %133(i32 %137)
  %139 = load %struct.cpu_hw_events*, %struct.cpu_hw_events** %5, align 8
  %140 = getelementptr inbounds %struct.cpu_hw_events, %struct.cpu_hw_events* %139, i32 0, i32 2
  store i32 %138, i32* %140, align 8
  br label %141

141:                                              ; preds = %128, %124
  %142 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %143 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 4
  %145 = call i32 @perf_pmu_enable(i32 %144)
  %146 = load i64, i64* %6, align 8
  %147 = call i32 @local_irq_restore(i64 %146)
  %148 = load i32, i32* %8, align 4
  ret i32 %148
}

declare dso_local i32 @local_irq_save(i64) #1

declare dso_local i32 @perf_pmu_disable(i32) #1

declare dso_local %struct.cpu_hw_events* @this_cpu_ptr(i32*) #1

declare dso_local i64 @check_excludes(%struct.perf_event**, i32*, i32, i32) #1

declare dso_local i64 @power_check_constraints(%struct.cpu_hw_events*, i32*, i32*, i32) #1

declare dso_local i32 @ebb_event_add(%struct.perf_event*) #1

declare dso_local i64 @has_branch_stack(%struct.perf_event*) #1

declare dso_local i32 @power_pmu_bhrb_enable(%struct.perf_event*) #1

declare dso_local i32 @perf_pmu_enable(i32) #1

declare dso_local i32 @local_irq_restore(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
