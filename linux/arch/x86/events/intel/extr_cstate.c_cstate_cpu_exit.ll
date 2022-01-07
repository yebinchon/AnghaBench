; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/events/intel/extr_cstate.c_cstate_cpu_exit.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/events/intel/extr_cstate.c_cstate_cpu_exit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@has_cstate_core = common dso_local global i64 0, align 8
@cstate_core_cpu_mask = common dso_local global i32 0, align 4
@nr_cpu_ids = common dso_local global i32 0, align 4
@cstate_core_pmu = common dso_local global i32 0, align 4
@has_cstate_pkg = common dso_local global i64 0, align 8
@cstate_pkg_cpu_mask = common dso_local global i32 0, align 4
@cstate_pkg_pmu = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @cstate_cpu_exit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cstate_cpu_exit(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %4 = load i64, i64* @has_cstate_core, align 8
  %5 = icmp ne i64 %4, 0
  br i1 %5, label %6, label %25

6:                                                ; preds = %1
  %7 = load i32, i32* %2, align 4
  %8 = call i64 @cpumask_test_and_clear_cpu(i32 %7, i32* @cstate_core_cpu_mask)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %25

10:                                               ; preds = %6
  %11 = load i32, i32* %2, align 4
  %12 = call i32 @topology_sibling_cpumask(i32 %11)
  %13 = load i32, i32* %2, align 4
  %14 = call i32 @cpumask_any_but(i32 %12, i32 %13)
  store i32 %14, i32* %3, align 4
  %15 = load i32, i32* %3, align 4
  %16 = load i32, i32* @nr_cpu_ids, align 4
  %17 = icmp ult i32 %15, %16
  br i1 %17, label %18, label %24

18:                                               ; preds = %10
  %19 = load i32, i32* %3, align 4
  %20 = call i32 @cpumask_set_cpu(i32 %19, i32* @cstate_core_cpu_mask)
  %21 = load i32, i32* %2, align 4
  %22 = load i32, i32* %3, align 4
  %23 = call i32 @perf_pmu_migrate_context(i32* @cstate_core_pmu, i32 %21, i32 %22)
  br label %24

24:                                               ; preds = %18, %10
  br label %25

25:                                               ; preds = %24, %6, %1
  %26 = load i64, i64* @has_cstate_pkg, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %47

28:                                               ; preds = %25
  %29 = load i32, i32* %2, align 4
  %30 = call i64 @cpumask_test_and_clear_cpu(i32 %29, i32* @cstate_pkg_cpu_mask)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %47

32:                                               ; preds = %28
  %33 = load i32, i32* %2, align 4
  %34 = call i32 @topology_die_cpumask(i32 %33)
  %35 = load i32, i32* %2, align 4
  %36 = call i32 @cpumask_any_but(i32 %34, i32 %35)
  store i32 %36, i32* %3, align 4
  %37 = load i32, i32* %3, align 4
  %38 = load i32, i32* @nr_cpu_ids, align 4
  %39 = icmp ult i32 %37, %38
  br i1 %39, label %40, label %46

40:                                               ; preds = %32
  %41 = load i32, i32* %3, align 4
  %42 = call i32 @cpumask_set_cpu(i32 %41, i32* @cstate_pkg_cpu_mask)
  %43 = load i32, i32* %2, align 4
  %44 = load i32, i32* %3, align 4
  %45 = call i32 @perf_pmu_migrate_context(i32* @cstate_pkg_pmu, i32 %43, i32 %44)
  br label %46

46:                                               ; preds = %40, %32
  br label %47

47:                                               ; preds = %46, %28, %25
  ret i32 0
}

declare dso_local i64 @cpumask_test_and_clear_cpu(i32, i32*) #1

declare dso_local i32 @cpumask_any_but(i32, i32) #1

declare dso_local i32 @topology_sibling_cpumask(i32) #1

declare dso_local i32 @cpumask_set_cpu(i32, i32*) #1

declare dso_local i32 @perf_pmu_migrate_context(i32*, i32, i32) #1

declare dso_local i32 @topology_die_cpumask(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
