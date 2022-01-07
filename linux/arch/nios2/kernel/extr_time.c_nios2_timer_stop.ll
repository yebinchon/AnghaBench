; ModuleID = '/home/carl/AnghaBench/linux/arch/nios2/kernel/extr_time.c_nios2_timer_stop.c'
source_filename = "/home/carl/AnghaBench/linux/arch/nios2/kernel/extr_time.c_nios2_timer_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nios2_timer = type { i32 }

@ALTERA_TIMER_CONTROL_REG = common dso_local global i32 0, align 4
@ALTERA_TIMER_CONTROL_STOP_MSK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nios2_timer*)* @nios2_timer_stop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nios2_timer_stop(%struct.nios2_timer* %0) #0 {
  %2 = alloca %struct.nios2_timer*, align 8
  %3 = alloca i32, align 4
  store %struct.nios2_timer* %0, %struct.nios2_timer** %2, align 8
  %4 = load %struct.nios2_timer*, %struct.nios2_timer** %2, align 8
  %5 = load i32, i32* @ALTERA_TIMER_CONTROL_REG, align 4
  %6 = call i32 @timer_readw(%struct.nios2_timer* %4, i32 %5)
  store i32 %6, i32* %3, align 4
  %7 = load i32, i32* @ALTERA_TIMER_CONTROL_STOP_MSK, align 4
  %8 = load i32, i32* %3, align 4
  %9 = or i32 %8, %7
  store i32 %9, i32* %3, align 4
  %10 = load %struct.nios2_timer*, %struct.nios2_timer** %2, align 8
  %11 = load i32, i32* %3, align 4
  %12 = load i32, i32* @ALTERA_TIMER_CONTROL_REG, align 4
  %13 = call i32 @timer_writew(%struct.nios2_timer* %10, i32 %11, i32 %12)
  ret void
}

declare dso_local i32 @timer_readw(%struct.nios2_timer*, i32) #1

declare dso_local i32 @timer_writew(%struct.nios2_timer*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
