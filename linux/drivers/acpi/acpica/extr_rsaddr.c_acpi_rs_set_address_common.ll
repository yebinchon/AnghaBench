; ModuleID = '/home/carl/AnghaBench/linux/drivers/acpi/acpica/extr_rsaddr.c_acpi_rs_set_address_common.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/acpi/acpica/extr_rsaddr.c_acpi_rs_set_address_common.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.aml_resource = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }
%struct.acpi_resource = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }

@acpi_rs_convert_general_flags = common dso_local global i32 0, align 4
@ACPI_MEMORY_RANGE = common dso_local global i64 0, align 8
@acpi_rs_convert_mem_flags = common dso_local global i32 0, align 4
@ACPI_IO_RANGE = common dso_local global i64 0, align 8
@acpi_rs_convert_io_flags = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @acpi_rs_set_address_common(%union.aml_resource* %0, %struct.acpi_resource* %1) #0 {
  %3 = alloca %union.aml_resource*, align 8
  %4 = alloca %struct.acpi_resource*, align 8
  store %union.aml_resource* %0, %union.aml_resource** %3, align 8
  store %struct.acpi_resource* %1, %struct.acpi_resource** %4, align 8
  %5 = call i32 (...) @ACPI_FUNCTION_ENTRY()
  %6 = load %struct.acpi_resource*, %struct.acpi_resource** %4, align 8
  %7 = load %union.aml_resource*, %union.aml_resource** %3, align 8
  %8 = load i32, i32* @acpi_rs_convert_general_flags, align 4
  %9 = call i32 @acpi_rs_convert_resource_to_aml(%struct.acpi_resource* %6, %union.aml_resource* %7, i32 %8)
  %10 = load %struct.acpi_resource*, %struct.acpi_resource** %4, align 8
  %11 = getelementptr inbounds %struct.acpi_resource, %struct.acpi_resource* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @ACPI_MEMORY_RANGE, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %22

17:                                               ; preds = %2
  %18 = load %struct.acpi_resource*, %struct.acpi_resource** %4, align 8
  %19 = load %union.aml_resource*, %union.aml_resource** %3, align 8
  %20 = load i32, i32* @acpi_rs_convert_mem_flags, align 4
  %21 = call i32 @acpi_rs_convert_resource_to_aml(%struct.acpi_resource* %18, %union.aml_resource* %19, i32 %20)
  br label %46

22:                                               ; preds = %2
  %23 = load %struct.acpi_resource*, %struct.acpi_resource** %4, align 8
  %24 = getelementptr inbounds %struct.acpi_resource, %struct.acpi_resource* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @ACPI_IO_RANGE, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %35

30:                                               ; preds = %22
  %31 = load %struct.acpi_resource*, %struct.acpi_resource** %4, align 8
  %32 = load %union.aml_resource*, %union.aml_resource** %3, align 8
  %33 = load i32, i32* @acpi_rs_convert_io_flags, align 4
  %34 = call i32 @acpi_rs_convert_resource_to_aml(%struct.acpi_resource* %31, %union.aml_resource* %32, i32 %33)
  br label %45

35:                                               ; preds = %22
  %36 = load %struct.acpi_resource*, %struct.acpi_resource** %4, align 8
  %37 = getelementptr inbounds %struct.acpi_resource, %struct.acpi_resource* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = load %union.aml_resource*, %union.aml_resource** %3, align 8
  %43 = bitcast %union.aml_resource* %42 to %struct.TYPE_8__*
  %44 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %43, i32 0, i32 0
  store i32 %41, i32* %44, align 4
  br label %45

45:                                               ; preds = %35, %30
  br label %46

46:                                               ; preds = %45, %17
  ret void
}

declare dso_local i32 @ACPI_FUNCTION_ENTRY(...) #1

declare dso_local i32 @acpi_rs_convert_resource_to_aml(%struct.acpi_resource*, %union.aml_resource*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
