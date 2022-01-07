; ModuleID = '/home/carl/AnghaBench/linux/drivers/acpi/acpica/extr_exfield.c_acpi_ex_write_data_to_field.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/acpi/acpica/extr_exfield.c_acpi_ex_write_data_to_field.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.acpi_operand_object = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { %struct.TYPE_12__*, i64, i32 }
%struct.TYPE_12__ = type { %struct.TYPE_11__, %struct.TYPE_10__ }
%struct.TYPE_11__ = type { i64 }
%struct.TYPE_10__ = type { i64, i64 }
%struct.TYPE_17__ = type { i32, i32 }
%struct.TYPE_15__ = type { i32, i8* }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_16__ = type { i32, i8* }
%struct.TYPE_18__ = type { i32, i32, i32, i32 }

@ex_write_data_to_field = common dso_local global i32 0, align 4
@AE_AML_NO_OPERAND = common dso_local global i32 0, align 4
@ACPI_TYPE_BUFFER_FIELD = common dso_local global i32 0, align 4
@AOPOBJ_DATA_VALID = common dso_local global i32 0, align 4
@ACPI_TYPE_LOCAL_REGION_FIELD = common dso_local global i32 0, align 4
@ACPI_ADR_SPACE_GPIO = common dso_local global i64 0, align 8
@ACPI_ADR_SPACE_SMBUS = common dso_local global i64 0, align 8
@ACPI_ADR_SPACE_GSBUS = common dso_local global i64 0, align 8
@ACPI_ADR_SPACE_IPMI = common dso_local global i64 0, align 8
@ACPI_ADR_SPACE_PLATFORM_COMM = common dso_local global i64 0, align 8
@PCC_MASTER_SUBSPACE = common dso_local global i64 0, align 8
@ACPI_DB_BFIELD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [60 x i8] c"PCC COMD field has been written. Invoking PCC handler now.\0A\00", align 1
@ACPI_WRITE = common dso_local global i32 0, align 4
@AE_OK = common dso_local global i32 0, align 4
@AE_AML_OPERAND_TYPE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [55 x i8] c"FieldWrite [FROM]: Obj %p (%s:%X), Buf %p, ByteLen %X\0A\00", align 1
@.str.2 = private unnamed_addr constant [69 x i8] c"FieldWrite [TO]:   Obj %p (%s:%X), BitLen %X, BitOff %X, ByteOff %X\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @acpi_ex_write_data_to_field(%union.acpi_operand_object* %0, %union.acpi_operand_object* %1, %union.acpi_operand_object** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %union.acpi_operand_object*, align 8
  %6 = alloca %union.acpi_operand_object*, align 8
  %7 = alloca %union.acpi_operand_object**, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  store %union.acpi_operand_object* %0, %union.acpi_operand_object** %5, align 8
  store %union.acpi_operand_object* %1, %union.acpi_operand_object** %6, align 8
  store %union.acpi_operand_object** %2, %union.acpi_operand_object*** %7, align 8
  %12 = load i32, i32* @ex_write_data_to_field, align 4
  %13 = load %union.acpi_operand_object*, %union.acpi_operand_object** %6, align 8
  %14 = call i32 @ACPI_FUNCTION_TRACE_PTR(i32 %12, %union.acpi_operand_object* %13)
  %15 = load %union.acpi_operand_object*, %union.acpi_operand_object** %5, align 8
  %16 = icmp ne %union.acpi_operand_object* %15, null
  br i1 %16, label %17, label %20

17:                                               ; preds = %3
  %18 = load %union.acpi_operand_object*, %union.acpi_operand_object** %6, align 8
  %19 = icmp ne %union.acpi_operand_object* %18, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %17, %3
  %21 = load i32, i32* @AE_AML_NO_OPERAND, align 4
  %22 = call i32 @return_ACPI_STATUS(i32 %21)
  br label %23

