; ModuleID = '/home/carl/AnghaBench/linux/arch/arm/mach-omap2/extr_omap_hwmod_reset.c_omap_rtc_wait_not_busy.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm/mach-omap2/extr_omap_hwmod_reset.c_omap_rtc_wait_not_busy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.omap_hwmod = type { i32 }

@OMAP_RTC_STATUS_REG = common dso_local global i32 0, align 4
@OMAP_RTC_STATUS_BUSY = common dso_local global i32 0, align 4
@OMAP_RTC_MAX_READY_TIME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.omap_hwmod*)* @omap_rtc_wait_not_busy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @omap_rtc_wait_not_busy(%struct.omap_hwmod* %0) #0 {
  %2 = alloca %struct.omap_hwmod*, align 8
  %3 = alloca i32, align 4
  store %struct.omap_hwmod* %0, %struct.omap_hwmod** %2, align 8
  %4 = load %struct.omap_hwmod*, %struct.omap_hwmod** %2, align 8
  %5 = load i32, i32* @OMAP_RTC_STATUS_REG, align 4
  %6 = call i32 @omap_hwmod_read(%struct.omap_hwmod* %4, i32 %5)
  %7 = load i32, i32* @OMAP_RTC_STATUS_BUSY, align 4
  %8 = and i32 %6, %7
  %9 = load i32, i32* @OMAP_RTC_MAX_READY_TIME, align 4
  %10 = load i32, i32* %3, align 4
  %11 = call i32 @omap_test_timeout(i32 %8, i32 %9, i32 %10)
  ret void
}

declare dso_local i32 @omap_test_timeout(i32, i32, i32) #1

declare dso_local i32 @omap_hwmod_read(%struct.omap_hwmod*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
