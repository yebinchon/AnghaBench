; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/perf/extr_imc-pmu.c_core_imc_counters_release.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/perf/extr_imc-pmu.c_core_imc_counters_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.imc_pmu_ref = type { i64, i32 }
%struct.perf_event = type { i32 }

@threads_per_core = common dso_local global i32 0, align 4
@core_imc_refc = common dso_local global %struct.imc_pmu_ref* null, align 8
@OPAL_IMC_COUNTERS_CORE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"IMC: Unable to stop the counters for core %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [41 x i8] c"core-imc: Invalid event reference count\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.perf_event*)* @core_imc_counters_release to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @core_imc_counters_release(%struct.perf_event* %0) #0 {
  %2 = alloca %struct.perf_event*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.imc_pmu_ref*, align 8
  store %struct.perf_event* %0, %struct.perf_event** %2, align 8
  %6 = load %struct.perf_event*, %struct.perf_event** %2, align 8
  %7 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = icmp slt i32 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  br label %75

11:                                               ; preds = %1
  %12 = load %struct.perf_event*, %struct.perf_event** %2, align 8
  %13 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @threads_per_core, align 4
  %16 = sdiv i32 %14, %15
  store i32 %16, i32* %4, align 4
  %17 = load %struct.imc_pmu_ref*, %struct.imc_pmu_ref** @core_imc_refc, align 8
  %18 = load i32, i32* %4, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds %struct.imc_pmu_ref, %struct.imc_pmu_ref* %17, i64 %19
  store %struct.imc_pmu_ref* %20, %struct.imc_pmu_ref** %5, align 8
  %21 = load %struct.imc_pmu_ref*, %struct.imc_pmu_ref** %5, align 8
  %22 = icmp ne %struct.imc_pmu_ref* %21, null
  br i1 %22, label %24, label %23

23:                                               ; preds = %11
  br label %75

24:                                               ; preds = %11
  %25 = load %struct.imc_pmu_ref*, %struct.imc_pmu_ref** %5, align 8
  %26 = getelementptr inbounds %struct.imc_pmu_ref, %struct.imc_pmu_ref* %25, i32 0, i32 1
  %27 = call i32 @mutex_lock(i32* %26)
  %28 = load %struct.imc_pmu_ref*, %struct.imc_pmu_ref** %5, align 8
  %29 = getelementptr inbounds %struct.imc_pmu_ref, %struct.imc_pmu_ref* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = icmp eq i64 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %24
  %33 = load %struct.imc_pmu_ref*, %struct.imc_pmu_ref** %5, align 8
  %34 = getelementptr inbounds %struct.imc_pmu_ref, %struct.imc_pmu_ref* %33, i32 0, i32 1
  %35 = call i32 @mutex_unlock(i32* %34)
  br label %75

36:                                               ; preds = %24
  %37 = load %struct.imc_pmu_ref*, %struct.imc_pmu_ref** %5, align 8
  %38 = getelementptr inbounds %struct.imc_pmu_ref, %struct.imc_pmu_ref* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = add nsw i64 %39, -1
  store i64 %40, i64* %38, align 8
  %41 = load %struct.imc_pmu_ref*, %struct.imc_pmu_ref** %5, align 8
  %42 = getelementptr inbounds %struct.imc_pmu_ref, %struct.imc_pmu_ref* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = icmp eq i64 %43, 0
  br i1 %44, label %45, label %61

45:                                               ; preds = %36
  %46 = load i32, i32* @OPAL_IMC_COUNTERS_CORE, align 4
  %47 = load %struct.perf_event*, %struct.perf_event** %2, align 8
  %48 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @get_hard_smp_processor_id(i32 %49)
  %51 = call i32 @opal_imc_counters_stop(i32 %46, i32 %50)
  store i32 %51, i32* %3, align 4
  %52 = load i32, i32* %3, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %60

54:                                               ; preds = %45
  %55 = load %struct.imc_pmu_ref*, %struct.imc_pmu_ref** %5, align 8
  %56 = getelementptr inbounds %struct.imc_pmu_ref, %struct.imc_pmu_ref* %55, i32 0, i32 1
  %57 = call i32 @mutex_unlock(i32* %56)
  %58 = load i32, i32* %4, align 4
  %59 = call i32 @pr_err(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i32 %58)
  br label %75

60:                                               ; preds = %45
  br label %71

61:                                               ; preds = %36
  %62 = load %struct.imc_pmu_ref*, %struct.imc_pmu_ref** %5, align 8
  %63 = getelementptr inbounds %struct.imc_pmu_ref, %struct.imc_pmu_ref* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = icmp slt i64 %64, 0
  br i1 %65, label %66, label %70

66:                                               ; preds = %61
  %67 = call i32 @WARN(i32 1, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0))
  %68 = load %struct.imc_pmu_ref*, %struct.imc_pmu_ref** %5, align 8
  %69 = getelementptr inbounds %struct.imc_pmu_ref, %struct.imc_pmu_ref* %68, i32 0, i32 0
  store i64 0, i64* %69, align 8
  br label %70

70:                                               ; preds = %66, %61
  br label %71

71:                                               ; preds = %70, %60
  %72 = load %struct.imc_pmu_ref*, %struct.imc_pmu_ref** %5, align 8
  %73 = getelementptr inbounds %struct.imc_pmu_ref, %struct.imc_pmu_ref* %72, i32 0, i32 1
  %74 = call i32 @mutex_unlock(i32* %73)
  br label %75

75:                                               ; preds = %71, %54, %32, %23, %10
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @opal_imc_counters_stop(i32, i32) #1

declare dso_local i32 @get_hard_smp_processor_id(i32) #1

declare dso_local i32 @pr_err(i8*, i32) #1

declare dso_local i32 @WARN(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