23:                                               ; preds = %20, %17
  %24 = load %union.acpi_operand_object*, %union.acpi_operand_object** %6, align 8
  %25 = bitcast %union.acpi_operand_object* %24 to %struct.TYPE_17__*
  %26 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* @ACPI_TYPE_BUFFER_FIELD, align 4
  %29 = icmp eq i32 %27, %28
  br i1 %29, label %30, label %49

30:                                               ; preds = %23
  %31 = load %union.acpi_operand_object*, %union.acpi_operand_object** %6, align 8
  %32 = bitcast %union.acpi_operand_object* %31 to %struct.TYPE_17__*
  %33 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @AOPOBJ_DATA_VALID, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %48, label %38

38:                                               ; preds = %30
  %39 = load %union.acpi_operand_object*, %union.acpi_operand_object** %6, align 8
  %40 = call i32 @acpi_ds_get_buffer_field_arguments(%union.acpi_operand_object* %39)
  store i32 %40, i32* %8, align 4
  %41 = load i32, i32* %8, align 4
  %42 = call i64 @ACPI_FAILURE(i32 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %38
  %45 = load i32, i32* %8, align 4
  %46 = call i32 @return_ACPI_STATUS(i32 %45)
  br label %47

47:                                               ; preds = %44, %38
  br label %48

48:                                               ; preds = %47, %30
  br label %203

49:                                               ; preds = %23
  %50 = load %union.acpi_operand_object*, %union.acpi_operand_object** %6, align 8
  %51 = bitcast %union.acpi_operand_object* %50 to %struct.TYPE_17__*
  %52 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = load i32, i32* @ACPI_TYPE_LOCAL_REGION_FIELD, align 4
  %55 = icmp eq i32 %53, %54
  br i1 %55, label %56, label %73

56:                                               ; preds = %49
  %57 = load %union.acpi_operand_object*, %union.acpi_operand_object** %6, align 8
  %58 = bitcast %union.acpi_operand_object* %57 to %struct.TYPE_13__*
  %59 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %58, i32 0, i32 0
  %60 = load %struct.TYPE_12__*, %struct.TYPE_12__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %60, i32 0, i32 1
  %62 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* @ACPI_ADR_SPACE_GPIO, align 8
  %65 = icmp eq i64 %63, %64
  br i1 %65, label %66, label %73

66:                                               ; preds = %56
  %67 = load %union.acpi_operand_object*, %union.acpi_operand_object** %5, align 8
  %68 = load %union.acpi_operand_object*, %union.acpi_operand_object** %6, align 8
  %69 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %7, align 8
  %70 = call i32 @acpi_ex_write_gpio(%union.acpi_operand_object* %67, %union.acpi_operand_object* %68, %union.acpi_operand_object** %69)
  store i32 %70, i32* %8, align 4
  %71 = load i32, i32* %8, align 4
  %72 = call i32 @return_ACPI_STATUS(i32 %71)
  br label %202

73:                                               ; preds = %56, %49
  %74 = load %union.acpi_operand_object*, %union.acpi_operand_object** %6, align 8
  %75 = bitcast %union.acpi_operand_object* %74 to %struct.TYPE_17__*
  %76 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = load i32, i32* @ACPI_TYPE_LOCAL_REGION_FIELD, align 4
  %79 = icmp eq i32 %77, %78
  br i1 %79, label %80, label %117

80:                                               ; preds = %73
  %81 = load %union.acpi_operand_object*, %union.acpi_operand_object** %6, align 8
  %82 = bitcast %union.acpi_operand_object* %81 to %struct.TYPE_13__*
  %83 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %82, i32 0, i32 0
  %84 = load %struct.TYPE_12__*, %struct.TYPE_12__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %84, i32 0, i32 1
  %86 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = load i64, i64* @ACPI_ADR_SPACE_SMBUS, align 8
  %89 = icmp eq i64 %87, %88
  br i1 %89, label %110, label %90

90:                                               ; preds = %80
  %91 = load %union.acpi_operand_object*, %union.acpi_operand_object** %6, align 8
  %92 = bitcast %union.acpi_operand_object* %91 to %struct.TYPE_13__*
  %93 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %92, i32 0, i32 0
  %94 = load %struct.TYPE_12__*, %struct.TYPE_12__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %94, i32 0, i32 1
  %96 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = load i64, i64* @ACPI_ADR_SPACE_GSBUS, align 8
  %99 = icmp eq i64 %97, %98
  br i1 %99, label %110, label %100

100:                                              ; preds = %90
  %101 = load %union.acpi_operand_object*, %union.acpi_operand_object** %6, align 8
  %102 = bitcast %union.acpi_operand_object* %101 to %struct.TYPE_13__*
  %103 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %102, i32 0, i32 0
  %104 = load %struct.TYPE_12__*, %struct.TYPE_12__** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %104, i32 0, i32 1
  %106 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %105, i32 0, i32 0
  %107 = load i64, i64* %106, align 8
  %108 = load i64, i64* @ACPI_ADR_SPACE_IPMI, align 8
  %109 = icmp eq i64 %107, %108
  br i1 %109, label %110, label %117

110:                                              ; preds = %100, %90, %80
  %111 = load %union.acpi_operand_object*, %union.acpi_operand_object** %5, align 8
  %112 = load %union.acpi_operand_object*, %union.acpi_operand_object** %6, align 8
  %113 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %7, align 8
  %114 = call i32 @acpi_ex_write_serial_bus(%union.acpi_operand_object* %111, %union.acpi_operand_object* %112, %union.acpi_operand_object** %113)
  store i32 %114, i32* %8, align 4
  %115 = load i32, i32* %8, align 4
  %116 = call i32 @return_ACPI_STATUS(i32 %115)
  br label %201

117:                                              ; preds = %100, %73
  %118 = load %union.acpi_operand_object*, %union.acpi_operand_object** %6, align 8
  %119 = bitcast %union.acpi_operand_object* %118 to %struct.TYPE_17__*
  %120 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 8
  %122 = load i32, i32* @ACPI_TYPE_LOCAL_REGION_FIELD, align 4
  %123 = icmp eq i32 %121, %122
  br i1 %123, label %124, label %200

124:                                              ; preds = %117
  %125 = load %union.acpi_operand_object*, %union.acpi_operand_object** %6, align 8
  %126 = bitcast %union.acpi_operand_object* %125 to %struct.TYPE_13__*
  %127 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %126, i32 0, i32 0
  %128 = load %struct.TYPE_12__*, %struct.TYPE_12__** %127, align 8
  %129 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %128, i32 0, i32 1
  %130 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %129, i32 0, i32 0
  %131 = load i64, i64* %130, align 8
  %132 = load i64, i64* @ACPI_ADR_SPACE_PLATFORM_COMM, align 8
  %133 = icmp eq i64 %131, %132
  br i1 %133, label %134, label %200

134:                                              ; preds = %124
  %135 = load %union.acpi_operand_object*, %union.acpi_operand_object** %6, align 8
  %136 = bitcast %union.acpi_operand_object* %135 to %struct.TYPE_13__*
  %137 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %136, i32 0, i32 2
  %138 = load i32, i32* %137, align 8
  %139 = call i64 @ACPI_ROUND_BITS_UP_TO_BYTES(i32 %138)
  %140 = trunc i64 %139 to i32
  store i32 %140, i32* %10, align 4
  %141 = load %union.acpi_operand_object*, %union.acpi_operand_object** %6, align 8
  %142 = bitcast %union.acpi_operand_object* %141 to %struct.TYPE_13__*
  %143 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %142, i32 0, i32 0
  %144 = load %struct.TYPE_12__*, %struct.TYPE_12__** %143, align 8
  %145 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %144, i32 0, i32 0
  %146 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %145, i32 0, i32 0
  %147 = load i64, i64* %146, align 8
  %148 = load %union.acpi_operand_object*, %union.acpi_operand_object** %6, align 8
  %149 = bitcast %union.acpi_operand_object* %148 to %struct.TYPE_13__*
  %150 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %149, i32 0, i32 1
  %151 = load i64, i64* %150, align 8
  %152 = add nsw i64 %147, %151
  %153 = load %union.acpi_operand_object*, %union.acpi_operand_object** %5, align 8
  %154 = bitcast %union.acpi_operand_object* %153 to %struct.TYPE_15__*
  %155 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %154, i32 0, i32 1
  %156 = load i8*, i8** %155, align 8
  %157 = load i32, i32* %10, align 4
  %158 = call i32 @memcpy(i64 %152, i8* %156, i32 %157)
  %159 = load %union.acpi_operand_object*, %union.acpi_operand_object** %6, align 8
  %160 = bitcast %union.acpi_operand_object* %159 to %struct.TYPE_13__*
  %161 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %160, i32 0, i32 0
  %162 = load %struct.TYPE_12__*, %struct.TYPE_12__** %161, align 8
  %163 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %162, i32 0, i32 1
  %164 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %163, i32 0, i32 1
  %165 = load i64, i64* %164, align 8
  %166 = load i64, i64* @PCC_MASTER_SUBSPACE, align 8
  %167 = icmp eq i64 %165, %166
  br i1 %167, label %168, label %175

168:                                              ; preds = %134
  %169 = load %union.acpi_operand_object*, %union.acpi_operand_object** %6, align 8
  %170 = bitcast %union.acpi_operand_object* %169 to %struct.TYPE_13__*
  %171 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %170, i32 0, i32 1
  %172 = load i64, i64* %171, align 8
  %173 = call i64 @MASTER_SUBSPACE_COMMAND(i64 %172)
  %174 = icmp ne i64 %173, 0
  br i1 %174, label %182, label %175

175:                                              ; preds = %168, %134
  %176 = load %union.acpi_operand_object*, %union.acpi_operand_object** %6, align 8
  %177 = bitcast %union.acpi_operand_object* %176 to %struct.TYPE_13__*
  %178 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %177, i32 0, i32 1
  %179 = load i64, i64* %178, align 8
  %180 = call i64 @GENERIC_SUBSPACE_COMMAND(i64 %179)
  %181 = icmp ne i64 %180, 0
  br i1 %181, label %182, label %198

182:                                              ; preds = %175, %168
  %183 = load i32, i32* @ACPI_DB_BFIELD, align 4
  %184 = call i32 @ACPI_DEBUG_PRINT(i32 ptrtoint ([60 x i8]* @.str to i32))
  %185 = load %union.acpi_operand_object*, %union.acpi_operand_object** %6, align 8
  %186 = load %union.acpi_operand_object*, %union.acpi_operand_object** %6, align 8
  %187 = bitcast %union.acpi_operand_object* %186 to %struct.TYPE_13__*
  %188 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %187, i32 0, i32 0
  %189 = load %struct.TYPE_12__*, %struct.TYPE_12__** %188, align 8
  %190 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %189, i32 0, i32 0
  %191 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %190, i32 0, i32 0
  %192 = load i64, i64* %191, align 8
  %193 = inttoptr i64 %192 to i32*
  %194 = load i32, i32* @ACPI_WRITE, align 4
  %195 = call i32 @acpi_ex_access_region(%union.acpi_operand_object* %185, i32 0, i32* %193, i32 %194)
  store i32 %195, i32* %8, align 4
  %196 = load i32, i32* %8, align 4
  %197 = call i32 @return_ACPI_STATUS(i32 %196)
  br label %198

198:                                              ; preds = %182, %175
  %199 = load i32, i32* @AE_OK, align 4
  store i32 %199, i32* %4, align 4
  br label %289

200:                                              ; preds = %124, %117
  br label %201

201:                                              ; preds = %200, %110
  br label %202

202:                                              ; preds = %201, %66
  br label %203

203:                                              ; preds = %202, %48
  %204 = load %union.acpi_operand_object*, %union.acpi_operand_object** %5, align 8
  %205 = bitcast %union.acpi_operand_object* %204 to %struct.TYPE_17__*
  %206 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %205, i32 0, i32 0
  %207 = load i32, i32* %206, align 8
  switch i32 %207, label %231 [
    i32 129, label %208
    i32 130, label %213
    i32 128, label %222
  ]

208:                                              ; preds = %203
  %209 = load %union.acpi_operand_object*, %union.acpi_operand_object** %5, align 8
  %210 = bitcast %union.acpi_operand_object* %209 to %struct.TYPE_14__*
  %211 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %210, i32 0, i32 0
  %212 = bitcast i32* %211 to i8*
  store i8* %212, i8** %11, align 8
  store i32 4, i32* %9, align 4
  br label %234

213:                                              ; preds = %203
  %214 = load %union.acpi_operand_object*, %union.acpi_operand_object** %5, align 8
  %215 = bitcast %union.acpi_operand_object* %214 to %struct.TYPE_15__*
  %216 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %215, i32 0, i32 1
  %217 = load i8*, i8** %216, align 8
  store i8* %217, i8** %11, align 8
  %218 = load %union.acpi_operand_object*, %union.acpi_operand_object** %5, align 8
  %219 = bitcast %union.acpi_operand_object* %218 to %struct.TYPE_15__*
  %220 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %219, i32 0, i32 0
  %221 = load i32, i32* %220, align 8
  store i32 %221, i32* %9, align 4
  br label %234

222:                                              ; preds = %203
  %223 = load %union.acpi_operand_object*, %union.acpi_operand_object** %5, align 8
  %224 = bitcast %union.acpi_operand_object* %223 to %struct.TYPE_16__*
  %225 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %224, i32 0, i32 1
  %226 = load i8*, i8** %225, align 8
  store i8* %226, i8** %11, align 8
  %227 = load %union.acpi_operand_object*, %union.acpi_operand_object** %5, align 8
  %228 = bitcast %union.acpi_operand_object* %227 to %struct.TYPE_16__*
  %229 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %228, i32 0, i32 0
  %230 = load i32, i32* %229, align 8
  store i32 %230, i32* %9, align 4
  br label %234

231:                                              ; preds = %203
  %232 = load i32, i32* @AE_AML_OPERAND_TYPE, align 4
  %233 = call i32 @return_ACPI_STATUS(i32 %232)
  br label %234

234:                                              ; preds = %231, %222, %213, %208
  %235 = load i32, i32* @ACPI_DB_BFIELD, align 4
  %236 = load %union.acpi_operand_object*, %union.acpi_operand_object** %5, align 8
  %237 = load %union.acpi_operand_object*, %union.acpi_operand_object** %5, align 8
  %238 = bitcast %union.acpi_operand_object* %237 to %struct.TYPE_17__*
  %239 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %238, i32 0, i32 0
  %240 = load i32, i32* %239, align 8
  %241 = call i32 @acpi_ut_get_type_name(i32 %240)
  %242 = load %union.acpi_operand_object*, %union.acpi_operand_object** %5, align 8
  %243 = bitcast %union.acpi_operand_object* %242 to %struct.TYPE_17__*
  %244 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %243, i32 0, i32 0
  %245 = load i32, i32* %244, align 8
  %246 = load i8*, i8** %11, align 8
  %247 = load i32, i32* %9, align 4
  %248 = call i32 @ACPI_DEBUG_PRINT(i32 %247)
  %249 = load i32, i32* @ACPI_DB_BFIELD, align 4
  %250 = load %union.acpi_operand_object*, %union.acpi_operand_object** %6, align 8
  %251 = load %union.acpi_operand_object*, %union.acpi_operand_object** %6, align 8
  %252 = bitcast %union.acpi_operand_object* %251 to %struct.TYPE_17__*
  %253 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %252, i32 0, i32 0
  %254 = load i32, i32* %253, align 8
  %255 = call i32 @acpi_ut_get_type_name(i32 %254)
  %256 = load %union.acpi_operand_object*, %union.acpi_operand_object** %6, align 8
  %257 = bitcast %union.acpi_operand_object* %256 to %struct.TYPE_17__*
  %258 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %257, i32 0, i32 0
  %259 = load i32, i32* %258, align 8
  %260 = load %union.acpi_operand_object*, %union.acpi_operand_object** %6, align 8
  %261 = bitcast %union.acpi_operand_object* %260 to %struct.TYPE_18__*
  %262 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %261, i32 0, i32 3
  %263 = load i32, i32* %262, align 4
  %264 = load %union.acpi_operand_object*, %union.acpi_operand_object** %6, align 8
  %265 = bitcast %union.acpi_operand_object* %264 to %struct.TYPE_18__*
  %266 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %265, i32 0, i32 2
  %267 = load i32, i32* %266, align 8
  %268 = load %union.acpi_operand_object*, %union.acpi_operand_object** %6, align 8
  %269 = bitcast %union.acpi_operand_object* %268 to %struct.TYPE_18__*
  %270 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %269, i32 0, i32 1
  %271 = load i32, i32* %270, align 4
  %272 = call i32 @ACPI_DEBUG_PRINT(i32 %271)
  %273 = load %union.acpi_operand_object*, %union.acpi_operand_object** %6, align 8
  %274 = bitcast %union.acpi_operand_object* %273 to %struct.TYPE_18__*
  %275 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %274, i32 0, i32 0
  %276 = load i32, i32* %275, align 8
  %277 = call i32 @acpi_ex_acquire_global_lock(i32 %276)
  %278 = load %union.acpi_operand_object*, %union.acpi_operand_object** %6, align 8
  %279 = load i8*, i8** %11, align 8
  %280 = load i32, i32* %9, align 4
  %281 = call i32 @acpi_ex_insert_into_field(%union.acpi_operand_object* %278, i8* %279, i32 %280)
  store i32 %281, i32* %8, align 4
  %282 = load %union.acpi_operand_object*, %union.acpi_operand_object** %6, align 8
  %283 = bitcast %union.acpi_operand_object* %282 to %struct.TYPE_18__*
  %284 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %283, i32 0, i32 0
  %285 = load i32, i32* %284, align 8
  %286 = call i32 @acpi_ex_release_global_lock(i32 %285)
  %287 = load i32, i32* %8, align 4
  %288 = call i32 @return_ACPI_STATUS(i32 %287)
  br label %289

289:                                              ; preds = %234, %198
  %290 = load i32, i32* %4, align 4
  ret i32 %290
}

