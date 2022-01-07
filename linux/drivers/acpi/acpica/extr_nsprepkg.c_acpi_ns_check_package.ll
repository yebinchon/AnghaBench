; ModuleID = '/home/carl/AnghaBench/linux/drivers/acpi/acpica/extr_nsprepkg.c_acpi_ns_check_package.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/acpi/acpica/extr_nsprepkg.c_acpi_ns_check_package.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_evaluate_info = type { i32, i32, %union.acpi_predefined_info* }
%union.acpi_predefined_info = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i32, i64, i64, i32, i32 }
%union.acpi_operand_object = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i64, %union.acpi_operand_object** }
%struct.TYPE_7__ = type { i64, i32, i32* }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_11__ = type { i32 }

@AE_OK = common dso_local global i32 0, align 4
@ns_check_package = common dso_local global i32 0, align 4
@ACPI_DB_NAMES = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [51 x i8] c"%s Validating return Package of Type %X, Count %X\0A\00", align 1
@AE_INFO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [39 x i8] c"Return Package has no elements (empty)\00", align 1
@AE_AML_OPERAND_VALUE = common dso_local global i32 0, align 4
@ACPI_DB_REPAIR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [66 x i8] c"%s: Return Package is larger than needed - found %u, expected %u\0A\00", align 1
@ACPI_RTYPE_INTEGER = common dso_local global i32 0, align 4
@ACPI_TYPE_PACKAGE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [31 x i8] c"Invalid length for UUID Buffer\00", align 1
@.str.4 = private unnamed_addr constant [48 x i8] c"Invalid internal return type in table entry: %X\00", align 1
@AE_AML_INTERNAL = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [61 x i8] c"Return Package is too small - found %u elements, expected %u\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @acpi_ns_check_package(%struct.acpi_evaluate_info* %0, %union.acpi_operand_object** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.acpi_evaluate_info*, align 8
  %5 = alloca %union.acpi_operand_object**, align 8
  %6 = alloca %union.acpi_operand_object*, align 8
  %7 = alloca %union.acpi_predefined_info*, align 8
  %8 = alloca %union.acpi_operand_object**, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store %struct.acpi_evaluate_info* %0, %struct.acpi_evaluate_info** %4, align 8
  store %union.acpi_operand_object** %1, %union.acpi_operand_object*** %5, align 8
  %13 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %5, align 8
  %14 = load %union.acpi_operand_object*, %union.acpi_operand_object** %13, align 8
  store %union.acpi_operand_object* %14, %union.acpi_operand_object** %6, align 8
  %15 = load i32, i32* @AE_OK, align 4
  store i32 %15, i32* %9, align 4
  %16 = load i32, i32* @ns_check_package, align 4
  %17 = call i32 @ACPI_FUNCTION_NAME(i32 %16)
  %18 = load %struct.acpi_evaluate_info*, %struct.acpi_evaluate_info** %4, align 8
  %19 = getelementptr inbounds %struct.acpi_evaluate_info, %struct.acpi_evaluate_info* %18, i32 0, i32 2
  %20 = load %union.acpi_predefined_info*, %union.acpi_predefined_info** %19, align 8
  %21 = getelementptr inbounds %union.acpi_predefined_info, %union.acpi_predefined_info* %20, i64 1
  store %union.acpi_predefined_info* %21, %union.acpi_predefined_info** %7, align 8
  %22 = load i32, i32* @ACPI_DB_NAMES, align 4
  %23 = load %struct.acpi_evaluate_info*, %struct.acpi_evaluate_info** %4, align 8
  %24 = getelementptr inbounds %struct.acpi_evaluate_info, %struct.acpi_evaluate_info* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = load %union.acpi_predefined_info*, %union.acpi_predefined_info** %7, align 8
  %27 = bitcast %union.acpi_predefined_info* %26 to %struct.TYPE_12__*
  %28 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load %union.acpi_operand_object*, %union.acpi_operand_object** %6, align 8
  %31 = bitcast %union.acpi_operand_object* %30 to %struct.TYPE_10__*
  %32 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = trunc i64 %33 to i32
  %35 = call i32 @ACPI_DEBUG_PRINT(i32 %34)
  %36 = load %struct.acpi_evaluate_info*, %struct.acpi_evaluate_info** %4, align 8
  %37 = load %union.acpi_predefined_info*, %union.acpi_predefined_info** %7, align 8
  %38 = bitcast %union.acpi_predefined_info* %37 to %struct.TYPE_12__*
  %39 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = load %union.acpi_operand_object*, %union.acpi_operand_object** %6, align 8
  %42 = call i32 @acpi_ns_remove_null_elements(%struct.acpi_evaluate_info* %36, i32 %40, %union.acpi_operand_object* %41)
  %43 = load %union.acpi_operand_object*, %union.acpi_operand_object** %6, align 8
  %44 = bitcast %union.acpi_operand_object* %43 to %struct.TYPE_10__*
  %45 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %44, i32 0, i32 1
  %46 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %45, align 8
  store %union.acpi_operand_object** %46, %union.acpi_operand_object*** %8, align 8
  %47 = load %union.acpi_operand_object*, %union.acpi_operand_object** %6, align 8
  %48 = bitcast %union.acpi_operand_object* %47 to %struct.TYPE_10__*
  %49 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  store i64 %50, i64* %11, align 8
  %51 = load i64, i64* %11, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %71, label %53

