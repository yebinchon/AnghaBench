; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/kernel/extr_watchdog.c_set_cpumask_stuck.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/kernel/extr_watchdog.c_set_cpumask_stuck.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpumask = type { i32 }

@wd_smp_cpus_stuck = common dso_local global %struct.cpumask zeroinitializer, align 4
@wd_smp_cpus_pending = common dso_local global i32 0, align 4
@wd_smp_last_reset_tb = common dso_local global i32 0, align 4
@wd_cpus_enabled = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cpumask*, i32)* @set_cpumask_stuck to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_cpumask_stuck(%struct.cpumask* %0, i32 %1) #0 {
  %3 = alloca %struct.cpumask*, align 8
  %4 = alloca i32, align 4
  store %struct.cpumask* %0, %struct.cpumask** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.cpumask*, %struct.cpumask** %3, align 8
  %6 = call i32 @cpumask_or(%struct.cpumask* @wd_smp_cpus_stuck, %struct.cpumask* @wd_smp_cpus_stuck, %struct.cpumask* %5)
  %7 = load %struct.cpumask*, %struct.cpumask** %3, align 8
  %8 = call i32 @cpumask_andnot(i32* @wd_smp_cpus_pending, i32* @wd_smp_cpus_pending, %struct.cpumask* %7)
  %9 = call i64 @cpumask_empty(i32* @wd_smp_cpus_pending)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %14

11:                                               ; preds = %2
  %12 = load i32, i32* %4, align 4
  store i32 %12, i32* @wd_smp_last_reset_tb, align 4
  %13 = call i32 @cpumask_andnot(i32* @wd_smp_cpus_pending, i32* @wd_cpus_enabled, %struct.cpumask* @wd_smp_cpus_stuck)
  br label %14

14:                                               ; preds = %11, %2
  ret void
}

declare dso_local i32 @cpumask_or(%struct.cpumask*, %struct.cpumask*, %struct.cpumask*) #1

declare dso_local i32 @cpumask_andnot(i32*, i32*, %struct.cpumask*) #1

declare dso_local i64 @cpumask_empty(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
