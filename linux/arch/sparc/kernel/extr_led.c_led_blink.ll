; ModuleID = '/home/carl/AnghaBench/linux/arch/sparc/kernel/extr_led.c_led_blink.c'
source_filename = "/home/carl/AnghaBench/linux/arch/sparc/kernel/extr_led.c_led_blink.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i8* }
%struct.timer_list = type { i32 }

@led_blink_timer_timeout = common dso_local global i64 0, align 8
@jiffies = common dso_local global i8* null, align 8
@avenrun = common dso_local global i32* null, align 8
@FSHIFT = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@led_blink_timer = common dso_local global %struct.TYPE_3__ zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.timer_list*)* @led_blink to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @led_blink(%struct.timer_list* %0) #0 {
  %2 = alloca %struct.timer_list*, align 8
  %3 = alloca i64, align 8
  store %struct.timer_list* %0, %struct.timer_list** %2, align 8
  %4 = load i64, i64* @led_blink_timer_timeout, align 8
  store i64 %4, i64* %3, align 8
  %5 = call i32 (...) @led_toggle()
  %6 = load i64, i64* %3, align 8
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %20, label %8

8:                                                ; preds = %1
  %9 = load i8*, i8** @jiffies, align 8
  %10 = load i32*, i32** @avenrun, align 8
  %11 = getelementptr inbounds i32, i32* %10, i64 0
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @FSHIFT, align 4
  %14 = ashr i32 %12, %13
  %15 = add nsw i32 1, %14
  %16 = load i32, i32* @HZ, align 4
  %17 = mul nsw i32 %15, %16
  %18 = sext i32 %17 to i64
  %19 = getelementptr i8, i8* %9, i64 %18
  store i8* %19, i8** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @led_blink_timer, i32 0, i32 0), align 8
  br label %27

20:                                               ; preds = %1
  %21 = load i8*, i8** @jiffies, align 8
  %22 = load i64, i64* %3, align 8
  %23 = load i32, i32* @HZ, align 4
  %24 = sext i32 %23 to i64
  %25 = mul i64 %22, %24
  %26 = getelementptr i8, i8* %21, i64 %25
  store i8* %26, i8** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @led_blink_timer, i32 0, i32 0), align 8
  br label %27

27:                                               ; preds = %20, %8
  %28 = call i32 @add_timer(%struct.TYPE_3__* @led_blink_timer)
  ret void
}

declare dso_local i32 @led_toggle(...) #1

declare dso_local i32 @add_timer(%struct.TYPE_3__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
