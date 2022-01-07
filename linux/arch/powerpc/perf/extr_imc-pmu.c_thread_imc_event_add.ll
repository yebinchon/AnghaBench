; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/perf/extr_imc-pmu.c_thread_imc_event_add.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/perf/extr_imc-pmu.c_thread_imc_event_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.imc_pmu_ref = type { i64, i32 }
%struct.perf_event = type { i32 }

@thread_imc_mem = common dso_local global i32 0, align 4
@PERF_EF_START = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@threads_per_core = common dso_local global i32 0, align 4
@THREAD_IMC_LDBAR_MASK = common dso_local global i32 0, align 4
@THREAD_IMC_ENABLE = common dso_local global i32 0, align 4
@SPRN_LDBAR = common dso_local global i32 0, align 4
@core_imc_refc = common dso_local global %struct.imc_pmu_ref* null, align 8
@OPAL_IMC_COUNTERS_CORE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [56 x i8] c"thread-imc: Unable to start the counter\09\09\09\09for core %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.perf_event*, i32)* @thread_imc_event_add to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @thread_imc_event_add(%struct.perf_event* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.perf_event*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.imc_pmu_ref*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  store %struct.perf_event* %0, %struct.perf_event** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load i32, i32* @thread_imc_mem, align 4
  %11 = call i32 (...) @smp_processor_id()
  %12 = call i32* @per_cpu(i32 %10, i32 %11)
  store i32* %12, i32** %9, align 8
  %13 = load i32, i32* %5, align 4
  %14 = load i32, i32* @PERF_EF_START, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %2
  %18 = load %struct.perf_event*, %struct.perf_event** %4, align 8
  %19 = load i32, i32* %5, align 4
  %20 = call i32 @imc_event_start(%struct.perf_event* %18, i32 %19)
  br label %21

21:                                               ; preds = %17, %2
  %22 = call i32 (...) @smp_processor_id()
  %23 = call i32 @is_core_imc_mem_inited(i32 %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %28, label %25

25:                                               ; preds = %21
  %26 = load i32, i32* @EINVAL, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %3, align 4
  br label %81

28:                                               ; preds = %21
  %29 = call i32 (...) @smp_processor_id()
  %30 = load i32, i32* @threads_per_core, align 4
  %31 = sdiv i32 %29, %30
  store i32 %31, i32* %6, align 4
  %32 = load i32*, i32** %9, align 8
  %33 = ptrtoint i32* %32 to i32
  %34 = load i32, i32* @THREAD_IMC_LDBAR_MASK, align 4
  %35 = and i32 %33, %34
  %36 = load i32, i32* @THREAD_IMC_ENABLE, align 4
  %37 = or i32 %35, %36
  store i32 %37, i32* %8, align 4
  %38 = load i32, i32* @SPRN_LDBAR, align 4
  %39 = load i32, i32* %8, align 4
  %40 = call i32 @mtspr(i32 %38, i32 %39)
  %41 = load %struct.imc_pmu_ref*, %struct.imc_pmu_ref** @core_imc_refc, align 8
  %42 = load i32, i32* %6, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.imc_pmu_ref, %struct.imc_pmu_ref* %41, i64 %43
  store %struct.imc_pmu_ref* %44, %struct.imc_pmu_ref** %7, align 8
  %45 = load %struct.imc_pmu_ref*, %struct.imc_pmu_ref** %7, align 8
  %46 = icmp ne %struct.imc_pmu_ref* %45, null
  br i1 %46, label %50, label %47

47:                                               ; preds = %28
  %48 = load i32, i32* @EINVAL, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %3, align 4
  br label %81

50:                                               ; preds = %28
  %51 = load %struct.imc_pmu_ref*, %struct.imc_pmu_ref** %7, align 8
  %52 = getelementptr inbounds %struct.imc_pmu_ref, %struct.imc_pmu_ref* %51, i32 0, i32 1
  %53 = call i32 @mutex_lock(i32* %52)
  %54 = load %struct.imc_pmu_ref*, %struct.imc_pmu_ref** %7, align 8
  %55 = getelementptr inbounds %struct.imc_pmu_ref, %struct.imc_pmu_ref* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = icmp eq i64 %56, 0
  br i1 %57, label %58, label %73

58:                                               ; preds = %50
  %59 = load i32, i32* @OPAL_IMC_COUNTERS_CORE, align 4
  %60 = call i32 (...) @smp_processor_id()
  %61 = call i32 @get_hard_smp_processor_id(i32 %60)
  %62 = call i64 @opal_imc_counters_start(i32 %59, i32 %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %72

64:                                               ; preds = %58
  %65 = load %struct.imc_pmu_ref*, %struct.imc_pmu_ref** %7, align 8
  %66 = getelementptr inbounds %struct.imc_pmu_ref, %struct.imc_pmu_ref* %65, i32 0, i32 1
  %67 = call i32 @mutex_unlock(i32* %66)
  %68 = load i32, i32* %6, align 4
  %69 = call i32 @pr_err(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str, i64 0, i64 0), i32 %68)
  %70 = load i32, i32* @EINVAL, align 4
  %71 = sub nsw i32 0, %70
  store i32 %71, i32* %3, align 4
  br label %81

72:                                               ; preds = %58
  br label %73

73:                                               ; preds = %72, %50
  %74 = load %struct.imc_pmu_ref*, %struct.imc_pmu_ref** %7, align 8
  %75 = getelementptr inbounds %struct.imc_pmu_ref, %struct.imc_pmu_ref* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = add nsw i64 %76, 1
  store i64 %77, i64* %75, align 8
  %78 = load %struct.imc_pmu_ref*, %struct.imc_pmu_ref** %7, align 8
  %79 = getelementptr inbounds %struct.imc_pmu_ref, %struct.imc_pmu_ref* %78, i32 0, i32 1
  %80 = call i32 @mutex_unlock(i32* %79)
  store i32 0, i32* %3, align 4
  br label %81

81:                                               ; preds = %73, %64, %47, %25
  %82 = load i32, i32* %3, align 4
  ret i32 %82
}

declare dso_local i32* @per_cpu(i32, i32) #1

declare dso_local i32 @smp_processor_id(...) #1

declare dso_local i32 @imc_event_start(%struct.perf_event*, i32) #1

declare dso_local i32 @is_core_imc_mem_inited(i32) #1

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
