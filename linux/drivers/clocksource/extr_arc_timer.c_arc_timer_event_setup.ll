; ModuleID = '/home/carl/AnghaBench/linux/drivers/clocksource/extr_arc_timer.c_arc_timer_event_setup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clocksource/extr_arc_timer.c_arc_timer_event_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ARC_REG_TIMER0_LIMIT = common dso_local global i32 0, align 4
@ARC_REG_TIMER0_CNT = common dso_local global i32 0, align 4
@ARC_REG_TIMER0_CTRL = common dso_local global i32 0, align 4
@TIMER_CTRL_IE = common dso_local global i32 0, align 4
@TIMER_CTRL_NH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @arc_timer_event_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @arc_timer_event_setup(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* @ARC_REG_TIMER0_LIMIT, align 4
  %4 = load i32, i32* %2, align 4
  %5 = call i32 @write_aux_reg(i32 %3, i32 %4)
  %6 = load i32, i32* @ARC_REG_TIMER0_CNT, align 4
  %7 = call i32 @write_aux_reg(i32 %6, i32 0)
  %8 = load i32, i32* @ARC_REG_TIMER0_CTRL, align 4
  %9 = load i32, i32* @TIMER_CTRL_IE, align 4
  %10 = load i32, i32* @TIMER_CTRL_NH, align 4
  %11 = or i32 %9, %10
  %12 = call i32 @write_aux_reg(i32 %8, i32 %11)
  ret void
}

declare dso_local i32 @write_aux_reg(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
