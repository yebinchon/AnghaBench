; ModuleID = '/home/carl/AnghaBench/linux/drivers/acpi/extr_sysfs.c_get_status.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/acpi/extr_sysfs.c_get_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@num_gpes = common dso_local global i64 0, align 8
@ACPI_NUM_FIXED_EVENTS = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@AE_INFO = common dso_local global i32 0, align 4
@AE_NOT_FOUND = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"Invalid GPE 0x%x\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, i32*, i32*)* @get_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_status(i64 %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  store i64 %0, i64* %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  %9 = load i64, i64* %5, align 8
  %10 = load i64, i64* @num_gpes, align 8
  %11 = load i64, i64* @ACPI_NUM_FIXED_EVENTS, align 8
  %12 = add nsw i64 %10, %11
  %13 = icmp sge i64 %9, %12
  br i1 %13, label %14, label %17

14:                                               ; preds = %3
  %15 = load i32, i32* @EINVAL, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %4, align 4
  br label %56

17:                                               ; preds = %3
  %18 = load i64, i64* %5, align 8
  %19 = load i64, i64* @num_gpes, align 8
  %20 = icmp slt i64 %18, %19
  br i1 %20, label %21, label %42

21:                                               ; preds = %17
  %22 = load i64, i64* %5, align 8
  %23 = load i32*, i32** %7, align 8
  %24 = call i32 @acpi_get_gpe_device(i64 %22, i32* %23)
  store i32 %24, i32* %8, align 4
  %25 = load i32, i32* %8, align 4
  %26 = call i64 @ACPI_FAILURE(i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %36

28:                                               ; preds = %21
  %29 = load i32, i32* @AE_INFO, align 4
  %30 = load i32, i32* @AE_NOT_FOUND, align 4
  %31 = load i64, i64* %5, align 8
  %32 = trunc i64 %31 to i32
  %33 = call i32 @ACPI_EXCEPTION(i32 %32)
  %34 = load i32, i32* @ENXIO, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %4, align 4
  br label %56

36:                                               ; preds = %21
  %37 = load i32*, i32** %7, align 8
  %38 = load i32, i32* %37, align 4
  %39 = load i64, i64* %5, align 8
  %40 = load i32*, i32** %6, align 8
  %41 = call i32 @acpi_get_gpe_status(i32 %38, i64 %39, i32* %40)
  store i32 %41, i32* %8, align 4
  br label %48

42:                                               ; preds = %17
  %43 = load i64, i64* %5, align 8
  %44 = load i64, i64* @num_gpes, align 8
  %45 = sub nsw i64 %43, %44
  %46 = load i32*, i32** %6, align 8
  %47 = call i32 @acpi_get_event_status(i64 %45, i32* %46)
  store i32 %47, i32* %8, align 4
  br label %48

48:                                               ; preds = %42, %36
  %49 = load i32, i32* %8, align 4
  %50 = call i64 @ACPI_FAILURE(i32 %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %55

52:                                               ; preds = %48
  %53 = load i32, i32* @EIO, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %4, align 4
  br label %56

55:                                               ; preds = %48
  store i32 0, i32* %4, align 4
  br label %56

56:                                               ; preds = %55, %52, %28, %14
  %57 = load i32, i32* %4, align 4
  ret i32 %57
}

declare dso_local i32 @acpi_get_gpe_device(i64, i32*) #1

declare dso_local i64 @ACPI_FAILURE(i32) #1

declare dso_local i32 @ACPI_EXCEPTION(i32) #1

declare dso_local i32 @acpi_get_gpe_status(i32, i64, i32*) #1

declare dso_local i32 @acpi_get_event_status(i64, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
