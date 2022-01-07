; ModuleID = '/home/carl/AnghaBench/linux/drivers/clocksource/extr_timer-mp-csky.c_csky_timer_interrupt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clocksource/extr_timer-mp-csky.c_csky_timer_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timer_of = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 (%struct.TYPE_2__*)* }

@csky_to = common dso_local global i32 0, align 4
@PTIM_TSR = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @csky_timer_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @csky_timer_interrupt(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.timer_of*, align 8
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %6 = call %struct.timer_of* @this_cpu_ptr(i32* @csky_to)
  store %struct.timer_of* %6, %struct.timer_of** %5, align 8
  %7 = load i32, i32* @PTIM_TSR, align 4
  %8 = call i32 @mtcr(i32 %7, i32 0)
  %9 = load %struct.timer_of*, %struct.timer_of** %5, align 8
  %10 = getelementptr inbounds %struct.timer_of, %struct.timer_of* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i32 (%struct.TYPE_2__*)*, i32 (%struct.TYPE_2__*)** %11, align 8
  %13 = load %struct.timer_of*, %struct.timer_of** %5, align 8
  %14 = getelementptr inbounds %struct.timer_of, %struct.timer_of* %13, i32 0, i32 0
  %15 = call i32 %12(%struct.TYPE_2__* %14)
  %16 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %16
}

declare dso_local %struct.timer_of* @this_cpu_ptr(i32*) #1

declare dso_local i32 @mtcr(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
