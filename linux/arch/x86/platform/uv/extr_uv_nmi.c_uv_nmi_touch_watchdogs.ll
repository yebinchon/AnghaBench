; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/platform/uv/extr_uv_nmi.c_uv_nmi_touch_watchdogs.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/platform/uv/extr_uv_nmi.c_uv_nmi_touch_watchdogs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @uv_nmi_touch_watchdogs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @uv_nmi_touch_watchdogs() #0 {
  %1 = call i32 (...) @touch_softlockup_watchdog_sync()
  %2 = call i32 (...) @clocksource_touch_watchdog()
  %3 = call i32 (...) @rcu_cpu_stall_reset()
  %4 = call i32 (...) @touch_nmi_watchdog()
  ret void
}

declare dso_local i32 @touch_softlockup_watchdog_sync(...) #1

declare dso_local i32 @clocksource_touch_watchdog(...) #1

declare dso_local i32 @rcu_cpu_stall_reset(...) #1

declare dso_local i32 @touch_nmi_watchdog(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
