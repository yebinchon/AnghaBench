; ModuleID = '/home/carl/AnghaBench/linux/drivers/clocksource/extr_timer-ti-dm.c_omap_dm_timer_set_prescaler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clocksource/extr_timer-ti-dm.c_omap_dm_timer_set_prescaler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.omap_dm_timer = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@OMAP_TIMER_CTRL_REG = common dso_local global i32 0, align 4
@OMAP_TIMER_CTRL_PRE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.omap_dm_timer*, i32)* @omap_dm_timer_set_prescaler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @omap_dm_timer_set_prescaler(%struct.omap_dm_timer* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.omap_dm_timer*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.omap_dm_timer* %0, %struct.omap_dm_timer** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.omap_dm_timer*, %struct.omap_dm_timer** %4, align 8
  %8 = icmp ne %struct.omap_dm_timer* %7, null
  %9 = xor i1 %8, true
  %10 = zext i1 %9 to i32
  %11 = call i64 @unlikely(i32 %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %19, label %13

13:                                               ; preds = %2
  %14 = load i32, i32* %5, align 4
  %15 = icmp slt i32 %14, -1
  br i1 %15, label %19, label %16

16:                                               ; preds = %13
  %17 = load i32, i32* %5, align 4
  %18 = icmp sgt i32 %17, 7
  br i1 %18, label %19, label %22

19:                                               ; preds = %16, %13, %2
  %20 = load i32, i32* @EINVAL, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %3, align 4
  br label %54

22:                                               ; preds = %16
  %23 = load %struct.omap_dm_timer*, %struct.omap_dm_timer** %4, align 8
  %24 = call i32 @omap_dm_timer_enable(%struct.omap_dm_timer* %23)
  %25 = load %struct.omap_dm_timer*, %struct.omap_dm_timer** %4, align 8
  %26 = load i32, i32* @OMAP_TIMER_CTRL_REG, align 4
  %27 = call i32 @omap_dm_timer_read_reg(%struct.omap_dm_timer* %25, i32 %26)
  store i32 %27, i32* %6, align 4
  %28 = load i32, i32* @OMAP_TIMER_CTRL_PRE, align 4
  %29 = or i32 %28, 28
  %30 = xor i32 %29, -1
  %31 = load i32, i32* %6, align 4
  %32 = and i32 %31, %30
  store i32 %32, i32* %6, align 4
  %33 = load i32, i32* %5, align 4
  %34 = icmp sge i32 %33, 0
  br i1 %34, label %35, label %43

35:                                               ; preds = %22
  %36 = load i32, i32* @OMAP_TIMER_CTRL_PRE, align 4
  %37 = load i32, i32* %6, align 4
  %38 = or i32 %37, %36
  store i32 %38, i32* %6, align 4
  %39 = load i32, i32* %5, align 4
  %40 = shl i32 %39, 2
  %41 = load i32, i32* %6, align 4
  %42 = or i32 %41, %40
  store i32 %42, i32* %6, align 4
  br label %43

43:                                               ; preds = %35, %22
  %44 = load %struct.omap_dm_timer*, %struct.omap_dm_timer** %4, align 8
  %45 = load i32, i32* @OMAP_TIMER_CTRL_REG, align 4
  %46 = load i32, i32* %6, align 4
  %47 = call i32 @omap_dm_timer_write_reg(%struct.omap_dm_timer* %44, i32 %45, i32 %46)
  %48 = load i32, i32* %6, align 4
  %49 = load %struct.omap_dm_timer*, %struct.omap_dm_timer** %4, align 8
  %50 = getelementptr inbounds %struct.omap_dm_timer, %struct.omap_dm_timer* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 0
  store i32 %48, i32* %51, align 4
  %52 = load %struct.omap_dm_timer*, %struct.omap_dm_timer** %4, align 8
  %53 = call i32 @omap_dm_timer_disable(%struct.omap_dm_timer* %52)
  store i32 0, i32* %3, align 4
  br label %54

54:                                               ; preds = %43, %19
  %55 = load i32, i32* %3, align 4
  ret i32 %55
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @omap_dm_timer_enable(%struct.omap_dm_timer*) #1

declare dso_local i32 @omap_dm_timer_read_reg(%struct.omap_dm_timer*, i32) #1

declare dso_local i32 @omap_dm_timer_write_reg(%struct.omap_dm_timer*, i32, i32) #1

declare dso_local i32 @omap_dm_timer_disable(%struct.omap_dm_timer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
