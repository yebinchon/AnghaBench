; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/sgi-ip32/extr_ip32-reset.c_ip32_prepare_poweroff.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/sgi-ip32/extr_ip32-reset.c_ip32_prepare_poweroff.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64 }

@has_panicked = common dso_local global i64 0, align 8
@shutting_down = common dso_local global i32 0, align 4
@SIGINT = common dso_local global i32 0, align 4
@ip32_rtc_device = common dso_local global i32 0, align 4
@POWERDOWN_FREQ = common dso_local global i32 0, align 4
@blink_timer_timeout = common dso_local global i32 0, align 4
@blink_timer = common dso_local global i32 0, align 4
@power_timer = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@power_timeout = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@POWERDOWN_TIMEOUT = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ip32_prepare_poweroff() #0 {
  %1 = load i64, i64* @has_panicked, align 8
  %2 = icmp ne i64 %1, 0
  br i1 %2, label %3, label %4

3:                                                ; preds = %0
  br label %25

4:                                                ; preds = %0
  %5 = load i32, i32* @shutting_down, align 4
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %11, label %7

7:                                                ; preds = %4
  %8 = load i32, i32* @SIGINT, align 4
  %9 = call i64 @kill_cad_pid(i32 %8, i32 1)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %7, %4
  %12 = call i32 @ip32_poweroff(i32* @ip32_rtc_device)
  br label %13

13:                                               ; preds = %11, %7
  store i32 1, i32* @shutting_down, align 4
  %14 = load i32, i32* @POWERDOWN_FREQ, align 4
  store i32 %14, i32* @blink_timer_timeout, align 4
  %15 = call i32 @blink_timeout(i32* @blink_timer)
  %16 = load i32, i32* @power_timeout, align 4
  %17 = call i32 @timer_setup(%struct.TYPE_4__* @power_timer, i32 %16, i32 0)
  %18 = load i64, i64* @jiffies, align 8
  %19 = load i32, i32* @POWERDOWN_TIMEOUT, align 4
  %20 = load i32, i32* @HZ, align 4
  %21 = mul nsw i32 %19, %20
  %22 = sext i32 %21 to i64
  %23 = add nsw i64 %18, %22
  store i64 %23, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @power_timer, i32 0, i32 0), align 8
  %24 = call i32 @add_timer(%struct.TYPE_4__* @power_timer)
  br label %25

25:                                               ; preds = %13, %3
  ret void
}

declare dso_local i64 @kill_cad_pid(i32, i32) #1

declare dso_local i32 @ip32_poweroff(i32*) #1

declare dso_local i32 @blink_timeout(i32*) #1

declare dso_local i32 @timer_setup(%struct.TYPE_4__*, i32, i32) #1

declare dso_local i32 @add_timer(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
