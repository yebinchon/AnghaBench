; ModuleID = '/home/carl/AnghaBench/linux/drivers/acpi/extr_glue.c_acpi_device_notify_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/acpi/extr_glue.c_acpi_device_notify_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.acpi_device = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.device*)* }
%struct.acpi_bus_type = type { i32 (%struct.device*)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*)* @acpi_device_notify_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @acpi_device_notify_remove(%struct.device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.acpi_device*, align 8
  %5 = alloca %struct.acpi_bus_type*, align 8
  store %struct.device* %0, %struct.device** %3, align 8
  %6 = load %struct.device*, %struct.device** %3, align 8
  %7 = call %struct.acpi_device* @ACPI_COMPANION(%struct.device* %6)
  store %struct.acpi_device* %7, %struct.acpi_device** %4, align 8
  %8 = load %struct.acpi_device*, %struct.acpi_device** %4, align 8
  %9 = icmp ne %struct.acpi_device* %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %51

11:                                               ; preds = %1
  %12 = load %struct.device*, %struct.device** %3, align 8
  %13 = call %struct.acpi_bus_type* @acpi_get_bus_type(%struct.device* %12)
  store %struct.acpi_bus_type* %13, %struct.acpi_bus_type** %5, align 8
  %14 = load %struct.acpi_bus_type*, %struct.acpi_bus_type** %5, align 8
  %15 = icmp ne %struct.acpi_bus_type* %14, null
  br i1 %15, label %16, label %27

16:                                               ; preds = %11
  %17 = load %struct.acpi_bus_type*, %struct.acpi_bus_type** %5, align 8
  %18 = getelementptr inbounds %struct.acpi_bus_type, %struct.acpi_bus_type* %17, i32 0, i32 0
  %19 = load i32 (%struct.device*)*, i32 (%struct.device*)** %18, align 8
  %20 = icmp ne i32 (%struct.device*)* %19, null
  br i1 %20, label %21, label %27

21:                                               ; preds = %16
  %22 = load %struct.acpi_bus_type*, %struct.acpi_bus_type** %5, align 8
  %23 = getelementptr inbounds %struct.acpi_bus_type, %struct.acpi_bus_type* %22, i32 0, i32 0
  %24 = load i32 (%struct.device*)*, i32 (%struct.device*)** %23, align 8
  %25 = load %struct.device*, %struct.device** %3, align 8
  %26 = call i32 %24(%struct.device* %25)
  br label %48

27:                                               ; preds = %16, %11
  %28 = load %struct.acpi_device*, %struct.acpi_device** %4, align 8
  %29 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %28, i32 0, i32 0
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = icmp ne %struct.TYPE_2__* %30, null
  br i1 %31, label %32, label %47

32:                                               ; preds = %27
  %33 = load %struct.acpi_device*, %struct.acpi_device** %4, align 8
  %34 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %33, i32 0, i32 0
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i32 (%struct.device*)*, i32 (%struct.device*)** %36, align 8
  %38 = icmp ne i32 (%struct.device*)* %37, null
  br i1 %38, label %39, label %47

39:                                               ; preds = %32
  %40 = load %struct.acpi_device*, %struct.acpi_device** %4, align 8
  %41 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %40, i32 0, i32 0
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = load i32 (%struct.device*)*, i32 (%struct.device*)** %43, align 8
  %45 = load %struct.device*, %struct.device** %3, align 8
  %46 = call i32 %44(%struct.device* %45)
  br label %47

47:                                               ; preds = %39, %32, %27
  br label %48

48:                                               ; preds = %47, %21
  %49 = load %struct.device*, %struct.device** %3, align 8
  %50 = call i32 @acpi_unbind_one(%struct.device* %49)
  store i32 0, i32* %2, align 4
  br label %51

51:                                               ; preds = %48, %10
  %52 = load i32, i32* %2, align 4
  ret i32 %52
}

declare dso_local %struct.acpi_device* @ACPI_COMPANION(%struct.device*) #1

declare dso_local %struct.acpi_bus_type* @acpi_get_bus_type(%struct.device*) #1

declare dso_local i32 @acpi_unbind_one(%struct.device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
