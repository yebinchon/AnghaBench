; ModuleID = '/home/carl/AnghaBench/linux/drivers/acpi/extr_acpi_video.c_acpi_video_device_notify.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/acpi/extr_acpi_video.c_acpi_video_device_notify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_video_device = type { i64, %struct.acpi_video_bus*, %struct.acpi_device* }
%struct.acpi_video_bus = type { %struct.input_dev* }
%struct.input_dev = type { i32 }
%struct.acpi_device = type { i32 }

@hw_changes_brightness = common dso_local global i64 0, align 8
@BACKLIGHT_UPDATE_HOTKEY = common dso_local global i32 0, align 4
@KEY_BRIGHTNESS_CYCLE = common dso_local global i32 0, align 4
@KEY_BRIGHTNESSUP = common dso_local global i32 0, align 4
@KEY_BRIGHTNESSDOWN = common dso_local global i32 0, align 4
@KEY_BRIGHTNESS_ZERO = common dso_local global i32 0, align 4
@KEY_DISPLAY_OFF = common dso_local global i32 0, align 4
@ACPI_DB_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"Unsupported event [0x%x]\0A\00", align 1
@report_key_events = common dso_local global i32 0, align 4
@REPORT_BRIGHTNESS_KEY_EVENTS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i8*)* @acpi_video_device_notify to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @acpi_video_device_notify(i32 %0, i32 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.acpi_video_device*, align 8
  %8 = alloca %struct.acpi_device*, align 8
  %9 = alloca %struct.acpi_video_bus*, align 8
  %10 = alloca %struct.input_dev*, align 8
  %11 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  %12 = load i8*, i8** %6, align 8
  %13 = bitcast i8* %12 to %struct.acpi_video_device*
  store %struct.acpi_video_device* %13, %struct.acpi_video_device** %7, align 8
  store %struct.acpi_device* null, %struct.acpi_device** %8, align 8
  store i32 0, i32* %11, align 4
  %14 = load %struct.acpi_video_device*, %struct.acpi_video_device** %7, align 8
  %15 = icmp ne %struct.acpi_video_device* %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %3
  br label %98

17:                                               ; preds = %3
  %18 = load %struct.acpi_video_device*, %struct.acpi_video_device** %7, align 8
  %19 = getelementptr inbounds %struct.acpi_video_device, %struct.acpi_video_device* %18, i32 0, i32 2
  %20 = load %struct.acpi_device*, %struct.acpi_device** %19, align 8
  store %struct.acpi_device* %20, %struct.acpi_device** %8, align 8
  %21 = load %struct.acpi_video_device*, %struct.acpi_video_device** %7, align 8
  %22 = getelementptr inbounds %struct.acpi_video_device, %struct.acpi_video_device* %21, i32 0, i32 1
  %23 = load %struct.acpi_video_bus*, %struct.acpi_video_bus** %22, align 8
  store %struct.acpi_video_bus* %23, %struct.acpi_video_bus** %9, align 8
  %24 = load %struct.acpi_video_bus*, %struct.acpi_video_bus** %9, align 8
  %25 = getelementptr inbounds %struct.acpi_video_bus, %struct.acpi_video_bus* %24, i32 0, i32 0
  %26 = load %struct.input_dev*, %struct.input_dev** %25, align 8
  store %struct.input_dev* %26, %struct.input_dev** %10, align 8
  %27 = load i64, i64* @hw_changes_brightness, align 8
  %28 = icmp sgt i64 %27, 0
  br i1 %28, label %29, label %44

29:                                               ; preds = %17
  %30 = load %struct.acpi_video_device*, %struct.acpi_video_device** %7, align 8
  %31 = getelementptr inbounds %struct.acpi_video_device, %struct.acpi_video_device* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %40

34:                                               ; preds = %29
  %35 = load %struct.acpi_video_device*, %struct.acpi_video_device** %7, align 8
  %36 = getelementptr inbounds %struct.acpi_video_device, %struct.acpi_video_device* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i32, i32* @BACKLIGHT_UPDATE_HOTKEY, align 4
  %39 = call i32 @backlight_force_update(i64 %37, i32 %38)
  br label %40

40:                                               ; preds = %34, %29
  %41 = load %struct.acpi_device*, %struct.acpi_device** %8, align 8
  %42 = load i32, i32* %5, align 4
  %43 = call i32 @acpi_notifier_call_chain(%struct.acpi_device* %41, i32 %42, i32 0)
  br label %98

44:                                               ; preds = %17
  %45 = load i32, i32* %5, align 4
  switch i32 %45, label %71 [
    i32 132, label %46
    i32 129, label %51
    i32 131, label %56
    i32 128, label %61
    i32 130, label %66
  ]

46:                                               ; preds = %44
  %47 = load %struct.acpi_video_device*, %struct.acpi_video_device** %7, align 8
  %48 = load i32, i32* %5, align 4
  %49 = call i32 @brightness_switch_event(%struct.acpi_video_device* %47, i32 %48)
  %50 = load i32, i32* @KEY_BRIGHTNESS_CYCLE, align 4
  store i32 %50, i32* %11, align 4
  br label %75

51:                                               ; preds = %44
  %52 = load %struct.acpi_video_device*, %struct.acpi_video_device** %7, align 8
  %53 = load i32, i32* %5, align 4
  %54 = call i32 @brightness_switch_event(%struct.acpi_video_device* %52, i32 %53)
  %55 = load i32, i32* @KEY_BRIGHTNESSUP, align 4
  store i32 %55, i32* %11, align 4
  br label %75

56:                                               ; preds = %44
  %57 = load %struct.acpi_video_device*, %struct.acpi_video_device** %7, align 8
  %58 = load i32, i32* %5, align 4
  %59 = call i32 @brightness_switch_event(%struct.acpi_video_device* %57, i32 %58)
  %60 = load i32, i32* @KEY_BRIGHTNESSDOWN, align 4
  store i32 %60, i32* %11, align 4
  br label %75

61:                                               ; preds = %44
  %62 = load %struct.acpi_video_device*, %struct.acpi_video_device** %7, align 8
  %63 = load i32, i32* %5, align 4
  %64 = call i32 @brightness_switch_event(%struct.acpi_video_device* %62, i32 %63)
  %65 = load i32, i32* @KEY_BRIGHTNESS_ZERO, align 4
  store i32 %65, i32* %11, align 4
  br label %75

66:                                               ; preds = %44
  %67 = load %struct.acpi_video_device*, %struct.acpi_video_device** %7, align 8
  %68 = load i32, i32* %5, align 4
  %69 = call i32 @brightness_switch_event(%struct.acpi_video_device* %67, i32 %68)
  %70 = load i32, i32* @KEY_DISPLAY_OFF, align 4
  store i32 %70, i32* %11, align 4
  br label %75

71:                                               ; preds = %44
  %72 = load i32, i32* @ACPI_DB_INFO, align 4
  %73 = load i32, i32* %5, align 4
  %74 = call i32 @ACPI_DEBUG_PRINT(i32 %73)
  br label %75

75:                                               ; preds = %71, %66, %61, %56, %51, %46
  %76 = load %struct.acpi_device*, %struct.acpi_device** %8, align 8
  %77 = load i32, i32* %5, align 4
  %78 = call i32 @acpi_notifier_call_chain(%struct.acpi_device* %76, i32 %77, i32 0)
  %79 = load i32, i32* %11, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %97

81:                                               ; preds = %75
  %82 = load i32, i32* @report_key_events, align 4
  %83 = load i32, i32* @REPORT_BRIGHTNESS_KEY_EVENTS, align 4
  %84 = and i32 %82, %83
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %97

86:                                               ; preds = %81
  %87 = load %struct.input_dev*, %struct.input_dev** %10, align 8
  %88 = load i32, i32* %11, align 4
  %89 = call i32 @input_report_key(%struct.input_dev* %87, i32 %88, i32 1)
  %90 = load %struct.input_dev*, %struct.input_dev** %10, align 8
  %91 = call i32 @input_sync(%struct.input_dev* %90)
  %92 = load %struct.input_dev*, %struct.input_dev** %10, align 8
  %93 = load i32, i32* %11, align 4
  %94 = call i32 @input_report_key(%struct.input_dev* %92, i32 %93, i32 0)
  %95 = load %struct.input_dev*, %struct.input_dev** %10, align 8
  %96 = call i32 @input_sync(%struct.input_dev* %95)
  br label %97

97:                                               ; preds = %86, %81, %75
  br label %98

98:                                               ; preds = %97, %40, %16
  ret void
}

declare dso_local i32 @backlight_force_update(i64, i32) #1

declare dso_local i32 @acpi_notifier_call_chain(%struct.acpi_device*, i32, i32) #1

declare dso_local i32 @brightness_switch_event(%struct.acpi_video_device*, i32) #1

declare dso_local i32 @ACPI_DEBUG_PRINT(i32) #1

declare dso_local i32 @input_report_key(%struct.input_dev*, i32, i32) #1

declare dso_local i32 @input_sync(%struct.input_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
