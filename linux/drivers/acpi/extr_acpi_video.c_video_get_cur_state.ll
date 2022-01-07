; ModuleID = '/home/carl/AnghaBench/linux/drivers/acpi/extr_acpi_video.c_video_get_cur_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/acpi/extr_acpi_video.c_video_get_cur_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thermal_cooling_device = type { %struct.acpi_device* }
%struct.acpi_device = type { i32 }
%struct.acpi_video_device = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i64* }

@EINVAL = common dso_local global i32 0, align 4
@ACPI_VIDEO_FIRST_LEVEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.thermal_cooling_device*, i64*)* @video_get_cur_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @video_get_cur_state(%struct.thermal_cooling_device* %0, i64* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.thermal_cooling_device*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca %struct.acpi_device*, align 8
  %7 = alloca %struct.acpi_video_device*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.thermal_cooling_device* %0, %struct.thermal_cooling_device** %4, align 8
  store i64* %1, i64** %5, align 8
  %10 = load %struct.thermal_cooling_device*, %struct.thermal_cooling_device** %4, align 8
  %11 = getelementptr inbounds %struct.thermal_cooling_device, %struct.thermal_cooling_device* %10, i32 0, i32 0
  %12 = load %struct.acpi_device*, %struct.acpi_device** %11, align 8
  store %struct.acpi_device* %12, %struct.acpi_device** %6, align 8
  %13 = load %struct.acpi_device*, %struct.acpi_device** %6, align 8
  %14 = call %struct.acpi_video_device* @acpi_driver_data(%struct.acpi_device* %13)
  store %struct.acpi_video_device* %14, %struct.acpi_video_device** %7, align 8
  %15 = load %struct.acpi_video_device*, %struct.acpi_video_device** %7, align 8
  %16 = call i64 @acpi_video_device_lcd_get_level_current(%struct.acpi_video_device* %15, i64* %8, i32 0)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %2
  %19 = load i32, i32* @EINVAL, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %3, align 4
  br label %61

21:                                               ; preds = %2
  %22 = load i32, i32* @ACPI_VIDEO_FIRST_LEVEL, align 4
  store i32 %22, i32* %9, align 4
  br label %23

23:                                               ; preds = %55, %21
  %24 = load i32, i32* %9, align 4
  %25 = load %struct.acpi_video_device*, %struct.acpi_video_device** %7, align 8
  %26 = getelementptr inbounds %struct.acpi_video_device, %struct.acpi_video_device* %25, i32 0, i32 0
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = icmp slt i32 %24, %29
  br i1 %30, label %31, label %58

31:                                               ; preds = %23
  %32 = load i64, i64* %8, align 8
  %33 = load %struct.acpi_video_device*, %struct.acpi_video_device** %7, align 8
  %34 = getelementptr inbounds %struct.acpi_video_device, %struct.acpi_video_device* %33, i32 0, i32 0
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 1
  %37 = load i64*, i64** %36, align 8
  %38 = load i32, i32* %9, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i64, i64* %37, i64 %39
  %41 = load i64, i64* %40, align 8
  %42 = icmp eq i64 %32, %41
  br i1 %42, label %43, label %54

43:                                               ; preds = %31
  %44 = load %struct.acpi_video_device*, %struct.acpi_video_device** %7, align 8
  %45 = getelementptr inbounds %struct.acpi_video_device, %struct.acpi_video_device* %44, i32 0, i32 0
  %46 = load %struct.TYPE_2__*, %struct.TYPE_2__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = load i32, i32* %9, align 4
  %50 = sub nsw i32 %48, %49
  %51 = sub nsw i32 %50, 1
  %52 = sext i32 %51 to i64
  %53 = load i64*, i64** %5, align 8
  store i64 %52, i64* %53, align 8
  store i32 0, i32* %3, align 4
  br label %61

54:                                               ; preds = %31
  br label %55

55:                                               ; preds = %54
  %56 = load i32, i32* %9, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %9, align 4
  br label %23

58:                                               ; preds = %23
  %59 = load i32, i32* @EINVAL, align 4
  %60 = sub nsw i32 0, %59
  store i32 %60, i32* %3, align 4
  br label %61

61:                                               ; preds = %58, %43, %18
  %62 = load i32, i32* %3, align 4
  ret i32 %62
}

declare dso_local %struct.acpi_video_device* @acpi_driver_data(%struct.acpi_device*) #1

declare dso_local i64 @acpi_video_device_lcd_get_level_current(%struct.acpi_video_device*, i64*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
