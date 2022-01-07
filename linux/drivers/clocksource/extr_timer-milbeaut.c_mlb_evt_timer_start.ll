; ModuleID = '/home/carl/AnghaBench/linux/drivers/clocksource/extr_timer-milbeaut.c_mlb_evt_timer_start.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clocksource/extr_timer-milbeaut.c_mlb_evt_timer_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timer_of = type { i32 }

@MLB_TMR_TMCSR_CSL_DIV2 = common dso_local global i32 0, align 4
@MLB_TMR_TMCSR_CNTE = common dso_local global i32 0, align 4
@MLB_TMR_TMCSR_TRG = common dso_local global i32 0, align 4
@MLB_TMR_TMCSR_INTE = common dso_local global i32 0, align 4
@MLB_TMR_TMCSR_RELD = common dso_local global i32 0, align 4
@MLB_TMR_EVT_TMCSR_OFS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.timer_of*, i32)* @mlb_evt_timer_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mlb_evt_timer_start(%struct.timer_of* %0, i32 %1) #0 {
  %3 = alloca %struct.timer_of*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.timer_of* %0, %struct.timer_of** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* @MLB_TMR_TMCSR_CSL_DIV2, align 4
  store i32 %6, i32* %5, align 4
  %7 = load i32, i32* @MLB_TMR_TMCSR_CNTE, align 4
  %8 = load i32, i32* @MLB_TMR_TMCSR_TRG, align 4
  %9 = or i32 %7, %8
  %10 = load i32, i32* @MLB_TMR_TMCSR_INTE, align 4
  %11 = or i32 %9, %10
  %12 = load i32, i32* %5, align 4
  %13 = or i32 %12, %11
  store i32 %13, i32* %5, align 4
  %14 = load i32, i32* %4, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %20

16:                                               ; preds = %2
  %17 = load i32, i32* @MLB_TMR_TMCSR_RELD, align 4
  %18 = load i32, i32* %5, align 4
  %19 = or i32 %18, %17
  store i32 %19, i32* %5, align 4
  br label %20

20:                                               ; preds = %16, %2
  %21 = load i32, i32* %5, align 4
  %22 = load %struct.timer_of*, %struct.timer_of** %3, align 8
  %23 = call i64 @timer_of_base(%struct.timer_of* %22)
  %24 = load i64, i64* @MLB_TMR_EVT_TMCSR_OFS, align 8
  %25 = add nsw i64 %23, %24
  %26 = call i32 @writel_relaxed(i32 %21, i64 %25)
  ret void
}

declare dso_local i32 @writel_relaxed(i32, i64) #1

declare dso_local i64 @timer_of_base(%struct.timer_of*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
