; ModuleID = '/home/carl/AnghaBench/linux/drivers/acpi/acpica/extr_utdelete.c_acpi_ut_update_object_reference.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/acpi/acpica/extr_utdelete.c_acpi_ut_update_object_reference.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.acpi_operand_object = type { %struct.TYPE_20__ }
%struct.TYPE_20__ = type { %union.acpi_operand_object*, i32 }
%union.acpi_generic_state = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { %union.acpi_operand_object* }
%struct.TYPE_15__ = type { i32 }
%struct.TYPE_12__ = type { %union.acpi_operand_object** }
%struct.TYPE_13__ = type { %union.acpi_operand_object** }
%struct.TYPE_14__ = type { i64, %union.acpi_operand_object** }
%struct.TYPE_16__ = type { %union.acpi_operand_object* }
%struct.TYPE_17__ = type { %union.acpi_operand_object* }
%struct.TYPE_18__ = type { %union.acpi_operand_object*, %union.acpi_operand_object* }
%struct.TYPE_19__ = type { %union.acpi_operand_object*, %union.acpi_operand_object* }

@AE_OK = common dso_local global i32 0, align 4
@ut_update_object_reference = common dso_local global i32 0, align 4
@ACPI_DESC_TYPE_NAMED = common dso_local global i64 0, align 8
@ACPI_DB_ALLOCATIONS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"Object %p is NS handle\0A\00", align 1
@ACPI_NUM_NOTIFY_TYPES = common dso_local global i64 0, align 8
@ACPI_REFCLASS_INDEX = common dso_local global i32 0, align 4
@ACPI_REFCLASS_NAME = common dso_local global i32 0, align 4
@AE_INFO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [40 x i8] c"Could not update object reference count\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @acpi_ut_update_object_reference(%union.acpi_operand_object* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %union.acpi_operand_object*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %union.acpi_generic_state*, align 8
  %8 = alloca %union.acpi_operand_object*, align 8
  %9 = alloca %union.acpi_operand_object*, align 8
  %10 = alloca %union.acpi_generic_state*, align 8
  %11 = alloca i64, align 8
  store %union.acpi_operand_object* %0, %union.acpi_operand_object** %4, align 8
  store i32 %1, i32* %5, align 4
  %12 = load i32, i32* @AE_OK, align 4
  store i32 %12, i32* %6, align 4
  store %union.acpi_generic_state* null, %union.acpi_generic_state** %7, align 8
  store %union.acpi_operand_object* null, %union.acpi_operand_object** %8, align 8
  %13 = load i32, i32* @ut_update_object_reference, align 4
  %14 = call i32 @ACPI_FUNCTION_NAME(i32 %13)
  br label %15

15:                                               ; preds = %193, %2
  %16 = load %union.acpi_operand_object*, %union.acpi_operand_object** %4, align 8
  %17 = icmp ne %union.acpi_operand_object* %16, null
  br i1 %17, label %18, label %194

18:                                               ; preds = %15
  %19 = load %union.acpi_operand_object*, %union.acpi_operand_object** %4, align 8
  %20 = call i64 @ACPI_GET_DESCRIPTOR_TYPE(%union.acpi_operand_object* %19)
  %21 = load i64, i64* @ACPI_DESC_TYPE_NAMED, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %29

23:                                               ; preds = %18
  %24 = load i32, i32* @ACPI_DB_ALLOCATIONS, align 4
  %25 = load %union.acpi_operand_object*, %union.acpi_operand_object** %4, align 8
  %26 = ptrtoint %union.acpi_operand_object* %25 to i32
  %27 = call i32 @ACPI_DEBUG_PRINT(i32 %26)
  %28 = load i32, i32* @AE_OK, align 4
  store i32 %28, i32* %3, align 4
  br label %209

