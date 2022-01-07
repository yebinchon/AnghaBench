; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/perf/extr_imc-pmu.c_thread_imc_event_del.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/perf/extr_imc-pmu.c_thread_imc_event_del.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.imc_pmu_ref = type { i64, i32 }
%struct.perf_event = type { i32 }

@SPRN_LDBAR = common dso_local global i32 0, align 4
@threads_per_core = common dso_local global i32 0, align 4
@core_imc_refc = common dso_local global %struct.imc_pmu_ref* null, align 8
@OPAL_IMC_COUNTERS_CORE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [56 x i8] c"thread-imc: Unable to stop the counters\09\09\09\09for core %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.perf_event*, i32)* @thread_imc_event_del to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @thread_imc_event_del(%struct.perf_event* %0, i32 %1) #0 {
  %3 = alloca %struct.perf_event*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.imc_pmu_ref*, align 8
  store %struct.perf_event* %0, %struct.perf_event** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load i32, i32* @SPRN_LDBAR, align 4
  %8 = call i32 @mtspr(i32 %7, i32 0)
  %9 = call i32 (...) @smp_processor_id()
  %10 = load i32, i32* @threads_per_core, align 4
  %11 = sdiv i32 %9, %10
  store i32 %11, i32* %5, align 4
  %12 = load %struct.imc_pmu_ref*, %struct.imc_pmu_ref** @core_imc_refc, align 8
  %13 = load i32, i32* %5, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds %struct.imc_pmu_ref, %struct.imc_pmu_ref* %12, i64 %14
  store %struct.imc_pmu_ref* %15, %struct.imc_pmu_ref** %6, align 8
  %16 = load %struct.imc_pmu_ref*, %struct.imc_pmu_ref** %6, align 8
  %17 = getelementptr inbounds %struct.imc_pmu_ref, %struct.imc_pmu_ref* %16, i32 0, i32 1
  %18 = call i32 @mutex_lock(i32* %17)
  %19 = load %struct.imc_pmu_ref*, %struct.imc_pmu_ref** %6, align 8
  %20 = getelementptr inbounds %struct.imc_pmu_ref, %struct.imc_pmu_ref* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = add nsw i64 %21, -1
  store i64 %22, i64* %20, align 8
  %23 = load %struct.imc_pmu_ref*, %struct.imc_pmu_ref** %6, align 8
  %24 = getelementptr inbounds %struct.imc_pmu_ref, %struct.imc_pmu_ref* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp eq i64 %25, 0
  br i1 %26, label %27, label %40

27:                                               ; preds = %2
  %28 = load i32, i32* @OPAL_IMC_COUNTERS_CORE, align 4
  %29 = call i32 (...) @smp_processor_id()
  %30 = call i32 @get_hard_smp_processor_id(i32 %29)
  %31 = call i64 @opal_imc_counters_stop(i32 %28, i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %39

33:                                               ; preds = %27
  %34 = load %struct.imc_pmu_ref*, %struct.imc_pmu_ref** %6, align 8
  %35 = getelementptr inbounds %struct.imc_pmu_ref, %struct.imc_pmu_ref* %34, i32 0, i32 1
  %36 = call i32 @mutex_unlock(i32* %35)
  %37 = load i32, i32* %5, align 4
  %38 = call i32 @pr_err(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str, i64 0, i64 0), i32 %37)
  br label %55

39:                                               ; preds = %27
  br label %49

40:                                               ; preds = %2
  %41 = load %struct.imc_pmu_ref*, %struct.imc_pmu_ref** %6, align 8
  %42 = getelementptr inbounds %struct.imc_pmu_ref, %struct.imc_pmu_ref* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = icmp slt i64 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %40
  %46 = load %struct.imc_pmu_ref*, %struct.imc_pmu_ref** %6, align 8
  %47 = getelementptr inbounds %struct.imc_pmu_ref, %struct.imc_pmu_ref* %46, i32 0, i32 0
  store i64 0, i64* %47, align 8
  br label %48

48:                                               ; preds = %45, %40
  br label %49

49:                                               ; preds = %48, %39
  %50 = load %struct.imc_pmu_ref*, %struct.imc_pmu_ref** %6, align 8
  %51 = getelementptr inbounds %struct.imc_pmu_ref, %struct.imc_pmu_ref* %50, i32 0, i32 1
  %52 = call i32 @mutex_unlock(i32* %51)
  %53 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %54 = call i32 @imc_event_update(%struct.perf_event* %53)
  br label %55

55:                                               ; preds = %49, %33
  ret void
}

declare dso_local i32 @mtspr(i32, i32) #1

declare dso_local i32 @smp_processor_id(...) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @opal_imc_counters_stop(i32, i32) #1

declare dso_local i32 @get_hard_smp_processor_id(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @pr_err(i8*, i32) #1

declare dso_local i32 @imc_event_update(%struct.perf_event*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
