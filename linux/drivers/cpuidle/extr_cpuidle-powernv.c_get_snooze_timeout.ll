; ModuleID = '/home/carl/AnghaBench/linux/drivers/cpuidle/extr_cpuidle-powernv.c_get_snooze_timeout.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/cpuidle/extr_cpuidle-powernv.c_get_snooze_timeout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpuidle_device = type { %struct.cpuidle_state_usage* }
%struct.cpuidle_state_usage = type { i64 }
%struct.cpuidle_driver = type { i32, %struct.cpuidle_state* }
%struct.cpuidle_state = type { i32, i64 }

@snooze_timeout_en = common dso_local global i32 0, align 4
@default_snooze_timeout = common dso_local global i32 0, align 4
@tb_ticks_per_usec = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cpuidle_device*, %struct.cpuidle_driver*, i32)* @get_snooze_timeout to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_snooze_timeout(%struct.cpuidle_device* %0, %struct.cpuidle_driver* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.cpuidle_device*, align 8
  %6 = alloca %struct.cpuidle_driver*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.cpuidle_state*, align 8
  %10 = alloca %struct.cpuidle_state_usage*, align 8
  store %struct.cpuidle_device* %0, %struct.cpuidle_device** %5, align 8
  store %struct.cpuidle_driver* %1, %struct.cpuidle_driver** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load i32, i32* @snooze_timeout_en, align 4
  %12 = icmp ne i32 %11, 0
  %13 = xor i1 %12, true
  %14 = zext i1 %13 to i32
  %15 = call i64 @unlikely(i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %3
  %18 = load i32, i32* @default_snooze_timeout, align 4
  store i32 %18, i32* %4, align 4
  br label %62

19:                                               ; preds = %3
  %20 = load i32, i32* %7, align 4
  %21 = add nsw i32 %20, 1
  store i32 %21, i32* %8, align 4
  br label %22

22:                                               ; preds = %57, %19
  %23 = load i32, i32* %8, align 4
  %24 = load %struct.cpuidle_driver*, %struct.cpuidle_driver** %6, align 8
  %25 = getelementptr inbounds %struct.cpuidle_driver, %struct.cpuidle_driver* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = icmp slt i32 %23, %26
  br i1 %27, label %28, label %60

28:                                               ; preds = %22
  %29 = load %struct.cpuidle_driver*, %struct.cpuidle_driver** %6, align 8
  %30 = getelementptr inbounds %struct.cpuidle_driver, %struct.cpuidle_driver* %29, i32 0, i32 1
  %31 = load %struct.cpuidle_state*, %struct.cpuidle_state** %30, align 8
  %32 = load i32, i32* %8, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.cpuidle_state, %struct.cpuidle_state* %31, i64 %33
  store %struct.cpuidle_state* %34, %struct.cpuidle_state** %9, align 8
  %35 = load %struct.cpuidle_device*, %struct.cpuidle_device** %5, align 8
  %36 = getelementptr inbounds %struct.cpuidle_device, %struct.cpuidle_device* %35, i32 0, i32 0
  %37 = load %struct.cpuidle_state_usage*, %struct.cpuidle_state_usage** %36, align 8
  %38 = load i32, i32* %8, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.cpuidle_state_usage, %struct.cpuidle_state_usage* %37, i64 %39
  store %struct.cpuidle_state_usage* %40, %struct.cpuidle_state_usage** %10, align 8
  %41 = load %struct.cpuidle_state*, %struct.cpuidle_state** %9, align 8
  %42 = getelementptr inbounds %struct.cpuidle_state, %struct.cpuidle_state* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %50, label %45

45:                                               ; preds = %28
  %46 = load %struct.cpuidle_state_usage*, %struct.cpuidle_state_usage** %10, align 8
  %47 = getelementptr inbounds %struct.cpuidle_state_usage, %struct.cpuidle_state_usage* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %45, %28
  br label %57

51:                                               ; preds = %45
  %52 = load %struct.cpuidle_state*, %struct.cpuidle_state** %9, align 8
  %53 = getelementptr inbounds %struct.cpuidle_state, %struct.cpuidle_state* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = load i32, i32* @tb_ticks_per_usec, align 4
  %56 = mul nsw i32 %54, %55
  store i32 %56, i32* %4, align 4
  br label %62

57:                                               ; preds = %50
  %58 = load i32, i32* %8, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %8, align 4
  br label %22

60:                                               ; preds = %22
  %61 = load i32, i32* @default_snooze_timeout, align 4
  store i32 %61, i32* %4, align 4
  br label %62

62:                                               ; preds = %60, %51, %17
  %63 = load i32, i32* %4, align 4
  ret i32 %63
}

declare dso_local i64 @unlikely(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
