; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/ralink/extr_timer.c_rt_timer_enable.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/ralink/extr_timer.c_rt_timer_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rt_timer = type { i32, i32 }

@TIMER_REG_TMR0LOAD = common dso_local global i32 0, align 4
@TIMER_REG_TMR0CTL = common dso_local global i32 0, align 4
@TMR0CTL_ENABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rt_timer*)* @rt_timer_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rt_timer_enable(%struct.rt_timer* %0) #0 {
  %2 = alloca %struct.rt_timer*, align 8
  %3 = alloca i32, align 4
  store %struct.rt_timer* %0, %struct.rt_timer** %2, align 8
  %4 = load %struct.rt_timer*, %struct.rt_timer** %2, align 8
  %5 = load i32, i32* @TIMER_REG_TMR0LOAD, align 4
  %6 = load %struct.rt_timer*, %struct.rt_timer** %2, align 8
  %7 = getelementptr inbounds %struct.rt_timer, %struct.rt_timer* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = load %struct.rt_timer*, %struct.rt_timer** %2, align 8
  %10 = getelementptr inbounds %struct.rt_timer, %struct.rt_timer* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = sdiv i32 %8, %11
  %13 = call i32 @rt_timer_w32(%struct.rt_timer* %4, i32 %5, i32 %12)
  %14 = load %struct.rt_timer*, %struct.rt_timer** %2, align 8
  %15 = load i32, i32* @TIMER_REG_TMR0CTL, align 4
  %16 = call i32 @rt_timer_r32(%struct.rt_timer* %14, i32 %15)
  store i32 %16, i32* %3, align 4
  %17 = load i32, i32* @TMR0CTL_ENABLE, align 4
  %18 = load i32, i32* %3, align 4
  %19 = or i32 %18, %17
  store i32 %19, i32* %3, align 4
  %20 = load %struct.rt_timer*, %struct.rt_timer** %2, align 8
  %21 = load i32, i32* @TIMER_REG_TMR0CTL, align 4
  %22 = load i32, i32* %3, align 4
  %23 = call i32 @rt_timer_w32(%struct.rt_timer* %20, i32 %21, i32 %22)
  ret i32 0
}

declare dso_local i32 @rt_timer_w32(%struct.rt_timer*, i32, i32) #1

declare dso_local i32 @rt_timer_r32(%struct.rt_timer*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
