; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/kernel/extr_watchdog.c_watchdog_calc_timeouts.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/kernel/extr_watchdog.c_watchdog_calc_timeouts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@watchdog_thresh = common dso_local global i32 0, align 4
@ppc_tb_freq = common dso_local global i32 0, align 4
@wd_panic_timeout_tb = common dso_local global i32 0, align 4
@wd_smp_panic_timeout_tb = common dso_local global i32 0, align 4
@wd_timer_period_ms = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @watchdog_calc_timeouts to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @watchdog_calc_timeouts() #0 {
  %1 = load i32, i32* @watchdog_thresh, align 4
  %2 = load i32, i32* @ppc_tb_freq, align 4
  %3 = mul nsw i32 %1, %2
  store i32 %3, i32* @wd_panic_timeout_tb, align 4
  %4 = load i32, i32* @wd_panic_timeout_tb, align 4
  %5 = mul nsw i32 %4, 3
  %6 = sdiv i32 %5, 2
  store i32 %6, i32* @wd_smp_panic_timeout_tb, align 4
  %7 = load i32, i32* @watchdog_thresh, align 4
  %8 = mul nsw i32 %7, 1000
  %9 = mul nsw i32 %8, 2
  %10 = sdiv i32 %9, 5
  store i32 %10, i32* @wd_timer_period_ms, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
