; ModuleID = '/home/carl/AnghaBench/linux/drivers/cpuidle/extr_cpuidle-pseries.c_pseries_idle_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/cpuidle/extr_cpuidle-pseries.c_pseries_idle_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i32 }

@cpuidle_disable = common dso_local global i64 0, align 8
@IDLE_NO_OVERRIDE = common dso_local global i64 0, align 8
@ENODEV = common dso_local global i32 0, align 4
@FW_FEATURE_SPLPAR = common dso_local global i32 0, align 4
@local_paca = common dso_local global %struct.TYPE_7__* null, align 8
@shared_states = common dso_local global %struct.TYPE_6__* null, align 8
@cpuidle_state_table = common dso_local global %struct.TYPE_6__* null, align 8
@max_idle_state = common dso_local global i32 0, align 4
@dedicated_states = common dso_local global %struct.TYPE_6__* null, align 8
@snooze_timeout_en = common dso_local global i32 0, align 4
@tb_ticks_per_usec = common dso_local global i32 0, align 4
@snooze_timeout = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @pseries_idle_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pseries_idle_probe() #0 {
  %1 = alloca i32, align 4
  %2 = load i64, i64* @cpuidle_disable, align 8
  %3 = load i64, i64* @IDLE_NO_OVERRIDE, align 8
  %4 = icmp ne i64 %2, %3
  br i1 %4, label %5, label %8

5:                                                ; preds = %0
  %6 = load i32, i32* @ENODEV, align 4
  %7 = sub nsw i32 0, %6
  store i32 %7, i32* %1, align 4
  br label %41

8:                                                ; preds = %0
  %9 = load i32, i32* @FW_FEATURE_SPLPAR, align 4
  %10 = call i64 @firmware_has_feature(i32 %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %27

12:                                               ; preds = %8
  %13 = load %struct.TYPE_7__*, %struct.TYPE_7__** @local_paca, align 8
  %14 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i64 @lppaca_shared_proc(i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %22

18:                                               ; preds = %12
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** @shared_states, align 8
  store %struct.TYPE_6__* %19, %struct.TYPE_6__** @cpuidle_state_table, align 8
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** @shared_states, align 8
  %21 = call i32 @ARRAY_SIZE(%struct.TYPE_6__* %20)
  store i32 %21, i32* @max_idle_state, align 4
  br label %26

22:                                               ; preds = %12
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** @dedicated_states, align 8
  store %struct.TYPE_6__* %23, %struct.TYPE_6__** @cpuidle_state_table, align 8
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** @dedicated_states, align 8
  %25 = call i32 @ARRAY_SIZE(%struct.TYPE_6__* %24)
  store i32 %25, i32* @max_idle_state, align 4
  br label %26

26:                                               ; preds = %22, %18
  br label %30

27:                                               ; preds = %8
  %28 = load i32, i32* @ENODEV, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %1, align 4
  br label %41

30:                                               ; preds = %26
  %31 = load i32, i32* @max_idle_state, align 4
  %32 = icmp sgt i32 %31, 1
  br i1 %32, label %33, label %40

33:                                               ; preds = %30
  store i32 1, i32* @snooze_timeout_en, align 4
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** @cpuidle_state_table, align 8
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i64 1
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @tb_ticks_per_usec, align 4
  %39 = mul nsw i32 %37, %38
  store i32 %39, i32* @snooze_timeout, align 4
  br label %40

40:                                               ; preds = %33, %30
  store i32 0, i32* %1, align 4
  br label %41

41:                                               ; preds = %40, %27, %5
  %42 = load i32, i32* %1, align 4
  ret i32 %42
}

declare dso_local i64 @firmware_has_feature(i32) #1

declare dso_local i64 @lppaca_shared_proc(i32) #1

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