53:                                               ; preds = %2
  %54 = load %union.acpi_predefined_info*, %union.acpi_predefined_info** %7, align 8
  %55 = bitcast %union.acpi_predefined_info* %54 to %struct.TYPE_12__*
  %56 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = icmp eq i32 %57, 138
  br i1 %58, label %59, label %61

59:                                               ; preds = %53
  %60 = load i32, i32* @AE_OK, align 4
  store i32 %60, i32* %3, align 4
  br label %392

61:                                               ; preds = %53
  %62 = load i32, i32* @AE_INFO, align 4
  %63 = load %struct.acpi_evaluate_info*, %struct.acpi_evaluate_info** %4, align 8
  %64 = getelementptr inbounds %struct.acpi_evaluate_info, %struct.acpi_evaluate_info* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.acpi_evaluate_info*, %struct.acpi_evaluate_info** %4, align 8
  %67 = getelementptr inbounds %struct.acpi_evaluate_info, %struct.acpi_evaluate_info* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = call i32 @ACPI_WARN_PREDEFINED(i32 ptrtoint ([39 x i8]* @.str.1 to i32))
  %70 = load i32, i32* @AE_AML_OPERAND_VALUE, align 4
  store i32 %70, i32* %3, align 4
  br label %392

71:                                               ; preds = %2
  %72 = load %union.acpi_predefined_info*, %union.acpi_predefined_info** %7, align 8
  %73 = bitcast %union.acpi_predefined_info* %72 to %struct.TYPE_12__*
  %74 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  switch i32 %75, label %363 [
    i32 128, label %76
    i32 140, label %81
    i32 138, label %129
    i32 139, label %155
    i32 131, label %216
    i32 132, label %236
    i32 137, label %266
    i32 135, label %266
    i32 133, label %266
    i32 136, label %266
    i32 134, label %266
    i32 129, label %301
    i32 130, label %302
  ]

76:                                               ; preds = %71
  %77 = load %struct.acpi_evaluate_info*, %struct.acpi_evaluate_info** %4, align 8
  %78 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %8, align 8
  %79 = load i64, i64* %11, align 8
  %80 = call i32 @acpi_ns_custom_package(%struct.acpi_evaluate_info* %77, %union.acpi_operand_object** %78, i64 %79)
  store i32 %80, i32* %9, align 4
  br label %377

81:                                               ; preds = %71
  %82 = load %union.acpi_predefined_info*, %union.acpi_predefined_info** %7, align 8
  %83 = bitcast %union.acpi_predefined_info* %82 to %struct.TYPE_12__*
  %84 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %83, i32 0, i32 1
  %85 = load i64, i64* %84, align 8
  %86 = load %union.acpi_predefined_info*, %union.acpi_predefined_info** %7, align 8
  %87 = bitcast %union.acpi_predefined_info* %86 to %struct.TYPE_12__*
  %88 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %87, i32 0, i32 2
  %89 = load i64, i64* %88, align 8
  %90 = add i64 %85, %89
  store i64 %90, i64* %10, align 8
  %91 = load i64, i64* %11, align 8
  %92 = load i64, i64* %10, align 8
  %93 = icmp ult i64 %91, %92
  br i1 %93, label %94, label %95

