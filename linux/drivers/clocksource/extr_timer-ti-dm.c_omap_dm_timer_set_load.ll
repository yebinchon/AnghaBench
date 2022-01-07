; ModuleID = '/home/carl/AnghaBench/linux/drivers/clocksource/extr_timer-ti-dm.c_omap_dm_timer_set_load.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clocksource/extr_timer-ti-dm.c_omap_dm_timer_set_load.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.omap_dm_timer = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@OMAP_TIMER_CTRL_REG = common dso_local global i32 0, align 4
@OMAP_TIMER_CTRL_AR = common dso_local global i32 0, align 4
@OMAP_TIMER_LOAD_REG = common dso_local global i32 0, align 4
@OMAP_TIMER_TRIGGER_REG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.omap_dm_timer*, i32, i32)* @omap_dm_timer_set_load to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @omap_dm_timer_set_load(%struct.omap_dm_timer* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.omap_dm_timer*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.omap_dm_timer* %0, %struct.omap_dm_timer** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %9 = load %struct.omap_dm_timer*, %struct.omap_dm_timer** %5, align 8
  %10 = icmp ne %struct.omap_dm_timer* %9, null
  %11 = xor i1 %10, true
  %12 = zext i1 %11 to i32
  %13 = call i64 @unlikely(i32 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %3
  %16 = load i32, i32* @EINVAL, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %4, align 4
  br label %57

18:                                               ; preds = %3
  %19 = load %struct.omap_dm_timer*, %struct.omap_dm_timer** %5, align 8
  %20 = call i32 @omap_dm_timer_enable(%struct.omap_dm_timer* %19)
  %21 = load %struct.omap_dm_timer*, %struct.omap_dm_timer** %5, align 8
  %22 = load i32, i32* @OMAP_TIMER_CTRL_REG, align 4
  %23 = call i32 @omap_dm_timer_read_reg(%struct.omap_dm_timer* %21, i32 %22)
  store i32 %23, i32* %8, align 4
  %24 = load i32, i32* %6, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %18
  %27 = load i32, i32* @OMAP_TIMER_CTRL_AR, align 4
  %28 = load i32, i32* %8, align 4
  %29 = or i32 %28, %27
  store i32 %29, i32* %8, align 4
  br label %35

30:                                               ; preds = %18
  %31 = load i32, i32* @OMAP_TIMER_CTRL_AR, align 4
  %32 = xor i32 %31, -1
  %33 = load i32, i32* %8, align 4
  %34 = and i32 %33, %32
  store i32 %34, i32* %8, align 4
  br label %35

35:                                               ; preds = %30, %26
  %36 = load %struct.omap_dm_timer*, %struct.omap_dm_timer** %5, align 8
  %37 = load i32, i32* @OMAP_TIMER_CTRL_REG, align 4
  %38 = load i32, i32* %8, align 4
  %39 = call i32 @omap_dm_timer_write_reg(%struct.omap_dm_timer* %36, i32 %37, i32 %38)
  %40 = load %struct.omap_dm_timer*, %struct.omap_dm_timer** %5, align 8
  %41 = load i32, i32* @OMAP_TIMER_LOAD_REG, align 4
  %42 = load i32, i32* %7, align 4
  %43 = call i32 @omap_dm_timer_write_reg(%struct.omap_dm_timer* %40, i32 %41, i32 %42)
  %44 = load %struct.omap_dm_timer*, %struct.omap_dm_timer** %5, align 8
  %45 = load i32, i32* @OMAP_TIMER_TRIGGER_REG, align 4
  %46 = call i32 @omap_dm_timer_write_reg(%struct.omap_dm_timer* %44, i32 %45, i32 0)
  %47 = load i32, i32* %8, align 4
  %48 = load %struct.omap_dm_timer*, %struct.omap_dm_timer** %5, align 8
  %49 = getelementptr inbounds %struct.omap_dm_timer, %struct.omap_dm_timer* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 0
  store i32 %47, i32* %50, align 4
  %51 = load i32, i32* %7, align 4
  %52 = load %struct.omap_dm_timer*, %struct.omap_dm_timer** %5, align 8
  %53 = getelementptr inbounds %struct.omap_dm_timer, %struct.omap_dm_timer* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 1
  store i32 %51, i32* %54, align 4
  %55 = load %struct.omap_dm_timer*, %struct.omap_dm_timer** %5, align 8
  %56 = call i32 @omap_dm_timer_disable(%struct.omap_dm_timer* %55)
  store i32 0, i32* %4, align 4
  br label %57

57:                                               ; preds = %35, %15
  %58 = load i32, i32* %4, align 4
  ret i32 %58
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
