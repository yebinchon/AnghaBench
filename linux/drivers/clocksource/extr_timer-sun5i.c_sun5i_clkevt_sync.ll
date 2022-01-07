; ModuleID = '/home/carl/AnghaBench/linux/drivers/clocksource/extr_timer-sun5i.c_sun5i_clkevt_sync.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clocksource/extr_timer-sun5i.c_sun5i_clkevt_sync.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sun5i_timer_clkevt = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@TIMER_SYNC_TICKS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sun5i_timer_clkevt*)* @sun5i_clkevt_sync to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sun5i_clkevt_sync(%struct.sun5i_timer_clkevt* %0) #0 {
  %2 = alloca %struct.sun5i_timer_clkevt*, align 8
  %3 = alloca i64, align 8
  store %struct.sun5i_timer_clkevt* %0, %struct.sun5i_timer_clkevt** %2, align 8
  %4 = load %struct.sun5i_timer_clkevt*, %struct.sun5i_timer_clkevt** %2, align 8
  %5 = getelementptr inbounds %struct.sun5i_timer_clkevt, %struct.sun5i_timer_clkevt* %4, i32 0, i32 0
  %6 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = call i64 @TIMER_CNTVAL_LO_REG(i32 1)
  %9 = add nsw i64 %7, %8
  %10 = call i64 @readl(i64 %9)
  store i64 %10, i64* %3, align 8
  br label %11

11:                                               ; preds = %23, %1
  %12 = load i64, i64* %3, align 8
  %13 = load %struct.sun5i_timer_clkevt*, %struct.sun5i_timer_clkevt** %2, align 8
  %14 = getelementptr inbounds %struct.sun5i_timer_clkevt, %struct.sun5i_timer_clkevt* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = call i64 @TIMER_CNTVAL_LO_REG(i32 1)
  %18 = add nsw i64 %16, %17
  %19 = call i64 @readl(i64 %18)
  %20 = sub nsw i64 %12, %19
  %21 = load i64, i64* @TIMER_SYNC_TICKS, align 8
  %22 = icmp slt i64 %20, %21
  br i1 %22, label %23, label %25

23:                                               ; preds = %11
  %24 = call i32 (...) @cpu_relax()
  br label %11

25:                                               ; preds = %11
  ret void
}

declare dso_local i64 @readl(i64) #1

declare dso_local i64 @TIMER_CNTVAL_LO_REG(i32) #1

declare dso_local i32 @cpu_relax(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
