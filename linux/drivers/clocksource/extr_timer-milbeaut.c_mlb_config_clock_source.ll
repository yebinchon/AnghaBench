; ModuleID = '/home/carl/AnghaBench/linux/drivers/clocksource/extr_timer-milbeaut.c_mlb_config_clock_source.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clocksource/extr_timer-milbeaut.c_mlb_config_clock_source.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timer_of = type { i32 }

@MLB_TMR_TMCSR_CSL_DIV2 = common dso_local global i32 0, align 4
@MLB_TMR_SRC_TMCSR_OFS = common dso_local global i64 0, align 8
@MLB_TMR_SRC_TMRLR1_OFS = common dso_local global i64 0, align 8
@MLB_TMR_SRC_TMRLR2_OFS = common dso_local global i64 0, align 8
@MLB_TMR_TMCSR_RELD = common dso_local global i32 0, align 4
@MLB_TMR_TMCSR_CNTE = common dso_local global i32 0, align 4
@MLB_TMR_TMCSR_TRG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.timer_of*)* @mlb_config_clock_source to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlb_config_clock_source(%struct.timer_of* %0) #0 {
  %2 = alloca %struct.timer_of*, align 8
  %3 = alloca i32, align 4
  store %struct.timer_of* %0, %struct.timer_of** %2, align 8
  %4 = load i32, i32* @MLB_TMR_TMCSR_CSL_DIV2, align 4
  store i32 %4, i32* %3, align 4
  %5 = load i32, i32* %3, align 4
  %6 = load %struct.timer_of*, %struct.timer_of** %2, align 8
  %7 = call i64 @timer_of_base(%struct.timer_of* %6)
  %8 = load i64, i64* @MLB_TMR_SRC_TMCSR_OFS, align 8
  %9 = add nsw i64 %7, %8
  %10 = call i32 @writel_relaxed(i32 %5, i64 %9)
  %11 = load %struct.timer_of*, %struct.timer_of** %2, align 8
  %12 = call i64 @timer_of_base(%struct.timer_of* %11)
  %13 = load i64, i64* @MLB_TMR_SRC_TMRLR1_OFS, align 8
  %14 = add nsw i64 %12, %13
  %15 = call i32 @writel_relaxed(i32 -1, i64 %14)
  %16 = load %struct.timer_of*, %struct.timer_of** %2, align 8
  %17 = call i64 @timer_of_base(%struct.timer_of* %16)
  %18 = load i64, i64* @MLB_TMR_SRC_TMRLR2_OFS, align 8
  %19 = add nsw i64 %17, %18
  %20 = call i32 @writel_relaxed(i32 -1, i64 %19)
  %21 = load i32, i32* @MLB_TMR_TMCSR_RELD, align 4
  %22 = load i32, i32* @MLB_TMR_TMCSR_CNTE, align 4
  %23 = or i32 %21, %22
  %24 = load i32, i32* @MLB_TMR_TMCSR_TRG, align 4
  %25 = or i32 %23, %24
  %26 = load i32, i32* %3, align 4
  %27 = or i32 %26, %25
  store i32 %27, i32* %3, align 4
  %28 = load i32, i32* %3, align 4
  %29 = load %struct.timer_of*, %struct.timer_of** %2, align 8
  %30 = call i64 @timer_of_base(%struct.timer_of* %29)
  %31 = load i64, i64* @MLB_TMR_SRC_TMCSR_OFS, align 8
  %32 = add nsw i64 %30, %31
  %33 = call i32 @writel_relaxed(i32 %28, i64 %32)
  ret i32 0
}

declare dso_local i32 @writel_relaxed(i32, i64) #1

declare dso_local i64 @timer_of_base(%struct.timer_of*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
