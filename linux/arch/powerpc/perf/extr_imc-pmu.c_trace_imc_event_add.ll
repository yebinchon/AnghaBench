; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/perf/extr_imc-pmu.c_trace_imc_event_add.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/perf/extr_imc-pmu.c_trace_imc_event_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.imc_pmu_ref = type { i64, i32 }
%struct.perf_event = type { i32 }

@threads_per_core = common dso_local global i32 0, align 4
@THREAD_IMC_LDBAR_MASK = common dso_local global i32 0, align 4
@TRACE_IMC_ENABLE = common dso_local global i32 0, align 4
@core_imc_refc = common dso_local global %struct.imc_pmu_ref* null, align 8
@trace_imc_refc = common dso_local global %struct.imc_pmu_ref* null, align 8
@EINVAL = common dso_local global i32 0, align 4
@SPRN_LDBAR = common dso_local global i32 0, align 4
@OPAL_IMC_COUNTERS_TRACE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [53 x i8] c"trace-imc: Unable to start the counters for core %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.perf_event*, i32)* @trace_imc_event_add to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @trace_imc_event_add(%struct.perf_event* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.perf_event*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.imc_pmu_ref*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.perf_event* %0, %struct.perf_event** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = call i32 (...) @smp_processor_id()
  %11 = load i32, i32* @threads_per_core, align 4
  %12 = sdiv i32 %10, %11
  store i32 %12, i32* %6, align 4
  store %struct.imc_pmu_ref* null, %struct.imc_pmu_ref** %7, align 8
  %13 = call i32 (...) @get_trace_imc_event_base_addr()
  store i32 %13, i32* %8, align 4
  %14 = load i32, i32* %8, align 4
  %15 = load i32, i32* @THREAD_IMC_LDBAR_MASK, align 4
  %16 = and i32 %14, %15
  %17 = load i32, i32* @TRACE_IMC_ENABLE, align 4
  %18 = or i32 %16, %17
  store i32 %18, i32* %9, align 4
  %19 = load %struct.imc_pmu_ref*, %struct.imc_pmu_ref** @core_imc_refc, align 8
  %20 = icmp ne %struct.imc_pmu_ref* %19, null
  br i1 %20, label %21, label %26

21:                                               ; preds = %2
  %22 = load %struct.imc_pmu_ref*, %struct.imc_pmu_ref** @core_imc_refc, align 8
  %23 = load i32, i32* %6, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.imc_pmu_ref, %struct.imc_pmu_ref* %22, i64 %24
  store %struct.imc_pmu_ref* %25, %struct.imc_pmu_ref** %7, align 8
  br label %26

26:                                               ; preds = %21, %2
  %27 = load %struct.imc_pmu_ref*, %struct.imc_pmu_ref** %7, align 8
  %28 = icmp ne %struct.imc_pmu_ref* %27, null
  br i1 %28, label %44, label %29

29:                                               ; preds = %26
  %30 = load %struct.imc_pmu_ref*, %struct.imc_pmu_ref** @trace_imc_refc, align 8
  %31 = icmp ne %struct.imc_pmu_ref* %30, null
  br i1 %31, label %32, label %37

32:                                               ; preds = %29
  %33 = load %struct.imc_pmu_ref*, %struct.imc_pmu_ref** @trace_imc_refc, align 8
  %34 = load i32, i32* %6, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.imc_pmu_ref, %struct.imc_pmu_ref* %33, i64 %35
  store %struct.imc_pmu_ref* %36, %struct.imc_pmu_ref** %7, align 8
  br label %37

37:                                               ; preds = %32, %29
  %38 = load %struct.imc_pmu_ref*, %struct.imc_pmu_ref** %7, align 8
  %39 = icmp ne %struct.imc_pmu_ref* %38, null
  br i1 %39, label %43, label %40

40:                                               ; preds = %37
  %41 = load i32, i32* @EINVAL, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %3, align 4
  br label %80

43:                                               ; preds = %37
  br label %44

44:                                               ; preds = %43, %26
  %45 = load i32, i32* @SPRN_LDBAR, align 4
  %46 = load i32, i32* %9, align 4
  %47 = call i32 @mtspr(i32 %45, i32 %46)
  %48 = load %struct.imc_pmu_ref*, %struct.imc_pmu_ref** %7, align 8
  %49 = getelementptr inbounds %struct.imc_pmu_ref, %struct.imc_pmu_ref* %48, i32 0, i32 1
  %50 = call i32 @mutex_lock(i32* %49)
  %51 = load %struct.imc_pmu_ref*, %struct.imc_pmu_ref** %7, align 8
  %52 = getelementptr inbounds %struct.imc_pmu_ref, %struct.imc_pmu_ref* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = icmp eq i64 %53, 0
  br i1 %54, label %55, label %72

55:                                               ; preds = %44
  %56 = load i32, i32* @OPAL_IMC_COUNTERS_TRACE, align 4
  %57 = call i32 (...) @smp_processor_id()
  %58 = call i32 @get_hard_smp_processor_id(i32 %57)
  %59 = call i64 @opal_imc_counters_start(i32 %56, i32 %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %71

61:                                               ; preds = %55
  %62 = load %struct.imc_pmu_ref*, %struct.imc_pmu_ref** %7, align 8
  %63 = getelementptr inbounds %struct.imc_pmu_ref, %struct.imc_pmu_ref* %62, i32 0, i32 1
  %64 = call i32 @mutex_unlock(i32* %63)
  %65 = load i32, i32* %6, align 4
  %66 = call i32 @pr_err(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0), i32 %65)
  %67 = load i32, i32* @SPRN_LDBAR, align 4
  %68 = call i32 @mtspr(i32 %67, i32 0)
  %69 = load i32, i32* @EINVAL, align 4
  %70 = sub nsw i32 0, %69
  store i32 %70, i32* %3, align 4
  br label %80

71:                                               ; preds = %55
  br label %72

72:                                               ; preds = %71, %44
  %73 = load %struct.imc_pmu_ref*, %struct.imc_pmu_ref** %7, align 8
  %74 = getelementptr inbounds %struct.imc_pmu_ref, %struct.imc_pmu_ref* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = add nsw i64 %75, 1
  store i64 %76, i64* %74, align 8
  %77 = load %struct.imc_pmu_ref*, %struct.imc_pmu_ref** %7, align 8
  %78 = getelementptr inbounds %struct.imc_pmu_ref, %struct.imc_pmu_ref* %77, i32 0, i32 1
  %79 = call i32 @mutex_unlock(i32* %78)
  store i32 0, i32* %3, align 4
  br label %80

80:                                               ; preds = %72, %61, %40
  %81 = load i32, i32* %3, align 4
  ret i32 %81
}

declare dso_local i32 @smp_processor_id(...) #1

declare dso_local i32 @get_trace_imc_event_base_addr(...) #1

declare dso_local i32 @mtspr(i32, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @opal_imc_counters_start(i32, i32) #1

declare dso_local i32 @get_hard_smp_processor_id(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @pr_err(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
