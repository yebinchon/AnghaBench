; ModuleID = '/home/carl/AnghaBench/linux/drivers/acpi/extr_property.c_acpi_node_get_parent.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/acpi/extr_property.c_acpi_node_get_parent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fwnode_handle = type { i32 }
%struct.acpi_device = type { i32 }
%struct.TYPE_4__ = type { %struct.fwnode_handle* }
%struct.TYPE_3__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.fwnode_handle* @acpi_node_get_parent(%struct.fwnode_handle* %0) #0 {
  %2 = alloca %struct.fwnode_handle*, align 8
  %3 = alloca %struct.fwnode_handle*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.acpi_device*, align 8
  store %struct.fwnode_handle* %0, %struct.fwnode_handle** %3, align 8
  %7 = load %struct.fwnode_handle*, %struct.fwnode_handle** %3, align 8
  %8 = call i64 @is_acpi_data_node(%struct.fwnode_handle* %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %15

10:                                               ; preds = %1
  %11 = load %struct.fwnode_handle*, %struct.fwnode_handle** %3, align 8
  %12 = call %struct.TYPE_4__* @to_acpi_data_node(%struct.fwnode_handle* %11)
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load %struct.fwnode_handle*, %struct.fwnode_handle** %13, align 8
  store %struct.fwnode_handle* %14, %struct.fwnode_handle** %2, align 8
  br label %39

15:                                               ; preds = %1
  %16 = load %struct.fwnode_handle*, %struct.fwnode_handle** %3, align 8
  %17 = call i64 @is_acpi_device_node(%struct.fwnode_handle* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %37

19:                                               ; preds = %15
  %20 = load %struct.fwnode_handle*, %struct.fwnode_handle** %3, align 8
  %21 = call %struct.TYPE_3__* @to_acpi_device_node(%struct.fwnode_handle* %20)
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  store i32 %23, i32* %4, align 4
  %24 = load i32, i32* %4, align 4
  %25 = call i32 @acpi_get_parent(i32 %24, i32* %5)
  %26 = call i64 @ACPI_SUCCESS(i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %36

28:                                               ; preds = %19
  %29 = load i32, i32* %5, align 4
  %30 = call i32 @acpi_bus_get_device(i32 %29, %struct.acpi_device** %6)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %35, label %32

32:                                               ; preds = %28
  %33 = load %struct.acpi_device*, %struct.acpi_device** %6, align 8
  %34 = call %struct.fwnode_handle* @acpi_fwnode_handle(%struct.acpi_device* %33)
  store %struct.fwnode_handle* %34, %struct.fwnode_handle** %2, align 8
  br label %39

35:                                               ; preds = %28
  br label %36

36:                                               ; preds = %35, %19
  br label %37

37:                                               ; preds = %36, %15
  br label %38

38:                                               ; preds = %37
  store %struct.fwnode_handle* null, %struct.fwnode_handle** %2, align 8
  br label %39

39:                                               ; preds = %38, %32, %10
  %40 = load %struct.fwnode_handle*, %struct.fwnode_handle** %2, align 8
  ret %struct.fwnode_handle* %40
}

declare dso_local i64 @is_acpi_data_node(%struct.fwnode_handle*) #1

declare dso_local %struct.TYPE_4__* @to_acpi_data_node(%struct.fwnode_handle*) #1

declare dso_local i64 @is_acpi_device_node(%struct.fwnode_handle*) #1

declare dso_local %struct.TYPE_3__* @to_acpi_device_node(%struct.fwnode_handle*) #1

declare dso_local i64 @ACPI_SUCCESS(i32) #1

declare dso_local i32 @acpi_get_parent(i32, i32*) #1

declare dso_local i32 @acpi_bus_get_device(i32, %struct.acpi_device**) #1

declare dso_local %struct.fwnode_handle* @acpi_fwnode_handle(%struct.acpi_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
