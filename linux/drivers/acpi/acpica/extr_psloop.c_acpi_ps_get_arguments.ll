; ModuleID = '/home/carl/AnghaBench/linux/drivers/acpi/acpica/extr_psloop.c_acpi_ps_get_arguments.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/acpi/acpica/extr_psloop.c_acpi_ps_get_arguments.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_walk_state = type { %struct.TYPE_16__, %struct.TYPE_15__*, i32, i32, i32, i32* }
%struct.TYPE_16__ = type { i32*, i32* }
%struct.TYPE_15__ = type { %struct.TYPE_14__ }
%struct.TYPE_14__ = type { i32* }
%union.acpi_parse_object = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i32, %struct.TYPE_11__*, i32 }
%struct.TYPE_11__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_13__ = type { i8*, i32* }

@AE_OK = common dso_local global i32 0, align 4
@ps_get_arguments = common dso_local global i32 0, align 4
@ACPI_DB_PARSE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"Get arguments for opcode [%s]\0A\00", align 1
@ACPI_POSSIBLE_METHOD_CALL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [37 x i8] c"Final argument count: %8.8X pass %u\0A\00", align 1
@AML_NAME_OP = common dso_local global i32 0, align 4
@ACPI_IMODE_LOAD_PASS2 = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [44 x i8] c"Setup Package/Buffer: Pass %u, AML Ptr: %p\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.acpi_walk_state*, i32*, %union.acpi_parse_object*)* @acpi_ps_get_arguments to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @acpi_ps_get_arguments(%struct.acpi_walk_state* %0, i32* %1, %union.acpi_parse_object* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.acpi_walk_state*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %union.acpi_parse_object*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %union.acpi_parse_object*, align 8
  store %struct.acpi_walk_state* %0, %struct.acpi_walk_state** %5, align 8
  store i32* %1, i32** %6, align 8
  store %union.acpi_parse_object* %2, %union.acpi_parse_object** %7, align 8
  %10 = load i32, i32* @AE_OK, align 4
  store i32 %10, i32* %8, align 4
  store %union.acpi_parse_object* null, %union.acpi_parse_object** %9, align 8
  %11 = load i32, i32* @ps_get_arguments, align 4
  %12 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %5, align 8
  %13 = call i32 @ACPI_FUNCTION_TRACE_PTR(i32 %11, %struct.acpi_walk_state* %12)
  %14 = load i32, i32* @ACPI_DB_PARSE, align 4
  %15 = load %union.acpi_parse_object*, %union.acpi_parse_object** %7, align 8
  %16 = bitcast %union.acpi_parse_object* %15 to %struct.TYPE_12__*
  %17 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 8
  %19 = call i32 @ACPI_DEBUG_PRINT(i32 %18)
  %20 = load %union.acpi_parse_object*, %union.acpi_parse_object** %7, align 8
  %21 = bitcast %union.acpi_parse_object* %20 to %struct.TYPE_12__*
  %22 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  switch i32 %23, label %49 [
    i32 137, label %24
    i32 128, label %24
    i32 136, label %24
    i32 132, label %24
    i32 131, label %24
    i32 135, label %33
  ]

24:                                               ; preds = %3, %3, %3, %3, %3
  %25 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %5, align 8
  %26 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %25, i32 0, i32 0
  %27 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %5, align 8
  %28 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %27, i32 0, i32 4
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @GET_CURRENT_ARG_TYPE(i32 %29)
  %31 = load %union.acpi_parse_object*, %union.acpi_parse_object** %7, align 8
  %32 = call i32 @acpi_ps_get_next_simple_arg(%struct.TYPE_16__* %26, i32 %30, %union.acpi_parse_object* %31)
  br label %227

33:                                               ; preds = %3
  %34 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %5, align 8
  %35 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %5, align 8
  %36 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %35, i32 0, i32 0
  %37 = load %union.acpi_parse_object*, %union.acpi_parse_object** %7, align 8
  %38 = load i32, i32* @ACPI_POSSIBLE_METHOD_CALL, align 4
  %39 = call i32 @acpi_ps_get_next_namepath(%struct.acpi_walk_state* %34, %struct.TYPE_16__* %36, %union.acpi_parse_object* %37, i32 %38)
  store i32 %39, i32* %8, align 4
  %40 = load i32, i32* %8, align 4
  %41 = call i32 @ACPI_FAILURE(i32 %40)
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %33
  %44 = load i32, i32* %8, align 4
  %45 = call i32 @return_ACPI_STATUS(i32 %44)
  br label %46

