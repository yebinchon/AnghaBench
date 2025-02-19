; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/events/extr_core.c_x86_pmu_aux_output_match.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/events/extr_core.c_x86_pmu_aux_output_match.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 (%struct.perf_event*)* }
%struct.perf_event = type { i32 }

@pmu = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@PERF_PMU_CAP_AUX_OUTPUT = common dso_local global i32 0, align 4
@x86_pmu = common dso_local global %struct.TYPE_3__ zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.perf_event*)* @x86_pmu_aux_output_match to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @x86_pmu_aux_output_match(%struct.perf_event* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.perf_event*, align 8
  store %struct.perf_event* %0, %struct.perf_event** %3, align 8
  %4 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @pmu, i32 0, i32 0), align 4
  %5 = load i32, i32* @PERF_PMU_CAP_AUX_OUTPUT, align 4
  %6 = and i32 %4, %5
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %9, label %8

8:                                                ; preds = %1
  store i32 0, i32* %2, align 4
  br label %17

9:                                                ; preds = %1
  %10 = load i32 (%struct.perf_event*)*, i32 (%struct.perf_event*)** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @x86_pmu, i32 0, i32 0), align 8
  %11 = icmp ne i32 (%struct.perf_event*)* %10, null
  br i1 %11, label %12, label %16

12:                                               ; preds = %9
  %13 = load i32 (%struct.perf_event*)*, i32 (%struct.perf_event*)** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @x86_pmu, i32 0, i32 0), align 8
  %14 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %15 = call i32 %13(%struct.perf_event* %14)
  store i32 %15, i32* %2, align 4
  br label %17

16:                                               ; preds = %9
  store i32 0, i32* %2, align 4
  br label %17

17:                                               ; preds = %16, %12, %8
  %18 = load i32, i32* %2, align 4
  ret i32 %18
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
