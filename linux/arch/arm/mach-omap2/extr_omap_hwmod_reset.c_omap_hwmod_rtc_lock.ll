; ModuleID = '/home/carl/AnghaBench/linux/arch/arm/mach-omap2/extr_omap_hwmod_reset.c_omap_hwmod_rtc_lock.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm/mach-omap2/extr_omap_hwmod_reset.c_omap_hwmod_rtc_lock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.omap_hwmod = type { i32 }

@OMAP_RTC_KICK0_REG = common dso_local global i32 0, align 4
@OMAP_RTC_KICK1_REG = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @omap_hwmod_rtc_lock(%struct.omap_hwmod* %0) #0 {
  %2 = alloca %struct.omap_hwmod*, align 8
  %3 = alloca i64, align 8
  store %struct.omap_hwmod* %0, %struct.omap_hwmod** %2, align 8
  %4 = load i64, i64* %3, align 8
  %5 = call i32 @local_irq_save(i64 %4)
  %6 = load %struct.omap_hwmod*, %struct.omap_hwmod** %2, align 8
  %7 = call i32 @omap_rtc_wait_not_busy(%struct.omap_hwmod* %6)
  %8 = load %struct.omap_hwmod*, %struct.omap_hwmod** %2, align 8
  %9 = load i32, i32* @OMAP_RTC_KICK0_REG, align 4
  %10 = call i32 @omap_hwmod_write(i32 0, %struct.omap_hwmod* %8, i32 %9)
  %11 = load %struct.omap_hwmod*, %struct.omap_hwmod** %2, align 8
  %12 = load i32, i32* @OMAP_RTC_KICK1_REG, align 4
  %13 = call i32 @omap_hwmod_write(i32 0, %struct.omap_hwmod* %11, i32 %12)
  %14 = load i64, i64* %3, align 8
  %15 = call i32 @local_irq_restore(i64 %14)
  ret void
}

declare dso_local i32 @local_irq_save(i64) #1

declare dso_local i32 @omap_rtc_wait_not_busy(%struct.omap_hwmod*) #1

declare dso_local i32 @omap_hwmod_write(i32, %struct.omap_hwmod*, i32) #1

declare dso_local i32 @local_irq_restore(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
