; ModuleID = '/home/carl/AnghaBench/linux/drivers/clocksource/extr_timer-ti-dm.c_omap_dm_timer_set_int_disable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clocksource/extr_timer-ti-dm.c_omap_dm_timer_set_int_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.omap_dm_timer = type { i32, %struct.TYPE_2__, i32, i32 }
%struct.TYPE_2__ = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@OMAP_TIMER_WAKEUP_EN_REG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.omap_dm_timer*, i32)* @omap_dm_timer_set_int_disable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @omap_dm_timer_set_int_disable(%struct.omap_dm_timer* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.omap_dm_timer*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.omap_dm_timer* %0, %struct.omap_dm_timer** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load i32, i32* %5, align 4
  store i32 %7, i32* %6, align 4
  %8 = load %struct.omap_dm_timer*, %struct.omap_dm_timer** %4, align 8
  %9 = icmp ne %struct.omap_dm_timer* %8, null
  %10 = xor i1 %9, true
  %11 = zext i1 %10 to i32
  %12 = call i64 @unlikely(i32 %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %2
  %15 = load i32, i32* @EINVAL, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %3, align 4
  br label %64

17:                                               ; preds = %2
  %18 = load %struct.omap_dm_timer*, %struct.omap_dm_timer** %4, align 8
  %19 = call i32 @omap_dm_timer_enable(%struct.omap_dm_timer* %18)
  %20 = load %struct.omap_dm_timer*, %struct.omap_dm_timer** %4, align 8
  %21 = getelementptr inbounds %struct.omap_dm_timer, %struct.omap_dm_timer* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = icmp eq i32 %22, 1
  br i1 %23, label %24, label %32

24:                                               ; preds = %17
  %25 = load %struct.omap_dm_timer*, %struct.omap_dm_timer** %4, align 8
  %26 = getelementptr inbounds %struct.omap_dm_timer, %struct.omap_dm_timer* %25, i32 0, i32 3
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @readl_relaxed(i32 %27)
  %29 = load i32, i32* %5, align 4
  %30 = xor i32 %29, -1
  %31 = and i32 %28, %30
  store i32 %31, i32* %6, align 4
  br label %32

32:                                               ; preds = %24, %17
  %33 = load i32, i32* %6, align 4
  %34 = load %struct.omap_dm_timer*, %struct.omap_dm_timer** %4, align 8
  %35 = getelementptr inbounds %struct.omap_dm_timer, %struct.omap_dm_timer* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @writel_relaxed(i32 %33, i32 %36)
  %38 = load %struct.omap_dm_timer*, %struct.omap_dm_timer** %4, align 8
  %39 = load i32, i32* @OMAP_TIMER_WAKEUP_EN_REG, align 4
  %40 = call i32 @omap_dm_timer_read_reg(%struct.omap_dm_timer* %38, i32 %39)
  %41 = load i32, i32* %5, align 4
  %42 = xor i32 %41, -1
  %43 = and i32 %40, %42
  store i32 %43, i32* %6, align 4
  %44 = load %struct.omap_dm_timer*, %struct.omap_dm_timer** %4, align 8
  %45 = load i32, i32* @OMAP_TIMER_WAKEUP_EN_REG, align 4
  %46 = load i32, i32* %6, align 4
  %47 = call i32 @omap_dm_timer_write_reg(%struct.omap_dm_timer* %44, i32 %45, i32 %46)
  %48 = load i32, i32* %5, align 4
  %49 = xor i32 %48, -1
  %50 = load %struct.omap_dm_timer*, %struct.omap_dm_timer** %4, align 8
  %51 = getelementptr inbounds %struct.omap_dm_timer, %struct.omap_dm_timer* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = and i32 %53, %49
  store i32 %54, i32* %52, align 4
  %55 = load i32, i32* %5, align 4
  %56 = xor i32 %55, -1
  %57 = load %struct.omap_dm_timer*, %struct.omap_dm_timer** %4, align 8
  %58 = getelementptr inbounds %struct.omap_dm_timer, %struct.omap_dm_timer* %57, i32 0, i32 1
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = and i32 %60, %56
  store i32 %61, i32* %59, align 4
  %62 = load %struct.omap_dm_timer*, %struct.omap_dm_timer** %4, align 8
  %63 = call i32 @omap_dm_timer_disable(%struct.omap_dm_timer* %62)
  store i32 0, i32* %3, align 4
  br label %64

64:                                               ; preds = %32, %14
  %65 = load i32, i32* %3, align 4
  ret i32 %65
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @omap_dm_timer_enable(%struct.omap_dm_timer*) #1

declare dso_local i32 @readl_relaxed(i32) #1

declare dso_local i32 @writel_relaxed(i32, i32) #1

declare dso_local i32 @omap_dm_timer_read_reg(%struct.omap_dm_timer*, i32) #1

declare dso_local i32 @omap_dm_timer_write_reg(%struct.omap_dm_timer*, i32, i32) #1

declare dso_local i32 @omap_dm_timer_disable(%struct.omap_dm_timer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
