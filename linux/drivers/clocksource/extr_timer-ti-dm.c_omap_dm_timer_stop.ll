; ModuleID = '/home/carl/AnghaBench/linux/drivers/clocksource/extr_timer-ti-dm.c_omap_dm_timer_stop.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clocksource/extr_timer-ti-dm.c_omap_dm_timer_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.omap_dm_timer = type { i32, %struct.TYPE_2__, i32, i32 }
%struct.TYPE_2__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@OMAP_TIMER_NEEDS_RESET = common dso_local global i32 0, align 4
@OMAP_TIMER_CTRL_REG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.omap_dm_timer*)* @omap_dm_timer_stop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @omap_dm_timer_stop(%struct.omap_dm_timer* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.omap_dm_timer*, align 8
  %4 = alloca i64, align 8
  store %struct.omap_dm_timer* %0, %struct.omap_dm_timer** %3, align 8
  store i64 0, i64* %4, align 8
  %5 = load %struct.omap_dm_timer*, %struct.omap_dm_timer** %3, align 8
  %6 = icmp ne %struct.omap_dm_timer* %5, null
  %7 = xor i1 %6, true
  %8 = zext i1 %7 to i32
  %9 = call i64 @unlikely(i32 %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %14

11:                                               ; preds = %1
  %12 = load i32, i32* @EINVAL, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %2, align 4
  br label %41

14:                                               ; preds = %1
  %15 = load %struct.omap_dm_timer*, %struct.omap_dm_timer** %3, align 8
  %16 = getelementptr inbounds %struct.omap_dm_timer, %struct.omap_dm_timer* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @OMAP_TIMER_NEEDS_RESET, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %26, label %21

21:                                               ; preds = %14
  %22 = load %struct.omap_dm_timer*, %struct.omap_dm_timer** %3, align 8
  %23 = getelementptr inbounds %struct.omap_dm_timer, %struct.omap_dm_timer* %22, i32 0, i32 3
  %24 = load i32, i32* %23, align 4
  %25 = call i64 @clk_get_rate(i32 %24)
  store i64 %25, i64* %4, align 8
  br label %26

26:                                               ; preds = %21, %14
  %27 = load %struct.omap_dm_timer*, %struct.omap_dm_timer** %3, align 8
  %28 = load %struct.omap_dm_timer*, %struct.omap_dm_timer** %3, align 8
  %29 = getelementptr inbounds %struct.omap_dm_timer, %struct.omap_dm_timer* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 4
  %31 = load i64, i64* %4, align 8
  %32 = call i32 @__omap_dm_timer_stop(%struct.omap_dm_timer* %27, i32 %30, i64 %31)
  %33 = load %struct.omap_dm_timer*, %struct.omap_dm_timer** %3, align 8
  %34 = load i32, i32* @OMAP_TIMER_CTRL_REG, align 4
  %35 = call i32 @omap_dm_timer_read_reg(%struct.omap_dm_timer* %33, i32 %34)
  %36 = load %struct.omap_dm_timer*, %struct.omap_dm_timer** %3, align 8
  %37 = getelementptr inbounds %struct.omap_dm_timer, %struct.omap_dm_timer* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  store i32 %35, i32* %38, align 4
  %39 = load %struct.omap_dm_timer*, %struct.omap_dm_timer** %3, align 8
  %40 = call i32 @omap_dm_timer_disable(%struct.omap_dm_timer* %39)
  store i32 0, i32* %2, align 4
  br label %41

41:                                               ; preds = %26, %11
  %42 = load i32, i32* %2, align 4
  ret i32 %42
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @clk_get_rate(i32) #1

declare dso_local i32 @__omap_dm_timer_stop(%struct.omap_dm_timer*, i32, i64) #1

declare dso_local i32 @omap_dm_timer_read_reg(%struct.omap_dm_timer*, i32) #1

declare dso_local i32 @omap_dm_timer_disable(%struct.omap_dm_timer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
