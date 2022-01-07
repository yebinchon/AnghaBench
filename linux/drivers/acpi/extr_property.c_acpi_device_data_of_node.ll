; ModuleID = '/home/carl/AnghaBench/linux/drivers/acpi/extr_property.c_acpi_device_data_of_node.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/acpi/extr_property.c_acpi_device_data_of_node.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_device_data = type { i32 }
%struct.fwnode_handle = type { i32 }
%struct.acpi_device = type { %struct.acpi_device_data }
%struct.acpi_data_node = type { %struct.acpi_device_data }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.acpi_device_data* (%struct.fwnode_handle*)* @acpi_device_data_of_node to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.acpi_device_data* @acpi_device_data_of_node(%struct.fwnode_handle* %0) #0 {
  %2 = alloca %struct.acpi_device_data*, align 8
  %3 = alloca %struct.fwnode_handle*, align 8
  %4 = alloca %struct.acpi_device*, align 8
  %5 = alloca %struct.acpi_data_node*, align 8
  store %struct.fwnode_handle* %0, %struct.fwnode_handle** %3, align 8
  %6 = load %struct.fwnode_handle*, %struct.fwnode_handle** %3, align 8
  %7 = call i64 @is_acpi_device_node(%struct.fwnode_handle* %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %14

9:                                                ; preds = %1
  %10 = load %struct.fwnode_handle*, %struct.fwnode_handle** %3, align 8
  %11 = call %struct.acpi_device* @to_acpi_device_node(%struct.fwnode_handle* %10)
  store %struct.acpi_device* %11, %struct.acpi_device** %4, align 8
  %12 = load %struct.acpi_device*, %struct.acpi_device** %4, align 8
  %13 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %12, i32 0, i32 0
  store %struct.acpi_device_data* %13, %struct.acpi_device_data** %2, align 8
  br label %25

14:                                               ; preds = %1
  %15 = load %struct.fwnode_handle*, %struct.fwnode_handle** %3, align 8
  %16 = call i64 @is_acpi_data_node(%struct.fwnode_handle* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %23

18:                                               ; preds = %14
  %19 = load %struct.fwnode_handle*, %struct.fwnode_handle** %3, align 8
  %20 = call %struct.acpi_data_node* @to_acpi_data_node(%struct.fwnode_handle* %19)
  store %struct.acpi_data_node* %20, %struct.acpi_data_node** %5, align 8
  %21 = load %struct.acpi_data_node*, %struct.acpi_data_node** %5, align 8
  %22 = getelementptr inbounds %struct.acpi_data_node, %struct.acpi_data_node* %21, i32 0, i32 0
  store %struct.acpi_device_data* %22, %struct.acpi_device_data** %2, align 8
  br label %25

23:                                               ; preds = %14
  br label %24

24:                                               ; preds = %23
  store %struct.acpi_device_data* null, %struct.acpi_device_data** %2, align 8
  br label %25

25:                                               ; preds = %24, %18, %9
  %26 = load %struct.acpi_device_data*, %struct.acpi_device_data** %2, align 8
  ret %struct.acpi_device_data* %26
}

declare dso_local i64 @is_acpi_device_node(%struct.fwnode_handle*) #1

declare dso_local %struct.acpi_device* @to_acpi_device_node(%struct.fwnode_handle*) #1

declare dso_local i64 @is_acpi_data_node(%struct.fwnode_handle*) #1

declare dso_local %struct.acpi_data_node* @to_acpi_data_node(%struct.fwnode_handle*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