29:                                               ; preds = %18
  %30 = load %union.acpi_operand_object*, %union.acpi_operand_object** %4, align 8
  %31 = bitcast %union.acpi_operand_object* %30 to %struct.TYPE_15__*
  %32 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  switch i32 %33, label %172 [
    i32 139, label %34
    i32 131, label %34
    i32 132, label %34
    i32 128, label %34
    i32 133, label %67
    i32 140, label %109
    i32 134, label %114
    i32 137, label %119
    i32 136, label %135
    i32 135, label %151
    i32 130, label %171
  ]

34:                                               ; preds = %29, %29, %29, %29
  store i64 0, i64* %11, align 8
  br label %35

35:                                               ; preds = %63, %34
  %36 = load i64, i64* %11, align 8
  %37 = load i64, i64* @ACPI_NUM_NOTIFY_TYPES, align 8
  %38 = icmp ult i64 %36, %37
  br i1 %38, label %39, label %66

39:                                               ; preds = %35
  %40 = load %union.acpi_operand_object*, %union.acpi_operand_object** %4, align 8
  %41 = bitcast %union.acpi_operand_object* %40 to %struct.TYPE_12__*
  %42 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %41, i32 0, i32 0
  %43 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %42, align 8
  %44 = load i64, i64* %11, align 8
  %45 = getelementptr inbounds %union.acpi_operand_object*, %union.acpi_operand_object** %43, i64 %44
  %46 = load %union.acpi_operand_object*, %union.acpi_operand_object** %45, align 8
  store %union.acpi_operand_object* %46, %union.acpi_operand_object** %9, align 8
  br label %47

47:                                               ; preds = %50, %39
  %48 = load %union.acpi_operand_object*, %union.acpi_operand_object** %9, align 8
  %49 = icmp ne %union.acpi_operand_object* %48, null
  br i1 %49, label %50, label %62

50:                                               ; preds = %47
  %51 = load %union.acpi_operand_object*, %union.acpi_operand_object** %9, align 8
  %52 = bitcast %union.acpi_operand_object* %51 to %struct.TYPE_13__*
  %53 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %52, i32 0, i32 0
  %54 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %53, align 8
  %55 = load i64, i64* %11, align 8
  %56 = getelementptr inbounds %union.acpi_operand_object*, %union.acpi_operand_object** %54, i64 %55
  %57 = load %union.acpi_operand_object*, %union.acpi_operand_object** %56, align 8
  store %union.acpi_operand_object* %57, %union.acpi_operand_object** %8, align 8
  %58 = load %union.acpi_operand_object*, %union.acpi_operand_object** %9, align 8
  %59 = load i32, i32* %5, align 4
  %60 = call i32 @acpi_ut_update_ref_count(%union.acpi_operand_object* %58, i32 %59)
  %61 = load %union.acpi_operand_object*, %union.acpi_operand_object** %8, align 8
  store %union.acpi_operand_object* %61, %union.acpi_operand_object** %9, align 8
  br label %47

62:                                               ; preds = %47
  br label %63

63:                                               ; preds = %62
  %64 = load i64, i64* %11, align 8
  %65 = add i64 %64, 1
  store i64 %65, i64* %11, align 8
  br label %35

66:                                               ; preds = %35
  br label %173

67:                                               ; preds = %29
  store i64 0, i64* %11, align 8
  br label %68

68:                                               ; preds = %105, %67
  %69 = load i64, i64* %11, align 8
  %70 = load %union.acpi_operand_object*, %union.acpi_operand_object** %4, align 8
  %71 = bitcast %union.acpi_operand_object* %70 to %struct.TYPE_14__*
  %72 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = icmp ult i64 %69, %73
  br i1 %74, label %75, label %108

