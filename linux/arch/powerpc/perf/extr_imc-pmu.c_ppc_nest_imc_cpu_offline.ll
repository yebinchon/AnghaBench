; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/perf/extr_imc-pmu.c_ppc_nest_imc_cpu_offline.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/perf/extr_imc-pmu.c_ppc_nest_imc_cpu_offline.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpumask = type { i32 }
%struct.imc_pmu_ref = type { i64 }

@nest_imc_cpumask = common dso_local global i32 0, align 4
@nest_pmus = common dso_local global i32 0, align 4
@nr_cpu_ids = common dso_local global i32 0, align 4
@OPAL_IMC_COUNTERS_NEST = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @ppc_nest_imc_cpu_offline to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ppc_nest_imc_cpu_offline(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.cpumask*, align 8
  %7 = alloca %struct.imc_pmu_ref*, align 8
  store i32 %0, i32* %3, align 4
  store i32 -1, i32* %5, align 4
  %8 = load i32, i32* %3, align 4
  %9 = call i32 @cpumask_test_and_clear_cpu(i32 %8, i32* @nest_imc_cpumask)
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %62

12:                                               ; preds = %1
  %13 = load i32, i32* @nest_pmus, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %12
  store i32 0, i32* %2, align 4
  br label %62

16:                                               ; preds = %12
  %17 = load i32, i32* %3, align 4
  %18 = call i32 @cpu_to_node(i32 %17)
  store i32 %18, i32* %4, align 4
  %19 = load i32, i32* %4, align 4
  %20 = call %struct.cpumask* @cpumask_of_node(i32 %19)
  store %struct.cpumask* %20, %struct.cpumask** %6, align 8
  %21 = load %struct.cpumask*, %struct.cpumask** %6, align 8
  %22 = call i32 @cpumask_last(%struct.cpumask* %21)
  store i32 %22, i32* %5, align 4
  %23 = load i32, i32* %5, align 4
  %24 = load i32, i32* %3, align 4
  %25 = icmp eq i32 %23, %24
  %26 = zext i1 %25 to i32
  %27 = call i64 @unlikely(i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %33

29:                                               ; preds = %16
  %30 = load %struct.cpumask*, %struct.cpumask** %6, align 8
  %31 = load i32, i32* %3, align 4
  %32 = call i32 @cpumask_any_but(%struct.cpumask* %30, i32 %31)
  store i32 %32, i32* %5, align 4
  br label %33

33:                                               ; preds = %29, %16
  %34 = load i32, i32* %5, align 4
  %35 = icmp sge i32 %34, 0
  br i1 %35, label %36, label %46

36:                                               ; preds = %33
  %37 = load i32, i32* %5, align 4
  %38 = load i32, i32* @nr_cpu_ids, align 4
  %39 = icmp slt i32 %37, %38
  br i1 %39, label %40, label %46

40:                                               ; preds = %36
  %41 = load i32, i32* %5, align 4
  %42 = call i32 @cpumask_set_cpu(i32 %41, i32* @nest_imc_cpumask)
  %43 = load i32, i32* %3, align 4
  %44 = load i32, i32* %5, align 4
  %45 = call i32 @nest_change_cpu_context(i32 %43, i32 %44)
  br label %61

46:                                               ; preds = %36, %33
  %47 = load i32, i32* @OPAL_IMC_COUNTERS_NEST, align 4
  %48 = load i32, i32* %3, align 4
  %49 = call i32 @get_hard_smp_processor_id(i32 %48)
  %50 = call i32 @opal_imc_counters_stop(i32 %47, i32 %49)
  %51 = load i32, i32* %3, align 4
  %52 = call %struct.imc_pmu_ref* @get_nest_pmu_ref(i32 %51)
  store %struct.imc_pmu_ref* %52, %struct.imc_pmu_ref** %7, align 8
  %53 = load %struct.imc_pmu_ref*, %struct.imc_pmu_ref** %7, align 8
  %54 = icmp ne %struct.imc_pmu_ref* %53, null
  br i1 %54, label %58, label %55

55:                                               ; preds = %46
  %56 = load i32, i32* @EINVAL, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %2, align 4
  br label %62

58:                                               ; preds = %46
  %59 = load %struct.imc_pmu_ref*, %struct.imc_pmu_ref** %7, align 8
  %60 = getelementptr inbounds %struct.imc_pmu_ref, %struct.imc_pmu_ref* %59, i32 0, i32 0
  store i64 0, i64* %60, align 8
  br label %61

61:                                               ; preds = %58, %40
  store i32 0, i32* %2, align 4
  br label %62

62:                                               ; preds = %61, %55, %15, %11
  %63 = load i32, i32* %2, align 4
  ret i32 %63
}

declare dso_local i32 @cpumask_test_and_clear_cpu(i32, i32*) #1

declare dso_local i32 @cpu_to_node(i32) #1

declare dso_local %struct.cpumask* @cpumask_of_node(i32) #1

declare dso_local i32 @cpumask_last(%struct.cpumask*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @cpumask_any_but(%struct.cpumask*, i32) #1

declare dso_local i32 @cpumask_set_cpu(i32, i32*) #1

declare dso_local i32 @nest_change_cpu_context(i32, i32) #1

declare dso_local i32 @opal_imc_counters_stop(i32, i32) #1

declare dso_local i32 @get_hard_smp_processor_id(i32) #1

declare dso_local %struct.imc_pmu_ref* @get_nest_pmu_ref(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
