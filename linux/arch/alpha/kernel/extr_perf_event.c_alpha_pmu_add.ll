; ModuleID = '/home/carl/AnghaBench/linux/arch/alpha/kernel/extr_perf_event.c_alpha_pmu_add.c'
source_filename = "/home/carl/AnghaBench/linux/arch/alpha/kernel/extr_perf_event.c_alpha_pmu_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.perf_event = type { i32, %struct.hw_perf_event }
%struct.hw_perf_event = type { i32, i32 }
%struct.cpu_hw_events = type { i32, i32, i32*, %struct.perf_event**, i32* }

@cpu_hw_events = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@alpha_pmu = common dso_local global %struct.TYPE_2__* null, align 8
@PMC_NO_INDEX = common dso_local global i32 0, align 4
@PERF_HES_UPTODATE = common dso_local global i32 0, align 4
@PERF_EF_START = common dso_local global i32 0, align 4
@PERF_HES_STOPPED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.perf_event*, i32)* @alpha_pmu_add to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @alpha_pmu_add(%struct.perf_event* %0, i32 %1) #0 {
  %3 = alloca %struct.perf_event*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.cpu_hw_events*, align 8
  %6 = alloca %struct.hw_perf_event*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  store %struct.perf_event* %0, %struct.perf_event** %3, align 8
  store i32 %1, i32* %4, align 4
  %10 = call %struct.cpu_hw_events* @this_cpu_ptr(i32* @cpu_hw_events)
  store %struct.cpu_hw_events* %10, %struct.cpu_hw_events** %5, align 8
  %11 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %12 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %11, i32 0, i32 1
  store %struct.hw_perf_event* %12, %struct.hw_perf_event** %6, align 8
  %13 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %14 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @perf_pmu_disable(i32 %15)
  %17 = load i64, i64* %9, align 8
  %18 = call i32 @local_irq_save(i64 %17)
  %19 = load i32, i32* @EAGAIN, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %8, align 4
  %21 = load %struct.cpu_hw_events*, %struct.cpu_hw_events** %5, align 8
  %22 = getelementptr inbounds %struct.cpu_hw_events, %struct.cpu_hw_events* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  store i32 %23, i32* %7, align 4
  %24 = load i32, i32* %7, align 4
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** @alpha_pmu, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = icmp slt i32 %24, %27
  br i1 %28, label %29, label %74

29:                                               ; preds = %2
  %30 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %31 = load %struct.cpu_hw_events*, %struct.cpu_hw_events** %5, align 8
  %32 = getelementptr inbounds %struct.cpu_hw_events, %struct.cpu_hw_events* %31, i32 0, i32 3
  %33 = load %struct.perf_event**, %struct.perf_event*** %32, align 8
  %34 = load i32, i32* %7, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.perf_event*, %struct.perf_event** %33, i64 %35
  store %struct.perf_event* %30, %struct.perf_event** %36, align 8
  %37 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %38 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.hw_perf_event, %struct.hw_perf_event* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.cpu_hw_events*, %struct.cpu_hw_events** %5, align 8
  %42 = getelementptr inbounds %struct.cpu_hw_events, %struct.cpu_hw_events* %41, i32 0, i32 2
  %43 = load i32*, i32** %42, align 8
  %44 = load i32, i32* %7, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i32, i32* %43, i64 %45
  store i32 %40, i32* %46, align 4
  %47 = load i32, i32* @PMC_NO_INDEX, align 4
  %48 = load %struct.cpu_hw_events*, %struct.cpu_hw_events** %5, align 8
  %49 = getelementptr inbounds %struct.cpu_hw_events, %struct.cpu_hw_events* %48, i32 0, i32 4
  %50 = load i32*, i32** %49, align 8
  %51 = load i32, i32* %7, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i32, i32* %50, i64 %52
  store i32 %47, i32* %53, align 4
  %54 = load %struct.cpu_hw_events*, %struct.cpu_hw_events** %5, align 8
  %55 = getelementptr inbounds %struct.cpu_hw_events, %struct.cpu_hw_events* %54, i32 0, i32 3
  %56 = load %struct.perf_event**, %struct.perf_event*** %55, align 8
  %57 = load %struct.cpu_hw_events*, %struct.cpu_hw_events** %5, align 8
  %58 = getelementptr inbounds %struct.cpu_hw_events, %struct.cpu_hw_events* %57, i32 0, i32 2
  %59 = load i32*, i32** %58, align 8
  %60 = load i32, i32* %7, align 4
  %61 = add nsw i32 %60, 1
  %62 = call i32 @alpha_check_constraints(%struct.perf_event** %56, i32* %59, i32 %61)
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %73, label %64

64:                                               ; preds = %29
  %65 = load %struct.cpu_hw_events*, %struct.cpu_hw_events** %5, align 8
  %66 = getelementptr inbounds %struct.cpu_hw_events, %struct.cpu_hw_events* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %66, align 8
  %69 = load %struct.cpu_hw_events*, %struct.cpu_hw_events** %5, align 8
  %70 = getelementptr inbounds %struct.cpu_hw_events, %struct.cpu_hw_events* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %70, align 4
  store i32 0, i32* %8, align 4
  br label %73

73:                                               ; preds = %64, %29
  br label %74

74:                                               ; preds = %73, %2
  %75 = load i32, i32* @PERF_HES_UPTODATE, align 4
  %76 = load %struct.hw_perf_event*, %struct.hw_perf_event** %6, align 8
  %77 = getelementptr inbounds %struct.hw_perf_event, %struct.hw_perf_event* %76, i32 0, i32 0
  store i32 %75, i32* %77, align 4
  %78 = load i32, i32* %4, align 4
  %79 = load i32, i32* @PERF_EF_START, align 4
  %80 = and i32 %78, %79
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %88, label %82

82:                                               ; preds = %74
  %83 = load i32, i32* @PERF_HES_STOPPED, align 4
  %84 = load %struct.hw_perf_event*, %struct.hw_perf_event** %6, align 8
  %85 = getelementptr inbounds %struct.hw_perf_event, %struct.hw_perf_event* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = or i32 %86, %83
  store i32 %87, i32* %85, align 4
  br label %88

88:                                               ; preds = %82, %74
  %89 = load i64, i64* %9, align 8
  %90 = call i32 @local_irq_restore(i64 %89)
  %91 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %92 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = call i32 @perf_pmu_enable(i32 %93)
  %95 = load i32, i32* %8, align 4
  ret i32 %95
}

declare dso_local %struct.cpu_hw_events* @this_cpu_ptr(i32*) #1

declare dso_local i32 @perf_pmu_disable(i32) #1

declare dso_local i32 @local_irq_save(i64) #1

declare dso_local i32 @alpha_check_constraints(%struct.perf_event**, i32*, i32) #1

declare dso_local i32 @local_irq_restore(i64) #1

declare dso_local i32 @perf_pmu_enable(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
