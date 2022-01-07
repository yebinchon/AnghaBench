; ModuleID = '/home/carl/AnghaBench/linux/drivers/acpi/extr_property.c_acpi_data_add_props.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/acpi/extr_property.c_acpi_data_add_props.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_device_properties = type { i32, %union.acpi_object*, i32* }
%struct.acpi_device_data = type { i32 }
%union.acpi_object = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.acpi_device_properties* @acpi_data_add_props(%struct.acpi_device_data* %0, i32* %1, %union.acpi_object* %2) #0 {
  %4 = alloca %struct.acpi_device_data*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %union.acpi_object*, align 8
  %7 = alloca %struct.acpi_device_properties*, align 8
  store %struct.acpi_device_data* %0, %struct.acpi_device_data** %4, align 8
  store i32* %1, i32** %5, align 8
  store %union.acpi_object* %2, %union.acpi_object** %6, align 8
  %8 = load i32, i32* @GFP_KERNEL, align 4
  %9 = call %struct.acpi_device_properties* @kzalloc(i32 24, i32 %8)
  store %struct.acpi_device_properties* %9, %struct.acpi_device_properties** %7, align 8
  %10 = load %struct.acpi_device_properties*, %struct.acpi_device_properties** %7, align 8
  %11 = icmp ne %struct.acpi_device_properties* %10, null
  br i1 %11, label %12, label %27

12:                                               ; preds = %3
  %13 = load %struct.acpi_device_properties*, %struct.acpi_device_properties** %7, align 8
  %14 = getelementptr inbounds %struct.acpi_device_properties, %struct.acpi_device_properties* %13, i32 0, i32 0
  %15 = call i32 @INIT_LIST_HEAD(i32* %14)
  %16 = load i32*, i32** %5, align 8
  %17 = load %struct.acpi_device_properties*, %struct.acpi_device_properties** %7, align 8
  %18 = getelementptr inbounds %struct.acpi_device_properties, %struct.acpi_device_properties* %17, i32 0, i32 2
  store i32* %16, i32** %18, align 8
  %19 = load %union.acpi_object*, %union.acpi_object** %6, align 8
  %20 = load %struct.acpi_device_properties*, %struct.acpi_device_properties** %7, align 8
  %21 = getelementptr inbounds %struct.acpi_device_properties, %struct.acpi_device_properties* %20, i32 0, i32 1
  store %union.acpi_object* %19, %union.acpi_object** %21, align 8
  %22 = load %struct.acpi_device_properties*, %struct.acpi_device_properties** %7, align 8
  %23 = getelementptr inbounds %struct.acpi_device_properties, %struct.acpi_device_properties* %22, i32 0, i32 0
  %24 = load %struct.acpi_device_data*, %struct.acpi_device_data** %4, align 8
  %25 = getelementptr inbounds %struct.acpi_device_data, %struct.acpi_device_data* %24, i32 0, i32 0
  %26 = call i32 @list_add_tail(i32* %23, i32* %25)
  br label %27

27:                                               ; preds = %12, %3
  %28 = load %struct.acpi_device_properties*, %struct.acpi_device_properties** %7, align 8
  ret %struct.acpi_device_properties* %28
}

declare dso_local %struct.acpi_device_properties* @kzalloc(i32, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
