; ModuleID = '/home/carl/AnghaBench/linux/drivers/acpi/acpica/extr_nsprepkg.c_acpi_ns_check_package_list.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/acpi/acpica/extr_nsprepkg.c_acpi_ns_check_package_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_evaluate_info = type { i32, i32, %union.acpi_operand_object* }
%union.acpi_operand_object = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i64, %union.acpi_operand_object** }
%union.acpi_predefined_info = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, i64, i64, i32, i32 }
%struct.TYPE_5__ = type { i64, i32* }
%struct.TYPE_6__ = type { i64 }

@ACPI_RTYPE_PACKAGE = common dso_local global i32 0, align 4
@ACPI_RTYPE_INTEGER = common dso_local global i32 0, align 4
@AE_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"Invalid Package type: %X\00", align 1
@AE_AML_INTERNAL = common dso_local global i32 0, align 4
@AE_OK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [68 x i8] c"Return SubPackage[%u] is too small - found %u elements, expected %u\00", align 1
@AE_AML_OPERAND_VALUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.acpi_evaluate_info*, %union.acpi_predefined_info*, %union.acpi_operand_object**, i64)* @acpi_ns_check_package_list to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @acpi_ns_check_package_list(%struct.acpi_evaluate_info* %0, %union.acpi_predefined_info* %1, %union.acpi_operand_object** %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.acpi_evaluate_info*, align 8
  %7 = alloca %union.acpi_predefined_info*, align 8
  %8 = alloca %union.acpi_operand_object**, align 8
  %9 = alloca i64, align 8
  %10 = alloca %union.acpi_operand_object*, align 8
  %11 = alloca %union.acpi_operand_object**, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  store %struct.acpi_evaluate_info* %0, %struct.acpi_evaluate_info** %6, align 8
  store %union.acpi_predefined_info* %1, %union.acpi_predefined_info** %7, align 8
  store %union.acpi_operand_object** %2, %union.acpi_operand_object*** %8, align 8
  store i64 %3, i64* %9, align 8
  store i64 0, i64* %14, align 8
  br label %16

16:                                               ; preds = %289, %4
  %17 = load i64, i64* %14, align 8
  %18 = load i64, i64* %9, align 8
  %19 = icmp slt i64 %17, %18
  br i1 %19, label %20, label %292

20:                                               ; preds = %16
  %21 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %8, align 8
  %22 = load %union.acpi_operand_object*, %union.acpi_operand_object** %21, align 8
  store %union.acpi_operand_object* %22, %union.acpi_operand_object** %10, align 8
  %23 = load %union.acpi_operand_object*, %union.acpi_operand_object** %10, align 8
  %24 = bitcast %union.acpi_operand_object* %23 to %struct.TYPE_8__*
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i32 0, i32 1
  %26 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %25, align 8
  store %union.acpi_operand_object** %26, %union.acpi_operand_object*** %11, align 8
  %27 = load %union.acpi_operand_object*, %union.acpi_operand_object** %10, align 8
  %28 = load %struct.acpi_evaluate_info*, %struct.acpi_evaluate_info** %6, align 8
  %29 = getelementptr inbounds %struct.acpi_evaluate_info, %struct.acpi_evaluate_info* %28, i32 0, i32 2
  store %union.acpi_operand_object* %27, %union.acpi_operand_object** %29, align 8
  %30 = load %struct.acpi_evaluate_info*, %struct.acpi_evaluate_info** %6, align 8
  %31 = load i32, i32* @ACPI_RTYPE_PACKAGE, align 4
  %32 = load i64, i64* %14, align 8
  %33 = call i32 @acpi_ns_check_object_type(%struct.acpi_evaluate_info* %30, %union.acpi_operand_object** %10, i32 %31, i64 %32)
  store i32 %33, i32* %12, align 4
  %34 = load i32, i32* %12, align 4
  %35 = call i64 @ACPI_FAILURE(i32 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %20
  %38 = load i32, i32* %12, align 4
  store i32 %38, i32* %5, align 4
  br label %311

39:                                               ; preds = %20
  %40 = load %union.acpi_operand_object*, %union.acpi_operand_object** %10, align 8
  %41 = load %struct.acpi_evaluate_info*, %struct.acpi_evaluate_info** %6, align 8
  %42 = getelementptr inbounds %struct.acpi_evaluate_info, %struct.acpi_evaluate_info* %41, i32 0, i32 2
  store %union.acpi_operand_object* %40, %union.acpi_operand_object** %42, align 8
  %43 = load %union.acpi_predefined_info*, %union.acpi_predefined_info** %7, align 8
  %44 = bitcast %union.acpi_predefined_info* %43 to %struct.TYPE_7__*
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  switch i32 %46, label %278 [
    i32 135, label %47
    i32 130, label %47
    i32 129, label %47
    i32 132, label %90
    i32 128, label %138
    i32 133, label %139
    i32 131, label %180
    i32 134, label %210
  ]

47:                                               ; preds = %39, %39, %39
  %48 = load %union.acpi_predefined_info*, %union.acpi_predefined_info** %7, align 8
  %49 = bitcast %union.acpi_predefined_info* %48 to %struct.TYPE_7__*
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = load %union.acpi_predefined_info*, %union.acpi_predefined_info** %7, align 8
  %53 = bitcast %union.acpi_predefined_info* %52 to %struct.TYPE_7__*
  %54 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %53, i32 0, i32 2
  %55 = load i64, i64* %54, align 8
  %56 = add nsw i64 %51, %55
  store i64 %56, i64* %13, align 8
  %57 = load %union.acpi_operand_object*, %union.acpi_operand_object** %10, align 8
  %58 = bitcast %union.acpi_operand_object* %57 to %struct.TYPE_8__*
  %59 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* %13, align 8
  %62 = icmp slt i64 %60, %61
  br i1 %62, label %63, label %64

63:                                               ; preds = %47
  br label %294

64:                                               ; preds = %47
  %65 = load %struct.acpi_evaluate_info*, %struct.acpi_evaluate_info** %6, align 8
  %66 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %11, align 8
  %67 = load %union.acpi_predefined_info*, %union.acpi_predefined_info** %7, align 8
  %68 = bitcast %union.acpi_predefined_info* %67 to %struct.TYPE_7__*
  %69 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %68, i32 0, i32 3
  %70 = load i32, i32* %69, align 8
  %71 = load %union.acpi_predefined_info*, %union.acpi_predefined_info** %7, align 8
  %72 = bitcast %union.acpi_predefined_info* %71 to %struct.TYPE_7__*
  %73 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %72, i32 0, i32 1
  %74 = load i64, i64* %73, align 8
  %75 = load %union.acpi_predefined_info*, %union.acpi_predefined_info** %7, align 8
  %76 = bitcast %union.acpi_predefined_info* %75 to %struct.TYPE_7__*
  %77 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %76, i32 0, i32 4
  %78 = load i32, i32* %77, align 4
  %79 = load %union.acpi_predefined_info*, %union.acpi_predefined_info** %7, align 8
  %80 = bitcast %union.acpi_predefined_info* %79 to %struct.TYPE_7__*
  %81 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %80, i32 0, i32 2
  %82 = load i64, i64* %81, align 8
  %83 = call i32 @acpi_ns_check_package_elements(%struct.acpi_evaluate_info* %65, %union.acpi_operand_object** %66, i32 %70, i64 %74, i32 %78, i64 %82, i32 0)
  store i32 %83, i32* %12, align 4
  %84 = load i32, i32* %12, align 4
  %85 = call i64 @ACPI_FAILURE(i32 %84)
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %89

87:                                               ; preds = %64
  %88 = load i32, i32* %12, align 4
  store i32 %88, i32* %5, align 4
  br label %311

89:                                               ; preds = %64
  br label %286

90:                                               ; preds = %39
  %91 = load %union.acpi_predefined_info*, %union.acpi_predefined_info** %7, align 8
  %92 = bitcast %union.acpi_predefined_info* %91 to %struct.TYPE_7__*
  %93 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %92, i32 0, i32 1
  %94 = load i64, i64* %93, align 8
  %95 = load %union.acpi_predefined_info*, %union.acpi_predefined_info** %7, align 8
  %96 = bitcast %union.acpi_predefined_info* %95 to %struct.TYPE_7__*
  %97 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %96, i32 0, i32 2
  %98 = load i64, i64* %97, align 8
  %99 = add nsw i64 %94, %98
  store i64 %99, i64* %13, align 8
  %100 = load %union.acpi_operand_object*, %union.acpi_operand_object** %10, align 8
  %101 = bitcast %union.acpi_operand_object* %100 to %struct.TYPE_8__*
  %102 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %101, i32 0, i32 0
  %103 = load i64, i64* %102, align 8
  %104 = load i64, i64* %13, align 8
  %105 = icmp slt i64 %103, %104
  br i1 %105, label %106, label %107

106:                                              ; preds = %90
  br label %294

107:                                              ; preds = %90
  %108 = load %struct.acpi_evaluate_info*, %struct.acpi_evaluate_info** %6, align 8
  %109 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %11, align 8
  %110 = load %union.acpi_predefined_info*, %union.acpi_predefined_info** %7, align 8
  %111 = bitcast %union.acpi_predefined_info* %110 to %struct.TYPE_7__*
  %112 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %111, i32 0, i32 3
  %113 = load i32, i32* %112, align 8
  %114 = load %union.acpi_predefined_info*, %union.acpi_predefined_info** %7, align 8
  %115 = bitcast %union.acpi_predefined_info* %114 to %struct.TYPE_7__*
  %116 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %115, i32 0, i32 1
  %117 = load i64, i64* %116, align 8
  %118 = load %union.acpi_predefined_info*, %union.acpi_predefined_info** %7, align 8
  %119 = bitcast %union.acpi_predefined_info* %118 to %struct.TYPE_7__*
  %120 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %119, i32 0, i32 4
  %121 = load i32, i32* %120, align 4
  %122 = load %union.acpi_operand_object*, %union.acpi_operand_object** %10, align 8
  %123 = bitcast %union.acpi_operand_object* %122 to %struct.TYPE_8__*
  %124 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %123, i32 0, i32 0
  %125 = load i64, i64* %124, align 8
  %126 = load %union.acpi_predefined_info*, %union.acpi_predefined_info** %7, align 8
  %127 = bitcast %union.acpi_predefined_info* %126 to %struct.TYPE_7__*
  %128 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %127, i32 0, i32 1
  %129 = load i64, i64* %128, align 8
  %130 = sub nsw i64 %125, %129
  %131 = call i32 @acpi_ns_check_package_elements(%struct.acpi_evaluate_info* %108, %union.acpi_operand_object** %109, i32 %113, i64 %117, i32 %121, i64 %130, i32 0)
  store i32 %131, i32* %12, align 4
  %132 = load i32, i32* %12, align 4
  %133 = call i64 @ACPI_FAILURE(i32 %132)
  %134 = icmp ne i64 %133, 0
  br i1 %134, label %135, label %137

135:                                              ; preds = %107
  %136 = load i32, i32* %12, align 4
  store i32 %136, i32* %5, align 4
  br label %311

137:                                              ; preds = %107
  br label %286

138:                                              ; preds = %39
  br label %286

139:                                              ; preds = %39
  %140 = load %union.acpi_predefined_info*, %union.acpi_predefined_info** %7, align 8
  %141 = bitcast %union.acpi_predefined_info* %140 to %struct.TYPE_5__*
  %142 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %141, i32 0, i32 0
  %143 = load i64, i64* %142, align 8
  store i64 %143, i64* %13, align 8
  %144 = load %union.acpi_operand_object*, %union.acpi_operand_object** %10, align 8
  %145 = bitcast %union.acpi_operand_object* %144 to %struct.TYPE_8__*
  %146 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %145, i32 0, i32 0
  %147 = load i64, i64* %146, align 8
  %148 = load i64, i64* %13, align 8
  %149 = icmp slt i64 %147, %148
  br i1 %149, label %150, label %151

150:                                              ; preds = %139
  br label %294

151:                                              ; preds = %139
  store i64 0, i64* %15, align 8
  br label %152

152:                                              ; preds = %176, %151
  %153 = load i64, i64* %15, align 8
  %154 = load i64, i64* %13, align 8
  %155 = icmp slt i64 %153, %154
  br i1 %155, label %156, label %179

156:                                              ; preds = %152
  %157 = load %struct.acpi_evaluate_info*, %struct.acpi_evaluate_info** %6, align 8
  %158 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %11, align 8
  %159 = load i64, i64* %15, align 8
  %160 = getelementptr inbounds %union.acpi_operand_object*, %union.acpi_operand_object** %158, i64 %159
  %161 = load %union.acpi_predefined_info*, %union.acpi_predefined_info** %7, align 8
  %162 = bitcast %union.acpi_predefined_info* %161 to %struct.TYPE_5__*
  %163 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %162, i32 0, i32 1
  %164 = load i32*, i32** %163, align 8
  %165 = load i64, i64* %15, align 8
  %166 = getelementptr inbounds i32, i32* %164, i64 %165
  %167 = load i32, i32* %166, align 4
  %168 = load i64, i64* %15, align 8
  %169 = call i32 @acpi_ns_check_object_type(%struct.acpi_evaluate_info* %157, %union.acpi_operand_object** %160, i32 %167, i64 %168)
  store i32 %169, i32* %12, align 4
  %170 = load i32, i32* %12, align 4
  %171 = call i64 @ACPI_FAILURE(i32 %170)
  %172 = icmp ne i64 %171, 0
  br i1 %172, label %173, label %175

173:                                              ; preds = %156
  %174 = load i32, i32* %12, align 4
  store i32 %174, i32* %5, align 4
  br label %311

175:                                              ; preds = %156
  br label %176

176:                                              ; preds = %175
  %177 = load i64, i64* %15, align 8
  %178 = add nsw i64 %177, 1
  store i64 %178, i64* %15, align 8
  br label %152

179:                                              ; preds = %152
  br label %286

180:                                              ; preds = %39
  %181 = load %union.acpi_predefined_info*, %union.acpi_predefined_info** %7, align 8
  %182 = bitcast %union.acpi_predefined_info* %181 to %struct.TYPE_7__*
  %183 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %182, i32 0, i32 1
  %184 = load i64, i64* %183, align 8
  store i64 %184, i64* %13, align 8
  %185 = load %union.acpi_operand_object*, %union.acpi_operand_object** %10, align 8
  %186 = bitcast %union.acpi_operand_object* %185 to %struct.TYPE_8__*
  %187 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %186, i32 0, i32 0
  %188 = load i64, i64* %187, align 8
  %189 = load i64, i64* %13, align 8
  %190 = icmp slt i64 %188, %189
  br i1 %190, label %191, label %192

191:                                              ; preds = %180
  br label %294

192:                                              ; preds = %180
  %193 = load %struct.acpi_evaluate_info*, %struct.acpi_evaluate_info** %6, align 8
  %194 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %11, align 8
  %195 = load %union.acpi_predefined_info*, %union.acpi_predefined_info** %7, align 8
  %196 = bitcast %union.acpi_predefined_info* %195 to %struct.TYPE_7__*
  %197 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %196, i32 0, i32 3
  %198 = load i32, i32* %197, align 8
  %199 = load %union.acpi_operand_object*, %union.acpi_operand_object** %10, align 8
  %200 = bitcast %union.acpi_operand_object* %199 to %struct.TYPE_8__*
  %201 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %200, i32 0, i32 0
  %202 = load i64, i64* %201, align 8
  %203 = call i32 @acpi_ns_check_package_elements(%struct.acpi_evaluate_info* %193, %union.acpi_operand_object** %194, i32 %198, i64 %202, i32 0, i64 0, i32 0)
  store i32 %203, i32* %12, align 4
  %204 = load i32, i32* %12, align 4
  %205 = call i64 @ACPI_FAILURE(i32 %204)
  %206 = icmp ne i64 %205, 0
  br i1 %206, label %207, label %209

207:                                              ; preds = %192
  %208 = load i32, i32* %12, align 4
  store i32 %208, i32* %5, align 4
  br label %311

209:                                              ; preds = %192
  br label %286

210:                                              ; preds = %39
  %211 = load %struct.acpi_evaluate_info*, %struct.acpi_evaluate_info** %6, align 8
  %212 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %11, align 8
  %213 = load i32, i32* @ACPI_RTYPE_INTEGER, align 4
  %214 = call i32 @acpi_ns_check_object_type(%struct.acpi_evaluate_info* %211, %union.acpi_operand_object** %212, i32 %213, i64 0)
  store i32 %214, i32* %12, align 4
  %215 = load i32, i32* %12, align 4
  %216 = call i64 @ACPI_FAILURE(i32 %215)
  %217 = icmp ne i64 %216, 0
  br i1 %217, label %218, label %220

218:                                              ; preds = %210
  %219 = load i32, i32* %12, align 4
  store i32 %219, i32* %5, align 4
  br label %311

220:                                              ; preds = %210
  %221 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %11, align 8
  %222 = load %union.acpi_operand_object*, %union.acpi_operand_object** %221, align 8
  %223 = bitcast %union.acpi_operand_object* %222 to %struct.TYPE_6__*
  %224 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %223, i32 0, i32 0
  %225 = load i64, i64* %224, align 8
  store i64 %225, i64* %13, align 8
  %226 = load %union.acpi_operand_object*, %union.acpi_operand_object** %10, align 8
  %227 = bitcast %union.acpi_operand_object* %226 to %struct.TYPE_8__*
  %228 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %227, i32 0, i32 0
  %229 = load i64, i64* %228, align 8
  %230 = load i64, i64* %13, align 8
  %231 = icmp slt i64 %229, %230
  br i1 %231, label %232, label %233

232:                                              ; preds = %220
  br label %294

233:                                              ; preds = %220
  %234 = load %union.acpi_operand_object*, %union.acpi_operand_object** %10, align 8
  %235 = bitcast %union.acpi_operand_object* %234 to %struct.TYPE_8__*
  %236 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %235, i32 0, i32 0
  %237 = load i64, i64* %236, align 8
  %238 = load %union.acpi_predefined_info*, %union.acpi_predefined_info** %7, align 8
  %239 = bitcast %union.acpi_predefined_info* %238 to %struct.TYPE_7__*
  %240 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %239, i32 0, i32 1
  %241 = load i64, i64* %240, align 8
  %242 = icmp slt i64 %237, %241
  br i1 %242, label %243, label %248

243:                                              ; preds = %233
  %244 = load %union.acpi_predefined_info*, %union.acpi_predefined_info** %7, align 8
  %245 = bitcast %union.acpi_predefined_info* %244 to %struct.TYPE_7__*
  %246 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %245, i32 0, i32 1
  %247 = load i64, i64* %246, align 8
  store i64 %247, i64* %13, align 8
  br label %294

248:                                              ; preds = %233
  %249 = load i64, i64* %13, align 8
  %250 = icmp eq i64 %249, 0
  br i1 %250, label %251, label %261

251:                                              ; preds = %248
  %252 = load %union.acpi_operand_object*, %union.acpi_operand_object** %10, align 8
  %253 = bitcast %union.acpi_operand_object* %252 to %struct.TYPE_8__*
  %254 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %253, i32 0, i32 0
  %255 = load i64, i64* %254, align 8
  store i64 %255, i64* %13, align 8
  %256 = load i64, i64* %13, align 8
  %257 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %11, align 8
  %258 = load %union.acpi_operand_object*, %union.acpi_operand_object** %257, align 8
  %259 = bitcast %union.acpi_operand_object* %258 to %struct.TYPE_6__*
  %260 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %259, i32 0, i32 0
  store i64 %256, i64* %260, align 8
  br label %261

261:                                              ; preds = %251, %248
  %262 = load %struct.acpi_evaluate_info*, %struct.acpi_evaluate_info** %6, align 8
  %263 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %11, align 8
  %264 = getelementptr inbounds %union.acpi_operand_object*, %union.acpi_operand_object** %263, i64 1
  %265 = load %union.acpi_predefined_info*, %union.acpi_predefined_info** %7, align 8
  %266 = bitcast %union.acpi_predefined_info* %265 to %struct.TYPE_7__*
  %267 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %266, i32 0, i32 3
  %268 = load i32, i32* %267, align 8
  %269 = load i64, i64* %13, align 8
  %270 = sub nsw i64 %269, 1
  %271 = call i32 @acpi_ns_check_package_elements(%struct.acpi_evaluate_info* %262, %union.acpi_operand_object** %264, i32 %268, i64 %270, i32 0, i64 0, i32 1)
  store i32 %271, i32* %12, align 4
  %272 = load i32, i32* %12, align 4
  %273 = call i64 @ACPI_FAILURE(i32 %272)
  %274 = icmp ne i64 %273, 0
  br i1 %274, label %275, label %277

275:                                              ; preds = %261
  %276 = load i32, i32* %12, align 4
  store i32 %276, i32* %5, align 4
  br label %311

277:                                              ; preds = %261
  br label %286

278:                                              ; preds = %39
  %279 = load i32, i32* @AE_INFO, align 4
  %280 = load %union.acpi_predefined_info*, %union.acpi_predefined_info** %7, align 8
  %281 = bitcast %union.acpi_predefined_info* %280 to %struct.TYPE_7__*
  %282 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %281, i32 0, i32 0
  %283 = load i32, i32* %282, align 8
  %284 = call i32 @ACPI_ERROR(i32 %283)
  %285 = load i32, i32* @AE_AML_INTERNAL, align 4
  store i32 %285, i32* %5, align 4
  br label %311

286:                                              ; preds = %277, %209, %179, %138, %137, %89
  %287 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %8, align 8
  %288 = getelementptr inbounds %union.acpi_operand_object*, %union.acpi_operand_object** %287, i32 1
  store %union.acpi_operand_object** %288, %union.acpi_operand_object*** %8, align 8
  br label %289

289:                                              ; preds = %286
  %290 = load i64, i64* %14, align 8
  %291 = add nsw i64 %290, 1
  store i64 %291, i64* %14, align 8
  br label %16

292:                                              ; preds = %16
  %293 = load i32, i32* @AE_OK, align 4
  store i32 %293, i32* %5, align 4
  br label %311

294:                                              ; preds = %243, %232, %191, %150, %106, %63
  %295 = load i32, i32* @AE_INFO, align 4
  %296 = load %struct.acpi_evaluate_info*, %struct.acpi_evaluate_info** %6, align 8
  %297 = getelementptr inbounds %struct.acpi_evaluate_info, %struct.acpi_evaluate_info* %296, i32 0, i32 1
  %298 = load i32, i32* %297, align 4
  %299 = load %struct.acpi_evaluate_info*, %struct.acpi_evaluate_info** %6, align 8
  %300 = getelementptr inbounds %struct.acpi_evaluate_info, %struct.acpi_evaluate_info* %299, i32 0, i32 0
  %301 = load i32, i32* %300, align 8
  %302 = load i64, i64* %14, align 8
  %303 = load %union.acpi_operand_object*, %union.acpi_operand_object** %10, align 8
  %304 = bitcast %union.acpi_operand_object* %303 to %struct.TYPE_8__*
  %305 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %304, i32 0, i32 0
  %306 = load i64, i64* %305, align 8
  %307 = load i64, i64* %13, align 8
  %308 = trunc i64 %307 to i32
  %309 = call i32 @ACPI_WARN_PREDEFINED(i32 %308)
  %310 = load i32, i32* @AE_AML_OPERAND_VALUE, align 4
  store i32 %310, i32* %5, align 4
  br label %311

311:                                              ; preds = %294, %292, %278, %275, %218, %207, %173, %135, %87, %37
  %312 = load i32, i32* %5, align 4
  ret i32 %312
}

declare dso_local i32 @acpi_ns_check_object_type(%struct.acpi_evaluate_info*, %union.acpi_operand_object**, i32, i64) #1

declare dso_local i64 @ACPI_FAILURE(i32) #1

declare dso_local i32 @acpi_ns_check_package_elements(%struct.acpi_evaluate_info*, %union.acpi_operand_object**, i32, i64, i32, i64, i32) #1

declare dso_local i32 @ACPI_ERROR(i32) #1

declare dso_local i32 @ACPI_WARN_PREDEFINED(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
