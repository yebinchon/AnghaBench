; ModuleID = '/home/carl/AnghaBench/linux/drivers/acpi/acpica/extr_dsargs.c_acpi_ds_get_region_arguments.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/acpi/acpica/extr_dsargs.c_acpi_ds_get_region_arguments.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.acpi_operand_object = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32, i32, i32, %struct.acpi_namespace_node* }
%struct.acpi_namespace_node = type { i32 }
%struct.TYPE_3__ = type { i32, i32, i32 }

@ds_get_region_arguments = common dso_local global i32 0, align 4
@AOPOBJ_DATA_VALID = common dso_local global i32 0, align 4
@AE_OK = common dso_local global i32 0, align 4
@AE_NOT_EXIST = common dso_local global i32 0, align 4
@ACPI_TYPE_REGION = common dso_local global i32 0, align 4
@ACPI_DB_EXEC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"[%4.4s] OpRegion Arg Init at AML %p\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @acpi_ds_get_region_arguments(%union.acpi_operand_object* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %union.acpi_operand_object*, align 8
  %4 = alloca %struct.acpi_namespace_node*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %union.acpi_operand_object*, align 8
  store %union.acpi_operand_object* %0, %union.acpi_operand_object** %3, align 8
  %7 = load i32, i32* @ds_get_region_arguments, align 4
  %8 = load %union.acpi_operand_object*, %union.acpi_operand_object** %3, align 8
  %9 = call i32 @ACPI_FUNCTION_TRACE_PTR(i32 %7, %union.acpi_operand_object* %8)
  %10 = load %union.acpi_operand_object*, %union.acpi_operand_object** %3, align 8
  %11 = bitcast %union.acpi_operand_object* %10 to %struct.TYPE_4__*
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = load i32, i32* @AOPOBJ_DATA_VALID, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %1
  %18 = load i32, i32* @AE_OK, align 4
  %19 = call i32 @return_ACPI_STATUS(i32 %18)
  br label %20

20:                                               ; preds = %17, %1
  %21 = load %union.acpi_operand_object*, %union.acpi_operand_object** %3, align 8
  %22 = call %union.acpi_operand_object* @acpi_ns_get_secondary_object(%union.acpi_operand_object* %21)
  store %union.acpi_operand_object* %22, %union.acpi_operand_object** %6, align 8
  %23 = load %union.acpi_operand_object*, %union.acpi_operand_object** %6, align 8
  %24 = icmp ne %union.acpi_operand_object* %23, null
  br i1 %24, label %28, label %25

25:                                               ; preds = %20
  %26 = load i32, i32* @AE_NOT_EXIST, align 4
  %27 = call i32 @return_ACPI_STATUS(i32 %26)
  br label %28

28:                                               ; preds = %25, %20
  %29 = load %union.acpi_operand_object*, %union.acpi_operand_object** %3, align 8
  %30 = bitcast %union.acpi_operand_object* %29 to %struct.TYPE_4__*
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 4
  %32 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %31, align 8
  store %struct.acpi_namespace_node* %32, %struct.acpi_namespace_node** %4, align 8
  %33 = load i32, i32* @ACPI_TYPE_REGION, align 4
  %34 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %4, align 8
  %35 = call i32 @acpi_ut_display_init_pathname(i32 %33, %struct.acpi_namespace_node* %34, i32* null)
  %36 = call i32 @ACPI_DEBUG_EXEC(i32 %35)
  %37 = load i32, i32* @ACPI_DB_EXEC, align 4
  %38 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %4, align 8
  %39 = call i32 @acpi_ut_get_node_name(%struct.acpi_namespace_node* %38)
  %40 = load %union.acpi_operand_object*, %union.acpi_operand_object** %6, align 8
  %41 = bitcast %union.acpi_operand_object* %40 to %struct.TYPE_3__*
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = call i32 @ACPI_DEBUG_PRINT(i32 %43)
  %45 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %4, align 8
  %46 = load %union.acpi_operand_object*, %union.acpi_operand_object** %6, align 8
  %47 = bitcast %union.acpi_operand_object* %46 to %struct.TYPE_3__*
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 8
  %50 = load %union.acpi_operand_object*, %union.acpi_operand_object** %6, align 8
  %51 = bitcast %union.acpi_operand_object* %50 to %struct.TYPE_3__*
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = load %union.acpi_operand_object*, %union.acpi_operand_object** %6, align 8
  %55 = bitcast %union.acpi_operand_object* %54 to %struct.TYPE_3__*
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = call i32 @acpi_ds_execute_arguments(%struct.acpi_namespace_node* %45, i32 %49, i32 %53, i32 %57)
  store i32 %58, i32* %5, align 4
  %59 = load i32, i32* %5, align 4
  %60 = call i64 @ACPI_FAILURE(i32 %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %65

62:                                               ; preds = %28
  %63 = load i32, i32* %5, align 4
  %64 = call i32 @return_ACPI_STATUS(i32 %63)
  br label %65

65:                                               ; preds = %62, %28
  %66 = load %union.acpi_operand_object*, %union.acpi_operand_object** %3, align 8
  %67 = bitcast %union.acpi_operand_object* %66 to %struct.TYPE_4__*
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 3
  %69 = load i32, i32* %68, align 4
  %70 = load %union.acpi_operand_object*, %union.acpi_operand_object** %3, align 8
  %71 = bitcast %union.acpi_operand_object* %70 to %struct.TYPE_4__*
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 2
  %73 = load i32, i32* %72, align 8
  %74 = load %union.acpi_operand_object*, %union.acpi_operand_object** %3, align 8
  %75 = bitcast %union.acpi_operand_object* %74 to %struct.TYPE_4__*
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %4, align 8
  %79 = call i32 @acpi_ut_add_address_range(i32 %69, i32 %73, i32 %77, %struct.acpi_namespace_node* %78)
  store i32 %79, i32* %5, align 4
  %80 = load i32, i32* %5, align 4
  %81 = call i32 @return_ACPI_STATUS(i32 %80)
  %82 = load i32, i32* %2, align 4
  ret i32 %82
}

declare dso_local i32 @ACPI_FUNCTION_TRACE_PTR(i32, %union.acpi_operand_object*) #1

declare dso_local i32 @return_ACPI_STATUS(i32) #1

declare dso_local %union.acpi_operand_object* @acpi_ns_get_secondary_object(%union.acpi_operand_object*) #1

declare dso_local i32 @ACPI_DEBUG_EXEC(i32) #1

declare dso_local i32 @acpi_ut_display_init_pathname(i32, %struct.acpi_namespace_node*, i32*) #1

declare dso_local i32 @ACPI_DEBUG_PRINT(i32) #1

declare dso_local i32 @acpi_ut_get_node_name(%struct.acpi_namespace_node*) #1

declare dso_local i32 @acpi_ds_execute_arguments(%struct.acpi_namespace_node*, i32, i32, i32) #1

declare dso_local i64 @ACPI_FAILURE(i32) #1

declare dso_local i32 @acpi_ut_add_address_range(i32, i32, i32, %struct.acpi_namespace_node*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