46:                                               ; preds = %43, %33
  %47 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %5, align 8
  %48 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %47, i32 0, i32 4
  store i32 0, i32* %48, align 8
  br label %227

49:                                               ; preds = %3
  br label %50

50:                                               ; preds = %101, %49
  %51 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %5, align 8
  %52 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %51, i32 0, i32 4
  %53 = load i32, i32* %52, align 8
  %54 = call i32 @GET_CURRENT_ARG_TYPE(i32 %53)
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %62

56:                                               ; preds = %50
  %57 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %5, align 8
  %58 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 8
  %60 = icmp ne i32 %59, 0
  %61 = xor i1 %60, true
  br label %62

62:                                               ; preds = %56, %50
  %63 = phi i1 [ false, %50 ], [ %61, %56 ]
  br i1 %63, label %64, label %106

64:                                               ; preds = %62
  %65 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %5, align 8
  %66 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %66, i32 0, i32 1
  %68 = load i32*, i32** %67, align 8
  %69 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %5, align 8
  %70 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %69, i32 0, i32 5
  store i32* %68, i32** %70, align 8
  %71 = load %union.acpi_parse_object*, %union.acpi_parse_object** %7, align 8
  %72 = bitcast %union.acpi_parse_object* %71 to %struct.TYPE_12__*
  %73 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  switch i32 %74, label %76 [
    i32 134, label %75
    i32 138, label %75
    i32 133, label %75
    i32 130, label %75
    i32 129, label %75
  ]

75:                                               ; preds = %64, %64, %64, %64, %64
  br label %79

76:                                               ; preds = %64
  %77 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %5, align 8
  %78 = call i32 @ASL_CV_CAPTURE_COMMENTS(%struct.acpi_walk_state* %77)
  br label %79

79:                                               ; preds = %76, %75
  %80 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %5, align 8
  %81 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %5, align 8
  %82 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %81, i32 0, i32 0
  %83 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %5, align 8
  %84 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %83, i32 0, i32 4
  %85 = load i32, i32* %84, align 8
  %86 = call i32 @GET_CURRENT_ARG_TYPE(i32 %85)
  %87 = call i32 @acpi_ps_get_next_arg(%struct.acpi_walk_state* %80, %struct.TYPE_16__* %82, i32 %86, %union.acpi_parse_object** %9)
  store i32 %87, i32* %8, align 4
  %88 = load i32, i32* %8, align 4
  %89 = call i32 @ACPI_FAILURE(i32 %88)
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %94

91:                                               ; preds = %79
  %92 = load i32, i32* %8, align 4
  %93 = call i32 @return_ACPI_STATUS(i32 %92)
  br label %94

94:                                               ; preds = %91, %79
  %95 = load %union.acpi_parse_object*, %union.acpi_parse_object** %9, align 8
  %96 = icmp ne %union.acpi_parse_object* %95, null
  br i1 %96, label %97, label %101

97:                                               ; preds = %94
  %98 = load %union.acpi_parse_object*, %union.acpi_parse_object** %7, align 8
  %99 = load %union.acpi_parse_object*, %union.acpi_parse_object** %9, align 8
  %100 = call i32 @acpi_ps_append_arg(%union.acpi_parse_object* %98, %union.acpi_parse_object* %99)
  br label %101

101:                                              ; preds = %97, %94
  %102 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %5, align 8
  %103 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %102, i32 0, i32 4
  %104 = load i32, i32* %103, align 8
  %105 = call i32 @INCREMENT_ARG_LIST(i32 %104)
  br label %50

