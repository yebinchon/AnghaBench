; ModuleID = '/home/carl/AnghaBench/linux/drivers/acpi/extr_resource.c_acpi_dev_resource_address_space.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/acpi/extr_resource.c_acpi_dev_resource_address_space.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_resource = type { i32 }
%struct.resource_win = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }
%struct.acpi_resource_address64 = type { i32 }
%struct.acpi_resource_address = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @acpi_dev_resource_address_space(%struct.acpi_resource* %0, %struct.resource_win* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.acpi_resource*, align 8
  %5 = alloca %struct.resource_win*, align 8
  %6 = alloca %struct.acpi_resource_address64, align 4
  store %struct.acpi_resource* %0, %struct.acpi_resource** %4, align 8
  store %struct.resource_win* %1, %struct.resource_win** %5, align 8
  %7 = load %struct.resource_win*, %struct.resource_win** %5, align 8
  %8 = getelementptr inbounds %struct.resource_win, %struct.resource_win* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  store i64 0, i64* %9, align 8
  %10 = load %struct.acpi_resource*, %struct.acpi_resource** %4, align 8
  %11 = call i32 @acpi_resource_to_address64(%struct.acpi_resource* %10, %struct.acpi_resource_address64* %6)
  %12 = call i64 @ACPI_FAILURE(i32 %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %20

15:                                               ; preds = %2
  %16 = load %struct.resource_win*, %struct.resource_win** %5, align 8
  %17 = bitcast %struct.acpi_resource_address64* %6 to %struct.acpi_resource_address*
  %18 = getelementptr inbounds %struct.acpi_resource_address64, %struct.acpi_resource_address64* %6, i32 0, i32 0
  %19 = call i32 @acpi_decode_space(%struct.resource_win* %16, %struct.acpi_resource_address* %17, i32* %18)
  store i32 %19, i32* %3, align 4
  br label %20

20:                                               ; preds = %15, %14
  %21 = load i32, i32* %3, align 4
  ret i32 %21
}

declare dso_local i64 @ACPI_FAILURE(i32) #1

declare dso_local i32 @acpi_resource_to_address64(%struct.acpi_resource*, %struct.acpi_resource_address64*) #1

declare dso_local i32 @acpi_decode_space(%struct.resource_win*, %struct.acpi_resource_address*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
