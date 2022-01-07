; ModuleID = '/home/carl/AnghaBench/linux/drivers/char/ipmi/extr_ipmi_watchdog.c__ipmi_heartbeat.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/char/ipmi/extr_ipmi_watchdog.c__ipmi_heartbeat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@watchdog_user = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@ipmi_start_timer_on_heartbeat = common dso_local global i64 0, align 8
@action_val = common dso_local global i32 0, align 4
@ipmi_watchdog_state = common dso_local global i32 0, align 4
@IPMI_SET_TIMEOUT_FORCE_HB = common dso_local global i32 0, align 4
@pretimeout_since_last_heartbeat = common dso_local global i32 0, align 4
@IPMI_SET_TIMEOUT_HB_IF_NECESSARY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @_ipmi_heartbeat to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_ipmi_heartbeat() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = load i32, i32* @watchdog_user, align 4
  %4 = icmp ne i32 %3, 0
  br i1 %4, label %8, label %5

5:                                                ; preds = %0
  %6 = load i32, i32* @ENODEV, align 4
  %7 = sub nsw i32 0, %6
  store i32 %7, i32* %1, align 4
  br label %26

8:                                                ; preds = %0
  %9 = load i64, i64* @ipmi_start_timer_on_heartbeat, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %15

11:                                               ; preds = %8
  store i64 0, i64* @ipmi_start_timer_on_heartbeat, align 8
  %12 = load i32, i32* @action_val, align 4
  store i32 %12, i32* @ipmi_watchdog_state, align 4
  %13 = load i32, i32* @IPMI_SET_TIMEOUT_FORCE_HB, align 4
  %14 = call i32 @_ipmi_set_timeout(i32 %13)
  store i32 %14, i32* %2, align 4
  br label %24

15:                                               ; preds = %8
  %16 = call i64 @atomic_cmpxchg(i32* @pretimeout_since_last_heartbeat, i32 1, i32 0)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %15
  %19 = load i32, i32* @IPMI_SET_TIMEOUT_HB_IF_NECESSARY, align 4
  %20 = call i32 @_ipmi_set_timeout(i32 %19)
  store i32 %20, i32* %2, align 4
  br label %23

21:                                               ; preds = %15
  %22 = call i32 (...) @__ipmi_heartbeat()
  store i32 %22, i32* %2, align 4
  br label %23

23:                                               ; preds = %21, %18
  br label %24

24:                                               ; preds = %23, %11
  %25 = load i32, i32* %2, align 4
  store i32 %25, i32* %1, align 4
  br label %26

26:                                               ; preds = %24, %5
  %27 = load i32, i32* %1, align 4
  ret i32 %27
}

declare dso_local i32 @_ipmi_set_timeout(i32) #1

declare dso_local i64 @atomic_cmpxchg(i32*, i32, i32) #1

declare dso_local i32 @__ipmi_heartbeat(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