106:                                              ; preds = %62
  %107 = load i32, i32* @ACPI_DB_PARSE, align 4
  %108 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %5, align 8
  %109 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %108, i32 0, i32 2
  %110 = load i32, i32* %109, align 8
  %111 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %5, align 8
  %112 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %111, i32 0, i32 3
  %113 = load i32, i32* %112, align 4
  %114 = call i32 @ACPI_DEBUG_PRINT(i32 %113)
  %115 = load %union.acpi_parse_object*, %union.acpi_parse_object** %7, align 8
  %116 = bitcast %union.acpi_parse_object* %115 to %struct.TYPE_12__*
  %117 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 8
  switch i32 %118, label %225 [
    i32 134, label %119
    i32 138, label %152
    i32 133, label %152
    i32 130, label %152
    i32 129, label %209
  ]

119:                                              ; preds = %106
  %120 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %5, align 8
  %121 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %120, i32 0, i32 0
  %122 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %121, i32 0, i32 1
  %123 = load i32*, i32** %122, align 8
  %124 = load %union.acpi_parse_object*, %union.acpi_parse_object** %7, align 8
  %125 = bitcast %union.acpi_parse_object* %124 to %struct.TYPE_13__*
  %126 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %125, i32 0, i32 1
  store i32* %123, i32** %126, align 8
  %127 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %5, align 8
  %128 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %127, i32 0, i32 0
  %129 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %128, i32 0, i32 0
  %130 = load i32*, i32** %129, align 8
  %131 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %5, align 8
  %132 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %131, i32 0, i32 0
  %133 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %132, i32 0, i32 1
  %134 = load i32*, i32** %133, align 8
  %135 = ptrtoint i32* %130 to i64
  %136 = ptrtoint i32* %134 to i64
  %137 = sub i64 %135, %136
  %138 = sdiv exact i64 %137, 4
  %139 = inttoptr i64 %138 to i8*
  %140 = load %union.acpi_parse_object*, %union.acpi_parse_object** %7, align 8
  %141 = bitcast %union.acpi_parse_object* %140 to %struct.TYPE_13__*
  %142 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %141, i32 0, i32 0
  store i8* %139, i8** %142, align 8
  %143 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %5, align 8
  %144 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %143, i32 0, i32 0
  %145 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %144, i32 0, i32 0
  %146 = load i32*, i32** %145, align 8
  %147 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %5, align 8
  %148 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %147, i32 0, i32 0
  %149 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %148, i32 0, i32 1
  store i32* %146, i32** %149, align 8
  %150 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %5, align 8
  %151 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %150, i32 0, i32 2
  store i32 0, i32* %151, align 8
  br label %226

152:                                              ; preds = %106, %106, %106
  %153 = load %union.acpi_parse_object*, %union.acpi_parse_object** %7, align 8
  %154 = bitcast %union.acpi_parse_object* %153 to %struct.TYPE_12__*
  %155 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %154, i32 0, i32 1
  %156 = load %struct.TYPE_11__*, %struct.TYPE_11__** %155, align 8
  %157 = icmp ne %struct.TYPE_11__* %156, null
  br i1 %157, label %158, label %208

158:                                              ; preds = %152
  %159 = load %union.acpi_parse_object*, %union.acpi_parse_object** %7, align 8
  %160 = bitcast %union.acpi_parse_object* %159 to %struct.TYPE_12__*
  %161 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %160, i32 0, i32 1
  %162 = load %struct.TYPE_11__*, %struct.TYPE_11__** %161, align 8
  %163 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %162, i32 0, i32 0
  %164 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %163, i32 0, i32 0
  %165 = load i32, i32* %164, align 4
  %166 = load i32, i32* @AML_NAME_OP, align 4
  %167 = icmp eq i32 %165, %166
  br i1 %167, label %168, label %208

168:                                              ; preds = %158
  %169 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %5, align 8
  %170 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %169, i32 0, i32 3
  %171 = load i32, i32* %170, align 4
  %172 = load i32, i32* @ACPI_IMODE_LOAD_PASS2, align 4
  %173 = icmp sle i32 %171, %172
  br i1 %173, label %174, label %208

