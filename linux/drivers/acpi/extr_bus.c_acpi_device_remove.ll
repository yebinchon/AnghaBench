; ModuleID = '/home/carl/AnghaBench/linux/drivers/acpi/extr_bus.c_acpi_device_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/acpi/extr_bus.c_acpi_device_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.acpi_device = type { i32*, %struct.acpi_driver* }
%struct.acpi_driver = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 (%struct.acpi_device.0*)*, i64 }
%struct.acpi_device.0 = type opaque

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*)* @acpi_device_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @acpi_device_remove(%struct.device* %0) #0 {
  %2 = alloca %struct.device*, align 8
  %3 = alloca %struct.acpi_device*, align 8
  %4 = alloca %struct.acpi_driver*, align 8
  store %struct.device* %0, %struct.device** %2, align 8
  %5 = load %struct.device*, %struct.device** %2, align 8
  %6 = call %struct.acpi_device* @to_acpi_device(%struct.device* %5)
  store %struct.acpi_device* %6, %struct.acpi_device** %3, align 8
  %7 = load %struct.acpi_device*, %struct.acpi_device** %3, align 8
  %8 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %7, i32 0, i32 1
  %9 = load %struct.acpi_driver*, %struct.acpi_driver** %8, align 8
  store %struct.acpi_driver* %9, %struct.acpi_driver** %4, align 8
  %10 = load %struct.acpi_driver*, %struct.acpi_driver** %4, align 8
  %11 = icmp ne %struct.acpi_driver* %10, null
  br i1 %11, label %12, label %36

12:                                               ; preds = %1
  %13 = load %struct.acpi_driver*, %struct.acpi_driver** %4, align 8
  %14 = getelementptr inbounds %struct.acpi_driver, %struct.acpi_driver* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %12
  %19 = load %struct.acpi_device*, %struct.acpi_device** %3, align 8
  %20 = call i32 @acpi_device_remove_notify_handler(%struct.acpi_device* %19)
  br label %21

21:                                               ; preds = %18, %12
  %22 = load %struct.acpi_driver*, %struct.acpi_driver** %4, align 8
  %23 = getelementptr inbounds %struct.acpi_driver, %struct.acpi_driver* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i32 (%struct.acpi_device.0*)*, i32 (%struct.acpi_device.0*)** %24, align 8
  %26 = icmp ne i32 (%struct.acpi_device.0*)* %25, null
  br i1 %26, label %27, label %35

27:                                               ; preds = %21
  %28 = load %struct.acpi_driver*, %struct.acpi_driver** %4, align 8
  %29 = getelementptr inbounds %struct.acpi_driver, %struct.acpi_driver* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i32 (%struct.acpi_device.0*)*, i32 (%struct.acpi_device.0*)** %30, align 8
  %32 = load %struct.acpi_device*, %struct.acpi_device** %3, align 8
  %33 = bitcast %struct.acpi_device* %32 to %struct.acpi_device.0*
  %34 = call i32 %31(%struct.acpi_device.0* %33)
  br label %35

35:                                               ; preds = %27, %21
  br label %36

36:                                               ; preds = %35, %1
  %37 = load %struct.acpi_device*, %struct.acpi_device** %3, align 8
  %38 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %37, i32 0, i32 1
  store %struct.acpi_driver* null, %struct.acpi_driver** %38, align 8
  %39 = load %struct.acpi_device*, %struct.acpi_device** %3, align 8
  %40 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %39, i32 0, i32 0
  store i32* null, i32** %40, align 8
  %41 = load %struct.device*, %struct.device** %2, align 8
  %42 = call i32 @put_device(%struct.device* %41)
  ret i32 0
}

declare dso_local %struct.acpi_device* @to_acpi_device(%struct.device*) #1

declare dso_local i32 @acpi_device_remove_notify_handler(%struct.acpi_device*) #1

declare dso_local i32 @put_device(%struct.device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
