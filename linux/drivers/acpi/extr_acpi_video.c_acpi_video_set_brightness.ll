; ModuleID = '/home/carl/AnghaBench/linux/drivers/acpi/extr_acpi_video.c_acpi_video_set_brightness.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/acpi/extr_acpi_video.c_acpi_video_set_brightness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.backlight_device = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.acpi_video_device = type { %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { i32* }

@ACPI_VIDEO_FIRST_LEVEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.backlight_device*)* @acpi_video_set_brightness to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @acpi_video_set_brightness(%struct.backlight_device* %0) #0 {
  %2 = alloca %struct.backlight_device*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.acpi_video_device*, align 8
  store %struct.backlight_device* %0, %struct.backlight_device** %2, align 8
  %5 = load %struct.backlight_device*, %struct.backlight_device** %2, align 8
  %6 = getelementptr inbounds %struct.backlight_device, %struct.backlight_device* %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = load i32, i32* @ACPI_VIDEO_FIRST_LEVEL, align 4
  %10 = add nsw i32 %8, %9
  store i32 %10, i32* %3, align 4
  %11 = load %struct.backlight_device*, %struct.backlight_device** %2, align 8
  %12 = call %struct.acpi_video_device* @bl_get_data(%struct.backlight_device* %11)
  store %struct.acpi_video_device* %12, %struct.acpi_video_device** %4, align 8
  %13 = load %struct.acpi_video_device*, %struct.acpi_video_device** %4, align 8
  %14 = getelementptr inbounds %struct.acpi_video_device, %struct.acpi_video_device* %13, i32 0, i32 1
  %15 = call i32 @cancel_delayed_work(i32* %14)
  %16 = load %struct.acpi_video_device*, %struct.acpi_video_device** %4, align 8
  %17 = load %struct.acpi_video_device*, %struct.acpi_video_device** %4, align 8
  %18 = getelementptr inbounds %struct.acpi_video_device, %struct.acpi_video_device* %17, i32 0, i32 0
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load i32*, i32** %20, align 8
  %22 = load i32, i32* %3, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i32, i32* %21, i64 %23
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @acpi_video_device_lcd_set_level(%struct.acpi_video_device* %16, i32 %25)
  ret i32 %26
}

declare dso_local %struct.acpi_video_device* @bl_get_data(%struct.backlight_device*) #1

declare dso_local i32 @cancel_delayed_work(i32*) #1

declare dso_local i32 @acpi_video_device_lcd_set_level(%struct.acpi_video_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