94:                                               ; preds = %81
  br label %379

95:                                               ; preds = %81
  %96 = load i64, i64* %11, align 8
  %97 = load i64, i64* %10, align 8
  %98 = icmp ugt i64 %96, %97
  br i1 %98, label %99, label %108

99:                                               ; preds = %95
  %100 = load i32, i32* @ACPI_DB_REPAIR, align 4
  %101 = load %struct.acpi_evaluate_info*, %struct.acpi_evaluate_info** %4, align 8
  %102 = getelementptr inbounds %struct.acpi_evaluate_info, %struct.acpi_evaluate_info* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 4
  %104 = load i64, i64* %11, align 8
  %105 = load i64, i64* %10, align 8
  %106 = trunc i64 %105 to i32
  %107 = call i32 @ACPI_DEBUG_PRINT(i32 %106)
  br label %108

108:                                              ; preds = %99, %95
  br label %109

109:                                              ; preds = %108
  %110 = load %struct.acpi_evaluate_info*, %struct.acpi_evaluate_info** %4, align 8
  %111 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %8, align 8
  %112 = load %union.acpi_predefined_info*, %union.acpi_predefined_info** %7, align 8
  %113 = bitcast %union.acpi_predefined_info* %112 to %struct.TYPE_12__*
  %114 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %113, i32 0, i32 4
  %115 = load i32, i32* %114, align 4
  %116 = load %union.acpi_predefined_info*, %union.acpi_predefined_info** %7, align 8
  %117 = bitcast %union.acpi_predefined_info* %116 to %struct.TYPE_12__*
  %118 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %117, i32 0, i32 1
  %119 = load i64, i64* %118, align 8
  %120 = load %union.acpi_predefined_info*, %union.acpi_predefined_info** %7, align 8
  %121 = bitcast %union.acpi_predefined_info* %120 to %struct.TYPE_12__*
  %122 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %121, i32 0, i32 3
  %123 = load i32, i32* %122, align 8
  %124 = load %union.acpi_predefined_info*, %union.acpi_predefined_info** %7, align 8
  %125 = bitcast %union.acpi_predefined_info* %124 to %struct.TYPE_12__*
  %126 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %125, i32 0, i32 2
  %127 = load i64, i64* %126, align 8
  %128 = call i32 @acpi_ns_check_package_elements(%struct.acpi_evaluate_info* %110, %union.acpi_operand_object** %111, i32 %115, i64 %119, i32 %123, i64 %127, i32 0)
  store i32 %128, i32* %9, align 4
  br label %377

129:                                              ; preds = %71
  store i64 0, i64* %12, align 8
  br label %130

130:                                              ; preds = %151, %129
  %131 = load i64, i64* %12, align 8
  %132 = load i64, i64* %11, align 8
  %133 = icmp ult i64 %131, %132
  br i1 %133, label %134, label %154

134:                                              ; preds = %130
  %135 = load %struct.acpi_evaluate_info*, %struct.acpi_evaluate_info** %4, align 8
  %136 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %8, align 8
  %137 = load %union.acpi_predefined_info*, %union.acpi_predefined_info** %7, align 8
  %138 = bitcast %union.acpi_predefined_info* %137 to %struct.TYPE_12__*
  %139 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %138, i32 0, i32 4
  %140 = load i32, i32* %139, align 4
  %141 = load i64, i64* %12, align 8
  %142 = call i32 @acpi_ns_check_object_type(%struct.acpi_evaluate_info* %135, %union.acpi_operand_object** %136, i32 %140, i64 %141)
  store i32 %142, i32* %9, align 4
  %143 = load i32, i32* %9, align 4
  %144 = call i32 @ACPI_FAILURE(i32 %143)
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %146, label %148

146:                                              ; preds = %134
  %147 = load i32, i32* %9, align 4
  store i32 %147, i32* %3, align 4
  br label %392

