; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/events/intel/extr_cstate.c_cstate_cpu_init.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/events/intel/extr_cstate.c_cstate_cpu_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@cstate_core_cpu_mask = common dso_local global i32 0, align 4
@has_cstate_core = common dso_local global i64 0, align 8
@nr_cpu_ids = common dso_local global i32 0, align 4
@cstate_pkg_cpu_mask = common dso_local global i32 0, align 4
@has_cstate_pkg = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @cstate_cpu_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cstate_cpu_init(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* %2, align 4
  %5 = call i32 @topology_sibling_cpumask(i32 %4)
  %6 = call i32 @cpumask_any_and(i32* @cstate_core_cpu_mask, i32 %5)
  store i32 %6, i32* %3, align 4
  %7 = load i64, i64* @has_cstate_core, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %16

9:                                                ; preds = %1
  %10 = load i32, i32* %3, align 4
  %11 = load i32, i32* @nr_cpu_ids, align 4
  %12 = icmp uge i32 %10, %11
  br i1 %12, label %13, label %16

13:                                               ; preds = %9
  %14 = load i32, i32* %2, align 4
  %15 = call i32 @cpumask_set_cpu(i32 %14, i32* @cstate_core_cpu_mask)
  br label %16

16:                                               ; preds = %13, %9, %1
  %17 = load i32, i32* %2, align 4
  %18 = call i32 @topology_die_cpumask(i32 %17)
  %19 = call i32 @cpumask_any_and(i32* @cstate_pkg_cpu_mask, i32 %18)
  store i32 %19, i32* %3, align 4
  %20 = load i64, i64* @has_cstate_pkg, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %29

22:                                               ; preds = %16
  %23 = load i32, i32* %3, align 4
  %24 = load i32, i32* @nr_cpu_ids, align 4
  %25 = icmp uge i32 %23, %24
  br i1 %25, label %26, label %29

26:                                               ; preds = %22
  %27 = load i32, i32* %2, align 4
  %28 = call i32 @cpumask_set_cpu(i32 %27, i32* @cstate_pkg_cpu_mask)
  br label %29

29:                                               ; preds = %26, %22, %16
  ret i32 0
}

declare dso_local i32 @cpumask_any_and(i32*, i32) #1

declare dso_local i32 @topology_sibling_cpumask(i32) #1

declare dso_local i32 @cpumask_set_cpu(i32, i32*) #1

declare dso_local i32 @topology_die_cpumask(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
