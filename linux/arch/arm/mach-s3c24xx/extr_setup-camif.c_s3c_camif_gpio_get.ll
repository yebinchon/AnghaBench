; ModuleID = '/home/carl/AnghaBench/linux/arch/arm/mach-s3c24xx/extr_setup-camif.c_s3c_camif_gpio_get.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm/mach-s3c24xx/extr_setup-camif.c_s3c_camif_gpio_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@S3C_CAMIF_NUM_GPIOS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"camif\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"failed to configure GPIO %d\0A\00", align 1
@S3C_GPIO_PULL_NONE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @s3c_camif_gpio_get() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = call i32 @camif_get_gpios(i32* %2, i32* %3)
  store i32 0, i32* %5, align 4
  br label %8

8:                                                ; preds = %53, %0
  %9 = load i32, i32* %5, align 4
  %10 = load i32, i32* @S3C_CAMIF_NUM_GPIOS, align 4
  %11 = icmp slt i32 %9, %10
  br i1 %11, label %12, label %56

12:                                               ; preds = %8
  %13 = load i32, i32* %2, align 4
  %14 = load i32, i32* %5, align 4
  %15 = add nsw i32 %13, %14
  store i32 %15, i32* %6, align 4
  %16 = load i32, i32* %6, align 4
  %17 = load i32, i32* %3, align 4
  %18 = icmp eq i32 %16, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %12
  br label %53

20:                                               ; preds = %12
  %21 = load i32, i32* %6, align 4
  %22 = call i32 @gpio_request(i32 %21, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  store i32 %22, i32* %4, align 4
  %23 = load i32, i32* %4, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %29, label %25

25:                                               ; preds = %20
  %26 = load i32, i32* %6, align 4
  %27 = call i32 @S3C_GPIO_SFN(i32 2)
  %28 = call i32 @s3c_gpio_cfgpin(i32 %26, i32 %27)
  store i32 %28, i32* %4, align 4
  br label %29

29:                                               ; preds = %25, %20
  %30 = load i32, i32* %4, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %49

32:                                               ; preds = %29
  %33 = load i32, i32* %6, align 4
  %34 = call i32 @pr_err(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 %33)
  %35 = load i32, i32* %5, align 4
  %36 = add nsw i32 %35, -1
  store i32 %36, i32* %5, align 4
  br label %37

37:                                               ; preds = %44, %32
  %38 = load i32, i32* %5, align 4
  %39 = icmp sge i32 %38, 0
  br i1 %39, label %40, label %47

40:                                               ; preds = %37
  %41 = load i32, i32* %6, align 4
  %42 = add nsw i32 %41, -1
  store i32 %42, i32* %6, align 4
  %43 = call i32 @gpio_free(i32 %41)
  br label %44

44:                                               ; preds = %40
  %45 = load i32, i32* %5, align 4
  %46 = add nsw i32 %45, -1
  store i32 %46, i32* %5, align 4
  br label %37

47:                                               ; preds = %37
  %48 = load i32, i32* %4, align 4
  store i32 %48, i32* %1, align 4
  br label %57

49:                                               ; preds = %29
  %50 = load i32, i32* %6, align 4
  %51 = load i32, i32* @S3C_GPIO_PULL_NONE, align 4
  %52 = call i32 @s3c_gpio_setpull(i32 %50, i32 %51)
  br label %53

53:                                               ; preds = %49, %19
  %54 = load i32, i32* %5, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %5, align 4
  br label %8

56:                                               ; preds = %8
  store i32 0, i32* %1, align 4
  br label %57

57:                                               ; preds = %56, %47
  %58 = load i32, i32* %1, align 4
  ret i32 %58
}

declare dso_local i32 @camif_get_gpios(i32*, i32*) #1

declare dso_local i32 @gpio_request(i32, i8*) #1

declare dso_local i32 @s3c_gpio_cfgpin(i32, i32) #1

declare dso_local i32 @S3C_GPIO_SFN(i32) #1

declare dso_local i32 @pr_err(i8*, i32) #1

declare dso_local i32 @gpio_free(i32) #1

declare dso_local i32 @s3c_gpio_setpull(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