75:                                               ; preds = %68
  %76 = load %union.acpi_operand_object*, %union.acpi_operand_object** %4, align 8
  %77 = bitcast %union.acpi_operand_object* %76 to %struct.TYPE_14__*
  %78 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %77, i32 0, i32 1
  %79 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %78, align 8
  %80 = load i64, i64* %11, align 8
  %81 = getelementptr inbounds %union.acpi_operand_object*, %union.acpi_operand_object** %79, i64 %80
  %82 = load %union.acpi_operand_object*, %union.acpi_operand_object** %81, align 8
  store %union.acpi_operand_object* %82, %union.acpi_operand_object** %8, align 8
  %83 = load %union.acpi_operand_object*, %union.acpi_operand_object** %8, align 8
  %84 = icmp ne %union.acpi_operand_object* %83, null
  br i1 %84, label %86, label %85

85:                                               ; preds = %75
  br label %105

86:                                               ; preds = %75
  %87 = load %union.acpi_operand_object*, %union.acpi_operand_object** %8, align 8
  %88 = bitcast %union.acpi_operand_object* %87 to %struct.TYPE_15__*
  %89 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  switch i32 %90, label %95 [
    i32 138, label %91
    i32 129, label %91
    i32 141, label %91
  ]

91:                                               ; preds = %86, %86, %86
  %92 = load %union.acpi_operand_object*, %union.acpi_operand_object** %8, align 8
  %93 = load i32, i32* %5, align 4
  %94 = call i32 @acpi_ut_update_ref_count(%union.acpi_operand_object* %92, i32 %93)
  br label %104

95:                                               ; preds = %86
  %96 = load %union.acpi_operand_object*, %union.acpi_operand_object** %8, align 8
  %97 = load i32, i32* %5, align 4
  %98 = call i32 @acpi_ut_create_update_state_and_push(%union.acpi_operand_object* %96, i32 %97, %union.acpi_generic_state** %7)
  store i32 %98, i32* %6, align 4
  %99 = load i32, i32* %6, align 4
  %100 = call i32 @ACPI_FAILURE(i32 %99)
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %103

102:                                              ; preds = %95
  br label %196

103:                                              ; preds = %95
  br label %104

104:                                              ; preds = %103, %91
  br label %105

105:                                              ; preds = %104, %85
  %106 = load i64, i64* %11, align 8
  %107 = add i64 %106, 1
  store i64 %107, i64* %11, align 8
  br label %68

108:                                              ; preds = %68
  store %union.acpi_operand_object* null, %union.acpi_operand_object** %8, align 8
  br label %173

109:                                              ; preds = %29
  %110 = load %union.acpi_operand_object*, %union.acpi_operand_object** %4, align 8
  %111 = bitcast %union.acpi_operand_object* %110 to %struct.TYPE_16__*
  %112 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %111, i32 0, i32 0
  %113 = load %union.acpi_operand_object*, %union.acpi_operand_object** %112, align 8
  store %union.acpi_operand_object* %113, %union.acpi_operand_object** %8, align 8
  br label %173

114:                                              ; preds = %29
  %115 = load %union.acpi_operand_object*, %union.acpi_operand_object** %4, align 8
  %116 = bitcast %union.acpi_operand_object* %115 to %struct.TYPE_17__*
  %117 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %116, i32 0, i32 0
  %118 = load %union.acpi_operand_object*, %union.acpi_operand_object** %117, align 8
  store %union.acpi_operand_object* %118, %union.acpi_operand_object** %8, align 8
  br label %173

119:                                              ; preds = %29
  %120 = load %union.acpi_operand_object*, %union.acpi_operand_object** %4, align 8
  %121 = bitcast %union.acpi_operand_object* %120 to %struct.TYPE_18__*
  %122 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %121, i32 0, i32 1
  %123 = load %union.acpi_operand_object*, %union.acpi_operand_object** %122, align 8
  store %union.acpi_operand_object* %123, %union.acpi_operand_object** %8, align 8
  %124 = load %union.acpi_operand_object*, %union.acpi_operand_object** %4, align 8
  %125 = bitcast %union.acpi_operand_object* %124 to %struct.TYPE_18__*
  %126 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %125, i32 0, i32 0
  %127 = load %union.acpi_operand_object*, %union.acpi_operand_object** %126, align 8
  %128 = load i32, i32* %5, align 4
  %129 = call i32 @acpi_ut_create_update_state_and_push(%union.acpi_operand_object* %127, i32 %128, %union.acpi_generic_state** %7)
  store i32 %129, i32* %6, align 4
  %130 = load i32, i32* %6, align 4
  %131 = call i32 @ACPI_FAILURE(i32 %130)
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %134

