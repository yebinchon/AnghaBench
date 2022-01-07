; ModuleID = '/home/carl/AnghaBench/linux/arch/arm/common/extr_scoop.c_scoop_gpio_direction_input.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm/common/extr_scoop.c_scoop_gpio_direction_input.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gpio_chip = type { i32 }
%struct.scoop_dev = type { i32, i64 }

@SCOOP_GPCR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gpio_chip*, i32)* @scoop_gpio_direction_input to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @scoop_gpio_direction_input(%struct.gpio_chip* %0, i32 %1) #0 {
  %3 = alloca %struct.gpio_chip*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.scoop_dev*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i16, align 2
  store %struct.gpio_chip* %0, %struct.gpio_chip** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.gpio_chip*, %struct.gpio_chip** %3, align 8
  %9 = call %struct.scoop_dev* @gpiochip_get_data(%struct.gpio_chip* %8)
  store %struct.scoop_dev* %9, %struct.scoop_dev** %5, align 8
  %10 = load %struct.scoop_dev*, %struct.scoop_dev** %5, align 8
  %11 = getelementptr inbounds %struct.scoop_dev, %struct.scoop_dev* %10, i32 0, i32 0
  %12 = load i64, i64* %6, align 8
  %13 = call i32 @spin_lock_irqsave(i32* %11, i64 %12)
  %14 = load %struct.scoop_dev*, %struct.scoop_dev** %5, align 8
  %15 = getelementptr inbounds %struct.scoop_dev, %struct.scoop_dev* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @SCOOP_GPCR, align 8
  %18 = add nsw i64 %16, %17
  %19 = call zeroext i16 @ioread16(i64 %18)
  store i16 %19, i16* %7, align 2
  %20 = load i32, i32* %4, align 4
  %21 = add i32 %20, 1
  %22 = shl i32 1, %21
  %23 = xor i32 %22, -1
  %24 = load i16, i16* %7, align 2
  %25 = zext i16 %24 to i32
  %26 = and i32 %25, %23
  %27 = trunc i32 %26 to i16
  store i16 %27, i16* %7, align 2
  %28 = load i16, i16* %7, align 2
  %29 = load %struct.scoop_dev*, %struct.scoop_dev** %5, align 8
  %30 = getelementptr inbounds %struct.scoop_dev, %struct.scoop_dev* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @SCOOP_GPCR, align 8
  %33 = add nsw i64 %31, %32
  %34 = call i32 @iowrite16(i16 zeroext %28, i64 %33)
  %35 = load %struct.scoop_dev*, %struct.scoop_dev** %5, align 8
  %36 = getelementptr inbounds %struct.scoop_dev, %struct.scoop_dev* %35, i32 0, i32 0
  %37 = load i64, i64* %6, align 8
  %38 = call i32 @spin_unlock_irqrestore(i32* %36, i64 %37)
  ret i32 0
}

declare dso_local %struct.scoop_dev* @gpiochip_get_data(%struct.gpio_chip*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local zeroext i16 @ioread16(i64) #1

declare dso_local i32 @iowrite16(i16 zeroext, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
