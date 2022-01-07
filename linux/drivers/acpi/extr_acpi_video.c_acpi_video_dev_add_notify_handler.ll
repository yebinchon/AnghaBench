; ModuleID = '/home/carl/AnghaBench/linux/drivers/acpi/extr_acpi_video.c_acpi_video_dev_add_notify_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/acpi/extr_acpi_video.c_acpi_video_dev_add_notify_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_video_device = type { %struct.TYPE_2__, %struct.acpi_device* }
%struct.TYPE_2__ = type { i32 }
%struct.acpi_device = type { i32, i32 }

@ACPI_DEVICE_NOTIFY = common dso_local global i32 0, align 4
@acpi_video_device_notify = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"Error installing notify handler\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.acpi_video_device*)* @acpi_video_dev_add_notify_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @acpi_video_dev_add_notify_handler(%struct.acpi_video_device* %0) #0 {
  %2 = alloca %struct.acpi_video_device*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.acpi_device*, align 8
  store %struct.acpi_video_device* %0, %struct.acpi_video_device** %2, align 8
  %5 = load %struct.acpi_video_device*, %struct.acpi_video_device** %2, align 8
  %6 = getelementptr inbounds %struct.acpi_video_device, %struct.acpi_video_device* %5, i32 0, i32 1
  %7 = load %struct.acpi_device*, %struct.acpi_device** %6, align 8
  store %struct.acpi_device* %7, %struct.acpi_device** %4, align 8
  %8 = load %struct.acpi_device*, %struct.acpi_device** %4, align 8
  %9 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* @ACPI_DEVICE_NOTIFY, align 4
  %12 = load i32, i32* @acpi_video_device_notify, align 4
  %13 = load %struct.acpi_video_device*, %struct.acpi_video_device** %2, align 8
  %14 = call i32 @acpi_install_notify_handler(i32 %10, i32 %11, i32 %12, %struct.acpi_video_device* %13)
  store i32 %14, i32* %3, align 4
  %15 = load i32, i32* %3, align 4
  %16 = call i64 @ACPI_FAILURE(i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %22

18:                                               ; preds = %1
  %19 = load %struct.acpi_device*, %struct.acpi_device** %4, align 8
  %20 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %19, i32 0, i32 0
  %21 = call i32 @dev_err(i32* %20, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  br label %26

22:                                               ; preds = %1
  %23 = load %struct.acpi_video_device*, %struct.acpi_video_device** %2, align 8
  %24 = getelementptr inbounds %struct.acpi_video_device, %struct.acpi_video_device* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  store i32 1, i32* %25, align 8
  br label %26

26:                                               ; preds = %22, %18
  ret void
}

declare dso_local i32 @acpi_install_notify_handler(i32, i32, i32, %struct.acpi_video_device*) #1

declare dso_local i64 @ACPI_FAILURE(i32) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
