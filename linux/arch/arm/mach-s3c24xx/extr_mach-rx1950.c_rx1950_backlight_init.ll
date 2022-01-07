; ModuleID = '/home/carl/AnghaBench/linux/arch/arm/mach-s3c24xx/extr_mach-rx1950.c_rx1950_backlight_init.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm/mach-s3c24xx/extr_mach-rx1950.c_rx1950_backlight_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }

@.str = private unnamed_addr constant [10 x i8] c"Backlight\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"RX1950 LCD\00", align 1
@lcd_pwm = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [38 x i8] c"Unable to request PWM for LCD power!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*)* @rx1950_backlight_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rx1950_backlight_init(%struct.device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.device*, align 8
  store %struct.device* %0, %struct.device** %3, align 8
  %4 = call i32 @S3C2410_GPB(i32 0)
  %5 = call i32 @gpio_request(i32 %4, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  %6 = call i32 @WARN_ON(i32 %5)
  %7 = call i32 @pwm_request(i32 1, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  store i32 %7, i32* @lcd_pwm, align 4
  %8 = load i32, i32* @lcd_pwm, align 4
  %9 = call i64 @IS_ERR(i32 %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %16

11:                                               ; preds = %1
  %12 = load %struct.device*, %struct.device** %3, align 8
  %13 = call i32 @dev_err(%struct.device* %12, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0))
  %14 = load i32, i32* @lcd_pwm, align 4
  %15 = call i32 @PTR_ERR(i32 %14)
  store i32 %15, i32* %2, align 4
  br label %21

16:                                               ; preds = %1
  %17 = load i32, i32* @lcd_pwm, align 4
  %18 = call i32 @pwm_apply_args(i32 %17)
  %19 = call i32 @rx1950_lcd_power(i32 1)
  %20 = call i32 @rx1950_bl_power(i32 1)
  store i32 0, i32* %2, align 4
  br label %21

21:                                               ; preds = %16, %11
  %22 = load i32, i32* %2, align 4
  ret i32 %22
}

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @gpio_request(i32, i8*) #1

declare dso_local i32 @S3C2410_GPB(i32) #1

declare dso_local i32 @pwm_request(i32, i8*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @pwm_apply_args(i32) #1

declare dso_local i32 @rx1950_lcd_power(i32) #1

declare dso_local i32 @rx1950_bl_power(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
