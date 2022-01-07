; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/perf/extr_imc-pmu.c_ppc_core_imc_cpu_offline.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/perf/extr_imc-pmu.c_ppc_core_imc_cpu_offline.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.imc_pmu_ref = type { i64 }

@core_imc_cpumask = common dso_local global i32 0, align 4
@core_imc_pmu = common dso_local global %struct.TYPE_4__* null, align 8
@nr_cpu_ids = common dso_local global i32 0, align 4
@OPAL_IMC_COUNTERS_CORE = common dso_local global i32 0, align 4
@threads_per_core = common dso_local global i32 0, align 4
@core_imc_refc = common dso_local global %struct.imc_pmu_ref* null, align 8
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @ppc_core_imc_cpu_offline to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ppc_core_imc_cpu_offline(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.imc_pmu_ref*, align 8
  store i32 %0, i32* %3, align 4
  %7 = load i32, i32* %3, align 4
  %8 = call i32 @cpumask_test_and_clear_cpu(i32 %7, i32* @core_imc_cpumask)
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %69

11:                                               ; preds = %1
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** @core_imc_pmu, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %11
  store i32 0, i32* %2, align 4
  br label %69

18:                                               ; preds = %11
  %19 = load i32, i32* %3, align 4
  %20 = call i32 @cpu_sibling_mask(i32 %19)
  %21 = call i32 @cpumask_last(i32 %20)
  store i32 %21, i32* %5, align 4
  %22 = load i32, i32* %5, align 4
  %23 = load i32, i32* %3, align 4
  %24 = icmp eq i32 %22, %23
  %25 = zext i1 %24 to i32
  %26 = call i64 @unlikely(i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %33

28:                                               ; preds = %18
  %29 = load i32, i32* %3, align 4
  %30 = call i32 @cpu_sibling_mask(i32 %29)
  %31 = load i32, i32* %3, align 4
  %32 = call i32 @cpumask_any_but(i32 %30, i32 %31)
  store i32 %32, i32* %5, align 4
  br label %33

33:                                               ; preds = %28, %18
  %34 = load i32, i32* %5, align 4
  %35 = icmp sge i32 %34, 0
  br i1 %35, label %36, label %48

36:                                               ; preds = %33
  %37 = load i32, i32* %5, align 4
  %38 = load i32, i32* @nr_cpu_ids, align 4
  %39 = icmp slt i32 %37, %38
  br i1 %39, label %40, label %48

40:                                               ; preds = %36
  %41 = load i32, i32* %5, align 4
  %42 = call i32 @cpumask_set_cpu(i32 %41, i32* @core_imc_cpumask)
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** @core_imc_pmu, align 8
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  %45 = load i32, i32* %3, align 4
  %46 = load i32, i32* %5, align 4
  %47 = call i32 @perf_pmu_migrate_context(%struct.TYPE_3__* %44, i32 %45, i32 %46)
  br label %68

48:                                               ; preds = %36, %33
  %49 = load i32, i32* @OPAL_IMC_COUNTERS_CORE, align 4
  %50 = load i32, i32* %3, align 4
  %51 = call i32 @get_hard_smp_processor_id(i32 %50)
  %52 = call i32 @opal_imc_counters_stop(i32 %49, i32 %51)
  %53 = load i32, i32* %3, align 4
  %54 = load i32, i32* @threads_per_core, align 4
  %55 = udiv i32 %53, %54
  store i32 %55, i32* %4, align 4
  %56 = load %struct.imc_pmu_ref*, %struct.imc_pmu_ref** @core_imc_refc, align 8
  %57 = load i32, i32* %4, align 4
  %58 = zext i32 %57 to i64
  %59 = getelementptr inbounds %struct.imc_pmu_ref, %struct.imc_pmu_ref* %56, i64 %58
  store %struct.imc_pmu_ref* %59, %struct.imc_pmu_ref** %6, align 8
  %60 = load %struct.imc_pmu_ref*, %struct.imc_pmu_ref** %6, align 8
  %61 = icmp ne %struct.imc_pmu_ref* %60, null
  br i1 %61, label %65, label %62

62:                                               ; preds = %48
  %63 = load i32, i32* @EINVAL, align 4
  %64 = sub nsw i32 0, %63
  store i32 %64, i32* %2, align 4
  br label %69

65:                                               ; preds = %48
  %66 = load %struct.imc_pmu_ref*, %struct.imc_pmu_ref** %6, align 8
  %67 = getelementptr inbounds %struct.imc_pmu_ref, %struct.imc_pmu_ref* %66, i32 0, i32 0
  store i64 0, i64* %67, align 8
  br label %68

68:                                               ; preds = %65, %40
  store i32 0, i32* %2, align 4
  br label %69

69:                                               ; preds = %68, %62, %17, %10
  %70 = load i32, i32* %2, align 4
  ret i32 %70
}

declare dso_local i32 @cpumask_test_and_clear_cpu(i32, i32*) #1

declare dso_local i32 @cpumask_last(i32) #1

declare dso_local i32 @cpu_sibling_mask(i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @cpumask_any_but(i32, i32) #1

declare dso_local i32 @cpumask_set_cpu(i32, i32*) #1

declare dso_local i32 @perf_pmu_migrate_context(%struct.TYPE_3__*, i32, i32) #1

declare dso_local i32 @opal_imc_counters_stop(i32, i32) #1

declare dso_local i32 @get_hard_smp_processor_id(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
