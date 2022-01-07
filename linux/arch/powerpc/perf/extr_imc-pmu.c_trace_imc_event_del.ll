; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/perf/extr_imc-pmu.c_trace_imc_event_del.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/perf/extr_imc-pmu.c_trace_imc_event_del.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.imc_pmu_ref = type { i64, i32 }
%struct.perf_event = type { i32 }

@threads_per_core = common dso_local global i32 0, align 4
@core_imc_refc = common dso_local global %struct.imc_pmu_ref* null, align 8
@trace_imc_refc = common dso_local global %struct.imc_pmu_ref* null, align 8
@SPRN_LDBAR = common dso_local global i32 0, align 4
@OPAL_IMC_COUNTERS_TRACE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [52 x i8] c"trace-imc: Unable to stop the counters for core %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.perf_event*, i32)* @trace_imc_event_del to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @trace_imc_event_del(%struct.perf_event* %0, i32 %1) #0 {
  %3 = alloca %struct.perf_event*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.imc_pmu_ref*, align 8
  store %struct.perf_event* %0, %struct.perf_event** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = call i32 (...) @smp_processor_id()
  %8 = load i32, i32* @threads_per_core, align 4
  %9 = sdiv i32 %7, %8
  store i32 %9, i32* %5, align 4
  store %struct.imc_pmu_ref* null, %struct.imc_pmu_ref** %6, align 8
  %10 = load %struct.imc_pmu_ref*, %struct.imc_pmu_ref** @core_imc_refc, align 8
  %11 = icmp ne %struct.imc_pmu_ref* %10, null
  br i1 %11, label %12, label %17

12:                                               ; preds = %2
  %13 = load %struct.imc_pmu_ref*, %struct.imc_pmu_ref** @core_imc_refc, align 8
  %14 = load i32, i32* %5, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds %struct.imc_pmu_ref, %struct.imc_pmu_ref* %13, i64 %15
  store %struct.imc_pmu_ref* %16, %struct.imc_pmu_ref** %6, align 8
  br label %17

17:                                               ; preds = %12, %2
  %18 = load %struct.imc_pmu_ref*, %struct.imc_pmu_ref** %6, align 8
  %19 = icmp ne %struct.imc_pmu_ref* %18, null
  br i1 %19, label %33, label %20

20:                                               ; preds = %17
  %21 = load %struct.imc_pmu_ref*, %struct.imc_pmu_ref** @trace_imc_refc, align 8
  %22 = icmp ne %struct.imc_pmu_ref* %21, null
  br i1 %22, label %23, label %28

23:                                               ; preds = %20
  %24 = load %struct.imc_pmu_ref*, %struct.imc_pmu_ref** @trace_imc_refc, align 8
  %25 = load i32, i32* %5, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.imc_pmu_ref, %struct.imc_pmu_ref* %24, i64 %26
  store %struct.imc_pmu_ref* %27, %struct.imc_pmu_ref** %6, align 8
  br label %28

28:                                               ; preds = %23, %20
  %29 = load %struct.imc_pmu_ref*, %struct.imc_pmu_ref** %6, align 8
  %30 = icmp ne %struct.imc_pmu_ref* %29, null
  br i1 %30, label %32, label %31

31:                                               ; preds = %28
  br label %76

32:                                               ; preds = %28
  br label %33

33:                                               ; preds = %32, %17
  %34 = load i32, i32* @SPRN_LDBAR, align 4
  %35 = call i32 @mtspr(i32 %34, i32 0)
  %36 = load %struct.imc_pmu_ref*, %struct.imc_pmu_ref** %6, align 8
  %37 = getelementptr inbounds %struct.imc_pmu_ref, %struct.imc_pmu_ref* %36, i32 0, i32 1
  %38 = call i32 @mutex_lock(i32* %37)
  %39 = load %struct.imc_pmu_ref*, %struct.imc_pmu_ref** %6, align 8
  %40 = getelementptr inbounds %struct.imc_pmu_ref, %struct.imc_pmu_ref* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = add nsw i64 %41, -1
  store i64 %42, i64* %40, align 8
  %43 = load %struct.imc_pmu_ref*, %struct.imc_pmu_ref** %6, align 8
  %44 = getelementptr inbounds %struct.imc_pmu_ref, %struct.imc_pmu_ref* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = icmp eq i64 %45, 0
  br i1 %46, label %47, label %60

47:                                               ; preds = %33
  %48 = load i32, i32* @OPAL_IMC_COUNTERS_TRACE, align 4
  %49 = call i32 (...) @smp_processor_id()
  %50 = call i32 @get_hard_smp_processor_id(i32 %49)
  %51 = call i64 @opal_imc_counters_stop(i32 %48, i32 %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %59

53:                                               ; preds = %47
  %54 = load %struct.imc_pmu_ref*, %struct.imc_pmu_ref** %6, align 8
  %55 = getelementptr inbounds %struct.imc_pmu_ref, %struct.imc_pmu_ref* %54, i32 0, i32 1
  %56 = call i32 @mutex_unlock(i32* %55)
  %57 = load i32, i32* %5, align 4
  %58 = call i32 @pr_err(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0), i32 %57)
  br label %76

59:                                               ; preds = %47
  br label %69

60:                                               ; preds = %33
  %61 = load %struct.imc_pmu_ref*, %struct.imc_pmu_ref** %6, align 8
  %62 = getelementptr inbounds %struct.imc_pmu_ref, %struct.imc_pmu_ref* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = icmp slt i64 %63, 0
  br i1 %64, label %65, label %68

65:                                               ; preds = %60
  %66 = load %struct.imc_pmu_ref*, %struct.imc_pmu_ref** %6, align 8
  %67 = getelementptr inbounds %struct.imc_pmu_ref, %struct.imc_pmu_ref* %66, i32 0, i32 0
  store i64 0, i64* %67, align 8
  br label %68

68:                                               ; preds = %65, %60
  br label %69

69:                                               ; preds = %68, %59
  %70 = load %struct.imc_pmu_ref*, %struct.imc_pmu_ref** %6, align 8
  %71 = getelementptr inbounds %struct.imc_pmu_ref, %struct.imc_pmu_ref* %70, i32 0, i32 1
  %72 = call i32 @mutex_unlock(i32* %71)
  %73 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %74 = load i32, i32* %4, align 4
  %75 = call i32 @trace_imc_event_stop(%struct.perf_event* %73, i32 %74)
  br label %76

76:                                               ; preds = %69, %53, %31
  ret void
}

declare dso_local i32 @smp_processor_id(...) #1

declare dso_local i32 @mtspr(i32, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @opal_imc_counters_stop(i32, i32) #1

declare dso_local i32 @get_hard_smp_processor_id(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @pr_err(i8*, i32) #1

declare dso_local i32 @trace_imc_event_stop(%struct.perf_event*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