148:                                              ; preds = %134
  %149 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %8, align 8
  %150 = getelementptr inbounds %union.acpi_operand_object*, %union.acpi_operand_object** %149, i32 1
  store %union.acpi_operand_object** %150, %union.acpi_operand_object*** %8, align 8
  br label %151

151:                                              ; preds = %148
  %152 = load i64, i64* %12, align 8
  %153 = add i64 %152, 1
  store i64 %153, i64* %12, align 8
  br label %130

154:                                              ; preds = %130
  br label %377

155:                                              ; preds = %71
  %156 = load %union.acpi_predefined_info*, %union.acpi_predefined_info** %7, align 8
  %157 = bitcast %union.acpi_predefined_info* %156 to %struct.TYPE_7__*
  %158 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %157, i32 0, i32 0
  %159 = load i64, i64* %158, align 8
  store i64 %159, i64* %10, align 8
  %160 = load i64, i64* %11, align 8
  %161 = load i64, i64* %10, align 8
  %162 = icmp ult i64 %160, %161
  br i1 %162, label %163, label %164

163:                                              ; preds = %155
  br label %379

164:                                              ; preds = %155
  store i64 0, i64* %12, align 8
  br label %165

165:                                              ; preds = %212, %164
  %166 = load i64, i64* %12, align 8
  %167 = load i64, i64* %11, align 8
  %168 = icmp ult i64 %166, %167
  br i1 %168, label %169, label %215

169:                                              ; preds = %165
  %170 = load i64, i64* %12, align 8
  %171 = load %union.acpi_predefined_info*, %union.acpi_predefined_info** %7, align 8
  %172 = bitcast %union.acpi_predefined_info* %171 to %struct.TYPE_7__*
  %173 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %172, i32 0, i32 0
  %174 = load i64, i64* %173, align 8
  %175 = icmp ult i64 %170, %174
  br i1 %175, label %176, label %194

176:                                              ; preds = %169
  %177 = load %struct.acpi_evaluate_info*, %struct.acpi_evaluate_info** %4, align 8
  %178 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %8, align 8
  %179 = load %union.acpi_predefined_info*, %union.acpi_predefined_info** %7, align 8
  %180 = bitcast %union.acpi_predefined_info* %179 to %struct.TYPE_7__*
  %181 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %180, i32 0, i32 2
  %182 = load i32*, i32** %181, align 8
  %183 = load i64, i64* %12, align 8
  %184 = getelementptr inbounds i32, i32* %182, i64 %183
  %185 = load i32, i32* %184, align 4
  %186 = load i64, i64* %12, align 8
  %187 = call i32 @acpi_ns_check_object_type(%struct.acpi_evaluate_info* %177, %union.acpi_operand_object** %178, i32 %185, i64 %186)
  store i32 %187, i32* %9, align 4
  %188 = load i32, i32* %9, align 4
  %189 = call i32 @ACPI_FAILURE(i32 %188)
  %190 = icmp ne i32 %189, 0
  br i1 %190, label %191, label %193

191:                                              ; preds = %176
  %192 = load i32, i32* %9, align 4
  store i32 %192, i32* %3, align 4
  br label %392

193:                                              ; preds = %176
  br label %209

194:                                              ; preds = %169
  %195 = load %struct.acpi_evaluate_info*, %struct.acpi_evaluate_info** %4, align 8
  %196 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %8, align 8
  %197 = load %union.acpi_predefined_info*, %union.acpi_predefined_info** %7, align 8
  %198 = bitcast %union.acpi_predefined_info* %197 to %struct.TYPE_7__*
  %199 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %198, i32 0, i32 1
  %200 = load i32, i32* %199, align 8
  %201 = load i64, i64* %12, align 8
  %202 = call i32 @acpi_ns_check_object_type(%struct.acpi_evaluate_info* %195, %union.acpi_operand_object** %196, i32 %200, i64 %201)
  store i32 %202, i32* %9, align 4
  %203 = load i32, i32* %9, align 4
  %204 = call i32 @ACPI_FAILURE(i32 %203)
  %205 = icmp ne i32 %204, 0
  br i1 %205, label %206, label %208

