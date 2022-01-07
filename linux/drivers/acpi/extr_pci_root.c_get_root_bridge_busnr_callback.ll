; ModuleID = '/home/carl/AnghaBench/linux/drivers/acpi/extr_pci_root.c_get_root_bridge_busnr_callback.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/acpi/extr_pci_root.c_get_root_bridge_busnr_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_resource = type { i32 }
%struct.resource = type { i64, i64 }
%struct.acpi_resource_address64 = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i64 }

@AE_OK = common dso_local global i32 0, align 4
@ACPI_BUS_NUMBER_RANGE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.acpi_resource*, i8*)* @get_root_bridge_busnr_callback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_root_bridge_busnr_callback(%struct.acpi_resource* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.acpi_resource*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.resource*, align 8
  %7 = alloca %struct.acpi_resource_address64, align 8
  %8 = alloca i32, align 4
  store %struct.acpi_resource* %0, %struct.acpi_resource** %4, align 8
  store i8* %1, i8** %5, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = bitcast i8* %9 to %struct.resource*
  store %struct.resource* %10, %struct.resource** %6, align 8
  %11 = load %struct.acpi_resource*, %struct.acpi_resource** %4, align 8
  %12 = call i32 @acpi_resource_to_address64(%struct.acpi_resource* %11, %struct.acpi_resource_address64* %7)
  store i32 %12, i32* %8, align 4
  %13 = load i32, i32* %8, align 4
  %14 = call i64 @ACPI_FAILURE(i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %2
  %17 = load i32, i32* @AE_OK, align 4
  store i32 %17, i32* %3, align 4
  br label %46

18:                                               ; preds = %2
  %19 = getelementptr inbounds %struct.acpi_resource_address64, %struct.acpi_resource_address64* %7, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp sgt i64 %21, 0
  br i1 %22, label %23, label %44

23:                                               ; preds = %18
  %24 = getelementptr inbounds %struct.acpi_resource_address64, %struct.acpi_resource_address64* %7, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @ACPI_BUS_NUMBER_RANGE, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %44

28:                                               ; preds = %23
  %29 = getelementptr inbounds %struct.acpi_resource_address64, %struct.acpi_resource_address64* %7, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = load %struct.resource*, %struct.resource** %6, align 8
  %33 = getelementptr inbounds %struct.resource, %struct.resource* %32, i32 0, i32 0
  store i64 %31, i64* %33, align 8
  %34 = getelementptr inbounds %struct.acpi_resource_address64, %struct.acpi_resource_address64* %7, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = getelementptr inbounds %struct.acpi_resource_address64, %struct.acpi_resource_address64* %7, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = add nsw i64 %36, %39
  %41 = sub nsw i64 %40, 1
  %42 = load %struct.resource*, %struct.resource** %6, align 8
  %43 = getelementptr inbounds %struct.resource, %struct.resource* %42, i32 0, i32 1
  store i64 %41, i64* %43, align 8
  br label %44

44:                                               ; preds = %28, %23, %18
  %45 = load i32, i32* @AE_OK, align 4
  store i32 %45, i32* %3, align 4
  br label %46

46:                                               ; preds = %44, %16
  %47 = load i32, i32* %3, align 4
  ret i32 %47
}

declare dso_local i32 @acpi_resource_to_address64(%struct.acpi_resource*, %struct.acpi_resource_address64*) #1

declare dso_local i64 @ACPI_FAILURE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
