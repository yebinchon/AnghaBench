; ModuleID = '/home/carl/AnghaBench/linux/drivers/acpi/acpica/extr_rsaddr.c_acpi_rs_get_address_common.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/acpi/acpica/extr_rsaddr.c_acpi_rs_get_address_common.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_resource = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%union.aml_resource = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32, i32 }

@FALSE = common dso_local global i32 0, align 4
@acpi_rs_convert_general_flags = common dso_local global i32 0, align 4
@ACPI_MEMORY_RANGE = common dso_local global i64 0, align 8
@acpi_rs_convert_mem_flags = common dso_local global i32 0, align 4
@ACPI_IO_RANGE = common dso_local global i64 0, align 8
@acpi_rs_convert_io_flags = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @acpi_rs_get_address_common(%struct.acpi_resource* %0, %union.aml_resource* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.acpi_resource*, align 8
  %5 = alloca %union.aml_resource*, align 8
  store %struct.acpi_resource* %0, %struct.acpi_resource** %4, align 8
  store %union.aml_resource* %1, %union.aml_resource** %5, align 8
  %6 = call i32 (...) @ACPI_FUNCTION_ENTRY()
  %7 = load %union.aml_resource*, %union.aml_resource** %5, align 8
  %8 = bitcast %union.aml_resource* %7 to %struct.TYPE_8__*
  %9 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = icmp sgt i32 %10, 2
  br i1 %11, label %12, label %20

12:                                               ; preds = %2
  %13 = load %union.aml_resource*, %union.aml_resource** %5, align 8
  %14 = bitcast %union.aml_resource* %13 to %struct.TYPE_8__*
  %15 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = icmp slt i32 %16, 192
  br i1 %17, label %18, label %20

18:                                               ; preds = %12
  %19 = load i32, i32* @FALSE, align 4
  store i32 %19, i32* %3, align 4
  br label %63

20:                                               ; preds = %12, %2
  %21 = load %struct.acpi_resource*, %struct.acpi_resource** %4, align 8
  %22 = load %union.aml_resource*, %union.aml_resource** %5, align 8
  %23 = load i32, i32* @acpi_rs_convert_general_flags, align 4
  %24 = call i32 @acpi_rs_convert_aml_to_resource(%struct.acpi_resource* %21, %union.aml_resource* %22, i32 %23)
  %25 = load %struct.acpi_resource*, %struct.acpi_resource** %4, align 8
  %26 = getelementptr inbounds %struct.acpi_resource, %struct.acpi_resource* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @ACPI_MEMORY_RANGE, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %37

32:                                               ; preds = %20
  %33 = load %struct.acpi_resource*, %struct.acpi_resource** %4, align 8
  %34 = load %union.aml_resource*, %union.aml_resource** %5, align 8
  %35 = load i32, i32* @acpi_rs_convert_mem_flags, align 4
  %36 = call i32 @acpi_rs_convert_aml_to_resource(%struct.acpi_resource* %33, %union.aml_resource* %34, i32 %35)
  br label %61

37:                                               ; preds = %20
  %38 = load %struct.acpi_resource*, %struct.acpi_resource** %4, align 8
  %39 = getelementptr inbounds %struct.acpi_resource, %struct.acpi_resource* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @ACPI_IO_RANGE, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %45, label %50

45:                                               ; preds = %37
  %46 = load %struct.acpi_resource*, %struct.acpi_resource** %4, align 8
  %47 = load %union.aml_resource*, %union.aml_resource** %5, align 8
  %48 = load i32, i32* @acpi_rs_convert_io_flags, align 4
  %49 = call i32 @acpi_rs_convert_aml_to_resource(%struct.acpi_resource* %46, %union.aml_resource* %47, i32 %48)
  br label %60

50:                                               ; preds = %37
  %51 = load %union.aml_resource*, %union.aml_resource** %5, align 8
  %52 = bitcast %union.aml_resource* %51 to %struct.TYPE_8__*
  %53 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.acpi_resource*, %struct.acpi_resource** %4, align 8
  %56 = getelementptr inbounds %struct.acpi_resource, %struct.acpi_resource* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 1
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %58, i32 0, i32 0
  store i32 %54, i32* %59, align 8
  br label %60

60:                                               ; preds = %50, %45
  br label %61

61:                                               ; preds = %60, %32
  %62 = load i32, i32* @TRUE, align 4
  store i32 %62, i32* %3, align 4
  br label %63

63:                                               ; preds = %61, %18
  %64 = load i32, i32* %3, align 4
  ret i32 %64
}

declare dso_local i32 @ACPI_FUNCTION_ENTRY(...) #1

declare dso_local i32 @acpi_rs_convert_aml_to_resource(%struct.acpi_resource*, %union.aml_resource*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
