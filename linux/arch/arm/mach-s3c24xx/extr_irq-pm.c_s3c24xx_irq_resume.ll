; ModuleID = '/home/carl/AnghaBench/linux/arch/arm/mach-s3c24xx/extr_irq-pm.c_s3c24xx_irq_resume.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm/mach-s3c24xx/extr_irq-pm.c_s3c24xx_irq_resume.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@save_extint = common dso_local global i32* null, align 8
@S3C24XX_EXTINT0 = common dso_local global i64 0, align 8
@save_eintflt = common dso_local global i32* null, align 8
@S3C24XX_EINFLT0 = common dso_local global i64 0, align 8
@irq_save = common dso_local global i32* null, align 8
@save_eintmask = common dso_local global i32 0, align 4
@S3C24XX_EINTMASK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @s3c24xx_irq_resume to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @s3c24xx_irq_resume() #0 {
  %1 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  br label %2

2:                                                ; preds = %19, %0
  %3 = load i32, i32* %1, align 4
  %4 = load i32*, i32** @save_extint, align 8
  %5 = call i32 @ARRAY_SIZE(i32* %4)
  %6 = icmp ult i32 %3, %5
  br i1 %6, label %7, label %22

7:                                                ; preds = %2
  %8 = load i32*, i32** @save_extint, align 8
  %9 = load i32, i32* %1, align 4
  %10 = zext i32 %9 to i64
  %11 = getelementptr inbounds i32, i32* %8, i64 %10
  %12 = load i32, i32* %11, align 4
  %13 = load i64, i64* @S3C24XX_EXTINT0, align 8
  %14 = load i32, i32* %1, align 4
  %15 = mul i32 %14, 4
  %16 = zext i32 %15 to i64
  %17 = add nsw i64 %13, %16
  %18 = call i32 @__raw_writel(i32 %12, i64 %17)
  br label %19

19:                                               ; preds = %7
  %20 = load i32, i32* %1, align 4
  %21 = add i32 %20, 1
  store i32 %21, i32* %1, align 4
  br label %2

22:                                               ; preds = %2
  store i32 0, i32* %1, align 4
  br label %23

23:                                               ; preds = %40, %22
  %24 = load i32, i32* %1, align 4
  %25 = load i32*, i32** @save_eintflt, align 8
  %26 = call i32 @ARRAY_SIZE(i32* %25)
  %27 = icmp ult i32 %24, %26
  br i1 %27, label %28, label %43

28:                                               ; preds = %23
  %29 = load i32*, i32** @save_eintflt, align 8
  %30 = load i32, i32* %1, align 4
  %31 = zext i32 %30 to i64
  %32 = getelementptr inbounds i32, i32* %29, i64 %31
  %33 = load i32, i32* %32, align 4
  %34 = load i64, i64* @S3C24XX_EINFLT0, align 8
  %35 = load i32, i32* %1, align 4
  %36 = mul i32 %35, 4
  %37 = zext i32 %36 to i64
  %38 = add nsw i64 %34, %37
  %39 = call i32 @__raw_writel(i32 %33, i64 %38)
  br label %40

40:                                               ; preds = %28
  %41 = load i32, i32* %1, align 4
  %42 = add i32 %41, 1
  store i32 %42, i32* %1, align 4
  br label %23

43:                                               ; preds = %23
  %44 = load i32*, i32** @irq_save, align 8
  %45 = load i32*, i32** @irq_save, align 8
  %46 = call i32 @ARRAY_SIZE(i32* %45)
  %47 = call i32 @s3c_pm_do_restore(i32* %44, i32 %46)
  %48 = load i32, i32* @save_eintmask, align 4
  %49 = load i64, i64* @S3C24XX_EINTMASK, align 8
  %50 = call i32 @__raw_writel(i32 %48, i64 %49)
  ret void
}

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @__raw_writel(i32, i64) #1

declare dso_local i32 @s3c_pm_do_restore(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