206:                                              ; preds = %194
  %207 = load i32, i32* %9, align 4
  store i32 %207, i32* %3, align 4
  br label %392

208:                                              ; preds = %194
  br label %209

209:                                              ; preds = %208, %193
  %210 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %8, align 8
  %211 = getelementptr inbounds %union.acpi_operand_object*, %union.acpi_operand_object** %210, i32 1
  store %union.acpi_operand_object** %211, %union.acpi_operand_object*** %8, align 8
  br label %212

212:                                              ; preds = %209
  %213 = load i64, i64* %12, align 8
  %214 = add i64 %213, 1
  store i64 %214, i64* %12, align 8
  br label %165

215:                                              ; preds = %165
  br label %377

216:                                              ; preds = %71
  %217 = load %struct.acpi_evaluate_info*, %struct.acpi_evaluate_info** %4, align 8
  %218 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %8, align 8
  %219 = load i32, i32* @ACPI_RTYPE_INTEGER, align 4
  %220 = call i32 @acpi_ns_check_object_type(%struct.acpi_evaluate_info* %217, %union.acpi_operand_object** %218, i32 %219, i64 0)
  store i32 %220, i32* %9, align 4
  %221 = load i32, i32* %9, align 4
  %222 = call i32 @ACPI_FAILURE(i32 %221)
  %223 = icmp ne i32 %222, 0
  br i1 %223, label %224, label %226

224:                                              ; preds = %216
  %225 = load i32, i32* %9, align 4
  store i32 %225, i32* %3, align 4
  br label %392

226:                                              ; preds = %216
  %227 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %8, align 8
  %228 = getelementptr inbounds %union.acpi_operand_object*, %union.acpi_operand_object** %227, i32 1
  store %union.acpi_operand_object** %228, %union.acpi_operand_object*** %8, align 8
  %229 = load i64, i64* %11, align 8
  %230 = add i64 %229, -1
  store i64 %230, i64* %11, align 8
  %231 = load %struct.acpi_evaluate_info*, %struct.acpi_evaluate_info** %4, align 8
  %232 = load %union.acpi_predefined_info*, %union.acpi_predefined_info** %7, align 8
  %233 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %8, align 8
  %234 = load i64, i64* %11, align 8
  %235 = call i32 @acpi_ns_check_package_list(%struct.acpi_evaluate_info* %231, %union.acpi_predefined_info* %232, %union.acpi_operand_object** %233, i64 %234)
  store i32 %235, i32* %9, align 4
  br label %377

236:                                              ; preds = %71
  %237 = load %struct.acpi_evaluate_info*, %struct.acpi_evaluate_info** %4, align 8
  %238 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %8, align 8
  %239 = load i32, i32* @ACPI_RTYPE_INTEGER, align 4
  %240 = call i32 @acpi_ns_check_object_type(%struct.acpi_evaluate_info* %237, %union.acpi_operand_object** %238, i32 %239, i64 0)
  store i32 %240, i32* %9, align 4
  %241 = load i32, i32* %9, align 4
  %242 = call i32 @ACPI_FAILURE(i32 %241)
  %243 = icmp ne i32 %242, 0
  br i1 %243, label %244, label %246

244:                                              ; preds = %236
  %245 = load i32, i32* %9, align 4
  store i32 %245, i32* %3, align 4
  br label %392

246:                                              ; preds = %236
  %247 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %8, align 8
  %248 = load %union.acpi_operand_object*, %union.acpi_operand_object** %247, align 8
  %249 = bitcast %union.acpi_operand_object* %248 to %struct.TYPE_8__*
  %250 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %249, i32 0, i32 0
  %251 = load i32, i32* %250, align 8
  %252 = sext i32 %251 to i64
  store i64 %252, i64* %10, align 8
  %253 = load i64, i64* %10, align 8
  %254 = load i64, i64* %11, align 8
  %255 = icmp uge i64 %253, %254
  br i1 %255, label %256, label %257

256:                                              ; preds = %246
  br label %379

