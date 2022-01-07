; ModuleID = '/home/carl/AnghaBench/linux/drivers/acpi/extr_acpi_cmos_rtc.c_acpi_cmos_rtc_space_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/acpi/extr_acpi_cmos_rtc.c_acpi_cmos_rtc_space_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@AE_BAD_PARAMETER = common dso_local global i32 0, align 4
@ACPI_WRITE = common dso_local global i64 0, align 8
@ACPI_READ = common dso_local global i64 0, align 8
@rtc_lock = common dso_local global i32 0, align 4
@AE_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, i32, i64, i32*, i8*, i8*)* @acpi_cmos_rtc_space_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @acpi_cmos_rtc_space_handler(i64 %0, i32 %1, i64 %2, i32* %3, i8* %4, i8* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  store i64 %0, i64* %8, align 8
  store i32 %1, i32* %9, align 4
  store i64 %2, i64* %10, align 8
  store i32* %3, i32** %11, align 8
  store i8* %4, i8** %12, align 8
  store i8* %5, i8** %13, align 8
  %16 = load i32*, i32** %11, align 8
  store i32* %16, i32** %15, align 8
  %17 = load i32, i32* %9, align 4
  %18 = icmp sgt i32 %17, 255
  br i1 %18, label %22, label %19

19:                                               ; preds = %6
  %20 = load i32*, i32** %11, align 8
  %21 = icmp ne i32* %20, null
  br i1 %21, label %24, label %22

22:                                               ; preds = %19, %6
  %23 = load i32, i32* @AE_BAD_PARAMETER, align 4
  store i32 %23, i32* %7, align 4
  br label %65

24:                                               ; preds = %19
  %25 = load i64, i64* %8, align 8
  %26 = load i64, i64* @ACPI_WRITE, align 8
  %27 = icmp ne i64 %25, %26
  br i1 %27, label %28, label %34

28:                                               ; preds = %24
  %29 = load i64, i64* %8, align 8
  %30 = load i64, i64* @ACPI_READ, align 8
  %31 = icmp ne i64 %29, %30
  br i1 %31, label %32, label %34

32:                                               ; preds = %28
  %33 = load i32, i32* @AE_BAD_PARAMETER, align 4
  store i32 %33, i32* %7, align 4
  br label %65

34:                                               ; preds = %28, %24
  %35 = call i32 @spin_lock_irq(i32* @rtc_lock)
  store i32 0, i32* %14, align 4
  br label %36

36:                                               ; preds = %55, %34
  %37 = load i32, i32* %14, align 4
  %38 = load i64, i64* %10, align 8
  %39 = call i32 @DIV_ROUND_UP(i64 %38, i32 8)
  %40 = icmp slt i32 %37, %39
  br i1 %40, label %41, label %62

41:                                               ; preds = %36
  %42 = load i64, i64* %8, align 8
  %43 = load i64, i64* @ACPI_READ, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %45, label %49

45:                                               ; preds = %41
  %46 = load i32, i32* %9, align 4
  %47 = call i32 @CMOS_READ(i32 %46)
  %48 = load i32*, i32** %15, align 8
  store i32 %47, i32* %48, align 4
  br label %54

49:                                               ; preds = %41
  %50 = load i32*, i32** %15, align 8
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* %9, align 4
  %53 = call i32 @CMOS_WRITE(i32 %51, i32 %52)
  br label %54

54:                                               ; preds = %49, %45
  br label %55

55:                                               ; preds = %54
  %56 = load i32, i32* %14, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %14, align 4
  %58 = load i32, i32* %9, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %9, align 4
  %60 = load i32*, i32** %15, align 8
  %61 = getelementptr inbounds i32, i32* %60, i32 1
  store i32* %61, i32** %15, align 8
  br label %36

62:                                               ; preds = %36
  %63 = call i32 @spin_unlock_irq(i32* @rtc_lock)
  %64 = load i32, i32* @AE_OK, align 4
  store i32 %64, i32* %7, align 4
  br label %65

65:                                               ; preds = %62, %32, %22
  %66 = load i32, i32* %7, align 4
  ret i32 %66
}

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @DIV_ROUND_UP(i64, i32) #1

declare dso_local i32 @CMOS_READ(i32) #1

declare dso_local i32 @CMOS_WRITE(i32, i32) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
