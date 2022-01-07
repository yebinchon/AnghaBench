; ModuleID = '/home/carl/AnghaBench/linux/drivers/acpi/acpica/extr_dsopcode.c_acpi_ds_init_buffer_field.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/acpi/acpica/extr_dsopcode.c_acpi_ds_init_buffer_field.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.acpi_operand_object = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32, %union.acpi_operand_object* }
%struct.TYPE_7__ = type { i64, i32 }
%struct.TYPE_5__ = type { i64 }
%struct.TYPE_6__ = type { i64 }

@ds_init_buffer_field = common dso_local global i32 0, align 4
@ACPI_TYPE_BUFFER = common dso_local global i64 0, align 8
@AE_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [51 x i8] c"Target of Create Field is not a Buffer object - %s\00", align 1
@AE_AML_OPERAND_TYPE = common dso_local global i32 0, align 4
@ACPI_DESC_TYPE_NAMED = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [36 x i8] c"(%s) destination not a NS Node [%s]\00", align 1
@AML_FIELD_ACCESS_BYTE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [38 x i8] c"Attempt to CreateField of length zero\00", align 1
@AE_AML_OPERAND_VALUE = common dso_local global i32 0, align 4
@AML_FIELD_ACCESS_WORD = common dso_local global i32 0, align 4
@AML_FIELD_ACCESS_DWORD = common dso_local global i32 0, align 4
@AML_FIELD_ACCESS_QWORD = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [37 x i8] c"Unknown field creation opcode 0x%02X\00", align 1
@AE_AML_BAD_OPCODE = common dso_local global i32 0, align 4
@AE_AML_BUFFER_LIMIT = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [81 x i8] c"Field [%4.4s] at bit offset/length %u/%u exceeds size of target Buffer (%u bits)\00", align 1
@AOPOBJ_DATA_VALID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %union.acpi_operand_object*, %union.acpi_operand_object*, %union.acpi_operand_object*, %union.acpi_operand_object*, %union.acpi_operand_object*)* @acpi_ds_init_buffer_field to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @acpi_ds_init_buffer_field(i32 %0, %union.acpi_operand_object* %1, %union.acpi_operand_object* %2, %union.acpi_operand_object* %3, %union.acpi_operand_object* %4, %union.acpi_operand_object* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %union.acpi_operand_object*, align 8
  %10 = alloca %union.acpi_operand_object*, align 8
  %11 = alloca %union.acpi_operand_object*, align 8
  %12 = alloca %union.acpi_operand_object*, align 8
  %13 = alloca %union.acpi_operand_object*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store i32 %0, i32* %8, align 4
  store %union.acpi_operand_object* %1, %union.acpi_operand_object** %9, align 8
  store %union.acpi_operand_object* %2, %union.acpi_operand_object** %10, align 8
  store %union.acpi_operand_object* %3, %union.acpi_operand_object** %11, align 8
  store %union.acpi_operand_object* %4, %union.acpi_operand_object** %12, align 8
  store %union.acpi_operand_object* %5, %union.acpi_operand_object** %13, align 8
  %19 = load i32, i32* @ds_init_buffer_field, align 4
  %20 = load %union.acpi_operand_object*, %union.acpi_operand_object** %9, align 8
  %21 = call i32 @ACPI_FUNCTION_TRACE_PTR(i32 %19, %union.acpi_operand_object* %20)
  %22 = load %union.acpi_operand_object*, %union.acpi_operand_object** %10, align 8
  %23 = bitcast %union.acpi_operand_object* %22 to %struct.TYPE_7__*
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @ACPI_TYPE_BUFFER, align 8
  %27 = icmp ne i64 %25, %26
  br i1 %27, label %28, label %34

28:                                               ; preds = %6
  %29 = load i32, i32* @AE_INFO, align 4
  %30 = load %union.acpi_operand_object*, %union.acpi_operand_object** %10, align 8
  %31 = call i32 @acpi_ut_get_object_type_name(%union.acpi_operand_object* %30)
  %32 = call i32 @ACPI_ERROR(i32 %31)
  %33 = load i32, i32* @AE_AML_OPERAND_TYPE, align 4
  store i32 %33, i32* %18, align 4
  br label %146

34:                                               ; preds = %6
  %35 = load %union.acpi_operand_object*, %union.acpi_operand_object** %13, align 8
  %36 = call i64 @ACPI_GET_DESCRIPTOR_TYPE(%union.acpi_operand_object* %35)
  %37 = load i64, i64* @ACPI_DESC_TYPE_NAMED, align 8
  %38 = icmp ne i64 %36, %37
  br i1 %38, label %39, label %47

39:                                               ; preds = %34
  %40 = load i32, i32* @AE_INFO, align 4
  %41 = load i32, i32* %8, align 4
  %42 = call i32 @acpi_ps_get_opcode_name(i32 %41)
  %43 = load %union.acpi_operand_object*, %union.acpi_operand_object** %13, align 8
  %44 = call i32 @acpi_ut_get_descriptor_name(%union.acpi_operand_object* %43)
  %45 = call i32 @ACPI_ERROR(i32 %44)
  %46 = load i32, i32* @AE_AML_OPERAND_TYPE, align 4
  store i32 %46, i32* %18, align 4
  br label %146

47:                                               ; preds = %34
  %48 = load %union.acpi_operand_object*, %union.acpi_operand_object** %11, align 8
  %49 = bitcast %union.acpi_operand_object* %48 to %struct.TYPE_5__*
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = trunc i64 %51 to i32
  store i32 %52, i32* %14, align 4
  %53 = load i32, i32* %8, align 4
  switch i32 %53, label %88 [
    i32 130, label %54
    i32 133, label %69
    i32 132, label %72
    i32 128, label %76
    i32 131, label %80
    i32 129, label %84
  ]

54:                                               ; preds = %47
  %55 = load i32, i32* @AML_FIELD_ACCESS_BYTE, align 4
  store i32 %55, i32* %17, align 4
  %56 = load i32, i32* %14, align 4
  store i32 %56, i32* %15, align 4
  %57 = load %union.acpi_operand_object*, %union.acpi_operand_object** %12, align 8
  %58 = bitcast %union.acpi_operand_object* %57 to %struct.TYPE_5__*
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = trunc i64 %60 to i32
  store i32 %61, i32* %16, align 4
  %62 = load i32, i32* %16, align 4
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %64, label %68

64:                                               ; preds = %54
  %65 = load i32, i32* @AE_INFO, align 4
  %66 = call i32 @ACPI_BIOS_ERROR(i32 ptrtoint ([38 x i8]* @.str.2 to i32))
  %67 = load i32, i32* @AE_AML_OPERAND_VALUE, align 4
  store i32 %67, i32* %18, align 4
  br label %146

68:                                               ; preds = %54
  br label %93

69:                                               ; preds = %47
  %70 = load i32, i32* %14, align 4
  store i32 %70, i32* %15, align 4
  store i32 1, i32* %16, align 4
  %71 = load i32, i32* @AML_FIELD_ACCESS_BYTE, align 4
  store i32 %71, i32* %17, align 4
  br label %93

72:                                               ; preds = %47
  %73 = load i32, i32* %14, align 4
  %74 = mul nsw i32 8, %73
  store i32 %74, i32* %15, align 4
  store i32 8, i32* %16, align 4
  %75 = load i32, i32* @AML_FIELD_ACCESS_BYTE, align 4
  store i32 %75, i32* %17, align 4
  br label %93

76:                                               ; preds = %47
  %77 = load i32, i32* %14, align 4
  %78 = mul nsw i32 8, %77
  store i32 %78, i32* %15, align 4
  store i32 16, i32* %16, align 4
  %79 = load i32, i32* @AML_FIELD_ACCESS_WORD, align 4
  store i32 %79, i32* %17, align 4
  br label %93

80:                                               ; preds = %47
  %81 = load i32, i32* %14, align 4
  %82 = mul nsw i32 8, %81
  store i32 %82, i32* %15, align 4
  store i32 32, i32* %16, align 4
  %83 = load i32, i32* @AML_FIELD_ACCESS_DWORD, align 4
  store i32 %83, i32* %17, align 4
  br label %93

84:                                               ; preds = %47
  %85 = load i32, i32* %14, align 4
  %86 = mul nsw i32 8, %85
  store i32 %86, i32* %15, align 4
  store i32 64, i32* %16, align 4
  %87 = load i32, i32* @AML_FIELD_ACCESS_QWORD, align 4
  store i32 %87, i32* %17, align 4
  br label %93

88:                                               ; preds = %47
  %89 = load i32, i32* @AE_INFO, align 4
  %90 = load i32, i32* %8, align 4
  %91 = call i32 @ACPI_ERROR(i32 %90)
  %92 = load i32, i32* @AE_AML_BAD_OPCODE, align 4
  store i32 %92, i32* %18, align 4
  br label %146

93:                                               ; preds = %84, %80, %76, %72, %69, %68
  %94 = load i32, i32* %15, align 4
  %95 = load i32, i32* %16, align 4
  %96 = add nsw i32 %94, %95
  %97 = load %union.acpi_operand_object*, %union.acpi_operand_object** %10, align 8
  %98 = bitcast %union.acpi_operand_object* %97 to %struct.TYPE_6__*
  %99 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %98, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = trunc i64 %100 to i32
  %102 = mul nsw i32 8, %101
  %103 = icmp sgt i32 %96, %102
  br i1 %103, label %104, label %119

104:                                              ; preds = %93
  %105 = load i32, i32* @AE_AML_BUFFER_LIMIT, align 4
  store i32 %105, i32* %18, align 4
  %106 = load i32, i32* @AE_INFO, align 4
  %107 = load i32, i32* %18, align 4
  %108 = load %union.acpi_operand_object*, %union.acpi_operand_object** %13, align 8
  %109 = call i32 @acpi_ut_get_node_name(%union.acpi_operand_object* %108)
  %110 = load i32, i32* %15, align 4
  %111 = load i32, i32* %16, align 4
  %112 = load %union.acpi_operand_object*, %union.acpi_operand_object** %10, align 8
  %113 = bitcast %union.acpi_operand_object* %112 to %struct.TYPE_6__*
  %114 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %113, i32 0, i32 0
  %115 = load i64, i64* %114, align 8
  %116 = trunc i64 %115 to i32
  %117 = mul nsw i32 8, %116
  %118 = call i32 @ACPI_BIOS_EXCEPTION(i32 %117)
  br label %146

119:                                              ; preds = %93
  %120 = load %union.acpi_operand_object*, %union.acpi_operand_object** %9, align 8
  %121 = load i32, i32* %17, align 4
  %122 = load i32, i32* %15, align 4
  %123 = load i32, i32* %16, align 4
  %124 = call i32 @acpi_ex_prep_common_field_object(%union.acpi_operand_object* %120, i32 %121, i32 0, i32 %122, i32 %123)
  store i32 %124, i32* %18, align 4
  %125 = load i32, i32* %18, align 4
  %126 = call i64 @ACPI_FAILURE(i32 %125)
  %127 = icmp ne i64 %126, 0
  br i1 %127, label %128, label %129

128:                                              ; preds = %119
  br label %146

129:                                              ; preds = %119
  %130 = load %union.acpi_operand_object*, %union.acpi_operand_object** %10, align 8
  %131 = load %union.acpi_operand_object*, %union.acpi_operand_object** %9, align 8
  %132 = bitcast %union.acpi_operand_object* %131 to %struct.TYPE_8__*
  %133 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %132, i32 0, i32 1
  store %union.acpi_operand_object* %130, %union.acpi_operand_object** %133, align 8
  %134 = load %union.acpi_operand_object*, %union.acpi_operand_object** %10, align 8
  %135 = bitcast %union.acpi_operand_object* %134 to %struct.TYPE_7__*
  %136 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %135, i32 0, i32 1
  %137 = load i32, i32* %136, align 8
  %138 = load %union.acpi_operand_object*, %union.acpi_operand_object** %9, align 8
  %139 = bitcast %union.acpi_operand_object* %138 to %struct.TYPE_7__*
  %140 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %139, i32 0, i32 1
  %141 = load i32, i32* %140, align 8
  %142 = add nsw i32 %137, %141
  %143 = load %union.acpi_operand_object*, %union.acpi_operand_object** %10, align 8
  %144 = bitcast %union.acpi_operand_object* %143 to %struct.TYPE_7__*
  %145 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %144, i32 0, i32 1
  store i32 %142, i32* %145, align 8
  br label %146

146:                                              ; preds = %129, %128, %104, %88, %64, %39, %28
  %147 = load %union.acpi_operand_object*, %union.acpi_operand_object** %11, align 8
  %148 = call i32 @acpi_ut_remove_reference(%union.acpi_operand_object* %147)
  %149 = load %union.acpi_operand_object*, %union.acpi_operand_object** %10, align 8
  %150 = call i32 @acpi_ut_remove_reference(%union.acpi_operand_object* %149)
  %151 = load i32, i32* %8, align 4
  %152 = icmp eq i32 %151, 130
  br i1 %152, label %153, label %156

153:                                              ; preds = %146
  %154 = load %union.acpi_operand_object*, %union.acpi_operand_object** %12, align 8
  %155 = call i32 @acpi_ut_remove_reference(%union.acpi_operand_object* %154)
  br label %156

156:                                              ; preds = %153, %146
  %157 = load i32, i32* %18, align 4
  %158 = call i64 @ACPI_FAILURE(i32 %157)
  %159 = icmp ne i64 %158, 0
  br i1 %159, label %160, label %163

160:                                              ; preds = %156
  %161 = load %union.acpi_operand_object*, %union.acpi_operand_object** %13, align 8
  %162 = call i32 @acpi_ut_remove_reference(%union.acpi_operand_object* %161)
  br label %170

163:                                              ; preds = %156
  %164 = load i32, i32* @AOPOBJ_DATA_VALID, align 4
  %165 = load %union.acpi_operand_object*, %union.acpi_operand_object** %9, align 8
  %166 = bitcast %union.acpi_operand_object* %165 to %struct.TYPE_8__*
  %167 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %166, i32 0, i32 0
  %168 = load i32, i32* %167, align 8
  %169 = or i32 %168, %164
  store i32 %169, i32* %167, align 8
  br label %170

170:                                              ; preds = %163, %160
  %171 = load i32, i32* %18, align 4
  %172 = call i32 @return_ACPI_STATUS(i32 %171)
  %173 = load i32, i32* %7, align 4
  ret i32 %173
}

declare dso_local i32 @ACPI_FUNCTION_TRACE_PTR(i32, %union.acpi_operand_object*) #1

declare dso_local i32 @ACPI_ERROR(i32) #1

declare dso_local i32 @acpi_ut_get_object_type_name(%union.acpi_operand_object*) #1

declare dso_local i64 @ACPI_GET_DESCRIPTOR_TYPE(%union.acpi_operand_object*) #1

declare dso_local i32 @acpi_ps_get_opcode_name(i32) #1

declare dso_local i32 @acpi_ut_get_descriptor_name(%union.acpi_operand_object*) #1

declare dso_local i32 @ACPI_BIOS_ERROR(i32) #1

declare dso_local i32 @ACPI_BIOS_EXCEPTION(i32) #1

declare dso_local i32 @acpi_ut_get_node_name(%union.acpi_operand_object*) #1

declare dso_local i32 @acpi_ex_prep_common_field_object(%union.acpi_operand_object*, i32, i32, i32, i32) #1

declare dso_local i64 @ACPI_FAILURE(i32) #1

declare dso_local i32 @acpi_ut_remove_reference(%union.acpi_operand_object*) #1

declare dso_local i32 @return_ACPI_STATUS(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
