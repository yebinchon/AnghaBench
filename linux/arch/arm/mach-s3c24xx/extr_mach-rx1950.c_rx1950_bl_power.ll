; ModuleID = '/home/carl/AnghaBench/linux/arch/arm/mach-s3c24xx/extr_mach-rx1950.c_rx1950_bl_power.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm/mach-s3c24xx/extr_mach-rx1950.c_rx1950_bl_power.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@rx1950_bl_power.enabled = internal global i32 0, align 4
@S3C2410_GPB0_TOUT0 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @rx1950_bl_power to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rx1950_bl_power(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* @rx1950_bl_power.enabled, align 4
  %4 = load i32, i32* %2, align 4
  %5 = icmp eq i32 %3, %4
  br i1 %5, label %6, label %7

6:                                                ; preds = %1
  br label %22

7:                                                ; preds = %1
  %8 = load i32, i32* %2, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %13, label %10

10:                                               ; preds = %7
  %11 = call i32 @S3C2410_GPB(i32 0)
  %12 = call i32 @gpio_direction_output(i32 %11, i32 0)
  br label %20

13:                                               ; preds = %7
  %14 = call i32 @S3C2410_GPB(i32 0)
  %15 = call i32 @gpio_direction_output(i32 %14, i32 1)
  %16 = call i32 @ndelay(i32 48000)
  %17 = call i32 @S3C2410_GPB(i32 0)
  %18 = load i32, i32* @S3C2410_GPB0_TOUT0, align 4
  %19 = call i32 @s3c_gpio_cfgpin(i32 %17, i32 %18)
  br label %20

20:                                               ; preds = %13, %10
  %21 = load i32, i32* %2, align 4
  store i32 %21, i32* @rx1950_bl_power.enabled, align 4
  br label %22

22:                                               ; preds = %20, %6
  ret void
}

declare dso_local i32 @gpio_direction_output(i32, i32) #1

declare dso_local i32 @S3C2410_GPB(i32) #1

declare dso_local i32 @ndelay(i32) #1

declare dso_local i32 @s3c_gpio_cfgpin(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