133:                                              ; preds = %119
  br label %196

134:                                              ; preds = %119
  br label %173

135:                                              ; preds = %29
  %136 = load %union.acpi_operand_object*, %union.acpi_operand_object** %4, align 8
  %137 = bitcast %union.acpi_operand_object* %136 to %struct.TYPE_19__*
  %138 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %137, i32 0, i32 1
  %139 = load %union.acpi_operand_object*, %union.acpi_operand_object** %138, align 8
  store %union.acpi_operand_object* %139, %union.acpi_operand_object** %8, align 8
  %140 = load %union.acpi_operand_object*, %union.acpi_operand_object** %4, align 8
  %141 = bitcast %union.acpi_operand_object* %140 to %struct.TYPE_19__*
  %142 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %141, i32 0, i32 0
  %143 = load %union.acpi_operand_object*, %union.acpi_operand_object** %142, align 8
  %144 = load i32, i32* %5, align 4
  %145 = call i32 @acpi_ut_create_update_state_and_push(%union.acpi_operand_object* %143, i32 %144, %union.acpi_generic_state** %7)
  store i32 %145, i32* %6, align 4
  %146 = load i32, i32* %6, align 4
  %147 = call i32 @ACPI_FAILURE(i32 %146)
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %149, label %150

149:                                              ; preds = %135
  br label %196

150:                                              ; preds = %135
  br label %173

151:                                              ; preds = %29
  %152 = load %union.acpi_operand_object*, %union.acpi_operand_object** %4, align 8
  %153 = bitcast %union.acpi_operand_object* %152 to %struct.TYPE_20__*
  %154 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %153, i32 0, i32 1
  %155 = load i32, i32* %154, align 8
  %156 = load i32, i32* @ACPI_REFCLASS_INDEX, align 4
  %157 = icmp eq i32 %155, %156
  br i1 %157, label %165, label %158

158:                                              ; preds = %151
  %159 = load %union.acpi_operand_object*, %union.acpi_operand_object** %4, align 8
  %160 = bitcast %union.acpi_operand_object* %159 to %struct.TYPE_20__*
  %161 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %160, i32 0, i32 1
  %162 = load i32, i32* %161, align 8
  %163 = load i32, i32* @ACPI_REFCLASS_NAME, align 4
  %164 = icmp eq i32 %162, %163
  br i1 %164, label %165, label %170

165:                                              ; preds = %158, %151
  %166 = load %union.acpi_operand_object*, %union.acpi_operand_object** %4, align 8
  %167 = bitcast %union.acpi_operand_object* %166 to %struct.TYPE_20__*
  %168 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %167, i32 0, i32 0
  %169 = load %union.acpi_operand_object*, %union.acpi_operand_object** %168, align 8
  store %union.acpi_operand_object* %169, %union.acpi_operand_object** %8, align 8
  br label %170

170:                                              ; preds = %165, %158
  br label %173

171:                                              ; preds = %29
  br label %172

172:                                              ; preds = %29, %171
  br label %173

173:                                              ; preds = %172, %170, %150, %134, %114, %109, %108, %66
  %174 = load %union.acpi_operand_object*, %union.acpi_operand_object** %4, align 8
  %175 = load i32, i32* %5, align 4
  %176 = call i32 @acpi_ut_update_ref_count(%union.acpi_operand_object* %174, i32 %175)
  store %union.acpi_operand_object* null, %union.acpi_operand_object** %4, align 8
  %177 = load %union.acpi_operand_object*, %union.acpi_operand_object** %8, align 8
  %178 = icmp ne %union.acpi_operand_object* %177, null
  br i1 %178, label %179, label %181

