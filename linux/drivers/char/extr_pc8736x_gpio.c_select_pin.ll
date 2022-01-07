; ModuleID = '/home/carl/AnghaBench/linux/drivers/char/extr_pc8736x_gpio.c_select_pin.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/char/extr_pc8736x_gpio.c_select_pin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SIO_GPIO_UNIT = common dso_local global i32 0, align 4
@SIO_GPIO_PIN_SELECT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @select_pin to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @select_pin(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* @SIO_GPIO_UNIT, align 4
  %4 = call i32 @device_select(i32 %3)
  %5 = load i32, i32* @SIO_GPIO_PIN_SELECT, align 4
  %6 = load i32, i32* %2, align 4
  %7 = shl i32 %6, 1
  %8 = and i32 %7, 240
  %9 = load i32, i32* %2, align 4
  %10 = and i32 %9, 7
  %11 = or i32 %8, %10
  %12 = call i32 @superio_outb(i32 %5, i32 %11)
  ret void
}

declare dso_local i32 @device_select(i32) #1

declare dso_local i32 @superio_outb(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
