; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/perf/extr_imc-pmu.c_nest_imc_counters_release.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/perf/extr_imc-pmu.c_nest_imc_counters_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.perf_event = type { i64 }
%struct.imc_pmu_ref = type { i64, i32 }

@OPAL_IMC_COUNTERS_NEST = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [51 x i8] c"nest-imc: Unable to stop the counters for core %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [41 x i8] c"nest-imc: Invalid event reference count\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.perf_event*)* @nest_imc_counters_release to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nest_imc_counters_release(%struct.perf_event* %0) #0 {
  %2 = alloca %struct.perf_event*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.imc_pmu_ref*, align 8
  store %struct.perf_event* %0, %struct.perf_event** %2, align 8
  %6 = load %struct.perf_event*, %struct.perf_event** %2, align 8
  %7 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = icmp slt i64 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  br label %74

11:                                               ; preds = %1
  %12 = load %struct.perf_event*, %struct.perf_event** %2, align 8
  %13 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = call i32 @cpu_to_node(i64 %14)
  store i32 %15, i32* %4, align 4
  %16 = load %struct.perf_event*, %struct.perf_event** %2, align 8
  %17 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = call %struct.imc_pmu_ref* @get_nest_pmu_ref(i64 %18)
  store %struct.imc_pmu_ref* %19, %struct.imc_pmu_ref** %5, align 8
  %20 = load %struct.imc_pmu_ref*, %struct.imc_pmu_ref** %5, align 8
  %21 = icmp ne %struct.imc_pmu_ref* %20, null
  br i1 %21, label %23, label %22

22:                                               ; preds = %11
  br label %74

23:                                               ; preds = %11
  %24 = load %struct.imc_pmu_ref*, %struct.imc_pmu_ref** %5, align 8
  %25 = getelementptr inbounds %struct.imc_pmu_ref, %struct.imc_pmu_ref* %24, i32 0, i32 1
  %26 = call i32 @mutex_lock(i32* %25)
  %27 = load %struct.imc_pmu_ref*, %struct.imc_pmu_ref** %5, align 8
  %28 = getelementptr inbounds %struct.imc_pmu_ref, %struct.imc_pmu_ref* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp eq i64 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %23
  %32 = load %struct.imc_pmu_ref*, %struct.imc_pmu_ref** %5, align 8
  %33 = getelementptr inbounds %struct.imc_pmu_ref, %struct.imc_pmu_ref* %32, i32 0, i32 1
  %34 = call i32 @mutex_unlock(i32* %33)
  br label %74

35:                                               ; preds = %23
  %36 = load %struct.imc_pmu_ref*, %struct.imc_pmu_ref** %5, align 8
  %37 = getelementptr inbounds %struct.imc_pmu_ref, %struct.imc_pmu_ref* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = add nsw i64 %38, -1
  store i64 %39, i64* %37, align 8
  %40 = load %struct.imc_pmu_ref*, %struct.imc_pmu_ref** %5, align 8
  %41 = getelementptr inbounds %struct.imc_pmu_ref, %struct.imc_pmu_ref* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = icmp eq i64 %42, 0
  br i1 %43, label %44, label %60

44:                                               ; preds = %35
  %45 = load i32, i32* @OPAL_IMC_COUNTERS_NEST, align 4
  %46 = load %struct.perf_event*, %struct.perf_event** %2, align 8
  %47 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = call i32 @get_hard_smp_processor_id(i64 %48)
  %50 = call i32 @opal_imc_counters_stop(i32 %45, i32 %49)
  store i32 %50, i32* %3, align 4
  %51 = load i32, i32* %3, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %59

53:                                               ; preds = %44
  %54 = load %struct.imc_pmu_ref*, %struct.imc_pmu_ref** %5, align 8
  %55 = getelementptr inbounds %struct.imc_pmu_ref, %struct.imc_pmu_ref* %54, i32 0, i32 1
  %56 = call i32 @mutex_unlock(i32* %55)
  %57 = load i32, i32* %4, align 4
  %58 = call i32 @pr_err(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0), i32 %57)
  br label %74

59:                                               ; preds = %44
  br label %70

60:                                               ; preds = %35
  %61 = load %struct.imc_pmu_ref*, %struct.imc_pmu_ref** %5, align 8
  %62 = getelementptr inbounds %struct.imc_pmu_ref, %struct.imc_pmu_ref* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = icmp slt i64 %63, 0
  br i1 %64, label %65, label %69

65:                                               ; preds = %60
  %66 = call i32 @WARN(i32 1, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0))
  %67 = load %struct.imc_pmu_ref*, %struct.imc_pmu_ref** %5, align 8
  %68 = getelementptr inbounds %struct.imc_pmu_ref, %struct.imc_pmu_ref* %67, i32 0, i32 0
  store i64 0, i64* %68, align 8
  br label %69

69:                                               ; preds = %65, %60
  br label %70

70:                                               ; preds = %69, %59
  %71 = load %struct.imc_pmu_ref*, %struct.imc_pmu_ref** %5, align 8
  %72 = getelementptr inbounds %struct.imc_pmu_ref, %struct.imc_pmu_ref* %71, i32 0, i32 1
  %73 = call i32 @mutex_unlock(i32* %72)
  br label %74

74:                                               ; preds = %70, %53, %31, %22, %10
  ret void
}

declare dso_local i32 @cpu_to_node(i64) #1

declare dso_local %struct.imc_pmu_ref* @get_nest_pmu_ref(i64) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @opal_imc_counters_stop(i32, i32) #1

declare dso_local i32 @get_hard_smp_processor_id(i64) #1

declare dso_local i32 @pr_err(i8*, i32) #1

declare dso_local i32 @WARN(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
