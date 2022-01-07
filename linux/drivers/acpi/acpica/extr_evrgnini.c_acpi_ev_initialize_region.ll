; ModuleID = '/home/carl/AnghaBench/linux/drivers/acpi/acpica/extr_evrgnini.c_acpi_ev_initialize_region.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/acpi/acpica/extr_evrgnini.c_acpi_ev_initialize_region.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.acpi_operand_object = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.acpi_namespace_node* }
%struct.acpi_namespace_node = type { i32, %struct.acpi_namespace_node* }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_8__ = type { %union.acpi_operand_object* }

@ev_initialize_region = common dso_local global i32 0, align 4
@AE_BAD_PARAMETER = common dso_local global i32 0, align 4
@AOPOBJ_OBJECT_INITIALIZED = common dso_local global i32 0, align 4
@AE_OK = common dso_local global i32 0, align 4
@ACPI_DB_OPREGION = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"Found handler %p for region %p in obj %p\0A\00", align 1
@FALSE = common dso_local global i32 0, align 4
@ACPI_REG_CONNECT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [49 x i8] c"No handler for RegionType %s(%X) (RegionObj %p)\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @acpi_ev_initialize_region(%union.acpi_operand_object* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %union.acpi_operand_object*, align 8
  %4 = alloca %union.acpi_operand_object*, align 8
  %5 = alloca %union.acpi_operand_object*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.acpi_namespace_node*, align 8
  store %union.acpi_operand_object* %0, %union.acpi_operand_object** %3, align 8
  %8 = load i32, i32* @ev_initialize_region, align 4
  %9 = call i32 @ACPI_FUNCTION_TRACE(i32 %8)
  %10 = load %union.acpi_operand_object*, %union.acpi_operand_object** %3, align 8
  %11 = icmp ne %union.acpi_operand_object* %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %1
  %13 = load i32, i32* @AE_BAD_PARAMETER, align 4
  %14 = call i32 @return_ACPI_STATUS(i32 %13)
  br label %15

15:                                               ; preds = %12, %1
  %16 = load %union.acpi_operand_object*, %union.acpi_operand_object** %3, align 8
  %17 = bitcast %union.acpi_operand_object* %16 to %struct.TYPE_5__*
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* @AOPOBJ_OBJECT_INITIALIZED, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %15
  %24 = load i32, i32* @AE_OK, align 4
  %25 = call i32 @return_ACPI_STATUS(i32 %24)
  br label %26

26:                                               ; preds = %23, %15
  %27 = load i32, i32* @AOPOBJ_OBJECT_INITIALIZED, align 4
  %28 = load %union.acpi_operand_object*, %union.acpi_operand_object** %3, align 8
  %29 = bitcast %union.acpi_operand_object* %28 to %struct.TYPE_5__*
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = or i32 %31, %27
  store i32 %32, i32* %30, align 8
  %33 = load %union.acpi_operand_object*, %union.acpi_operand_object** %3, align 8
  %34 = bitcast %union.acpi_operand_object* %33 to %struct.TYPE_7__*
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %34, i32 0, i32 1
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 0
  %38 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %37, align 8
  store %struct.acpi_namespace_node* %38, %struct.acpi_namespace_node** %7, align 8
  %39 = load %union.acpi_operand_object*, %union.acpi_operand_object** %3, align 8
  %40 = bitcast %union.acpi_operand_object* %39 to %struct.TYPE_7__*
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  store i32 %42, i32* %6, align 4
  br label %43

43:                                               ; preds = %86, %26
  %44 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %7, align 8
  %45 = icmp ne %struct.acpi_namespace_node* %44, null
  br i1 %45, label %46, label %90

46:                                               ; preds = %43
  store %union.acpi_operand_object* null, %union.acpi_operand_object** %4, align 8
  %47 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %7, align 8
  %48 = call %union.acpi_operand_object* @acpi_ns_get_attached_object(%struct.acpi_namespace_node* %47)
  store %union.acpi_operand_object* %48, %union.acpi_operand_object** %5, align 8
  %49 = load %union.acpi_operand_object*, %union.acpi_operand_object** %5, align 8
  %50 = icmp ne %union.acpi_operand_object* %49, null
  br i1 %50, label %51, label %86

51:                                               ; preds = %46
  %52 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %7, align 8
  %53 = getelementptr inbounds %struct.acpi_namespace_node, %struct.acpi_namespace_node* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  switch i32 %54, label %60 [
    i32 130, label %55
    i32 129, label %55
    i32 128, label %55
  ]

