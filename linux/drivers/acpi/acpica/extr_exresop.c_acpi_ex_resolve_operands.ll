; ModuleID = '/home/carl/AnghaBench/linux/drivers/acpi/acpica/extr_exresop.c_acpi_ex_resolve_operands.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/acpi/acpica/extr_exresop.c_acpi_ex_resolve_operands.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.acpi_operand_object = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.acpi_walk_state = type { i32, i32 }
%struct.acpi_opcode_info = type { i64, i64, i32 }
%struct.acpi_namespace_node = type { i32 }
%struct.TYPE_3__ = type { i32 }

@AE_OK = common dso_local global i32 0, align 4
@ex_resolve_operands = common dso_local global i32 0, align 4
@AML_CLASS_UNKNOWN = common dso_local global i64 0, align 8
@AE_AML_BAD_OPCODE = common dso_local global i32 0, align 4
@ARGI_INVALID_OPCODE = common dso_local global i64 0, align 8
@AE_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"Unknown AML opcode 0x%X\00", align 1
@AE_AML_INTERNAL = common dso_local global i32 0, align 4
@ACPI_DB_EXEC = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [43 x i8] c"Opcode %X [%s] RequiredOperandTypes=%8.8X\0A\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"Null stack entry at %p\00", align 1
@ACPI_TYPE_LOCAL_ALIAS = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [31 x i8] c"Bad operand object type [0x%X]\00", align 1
@AE_AML_OPERAND_TYPE = common dso_local global i32 0, align 4
@AML_DEBUG_OP = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [42 x i8] c"Operand is a Reference, Class [%s] %2.2X\0A\00", align 1
@.str.5 = private unnamed_addr constant [38 x i8] c"Unknown Reference Class 0x%2.2X in %p\00", align 1
@.str.6 = private unnamed_addr constant [27 x i8] c"Invalid descriptor %p [%s]\00", align 1
@AML_STORE_OP = common dso_local global i32 0, align 4
@ACPI_TYPE_MUTEX = common dso_local global i32 0, align 4
@ACPI_TYPE_EVENT = common dso_local global i32 0, align 4
@ACPI_TYPE_ANY = common dso_local global i32 0, align 4
@ACPI_IMPLICIT_CONVERSION = common dso_local global i32 0, align 4
@AE_TYPE = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [46 x i8] c"Needed [Integer/String/Buffer], found [%s] %p\00", align 1
@ACPI_IMPLICIT_CONVERT_HEX = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [56 x i8] c"Needed [Buffer/String/Package/Reference], found [%s] %p\00", align 1
@.str.9 = private unnamed_addr constant [46 x i8] c"Needed [Buffer/String/Package], found [%s] %p\00", align 1
@.str.10 = private unnamed_addr constant [38 x i8] c"Needed [Region/Buffer], found [%s] %p\00", align 1
@acpi_gbl_enable_interpreter_slack = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [61 x i8] c"Needed Integer/Buffer/String/Package/Ref/Ddb], found [%s] %p\00", align 1
@.str.12 = private unnamed_addr constant [53 x i8] c"Internal - Unknown ARGI (required operand) type 0x%X\00", align 1
@AE_BAD_PARAMETER = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @acpi_ex_resolve_operands(i32 %0, %union.acpi_operand_object** %1, %struct.acpi_walk_state* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %union.acpi_operand_object**, align 8
  %7 = alloca %struct.acpi_walk_state*, align 8
  %8 = alloca %union.acpi_operand_object*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca %struct.acpi_opcode_info*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store %union.acpi_operand_object** %1, %union.acpi_operand_object*** %6, align 8
  store %struct.acpi_walk_state* %2, %struct.acpi_walk_state** %7, align 8
  %16 = load i32, i32* @AE_OK, align 4
  store i32 %16, i32* %9, align 4
  store i32 0, i32* %15, align 4
  %17 = load i32, i32* @ex_resolve_operands, align 4
  %18 = load i32, i32* %5, align 4
  %19 = call i32 @ACPI_FUNCTION_TRACE_U32(i32 %17, i32 %18)
  %20 = load i32, i32* %5, align 4
  %21 = call %struct.acpi_opcode_info* @acpi_ps_get_opcode_info(i32 %20)
  store %struct.acpi_opcode_info* %21, %struct.acpi_opcode_info** %12, align 8
  %22 = load %struct.acpi_opcode_info*, %struct.acpi_opcode_info** %12, align 8
  %23 = getelementptr inbounds %struct.acpi_opcode_info, %struct.acpi_opcode_info* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @AML_CLASS_UNKNOWN, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %30

27:                                               ; preds = %3
  %28 = load i32, i32* @AE_AML_BAD_OPCODE, align 4
  %29 = call i32 @return_ACPI_STATUS(i32 %28)
  br label %30

30:                                               ; preds = %27, %3
  %31 = load %struct.acpi_opcode_info*, %struct.acpi_opcode_info** %12, align 8
  %32 = getelementptr inbounds %struct.acpi_opcode_info, %struct.acpi_opcode_info* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  store i64 %33, i64* %11, align 8
  %34 = load i64, i64* %11, align 8
  %35 = load i64, i64* @ARGI_INVALID_OPCODE, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %43

37:                                               ; preds = %30
  %38 = load i32, i32* @AE_INFO, align 4
  %39 = load i32, i32* %5, align 4
  %40 = call i32 @ACPI_ERROR(i32 %39)
  %41 = load i32, i32* @AE_AML_INTERNAL, align 4
  %42 = call i32 @return_ACPI_STATUS(i32 %41)
  br label %43

43:                                               ; preds = %37, %30
  %44 = load i32, i32* @ACPI_DB_EXEC, align 4
  %45 = load i32, i32* %5, align 4
  %46 = load %struct.acpi_opcode_info*, %struct.acpi_opcode_info** %12, align 8
  %47 = getelementptr inbounds %struct.acpi_opcode_info, %struct.acpi_opcode_info* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 8
  %49 = load i64, i64* %11, align 8
  %50 = trunc i64 %49 to i32
  %51 = call i32 @ACPI_DEBUG_PRINT(i32 %50)
  br label %52

52:                                               ; preds = %478, %43
  %53 = load i64, i64* %11, align 8
  %54 = call i64 @GET_CURRENT_ARG_TYPE(i64 %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %479

56:                                               ; preds = %52
  %57 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %6, align 8
  %58 = icmp ne %union.acpi_operand_object** %57, null
  br i1 %58, label %59, label %63

59:                                               ; preds = %56
  %60 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %6, align 8
  %61 = load %union.acpi_operand_object*, %union.acpi_operand_object** %60, align 8
  %62 = icmp ne %union.acpi_operand_object* %61, null
  br i1 %62, label %70, label %63

63:                                               ; preds = %59, %56
  %64 = load i32, i32* @AE_INFO, align 4
  %65 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %6, align 8
  %66 = ptrtoint %union.acpi_operand_object** %65 to i32
  %67 = call i32 @ACPI_ERROR(i32 %66)
  %68 = load i32, i32* @AE_AML_INTERNAL, align 4
  %69 = call i32 @return_ACPI_STATUS(i32 %68)
  br label %70

70:                                               ; preds = %63, %59
  %71 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %6, align 8
  %72 = load %union.acpi_operand_object*, %union.acpi_operand_object** %71, align 8
  store %union.acpi_operand_object* %72, %union.acpi_operand_object** %8, align 8
  %73 = load %union.acpi_operand_object*, %union.acpi_operand_object** %8, align 8
  %74 = call i32 @ACPI_GET_DESCRIPTOR_TYPE(%union.acpi_operand_object* %73)
  switch i32 %74, label %140 [
    i32 170, label %75
    i32 169, label %94
  ]

75:                                               ; preds = %70
  %76 = load %union.acpi_operand_object*, %union.acpi_operand_object** %8, align 8
  %77 = bitcast %union.acpi_operand_object* %76 to %struct.acpi_namespace_node*
  %78 = getelementptr inbounds %struct.acpi_namespace_node, %struct.acpi_namespace_node* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  store i32 %79, i32* %10, align 4
  %80 = load i32, i32* %10, align 4
  %81 = load i32, i32* @ACPI_TYPE_LOCAL_ALIAS, align 4
  %82 = icmp eq i32 %80, %81
  br i1 %82, label %83, label %93

83:                                               ; preds = %75
  %84 = load %union.acpi_operand_object*, %union.acpi_operand_object** %8, align 8
  %85 = bitcast %union.acpi_operand_object* %84 to %struct.acpi_namespace_node*
  %86 = call %union.acpi_operand_object* @acpi_ns_get_attached_object(%struct.acpi_namespace_node* %85)
  store %union.acpi_operand_object* %86, %union.acpi_operand_object** %8, align 8
  %87 = load %union.acpi_operand_object*, %union.acpi_operand_object** %8, align 8
  %88 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %6, align 8
  store %union.acpi_operand_object* %87, %union.acpi_operand_object** %88, align 8
  %89 = load %union.acpi_operand_object*, %union.acpi_operand_object** %8, align 8
  %90 = bitcast %union.acpi_operand_object* %89 to %struct.acpi_namespace_node*
  %91 = getelementptr inbounds %struct.acpi_namespace_node, %struct.acpi_namespace_node* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  store i32 %92, i32* %10, align 4
  br label %93

93:                                               ; preds = %83, %75
  br label %148

94:                                               ; preds = %70
  %95 = load %union.acpi_operand_object*, %union.acpi_operand_object** %8, align 8
  %96 = bitcast %union.acpi_operand_object* %95 to %struct.TYPE_4__*
  %97 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  store i32 %98, i32* %10, align 4
  %99 = load i32, i32* %10, align 4
  %100 = call i32 @acpi_ut_valid_object_type(i32 %99)
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %108, label %102

102:                                              ; preds = %94
  %103 = load i32, i32* @AE_INFO, align 4
  %104 = load i32, i32* %10, align 4
  %105 = call i32 @ACPI_ERROR(i32 %104)
  %106 = load i32, i32* @AE_AML_OPERAND_TYPE, align 4
  %107 = call i32 @return_ACPI_STATUS(i32 %106)
  br label %108

108:                                              ; preds = %102, %94
  %109 = load i32, i32* %10, align 4
  %110 = icmp eq i32 %109, 155
  br i1 %110, label %111, label %139

111:                                              ; preds = %108
  %112 = load %union.acpi_operand_object*, %union.acpi_operand_object** %8, align 8
  %113 = bitcast %union.acpi_operand_object* %112 to %struct.TYPE_3__*
  %114 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  switch i32 %115, label %127 [
    i32 167, label %116
    i32 168, label %118
    i32 165, label %118
    i32 166, label %118
    i32 163, label %118
    i32 162, label %118
    i32 164, label %118
  ]

116:                                              ; preds = %111
  %117 = load i32, i32* @AML_DEBUG_OP, align 4
  store i32 %117, i32* %15, align 4
  br label %118

118:                                              ; preds = %111, %111, %111, %111, %111, %111, %116
  %119 = load i32, i32* @ACPI_DB_EXEC, align 4
  %120 = load %union.acpi_operand_object*, %union.acpi_operand_object** %8, align 8
  %121 = call i32 @acpi_ut_get_reference_name(%union.acpi_operand_object* %120)
  %122 = load %union.acpi_operand_object*, %union.acpi_operand_object** %8, align 8
  %123 = bitcast %union.acpi_operand_object* %122 to %struct.TYPE_3__*
  %124 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 4
  %126 = call i32 @ACPI_DEBUG_PRINT(i32 %125)
  br label %138

127:                                              ; preds = %111
  %128 = load i32, i32* @AE_INFO, align 4
  %129 = load %union.acpi_operand_object*, %union.acpi_operand_object** %8, align 8
  %130 = bitcast %union.acpi_operand_object* %129 to %struct.TYPE_3__*
  %131 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 4
  %133 = load %union.acpi_operand_object*, %union.acpi_operand_object** %8, align 8
  %134 = ptrtoint %union.acpi_operand_object* %133 to i32
  %135 = call i32 @ACPI_ERROR(i32 %134)
  %136 = load i32, i32* @AE_AML_OPERAND_TYPE, align 4
  %137 = call i32 @return_ACPI_STATUS(i32 %136)
  br label %138

138:                                              ; preds = %127, %118
  br label %139

139:                                              ; preds = %138, %108
  br label %148

140:                                              ; preds = %70
  %141 = load i32, i32* @AE_INFO, align 4
  %142 = load %union.acpi_operand_object*, %union.acpi_operand_object** %8, align 8
  %143 = load %union.acpi_operand_object*, %union.acpi_operand_object** %8, align 8
  %144 = call i32 @acpi_ut_get_descriptor_name(%union.acpi_operand_object* %143)
  %145 = call i32 @ACPI_ERROR(i32 %144)
  %146 = load i32, i32* @AE_AML_OPERAND_TYPE, align 4
  %147 = call i32 @return_ACPI_STATUS(i32 %146)
  br label %148

148:                                              ; preds = %140, %139, %93
  %149 = load i64, i64* %11, align 8
  %150 = call i64 @GET_CURRENT_ARG_TYPE(i64 %149)
  store i64 %150, i64* %13, align 8
  %151 = load i64, i64* %11, align 8
  %152 = call i32 @INCREMENT_ARG_LIST(i64 %151)
  %153 = load i64, i64* %13, align 8
  switch i64 %153, label %202 [
    i64 133, label %154
    i64 134, label %166
    i64 138, label %166
    i64 136, label %166
    i64 142, label %166
    i64 128, label %166
    i64 140, label %166
    i64 131, label %166
    i64 130, label %166
    i64 144, label %182
  ]

154:                                              ; preds = %148
  %155 = load %union.acpi_operand_object*, %union.acpi_operand_object** %8, align 8
  %156 = call i32 @ACPI_GET_DESCRIPTOR_TYPE(%union.acpi_operand_object* %155)
  %157 = icmp eq i32 %156, 169
  br i1 %157, label %158, label %165

158:                                              ; preds = %154
  %159 = load %union.acpi_operand_object*, %union.acpi_operand_object** %8, align 8
  %160 = bitcast %union.acpi_operand_object* %159 to %struct.TYPE_4__*
  %161 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %160, i32 0, i32 0
  %162 = load i32, i32* %161, align 4
  %163 = icmp eq i32 %162, 151
  br i1 %163, label %164, label %165

164:                                              ; preds = %158
  br label %471

165:                                              ; preds = %158, %154
  br label %166

166:                                              ; preds = %148, %148, %148, %148, %148, %148, %148, %148, %165
  %167 = load %union.acpi_operand_object*, %union.acpi_operand_object** %8, align 8
  %168 = call i32 @ACPI_GET_DESCRIPTOR_TYPE(%union.acpi_operand_object* %167)
  %169 = icmp eq i32 %168, 170
  br i1 %169, label %170, label %171

170:                                              ; preds = %166
  br label %471

171:                                              ; preds = %166
  %172 = load i32, i32* %10, align 4
  %173 = load %union.acpi_operand_object*, %union.acpi_operand_object** %8, align 8
  %174 = call i32 @acpi_ex_check_object_type(i32 155, i32 %172, %union.acpi_operand_object* %173)
  store i32 %174, i32* %9, align 4
  %175 = load i32, i32* %9, align 4
  %176 = call i64 @ACPI_FAILURE(i32 %175)
  %177 = icmp ne i64 %176, 0
  br i1 %177, label %178, label %181

178:                                              ; preds = %171
  %179 = load i32, i32* %9, align 4
  %180 = call i32 @return_ACPI_STATUS(i32 %179)
  br label %181

181:                                              ; preds = %178, %171
  br label %471

182:                                              ; preds = %148
  %183 = load i32, i32* %5, align 4
  %184 = load i32, i32* @AML_STORE_OP, align 4
  %185 = icmp eq i32 %183, %184
  br i1 %185, label %186, label %201

186:                                              ; preds = %182
  %187 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %6, align 8
  %188 = load %union.acpi_operand_object*, %union.acpi_operand_object** %187, align 8
  %189 = bitcast %union.acpi_operand_object* %188 to %struct.TYPE_4__*
  %190 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %189, i32 0, i32 0
  %191 = load i32, i32* %190, align 4
  %192 = icmp eq i32 %191, 155
  br i1 %192, label %193, label %201

193:                                              ; preds = %186
  %194 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %6, align 8
  %195 = load %union.acpi_operand_object*, %union.acpi_operand_object** %194, align 8
  %196 = bitcast %union.acpi_operand_object* %195 to %struct.TYPE_3__*
  %197 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %196, i32 0, i32 0
  %198 = load i32, i32* %197, align 4
  %199 = icmp eq i32 %198, 166
  br i1 %199, label %200, label %201

200:                                              ; preds = %193
  br label %471

201:                                              ; preds = %193, %186, %182
  br label %203

202:                                              ; preds = %148
  br label %203

203:                                              ; preds = %202, %201
  %204 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %6, align 8
  %205 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %7, align 8
  %206 = call i32 @acpi_ex_resolve_to_value(%union.acpi_operand_object** %204, %struct.acpi_walk_state* %205)
  store i32 %206, i32* %9, align 4
  %207 = load i32, i32* %9, align 4
  %208 = call i64 @ACPI_FAILURE(i32 %207)
  %209 = icmp ne i64 %208, 0
  br i1 %209, label %210, label %213

210:                                              ; preds = %203
  %211 = load i32, i32* %9, align 4
  %212 = call i32 @return_ACPI_STATUS(i32 %211)
  br label %213

213:                                              ; preds = %210, %203
  %214 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %6, align 8
  %215 = load %union.acpi_operand_object*, %union.acpi_operand_object** %214, align 8
  store %union.acpi_operand_object* %215, %union.acpi_operand_object** %8, align 8
  %216 = load i64, i64* %13, align 8
  switch i64 %216, label %447 [
    i64 137, label %217
    i64 141, label %219
    i64 135, label %221
    i64 150, label %222
    i64 143, label %224
    i64 139, label %225
    i64 149, label %258
    i64 129, label %290
    i64 146, label %323
    i64 148, label %339
    i64 145, label %374
    i64 147, label %390
    i64 132, label %406
    i64 144, label %422
  ]

217:                                              ; preds = %213
  %218 = load i32, i32* @ACPI_TYPE_MUTEX, align 4
  store i32 %218, i32* %14, align 4
  br label %454

219:                                              ; preds = %213
  %220 = load i32, i32* @ACPI_TYPE_EVENT, align 4
  store i32 %220, i32* %14, align 4
  br label %454

221:                                              ; preds = %213
  store i32 153, i32* %14, align 4
  br label %454

222:                                              ; preds = %213
  %223 = load i32, i32* @ACPI_TYPE_ANY, align 4
  store i32 %223, i32* %14, align 4
  br label %454

224:                                              ; preds = %213
  store i32 155, i32* %14, align 4
  br label %454

225:                                              ; preds = %213
  %226 = load %union.acpi_operand_object*, %union.acpi_operand_object** %8, align 8
  %227 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %6, align 8
  %228 = load i32, i32* @ACPI_IMPLICIT_CONVERSION, align 4
  %229 = call i32 @acpi_ex_convert_to_integer(%union.acpi_operand_object* %226, %union.acpi_operand_object** %227, i32 %228)
  store i32 %229, i32* %9, align 4
  %230 = load i32, i32* %9, align 4
  %231 = call i64 @ACPI_FAILURE(i32 %230)
  %232 = icmp ne i64 %231, 0
  br i1 %232, label %233, label %249

233:                                              ; preds = %225
  %234 = load i32, i32* %9, align 4
  %235 = load i32, i32* @AE_TYPE, align 4
  %236 = icmp eq i32 %234, %235
  br i1 %236, label %237, label %246

237:                                              ; preds = %233
  %238 = load i32, i32* @AE_INFO, align 4
  %239 = load %union.acpi_operand_object*, %union.acpi_operand_object** %8, align 8
  %240 = call i32 @acpi_ut_get_object_type_name(%union.acpi_operand_object* %239)
  %241 = load %union.acpi_operand_object*, %union.acpi_operand_object** %8, align 8
  %242 = ptrtoint %union.acpi_operand_object* %241 to i32
  %243 = call i32 @ACPI_ERROR(i32 %242)
  %244 = load i32, i32* @AE_AML_OPERAND_TYPE, align 4
  %245 = call i32 @return_ACPI_STATUS(i32 %244)
  br label %246

246:                                              ; preds = %237, %233
  %247 = load i32, i32* %9, align 4
  %248 = call i32 @return_ACPI_STATUS(i32 %247)
  br label %249

249:                                              ; preds = %246, %225
  %250 = load %union.acpi_operand_object*, %union.acpi_operand_object** %8, align 8
  %251 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %6, align 8
  %252 = load %union.acpi_operand_object*, %union.acpi_operand_object** %251, align 8
  %253 = icmp ne %union.acpi_operand_object* %250, %252
  br i1 %253, label %254, label %257

254:                                              ; preds = %249
  %255 = load %union.acpi_operand_object*, %union.acpi_operand_object** %8, align 8
  %256 = call i32 @acpi_ut_remove_reference(%union.acpi_operand_object* %255)
  br label %257

257:                                              ; preds = %254, %249
  br label %471

258:                                              ; preds = %213
  %259 = load %union.acpi_operand_object*, %union.acpi_operand_object** %8, align 8
  %260 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %6, align 8
  %261 = call i32 @acpi_ex_convert_to_buffer(%union.acpi_operand_object* %259, %union.acpi_operand_object** %260)
  store i32 %261, i32* %9, align 4
  %262 = load i32, i32* %9, align 4
  %263 = call i64 @ACPI_FAILURE(i32 %262)
  %264 = icmp ne i64 %263, 0
  br i1 %264, label %265, label %281

265:                                              ; preds = %258
  %266 = load i32, i32* %9, align 4
  %267 = load i32, i32* @AE_TYPE, align 4
  %268 = icmp eq i32 %266, %267
  br i1 %268, label %269, label %278

269:                                              ; preds = %265
  %270 = load i32, i32* @AE_INFO, align 4
  %271 = load %union.acpi_operand_object*, %union.acpi_operand_object** %8, align 8
  %272 = call i32 @acpi_ut_get_object_type_name(%union.acpi_operand_object* %271)
  %273 = load %union.acpi_operand_object*, %union.acpi_operand_object** %8, align 8
  %274 = ptrtoint %union.acpi_operand_object* %273 to i32
  %275 = call i32 @ACPI_ERROR(i32 %274)
  %276 = load i32, i32* @AE_AML_OPERAND_TYPE, align 4
  %277 = call i32 @return_ACPI_STATUS(i32 %276)
  br label %278

278:                                              ; preds = %269, %265
  %279 = load i32, i32* %9, align 4
  %280 = call i32 @return_ACPI_STATUS(i32 %279)
  br label %281

281:                                              ; preds = %278, %258
  %282 = load %union.acpi_operand_object*, %union.acpi_operand_object** %8, align 8
  %283 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %6, align 8
  %284 = load %union.acpi_operand_object*, %union.acpi_operand_object** %283, align 8
  %285 = icmp ne %union.acpi_operand_object* %282, %284
  br i1 %285, label %286, label %289

286:                                              ; preds = %281
  %287 = load %union.acpi_operand_object*, %union.acpi_operand_object** %8, align 8
  %288 = call i32 @acpi_ut_remove_reference(%union.acpi_operand_object* %287)
  br label %289

289:                                              ; preds = %286, %281
  br label %471

290:                                              ; preds = %213
  %291 = load %union.acpi_operand_object*, %union.acpi_operand_object** %8, align 8
  %292 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %6, align 8
  %293 = load i32, i32* @ACPI_IMPLICIT_CONVERT_HEX, align 4
  %294 = call i32 @acpi_ex_convert_to_string(%union.acpi_operand_object* %291, %union.acpi_operand_object** %292, i32 %293)
  store i32 %294, i32* %9, align 4
  %295 = load i32, i32* %9, align 4
  %296 = call i64 @ACPI_FAILURE(i32 %295)
  %297 = icmp ne i64 %296, 0
  br i1 %297, label %298, label %314

298:                                              ; preds = %290
  %299 = load i32, i32* %9, align 4
  %300 = load i32, i32* @AE_TYPE, align 4
  %301 = icmp eq i32 %299, %300
  br i1 %301, label %302, label %311

302:                                              ; preds = %298
  %303 = load i32, i32* @AE_INFO, align 4
  %304 = load %union.acpi_operand_object*, %union.acpi_operand_object** %8, align 8
  %305 = call i32 @acpi_ut_get_object_type_name(%union.acpi_operand_object* %304)
  %306 = load %union.acpi_operand_object*, %union.acpi_operand_object** %8, align 8
  %307 = ptrtoint %union.acpi_operand_object* %306 to i32
  %308 = call i32 @ACPI_ERROR(i32 %307)
  %309 = load i32, i32* @AE_AML_OPERAND_TYPE, align 4
  %310 = call i32 @return_ACPI_STATUS(i32 %309)
  br label %311

311:                                              ; preds = %302, %298
  %312 = load i32, i32* %9, align 4
  %313 = call i32 @return_ACPI_STATUS(i32 %312)
  br label %314

314:                                              ; preds = %311, %290
  %315 = load %union.acpi_operand_object*, %union.acpi_operand_object** %8, align 8
  %316 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %6, align 8
  %317 = load %union.acpi_operand_object*, %union.acpi_operand_object** %316, align 8
  %318 = icmp ne %union.acpi_operand_object* %315, %317
  br i1 %318, label %319, label %322

319:                                              ; preds = %314
  %320 = load %union.acpi_operand_object*, %union.acpi_operand_object** %8, align 8
  %321 = call i32 @acpi_ut_remove_reference(%union.acpi_operand_object* %320)
  br label %322

322:                                              ; preds = %319, %314
  br label %471

323:                                              ; preds = %213
  %324 = load %union.acpi_operand_object*, %union.acpi_operand_object** %8, align 8
  %325 = bitcast %union.acpi_operand_object* %324 to %struct.TYPE_4__*
  %326 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %325, i32 0, i32 0
  %327 = load i32, i32* %326, align 4
  switch i32 %327, label %329 [
    i32 158, label %328
    i32 151, label %328
    i32 161, label %328
  ]

328:                                              ; preds = %323, %323, %323
  br label %338

329:                                              ; preds = %323
  %330 = load i32, i32* @AE_INFO, align 4
  %331 = load %union.acpi_operand_object*, %union.acpi_operand_object** %8, align 8
  %332 = call i32 @acpi_ut_get_object_type_name(%union.acpi_operand_object* %331)
  %333 = load %union.acpi_operand_object*, %union.acpi_operand_object** %8, align 8
  %334 = ptrtoint %union.acpi_operand_object* %333 to i32
  %335 = call i32 @ACPI_ERROR(i32 %334)
  %336 = load i32, i32* @AE_AML_OPERAND_TYPE, align 4
  %337 = call i32 @return_ACPI_STATUS(i32 %336)
  br label %338

338:                                              ; preds = %329, %328
  br label %471

339:                                              ; preds = %213
  %340 = load %union.acpi_operand_object*, %union.acpi_operand_object** %8, align 8
  %341 = bitcast %union.acpi_operand_object* %340 to %struct.TYPE_4__*
  %342 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %341, i32 0, i32 0
  %343 = load i32, i32* %342, align 4
  switch i32 %343, label %364 [
    i32 151, label %344
    i32 161, label %344
    i32 158, label %345
  ]

344:                                              ; preds = %339, %339
  br label %373

345:                                              ; preds = %339
  %346 = load %union.acpi_operand_object*, %union.acpi_operand_object** %8, align 8
  %347 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %6, align 8
  %348 = call i32 @acpi_ex_convert_to_buffer(%union.acpi_operand_object* %346, %union.acpi_operand_object** %347)
  store i32 %348, i32* %9, align 4
  %349 = load i32, i32* %9, align 4
  %350 = call i64 @ACPI_FAILURE(i32 %349)
  %351 = icmp ne i64 %350, 0
  br i1 %351, label %352, label %355

352:                                              ; preds = %345
  %353 = load i32, i32* %9, align 4
  %354 = call i32 @return_ACPI_STATUS(i32 %353)
  br label %355

355:                                              ; preds = %352, %345
  %356 = load %union.acpi_operand_object*, %union.acpi_operand_object** %8, align 8
  %357 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %6, align 8
  %358 = load %union.acpi_operand_object*, %union.acpi_operand_object** %357, align 8
  %359 = icmp ne %union.acpi_operand_object* %356, %358
  br i1 %359, label %360, label %363

360:                                              ; preds = %355
  %361 = load %union.acpi_operand_object*, %union.acpi_operand_object** %8, align 8
  %362 = call i32 @acpi_ut_remove_reference(%union.acpi_operand_object* %361)
  br label %363

363:                                              ; preds = %360, %355
  br label %373

364:                                              ; preds = %339
  %365 = load i32, i32* @AE_INFO, align 4
  %366 = load %union.acpi_operand_object*, %union.acpi_operand_object** %8, align 8
  %367 = call i32 @acpi_ut_get_object_type_name(%union.acpi_operand_object* %366)
  %368 = load %union.acpi_operand_object*, %union.acpi_operand_object** %8, align 8
  %369 = ptrtoint %union.acpi_operand_object* %368 to i32
  %370 = call i32 @ACPI_ERROR(i32 %369)
  %371 = load i32, i32* @AE_AML_OPERAND_TYPE, align 4
  %372 = call i32 @return_ACPI_STATUS(i32 %371)
  br label %373

373:                                              ; preds = %364, %363, %344
  br label %471

374:                                              ; preds = %213
  %375 = load %union.acpi_operand_object*, %union.acpi_operand_object** %8, align 8
  %376 = bitcast %union.acpi_operand_object* %375 to %struct.TYPE_4__*
  %377 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %376, i32 0, i32 0
  %378 = load i32, i32* %377, align 4
  switch i32 %378, label %380 [
    i32 153, label %379
    i32 151, label %379
    i32 161, label %379
    i32 155, label %379
  ]

379:                                              ; preds = %374, %374, %374, %374
  br label %389

380:                                              ; preds = %374
  %381 = load i32, i32* @AE_INFO, align 4
  %382 = load %union.acpi_operand_object*, %union.acpi_operand_object** %8, align 8
  %383 = call i32 @acpi_ut_get_object_type_name(%union.acpi_operand_object* %382)
  %384 = load %union.acpi_operand_object*, %union.acpi_operand_object** %8, align 8
  %385 = ptrtoint %union.acpi_operand_object* %384 to i32
  %386 = call i32 @ACPI_ERROR(i32 %385)
  %387 = load i32, i32* @AE_AML_OPERAND_TYPE, align 4
  %388 = call i32 @return_ACPI_STATUS(i32 %387)
  br label %389

389:                                              ; preds = %380, %379
  br label %471

390:                                              ; preds = %213
  %391 = load %union.acpi_operand_object*, %union.acpi_operand_object** %8, align 8
  %392 = bitcast %union.acpi_operand_object* %391 to %struct.TYPE_4__*
  %393 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %392, i32 0, i32 0
  %394 = load i32, i32* %393, align 4
  switch i32 %394, label %396 [
    i32 153, label %395
    i32 151, label %395
    i32 161, label %395
  ]

395:                                              ; preds = %390, %390, %390
  br label %405

396:                                              ; preds = %390
  %397 = load i32, i32* @AE_INFO, align 4
  %398 = load %union.acpi_operand_object*, %union.acpi_operand_object** %8, align 8
  %399 = call i32 @acpi_ut_get_object_type_name(%union.acpi_operand_object* %398)
  %400 = load %union.acpi_operand_object*, %union.acpi_operand_object** %8, align 8
  %401 = ptrtoint %union.acpi_operand_object* %400 to i32
  %402 = call i32 @ACPI_ERROR(i32 %401)
  %403 = load i32, i32* @AE_AML_OPERAND_TYPE, align 4
  %404 = call i32 @return_ACPI_STATUS(i32 %403)
  br label %405

405:                                              ; preds = %396, %395
  br label %471

406:                                              ; preds = %213
  %407 = load %union.acpi_operand_object*, %union.acpi_operand_object** %8, align 8
  %408 = bitcast %union.acpi_operand_object* %407 to %struct.TYPE_4__*
  %409 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %408, i32 0, i32 0
  %410 = load i32, i32* %409, align 4
  switch i32 %410, label %412 [
    i32 161, label %411
    i32 152, label %411
  ]

411:                                              ; preds = %406, %406
  br label %421

412:                                              ; preds = %406
  %413 = load i32, i32* @AE_INFO, align 4
  %414 = load %union.acpi_operand_object*, %union.acpi_operand_object** %8, align 8
  %415 = call i32 @acpi_ut_get_object_type_name(%union.acpi_operand_object* %414)
  %416 = load %union.acpi_operand_object*, %union.acpi_operand_object** %8, align 8
  %417 = ptrtoint %union.acpi_operand_object* %416 to i32
  %418 = call i32 @ACPI_ERROR(i32 %417)
  %419 = load i32, i32* @AE_AML_OPERAND_TYPE, align 4
  %420 = call i32 @return_ACPI_STATUS(i32 %419)
  br label %421

421:                                              ; preds = %412, %411
  br label %471

422:                                              ; preds = %213
  %423 = load %union.acpi_operand_object*, %union.acpi_operand_object** %8, align 8
  %424 = bitcast %union.acpi_operand_object* %423 to %struct.TYPE_4__*
  %425 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %424, i32 0, i32 0
  %426 = load i32, i32* %425, align 4
  switch i32 %426, label %428 [
    i32 158, label %427
    i32 153, label %427
    i32 151, label %427
    i32 161, label %427
    i32 160, label %427
    i32 155, label %427
    i32 154, label %427
    i32 157, label %427
    i32 156, label %427
    i32 159, label %427
  ]

427:                                              ; preds = %422, %422, %422, %422, %422, %422, %422, %422, %422, %422
  br label %446

428:                                              ; preds = %422
  %429 = load i32, i32* @acpi_gbl_enable_interpreter_slack, align 4
  %430 = icmp ne i32 %429, 0
  br i1 %430, label %431, label %432

431:                                              ; preds = %428
  br label %446

432:                                              ; preds = %428
  %433 = load i32, i32* %15, align 4
  %434 = load i32, i32* @AML_DEBUG_OP, align 4
  %435 = icmp eq i32 %433, %434
  br i1 %435, label %436, label %437

436:                                              ; preds = %432
  br label %446

437:                                              ; preds = %432
  %438 = load i32, i32* @AE_INFO, align 4
  %439 = load %union.acpi_operand_object*, %union.acpi_operand_object** %8, align 8
  %440 = call i32 @acpi_ut_get_object_type_name(%union.acpi_operand_object* %439)
  %441 = load %union.acpi_operand_object*, %union.acpi_operand_object** %8, align 8
  %442 = ptrtoint %union.acpi_operand_object* %441 to i32
  %443 = call i32 @ACPI_ERROR(i32 %442)
  %444 = load i32, i32* @AE_AML_OPERAND_TYPE, align 4
  %445 = call i32 @return_ACPI_STATUS(i32 %444)
  br label %446

446:                                              ; preds = %437, %436, %431, %427
  br label %471

447:                                              ; preds = %213
  %448 = load i32, i32* @AE_INFO, align 4
  %449 = load i64, i64* %13, align 8
  %450 = trunc i64 %449 to i32
  %451 = call i32 @ACPI_ERROR(i32 %450)
  %452 = load i32, i32* @AE_BAD_PARAMETER, align 4
  %453 = call i32 @return_ACPI_STATUS(i32 %452)
  br label %454

454:                                              ; preds = %447, %224, %222, %221, %219, %217
  %455 = load i32, i32* %14, align 4
  %456 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %6, align 8
  %457 = load %union.acpi_operand_object*, %union.acpi_operand_object** %456, align 8
  %458 = bitcast %union.acpi_operand_object* %457 to %struct.TYPE_4__*
  %459 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %458, i32 0, i32 0
  %460 = load i32, i32* %459, align 4
  %461 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %6, align 8
  %462 = load %union.acpi_operand_object*, %union.acpi_operand_object** %461, align 8
  %463 = call i32 @acpi_ex_check_object_type(i32 %455, i32 %460, %union.acpi_operand_object* %462)
  store i32 %463, i32* %9, align 4
  %464 = load i32, i32* %9, align 4
  %465 = call i64 @ACPI_FAILURE(i32 %464)
  %466 = icmp ne i64 %465, 0
  br i1 %466, label %467, label %470

467:                                              ; preds = %454
  %468 = load i32, i32* %9, align 4
  %469 = call i32 @return_ACPI_STATUS(i32 %468)
  br label %470

470:                                              ; preds = %467, %454
  br label %471

471:                                              ; preds = %470, %446, %421, %405, %389, %373, %338, %322, %289, %257, %200, %181, %170, %164
  %472 = load i64, i64* %11, align 8
  %473 = call i64 @GET_CURRENT_ARG_TYPE(i64 %472)
  %474 = icmp ne i64 %473, 0
  br i1 %474, label %475, label %478

475:                                              ; preds = %471
  %476 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %6, align 8
  %477 = getelementptr inbounds %union.acpi_operand_object*, %union.acpi_operand_object** %476, i32 -1
  store %union.acpi_operand_object** %477, %union.acpi_operand_object*** %6, align 8
  br label %478

478:                                              ; preds = %475, %471
  br label %52

479:                                              ; preds = %52
  %480 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %7, align 8
  %481 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %480, i32 0, i32 1
  %482 = load i32, i32* %481, align 4
  %483 = load i32, i32* %5, align 4
  %484 = call i32 @acpi_ps_get_opcode_name(i32 %483)
  %485 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %7, align 8
  %486 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %485, i32 0, i32 0
  %487 = load i32, i32* %486, align 4
  %488 = call i32 @ACPI_DUMP_OPERANDS(i32 %482, i32 %484, i32 %487)
  %489 = load i32, i32* %9, align 4
  %490 = call i32 @return_ACPI_STATUS(i32 %489)
  %491 = load i32, i32* %4, align 4
  ret i32 %491
}

declare dso_local i32 @ACPI_FUNCTION_TRACE_U32(i32, i32) #1

declare dso_local %struct.acpi_opcode_info* @acpi_ps_get_opcode_info(i32) #1

declare dso_local i32 @return_ACPI_STATUS(i32) #1

declare dso_local i32 @ACPI_ERROR(i32) #1

declare dso_local i32 @ACPI_DEBUG_PRINT(i32) #1

declare dso_local i64 @GET_CURRENT_ARG_TYPE(i64) #1

declare dso_local i32 @ACPI_GET_DESCRIPTOR_TYPE(%union.acpi_operand_object*) #1

declare dso_local %union.acpi_operand_object* @acpi_ns_get_attached_object(%struct.acpi_namespace_node*) #1

declare dso_local i32 @acpi_ut_valid_object_type(i32) #1

declare dso_local i32 @acpi_ut_get_reference_name(%union.acpi_operand_object*) #1

declare dso_local i32 @acpi_ut_get_descriptor_name(%union.acpi_operand_object*) #1

declare dso_local i32 @INCREMENT_ARG_LIST(i64) #1

declare dso_local i32 @acpi_ex_check_object_type(i32, i32, %union.acpi_operand_object*) #1

declare dso_local i64 @ACPI_FAILURE(i32) #1

declare dso_local i32 @acpi_ex_resolve_to_value(%union.acpi_operand_object**, %struct.acpi_walk_state*) #1

declare dso_local i32 @acpi_ex_convert_to_integer(%union.acpi_operand_object*, %union.acpi_operand_object**, i32) #1

declare dso_local i32 @acpi_ut_get_object_type_name(%union.acpi_operand_object*) #1

declare dso_local i32 @acpi_ut_remove_reference(%union.acpi_operand_object*) #1

declare dso_local i32 @acpi_ex_convert_to_buffer(%union.acpi_operand_object*, %union.acpi_operand_object**) #1

declare dso_local i32 @acpi_ex_convert_to_string(%union.acpi_operand_object*, %union.acpi_operand_object**, i32) #1

declare dso_local i32 @ACPI_DUMP_OPERANDS(i32, i32, i32) #1

declare dso_local i32 @acpi_ps_get_opcode_name(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
