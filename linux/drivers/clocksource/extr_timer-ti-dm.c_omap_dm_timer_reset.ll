; ModuleID = '/home/carl/AnghaBench/linux/drivers/clocksource/extr_timer-ti-dm.c_omap_dm_timer_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clocksource/extr_timer-ti-dm.c_omap_dm_timer_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.omap_dm_timer = type { i32, i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@OMAP_TIMER_IF_CTRL_REG = common dso_local global i32 0, align 4
@OMAP_TIMER_V1_SYS_STAT_OFFSET = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"Timer failed to reset\0A\00", align 1
@ETIMEDOUT = common dso_local global i32 0, align 4
@OMAP_TIMER_OCP_CFG_OFFSET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.omap_dm_timer*)* @omap_dm_timer_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @omap_dm_timer_reset(%struct.omap_dm_timer* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.omap_dm_timer*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.omap_dm_timer* %0, %struct.omap_dm_timer** %3, align 8
  store i32 100000, i32* %5, align 4
  %6 = load %struct.omap_dm_timer*, %struct.omap_dm_timer** %3, align 8
  %7 = getelementptr inbounds %struct.omap_dm_timer, %struct.omap_dm_timer* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = icmp ne i32 %8, 1
  br i1 %9, label %10, label %13

10:                                               ; preds = %1
  %11 = load i32, i32* @EINVAL, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %2, align 4
  br label %53

13:                                               ; preds = %1
  %14 = load %struct.omap_dm_timer*, %struct.omap_dm_timer** %3, align 8
  %15 = load i32, i32* @OMAP_TIMER_IF_CTRL_REG, align 4
  %16 = call i32 @omap_dm_timer_write_reg(%struct.omap_dm_timer* %14, i32 %15, i32 6)
  br label %17

17:                                               ; preds = %28, %13
  %18 = load %struct.omap_dm_timer*, %struct.omap_dm_timer** %3, align 8
  %19 = load i32, i32* @OMAP_TIMER_V1_SYS_STAT_OFFSET, align 4
  %20 = call i32 @__omap_dm_timer_read(%struct.omap_dm_timer* %18, i32 %19, i32 0)
  store i32 %20, i32* %4, align 4
  br label %21

21:                                               ; preds = %17
  %22 = load i32, i32* %4, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %28, label %24

24:                                               ; preds = %21
  %25 = load i32, i32* %5, align 4
  %26 = add nsw i32 %25, -1
  store i32 %26, i32* %5, align 4
  %27 = icmp ne i32 %25, 0
  br label %28

28:                                               ; preds = %24, %21
  %29 = phi i1 [ false, %21 ], [ %27, %24 ]
  br i1 %29, label %17, label %30

30:                                               ; preds = %28
  %31 = load i32, i32* %5, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %41, label %33

33:                                               ; preds = %30
  %34 = load %struct.omap_dm_timer*, %struct.omap_dm_timer** %3, align 8
  %35 = getelementptr inbounds %struct.omap_dm_timer, %struct.omap_dm_timer* %34, i32 0, i32 2
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = call i32 @dev_err(i32* %37, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %39 = load i32, i32* @ETIMEDOUT, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %2, align 4
  br label %53

41:                                               ; preds = %30
  %42 = load %struct.omap_dm_timer*, %struct.omap_dm_timer** %3, align 8
  %43 = load i32, i32* @OMAP_TIMER_OCP_CFG_OFFSET, align 4
  %44 = call i32 @__omap_dm_timer_read(%struct.omap_dm_timer* %42, i32 %43, i32 0)
  store i32 %44, i32* %4, align 4
  %45 = load i32, i32* %4, align 4
  %46 = or i32 %45, 16
  store i32 %46, i32* %4, align 4
  %47 = load %struct.omap_dm_timer*, %struct.omap_dm_timer** %3, align 8
  %48 = load i32, i32* @OMAP_TIMER_OCP_CFG_OFFSET, align 4
  %49 = load i32, i32* %4, align 4
  %50 = call i32 @__omap_dm_timer_write(%struct.omap_dm_timer* %47, i32 %48, i32 %49, i32 0)
  %51 = load %struct.omap_dm_timer*, %struct.omap_dm_timer** %3, align 8
  %52 = getelementptr inbounds %struct.omap_dm_timer, %struct.omap_dm_timer* %51, i32 0, i32 1
  store i64 0, i64* %52, align 8
  store i32 0, i32* %2, align 4
  br label %53

53:                                               ; preds = %41, %33, %10
  %54 = load i32, i32* %2, align 4
  ret i32 %54
}

declare dso_local i32 @omap_dm_timer_write_reg(%struct.omap_dm_timer*, i32, i32) #1

declare dso_local i32 @__omap_dm_timer_read(%struct.omap_dm_timer*, i32, i32) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @__omap_dm_timer_write(%struct.omap_dm_timer*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
