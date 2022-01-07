; ModuleID = '/home/carl/AnghaBench/linux/drivers/cpufreq/extr_powernv-cpufreq.c_queue_gpstate_timer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/cpufreq/extr_powernv-cpufreq.c_queue_gpstate_timer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.global_pstate_info = type { i64, i32 }

@GPSTATE_TIMER_INTERVAL = common dso_local global i32 0, align 4
@MAX_RAMP_DOWN_TIME = common dso_local global i64 0, align 8
@jiffies = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.global_pstate_info*)* @queue_gpstate_timer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @queue_gpstate_timer(%struct.global_pstate_info* %0) #0 {
  %2 = alloca %struct.global_pstate_info*, align 8
  %3 = alloca i32, align 4
  store %struct.global_pstate_info* %0, %struct.global_pstate_info** %2, align 8
  %4 = load %struct.global_pstate_info*, %struct.global_pstate_info** %2, align 8
  %5 = getelementptr inbounds %struct.global_pstate_info, %struct.global_pstate_info* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = load i32, i32* @GPSTATE_TIMER_INTERVAL, align 4
  %8 = zext i32 %7 to i64
  %9 = add nsw i64 %6, %8
  %10 = load i64, i64* @MAX_RAMP_DOWN_TIME, align 8
  %11 = icmp sgt i64 %9, %10
  br i1 %11, label %12, label %19

12:                                               ; preds = %1
  %13 = load i64, i64* @MAX_RAMP_DOWN_TIME, align 8
  %14 = load %struct.global_pstate_info*, %struct.global_pstate_info** %2, align 8
  %15 = getelementptr inbounds %struct.global_pstate_info, %struct.global_pstate_info* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = sub nsw i64 %13, %16
  %18 = trunc i64 %17 to i32
  store i32 %18, i32* %3, align 4
  br label %21

19:                                               ; preds = %1
  %20 = load i32, i32* @GPSTATE_TIMER_INTERVAL, align 4
  store i32 %20, i32* %3, align 4
  br label %21

21:                                               ; preds = %19, %12
  %22 = load %struct.global_pstate_info*, %struct.global_pstate_info** %2, align 8
  %23 = getelementptr inbounds %struct.global_pstate_info, %struct.global_pstate_info* %22, i32 0, i32 1
  %24 = load i64, i64* @jiffies, align 8
  %25 = load i32, i32* %3, align 4
  %26 = call i64 @msecs_to_jiffies(i32 %25)
  %27 = add nsw i64 %24, %26
  %28 = call i32 @mod_timer(i32* %23, i64 %27)
  ret void
}

declare dso_local i32 @mod_timer(i32*, i64) #1

declare dso_local i64 @msecs_to_jiffies(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
