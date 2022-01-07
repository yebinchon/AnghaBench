; ModuleID = '/home/carl/AnghaBench/linux/drivers/acpi/extr_resource.c_acpi_dev_get_resources.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/acpi/extr_resource.c_acpi_dev_get_resources.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_device = type { i32 }
%struct.list_head = type { i32 }
%struct.acpi_resource = type opaque
%struct.acpi_resource.0 = type opaque

@METHOD_NAME__CRS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @acpi_dev_get_resources(%struct.acpi_device* %0, %struct.list_head* %1, i32 (%struct.acpi_resource*, i8*)* %2, i8* %3) #0 {
  %5 = alloca %struct.acpi_device*, align 8
  %6 = alloca %struct.list_head*, align 8
  %7 = alloca i32 (%struct.acpi_resource*, i8*)*, align 8
  %8 = alloca i8*, align 8
  store %struct.acpi_device* %0, %struct.acpi_device** %5, align 8
  store %struct.list_head* %1, %struct.list_head** %6, align 8
  store i32 (%struct.acpi_resource*, i8*)* %2, i32 (%struct.acpi_resource*, i8*)** %7, align 8
  store i8* %3, i8** %8, align 8
  %9 = load %struct.acpi_device*, %struct.acpi_device** %5, align 8
  %10 = load %struct.list_head*, %struct.list_head** %6, align 8
  %11 = load i32 (%struct.acpi_resource*, i8*)*, i32 (%struct.acpi_resource*, i8*)** %7, align 8
  %12 = bitcast i32 (%struct.acpi_resource*, i8*)* %11 to i32 (%struct.acpi_resource.0*, i8*)*
  %13 = load i8*, i8** %8, align 8
  %14 = load i32, i32* @METHOD_NAME__CRS, align 4
  %15 = call i32 @__acpi_dev_get_resources(%struct.acpi_device* %9, %struct.list_head* %10, i32 (%struct.acpi_resource.0*, i8*)* %12, i8* %13, i32 %14)
  ret i32 %15
}

declare dso_local i32 @__acpi_dev_get_resources(%struct.acpi_device*, %struct.list_head*, i32 (%struct.acpi_resource.0*, i8*)*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