257:                                              ; preds = %246
  %258 = load i64, i64* %10, align 8
  store i64 %258, i64* %11, align 8
  %259 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %8, align 8
  %260 = getelementptr inbounds %union.acpi_operand_object*, %union.acpi_operand_object** %259, i32 1
  store %union.acpi_operand_object** %260, %union.acpi_operand_object*** %8, align 8
  %261 = load %struct.acpi_evaluate_info*, %struct.acpi_evaluate_info** %4, align 8
  %262 = load %union.acpi_predefined_info*, %union.acpi_predefined_info** %7, align 8
  %263 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %8, align 8
  %264 = load i64, i64* %11, align 8
  %265 = call i32 @acpi_ns_check_package_list(%struct.acpi_evaluate_info* %261, %union.acpi_predefined_info* %262, %union.acpi_operand_object** %263, i64 %264)
  store i32 %265, i32* %9, align 4
  br label %377

266:                                              ; preds = %71, %71, %71, %71, %71
  %267 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %8, align 8
  %268 = load %union.acpi_operand_object*, %union.acpi_operand_object** %267, align 8
  %269 = icmp ne %union.acpi_operand_object* %268, null
  br i1 %269, label %270, label %295

270:                                              ; preds = %266
  %271 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %8, align 8
  %272 = load %union.acpi_operand_object*, %union.acpi_operand_object** %271, align 8
  %273 = bitcast %union.acpi_operand_object* %272 to %struct.TYPE_9__*
  %274 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %273, i32 0, i32 0
  %275 = load i32, i32* %274, align 8
  %276 = load i32, i32* @ACPI_TYPE_PACKAGE, align 4
  %277 = icmp ne i32 %275, %276
  br i1 %277, label %278, label %295

278:                                              ; preds = %270
  %279 = load %struct.acpi_evaluate_info*, %struct.acpi_evaluate_info** %4, align 8
  %280 = load %union.acpi_operand_object*, %union.acpi_operand_object** %6, align 8
  %281 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %5, align 8
  %282 = call i32 @acpi_ns_wrap_with_package(%struct.acpi_evaluate_info* %279, %union.acpi_operand_object* %280, %union.acpi_operand_object** %281)
  store i32 %282, i32* %9, align 4
  %283 = load i32, i32* %9, align 4
  %284 = call i32 @ACPI_FAILURE(i32 %283)
  %285 = icmp ne i32 %284, 0
  br i1 %285, label %286, label %288

286:                                              ; preds = %278
  %287 = load i32, i32* %9, align 4
  store i32 %287, i32* %3, align 4
  br label %392

288:                                              ; preds = %278
  %289 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %5, align 8
  %290 = load %union.acpi_operand_object*, %union.acpi_operand_object** %289, align 8
  store %union.acpi_operand_object* %290, %union.acpi_operand_object** %6, align 8
  %291 = load %union.acpi_operand_object*, %union.acpi_operand_object** %6, align 8
  %292 = bitcast %union.acpi_operand_object* %291 to %struct.TYPE_10__*
  %293 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %292, i32 0, i32 1
  %294 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %293, align 8
  store %union.acpi_operand_object** %294, %union.acpi_operand_object*** %8, align 8
  store i64 1, i64* %11, align 8
  br label %295

295:                                              ; preds = %288, %270, %266
  %296 = load %struct.acpi_evaluate_info*, %struct.acpi_evaluate_info** %4, align 8
  %297 = load %union.acpi_predefined_info*, %union.acpi_predefined_info** %7, align 8
  %298 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %8, align 8
  %299 = load i64, i64* %11, align 8
  %300 = call i32 @acpi_ns_check_package_list(%struct.acpi_evaluate_info* %296, %union.acpi_predefined_info* %297, %union.acpi_operand_object** %298, i64 %299)
  store i32 %300, i32* %9, align 4
  br label %377

301:                                              ; preds = %71
  br label %377

302:                                              ; preds = %71
  %303 = load i64, i64* %11, align 8
  %304 = and i64 %303, 1
  %305 = icmp ne i64 %304, 0
  br i1 %305, label %306, label %309

306:                                              ; preds = %302
  %307 = load i64, i64* %11, align 8
  %308 = add i64 %307, 1
  store i64 %308, i64* %10, align 8
  br label %379

