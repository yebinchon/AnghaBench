; ModuleID = '/home/carl/AnghaBench/linux/drivers/acpi/acpica/extr_dsopcode.c_acpi_ds_eval_region_operands.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/acpi/acpica/extr_dsopcode.c_acpi_ds_eval_region_operands.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_walk_state = type { i32, %union.acpi_operand_object** }
%union.acpi_operand_object = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32, i64, i64, i32 }
%union.acpi_parse_object = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, %union.acpi_parse_object*, %struct.TYPE_6__, %struct.acpi_namespace_node* }
%struct.TYPE_6__ = type { i64, %union.acpi_parse_object* }
%struct.acpi_namespace_node = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_9__ = type { i64 }

@ds_eval_region_operands = common dso_local global i32 0, align 4
@ACPI_WALK_OPERANDS = common dso_local global i32 0, align 4
@AE_NOT_EXIST = common dso_local global i32 0, align 4
@ACPI_NUM_PREDEFINED_REGIONS = common dso_local global i64 0, align 8
@AE_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [54 x i8] c"Operation Region [%4.4s] has zero length (SpaceId %X)\00", align 1
@ACPI_DB_EXEC = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"RgnObj %p Addr %8.8X%8.8X Len %X\0A\00", align 1
@AOPOBJ_DATA_VALID = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @acpi_ds_eval_region_operands(%struct.acpi_walk_state* %0, %union.acpi_parse_object* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.acpi_walk_state*, align 8
  %5 = alloca %union.acpi_parse_object*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %union.acpi_operand_object*, align 8
  %8 = alloca %union.acpi_operand_object*, align 8
  %9 = alloca %struct.acpi_namespace_node*, align 8
  %10 = alloca %union.acpi_parse_object*, align 8
  %11 = alloca i64, align 8
  store %struct.acpi_walk_state* %0, %struct.acpi_walk_state** %4, align 8
  store %union.acpi_parse_object* %1, %union.acpi_parse_object** %5, align 8
  %12 = load i32, i32* @ds_eval_region_operands, align 4
  %13 = load %union.acpi_parse_object*, %union.acpi_parse_object** %5, align 8
  %14 = call i32 @ACPI_FUNCTION_TRACE_PTR(i32 %12, %union.acpi_parse_object* %13)
  %15 = load %union.acpi_parse_object*, %union.acpi_parse_object** %5, align 8
  %16 = bitcast %union.acpi_parse_object* %15 to %struct.TYPE_7__*
  %17 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 3
  %18 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %17, align 8
  store %struct.acpi_namespace_node* %18, %struct.acpi_namespace_node** %9, align 8
  %19 = load %union.acpi_parse_object*, %union.acpi_parse_object** %5, align 8
  %20 = bitcast %union.acpi_parse_object* %19 to %struct.TYPE_7__*
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 2
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 1
  %23 = load %union.acpi_parse_object*, %union.acpi_parse_object** %22, align 8
  store %union.acpi_parse_object* %23, %union.acpi_parse_object** %10, align 8
  %24 = load %union.acpi_parse_object*, %union.acpi_parse_object** %10, align 8
  %25 = bitcast %union.acpi_parse_object* %24 to %struct.TYPE_7__*
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i32 0, i32 2
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  store i64 %28, i64* %11, align 8
  %29 = load %union.acpi_parse_object*, %union.acpi_parse_object** %10, align 8
  %30 = bitcast %union.acpi_parse_object* %29 to %struct.TYPE_7__*
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i32 0, i32 1
  %32 = load %union.acpi_parse_object*, %union.acpi_parse_object** %31, align 8
  store %union.acpi_parse_object* %32, %union.acpi_parse_object** %10, align 8
  %33 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %4, align 8
  %34 = load %union.acpi_parse_object*, %union.acpi_parse_object** %10, align 8
  %35 = call i32 @acpi_ds_create_operands(%struct.acpi_walk_state* %33, %union.acpi_parse_object* %34)
  store i32 %35, i32* %6, align 4
  %36 = load i32, i32* %6, align 4
  %37 = call i64 @ACPI_FAILURE(i32 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %2
  %40 = load i32, i32* %6, align 4
  %41 = call i32 @return_ACPI_STATUS(i32 %40)
  br label %42

42:                                               ; preds = %39, %2
  %43 = load %union.acpi_parse_object*, %union.acpi_parse_object** %5, align 8
  %44 = bitcast %union.acpi_parse_object* %43 to %struct.TYPE_7__*
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = load i32, i32* @ACPI_WALK_OPERANDS, align 4
  %48 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %4, align 8
  %49 = call i32 @acpi_ex_resolve_operands(i32 %46, i32 %47, %struct.acpi_walk_state* %48)
  store i32 %49, i32* %6, align 4
  %50 = load i32, i32* %6, align 4
  %51 = call i64 @ACPI_FAILURE(i32 %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %56

53:                                               ; preds = %42
  %54 = load i32, i32* %6, align 4
  %55 = call i32 @return_ACPI_STATUS(i32 %54)
  br label %56

56:                                               ; preds = %53, %42
  %57 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %9, align 8
  %58 = call %union.acpi_operand_object* @acpi_ns_get_attached_object(%struct.acpi_namespace_node* %57)
  store %union.acpi_operand_object* %58, %union.acpi_operand_object** %7, align 8
  %59 = load %union.acpi_operand_object*, %union.acpi_operand_object** %7, align 8
  %60 = icmp ne %union.acpi_operand_object* %59, null
  br i1 %60, label %64, label %61

61:                                               ; preds = %56
  %62 = load i32, i32* @AE_NOT_EXIST, align 4
  %63 = call i32 @return_ACPI_STATUS(i32 %62)
  br label %64

64:                                               ; preds = %61, %56
  %65 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %4, align 8
  %66 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %65, i32 0, i32 1
  %67 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %66, align 8
  %68 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %4, align 8
  %69 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = sub nsw i32 %70, 1
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds %union.acpi_operand_object*, %union.acpi_operand_object** %67, i64 %72
  %74 = load %union.acpi_operand_object*, %union.acpi_operand_object** %73, align 8
  store %union.acpi_operand_object* %74, %union.acpi_operand_object** %8, align 8
  %75 = load %union.acpi_operand_object*, %union.acpi_operand_object** %8, align 8
  %76 = bitcast %union.acpi_operand_object* %75 to %struct.TYPE_9__*
  %77 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = load %union.acpi_operand_object*, %union.acpi_operand_object** %7, align 8
  %80 = bitcast %union.acpi_operand_object* %79 to %struct.TYPE_10__*
  %81 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %80, i32 0, i32 1
  store i64 %78, i64* %81, align 8
  %82 = load %union.acpi_operand_object*, %union.acpi_operand_object** %8, align 8
  %83 = call i32 @acpi_ut_remove_reference(%union.acpi_operand_object* %82)
  %84 = load %union.acpi_operand_object*, %union.acpi_operand_object** %7, align 8
  %85 = bitcast %union.acpi_operand_object* %84 to %struct.TYPE_10__*
  %86 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %85, i32 0, i32 1
  %87 = load i64, i64* %86, align 8
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %102, label %89

89:                                               ; preds = %64
  %90 = load i64, i64* %11, align 8
  %91 = load i64, i64* @ACPI_NUM_PREDEFINED_REGIONS, align 8
  %92 = icmp slt i64 %90, %91
  br i1 %92, label %93, label %102

93:                                               ; preds = %89
  %94 = load i32, i32* @AE_INFO, align 4
  %95 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %9, align 8
  %96 = getelementptr inbounds %struct.acpi_namespace_node, %struct.acpi_namespace_node* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = load i64, i64* %11, align 8
  %100 = trunc i64 %99 to i32
  %101 = call i32 @ACPI_WARNING(i32 %100)
  br label %102

102:                                              ; preds = %93, %89, %64
  %103 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %4, align 8
  %104 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %103, i32 0, i32 1
  %105 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %104, align 8
  %106 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %4, align 8
  %107 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  %109 = sub nsw i32 %108, 2
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds %union.acpi_operand_object*, %union.acpi_operand_object** %105, i64 %110
  %112 = load %union.acpi_operand_object*, %union.acpi_operand_object** %111, align 8
  store %union.acpi_operand_object* %112, %union.acpi_operand_object** %8, align 8
  %113 = load %union.acpi_operand_object*, %union.acpi_operand_object** %8, align 8
  %114 = bitcast %union.acpi_operand_object* %113 to %struct.TYPE_9__*
  %115 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %114, i32 0, i32 0
  %116 = load i64, i64* %115, align 8
  %117 = load %union.acpi_operand_object*, %union.acpi_operand_object** %7, align 8
  %118 = bitcast %union.acpi_operand_object* %117 to %struct.TYPE_10__*
  %119 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %118, i32 0, i32 2
  store i64 %116, i64* %119, align 8
  %120 = load %union.acpi_operand_object*, %union.acpi_operand_object** %8, align 8
  %121 = call i32 @acpi_ut_remove_reference(%union.acpi_operand_object* %120)
  %122 = load i32, i32* @ACPI_DB_EXEC, align 4
  %123 = load %union.acpi_operand_object*, %union.acpi_operand_object** %7, align 8
  %124 = load %union.acpi_operand_object*, %union.acpi_operand_object** %7, align 8
  %125 = bitcast %union.acpi_operand_object* %124 to %struct.TYPE_10__*
  %126 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %125, i32 0, i32 2
  %127 = load i64, i64* %126, align 8
  %128 = call i32 @ACPI_FORMAT_UINT64(i64 %127)
  %129 = load %union.acpi_operand_object*, %union.acpi_operand_object** %7, align 8
  %130 = bitcast %union.acpi_operand_object* %129 to %struct.TYPE_10__*
  %131 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %130, i32 0, i32 1
  %132 = load i64, i64* %131, align 8
  %133 = trunc i64 %132 to i32
  %134 = call i32 @ACPI_DEBUG_PRINT(i32 %133)
  %135 = load %union.acpi_operand_object*, %union.acpi_operand_object** %7, align 8
  %136 = bitcast %union.acpi_operand_object* %135 to %struct.TYPE_10__*
  %137 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %136, i32 0, i32 3
  %138 = load i32, i32* %137, align 8
  %139 = load %union.acpi_operand_object*, %union.acpi_operand_object** %7, align 8
  %140 = bitcast %union.acpi_operand_object* %139 to %struct.TYPE_10__*
  %141 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %140, i32 0, i32 2
  %142 = load i64, i64* %141, align 8
  %143 = load %union.acpi_operand_object*, %union.acpi_operand_object** %7, align 8
  %144 = bitcast %union.acpi_operand_object* %143 to %struct.TYPE_10__*
  %145 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %144, i32 0, i32 1
  %146 = load i64, i64* %145, align 8
  %147 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %9, align 8
  %148 = call i32 @acpi_ut_add_address_range(i32 %138, i64 %142, i64 %146, %struct.acpi_namespace_node* %147)
  store i32 %148, i32* %6, align 4
  %149 = load i32, i32* @AOPOBJ_DATA_VALID, align 4
  %150 = load %union.acpi_operand_object*, %union.acpi_operand_object** %7, align 8
  %151 = bitcast %union.acpi_operand_object* %150 to %struct.TYPE_10__*
  %152 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 8
  %154 = or i32 %153, %149
  store i32 %154, i32* %152, align 8
  %155 = load i32, i32* %6, align 4
  %156 = call i32 @return_ACPI_STATUS(i32 %155)
  %157 = load i32, i32* %3, align 4
  ret i32 %157
}

declare dso_local i32 @ACPI_FUNCTION_TRACE_PTR(i32, %union.acpi_parse_object*) #1

declare dso_local i32 @acpi_ds_create_operands(%struct.acpi_walk_state*, %union.acpi_parse_object*) #1

declare dso_local i64 @ACPI_FAILURE(i32) #1

declare dso_local i32 @return_ACPI_STATUS(i32) #1

declare dso_local i32 @acpi_ex_resolve_operands(i32, i32, %struct.acpi_walk_state*) #1

declare dso_local %union.acpi_operand_object* @acpi_ns_get_attached_object(%struct.acpi_namespace_node*) #1

declare dso_local i32 @acpi_ut_remove_reference(%union.acpi_operand_object*) #1

declare dso_local i32 @ACPI_WARNING(i32) #1

declare dso_local i32 @ACPI_DEBUG_PRINT(i32) #1

declare dso_local i32 @ACPI_FORMAT_UINT64(i64) #1

declare dso_local i32 @acpi_ut_add_address_range(i32, i64, i64, %struct.acpi_namespace_node*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
