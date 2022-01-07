; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/events/intel/extr_rapl.c_rapl_cpu_online.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/events/intel/extr_rapl.c_rapl_cpu_online.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { %struct.rapl_pmu**, i32 }
%struct.rapl_pmu = type { i32, i32, i32*, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@rapl_pmus = common dso_local global %struct.TYPE_2__* null, align 8
@rapl_timer_ms = common dso_local global i32 0, align 4
@rapl_cpu_mask = common dso_local global i32 0, align 4
@nr_cpu_ids = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @rapl_cpu_online to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rapl_cpu_online(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.rapl_pmu*, align 8
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %6 = load i32, i32* %3, align 4
  %7 = call %struct.rapl_pmu* @cpu_to_rapl_pmu(i32 %6)
  store %struct.rapl_pmu* %7, %struct.rapl_pmu** %4, align 8
  %8 = load %struct.rapl_pmu*, %struct.rapl_pmu** %4, align 8
  %9 = icmp ne %struct.rapl_pmu* %8, null
  br i1 %9, label %44, label %10

10:                                               ; preds = %1
  %11 = load i32, i32* @GFP_KERNEL, align 4
  %12 = load i32, i32* %3, align 4
  %13 = call i32 @cpu_to_node(i32 %12)
  %14 = call %struct.rapl_pmu* @kzalloc_node(i32 24, i32 %11, i32 %13)
  store %struct.rapl_pmu* %14, %struct.rapl_pmu** %4, align 8
  %15 = load %struct.rapl_pmu*, %struct.rapl_pmu** %4, align 8
  %16 = icmp ne %struct.rapl_pmu* %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %10
  %18 = load i32, i32* @ENOMEM, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %2, align 4
  br label %58

20:                                               ; preds = %10
  %21 = load %struct.rapl_pmu*, %struct.rapl_pmu** %4, align 8
  %22 = getelementptr inbounds %struct.rapl_pmu, %struct.rapl_pmu* %21, i32 0, i32 4
  %23 = call i32 @raw_spin_lock_init(i32* %22)
  %24 = load %struct.rapl_pmu*, %struct.rapl_pmu** %4, align 8
  %25 = getelementptr inbounds %struct.rapl_pmu, %struct.rapl_pmu* %24, i32 0, i32 3
  %26 = call i32 @INIT_LIST_HEAD(i32* %25)
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** @rapl_pmus, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 1
  %29 = load %struct.rapl_pmu*, %struct.rapl_pmu** %4, align 8
  %30 = getelementptr inbounds %struct.rapl_pmu, %struct.rapl_pmu* %29, i32 0, i32 2
  store i32* %28, i32** %30, align 8
  %31 = load i32, i32* @rapl_timer_ms, align 4
  %32 = call i32 @ms_to_ktime(i32 %31)
  %33 = load %struct.rapl_pmu*, %struct.rapl_pmu** %4, align 8
  %34 = getelementptr inbounds %struct.rapl_pmu, %struct.rapl_pmu* %33, i32 0, i32 1
  store i32 %32, i32* %34, align 4
  %35 = load %struct.rapl_pmu*, %struct.rapl_pmu** %4, align 8
  %36 = call i32 @rapl_hrtimer_init(%struct.rapl_pmu* %35)
  %37 = load %struct.rapl_pmu*, %struct.rapl_pmu** %4, align 8
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** @rapl_pmus, align 8
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = load %struct.rapl_pmu**, %struct.rapl_pmu*** %39, align 8
  %41 = load i32, i32* %3, align 4
  %42 = call i64 @topology_logical_die_id(i32 %41)
  %43 = getelementptr inbounds %struct.rapl_pmu*, %struct.rapl_pmu** %40, i64 %42
  store %struct.rapl_pmu* %37, %struct.rapl_pmu** %43, align 8
  br label %44

44:                                               ; preds = %20, %1
  %45 = load i32, i32* %3, align 4
  %46 = call i32 @topology_die_cpumask(i32 %45)
  %47 = call i32 @cpumask_any_and(i32* @rapl_cpu_mask, i32 %46)
  store i32 %47, i32* %5, align 4
  %48 = load i32, i32* %5, align 4
  %49 = load i32, i32* @nr_cpu_ids, align 4
  %50 = icmp slt i32 %48, %49
  br i1 %50, label %51, label %52

51:                                               ; preds = %44
  store i32 0, i32* %2, align 4
  br label %58

52:                                               ; preds = %44
  %53 = load i32, i32* %3, align 4
  %54 = call i32 @cpumask_set_cpu(i32 %53, i32* @rapl_cpu_mask)
  %55 = load i32, i32* %3, align 4
  %56 = load %struct.rapl_pmu*, %struct.rapl_pmu** %4, align 8
  %57 = getelementptr inbounds %struct.rapl_pmu, %struct.rapl_pmu* %56, i32 0, i32 0
  store i32 %55, i32* %57, align 8
  store i32 0, i32* %2, align 4
  br label %58

58:                                               ; preds = %52, %51, %17
  %59 = load i32, i32* %2, align 4
  ret i32 %59
}

declare dso_local %struct.rapl_pmu* @cpu_to_rapl_pmu(i32) #1

declare dso_local %struct.rapl_pmu* @kzalloc_node(i32, i32, i32) #1

declare dso_local i32 @cpu_to_node(i32) #1

declare dso_local i32 @raw_spin_lock_init(i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @ms_to_ktime(i32) #1

declare dso_local i32 @rapl_hrtimer_init(%struct.rapl_pmu*) #1

declare dso_local i64 @topology_logical_die_id(i32) #1

declare dso_local i32 @cpumask_any_and(i32*, i32) #1

declare dso_local i32 @topology_die_cpumask(i32) #1

declare dso_local i32 @cpumask_set_cpu(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
