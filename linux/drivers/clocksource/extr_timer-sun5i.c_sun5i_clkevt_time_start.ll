; ModuleID = '/home/carl/AnghaBench/linux/drivers/clocksource/extr_timer-sun5i.c_sun5i_clkevt_time_start.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clocksource/extr_timer-sun5i.c_sun5i_clkevt_time_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sun5i_timer_clkevt = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@TIMER_CTL_ONESHOT = common dso_local global i32 0, align 4
@TIMER_CTL_ENABLE = common dso_local global i32 0, align 4
@TIMER_CTL_RELOAD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sun5i_timer_clkevt*, i32, i32)* @sun5i_clkevt_time_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sun5i_clkevt_time_start(%struct.sun5i_timer_clkevt* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.sun5i_timer_clkevt*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.sun5i_timer_clkevt* %0, %struct.sun5i_timer_clkevt** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load %struct.sun5i_timer_clkevt*, %struct.sun5i_timer_clkevt** %4, align 8
  %9 = getelementptr inbounds %struct.sun5i_timer_clkevt, %struct.sun5i_timer_clkevt* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i32, i32* %5, align 4
  %13 = call i64 @TIMER_CTL_REG(i32 %12)
  %14 = add nsw i64 %11, %13
  %15 = call i32 @readl(i64 %14)
  store i32 %15, i32* %7, align 4
  %16 = load i32, i32* %6, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %23

18:                                               ; preds = %3
  %19 = load i32, i32* @TIMER_CTL_ONESHOT, align 4
  %20 = xor i32 %19, -1
  %21 = load i32, i32* %7, align 4
  %22 = and i32 %21, %20
  store i32 %22, i32* %7, align 4
  br label %27

23:                                               ; preds = %3
  %24 = load i32, i32* @TIMER_CTL_ONESHOT, align 4
  %25 = load i32, i32* %7, align 4
  %26 = or i32 %25, %24
  store i32 %26, i32* %7, align 4
  br label %27

27:                                               ; preds = %23, %18
  %28 = load i32, i32* %7, align 4
  %29 = load i32, i32* @TIMER_CTL_ENABLE, align 4
  %30 = or i32 %28, %29
  %31 = load i32, i32* @TIMER_CTL_RELOAD, align 4
  %32 = or i32 %30, %31
  %33 = load %struct.sun5i_timer_clkevt*, %struct.sun5i_timer_clkevt** %4, align 8
  %34 = getelementptr inbounds %struct.sun5i_timer_clkevt, %struct.sun5i_timer_clkevt* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i32, i32* %5, align 4
  %38 = call i64 @TIMER_CTL_REG(i32 %37)
  %39 = add nsw i64 %36, %38
  %40 = call i32 @writel(i32 %32, i64 %39)
  ret void
}

declare dso_local i32 @readl(i64) #1

declare dso_local i64 @TIMER_CTL_REG(i32) #1

declare dso_local i32 @writel(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
