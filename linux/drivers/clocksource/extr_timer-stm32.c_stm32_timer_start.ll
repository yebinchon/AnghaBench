; ModuleID = '/home/carl/AnghaBench/linux/drivers/clocksource/extr_timer-stm32.c_stm32_timer_start.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clocksource/extr_timer-stm32.c_stm32_timer_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timer_of = type { i32 }

@TIM_CR1_UDIS = common dso_local global i32 0, align 4
@TIM_CR1_CEN = common dso_local global i32 0, align 4
@TIM_CR1 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.timer_of*)* @stm32_timer_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @stm32_timer_start(%struct.timer_of* %0) #0 {
  %2 = alloca %struct.timer_of*, align 8
  store %struct.timer_of* %0, %struct.timer_of** %2, align 8
  %3 = load i32, i32* @TIM_CR1_UDIS, align 4
  %4 = load i32, i32* @TIM_CR1_CEN, align 4
  %5 = or i32 %3, %4
  %6 = load %struct.timer_of*, %struct.timer_of** %2, align 8
  %7 = call i64 @timer_of_base(%struct.timer_of* %6)
  %8 = load i64, i64* @TIM_CR1, align 8
  %9 = add nsw i64 %7, %8
  %10 = call i32 @writel_relaxed(i32 %5, i64 %9)
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
