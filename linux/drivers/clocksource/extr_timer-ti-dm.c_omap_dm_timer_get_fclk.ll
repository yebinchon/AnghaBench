; ModuleID = '/home/carl/AnghaBench/linux/drivers/clocksource/extr_timer-ti-dm.c_omap_dm_timer_get_fclk.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clocksource/extr_timer-ti-dm.c_omap_dm_timer_get_fclk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk = type { i32 }
%struct.omap_dm_timer = type { %struct.clk* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.clk* (%struct.omap_dm_timer*)* @omap_dm_timer_get_fclk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.clk* @omap_dm_timer_get_fclk(%struct.omap_dm_timer* %0) #0 {
  %2 = alloca %struct.clk*, align 8
  %3 = alloca %struct.omap_dm_timer*, align 8
  store %struct.omap_dm_timer* %0, %struct.omap_dm_timer** %3, align 8
  %4 = load %struct.omap_dm_timer*, %struct.omap_dm_timer** %3, align 8
  %5 = icmp ne %struct.omap_dm_timer* %4, null
  br i1 %5, label %6, label %16

6:                                                ; preds = %1
  %7 = load %struct.omap_dm_timer*, %struct.omap_dm_timer** %3, align 8
  %8 = getelementptr inbounds %struct.omap_dm_timer, %struct.omap_dm_timer* %7, i32 0, i32 0
  %9 = load %struct.clk*, %struct.clk** %8, align 8
  %10 = call i32 @IS_ERR(%struct.clk* %9)
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %16, label %12

12:                                               ; preds = %6
  %13 = load %struct.omap_dm_timer*, %struct.omap_dm_timer** %3, align 8
  %14 = getelementptr inbounds %struct.omap_dm_timer, %struct.omap_dm_timer* %13, i32 0, i32 0
  %15 = load %struct.clk*, %struct.clk** %14, align 8
  store %struct.clk* %15, %struct.clk** %2, align 8
  br label %17

16:                                               ; preds = %6, %1
  store %struct.clk* null, %struct.clk** %2, align 8
  br label %17

17:                                               ; preds = %16, %12
  %18 = load %struct.clk*, %struct.clk** %2, align 8
  ret %struct.clk* %18
}

declare dso_local i32 @IS_ERR(%struct.clk*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
