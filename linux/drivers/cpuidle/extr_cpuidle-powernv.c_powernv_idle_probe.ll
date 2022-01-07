; ModuleID = '/home/carl/AnghaBench/linux/drivers/cpuidle/extr_cpuidle-powernv.c_powernv_idle_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/cpuidle/extr_cpuidle-powernv.c_powernv_idle_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@cpuidle_disable = common dso_local global i64 0, align 8
@IDLE_NO_OVERRIDE = common dso_local global i64 0, align 8
@ENODEV = common dso_local global i32 0, align 4
@FW_FEATURE_OPAL = common dso_local global i32 0, align 4
@powernv_states = common dso_local global i32 0, align 4
@cpuidle_state_table = common dso_local global i32 0, align 4
@max_idle_state = common dso_local global i32 0, align 4
@TICK_USEC = common dso_local global i32 0, align 4
@tb_ticks_per_usec = common dso_local global i32 0, align 4
@default_snooze_timeout = common dso_local global i32 0, align 4
@snooze_timeout_en = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @powernv_idle_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @powernv_idle_probe() #0 {
  %1 = alloca i32, align 4
  %2 = load i64, i64* @cpuidle_disable, align 8
  %3 = load i64, i64* @IDLE_NO_OVERRIDE, align 8
  %4 = icmp ne i64 %2, %3
  br i1 %4, label %5, label %8

5:                                                ; preds = %0
  %6 = load i32, i32* @ENODEV, align 4
  %7 = sub nsw i32 0, %6
  store i32 %7, i32* %1, align 4
  br label %26

8:                                                ; preds = %0
  %9 = load i32, i32* @FW_FEATURE_OPAL, align 4
  %10 = call i64 @firmware_has_feature(i32 %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %22

12:                                               ; preds = %8
  %13 = load i32, i32* @powernv_states, align 4
  store i32 %13, i32* @cpuidle_state_table, align 4
  %14 = call i32 (...) @powernv_add_idle_states()
  store i32 %14, i32* @max_idle_state, align 4
  %15 = load i32, i32* @TICK_USEC, align 4
  %16 = load i32, i32* @tb_ticks_per_usec, align 4
  %17 = mul nsw i32 %15, %16
  store i32 %17, i32* @default_snooze_timeout, align 4
  %18 = load i32, i32* @max_idle_state, align 4
  %19 = icmp sgt i32 %18, 1
  br i1 %19, label %20, label %21

20:                                               ; preds = %12
  store i32 1, i32* @snooze_timeout_en, align 4
  br label %21

21:                                               ; preds = %20, %12
  br label %25

22:                                               ; preds = %8
  %23 = load i32, i32* @ENODEV, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %1, align 4
  br label %26

25:                                               ; preds = %21
  store i32 0, i32* %1, align 4
  br label %26

26:                                               ; preds = %25, %22, %5
  %27 = load i32, i32* %1, align 4
  ret i32 %27
}

declare dso_local i64 @firmware_has_feature(i32) #1

declare dso_local i32 @powernv_add_idle_states(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
