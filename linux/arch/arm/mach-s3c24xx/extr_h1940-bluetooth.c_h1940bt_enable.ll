; ModuleID = '/home/carl/AnghaBench/linux/arch/arm/mach-s3c24xx/extr_h1940-bluetooth.c_h1940bt_enable.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm/mach-s3c24xx/extr_h1940-bluetooth.c_h1940bt_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@H1940_LATCH_BLUETOOTH_POWER = common dso_local global i32 0, align 4
@GPIO_LED_BLINK = common dso_local global i32 0, align 4
@GPIO_LED_NO_BLINK_LOW = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @h1940bt_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @h1940bt_enable(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  %4 = icmp ne i32 %3, 0
  br i1 %4, label %5, label %16

5:                                                ; preds = %1
  %6 = load i32, i32* @H1940_LATCH_BLUETOOTH_POWER, align 4
  %7 = call i32 @gpio_set_value(i32 %6, i32 1)
  %8 = call i32 @mdelay(i32 10)
  %9 = call i32 @S3C2410_GPH(i32 1)
  %10 = call i32 @gpio_set_value(i32 %9, i32 1)
  %11 = call i32 @mdelay(i32 10)
  %12 = call i32 @S3C2410_GPH(i32 1)
  %13 = call i32 @gpio_set_value(i32 %12, i32 0)
  %14 = load i32, i32* @GPIO_LED_BLINK, align 4
  %15 = call i32 @h1940_led_blink_set(i32* null, i32 %14, i32* null, i32* null)
  br label %27

16:                                               ; preds = %1
  %17 = call i32 @S3C2410_GPH(i32 1)
  %18 = call i32 @gpio_set_value(i32 %17, i32 1)
  %19 = call i32 @mdelay(i32 10)
  %20 = call i32 @S3C2410_GPH(i32 1)
  %21 = call i32 @gpio_set_value(i32 %20, i32 0)
  %22 = call i32 @mdelay(i32 10)
  %23 = load i32, i32* @H1940_LATCH_BLUETOOTH_POWER, align 4
  %24 = call i32 @gpio_set_value(i32 %23, i32 0)
  %25 = load i32, i32* @GPIO_LED_NO_BLINK_LOW, align 4
  %26 = call i32 @h1940_led_blink_set(i32* null, i32 %25, i32* null, i32* null)
  br label %27

27:                                               ; preds = %16, %5
  ret void
}

declare dso_local i32 @gpio_set_value(i32, i32) #1

declare dso_local i32 @mdelay(i32) #1

declare dso_local i32 @S3C2410_GPH(i32) #1

declare dso_local i32 @h1940_led_blink_set(i32*, i32, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