179:                                              ; preds = %173
  %180 = load %union.acpi_operand_object*, %union.acpi_operand_object** %8, align 8
  store %union.acpi_operand_object* %180, %union.acpi_operand_object** %4, align 8
  store %union.acpi_operand_object* null, %union.acpi_operand_object** %8, align 8
  br label %193

181:                                              ; preds = %173
  %182 = load %union.acpi_generic_state*, %union.acpi_generic_state** %7, align 8
  %183 = icmp ne %union.acpi_generic_state* %182, null
  br i1 %183, label %184, label %192

184:                                              ; preds = %181
  %185 = call %union.acpi_generic_state* @acpi_ut_pop_generic_state(%union.acpi_generic_state** %7)
  store %union.acpi_generic_state* %185, %union.acpi_generic_state** %10, align 8
  %186 = load %union.acpi_generic_state*, %union.acpi_generic_state** %10, align 8
  %187 = bitcast %union.acpi_generic_state* %186 to %struct.TYPE_11__*
  %188 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %187, i32 0, i32 0
  %189 = load %union.acpi_operand_object*, %union.acpi_operand_object** %188, align 8
  store %union.acpi_operand_object* %189, %union.acpi_operand_object** %4, align 8
  %190 = load %union.acpi_generic_state*, %union.acpi_generic_state** %10, align 8
  %191 = call i32 @acpi_ut_delete_generic_state(%union.acpi_generic_state* %190)
  br label %192

192:                                              ; preds = %184, %181
  br label %193

193:                                              ; preds = %192, %179
  br label %15

194:                                              ; preds = %15
  %195 = load i32, i32* @AE_OK, align 4
  store i32 %195, i32* %3, align 4
  br label %209

196:                                              ; preds = %149, %133, %102
  %197 = load i32, i32* @AE_INFO, align 4
  %198 = load i32, i32* %6, align 4
  %199 = call i32 @ACPI_EXCEPTION(i32 ptrtoint ([40 x i8]* @.str.1 to i32))
  br label %200

200:                                              ; preds = %203, %196
  %201 = load %union.acpi_generic_state*, %union.acpi_generic_state** %7, align 8
  %202 = icmp ne %union.acpi_generic_state* %201, null
  br i1 %202, label %203, label %207

203:                                              ; preds = %200
  %204 = call %union.acpi_generic_state* @acpi_ut_pop_generic_state(%union.acpi_generic_state** %7)
  store %union.acpi_generic_state* %204, %union.acpi_generic_state** %10, align 8
  %205 = load %union.acpi_generic_state*, %union.acpi_generic_state** %10, align 8
  %206 = call i32 @acpi_ut_delete_generic_state(%union.acpi_generic_state* %205)
  br label %200

207:                                              ; preds = %200
  %208 = load i32, i32* %6, align 4
  store i32 %208, i32* %3, align 4
  br label %209

209:                                              ; preds = %207, %194, %23
  %210 = load i32, i32* %3, align 4
  ret i32 %210
}

declare dso_local i32 @ACPI_FUNCTION_NAME(i32) #1

declare dso_local i64 @ACPI_GET_DESCRIPTOR_TYPE(%union.acpi_operand_object*) #1

declare dso_local i32 @ACPI_DEBUG_PRINT(i32) #1

declare dso_local i32 @acpi_ut_update_ref_count(%union.acpi_operand_object*, i32) #1

declare dso_local i32 @acpi_ut_create_update_state_and_push(%union.acpi_operand_object*, i32, %union.acpi_generic_state**) #1

declare dso_local i32 @ACPI_FAILURE(i32) #1

declare dso_local %union.acpi_generic_state* @acpi_ut_pop_generic_state(%union.acpi_generic_state**) #1

declare dso_local i32 @acpi_ut_delete_generic_state(%union.acpi_generic_state*) #1

declare dso_local i32 @ACPI_EXCEPTION(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
