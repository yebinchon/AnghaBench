; ModuleID = '/home/carl/AnghaBench/linux/drivers/acpi/acpica/extr_dsopcode.c_acpi_ds_eval_buffer_field_operands.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/acpi/acpica/extr_dsopcode.c_acpi_ds_eval_buffer_field_operands.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_walk_state = type { i32** }
%union.acpi_parse_object = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64, %struct.TYPE_3__, %struct.acpi_namespace_node* }
%struct.TYPE_3__ = type { %union.acpi_parse_object* }
%struct.acpi_namespace_node = type { i32 }
%union.acpi_operand_object = type { i32 }

@ds_eval_buffer_field_operands = common dso_local global i32 0, align 4
@AE_NOT_EXIST = common dso_local global i32 0, align 4
@ACPI_WALK_OPERANDS = common dso_local global i32 0, align 4
@AE_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"(%s) bad operand(s), status 0x%X\00", align 1
@AML_CREATE_FIELD_OP = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @acpi_ds_eval_buffer_field_operands(%struct.acpi_walk_state* %0, %union.acpi_parse_object* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.acpi_walk_state*, align 8
  %5 = alloca %union.acpi_parse_object*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %union.acpi_operand_object*, align 8
  %8 = alloca %struct.acpi_namespace_node*, align 8
  %9 = alloca %union.acpi_parse_object*, align 8
  store %struct.acpi_walk_state* %0, %struct.acpi_walk_state** %4, align 8
  store %union.acpi_parse_object* %1, %union.acpi_parse_object** %5, align 8
  %10 = load i32, i32* @ds_eval_buffer_field_operands, align 4
  %11 = load %union.acpi_parse_object*, %union.acpi_parse_object** %5, align 8
  %12 = call i32 @ACPI_FUNCTION_TRACE_PTR(i32 %10, %union.acpi_parse_object* %11)
  %13 = load %union.acpi_parse_object*, %union.acpi_parse_object** %5, align 8
  %14 = bitcast %union.acpi_parse_object* %13 to %struct.TYPE_4__*
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 2
  %16 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %15, align 8
  store %struct.acpi_namespace_node* %16, %struct.acpi_namespace_node** %8, align 8
  %17 = load %union.acpi_parse_object*, %union.acpi_parse_object** %5, align 8
  %18 = bitcast %union.acpi_parse_object* %17 to %struct.TYPE_4__*
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = load %union.acpi_parse_object*, %union.acpi_parse_object** %20, align 8
  store %union.acpi_parse_object* %21, %union.acpi_parse_object** %9, align 8
  %22 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %4, align 8
  %23 = load %union.acpi_parse_object*, %union.acpi_parse_object** %9, align 8
  %24 = call i32 @acpi_ds_create_operands(%struct.acpi_walk_state* %22, %union.acpi_parse_object* %23)
  store i32 %24, i32* %6, align 4
  %25 = load i32, i32* %6, align 4
  %26 = call i64 @ACPI_FAILURE(i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %2
  %29 = load i32, i32* %6, align 4
  %30 = call i32 @return_ACPI_STATUS(i32 %29)
  br label %31

31:                                               ; preds = %28, %2
  %32 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %8, align 8
  %33 = call %union.acpi_operand_object* @acpi_ns_get_attached_object(%struct.acpi_namespace_node* %32)
  store %union.acpi_operand_object* %33, %union.acpi_operand_object** %7, align 8
  %34 = load %union.acpi_operand_object*, %union.acpi_operand_object** %7, align 8
  %35 = icmp ne %union.acpi_operand_object* %34, null
  br i1 %35, label %39, label %36

36:                                               ; preds = %31
  %37 = load i32, i32* @AE_NOT_EXIST, align 4
  %38 = call i32 @return_ACPI_STATUS(i32 %37)
  br label %39

39:                                               ; preds = %36, %31
  %40 = load %union.acpi_parse_object*, %union.acpi_parse_object** %5, align 8
  %41 = bitcast %union.acpi_parse_object* %40 to %struct.TYPE_4__*
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load i32, i32* @ACPI_WALK_OPERANDS, align 4
  %45 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %4, align 8
  %46 = call i32 @acpi_ex_resolve_operands(i64 %43, i32 %44, %struct.acpi_walk_state* %45)
  store i32 %46, i32* %6, align 4
  %47 = load i32, i32* %6, align 4
  %48 = call i64 @ACPI_FAILURE(i32 %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %61

50:                                               ; preds = %39
  %51 = load i32, i32* @AE_INFO, align 4
  %52 = load %union.acpi_parse_object*, %union.acpi_parse_object** %5, align 8
  %53 = bitcast %union.acpi_parse_object* %52 to %struct.TYPE_4__*
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = call i32 @acpi_ps_get_opcode_name(i64 %55)
  %57 = load i32, i32* %6, align 4
  %58 = call i32 @ACPI_ERROR(i32 %57)
  %59 = load i32, i32* %6, align 4
  %60 = call i32 @return_ACPI_STATUS(i32 %59)
  br label %61

61:                                               ; preds = %50, %39
  %62 = load %union.acpi_parse_object*, %union.acpi_parse_object** %5, align 8
  %63 = bitcast %union.acpi_parse_object* %62 to %struct.TYPE_4__*
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = load i64, i64* @AML_CREATE_FIELD_OP, align 8
  %67 = icmp eq i64 %65, %66
  br i1 %67, label %68, label %95

68:                                               ; preds = %61
  %69 = load %union.acpi_parse_object*, %union.acpi_parse_object** %5, align 8
  %70 = bitcast %union.acpi_parse_object* %69 to %struct.TYPE_4__*
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = load %union.acpi_operand_object*, %union.acpi_operand_object** %7, align 8
  %74 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %4, align 8
  %75 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %74, i32 0, i32 0
  %76 = load i32**, i32*** %75, align 8
  %77 = getelementptr inbounds i32*, i32** %76, i64 0
  %78 = load i32*, i32** %77, align 8
  %79 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %4, align 8
  %80 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %79, i32 0, i32 0
  %81 = load i32**, i32*** %80, align 8
  %82 = getelementptr inbounds i32*, i32** %81, i64 1
  %83 = load i32*, i32** %82, align 8
  %84 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %4, align 8
  %85 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %84, i32 0, i32 0
  %86 = load i32**, i32*** %85, align 8
  %87 = getelementptr inbounds i32*, i32** %86, i64 2
  %88 = load i32*, i32** %87, align 8
  %89 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %4, align 8
  %90 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %89, i32 0, i32 0
  %91 = load i32**, i32*** %90, align 8
  %92 = getelementptr inbounds i32*, i32** %91, i64 3
  %93 = load i32*, i32** %92, align 8
  %94 = call i32 @acpi_ds_init_buffer_field(i64 %72, %union.acpi_operand_object* %73, i32* %78, i32* %83, i32* %88, i32* %93)
  store i32 %94, i32* %6, align 4
  br label %117

95:                                               ; preds = %61
  %96 = load %union.acpi_parse_object*, %union.acpi_parse_object** %5, align 8
  %97 = bitcast %union.acpi_parse_object* %96 to %struct.TYPE_4__*
  %98 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = load %union.acpi_operand_object*, %union.acpi_operand_object** %7, align 8
  %101 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %4, align 8
  %102 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %101, i32 0, i32 0
  %103 = load i32**, i32*** %102, align 8
  %104 = getelementptr inbounds i32*, i32** %103, i64 0
  %105 = load i32*, i32** %104, align 8
  %106 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %4, align 8
  %107 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %106, i32 0, i32 0
  %108 = load i32**, i32*** %107, align 8
  %109 = getelementptr inbounds i32*, i32** %108, i64 1
  %110 = load i32*, i32** %109, align 8
  %111 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %4, align 8
  %112 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %111, i32 0, i32 0
  %113 = load i32**, i32*** %112, align 8
  %114 = getelementptr inbounds i32*, i32** %113, i64 2
  %115 = load i32*, i32** %114, align 8
  %116 = call i32 @acpi_ds_init_buffer_field(i64 %99, %union.acpi_operand_object* %100, i32* %105, i32* %110, i32* null, i32* %115)
  store i32 %116, i32* %6, align 4
  br label %117

117:                                              ; preds = %95, %68
  %118 = load i32, i32* %6, align 4
  %119 = call i32 @return_ACPI_STATUS(i32 %118)
  %120 = load i32, i32* %3, align 4
  ret i32 %120
}

declare dso_local i32 @ACPI_FUNCTION_TRACE_PTR(i32, %union.acpi_parse_object*) #1

declare dso_local i32 @acpi_ds_create_operands(%struct.acpi_walk_state*, %union.acpi_parse_object*) #1

declare dso_local i64 @ACPI_FAILURE(i32) #1

declare dso_local i32 @return_ACPI_STATUS(i32) #1

declare dso_local %union.acpi_operand_object* @acpi_ns_get_attached_object(%struct.acpi_namespace_node*) #1

declare dso_local i32 @acpi_ex_resolve_operands(i64, i32, %struct.acpi_walk_state*) #1

declare dso_local i32 @ACPI_ERROR(i32) #1

declare dso_local i32 @acpi_ps_get_opcode_name(i64) #1

declare dso_local i32 @acpi_ds_init_buffer_field(i64, %union.acpi_operand_object*, i32*, i32*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
