; ModuleID = '/home/carl/AnghaBench/linux/drivers/clocksource/extr_mips-gic-timer.c_gic_clockevent_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clocksource/extr_mips-gic-timer.c_gic_clockevent_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@gic_frequency = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@gic_timer_irq = common dso_local global i32 0, align 4
@gic_compare_irqaction = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"IRQ %d setup failed (%d)\0A\00", align 1
@CPUHP_AP_MIPS_GIC_TIMER_STARTING = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"clockevents/mips/gic/timer:starting\00", align 1
@gic_starting_cpu = common dso_local global i32 0, align 4
@gic_dying_cpu = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @gic_clockevent_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gic_clockevent_init() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = load i32, i32* @gic_frequency, align 4
  %4 = icmp ne i32 %3, 0
  br i1 %4, label %8, label %5

5:                                                ; preds = %0
  %6 = load i32, i32* @ENXIO, align 4
  %7 = sub nsw i32 0, %6
  store i32 %7, i32* %1, align 4
  br label %23

8:                                                ; preds = %0
  %9 = load i32, i32* @gic_timer_irq, align 4
  %10 = call i32 @setup_percpu_irq(i32 %9, i32* @gic_compare_irqaction)
  store i32 %10, i32* %2, align 4
  %11 = load i32, i32* %2, align 4
  %12 = icmp slt i32 %11, 0
  br i1 %12, label %13, label %18

13:                                               ; preds = %8
  %14 = load i32, i32* @gic_timer_irq, align 4
  %15 = load i32, i32* %2, align 4
  %16 = call i32 @pr_err(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %14, i32 %15)
  %17 = load i32, i32* %2, align 4
  store i32 %17, i32* %1, align 4
  br label %23

18:                                               ; preds = %8
  %19 = load i32, i32* @CPUHP_AP_MIPS_GIC_TIMER_STARTING, align 4
  %20 = load i32, i32* @gic_starting_cpu, align 4
  %21 = load i32, i32* @gic_dying_cpu, align 4
  %22 = call i32 @cpuhp_setup_state(i32 %19, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i32 %20, i32 %21)
  store i32 0, i32* %1, align 4
  br label %23

23:                                               ; preds = %18, %13, %5
  %24 = load i32, i32* %1, align 4
  ret i32 %24
}

declare dso_local i32 @setup_percpu_irq(i32, i32*) #1

declare dso_local i32 @pr_err(i8*, i32, i32) #1

declare dso_local i32 @cpuhp_setup_state(i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
