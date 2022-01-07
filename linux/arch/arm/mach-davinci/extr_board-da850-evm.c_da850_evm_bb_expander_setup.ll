; ModuleID = '/home/carl/AnghaBench/linux/arch/arm/mach-davinci/extr_board-da850-evm.c_da850_evm_bb_expander_setup.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm/mach-davinci/extr_board-da850-evm.c_da850_evm_bb_expander_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32 }

@da850_evm_bb_keys_device = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [48 x i8] c"Could not register baseboard GPIO expander keys\00", align 1
@da850_evm_bb_leds_gpio_table = common dso_local global i32 0, align 4
@da850_evm_bb_leds_device = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [48 x i8] c"Could not register baseboard GPIO expander LEDs\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, i32, i32, i8*)* @da850_evm_bb_expander_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @da850_evm_bb_expander_setup(%struct.i2c_client* %0, i32 %1, i32 %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.i2c_client*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  %11 = load i32, i32* %7, align 4
  %12 = call i32 @da850_evm_bb_keys_init(i32 %11)
  %13 = call i32 @platform_device_register(i32* @da850_evm_bb_keys_device)
  store i32 %13, i32* %10, align 4
  %14 = load i32, i32* %10, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %4
  %17 = call i32 @pr_warn(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0))
  br label %28

18:                                               ; preds = %4
  %19 = call i32 @gpiod_add_lookup_table(i32* @da850_evm_bb_leds_gpio_table)
  %20 = call i32 @platform_device_register(i32* @da850_evm_bb_leds_device)
  store i32 %20, i32* %10, align 4
  %21 = load i32, i32* %10, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %18
  %24 = call i32 @pr_warn(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0))
  br label %26

25:                                               ; preds = %18
  store i32 0, i32* %5, align 4
  br label %30

26:                                               ; preds = %23
  %27 = call i32 @platform_device_unregister(i32* @da850_evm_bb_keys_device)
  br label %28

28:                                               ; preds = %26, %16
  %29 = load i32, i32* %10, align 4
  store i32 %29, i32* %5, align 4
  br label %30

30:                                               ; preds = %28, %25
  %31 = load i32, i32* %5, align 4
  ret i32 %31
}

declare dso_local i32 @da850_evm_bb_keys_init(i32) #1

declare dso_local i32 @platform_device_register(i32*) #1

declare dso_local i32 @pr_warn(i8*) #1

declare dso_local i32 @gpiod_add_lookup_table(i32*) #1

declare dso_local i32 @platform_device_unregister(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
