; ModuleID = '/home/carl/AnghaBench/linux/arch/ia64/kernel/extr_acpi-ext.c_hp_ccsr_locate.c'
source_filename = "/home/carl/AnghaBench/linux/arch/ia64/kernel/extr_acpi-ext.c_hp_ccsr_locate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_buffer = type { %struct.acpi_resource*, i32*, i32 }
%struct.acpi_resource = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.acpi_resource_vendor_typed }
%struct.acpi_resource_vendor_typed = type { i32, i64 }

@ACPI_ALLOCATE_BUFFER = common dso_local global i32 0, align 4
@METHOD_NAME__CRS = common dso_local global i32 0, align 4
@hp_ccsr_uuid = common dso_local global i32 0, align 4
@AE_NOT_FOUND = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32*, i32*)* @hp_ccsr_locate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hp_ccsr_locate(i32 %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.acpi_buffer, align 8
  %9 = alloca %struct.acpi_resource*, align 8
  %10 = alloca %struct.acpi_resource_vendor_typed*, align 8
  store i32 %0, i32* %4, align 4
  store i32* %1, i32** %5, align 8
  store i32* %2, i32** %6, align 8
  %11 = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %8, i32 0, i32 0
  %12 = load i32, i32* @ACPI_ALLOCATE_BUFFER, align 4
  %13 = sext i32 %12 to i64
  %14 = inttoptr i64 %13 to %struct.acpi_resource*
  store %struct.acpi_resource* %14, %struct.acpi_resource** %11, align 8
  %15 = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %8, i32 0, i32 1
  store i32* null, i32** %15, align 8
  %16 = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %8, i32 0, i32 2
  store i32 0, i32* %16, align 8
  %17 = load i32, i32* %4, align 4
  %18 = load i32, i32* @METHOD_NAME__CRS, align 4
  %19 = call i32 @acpi_get_vendor_resource(i32 %17, i32 %18, i32* @hp_ccsr_uuid, %struct.acpi_buffer* %8)
  store i32 %19, i32* %7, align 4
  %20 = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %8, i32 0, i32 0
  %21 = load %struct.acpi_resource*, %struct.acpi_resource** %20, align 8
  store %struct.acpi_resource* %21, %struct.acpi_resource** %9, align 8
  %22 = load %struct.acpi_resource*, %struct.acpi_resource** %9, align 8
  %23 = getelementptr inbounds %struct.acpi_resource, %struct.acpi_resource* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  store %struct.acpi_resource_vendor_typed* %24, %struct.acpi_resource_vendor_typed** %10, align 8
  %25 = load i32, i32* %7, align 4
  %26 = call i64 @ACPI_FAILURE(i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %33, label %28

28:                                               ; preds = %3
  %29 = load %struct.acpi_resource_vendor_typed*, %struct.acpi_resource_vendor_typed** %10, align 8
  %30 = getelementptr inbounds %struct.acpi_resource_vendor_typed, %struct.acpi_resource_vendor_typed* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = icmp slt i32 %31, 16
  br i1 %32, label %33, label %35

33:                                               ; preds = %28, %3
  %34 = load i32, i32* @AE_NOT_FOUND, align 4
  store i32 %34, i32* %7, align 4
  br label %47

35:                                               ; preds = %28
  %36 = load i32*, i32** %5, align 8
  %37 = load %struct.acpi_resource_vendor_typed*, %struct.acpi_resource_vendor_typed** %10, align 8
  %38 = getelementptr inbounds %struct.acpi_resource_vendor_typed, %struct.acpi_resource_vendor_typed* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = call i32 @memcpy(i32* %36, i64 %39, i32 4)
  %41 = load i32*, i32** %6, align 8
  %42 = load %struct.acpi_resource_vendor_typed*, %struct.acpi_resource_vendor_typed** %10, align 8
  %43 = getelementptr inbounds %struct.acpi_resource_vendor_typed, %struct.acpi_resource_vendor_typed* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = add nsw i64 %44, 8
  %46 = call i32 @memcpy(i32* %41, i64 %45, i32 4)
  br label %47

47:                                               ; preds = %35, %33
  %48 = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %8, i32 0, i32 0
  %49 = load %struct.acpi_resource*, %struct.acpi_resource** %48, align 8
  %50 = call i32 @kfree(%struct.acpi_resource* %49)
  %51 = load i32, i32* %7, align 4
  ret i32 %51
}

declare dso_local i32 @acpi_get_vendor_resource(i32, i32, i32*, %struct.acpi_buffer*) #1

declare dso_local i64 @ACPI_FAILURE(i32) #1

declare dso_local i32 @memcpy(i32*, i64, i32) #1

declare dso_local i32 @kfree(%struct.acpi_resource*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
