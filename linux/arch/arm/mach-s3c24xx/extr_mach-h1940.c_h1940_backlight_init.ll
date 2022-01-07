; ModuleID = '/home/carl/AnghaBench/linux/arch/arm/mach-s3c24xx/extr_mach-h1940.c_h1940_backlight_init.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm/mach-s3c24xx/extr_mach-h1940.c_h1940_backlight_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }

@.str = private unnamed_addr constant [10 x i8] c"Backlight\00", align 1
@S3C_GPIO_PULL_NONE = common dso_local global i32 0, align 4
@S3C2410_GPB0_TOUT0 = common dso_local global i32 0, align 4
@H1940_LATCH_MAX1698_nSHUTDOWN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*)* @h1940_backlight_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @h1940_backlight_init(%struct.device* %0) #0 {
  %2 = alloca %struct.device*, align 8
  store %struct.device* %0, %struct.device** %2, align 8
  %3 = call i32 @S3C2410_GPB(i32 0)
  %4 = call i32 @gpio_request(i32 %3, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  %5 = call i32 @S3C2410_GPB(i32 0)
  %6 = call i32 @gpio_direction_output(i32 %5, i32 0)
  %7 = call i32 @S3C2410_GPB(i32 0)
  %8 = load i32, i32* @S3C_GPIO_PULL_NONE, align 4
  %9 = call i32 @s3c_gpio_setpull(i32 %7, i32 %8)
  %10 = call i32 @S3C2410_GPB(i32 0)
  %11 = load i32, i32* @S3C2410_GPB0_TOUT0, align 4
  %12 = call i32 @s3c_gpio_cfgpin(i32 %10, i32 %11)
  %13 = load i32, i32* @H1940_LATCH_MAX1698_nSHUTDOWN, align 4
  %14 = call i32 @gpio_set_value(i32 %13, i32 1)
  ret i32 0
}

declare dso_local i32 @gpio_request(i32, i8*) #1

declare dso_local i32 @S3C2410_GPB(i32) #1

declare dso_local i32 @gpio_direction_output(i32, i32) #1

declare dso_local i32 @s3c_gpio_setpull(i32, i32) #1

declare dso_local i32 @s3c_gpio_cfgpin(i32, i32) #1

declare dso_local i32 @gpio_set_value(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
