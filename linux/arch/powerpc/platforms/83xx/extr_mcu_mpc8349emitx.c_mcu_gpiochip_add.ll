; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/platforms/83xx/extr_mcu_mpc8349emitx.c_mcu_gpiochip_add.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/platforms/83xx/extr_mcu_mpc8349emitx.c_mcu_gpiochip_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mcu = type { %struct.gpio_chip }
%struct.gpio_chip = type { i32, i32, %struct.device_node*, i32, i32, i32, i32, i32 }
%struct.device_node = type { i32 }

@.str = private unnamed_addr constant [21 x i8] c"fsl,mcu-mpc8349emitx\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@THIS_MODULE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"%pOF\00", align 1
@MCU_NUM_GPIO = common dso_local global i32 0, align 4
@mcu_gpio_set = common dso_local global i32 0, align 4
@mcu_gpio_dir_out = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mcu*)* @mcu_gpiochip_add to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mcu_gpiochip_add(%struct.mcu* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mcu*, align 8
  %4 = alloca %struct.device_node*, align 8
  %5 = alloca %struct.gpio_chip*, align 8
  store %struct.mcu* %0, %struct.mcu** %3, align 8
  %6 = load %struct.mcu*, %struct.mcu** %3, align 8
  %7 = getelementptr inbounds %struct.mcu, %struct.mcu* %6, i32 0, i32 0
  store %struct.gpio_chip* %7, %struct.gpio_chip** %5, align 8
  %8 = call %struct.device_node* @of_find_compatible_node(i32* null, i32* null, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  store %struct.device_node* %8, %struct.device_node** %4, align 8
  %9 = load %struct.device_node*, %struct.device_node** %4, align 8
  %10 = icmp ne %struct.device_node* %9, null
  br i1 %10, label %14, label %11

11:                                               ; preds = %1
  %12 = load i32, i32* @ENODEV, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %2, align 4
  br label %42

14:                                               ; preds = %1
  %15 = load i32, i32* @THIS_MODULE, align 4
  %16 = load %struct.gpio_chip*, %struct.gpio_chip** %5, align 8
  %17 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %16, i32 0, i32 7
  store i32 %15, i32* %17, align 8
  %18 = load i32, i32* @GFP_KERNEL, align 4
  %19 = load %struct.device_node*, %struct.device_node** %4, align 8
  %20 = call i32 @kasprintf(i32 %18, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), %struct.device_node* %19)
  %21 = load %struct.gpio_chip*, %struct.gpio_chip** %5, align 8
  %22 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %21, i32 0, i32 6
  store i32 %20, i32* %22, align 4
  %23 = load %struct.gpio_chip*, %struct.gpio_chip** %5, align 8
  %24 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %23, i32 0, i32 0
  store i32 1, i32* %24, align 8
  %25 = load i32, i32* @MCU_NUM_GPIO, align 4
  %26 = load %struct.gpio_chip*, %struct.gpio_chip** %5, align 8
  %27 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %26, i32 0, i32 5
  store i32 %25, i32* %27, align 8
  %28 = load %struct.gpio_chip*, %struct.gpio_chip** %5, align 8
  %29 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %28, i32 0, i32 1
  store i32 -1, i32* %29, align 4
  %30 = load i32, i32* @mcu_gpio_set, align 4
  %31 = load %struct.gpio_chip*, %struct.gpio_chip** %5, align 8
  %32 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %31, i32 0, i32 4
  store i32 %30, i32* %32, align 4
  %33 = load i32, i32* @mcu_gpio_dir_out, align 4
  %34 = load %struct.gpio_chip*, %struct.gpio_chip** %5, align 8
  %35 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %34, i32 0, i32 3
  store i32 %33, i32* %35, align 8
  %36 = load %struct.device_node*, %struct.device_node** %4, align 8
  %37 = load %struct.gpio_chip*, %struct.gpio_chip** %5, align 8
  %38 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %37, i32 0, i32 2
  store %struct.device_node* %36, %struct.device_node** %38, align 8
  %39 = load %struct.gpio_chip*, %struct.gpio_chip** %5, align 8
  %40 = load %struct.mcu*, %struct.mcu** %3, align 8
  %41 = call i32 @gpiochip_add_data(%struct.gpio_chip* %39, %struct.mcu* %40)
  store i32 %41, i32* %2, align 4
  br label %42

42:                                               ; preds = %14, %11
  %43 = load i32, i32* %2, align 4
  ret i32 %43
}

declare dso_local %struct.device_node* @of_find_compatible_node(i32*, i32*, i8*) #1

declare dso_local i32 @kasprintf(i32, i8*, %struct.device_node*) #1

declare dso_local i32 @gpiochip_add_data(%struct.gpio_chip*, %struct.mcu*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
