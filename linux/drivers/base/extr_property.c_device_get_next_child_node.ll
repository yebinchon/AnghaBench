; ModuleID = '/home/carl/AnghaBench/linux/drivers/base/extr_property.c_device_get_next_child_node.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/base/extr_property.c_device_get_next_child_node.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.fwnode_handle }
%struct.fwnode_handle = type { i32 }
%struct.acpi_device = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.fwnode_handle* @device_get_next_child_node(%struct.device* %0, %struct.fwnode_handle* %1) #0 {
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.fwnode_handle*, align 8
  %5 = alloca %struct.acpi_device*, align 8
  %6 = alloca %struct.fwnode_handle*, align 8
  store %struct.device* %0, %struct.device** %3, align 8
  store %struct.fwnode_handle* %1, %struct.fwnode_handle** %4, align 8
  %7 = load %struct.device*, %struct.device** %3, align 8
  %8 = call %struct.acpi_device* @ACPI_COMPANION(%struct.device* %7)
  store %struct.acpi_device* %8, %struct.acpi_device** %5, align 8
  store %struct.fwnode_handle* null, %struct.fwnode_handle** %6, align 8
  %9 = load %struct.device*, %struct.device** %3, align 8
  %10 = getelementptr inbounds %struct.device, %struct.device* %9, i32 0, i32 0
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = icmp ne %struct.TYPE_2__* %11, null
  br i1 %12, label %13, label %18

13:                                               ; preds = %2
  %14 = load %struct.device*, %struct.device** %3, align 8
  %15 = getelementptr inbounds %struct.device, %struct.device* %14, i32 0, i32 0
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  store %struct.fwnode_handle* %17, %struct.fwnode_handle** %6, align 8
  br label %25

18:                                               ; preds = %2
  %19 = load %struct.acpi_device*, %struct.acpi_device** %5, align 8
  %20 = icmp ne %struct.acpi_device* %19, null
  br i1 %20, label %21, label %24

21:                                               ; preds = %18
  %22 = load %struct.acpi_device*, %struct.acpi_device** %5, align 8
  %23 = call %struct.fwnode_handle* @acpi_fwnode_handle(%struct.acpi_device* %22)
  store %struct.fwnode_handle* %23, %struct.fwnode_handle** %6, align 8
  br label %24

24:                                               ; preds = %21, %18
  br label %25

25:                                               ; preds = %24, %13
  %26 = load %struct.fwnode_handle*, %struct.fwnode_handle** %6, align 8
  %27 = load %struct.fwnode_handle*, %struct.fwnode_handle** %4, align 8
  %28 = call %struct.fwnode_handle* @fwnode_get_next_child_node(%struct.fwnode_handle* %26, %struct.fwnode_handle* %27)
  ret %struct.fwnode_handle* %28
}

declare dso_local %struct.acpi_device* @ACPI_COMPANION(%struct.device*) #1

declare dso_local %struct.fwnode_handle* @acpi_fwnode_handle(%struct.acpi_device*) #1

declare dso_local %struct.fwnode_handle* @fwnode_get_next_child_node(%struct.fwnode_handle*, %struct.fwnode_handle*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
