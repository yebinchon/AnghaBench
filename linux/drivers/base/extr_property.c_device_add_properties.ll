; ModuleID = '/home/carl/AnghaBench/linux/drivers/base/extr_property.c_device_add_properties.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/base/extr_property.c_device_add_properties.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.property_entry = type { i32 }
%struct.fwnode_handle = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @device_add_properties(%struct.device* %0, %struct.property_entry* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.property_entry*, align 8
  %6 = alloca %struct.fwnode_handle*, align 8
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.property_entry* %1, %struct.property_entry** %5, align 8
  %7 = load %struct.property_entry*, %struct.property_entry** %5, align 8
  %8 = call %struct.fwnode_handle* @fwnode_create_software_node(%struct.property_entry* %7, i32* null)
  store %struct.fwnode_handle* %8, %struct.fwnode_handle** %6, align 8
  %9 = load %struct.fwnode_handle*, %struct.fwnode_handle** %6, align 8
  %10 = call i64 @IS_ERR(%struct.fwnode_handle* %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %2
  %13 = load %struct.fwnode_handle*, %struct.fwnode_handle** %6, align 8
  %14 = call i32 @PTR_ERR(%struct.fwnode_handle* %13)
  store i32 %14, i32* %3, align 4
  br label %19

15:                                               ; preds = %2
  %16 = load %struct.device*, %struct.device** %4, align 8
  %17 = load %struct.fwnode_handle*, %struct.fwnode_handle** %6, align 8
  %18 = call i32 @set_secondary_fwnode(%struct.device* %16, %struct.fwnode_handle* %17)
  store i32 0, i32* %3, align 4
  br label %19

19:                                               ; preds = %15, %12
  %20 = load i32, i32* %3, align 4
  ret i32 %20
}

declare dso_local %struct.fwnode_handle* @fwnode_create_software_node(%struct.property_entry*, i32*) #1

declare dso_local i64 @IS_ERR(%struct.fwnode_handle*) #1

declare dso_local i32 @PTR_ERR(%struct.fwnode_handle*) #1

declare dso_local i32 @set_secondary_fwnode(%struct.device*, %struct.fwnode_handle*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