174:                                              ; preds = %168
  %175 = load i32, i32* @ACPI_DB_PARSE, align 4
  %176 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %5, align 8
  %177 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %176, i32 0, i32 3
  %178 = load i32, i32* %177, align 4
  %179 = load i32*, i32** %6, align 8
  %180 = ptrtoint i32* %179 to i32
  %181 = call i32 @ACPI_DEBUG_PRINT(i32 %180)
  %182 = load i32*, i32** %6, align 8
  %183 = load %union.acpi_parse_object*, %union.acpi_parse_object** %7, align 8
  %184 = bitcast %union.acpi_parse_object* %183 to %struct.TYPE_13__*
  %185 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %184, i32 0, i32 1
  store i32* %182, i32** %185, align 8
  %186 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %5, align 8
  %187 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %186, i32 0, i32 0
  %188 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %187, i32 0, i32 0
  %189 = load i32*, i32** %188, align 8
  %190 = load i32*, i32** %6, align 8
  %191 = ptrtoint i32* %189 to i64
  %192 = ptrtoint i32* %190 to i64
  %193 = sub i64 %191, %192
  %194 = sdiv exact i64 %193, 4
  %195 = inttoptr i64 %194 to i8*
  %196 = load %union.acpi_parse_object*, %union.acpi_parse_object** %7, align 8
  %197 = bitcast %union.acpi_parse_object* %196 to %struct.TYPE_13__*
  %198 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %197, i32 0, i32 0
  store i8* %195, i8** %198, align 8
  %199 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %5, align 8
  %200 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %199, i32 0, i32 0
  %201 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %200, i32 0, i32 0
  %202 = load i32*, i32** %201, align 8
  %203 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %5, align 8
  %204 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %203, i32 0, i32 0
  %205 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %204, i32 0, i32 1
  store i32* %202, i32** %205, align 8
  %206 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %5, align 8
  %207 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %206, i32 0, i32 2
  store i32 0, i32* %207, align 8
  br label %208

208:                                              ; preds = %174, %168, %158, %152
  br label %226

209:                                              ; preds = %106
  %210 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %5, align 8
  %211 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %210, i32 0, i32 1
  %212 = load %struct.TYPE_15__*, %struct.TYPE_15__** %211, align 8
  %213 = icmp ne %struct.TYPE_15__* %212, null
  br i1 %213, label %214, label %224

214:                                              ; preds = %209
  %215 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %5, align 8
  %216 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %215, i32 0, i32 0
  %217 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %216, i32 0, i32 0
  %218 = load i32*, i32** %217, align 8
  %219 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %5, align 8
  %220 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %219, i32 0, i32 1
  %221 = load %struct.TYPE_15__*, %struct.TYPE_15__** %220, align 8
  %222 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %221, i32 0, i32 0
  %223 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %222, i32 0, i32 0
  store i32* %218, i32** %223, align 8
  br label %224

224:                                              ; preds = %214, %209
  br label %226

225:                                              ; preds = %106
  br label %226

226:                                              ; preds = %225, %224, %208, %119
  br label %227

227:                                              ; preds = %226, %46, %24
  %228 = load i32, i32* @AE_OK, align 4
  %229 = call i32 @return_ACPI_STATUS(i32 %228)
  %230 = load i32, i32* %4, align 4
  ret i32 %230
}

declare dso_local i32 @ACPI_FUNCTION_TRACE_PTR(i32, %struct.acpi_walk_state*) #1

declare dso_local i32 @ACPI_DEBUG_PRINT(i32) #1

declare dso_local i32 @acpi_ps_get_next_simple_arg(%struct.TYPE_16__*, i32, %union.acpi_parse_object*) #1

declare dso_local i32 @GET_CURRENT_ARG_TYPE(i32) #1

declare dso_local i32 @acpi_ps_get_next_namepath(%struct.acpi_walk_state*, %struct.TYPE_16__*, %union.acpi_parse_object*, i32) #1

declare dso_local i32 @ACPI_FAILURE(i32) #1

declare dso_local i32 @return_ACPI_STATUS(i32) #1

declare dso_local i32 @ASL_CV_CAPTURE_COMMENTS(%struct.acpi_walk_state*) #1

declare dso_local i32 @acpi_ps_get_next_arg(%struct.acpi_walk_state*, %struct.TYPE_16__*, i32, %union.acpi_parse_object**) #1

declare dso_local i32 @acpi_ps_append_arg(%union.acpi_parse_object*, %union.acpi_parse_object*) #1

declare dso_local i32 @INCREMENT_ARG_LIST(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
