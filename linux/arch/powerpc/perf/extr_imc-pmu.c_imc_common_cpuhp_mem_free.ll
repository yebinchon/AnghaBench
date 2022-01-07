; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/perf/extr_imc-pmu.c_imc_common_cpuhp_mem_free.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/perf/extr_imc-pmu.c_imc_common_cpuhp_mem_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.imc_pmu = type { i64 }

@IMC_DOMAIN_NEST = common dso_local global i64 0, align 8
@nest_init_lock = common dso_local global i32 0, align 4
@nest_pmus = common dso_local global i32 0, align 4
@CPUHP_AP_PERF_POWERPC_NEST_IMC_ONLINE = common dso_local global i32 0, align 4
@nest_imc_refc = common dso_local global i32* null, align 8
@per_nest_pmu_arr = common dso_local global i32* null, align 8
@IMC_DOMAIN_CORE = common dso_local global i64 0, align 8
@CPUHP_AP_PERF_POWERPC_CORE_IMC_ONLINE = common dso_local global i32 0, align 4
@IMC_DOMAIN_THREAD = common dso_local global i64 0, align 8
@CPUHP_AP_PERF_POWERPC_THREAD_IMC_ONLINE = common dso_local global i32 0, align 4
@IMC_DOMAIN_TRACE = common dso_local global i64 0, align 8
@CPUHP_AP_PERF_POWERPC_TRACE_IMC_ONLINE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.imc_pmu*)* @imc_common_cpuhp_mem_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @imc_common_cpuhp_mem_free(%struct.imc_pmu* %0) #0 {
  %2 = alloca %struct.imc_pmu*, align 8
  store %struct.imc_pmu* %0, %struct.imc_pmu** %2, align 8
  %3 = load %struct.imc_pmu*, %struct.imc_pmu** %2, align 8
  %4 = getelementptr inbounds %struct.imc_pmu, %struct.imc_pmu* %3, i32 0, i32 0
  %5 = load i64, i64* %4, align 8
  %6 = load i64, i64* @IMC_DOMAIN_NEST, align 8
  %7 = icmp eq i64 %5, %6
  br i1 %7, label %8, label %27

8:                                                ; preds = %1
  %9 = call i32 @mutex_lock(i32* @nest_init_lock)
  %10 = load i32, i32* @nest_pmus, align 4
  %11 = icmp eq i32 %10, 1
  br i1 %11, label %12, label %19

12:                                               ; preds = %8
  %13 = load i32, i32* @CPUHP_AP_PERF_POWERPC_NEST_IMC_ONLINE, align 4
  %14 = call i32 @cpuhp_remove_state(i32 %13)
  %15 = load i32*, i32** @nest_imc_refc, align 8
  %16 = call i32 @kfree(i32* %15)
  %17 = load i32*, i32** @per_nest_pmu_arr, align 8
  %18 = call i32 @kfree(i32* %17)
  store i32* null, i32** @per_nest_pmu_arr, align 8
  br label %19

19:                                               ; preds = %12, %8
  %20 = load i32, i32* @nest_pmus, align 4
  %21 = icmp sgt i32 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %19
  %23 = load i32, i32* @nest_pmus, align 4
  %24 = add nsw i32 %23, -1
  store i32 %24, i32* @nest_pmus, align 4
  br label %25

25:                                               ; preds = %22, %19
  %26 = call i32 @mutex_unlock(i32* @nest_init_lock)
  br label %27

27:                                               ; preds = %25, %1
  %28 = load %struct.imc_pmu*, %struct.imc_pmu** %2, align 8
  %29 = getelementptr inbounds %struct.imc_pmu, %struct.imc_pmu* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @IMC_DOMAIN_CORE, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %37

33:                                               ; preds = %27
  %34 = load i32, i32* @CPUHP_AP_PERF_POWERPC_CORE_IMC_ONLINE, align 4
  %35 = call i32 @cpuhp_remove_state(i32 %34)
  %36 = call i32 (...) @cleanup_all_core_imc_memory()
  br label %37

37:                                               ; preds = %33, %27
  %38 = load %struct.imc_pmu*, %struct.imc_pmu** %2, align 8
  %39 = getelementptr inbounds %struct.imc_pmu, %struct.imc_pmu* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @IMC_DOMAIN_THREAD, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %43, label %47

43:                                               ; preds = %37
  %44 = load i32, i32* @CPUHP_AP_PERF_POWERPC_THREAD_IMC_ONLINE, align 4
  %45 = call i32 @cpuhp_remove_state(i32 %44)
  %46 = call i32 (...) @cleanup_all_thread_imc_memory()
  br label %47

47:                                               ; preds = %43, %37
  %48 = load %struct.imc_pmu*, %struct.imc_pmu** %2, align 8
  %49 = getelementptr inbounds %struct.imc_pmu, %struct.imc_pmu* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @IMC_DOMAIN_TRACE, align 8
  %52 = icmp eq i64 %50, %51
  br i1 %52, label %53, label %57

53:                                               ; preds = %47
  %54 = load i32, i32* @CPUHP_AP_PERF_POWERPC_TRACE_IMC_ONLINE, align 4
  %55 = call i32 @cpuhp_remove_state(i32 %54)
  %56 = call i32 (...) @cleanup_all_trace_imc_memory()
  br label %57

57:                                               ; preds = %53, %47
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @cpuhp_remove_state(i32) #1

declare dso_local i32 @kfree(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @cleanup_all_core_imc_memory(...) #1

declare dso_local i32 @cleanup_all_thread_imc_memory(...) #1

declare dso_local i32 @cleanup_all_trace_imc_memory(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