declare dso_local i32 @ACPI_FUNCTION_TRACE_PTR(i32, %union.acpi_operand_object*) #1

declare dso_local i32 @return_ACPI_STATUS(i32) #1

declare dso_local i32 @acpi_ds_get_buffer_field_arguments(%union.acpi_operand_object*) #1

declare dso_local i64 @ACPI_FAILURE(i32) #1

declare dso_local i32 @acpi_ex_write_gpio(%union.acpi_operand_object*, %union.acpi_operand_object*, %union.acpi_operand_object**) #1

declare dso_local i32 @acpi_ex_write_serial_bus(%union.acpi_operand_object*, %union.acpi_operand_object*, %union.acpi_operand_object**) #1

declare dso_local i64 @ACPI_ROUND_BITS_UP_TO_BYTES(i32) #1

declare dso_local i32 @memcpy(i64, i8*, i32) #1

declare dso_local i64 @MASTER_SUBSPACE_COMMAND(i64) #1

declare dso_local i64 @GENERIC_SUBSPACE_COMMAND(i64) #1

declare dso_local i32 @ACPI_DEBUG_PRINT(i32) #1

declare dso_local i32 @acpi_ex_access_region(%union.acpi_operand_object*, i32, i32*, i32) #1

declare dso_local i32 @acpi_ut_get_type_name(i32) #1

declare dso_local i32 @acpi_ex_acquire_global_lock(i32) #1

declare dso_local i32 @acpi_ex_insert_into_field(%union.acpi_operand_object*, i8*, i32) #1

declare dso_local i32 @acpi_ex_release_global_lock(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