55:                                               ; preds = %51, %51, %51
  %56 = load %union.acpi_operand_object*, %union.acpi_operand_object** %5, align 8
  %57 = bitcast %union.acpi_operand_object* %56 to %struct.TYPE_8__*
  %58 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %57, i32 0, i32 0
  %59 = load %union.acpi_operand_object*, %union.acpi_operand_object** %58, align 8
  store %union.acpi_operand_object* %59, %union.acpi_operand_object** %4, align 8
  br label %61

60:                                               ; preds = %51
  br label %61

61:                                               ; preds = %60, %55
  %62 = load i32, i32* %6, align 4
  %63 = load %union.acpi_operand_object*, %union.acpi_operand_object** %4, align 8
  %64 = call %union.acpi_operand_object* @acpi_ev_find_region_handler(i32 %62, %union.acpi_operand_object* %63)
  store %union.acpi_operand_object* %64, %union.acpi_operand_object** %4, align 8
  %65 = load %union.acpi_operand_object*, %union.acpi_operand_object** %4, align 8
  %66 = icmp ne %union.acpi_operand_object* %65, null
  br i1 %66, label %67, label %85

67:                                               ; preds = %61
  %68 = load i32, i32* @ACPI_DB_OPREGION, align 4
  %69 = load %union.acpi_operand_object*, %union.acpi_operand_object** %4, align 8
  %70 = load %union.acpi_operand_object*, %union.acpi_operand_object** %3, align 8
  %71 = load %union.acpi_operand_object*, %union.acpi_operand_object** %5, align 8
  %72 = ptrtoint %union.acpi_operand_object* %71 to i32
  %73 = call i32 @ACPI_DEBUG_PRINT(i32 %72)
  %74 = load %union.acpi_operand_object*, %union.acpi_operand_object** %4, align 8
  %75 = load %union.acpi_operand_object*, %union.acpi_operand_object** %3, align 8
  %76 = load i32, i32* @FALSE, align 4
  %77 = call i32 @acpi_ev_attach_region(%union.acpi_operand_object* %74, %union.acpi_operand_object* %75, i32 %76)
  %78 = call i32 (...) @acpi_ex_exit_interpreter()
  %79 = load %union.acpi_operand_object*, %union.acpi_operand_object** %3, align 8
  %80 = load i32, i32* @ACPI_REG_CONNECT, align 4
  %81 = call i32 @acpi_ev_execute_reg_method(%union.acpi_operand_object* %79, i32 %80)
  %82 = call i32 (...) @acpi_ex_enter_interpreter()
  %83 = load i32, i32* @AE_OK, align 4
  %84 = call i32 @return_ACPI_STATUS(i32 %83)
  br label %85

85:                                               ; preds = %67, %61
  br label %86

86:                                               ; preds = %85, %46
  %87 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %7, align 8
  %88 = getelementptr inbounds %struct.acpi_namespace_node, %struct.acpi_namespace_node* %87, i32 0, i32 1
  %89 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %88, align 8
  store %struct.acpi_namespace_node* %89, %struct.acpi_namespace_node** %7, align 8
  br label %43

90:                                               ; preds = %43
  %91 = load i32, i32* @ACPI_DB_OPREGION, align 4
  %92 = load i32, i32* %6, align 4
  %93 = call i32 @acpi_ut_get_region_name(i32 %92)
  %94 = load i32, i32* %6, align 4
  %95 = load %union.acpi_operand_object*, %union.acpi_operand_object** %3, align 8
  %96 = ptrtoint %union.acpi_operand_object* %95 to i32
  %97 = call i32 @ACPI_DEBUG_PRINT(i32 %96)
  %98 = load i32, i32* @AE_OK, align 4
  %99 = call i32 @return_ACPI_STATUS(i32 %98)
  %100 = load i32, i32* %2, align 4
  ret i32 %100
}

declare dso_local i32 @ACPI_FUNCTION_TRACE(i32) #1

declare dso_local i32 @return_ACPI_STATUS(i32) #1

declare dso_local %union.acpi_operand_object* @acpi_ns_get_attached_object(%struct.acpi_namespace_node*) #1

declare dso_local %union.acpi_operand_object* @acpi_ev_find_region_handler(i32, %union.acpi_operand_object*) #1

declare dso_local i32 @ACPI_DEBUG_PRINT(i32) #1

declare dso_local i32 @acpi_ev_attach_region(%union.acpi_operand_object*, %union.acpi_operand_object*, i32) #1

declare dso_local i32 @acpi_ex_exit_interpreter(...) #1

declare dso_local i32 @acpi_ev_execute_reg_method(%union.acpi_operand_object*, i32) #1

declare dso_local i32 @acpi_ex_enter_interpreter(...) #1

declare dso_local i32 @acpi_ut_get_region_name(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
