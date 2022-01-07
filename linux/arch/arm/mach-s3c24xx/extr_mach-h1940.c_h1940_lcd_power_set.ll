; ModuleID = '/home/carl/AnghaBench/linux/arch/arm/mach-s3c24xx/extr_mach-h1940.c_h1940_lcd_power_set.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm/mach-s3c24xx/extr_mach-h1940.c_h1940_lcd_power_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.plat_lcd_data = type { i32 }

@H1940_LATCH_LCD_P2 = common dso_local global i32 0, align 4
@H1940_LATCH_LCD_P3 = common dso_local global i32 0, align 4
@H1940_LATCH_LCD_P4 = common dso_local global i32 0, align 4
@H1940_LATCH_LCD_P1 = common dso_local global i32 0, align 4
@H1940_LATCH_LCD_P0 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.plat_lcd_data*, i32)* @h1940_lcd_power_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @h1940_lcd_power_set(%struct.plat_lcd_data* %0, i32 %1) #0 {
  %3 = alloca %struct.plat_lcd_data*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.plat_lcd_data* %0, %struct.plat_lcd_data** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 100, i32* %6, align 4
  %7 = load i32, i32* %4, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %41, label %9

9:                                                ; preds = %2
  %10 = call i32 @S3C2410_GPC(i32 0)
  %11 = call i32 @gpio_set_value(i32 %10, i32 0)
  br label %12

12:                                               ; preds = %22, %9
  %13 = call i32 @S3C2410_GPC(i32 6)
  %14 = call i32 @gpio_get_value(i32 %13)
  store i32 %14, i32* %5, align 4
  br label %15

15:                                               ; preds = %12
  %16 = load i32, i32* %5, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %22

18:                                               ; preds = %15
  %19 = load i32, i32* %6, align 4
  %20 = add nsw i32 %19, -1
  store i32 %20, i32* %6, align 4
  %21 = icmp ne i32 %19, 0
  br label %22

22:                                               ; preds = %18, %15
  %23 = phi i1 [ false, %15 ], [ %21, %18 ]
  br i1 %23, label %12, label %24

24:                                               ; preds = %22
  %25 = load i32, i32* @H1940_LATCH_LCD_P2, align 4
  %26 = call i32 @gpio_set_value(i32 %25, i32 0)
  %27 = load i32, i32* @H1940_LATCH_LCD_P3, align 4
  %28 = call i32 @gpio_set_value(i32 %27, i32 0)
  %29 = load i32, i32* @H1940_LATCH_LCD_P4, align 4
  %30 = call i32 @gpio_set_value(i32 %29, i32 0)
  %31 = call i32 @S3C2410_GPC(i32 1)
  %32 = call i32 @gpio_direction_output(i32 %31, i32 0)
  %33 = call i32 @S3C2410_GPC(i32 4)
  %34 = call i32 @gpio_direction_output(i32 %33, i32 0)
  %35 = load i32, i32* @H1940_LATCH_LCD_P1, align 4
  %36 = call i32 @gpio_set_value(i32 %35, i32 0)
  %37 = load i32, i32* @H1940_LATCH_LCD_P0, align 4
  %38 = call i32 @gpio_set_value(i32 %37, i32 0)
  %39 = call i32 @S3C2410_GPC(i32 5)
  %40 = call i32 @gpio_set_value(i32 %39, i32 0)
  br label %67

41:                                               ; preds = %2
  %42 = load i32, i32* @H1940_LATCH_LCD_P0, align 4
  %43 = call i32 @gpio_set_value(i32 %42, i32 1)
  %44 = load i32, i32* @H1940_LATCH_LCD_P1, align 4
  %45 = call i32 @gpio_set_value(i32 %44, i32 1)
  %46 = call i32 @S3C2410_GPC(i32 1)
  %47 = call i32 @gpio_direction_input(i32 %46)
  %48 = call i32 @S3C2410_GPC(i32 4)
  %49 = call i32 @gpio_direction_input(i32 %48)
  %50 = call i32 @mdelay(i32 10)
  %51 = call i32 @S3C2410_GPC(i32 1)
  %52 = call i32 @S3C_GPIO_SFN(i32 2)
  %53 = call i32 @s3c_gpio_cfgpin(i32 %51, i32 %52)
  %54 = call i32 @S3C2410_GPC(i32 4)
  %55 = call i32 @S3C_GPIO_SFN(i32 2)
  %56 = call i32 @s3c_gpio_cfgpin(i32 %54, i32 %55)
  %57 = call i32 @S3C2410_GPC(i32 5)
  %58 = call i32 @gpio_set_value(i32 %57, i32 1)
  %59 = call i32 @S3C2410_GPC(i32 0)
  %60 = call i32 @gpio_set_value(i32 %59, i32 1)
  %61 = load i32, i32* @H1940_LATCH_LCD_P3, align 4
  %62 = call i32 @gpio_set_value(i32 %61, i32 1)
  %63 = load i32, i32* @H1940_LATCH_LCD_P2, align 4
  %64 = call i32 @gpio_set_value(i32 %63, i32 1)
  %65 = load i32, i32* @H1940_LATCH_LCD_P4, align 4
  %66 = call i32 @gpio_set_value(i32 %65, i32 1)
  br label %67

67:                                               ; preds = %41, %24
  ret void
}

declare dso_local i32 @gpio_set_value(i32, i32) #1

declare dso_local i32 @S3C2410_GPC(i32) #1

declare dso_local i32 @gpio_get_value(i32) #1

declare dso_local i32 @gpio_direction_output(i32, i32) #1

declare dso_local i32 @gpio_direction_input(i32) #1

declare dso_local i32 @mdelay(i32) #1

declare dso_local i32 @s3c_gpio_cfgpin(i32, i32) #1

declare dso_local i32 @S3C_GPIO_SFN(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
