; ModuleID = '/home/carl/AnghaBench/linux/arch/arm/mach-omap2/extr_timer.c_omap_clkevt_unidle.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm/mach-omap2/extr_timer.c_omap_clkevt_unidle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clock_event_device = type { i32 }

@clockevent_gpt_hwmod = common dso_local global i32 0, align 4
@clkev = common dso_local global i32 0, align 4
@OMAP_TIMER_INT_OVERFLOW = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.clock_event_device*)* @omap_clkevt_unidle to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @omap_clkevt_unidle(%struct.clock_event_device* %0) #0 {
  %2 = alloca %struct.clock_event_device*, align 8
  store %struct.clock_event_device* %0, %struct.clock_event_device** %2, align 8
  %3 = load i32, i32* @clockevent_gpt_hwmod, align 4
  %4 = icmp ne i32 %3, 0
  br i1 %4, label %6, label %5

5:                                                ; preds = %1
  br label %11

6:                                                ; preds = %1
  %7 = load i32, i32* @clockevent_gpt_hwmod, align 4
  %8 = call i32 @omap_hwmod_enable(i32 %7)
  %9 = load i32, i32* @OMAP_TIMER_INT_OVERFLOW, align 4
  %10 = call i32 @__omap_dm_timer_int_enable(i32* @clkev, i32 %9)
  br label %11

11:                                               ; preds = %6, %5
  ret void
}

declare dso_local i32 @omap_hwmod_enable(i32) #1

declare dso_local i32 @__omap_dm_timer_int_enable(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
