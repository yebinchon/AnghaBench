; ModuleID = '/home/carl/AnghaBench/linux/arch/arm/common/extr_scoop.c_scoop_gpio_direction_output.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm/common/extr_scoop.c_scoop_gpio_direction_output.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gpio_chip = type { i32 }
%struct.scoop_dev = type { i32, i64 }

@SCOOP_GPCR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gpio_chip*, i32, i32)* @scoop_gpio_direction_output to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @scoop_gpio_direction_output(%struct.gpio_chip* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.gpio_chip*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.scoop_dev*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i16, align 2
  store %struct.gpio_chip* %0, %struct.gpio_chip** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %10 = load %struct.gpio_chip*, %struct.gpio_chip** %4, align 8
  %11 = call %struct.scoop_dev* @gpiochip_get_data(%struct.gpio_chip* %10)
  store %struct.scoop_dev* %11, %struct.scoop_dev** %7, align 8
  %12 = load %struct.scoop_dev*, %struct.scoop_dev** %7, align 8
  %13 = getelementptr inbounds %struct.scoop_dev, %struct.scoop_dev* %12, i32 0, i32 0
  %14 = load i64, i64* %8, align 8
  %15 = call i32 @spin_lock_irqsave(i32* %13, i64 %14)
  %16 = load %struct.scoop_dev*, %struct.scoop_dev** %7, align 8
  %17 = load i32, i32* %5, align 4
  %18 = load i32, i32* %6, align 4
  %19 = call i32 @__scoop_gpio_set(%struct.scoop_dev* %16, i32 %17, i32 %18)
  %20 = load %struct.scoop_dev*, %struct.scoop_dev** %7, align 8
  %21 = getelementptr inbounds %struct.scoop_dev, %struct.scoop_dev* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @SCOOP_GPCR, align 8
  %24 = add nsw i64 %22, %23
  %25 = call zeroext i16 @ioread16(i64 %24)
  store i16 %25, i16* %9, align 2
  %26 = load i32, i32* %5, align 4
  %27 = add i32 %26, 1
  %28 = shl i32 1, %27
  %29 = load i16, i16* %9, align 2
  %30 = zext i16 %29 to i32
  %31 = or i32 %30, %28
  %32 = trunc i32 %31 to i16
  store i16 %32, i16* %9, align 2
  %33 = load i16, i16* %9, align 2
  %34 = load %struct.scoop_dev*, %struct.scoop_dev** %7, align 8
  %35 = getelementptr inbounds %struct.scoop_dev, %struct.scoop_dev* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @SCOOP_GPCR, align 8
  %38 = add nsw i64 %36, %37
  %39 = call i32 @iowrite16(i16 zeroext %33, i64 %38)
  %40 = load %struct.scoop_dev*, %struct.scoop_dev** %7, align 8
  %41 = getelementptr inbounds %struct.scoop_dev, %struct.scoop_dev* %40, i32 0, i32 0
  %42 = load i64, i64* %8, align 8
  %43 = call i32 @spin_unlock_irqrestore(i32* %41, i64 %42)
  ret i32 0
}

declare dso_local %struct.scoop_dev* @gpiochip_get_data(%struct.gpio_chip*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @__scoop_gpio_set(%struct.scoop_dev*, i32, i32) #1

declare dso_local zeroext i16 @ioread16(i64) #1

declare dso_local i32 @iowrite16(i16 zeroext, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
