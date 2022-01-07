; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/kernel/extr_watchdog.c_wd_smp_clear_cpu_pending.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/kernel/extr_watchdog.c_wd_smp_clear_cpu_pending.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pt_regs = type { i32 }

@wd_smp_cpus_pending = common dso_local global i32 0, align 4
@wd_smp_cpus_stuck = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"CPU %d became unstuck TB:%lld\0A\00", align 1
@current = common dso_local global i32 0, align 4
@wd_smp_last_reset_tb = common dso_local global i32 0, align 4
@wd_cpus_enabled = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32)* @wd_smp_clear_cpu_pending to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wd_smp_clear_cpu_pending(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.pt_regs*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %8 = load i32, i32* %3, align 4
  %9 = call i32 @cpumask_test_cpu(i32 %8, i32* @wd_smp_cpus_pending)
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %36, label %11

11:                                               ; preds = %2
  %12 = load i32, i32* %3, align 4
  %13 = call i32 @cpumask_test_cpu(i32 %12, i32* @wd_smp_cpus_stuck)
  %14 = call i64 @unlikely(i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %35

16:                                               ; preds = %11
  %17 = call %struct.pt_regs* (...) @get_irq_regs()
  store %struct.pt_regs* %17, %struct.pt_regs** %5, align 8
  %18 = call i32 @wd_smp_lock(i64* %6)
  %19 = load i32, i32* %3, align 4
  %20 = load i32, i32* %4, align 4
  %21 = call i32 @pr_emerg(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %19, i32 %20)
  %22 = load i32, i32* @current, align 4
  %23 = call i32 @print_irqtrace_events(i32 %22)
  %24 = load %struct.pt_regs*, %struct.pt_regs** %5, align 8
  %25 = icmp ne %struct.pt_regs* %24, null
  br i1 %25, label %26, label %29

26:                                               ; preds = %16
  %27 = load %struct.pt_regs*, %struct.pt_regs** %5, align 8
  %28 = call i32 @show_regs(%struct.pt_regs* %27)
  br label %31

29:                                               ; preds = %16
  %30 = call i32 (...) @dump_stack()
  br label %31

31:                                               ; preds = %29, %26
  %32 = load i32, i32* %3, align 4
  %33 = call i32 @cpumask_clear_cpu(i32 %32, i32* @wd_smp_cpus_stuck)
  %34 = call i32 @wd_smp_unlock(i64* %6)
  br label %35

35:                                               ; preds = %31, %11
  br label %50

36:                                               ; preds = %2
  %37 = load i32, i32* %3, align 4
  %38 = call i32 @cpumask_clear_cpu(i32 %37, i32* @wd_smp_cpus_pending)
  %39 = call i64 @cpumask_empty(i32* @wd_smp_cpus_pending)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %50

41:                                               ; preds = %36
  %42 = call i32 @wd_smp_lock(i64* %7)
  %43 = call i64 @cpumask_empty(i32* @wd_smp_cpus_pending)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %41
  %46 = load i32, i32* %4, align 4
  store i32 %46, i32* @wd_smp_last_reset_tb, align 4
  %47 = call i32 @cpumask_andnot(i32* @wd_smp_cpus_pending, i32* @wd_cpus_enabled, i32* @wd_smp_cpus_stuck)
  br label %48

48:                                               ; preds = %45, %41
  %49 = call i32 @wd_smp_unlock(i64* %7)
  br label %50

50:                                               ; preds = %35, %48, %36
  ret void
}

declare dso_local i32 @cpumask_test_cpu(i32, i32*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local %struct.pt_regs* @get_irq_regs(...) #1

declare dso_local i32 @wd_smp_lock(i64*) #1

declare dso_local i32 @pr_emerg(i8*, i32, i32) #1

declare dso_local i32 @print_irqtrace_events(i32) #1

declare dso_local i32 @show_regs(%struct.pt_regs*) #1

declare dso_local i32 @dump_stack(...) #1

declare dso_local i32 @cpumask_clear_cpu(i32, i32*) #1

declare dso_local i32 @wd_smp_unlock(i64*) #1

declare dso_local i64 @cpumask_empty(i32*) #1

declare dso_local i32 @cpumask_andnot(i32*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
