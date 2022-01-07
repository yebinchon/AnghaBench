; ModuleID = '/home/carl/AnghaBench/linux/arch/arm/mach-s3c24xx/extr_pm.c_s3c_pm_check_resume_pin.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm/mach-s3c24xx/extr_pm.c_s3c_pm_check_resume_pin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@s3c_irqwake_intmask = common dso_local global i64 0, align 8
@s3c_irqwake_eintmask = common dso_local global i64 0, align 8
@S3C2410_GPIO_IRQ = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [31 x i8] c"Leaving IRQ %d (pin %d) as is\0A\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"Disabling IRQ %d (pin %d)\0A\00", align 1
@S3C2410_GPIO_INPUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32)* @s3c_pm_check_resume_pin to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @s3c_pm_check_resume_pin(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %8 = load i32, i32* %3, align 4
  %9 = call i32 @gpio_to_irq(i32 %8)
  store i32 %9, i32* %7, align 4
  %10 = load i32, i32* %4, align 4
  %11 = icmp ult i32 %10, 4
  br i1 %11, label %12, label %18

12:                                               ; preds = %2
  %13 = load i64, i64* @s3c_irqwake_intmask, align 8
  %14 = load i32, i32* %4, align 4
  %15 = zext i32 %14 to i64
  %16 = shl i64 1, %15
  %17 = and i64 %13, %16
  store i64 %17, i64* %5, align 8
  br label %24

18:                                               ; preds = %2
  %19 = load i64, i64* @s3c_irqwake_eintmask, align 8
  %20 = load i32, i32* %4, align 4
  %21 = zext i32 %20 to i64
  %22 = shl i64 1, %21
  %23 = and i64 %19, %22
  store i64 %23, i64* %5, align 8
  br label %24

24:                                               ; preds = %18, %12
  %25 = load i32, i32* %3, align 4
  %26 = call i64 @s3c_gpio_getcfg(i32 %25)
  store i64 %26, i64* %6, align 8
  %27 = load i64, i64* %5, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %38, label %29

29:                                               ; preds = %24
  %30 = load i64, i64* %6, align 8
  %31 = load i64, i64* @S3C2410_GPIO_IRQ, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %37

33:                                               ; preds = %29
  %34 = load i32, i32* %7, align 4
  %35 = load i32, i32* %3, align 4
  %36 = call i32 @S3C_PMDBG(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %34, i32 %35)
  br label %37

37:                                               ; preds = %33, %29
  br label %50

38:                                               ; preds = %24
  %39 = load i64, i64* %6, align 8
  %40 = load i64, i64* @S3C2410_GPIO_IRQ, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %42, label %49

42:                                               ; preds = %38
  %43 = load i32, i32* %7, align 4
  %44 = load i32, i32* %3, align 4
  %45 = call i32 @S3C_PMDBG(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 %43, i32 %44)
  %46 = load i32, i32* %3, align 4
  %47 = load i32, i32* @S3C2410_GPIO_INPUT, align 4
  %48 = call i32 @s3c_gpio_cfgpin(i32 %46, i32 %47)
  br label %49

49:                                               ; preds = %42, %38
  br label %50

50:                                               ; preds = %49, %37
  ret void
}

declare dso_local i32 @gpio_to_irq(i32) #1

declare dso_local i64 @s3c_gpio_getcfg(i32) #1

declare dso_local i32 @S3C_PMDBG(i8*, i32, i32) #1

declare dso_local i32 @s3c_gpio_cfgpin(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