309:                                              ; preds = %302
  br label %310

310:                                              ; preds = %357, %309
  %311 = load i64, i64* %11, align 8
  %312 = icmp ugt i64 %311, 0
  br i1 %312, label %313, label %362

313:                                              ; preds = %310
  %314 = load %struct.acpi_evaluate_info*, %struct.acpi_evaluate_info** %4, align 8
  %315 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %8, align 8
  %316 = load %union.acpi_predefined_info*, %union.acpi_predefined_info** %7, align 8
  %317 = bitcast %union.acpi_predefined_info* %316 to %struct.TYPE_12__*
  %318 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %317, i32 0, i32 4
  %319 = load i32, i32* %318, align 4
  %320 = call i32 @acpi_ns_check_object_type(%struct.acpi_evaluate_info* %314, %union.acpi_operand_object** %315, i32 %319, i64 0)
  store i32 %320, i32* %9, align 4
  %321 = load i32, i32* %9, align 4
  %322 = call i32 @ACPI_FAILURE(i32 %321)
  %323 = icmp ne i32 %322, 0
  br i1 %323, label %324, label %326

324:                                              ; preds = %313
  %325 = load i32, i32* %9, align 4
  store i32 %325, i32* %3, align 4
  br label %392

326:                                              ; preds = %313
  %327 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %8, align 8
  %328 = load %union.acpi_operand_object*, %union.acpi_operand_object** %327, align 8
  %329 = bitcast %union.acpi_operand_object* %328 to %struct.TYPE_11__*
  %330 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %329, i32 0, i32 0
  %331 = load i32, i32* %330, align 8
  %332 = icmp ne i32 %331, 16
  br i1 %332, label %333, label %343

333:                                              ; preds = %326
  %334 = load i32, i32* @AE_INFO, align 4
  %335 = load %struct.acpi_evaluate_info*, %struct.acpi_evaluate_info** %4, align 8
  %336 = getelementptr inbounds %struct.acpi_evaluate_info, %struct.acpi_evaluate_info* %335, i32 0, i32 1
  %337 = load i32, i32* %336, align 4
  %338 = load %struct.acpi_evaluate_info*, %struct.acpi_evaluate_info** %4, align 8
  %339 = getelementptr inbounds %struct.acpi_evaluate_info, %struct.acpi_evaluate_info* %338, i32 0, i32 0
  %340 = load i32, i32* %339, align 8
  %341 = call i32 @ACPI_WARN_PREDEFINED(i32 ptrtoint ([31 x i8]* @.str.3 to i32))
  %342 = load i32, i32* @AE_AML_OPERAND_VALUE, align 4
  store i32 %342, i32* %3, align 4
  br label %392

343:                                              ; preds = %326
  %344 = load %struct.acpi_evaluate_info*, %struct.acpi_evaluate_info** %4, align 8
  %345 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %8, align 8
  %346 = getelementptr inbounds %union.acpi_operand_object*, %union.acpi_operand_object** %345, i64 1
  %347 = load %union.acpi_predefined_info*, %union.acpi_predefined_info** %7, align 8
  %348 = bitcast %union.acpi_predefined_info* %347 to %struct.TYPE_12__*
  %349 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %348, i32 0, i32 3
  %350 = load i32, i32* %349, align 8
  %351 = call i32 @acpi_ns_check_object_type(%struct.acpi_evaluate_info* %344, %union.acpi_operand_object** %346, i32 %350, i64 0)
  store i32 %351, i32* %9, align 4
  %352 = load i32, i32* %9, align 4
  %353 = call i32 @ACPI_FAILURE(i32 %352)
  %354 = icmp ne i32 %353, 0
  br i1 %354, label %355, label %357

355:                                              ; preds = %343
  %356 = load i32, i32* %9, align 4
  store i32 %356, i32* %3, align 4
  br label %392

357:                                              ; preds = %343
  %358 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %8, align 8
  %359 = getelementptr inbounds %union.acpi_operand_object*, %union.acpi_operand_object** %358, i64 2
  store %union.acpi_operand_object** %359, %union.acpi_operand_object*** %8, align 8
  %360 = load i64, i64* %11, align 8
  %361 = sub i64 %360, 2
  store i64 %361, i64* %11, align 8
  br label %310

