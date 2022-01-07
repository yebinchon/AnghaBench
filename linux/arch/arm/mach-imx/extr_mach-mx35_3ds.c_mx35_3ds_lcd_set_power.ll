; ModuleID = '/home/carl/AnghaBench/linux/arch/arm/mach-imx/extr_mach-mx35_3ds.c_mx35_3ds_lcd_set_power.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm/mach-imx/extr_mach-mx35_3ds.c_mx35_3ds_lcd_set_power.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.plat_lcd_data = type { i32 }
%struct.gpio_chip = type { i64 }

@lcd_power_gpio = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [11 x i8] c"mc9s08dz60\00", align 1
@mc9s08dz60_gpiochip_match = common dso_local global i32 0, align 4
@GPIO_MC9S08DZ60_LCD_ENABLE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [10 x i8] c"lcd_power\00", align 1
@.str.2 = private unnamed_addr constant [32 x i8] c"error: gpio already requested!\0A\00", align 1
@ENXIO = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [41 x i8] c"error: didn't find mc9s08dz60 gpio chip\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.plat_lcd_data*, i32)* @mx35_3ds_lcd_set_power to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mx35_3ds_lcd_set_power(%struct.plat_lcd_data* %0, i32 %1) #0 {
  %3 = alloca %struct.plat_lcd_data*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.gpio_chip*, align 8
  store %struct.plat_lcd_data* %0, %struct.plat_lcd_data** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i64, i64* @lcd_power_gpio, align 8
  %7 = call i64 @gpio_is_valid(i64 %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %31, label %9

9:                                                ; preds = %2
  %10 = load i32, i32* @mc9s08dz60_gpiochip_match, align 4
  %11 = call %struct.gpio_chip* @gpiochip_find(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 %10)
  store %struct.gpio_chip* %11, %struct.gpio_chip** %5, align 8
  %12 = load %struct.gpio_chip*, %struct.gpio_chip** %5, align 8
  %13 = icmp ne %struct.gpio_chip* %12, null
  br i1 %13, label %14, label %28

14:                                               ; preds = %9
  %15 = load %struct.gpio_chip*, %struct.gpio_chip** %5, align 8
  %16 = getelementptr inbounds %struct.gpio_chip, %struct.gpio_chip* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @GPIO_MC9S08DZ60_LCD_ENABLE, align 8
  %19 = add nsw i64 %17, %18
  store i64 %19, i64* @lcd_power_gpio, align 8
  %20 = load i64, i64* @lcd_power_gpio, align 8
  %21 = call i64 @gpio_request(i64 %20, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  %22 = icmp slt i64 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %14
  %24 = call i32 @pr_err(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0))
  %25 = load i64, i64* @ENXIO, align 8
  %26 = sub nsw i64 0, %25
  store i64 %26, i64* @lcd_power_gpio, align 8
  br label %27

27:                                               ; preds = %23, %14
  br label %30

28:                                               ; preds = %9
  %29 = call i32 @pr_err(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.3, i64 0, i64 0))
  br label %30

30:                                               ; preds = %28, %27
  br label %31

31:                                               ; preds = %30, %2
  %32 = load i64, i64* @lcd_power_gpio, align 8
  %33 = call i64 @gpio_is_valid(i64 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %39

35:                                               ; preds = %31
  %36 = load i64, i64* @lcd_power_gpio, align 8
  %37 = load i32, i32* %4, align 4
  %38 = call i32 @gpio_set_value_cansleep(i64 %36, i32 %37)
  br label %39

39:                                               ; preds = %35, %31
  ret void
}

declare dso_local i64 @gpio_is_valid(i64) #1

declare dso_local %struct.gpio_chip* @gpiochip_find(i8*, i32) #1

declare dso_local i64 @gpio_request(i64, i8*) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @gpio_set_value_cansleep(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
