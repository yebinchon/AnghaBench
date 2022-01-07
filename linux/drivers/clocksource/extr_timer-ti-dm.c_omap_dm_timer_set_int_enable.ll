; ModuleID = '/home/carl/AnghaBench/linux/drivers/clocksource/extr_timer-ti-dm.c_omap_dm_timer_set_int_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clocksource/extr_timer-ti-dm.c_omap_dm_timer_set_int_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.omap_dm_timer = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.omap_dm_timer*, i32)* @omap_dm_timer_set_int_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @omap_dm_timer_set_int_enable(%struct.omap_dm_timer* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.omap_dm_timer*, align 8
  %5 = alloca i32, align 4
  store %struct.omap_dm_timer* %0, %struct.omap_dm_timer** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load %struct.omap_dm_timer*, %struct.omap_dm_timer** %4, align 8
  %7 = icmp ne %struct.omap_dm_timer* %6, null
  %8 = xor i1 %7, true
  %9 = zext i1 %8 to i32
  %10 = call i64 @unlikely(i32 %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %2
  %13 = load i32, i32* @EINVAL, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %3, align 4
  br label %31

15:                                               ; preds = %2
  %16 = load %struct.omap_dm_timer*, %struct.omap_dm_timer** %4, align 8
  %17 = call i32 @omap_dm_timer_enable(%struct.omap_dm_timer* %16)
  %18 = load %struct.omap_dm_timer*, %struct.omap_dm_timer** %4, align 8
  %19 = load i32, i32* %5, align 4
  %20 = call i32 @__omap_dm_timer_int_enable(%struct.omap_dm_timer* %18, i32 %19)
  %21 = load i32, i32* %5, align 4
  %22 = load %struct.omap_dm_timer*, %struct.omap_dm_timer** %4, align 8
  %23 = getelementptr inbounds %struct.omap_dm_timer, %struct.omap_dm_timer* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  store i32 %21, i32* %24, align 4
  %25 = load i32, i32* %5, align 4
  %26 = load %struct.omap_dm_timer*, %struct.omap_dm_timer** %4, align 8
  %27 = getelementptr inbounds %struct.omap_dm_timer, %struct.omap_dm_timer* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 1
  store i32 %25, i32* %28, align 4
  %29 = load %struct.omap_dm_timer*, %struct.omap_dm_timer** %4, align 8
  %30 = call i32 @omap_dm_timer_disable(%struct.omap_dm_timer* %29)
  store i32 0, i32* %3, align 4
  br label %31

31:                                               ; preds = %15, %12
  %32 = load i32, i32* %3, align 4
  ret i32 %32
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @omap_dm_timer_enable(%struct.omap_dm_timer*) #1

declare dso_local i32 @__omap_dm_timer_int_enable(%struct.omap_dm_timer*, i32) #1

declare dso_local i32 @omap_dm_timer_disable(%struct.omap_dm_timer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
