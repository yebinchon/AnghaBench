; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/kernel/extr_watchdog.c_soft_nmi_interrupt.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/kernel/extr_watchdog.c_soft_nmi_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.pt_regs = type { i64 }

@wd_cpus_enabled = common dso_local global i32 0, align 4
@irq_stat = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@wd_timer_tb = common dso_local global i32 0, align 4
@wd_panic_timeout_tb = common dso_local global i32 0, align 4
@wd_smp_cpus_stuck = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"CPU %d self-detected hard LOCKUP @ %pS\0A\00", align 1
@.str.1 = private unnamed_addr constant [53 x i8] c"CPU %d TB:%lld, last heartbeat TB:%lld (%lldms ago)\0A\00", align 1
@current = common dso_local global i32 0, align 4
@sysctl_hardlockup_all_cpu_backtrace = common dso_local global i64 0, align 8
@hardlockup_panic = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [12 x i8] c"Hard LOCKUP\00", align 1
@SPRN_DEC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @soft_nmi_interrupt(%struct.pt_regs* %0) #0 {
  %2 = alloca %struct.pt_regs*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.pt_regs* %0, %struct.pt_regs** %2, align 8
  %6 = call i32 (...) @raw_smp_processor_id()
  store i32 %6, i32* %4, align 4
  %7 = load i32, i32* %4, align 4
  %8 = call i64 @cpumask_test_cpu(i32 %7, i32* @wd_cpus_enabled)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %1
  br label %81

11:                                               ; preds = %1
  %12 = call i32 (...) @nmi_enter()
  %13 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @irq_stat, i32 0, i32 0), align 4
  %14 = call i32 @__this_cpu_inc(i32 %13)
  %15 = call i32 (...) @get_tb()
  store i32 %15, i32* %5, align 4
  %16 = load i32, i32* %5, align 4
  %17 = load i32, i32* @wd_timer_tb, align 4
  %18 = load i32, i32* %4, align 4
  %19 = call i32 @per_cpu(i32 %17, i32 %18)
  %20 = sub nsw i32 %16, %19
  %21 = load i32, i32* @wd_panic_timeout_tb, align 4
  %22 = icmp sge i32 %20, %21
  br i1 %22, label %23, label %71

23:                                               ; preds = %11
  %24 = call i32 @wd_smp_lock(i64* %3)
  %25 = load i32, i32* %4, align 4
  %26 = call i64 @cpumask_test_cpu(i32 %25, i32* @wd_smp_cpus_stuck)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %23
  %29 = call i32 @wd_smp_unlock(i64* %3)
  br label %79

30:                                               ; preds = %23
  %31 = load i32, i32* %4, align 4
  %32 = load i32, i32* %5, align 4
  %33 = call i32 @set_cpu_stuck(i32 %31, i32 %32)
  %34 = load i32, i32* %4, align 4
  %35 = load %struct.pt_regs*, %struct.pt_regs** %2, align 8
  %36 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = inttoptr i64 %37 to i8*
  %39 = ptrtoint i8* %38 to i32
  %40 = call i32 (i8*, i32, i32, ...) @pr_emerg(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %34, i32 %39)
  %41 = load i32, i32* %4, align 4
  %42 = load i32, i32* %5, align 4
  %43 = load i32, i32* @wd_timer_tb, align 4
  %44 = load i32, i32* %4, align 4
  %45 = call i32 @per_cpu(i32 %43, i32 %44)
  %46 = load i32, i32* %5, align 4
  %47 = load i32, i32* @wd_timer_tb, align 4
  %48 = load i32, i32* %4, align 4
  %49 = call i32 @per_cpu(i32 %47, i32 %48)
  %50 = sub nsw i32 %46, %49
  %51 = call i32 @tb_to_ns(i32 %50)
  %52 = sdiv i32 %51, 1000000
  %53 = call i32 (i8*, i32, i32, ...) @pr_emerg(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.1, i64 0, i64 0), i32 %41, i32 %42, i32 %45, i32 %52)
  %54 = call i32 (...) @print_modules()
  %55 = load i32, i32* @current, align 4
  %56 = call i32 @print_irqtrace_events(i32 %55)
  %57 = load %struct.pt_regs*, %struct.pt_regs** %2, align 8
  %58 = call i32 @show_regs(%struct.pt_regs* %57)
  %59 = call i32 @wd_smp_unlock(i64* %3)
  %60 = load i64, i64* @sysctl_hardlockup_all_cpu_backtrace, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %64

62:                                               ; preds = %30
  %63 = call i32 (...) @trigger_allbutself_cpu_backtrace()
  br label %64

64:                                               ; preds = %62, %30
  %65 = load i64, i64* @hardlockup_panic, align 8
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %70

67:                                               ; preds = %64
  %68 = load %struct.pt_regs*, %struct.pt_regs** %2, align 8
  %69 = call i32 @nmi_panic(%struct.pt_regs* %68, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0))
  br label %70

70:                                               ; preds = %67, %64
  br label %71

71:                                               ; preds = %70, %11
  %72 = load i32, i32* @wd_panic_timeout_tb, align 4
  %73 = icmp slt i32 %72, 2147483647
  br i1 %73, label %74, label %78

74:                                               ; preds = %71
  %75 = load i32, i32* @SPRN_DEC, align 4
  %76 = load i32, i32* @wd_panic_timeout_tb, align 4
  %77 = call i32 @mtspr(i32 %75, i32 %76)
  br label %78

78:                                               ; preds = %74, %71
  br label %79

79:                                               ; preds = %78, %28
  %80 = call i32 (...) @nmi_exit()
  br label %81

81:                                               ; preds = %79, %10
  ret void
}

declare dso_local i32 @raw_smp_processor_id(...) #1

declare dso_local i64 @cpumask_test_cpu(i32, i32*) #1

declare dso_local i32 @nmi_enter(...) #1

declare dso_local i32 @__this_cpu_inc(i32) #1

declare dso_local i32 @get_tb(...) #1

declare dso_local i32 @per_cpu(i32, i32) #1

declare dso_local i32 @wd_smp_lock(i64*) #1

declare dso_local i32 @wd_smp_unlock(i64*) #1

declare dso_local i32 @set_cpu_stuck(i32, i32) #1

declare dso_local i32 @pr_emerg(i8*, i32, i32, ...) #1

declare dso_local i32 @tb_to_ns(i32) #1

declare dso_local i32 @print_modules(...) #1

declare dso_local i32 @print_irqtrace_events(i32) #1

declare dso_local i32 @show_regs(%struct.pt_regs*) #1

declare dso_local i32 @trigger_allbutself_cpu_backtrace(...) #1

declare dso_local i32 @nmi_panic(%struct.pt_regs*, i8*) #1

declare dso_local i32 @mtspr(i32, i32) #1

declare dso_local i32 @nmi_exit(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
