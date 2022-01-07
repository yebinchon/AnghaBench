; ModuleID = '/home/carl/AnghaBench/linux/drivers/acpi/acpica/extr_dsargs.c_acpi_ds_get_package_arguments.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/acpi/acpica/extr_dsargs.c_acpi_ds_get_package_arguments.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.acpi_operand_object = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32, %struct.acpi_namespace_node* }
%struct.acpi_namespace_node = type { i32 }
%struct.TYPE_3__ = type { i32 }

@ds_get_package_arguments = common dso_local global i32 0, align 4
@AOPOBJ_DATA_VALID = common dso_local global i32 0, align 4
@AE_OK = common dso_local global i32 0, align 4
@AE_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [48 x i8] c"No pointer back to namespace node in package %p\00", align 1
@AE_AML_INTERNAL = common dso_local global i32 0, align 4
@ACPI_DB_EXEC = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"Package Argument Init, AML Ptr: %p\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @acpi_ds_get_package_arguments(%union.acpi_operand_object* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %union.acpi_operand_object*, align 8
  %4 = alloca %struct.acpi_namespace_node*, align 8
  %5 = alloca i32, align 4
  store %union.acpi_operand_object* %0, %union.acpi_operand_object** %3, align 8
  %6 = load i32, i32* @ds_get_package_arguments, align 4
  %7 = load %union.acpi_operand_object*, %union.acpi_operand_object** %3, align 8
  %8 = call i32 @ACPI_FUNCTION_TRACE_PTR(i32 %6, %union.acpi_operand_object* %7)
  %9 = load %union.acpi_operand_object*, %union.acpi_operand_object** %3, align 8
  %10 = bitcast %union.acpi_operand_object* %9 to %struct.TYPE_3__*
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = load i32, i32* @AOPOBJ_DATA_VALID, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %1
  %17 = load i32, i32* @AE_OK, align 4
  %18 = call i32 @return_ACPI_STATUS(i32 %17)
  br label %19

19:                                               ; preds = %16, %1
  %20 = load %union.acpi_operand_object*, %union.acpi_operand_object** %3, align 8
  %21 = bitcast %union.acpi_operand_object* %20 to %struct.TYPE_4__*
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 2
  %23 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %22, align 8
  store %struct.acpi_namespace_node* %23, %struct.acpi_namespace_node** %4, align 8
  %24 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %4, align 8
  %25 = icmp ne %struct.acpi_namespace_node* %24, null
  br i1 %25, label %33, label %26

26:                                               ; preds = %19
  %27 = load i32, i32* @AE_INFO, align 4
  %28 = load %union.acpi_operand_object*, %union.acpi_operand_object** %3, align 8
  %29 = ptrtoint %union.acpi_operand_object* %28 to i32
  %30 = call i32 @ACPI_ERROR(i32 %29)
  %31 = load i32, i32* @AE_AML_INTERNAL, align 4
  %32 = call i32 @return_ACPI_STATUS(i32 %31)
  br label %33

33:                                               ; preds = %26, %19
  %34 = load i32, i32* @ACPI_DB_EXEC, align 4
  %35 = load %union.acpi_operand_object*, %union.acpi_operand_object** %3, align 8
  %36 = bitcast %union.acpi_operand_object* %35 to %struct.TYPE_4__*
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = call i32 @ACPI_DEBUG_PRINT(i32 %38)
  %40 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %4, align 8
  %41 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %4, align 8
  %42 = load %union.acpi_operand_object*, %union.acpi_operand_object** %3, align 8
  %43 = bitcast %union.acpi_operand_object* %42 to %struct.TYPE_4__*
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = load %union.acpi_operand_object*, %union.acpi_operand_object** %3, align 8
  %47 = bitcast %union.acpi_operand_object* %46 to %struct.TYPE_4__*
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = call i32 @acpi_ds_execute_arguments(%struct.acpi_namespace_node* %40, %struct.acpi_namespace_node* %41, i32 %45, i32 %49)
  store i32 %50, i32* %5, align 4
  %51 = load i32, i32* %5, align 4
  %52 = call i32 @return_ACPI_STATUS(i32 %51)
  %53 = load i32, i32* %2, align 4
  ret i32 %53
}

declare dso_local i32 @ACPI_FUNCTION_TRACE_PTR(i32, %union.acpi_operand_object*) #1

declare dso_local i32 @return_ACPI_STATUS(i32) #1

declare dso_local i32 @ACPI_ERROR(i32) #1

declare dso_local i32 @ACPI_DEBUG_PRINT(i32) #1

declare dso_local i32 @acpi_ds_execute_arguments(%struct.acpi_namespace_node*, %struct.acpi_namespace_node*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
