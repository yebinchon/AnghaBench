; ModuleID = '/home/carl/AnghaBench/linux/drivers/acpi/extr_acpi_video.c_acpi_video_bus_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/acpi/extr_acpi_video.c_acpi_video_bus_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_device = type { i32 }
%struct.acpi_video_bus = type { %struct.acpi_video_bus*, i32 }

@EINVAL = common dso_local global i32 0, align 4
@video_list_lock = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.acpi_device*)* @acpi_video_bus_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @acpi_video_bus_remove(%struct.acpi_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.acpi_device*, align 8
  %4 = alloca %struct.acpi_video_bus*, align 8
  store %struct.acpi_device* %0, %struct.acpi_device** %3, align 8
  store %struct.acpi_video_bus* null, %struct.acpi_video_bus** %4, align 8
  %5 = load %struct.acpi_device*, %struct.acpi_device** %3, align 8
  %6 = icmp ne %struct.acpi_device* %5, null
  br i1 %6, label %7, label %11

7:                                                ; preds = %1
  %8 = load %struct.acpi_device*, %struct.acpi_device** %3, align 8
  %9 = call %struct.acpi_video_bus* @acpi_driver_data(%struct.acpi_device* %8)
  %10 = icmp ne %struct.acpi_video_bus* %9, null
  br i1 %10, label %14, label %11

11:                                               ; preds = %7, %1
  %12 = load i32, i32* @EINVAL, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %2, align 4
  br label %34

14:                                               ; preds = %7
  %15 = load %struct.acpi_device*, %struct.acpi_device** %3, align 8
  %16 = call %struct.acpi_video_bus* @acpi_driver_data(%struct.acpi_device* %15)
  store %struct.acpi_video_bus* %16, %struct.acpi_video_bus** %4, align 8
  %17 = load %struct.acpi_video_bus*, %struct.acpi_video_bus** %4, align 8
  %18 = call i32 @acpi_video_bus_remove_notify_handler(%struct.acpi_video_bus* %17)
  %19 = load %struct.acpi_video_bus*, %struct.acpi_video_bus** %4, align 8
  %20 = call i32 @acpi_video_bus_unregister_backlight(%struct.acpi_video_bus* %19)
  %21 = load %struct.acpi_video_bus*, %struct.acpi_video_bus** %4, align 8
  %22 = call i32 @acpi_video_bus_put_devices(%struct.acpi_video_bus* %21)
  %23 = call i32 @mutex_lock(i32* @video_list_lock)
  %24 = load %struct.acpi_video_bus*, %struct.acpi_video_bus** %4, align 8
  %25 = getelementptr inbounds %struct.acpi_video_bus, %struct.acpi_video_bus* %24, i32 0, i32 1
  %26 = call i32 @list_del(i32* %25)
  %27 = call i32 @mutex_unlock(i32* @video_list_lock)
  %28 = load %struct.acpi_video_bus*, %struct.acpi_video_bus** %4, align 8
  %29 = getelementptr inbounds %struct.acpi_video_bus, %struct.acpi_video_bus* %28, i32 0, i32 0
  %30 = load %struct.acpi_video_bus*, %struct.acpi_video_bus** %29, align 8
  %31 = call i32 @kfree(%struct.acpi_video_bus* %30)
  %32 = load %struct.acpi_video_bus*, %struct.acpi_video_bus** %4, align 8
  %33 = call i32 @kfree(%struct.acpi_video_bus* %32)
  store i32 0, i32* %2, align 4
  br label %34

34:                                               ; preds = %14, %11
  %35 = load i32, i32* %2, align 4
  ret i32 %35
}

declare dso_local %struct.acpi_video_bus* @acpi_driver_data(%struct.acpi_device*) #1

declare dso_local i32 @acpi_video_bus_remove_notify_handler(%struct.acpi_video_bus*) #1

declare dso_local i32 @acpi_video_bus_unregister_backlight(%struct.acpi_video_bus*) #1

declare dso_local i32 @acpi_video_bus_put_devices(%struct.acpi_video_bus*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @kfree(%struct.acpi_video_bus*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
