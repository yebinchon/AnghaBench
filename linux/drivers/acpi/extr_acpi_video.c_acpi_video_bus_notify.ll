; ModuleID = '/home/carl/AnghaBench/linux/drivers/acpi/extr_acpi_video.c_acpi_video_bus_notify.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/acpi/extr_acpi_video.c_acpi_video_bus_notify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_device = type { i32 }
%struct.acpi_video_bus = type { %struct.input_dev* }
%struct.input_dev = type { i32 }

@KEY_SWITCHVIDEOMODE = common dso_local global i32 0, align 4
@KEY_VIDEO_NEXT = common dso_local global i32 0, align 4
@KEY_VIDEO_PREV = common dso_local global i32 0, align 4
@ACPI_DB_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"Unsupported event [0x%x]\0A\00", align 1
@report_key_events = common dso_local global i32 0, align 4
@REPORT_OUTPUT_KEY_EVENTS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.acpi_device*, i32)* @acpi_video_bus_notify to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @acpi_video_bus_notify(%struct.acpi_device* %0, i32 %1) #0 {
  %3 = alloca %struct.acpi_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.acpi_video_bus*, align 8
  %6 = alloca %struct.input_dev*, align 8
  %7 = alloca i32, align 4
  store %struct.acpi_device* %0, %struct.acpi_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.acpi_device*, %struct.acpi_device** %3, align 8
  %9 = call %struct.acpi_video_bus* @acpi_driver_data(%struct.acpi_device* %8)
  store %struct.acpi_video_bus* %9, %struct.acpi_video_bus** %5, align 8
  store i32 0, i32* %7, align 4
  %10 = load %struct.acpi_video_bus*, %struct.acpi_video_bus** %5, align 8
  %11 = icmp ne %struct.acpi_video_bus* %10, null
  br i1 %11, label %12, label %17

12:                                               ; preds = %2
  %13 = load %struct.acpi_video_bus*, %struct.acpi_video_bus** %5, align 8
  %14 = getelementptr inbounds %struct.acpi_video_bus, %struct.acpi_video_bus* %13, i32 0, i32 0
  %15 = load %struct.input_dev*, %struct.input_dev** %14, align 8
  %16 = icmp ne %struct.input_dev* %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %12, %2
  br label %67

18:                                               ; preds = %12
  %19 = load %struct.acpi_video_bus*, %struct.acpi_video_bus** %5, align 8
  %20 = getelementptr inbounds %struct.acpi_video_bus, %struct.acpi_video_bus* %19, i32 0, i32 0
  %21 = load %struct.input_dev*, %struct.input_dev** %20, align 8
  store %struct.input_dev* %21, %struct.input_dev** %6, align 8
  %22 = load i32, i32* %4, align 4
  switch i32 %22, label %37 [
    i32 128, label %23
    i32 129, label %25
    i32 132, label %31
    i32 131, label %33
    i32 130, label %35
  ]

23:                                               ; preds = %18
  %24 = load i32, i32* @KEY_SWITCHVIDEOMODE, align 4
  store i32 %24, i32* %7, align 4
  br label %41

25:                                               ; preds = %18
  %26 = load %struct.acpi_video_bus*, %struct.acpi_video_bus** %5, align 8
  %27 = call i32 @acpi_video_device_enumerate(%struct.acpi_video_bus* %26)
  %28 = load %struct.acpi_video_bus*, %struct.acpi_video_bus** %5, align 8
  %29 = call i32 @acpi_video_device_rebind(%struct.acpi_video_bus* %28)
  %30 = load i32, i32* @KEY_SWITCHVIDEOMODE, align 4
  store i32 %30, i32* %7, align 4
  br label %41

31:                                               ; preds = %18
  %32 = load i32, i32* @KEY_SWITCHVIDEOMODE, align 4
  store i32 %32, i32* %7, align 4
  br label %41

33:                                               ; preds = %18
  %34 = load i32, i32* @KEY_VIDEO_NEXT, align 4
  store i32 %34, i32* %7, align 4
  br label %41

35:                                               ; preds = %18
  %36 = load i32, i32* @KEY_VIDEO_PREV, align 4
  store i32 %36, i32* %7, align 4
  br label %41

37:                                               ; preds = %18
  %38 = load i32, i32* @ACPI_DB_INFO, align 4
  %39 = load i32, i32* %4, align 4
  %40 = call i32 @ACPI_DEBUG_PRINT(i32 %39)
  br label %41

41:                                               ; preds = %37, %35, %33, %31, %25, %23
  %42 = load %struct.acpi_device*, %struct.acpi_device** %3, align 8
  %43 = load i32, i32* %4, align 4
  %44 = call i64 @acpi_notifier_call_chain(%struct.acpi_device* %42, i32 %43, i32 0)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %41
  store i32 0, i32* %7, align 4
  br label %47

47:                                               ; preds = %46, %41
  %48 = load i32, i32* %7, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %66

50:                                               ; preds = %47
  %51 = load i32, i32* @report_key_events, align 4
  %52 = load i32, i32* @REPORT_OUTPUT_KEY_EVENTS, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %66

55:                                               ; preds = %50
  %56 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %57 = load i32, i32* %7, align 4
  %58 = call i32 @input_report_key(%struct.input_dev* %56, i32 %57, i32 1)
  %59 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %60 = call i32 @input_sync(%struct.input_dev* %59)
  %61 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %62 = load i32, i32* %7, align 4
  %63 = call i32 @input_report_key(%struct.input_dev* %61, i32 %62, i32 0)
  %64 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %65 = call i32 @input_sync(%struct.input_dev* %64)
  br label %66

66:                                               ; preds = %55, %50, %47
  br label %67

67:                                               ; preds = %66, %17
  ret void
}

declare dso_local %struct.acpi_video_bus* @acpi_driver_data(%struct.acpi_device*) #1

declare dso_local i32 @acpi_video_device_enumerate(%struct.acpi_video_bus*) #1

declare dso_local i32 @acpi_video_device_rebind(%struct.acpi_video_bus*) #1

declare dso_local i32 @ACPI_DEBUG_PRINT(i32) #1

declare dso_local i64 @acpi_notifier_call_chain(%struct.acpi_device*, i32, i32) #1

declare dso_local i32 @input_report_key(%struct.input_dev*, i32, i32) #1

declare dso_local i32 @input_sync(%struct.input_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
