; ModuleID = '/home/carl/AnghaBench/linux/drivers/acpi/extr_scan.c_acpi_is_video_device.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/acpi/extr_scan.c_acpi_is_video_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [5 x i8] c"_DOD\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"_DOS\00", align 1
@ACPI_VIDEO_OUTPUT_SWITCHING = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [5 x i8] c"_ROM\00", align 1
@ACPI_VIDEO_ROM_AVAILABLE = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [5 x i8] c"_VPO\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"_GPD\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"_SPD\00", align 1
@ACPI_VIDEO_DEVICE_POSTING = common dso_local global i64 0, align 8
@ACPI_TYPE_DEVICE = common dso_local global i32 0, align 4
@ACPI_UINT32_MAX = common dso_local global i32 0, align 4
@acpi_backlight_cap_match = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @acpi_is_video_device(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  store i32 %0, i32* %2, align 4
  store i64 0, i64* %3, align 8
  %4 = load i32, i32* %2, align 4
  %5 = call i64 @acpi_has_method(i32 %4, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %11, label %7

7:                                                ; preds = %1
  %8 = load i32, i32* %2, align 4
  %9 = call i64 @acpi_has_method(i32 %8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %15

11:                                               ; preds = %7, %1
  %12 = load i64, i64* @ACPI_VIDEO_OUTPUT_SWITCHING, align 8
  %13 = load i64, i64* %3, align 8
  %14 = or i64 %13, %12
  store i64 %14, i64* %3, align 8
  br label %15

15:                                               ; preds = %11, %7
  %16 = load i32, i32* %2, align 4
  %17 = call i64 @acpi_has_method(i32 %16, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %15
  %20 = load i64, i64* @ACPI_VIDEO_ROM_AVAILABLE, align 8
  %21 = load i64, i64* %3, align 8
  %22 = or i64 %21, %20
  store i64 %22, i64* %3, align 8
  br label %23

23:                                               ; preds = %19, %15
  %24 = load i32, i32* %2, align 4
  %25 = call i64 @acpi_has_method(i32 %24, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %39

27:                                               ; preds = %23
  %28 = load i32, i32* %2, align 4
  %29 = call i64 @acpi_has_method(i32 %28, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0))
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %39

31:                                               ; preds = %27
  %32 = load i32, i32* %2, align 4
  %33 = call i64 @acpi_has_method(i32 %32, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0))
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %39

35:                                               ; preds = %31
  %36 = load i64, i64* @ACPI_VIDEO_DEVICE_POSTING, align 8
  %37 = load i64, i64* %3, align 8
  %38 = or i64 %37, %36
  store i64 %38, i64* %3, align 8
  br label %39

39:                                               ; preds = %35, %31, %27, %23
  %40 = load i64, i64* %3, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %48

42:                                               ; preds = %39
  %43 = load i32, i32* @ACPI_TYPE_DEVICE, align 4
  %44 = load i32, i32* %2, align 4
  %45 = load i32, i32* @ACPI_UINT32_MAX, align 4
  %46 = load i32, i32* @acpi_backlight_cap_match, align 4
  %47 = call i32 @acpi_walk_namespace(i32 %43, i32 %44, i32 %45, i32 %46, i32* null, i64* %3, i32* null)
  br label %48

48:                                               ; preds = %42, %39
  %49 = load i64, i64* %3, align 8
  ret i64 %49
}

declare dso_local i64 @acpi_has_method(i32, i8*) #1

declare dso_local i32 @acpi_walk_namespace(i32, i32, i32, i32, i32*, i64*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
