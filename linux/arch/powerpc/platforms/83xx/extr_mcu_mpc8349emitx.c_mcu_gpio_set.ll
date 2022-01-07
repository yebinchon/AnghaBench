; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/platforms/83xx/extr_mcu_mpc8349emitx.c_mcu_gpio_set.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/platforms/83xx/extr_mcu_mpc8349emitx.c_mcu_gpio_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gpio_chip = type { i32 }
%struct.mcu = type { i32, i32, i32 }

@MCU_REG_CTRL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gpio_chip*, i32, i32)* @mcu_gpio_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mcu_gpio_set(%struct.gpio_chip* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.gpio_chip*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.mcu*, align 8
  %8 = alloca i32, align 4
  store %struct.gpio_chip* %0, %struct.gpio_chip** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load %struct.gpio_chip*, %struct.gpio_chip** %4, align 8
  %10 = call %struct.mcu* @gpiochip_get_data(%struct.gpio_chip* %9)
  store %struct.mcu* %10, %struct.mcu** %7, align 8
  %11 = load i32, i32* %5, align 4
  %12 = add i32 4, %11
  %13 = shl i32 1, %12
  store i32 %13, i32* %8, align 4
  %14 = load %struct.mcu*, %struct.mcu** %7, align 8
  %15 = getelementptr inbounds %struct.mcu, %struct.mcu* %14, i32 0, i32 1
  %16 = call i32 @mutex_lock(i32* %15)
  %17 = load i32, i32* %6, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %26

19:                                               ; preds = %3
  %20 = load i32, i32* %8, align 4
  %21 = xor i32 %20, -1
  %22 = load %struct.mcu*, %struct.mcu** %7, align 8
  %23 = getelementptr inbounds %struct.mcu, %struct.mcu* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = and i32 %24, %21
  store i32 %25, i32* %23, align 4
  br label %32

26:                                               ; preds = %3
  %27 = load i32, i32* %8, align 4
  %28 = load %struct.mcu*, %struct.mcu** %7, align 8
  %29 = getelementptr inbounds %struct.mcu, %struct.mcu* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = or i32 %30, %27
  store i32 %31, i32* %29, align 4
  br label %32

32:                                               ; preds = %26, %19
  %33 = load %struct.mcu*, %struct.mcu** %7, align 8
  %34 = getelementptr inbounds %struct.mcu, %struct.mcu* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @MCU_REG_CTRL, align 4
  %37 = load %struct.mcu*, %struct.mcu** %7, align 8
  %38 = getelementptr inbounds %struct.mcu, %struct.mcu* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @i2c_smbus_write_byte_data(i32 %35, i32 %36, i32 %39)
  %41 = load %struct.mcu*, %struct.mcu** %7, align 8
  %42 = getelementptr inbounds %struct.mcu, %struct.mcu* %41, i32 0, i32 1
  %43 = call i32 @mutex_unlock(i32* %42)
  ret void
}

declare dso_local %struct.mcu* @gpiochip_get_data(%struct.gpio_chip*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @i2c_smbus_write_byte_data(i32, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
