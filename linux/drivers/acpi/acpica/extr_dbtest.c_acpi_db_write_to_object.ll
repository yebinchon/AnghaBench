; ModuleID = '/home/carl/AnghaBench/linux/drivers/acpi/acpica/extr_dbtest.c_acpi_db_write_to_object.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/acpi/acpica/extr_dbtest.c_acpi_db_write_to_object.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_namespace_node = type { i32 }
%union.acpi_object = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }
%struct.acpi_object_list = type { i32, %union.acpi_object* }

@ACPI_TYPE_LOCAL_REFERENCE = common dso_local global i32 0, align 4
@acpi_handle = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@acpi_gbl_method_executing = common dso_local global i32 0, align 4
@write_handle = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"Could not write to object, %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.acpi_namespace_node*, %union.acpi_object*)* @acpi_db_write_to_object to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @acpi_db_write_to_object(%struct.acpi_namespace_node* %0, %union.acpi_object* %1) #0 {
  %3 = alloca %struct.acpi_namespace_node*, align 8
  %4 = alloca %union.acpi_object*, align 8
  %5 = alloca %struct.acpi_object_list, align 8
  %6 = alloca [2 x %union.acpi_object], align 16
  %7 = alloca i32, align 4
  store %struct.acpi_namespace_node* %0, %struct.acpi_namespace_node** %3, align 8
  store %union.acpi_object* %1, %union.acpi_object** %4, align 8
  %8 = load i32, i32* @ACPI_TYPE_LOCAL_REFERENCE, align 4
  %9 = getelementptr inbounds [2 x %union.acpi_object], [2 x %union.acpi_object]* %6, i64 0, i64 0
  %10 = bitcast %union.acpi_object* %9 to i32*
  store i32 %8, i32* %10, align 16
  %11 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %3, align 8
  %12 = getelementptr inbounds %struct.acpi_namespace_node, %struct.acpi_namespace_node* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = getelementptr inbounds [2 x %union.acpi_object], [2 x %union.acpi_object]* %6, i64 0, i64 0
  %15 = bitcast %union.acpi_object* %14 to %struct.TYPE_2__*
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 1
  store i32 %13, i32* %16, align 4
  %17 = load i32, i32* @acpi_handle, align 4
  %18 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %3, align 8
  %19 = call i32 @ACPI_CAST_PTR(i32 %17, %struct.acpi_namespace_node* %18)
  %20 = getelementptr inbounds [2 x %union.acpi_object], [2 x %union.acpi_object]* %6, i64 0, i64 0
  %21 = bitcast %union.acpi_object* %20 to %struct.TYPE_2__*
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  store i32 %19, i32* %22, align 16
  %23 = getelementptr inbounds [2 x %union.acpi_object], [2 x %union.acpi_object]* %6, i64 0, i64 1
  %24 = load %union.acpi_object*, %union.acpi_object** %4, align 8
  %25 = call i32 @memcpy(%union.acpi_object* %23, %union.acpi_object* %24, i32 8)
  %26 = getelementptr inbounds %struct.acpi_object_list, %struct.acpi_object_list* %5, i32 0, i32 0
  store i32 2, i32* %26, align 8
  %27 = getelementptr inbounds [2 x %union.acpi_object], [2 x %union.acpi_object]* %6, i64 0, i64 0
  %28 = getelementptr inbounds %struct.acpi_object_list, %struct.acpi_object_list* %5, i32 0, i32 1
  store %union.acpi_object* %27, %union.acpi_object** %28, align 8
  %29 = load i32, i32* @TRUE, align 4
  store i32 %29, i32* @acpi_gbl_method_executing, align 4
  %30 = load i32, i32* @write_handle, align 4
  %31 = call i32 @acpi_evaluate_object(i32 %30, i32* null, %struct.acpi_object_list* %5, i32* null)
  store i32 %31, i32* %7, align 4
  %32 = load i32, i32* @FALSE, align 4
  store i32 %32, i32* @acpi_gbl_method_executing, align 4
  %33 = load i32, i32* %7, align 4
  %34 = call i64 @ACPI_FAILURE(i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %40

36:                                               ; preds = %2
  %37 = load i32, i32* %7, align 4
  %38 = call i32 @acpi_format_exception(i32 %37)
  %39 = call i32 @acpi_os_printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %38)
  br label %40

40:                                               ; preds = %36, %2
  %41 = load i32, i32* %7, align 4
  ret i32 %41
}

declare dso_local i32 @ACPI_CAST_PTR(i32, %struct.acpi_namespace_node*) #1

declare dso_local i32 @memcpy(%union.acpi_object*, %union.acpi_object*, i32) #1

declare dso_local i32 @acpi_evaluate_object(i32, i32*, %struct.acpi_object_list*, i32*) #1

declare dso_local i64 @ACPI_FAILURE(i32) #1

declare dso_local i32 @acpi_os_printf(i8*, i32) #1

declare dso_local i32 @acpi_format_exception(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
