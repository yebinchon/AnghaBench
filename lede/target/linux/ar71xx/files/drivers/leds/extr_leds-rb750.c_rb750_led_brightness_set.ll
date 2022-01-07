; ModuleID = '/home/carl/AnghaBench/lede/target/linux/ar71xx/files/drivers/leds/extr_leds-rb750.c_rb750_led_brightness_set.c'
source_filename = "/home/carl/AnghaBench/lede/target/linux/ar71xx/files/drivers/leds/extr_leds-rb750.c_rb750_led_brightness_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.led_classdev = type { i32 }
%struct.rb750_led_dev = type { i32, i32, i32 (i32, i32)* }

@LED_OFF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.led_classdev*, i32)* @rb750_led_brightness_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rb750_led_brightness_set(%struct.led_classdev* %0, i32 %1) #0 {
  %3 = alloca %struct.led_classdev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.rb750_led_dev*, align 8
  %6 = alloca i32, align 4
  store %struct.led_classdev* %0, %struct.led_classdev** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.led_classdev*, %struct.led_classdev** %3, align 8
  %8 = call %struct.rb750_led_dev* @to_rbled(%struct.led_classdev* %7)
  store %struct.rb750_led_dev* %8, %struct.rb750_led_dev** %5, align 8
  %9 = load i32, i32* %4, align 4
  %10 = load i32, i32* @LED_OFF, align 4
  %11 = icmp eq i32 %9, %10
  %12 = zext i1 %11 to i64
  %13 = select i1 %11, i32 0, i32 1
  store i32 %13, i32* %6, align 4
  %14 = load %struct.rb750_led_dev*, %struct.rb750_led_dev** %5, align 8
  %15 = getelementptr inbounds %struct.rb750_led_dev, %struct.rb750_led_dev* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load i32, i32* %6, align 4
  %18 = xor i32 %17, %16
  store i32 %18, i32* %6, align 4
  %19 = load i32, i32* %6, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %29

21:                                               ; preds = %2
  %22 = load %struct.rb750_led_dev*, %struct.rb750_led_dev** %5, align 8
  %23 = getelementptr inbounds %struct.rb750_led_dev, %struct.rb750_led_dev* %22, i32 0, i32 2
  %24 = load i32 (i32, i32)*, i32 (i32, i32)** %23, align 8
  %25 = load %struct.rb750_led_dev*, %struct.rb750_led_dev** %5, align 8
  %26 = getelementptr inbounds %struct.rb750_led_dev, %struct.rb750_led_dev* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = call i32 %24(i32 0, i32 %27)
  br label %37

29:                                               ; preds = %2
  %30 = load %struct.rb750_led_dev*, %struct.rb750_led_dev** %5, align 8
  %31 = getelementptr inbounds %struct.rb750_led_dev, %struct.rb750_led_dev* %30, i32 0, i32 2
  %32 = load i32 (i32, i32)*, i32 (i32, i32)** %31, align 8
  %33 = load %struct.rb750_led_dev*, %struct.rb750_led_dev** %5, align 8
  %34 = getelementptr inbounds %struct.rb750_led_dev, %struct.rb750_led_dev* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = call i32 %32(i32 %35, i32 0)
  br label %37

37:                                               ; preds = %29, %21
  ret void
}

declare dso_local %struct.rb750_led_dev* @to_rbled(%struct.led_classdev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
