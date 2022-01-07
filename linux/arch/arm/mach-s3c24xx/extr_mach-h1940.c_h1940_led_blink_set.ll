; ModuleID = '/home/carl/AnghaBench/linux/arch/arm/mach-s3c24xx/extr_mach-h1940.c_h1940_led_blink_set.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm/mach-s3c24xx/extr_mach-h1940.c_h1940_led_blink_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gpio_desc = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@h1940_blink_spin = common dso_local global i32 0, align 4
@H1940_LATCH_LED_FLASH = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @h1940_led_blink_set(%struct.gpio_desc* %0, i32 %1, i64* %2, i64* %3) #0 {
  %5 = alloca %struct.gpio_desc*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.gpio_desc* %0, %struct.gpio_desc** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64* %2, i64** %7, align 8
  store i64* %3, i64** %8, align 8
  %13 = load %struct.gpio_desc*, %struct.gpio_desc** %5, align 8
  %14 = icmp ne %struct.gpio_desc* %13, null
  br i1 %14, label %15, label %18

15:                                               ; preds = %4
  %16 = load %struct.gpio_desc*, %struct.gpio_desc** %5, align 8
  %17 = call i32 @desc_to_gpio(%struct.gpio_desc* %16)
  br label %21

18:                                               ; preds = %4
  %19 = load i32, i32* @EINVAL, align 4
  %20 = sub nsw i32 0, %19
  br label %21

21:                                               ; preds = %18, %15
  %22 = phi i32 [ %17, %15 ], [ %20, %18 ]
  store i32 %22, i32* %12, align 4
  %23 = load i32, i32* %12, align 4
  switch i32 %23, label %32 [
    i32 129, label %24
    i32 128, label %28
  ]

24:                                               ; preds = %21
  %25 = call i32 @S3C2410_GPA(i32 7)
  store i32 %25, i32* %9, align 4
  %26 = call i32 @S3C2410_GPA(i32 1)
  store i32 %26, i32* %10, align 4
  %27 = call i32 @S3C2410_GPA(i32 3)
  store i32 %27, i32* %11, align 4
  br label %36

28:                                               ; preds = %21
  %29 = call i32 @S3C2410_GPA(i32 1)
  store i32 %29, i32* %9, align 4
  %30 = call i32 @S3C2410_GPA(i32 7)
  store i32 %30, i32* %10, align 4
  %31 = call i32 @S3C2410_GPA(i32 3)
  store i32 %31, i32* %11, align 4
  br label %36

32:                                               ; preds = %21
  %33 = call i32 @S3C2410_GPA(i32 3)
  store i32 %33, i32* %9, align 4
  %34 = call i32 @S3C2410_GPA(i32 1)
  store i32 %34, i32* %10, align 4
  %35 = call i32 @S3C2410_GPA(i32 7)
  store i32 %35, i32* %11, align 4
  br label %36

36:                                               ; preds = %32, %28, %24
  %37 = load i64*, i64** %7, align 8
  %38 = icmp ne i64* %37, null
  br i1 %38, label %39, label %53

39:                                               ; preds = %36
  %40 = load i64*, i64** %8, align 8
  %41 = icmp ne i64* %40, null
  br i1 %41, label %42, label %53

42:                                               ; preds = %39
  %43 = load i64*, i64** %7, align 8
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %53, label %46

46:                                               ; preds = %42
  %47 = load i64*, i64** %8, align 8
  %48 = load i64, i64* %47, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %53, label %50

50:                                               ; preds = %46
  %51 = load i64*, i64** %8, align 8
  store i64 500, i64* %51, align 8
  %52 = load i64*, i64** %7, align 8
  store i64 500, i64* %52, align 8
  br label %53

53:                                               ; preds = %50, %46, %42, %39, %36
  %54 = call i32 @spin_lock(i32* @h1940_blink_spin)
  %55 = load i32, i32* %6, align 4
  switch i32 %55, label %90 [
    i32 130, label %56
    i32 131, label %56
    i32 132, label %78
  ]

56:                                               ; preds = %53, %53
  %57 = load i32, i32* %10, align 4
  %58 = call i32 @gpio_get_value(i32 %57)
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %67, label %60

60:                                               ; preds = %56
  %61 = load i32, i32* %11, align 4
  %62 = call i32 @gpio_get_value(i32 %61)
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %67, label %64

64:                                               ; preds = %60
  %65 = load i32, i32* @H1940_LATCH_LED_FLASH, align 4
  %66 = call i32 @gpio_set_value(i32 %65, i32 0)
  br label %67

67:                                               ; preds = %64, %60, %56
  %68 = load i32, i32* %9, align 4
  %69 = call i32 @gpio_set_value(i32 %68, i32 0)
  %70 = load i32, i32* %12, align 4
  %71 = call i32 @gpio_is_valid(i32 %70)
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %77

73:                                               ; preds = %67
  %74 = load i32, i32* %12, align 4
  %75 = load i32, i32* %6, align 4
  %76 = call i32 @gpio_set_value(i32 %74, i32 %75)
  br label %77

77:                                               ; preds = %73, %67
  br label %90

78:                                               ; preds = %53
  %79 = load i32, i32* %12, align 4
  %80 = call i32 @gpio_is_valid(i32 %79)
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %85

82:                                               ; preds = %78
  %83 = load i32, i32* %12, align 4
  %84 = call i32 @gpio_set_value(i32 %83, i32 0)
  br label %85

85:                                               ; preds = %82, %78
  %86 = load i32, i32* @H1940_LATCH_LED_FLASH, align 4
  %87 = call i32 @gpio_set_value(i32 %86, i32 1)
  %88 = load i32, i32* %9, align 4
  %89 = call i32 @gpio_set_value(i32 %88, i32 1)
  br label %90

90:                                               ; preds = %53, %85, %77
  %91 = call i32 @spin_unlock(i32* @h1940_blink_spin)
  ret i32 0
}

declare dso_local i32 @desc_to_gpio(%struct.gpio_desc*) #1

declare dso_local i32 @S3C2410_GPA(i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @gpio_get_value(i32) #1

declare dso_local i32 @gpio_set_value(i32, i32) #1

declare dso_local i32 @gpio_is_valid(i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
