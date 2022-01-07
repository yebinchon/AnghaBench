; ModuleID = '/home/carl/AnghaBench/lede/target/linux/generic/files/drivers/net/phy/extr_ar8327.c_ar8327_led_set_brightness.c'
source_filename = "/home/carl/AnghaBench/lede/target/linux/generic/files/drivers/net/phy/extr_ar8327.c_ar8327_led_set_brightness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.led_classdev = type { i32 }
%struct.ar8327_led = type { i32, i32, i32 }

@LED_OFF = common dso_local global i32 0, align 4
@AR8327_LED_PATTERN_ON = common dso_local global i32 0, align 4
@AR8327_LED_PATTERN_OFF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.led_classdev*, i32)* @ar8327_led_set_brightness to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ar8327_led_set_brightness(%struct.led_classdev* %0, i32 %1) #0 {
  %3 = alloca %struct.led_classdev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ar8327_led*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.led_classdev* %0, %struct.led_classdev** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.led_classdev*, %struct.led_classdev** %3, align 8
  %9 = call %struct.ar8327_led* @led_cdev_to_ar8327_led(%struct.led_classdev* %8)
  store %struct.ar8327_led* %9, %struct.ar8327_led** %5, align 8
  %10 = load i32, i32* %4, align 4
  %11 = load i32, i32* @LED_OFF, align 4
  %12 = icmp ne i32 %10, %11
  %13 = zext i1 %12 to i32
  store i32 %13, i32* %7, align 4
  %14 = load %struct.ar8327_led*, %struct.ar8327_led** %5, align 8
  %15 = getelementptr inbounds %struct.ar8327_led, %struct.ar8327_led* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* %7, align 4
  %18 = xor i32 %17, %16
  store i32 %18, i32* %7, align 4
  %19 = load i32, i32* %7, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %2
  %22 = load i32, i32* @AR8327_LED_PATTERN_ON, align 4
  br label %25

23:                                               ; preds = %2
  %24 = load i32, i32* @AR8327_LED_PATTERN_OFF, align 4
  br label %25

25:                                               ; preds = %23, %21
  %26 = phi i32 [ %22, %21 ], [ %24, %23 ]
  store i32 %26, i32* %6, align 4
  %27 = load %struct.ar8327_led*, %struct.ar8327_led** %5, align 8
  %28 = getelementptr inbounds %struct.ar8327_led, %struct.ar8327_led* %27, i32 0, i32 2
  %29 = call i32 @spin_lock(i32* %28)
  %30 = load %struct.ar8327_led*, %struct.ar8327_led** %5, align 8
  %31 = getelementptr inbounds %struct.ar8327_led, %struct.ar8327_led* %30, i32 0, i32 1
  store i32 0, i32* %31, align 4
  %32 = load %struct.ar8327_led*, %struct.ar8327_led** %5, align 8
  %33 = load i32, i32* %6, align 4
  %34 = call i32 @ar8327_led_schedule_change(%struct.ar8327_led* %32, i32 %33)
  %35 = load %struct.ar8327_led*, %struct.ar8327_led** %5, align 8
  %36 = getelementptr inbounds %struct.ar8327_led, %struct.ar8327_led* %35, i32 0, i32 2
  %37 = call i32 @spin_unlock(i32* %36)
  ret void
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
