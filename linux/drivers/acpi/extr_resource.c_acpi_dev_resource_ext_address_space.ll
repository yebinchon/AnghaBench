; ModuleID = '/home/carl/AnghaBench/linux/drivers/acpi/extr_resource.c_acpi_dev_resource_ext_address_space.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/acpi/extr_resource.c_acpi_dev_resource_ext_address_space.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_resource = type { i64, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.acpi_resource_extended_address64 }
%struct.acpi_resource_extended_address64 = type { i32 }
%struct.resource_win = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }
%struct.acpi_resource_address = type { i32 }

@ACPI_RESOURCE_TYPE_EXTENDED_ADDRESS64 = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @acpi_dev_resource_ext_address_space(%struct.acpi_resource* %0, %struct.resource_win* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.acpi_resource*, align 8
  %5 = alloca %struct.resource_win*, align 8
  %6 = alloca %struct.acpi_resource_extended_address64*, align 8
  store %struct.acpi_resource* %0, %struct.acpi_resource** %4, align 8
  store %struct.resource_win* %1, %struct.resource_win** %5, align 8
  %7 = load %struct.resource_win*, %struct.resource_win** %5, align 8
  %8 = getelementptr inbounds %struct.resource_win, %struct.resource_win* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  store i64 0, i64* %9, align 8
  %10 = load %struct.acpi_resource*, %struct.acpi_resource** %4, align 8
  %11 = getelementptr inbounds %struct.acpi_resource, %struct.acpi_resource* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @ACPI_RESOURCE_TYPE_EXTENDED_ADDRESS64, align 8
  %14 = icmp ne i64 %12, %13
  br i1 %14, label %15, label %16

15:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %26

16:                                               ; preds = %2
  %17 = load %struct.acpi_resource*, %struct.acpi_resource** %4, align 8
  %18 = getelementptr inbounds %struct.acpi_resource, %struct.acpi_resource* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  store %struct.acpi_resource_extended_address64* %19, %struct.acpi_resource_extended_address64** %6, align 8
  %20 = load %struct.resource_win*, %struct.resource_win** %5, align 8
  %21 = load %struct.acpi_resource_extended_address64*, %struct.acpi_resource_extended_address64** %6, align 8
  %22 = bitcast %struct.acpi_resource_extended_address64* %21 to %struct.acpi_resource_address*
  %23 = load %struct.acpi_resource_extended_address64*, %struct.acpi_resource_extended_address64** %6, align 8
  %24 = getelementptr inbounds %struct.acpi_resource_extended_address64, %struct.acpi_resource_extended_address64* %23, i32 0, i32 0
  %25 = call i32 @acpi_decode_space(%struct.resource_win* %20, %struct.acpi_resource_address* %22, i32* %24)
  store i32 %25, i32* %3, align 4
  br label %26

26:                                               ; preds = %16, %15
  %27 = load i32, i32* %3, align 4
  ret i32 %27
}

declare dso_local i32 @acpi_decode_space(%struct.resource_win*, %struct.acpi_resource_address*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
