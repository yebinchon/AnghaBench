; ModuleID = '/home/carl/AnghaBench/linux/arch/arm/mach-s3c24xx/extr_irq-pm.c_s3c24xx_irq_suspend.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm/mach-s3c24xx/extr_irq-pm.c_s3c24xx_irq_suspend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@save_extint = common dso_local global i8** null, align 8
@S3C24XX_EXTINT0 = common dso_local global i64 0, align 8
@save_eintflt = common dso_local global i8** null, align 8
@S3C24XX_EINFLT0 = common dso_local global i64 0, align 8
@irq_save = common dso_local global i8** null, align 8
@S3C24XX_EINTMASK = common dso_local global i64 0, align 8
@save_eintmask = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @s3c24xx_irq_suspend to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @s3c24xx_irq_suspend() #0 {
  %1 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  br label %2

2:                                                ; preds = %18, %0
  %3 = load i32, i32* %1, align 4
  %4 = load i8**, i8*** @save_extint, align 8
  %5 = call i32 @ARRAY_SIZE(i8** %4)
  %6 = icmp ult i32 %3, %5
  br i1 %6, label %7, label %21

7:                                                ; preds = %2
  %8 = load i64, i64* @S3C24XX_EXTINT0, align 8
  %9 = load i32, i32* %1, align 4
  %10 = mul i32 %9, 4
  %11 = zext i32 %10 to i64
  %12 = add nsw i64 %8, %11
  %13 = call i8* @__raw_readl(i64 %12)
  %14 = load i8**, i8*** @save_extint, align 8
  %15 = load i32, i32* %1, align 4
  %16 = zext i32 %15 to i64
  %17 = getelementptr inbounds i8*, i8** %14, i64 %16
  store i8* %13, i8** %17, align 8
  br label %18

18:                                               ; preds = %7
  %19 = load i32, i32* %1, align 4
  %20 = add i32 %19, 1
  store i32 %20, i32* %1, align 4
  br label %2

21:                                               ; preds = %2
  store i32 0, i32* %1, align 4
  br label %22

22:                                               ; preds = %38, %21
  %23 = load i32, i32* %1, align 4
  %24 = load i8**, i8*** @save_eintflt, align 8
  %25 = call i32 @ARRAY_SIZE(i8** %24)
  %26 = icmp ult i32 %23, %25
  br i1 %26, label %27, label %41

27:                                               ; preds = %22
  %28 = load i64, i64* @S3C24XX_EINFLT0, align 8
  %29 = load i32, i32* %1, align 4
  %30 = mul i32 %29, 4
  %31 = zext i32 %30 to i64
  %32 = add nsw i64 %28, %31
  %33 = call i8* @__raw_readl(i64 %32)
  %34 = load i8**, i8*** @save_eintflt, align 8
  %35 = load i32, i32* %1, align 4
  %36 = zext i32 %35 to i64
  %37 = getelementptr inbounds i8*, i8** %34, i64 %36
  store i8* %33, i8** %37, align 8
  br label %38

38:                                               ; preds = %27
  %39 = load i32, i32* %1, align 4
  %40 = add i32 %39, 1
  store i32 %40, i32* %1, align 4
  br label %22

41:                                               ; preds = %22
  %42 = load i8**, i8*** @irq_save, align 8
  %43 = load i8**, i8*** @irq_save, align 8
  %44 = call i32 @ARRAY_SIZE(i8** %43)
  %45 = call i32 @s3c_pm_do_save(i8** %42, i32 %44)
  %46 = load i64, i64* @S3C24XX_EINTMASK, align 8
  %47 = call i8* @__raw_readl(i64 %46)
  store i8* %47, i8** @save_eintmask, align 8
  ret i32 0
}

declare dso_local i32 @ARRAY_SIZE(i8**) #1

declare dso_local i8* @__raw_readl(i64) #1

declare dso_local i32 @s3c_pm_do_save(i8**, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
