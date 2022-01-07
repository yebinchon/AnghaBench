; ModuleID = '/home/carl/AnghaBench/linux/drivers/clocksource/extr_timer-ti-dm.c_omap_dm_timer_prepare.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clocksource/extr_timer-ti-dm.c_omap_dm_timer_prepare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.omap_dm_timer = type { i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }

@OMAP_TIMER_NEEDS_RESET = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"fck\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c": No fclk handle.\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@OMAP_TIMER_SRC_32_KHZ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.omap_dm_timer*)* @omap_dm_timer_prepare to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @omap_dm_timer_prepare(%struct.omap_dm_timer* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.omap_dm_timer*, align 8
  %4 = alloca i32, align 4
  store %struct.omap_dm_timer* %0, %struct.omap_dm_timer** %3, align 8
  %5 = load %struct.omap_dm_timer*, %struct.omap_dm_timer** %3, align 8
  %6 = getelementptr inbounds %struct.omap_dm_timer, %struct.omap_dm_timer* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  %8 = load i32, i32* @OMAP_TIMER_NEEDS_RESET, align 4
  %9 = and i32 %7, %8
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %34, label %11

11:                                               ; preds = %1
  %12 = load %struct.omap_dm_timer*, %struct.omap_dm_timer** %3, align 8
  %13 = getelementptr inbounds %struct.omap_dm_timer, %struct.omap_dm_timer* %12, i32 0, i32 1
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = call i32 @clk_get(i32* %15, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %17 = load %struct.omap_dm_timer*, %struct.omap_dm_timer** %3, align 8
  %18 = getelementptr inbounds %struct.omap_dm_timer, %struct.omap_dm_timer* %17, i32 0, i32 2
  store i32 %16, i32* %18, align 8
  %19 = load %struct.omap_dm_timer*, %struct.omap_dm_timer** %3, align 8
  %20 = getelementptr inbounds %struct.omap_dm_timer, %struct.omap_dm_timer* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 8
  %22 = call i32 @IS_ERR(i32 %21)
  %23 = call i64 @WARN_ON_ONCE(i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %33

25:                                               ; preds = %11
  %26 = load %struct.omap_dm_timer*, %struct.omap_dm_timer** %3, align 8
  %27 = getelementptr inbounds %struct.omap_dm_timer, %struct.omap_dm_timer* %26, i32 0, i32 1
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = call i32 @dev_err(i32* %29, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  %31 = load i32, i32* @EINVAL, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %2, align 4
  br label %70

33:                                               ; preds = %11
  br label %34

34:                                               ; preds = %33, %1
  %35 = load %struct.omap_dm_timer*, %struct.omap_dm_timer** %3, align 8
  %36 = call i32 @omap_dm_timer_enable(%struct.omap_dm_timer* %35)
  %37 = load %struct.omap_dm_timer*, %struct.omap_dm_timer** %3, align 8
  %38 = getelementptr inbounds %struct.omap_dm_timer, %struct.omap_dm_timer* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = load i32, i32* @OMAP_TIMER_NEEDS_RESET, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %53

43:                                               ; preds = %34
  %44 = load %struct.omap_dm_timer*, %struct.omap_dm_timer** %3, align 8
  %45 = call i32 @omap_dm_timer_reset(%struct.omap_dm_timer* %44)
  store i32 %45, i32* %4, align 4
  %46 = load i32, i32* %4, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %52

48:                                               ; preds = %43
  %49 = load %struct.omap_dm_timer*, %struct.omap_dm_timer** %3, align 8
  %50 = call i32 @omap_dm_timer_disable(%struct.omap_dm_timer* %49)
  %51 = load i32, i32* %4, align 4
  store i32 %51, i32* %2, align 4
  br label %70

52:                                               ; preds = %43
  br label %53

53:                                               ; preds = %52, %34
  %54 = load %struct.omap_dm_timer*, %struct.omap_dm_timer** %3, align 8
  %55 = call i32 @__omap_dm_timer_enable_posted(%struct.omap_dm_timer* %54)
  %56 = load %struct.omap_dm_timer*, %struct.omap_dm_timer** %3, align 8
  %57 = call i32 @omap_dm_timer_disable(%struct.omap_dm_timer* %56)
  %58 = load %struct.omap_dm_timer*, %struct.omap_dm_timer** %3, align 8
  %59 = call i32 @omap_dm_timer_of_set_source(%struct.omap_dm_timer* %58)
  store i32 %59, i32* %4, align 4
  %60 = load i32, i32* %4, align 4
  %61 = load i32, i32* @ENODEV, align 4
  %62 = sub nsw i32 0, %61
  %63 = icmp eq i32 %60, %62
  br i1 %63, label %64, label %68

64:                                               ; preds = %53
  %65 = load %struct.omap_dm_timer*, %struct.omap_dm_timer** %3, align 8
  %66 = load i32, i32* @OMAP_TIMER_SRC_32_KHZ, align 4
  %67 = call i32 @omap_dm_timer_set_source(%struct.omap_dm_timer* %65, i32 %66)
  store i32 %67, i32* %2, align 4
  br label %70

68:                                               ; preds = %53
  %69 = load i32, i32* %4, align 4
  store i32 %69, i32* %2, align 4
  br label %70

70:                                               ; preds = %68, %64, %48, %25
  %71 = load i32, i32* %2, align 4
  ret i32 %71
}

declare dso_local i32 @clk_get(i32*, i8*) #1

declare dso_local i64 @WARN_ON_ONCE(i32) #1

declare dso_local i32 @IS_ERR(i32) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @omap_dm_timer_enable(%struct.omap_dm_timer*) #1

declare dso_local i32 @omap_dm_timer_reset(%struct.omap_dm_timer*) #1

declare dso_local i32 @omap_dm_timer_disable(%struct.omap_dm_timer*) #1

declare dso_local i32 @__omap_dm_timer_enable_posted(%struct.omap_dm_timer*) #1

declare dso_local i32 @omap_dm_timer_of_set_source(%struct.omap_dm_timer*) #1

declare dso_local i32 @omap_dm_timer_set_source(%struct.omap_dm_timer*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
