; ModuleID = '/home/carl/AnghaBench/lede/target/linux/generic/files/drivers/net/phy/extr_ar8327.c_ar8327_led_blink_set.c'
source_filename = "/home/carl/AnghaBench/lede/target/linux/generic/files/drivers/net/phy/extr_ar8327.c_ar8327_led_blink_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.led_classdev = type { i32 }
%struct.ar8327_led = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@AR8327_LED_PATTERN_BLINK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.led_classdev*, i64*, i64*)* @ar8327_led_blink_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ar8327_led_blink_set(%struct.led_classdev* %0, i64* %1, i64* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.led_classdev*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca %struct.ar8327_led*, align 8
  store %struct.led_classdev* %0, %struct.led_classdev** %5, align 8
  store i64* %1, i64** %6, align 8
  store i64* %2, i64** %7, align 8
  %9 = load %struct.led_classdev*, %struct.led_classdev** %5, align 8
  %10 = call %struct.ar8327_led* @led_cdev_to_ar8327_led(%struct.led_classdev* %9)
  store %struct.ar8327_led* %10, %struct.ar8327_led** %8, align 8
  %11 = load i64*, i64** %6, align 8
  %12 = load i64, i64* %11, align 8
  %13 = icmp eq i64 %12, 0
  br i1 %13, label %14, label %21

14:                                               ; preds = %3
  %15 = load i64*, i64** %7, align 8
  %16 = load i64, i64* %15, align 8
  %17 = icmp eq i64 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %14
  %19 = load i64*, i64** %6, align 8
  store i64 125, i64* %19, align 8
  %20 = load i64*, i64** %7, align 8
  store i64 125, i64* %20, align 8
  br label %21

21:                                               ; preds = %18, %14, %3
  %22 = load i64*, i64** %6, align 8
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 125
  br i1 %24, label %29, label %25

25:                                               ; preds = %21
  %26 = load i64*, i64** %7, align 8
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 125
  br i1 %28, label %29, label %32

29:                                               ; preds = %25, %21
  %30 = load i32, i32* @EINVAL, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %4, align 4
  br label %44

32:                                               ; preds = %25
  %33 = load %struct.ar8327_led*, %struct.ar8327_led** %8, align 8
  %34 = getelementptr inbounds %struct.ar8327_led, %struct.ar8327_led* %33, i32 0, i32 1
  %35 = call i32 @spin_lock(i32* %34)
  %36 = load %struct.ar8327_led*, %struct.ar8327_led** %8, align 8
  %37 = getelementptr inbounds %struct.ar8327_led, %struct.ar8327_led* %36, i32 0, i32 0
  store i32 0, i32* %37, align 4
  %38 = load %struct.ar8327_led*, %struct.ar8327_led** %8, align 8
  %39 = load i32, i32* @AR8327_LED_PATTERN_BLINK, align 4
  %40 = call i32 @ar8327_led_schedule_change(%struct.ar8327_led* %38, i32 %39)
  %41 = load %struct.ar8327_led*, %struct.ar8327_led** %8, align 8
  %42 = getelementptr inbounds %struct.ar8327_led, %struct.ar8327_led* %41, i32 0, i32 1
  %43 = call i32 @spin_unlock(i32* %42)
  store i32 0, i32* %4, align 4
  br label %44

44:                                               ; preds = %32, %29
  %45 = load i32, i32* %4, align 4
  ret i32 %45
}

declare dso_local %struct.ar8327_led* @led_cdev_to_ar8327_led(%struct.led_classdev*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @ar8327_led_schedule_change(%struct.ar8327_led*, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