362:                                              ; preds = %310
  br label %377

363:                                              ; preds = %71
  %364 = load i32, i32* @AE_INFO, align 4
  %365 = load %struct.acpi_evaluate_info*, %struct.acpi_evaluate_info** %4, align 8
  %366 = getelementptr inbounds %struct.acpi_evaluate_info, %struct.acpi_evaluate_info* %365, i32 0, i32 1
  %367 = load i32, i32* %366, align 4
  %368 = load %struct.acpi_evaluate_info*, %struct.acpi_evaluate_info** %4, align 8
  %369 = getelementptr inbounds %struct.acpi_evaluate_info, %struct.acpi_evaluate_info* %368, i32 0, i32 0
  %370 = load i32, i32* %369, align 8
  %371 = load %union.acpi_predefined_info*, %union.acpi_predefined_info** %7, align 8
  %372 = bitcast %union.acpi_predefined_info* %371 to %struct.TYPE_12__*
  %373 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %372, i32 0, i32 0
  %374 = load i32, i32* %373, align 8
  %375 = call i32 @ACPI_WARN_PREDEFINED(i32 %374)
  %376 = load i32, i32* @AE_AML_INTERNAL, align 4
  store i32 %376, i32* %3, align 4
  br label %392

377:                                              ; preds = %362, %301, %295, %257, %226, %215, %154, %109, %76
  %378 = load i32, i32* %9, align 4
  store i32 %378, i32* %3, align 4
  br label %392

379:                                              ; preds = %306, %256, %163, %94
  %380 = load i32, i32* @AE_INFO, align 4
  %381 = load %struct.acpi_evaluate_info*, %struct.acpi_evaluate_info** %4, align 8
  %382 = getelementptr inbounds %struct.acpi_evaluate_info, %struct.acpi_evaluate_info* %381, i32 0, i32 1
  %383 = load i32, i32* %382, align 4
  %384 = load %struct.acpi_evaluate_info*, %struct.acpi_evaluate_info** %4, align 8
  %385 = getelementptr inbounds %struct.acpi_evaluate_info, %struct.acpi_evaluate_info* %384, i32 0, i32 0
  %386 = load i32, i32* %385, align 8
  %387 = load i64, i64* %11, align 8
  %388 = load i64, i64* %10, align 8
  %389 = trunc i64 %388 to i32
  %390 = call i32 @ACPI_WARN_PREDEFINED(i32 %389)
  %391 = load i32, i32* @AE_AML_OPERAND_VALUE, align 4
  store i32 %391, i32* %3, align 4
  br label %392

392:                                              ; preds = %379, %377, %363, %355, %333, %324, %286, %244, %224, %206, %191, %146, %61, %59
  %393 = load i32, i32* %3, align 4
  ret i32 %393
}

declare dso_local i32 @ACPI_FUNCTION_NAME(i32) #1

declare dso_local i32 @ACPI_DEBUG_PRINT(i32) #1

declare dso_local i32 @acpi_ns_remove_null_elements(%struct.acpi_evaluate_info*, i32, %union.acpi_operand_object*) #1

declare dso_local i32 @ACPI_WARN_PREDEFINED(i32) #1

declare dso_local i32 @acpi_ns_custom_package(%struct.acpi_evaluate_info*, %union.acpi_operand_object**, i64) #1

declare dso_local i32 @acpi_ns_check_package_elements(%struct.acpi_evaluate_info*, %union.acpi_operand_object**, i32, i64, i32, i64, i32) #1

declare dso_local i32 @acpi_ns_check_object_type(%struct.acpi_evaluate_info*, %union.acpi_operand_object**, i32, i64) #1

declare dso_local i32 @ACPI_FAILURE(i32) #1

declare dso_local i32 @acpi_ns_check_package_list(%struct.acpi_evaluate_info*, %union.acpi_predefined_info*, %union.acpi_operand_object**, i64) #1

declare dso_local i32 @acpi_ns_wrap_with_package(%struct.acpi_evaluate_info*, %union.acpi_operand_object*, %union.acpi_operand_object**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
