; ModuleID = '/home/carl/AnghaBench/linux/arch/sh/boards/mach-x3proto/extr_gpio.c_x3proto_gpio_direction_input.c'
source_filename = "/home/carl/AnghaBench/linux/arch/sh/boards/mach-x3proto/extr_gpio.c_x3proto_gpio_direction_input.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gpio_chip = type { i32 }

@x3proto_gpio_lock = common dso_local global i32 0, align 4
@KEYCTLR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gpio_chip*, i32)* @x3proto_gpio_direction_input to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @x3proto_gpio_direction_input(%struct.gpio_chip* %0, i32 %1) #0 {
  %3 = alloca %struct.gpio_chip*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.gpio_chip* %0, %struct.gpio_chip** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load i64, i64* %5, align 8
  %8 = call i32 @spin_lock_irqsave(i32* @x3proto_gpio_lock, i64 %7)
  %9 = load i32, i32* @KEYCTLR, align 4
  %10 = call i32 @__raw_readw(i32 %9)
  store i32 %10, i32* %6, align 4
  %11 = load i32, i32* %4, align 4
  %12 = shl i32 1, %11
  %13 = load i32, i32* %6, align 4
  %14 = or i32 %13, %12
  store i32 %14, i32* %6, align 4
  %15 = load i32, i32* %6, align 4
  %16 = load i32, i32* @KEYCTLR, align 4
  %17 = call i32 @__raw_writew(i32 %15, i32 %16)
  %18 = load i64, i64* %5, align 8
  %19 = call i32 @spin_unlock_irqrestore(i32* @x3proto_gpio_lock, i64 %18)
  ret i32 0
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @__raw_readw(i32) #1

declare dso_local i32 @__raw_writew(i32, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
