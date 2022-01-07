; ModuleID = '/home/carl/AnghaBench/japronto/src/japronto/protocol/extr_cprotocol.c_Protocol_write_response_or_err.c'
source_filename = "/home/carl/AnghaBench/japronto/src/japronto/protocol/extr_cprotocol.c_Protocol_write_response_or_err.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i64, i32* (%struct.TYPE_13__*, i32)* }
%struct.TYPE_13__ = type { i64 }
%struct.TYPE_15__ = type { i32*, i32*, %struct.TYPE_16__, i32 }
%struct.TYPE_16__ = type { i64, i64, i32**, i32 }
%struct.TYPE_14__ = type { i32, i32*, i32 }

@response_capi = common dso_local global %struct.TYPE_17__* null, align 8
@PyExc_ValueError = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"View did not return Response instance\00", align 1
@GATHER_MAX_RESP = common dso_local global i64 0, align 8
@GATHER_MAX_LEN = common dso_local global i64 0, align 8
@KEEP_ALIVE_FALSE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_15__* (%struct.TYPE_15__*, i32*, %struct.TYPE_13__*)* @Protocol_write_response_or_err to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_15__* @Protocol_write_response_or_err(%struct.TYPE_15__* %0, i32* %1, %struct.TYPE_13__* %2) #0 {
  %4 = alloca %struct.TYPE_15__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_13__*, align 8
  %7 = alloca %struct.TYPE_15__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32*, align 8
  %15 = alloca %struct.TYPE_16__*, align 8
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %4, align 8
  store i32* %1, i32** %5, align 8
  store %struct.TYPE_13__* %2, %struct.TYPE_13__** %6, align 8
  %16 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  store %struct.TYPE_15__* %16, %struct.TYPE_15__** %7, align 8
  store i32* null, i32** %8, align 8
  store i32* null, i32** %9, align 8
  store i32* null, i32** %10, align 8
  %17 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %18 = icmp ne %struct.TYPE_13__* %17, null
  br i1 %18, label %19, label %31

19:                                               ; preds = %3
  %20 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %21 = call i64 @Py_TYPE(%struct.TYPE_13__* %20)
  %22 = load %struct.TYPE_17__*, %struct.TYPE_17__** @response_capi, align 8
  %23 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %21, %24
  br i1 %25, label %26, label %31

26:                                               ; preds = %19
  %27 = load i32, i32* @PyExc_ValueError, align 4
  %28 = call i32 @PyErr_SetString(i32 %27, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  %29 = load i32*, i32** %5, align 8
  %30 = call i32 @Protocol_catch_exception(i32* %29)
  store %struct.TYPE_13__* null, %struct.TYPE_13__** %6, align 8
  br label %31

31:                                               ; preds = %26, %19, %3
  %32 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %33 = icmp ne %struct.TYPE_13__* %32, null
  br i1 %33, label %63, label %34

34:                                               ; preds = %31
  %35 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %36 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %35, i32 0, i32 3
  %37 = load i32, i32* %36, align 8
  %38 = sext i32 %37 to i64
  %39 = inttoptr i64 %38 to i32*
  %40 = load i32*, i32** %5, align 8
  %41 = load i32*, i32** %5, align 8
  %42 = bitcast i32* %41 to %struct.TYPE_14__*
  %43 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 8
  %45 = sext i32 %44 to i64
  %46 = inttoptr i64 %45 to i32*
  %47 = call i32* (i32*, i32*, i32*, ...) @PyObject_CallFunctionObjArgs(i32* %39, i32* %40, i32* %46, i8* null)
  store i32* %47, i32** %9, align 8
  %48 = load i32*, i32** %9, align 8
  %49 = icmp ne i32* %48, null
  br i1 %49, label %51, label %50

50:                                               ; preds = %34
  br label %214

51:                                               ; preds = %34
  %52 = load i32*, i32** %5, align 8
  %53 = bitcast i32* %52 to %struct.TYPE_14__*
  %54 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %53, i32 0, i32 0
  store i32 0, i32* %54, align 8
  %55 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %56 = load i32*, i32** %5, align 8
  %57 = load i32*, i32** %9, align 8
  %58 = bitcast i32* %57 to %struct.TYPE_13__*
  %59 = call %struct.TYPE_15__* @Protocol_write_response_or_err(%struct.TYPE_15__* %55, i32* %56, %struct.TYPE_13__* %58)
  %60 = icmp ne %struct.TYPE_15__* %59, null
  br i1 %60, label %62, label %61

61:                                               ; preds = %51
  br label %214

62:                                               ; preds = %51
  br label %215

63:                                               ; preds = %31
  %64 = load %struct.TYPE_17__*, %struct.TYPE_17__** @response_capi, align 8
  %65 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %64, i32 0, i32 1
  %66 = load i32* (%struct.TYPE_13__*, i32)*, i32* (%struct.TYPE_13__*, i32)** %65, align 8
  %67 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %68 = load i32*, i32** %5, align 8
  %69 = bitcast i32* %68 to %struct.TYPE_14__*
  %70 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = call i32* %66(%struct.TYPE_13__* %67, i32 %71)
  store i32* %72, i32** %8, align 8
  %73 = icmp ne i32* %72, null
  br i1 %73, label %75, label %74

74:                                               ; preds = %63
  br label %214

75:                                               ; preds = %63
  %76 = load i32*, i32** %5, align 8
  %77 = bitcast i32* %76 to %struct.TYPE_14__*
  %78 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %77, i32 0, i32 1
  %79 = load i32*, i32** %78, align 8
  store i32* %79, i32** %12, align 8
  store i64 0, i64* %13, align 8
  br label %80

80:                                               ; preds = %102, %75
  %81 = load i32*, i32** %12, align 8
  %82 = icmp ne i32* %81, null
  br i1 %82, label %83, label %88

83:                                               ; preds = %80
  %84 = load i64, i64* %13, align 8
  %85 = load i32*, i32** %12, align 8
  %86 = call i64 @PyList_GET_SIZE(i32* %85)
  %87 = icmp slt i64 %84, %86
  br label %88

88:                                               ; preds = %83, %80
  %89 = phi i1 [ false, %80 ], [ %87, %83 ]
  br i1 %89, label %90, label %105

90:                                               ; preds = %88
  %91 = load i32*, i32** %12, align 8
  %92 = load i64, i64* %13, align 8
  %93 = call i32* @PyList_GET_ITEM(i32* %91, i64 %92)
  store i32* %93, i32** %14, align 8
  %94 = load i32*, i32** %14, align 8
  %95 = load i32*, i32** %5, align 8
  %96 = call i32* (i32*, i32*, i32*, ...) @PyObject_CallFunctionObjArgs(i32* %94, i32* %95, i32* null)
  store i32* %96, i32** %11, align 8
  %97 = icmp ne i32* %96, null
  br i1 %97, label %99, label %98

98:                                               ; preds = %90
  br label %214

99:                                               ; preds = %90
  %100 = load i32*, i32** %11, align 8
  %101 = call i32 @Py_DECREF(i32* %100)
  br label %102

102:                                              ; preds = %99
  %103 = load i64, i64* %13, align 8
  %104 = add nsw i64 %103, 1
  store i64 %104, i64* %13, align 8
  br label %80

105:                                              ; preds = %88
  %106 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %107 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %106, i32 0, i32 2
  store %struct.TYPE_16__* %107, %struct.TYPE_16__** %15, align 8
  %108 = load %struct.TYPE_16__*, %struct.TYPE_16__** %15, align 8
  %109 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %108, i32 0, i32 3
  %110 = load i32, i32* %109, align 8
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %113, label %112

112:                                              ; preds = %105
  br label %149

113:                                              ; preds = %105
  %114 = load %struct.TYPE_16__*, %struct.TYPE_16__** %15, align 8
  %115 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %114, i32 0, i32 0
  %116 = load i64, i64* %115, align 8
  %117 = load i64, i64* @GATHER_MAX_RESP, align 8
  %118 = icmp eq i64 %116, %117
  br i1 %118, label %119, label %120

119:                                              ; preds = %113
  br label %149

120:                                              ; preds = %113
  %121 = load %struct.TYPE_16__*, %struct.TYPE_16__** %15, align 8
  %122 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %121, i32 0, i32 1
  %123 = load i64, i64* %122, align 8
  %124 = load i32*, i32** %8, align 8
  %125 = call i64 @Py_SIZE(i32* %124)
  %126 = add nsw i64 %123, %125
  %127 = load i64, i64* @GATHER_MAX_LEN, align 8
  %128 = icmp sgt i64 %126, %127
  br i1 %128, label %129, label %130

129:                                              ; preds = %120
  br label %149

130:                                              ; preds = %120
  %131 = load i32*, i32** %8, align 8
  %132 = load %struct.TYPE_16__*, %struct.TYPE_16__** %15, align 8
  %133 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %132, i32 0, i32 2
  %134 = load i32**, i32*** %133, align 8
  %135 = load %struct.TYPE_16__*, %struct.TYPE_16__** %15, align 8
  %136 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %135, i32 0, i32 0
  %137 = load i64, i64* %136, align 8
  %138 = getelementptr inbounds i32*, i32** %134, i64 %137
  store i32* %131, i32** %138, align 8
  %139 = load %struct.TYPE_16__*, %struct.TYPE_16__** %15, align 8
  %140 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %139, i32 0, i32 0
  %141 = load i64, i64* %140, align 8
  %142 = add i64 %141, 1
  store i64 %142, i64* %140, align 8
  %143 = load i32*, i32** %8, align 8
  %144 = call i64 @Py_SIZE(i32* %143)
  %145 = load %struct.TYPE_16__*, %struct.TYPE_16__** %15, align 8
  %146 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %145, i32 0, i32 1
  %147 = load i64, i64* %146, align 8
  %148 = add nsw i64 %147, %144
  store i64 %148, i64* %146, align 8
  store i32* null, i32** %8, align 8
  br label %171

149:                                              ; preds = %129, %119, %112
  %150 = load %struct.TYPE_16__*, %struct.TYPE_16__** %15, align 8
  %151 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %150, i32 0, i32 1
  %152 = load i64, i64* %151, align 8
  %153 = icmp ne i64 %152, 0
  br i1 %153, label %155, label %154

154:                                              ; preds = %149
  br label %171

155:                                              ; preds = %149
  %156 = load %struct.TYPE_16__*, %struct.TYPE_16__** %15, align 8
  %157 = call i32* @Gather_flush(%struct.TYPE_16__* %156)
  store i32* %157, i32** %10, align 8
  %158 = icmp ne i32* %157, null
  br i1 %158, label %160, label %159

159:                                              ; preds = %155
  br label %214

160:                                              ; preds = %155
  %161 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %162 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %161, i32 0, i32 1
  %163 = load i32*, i32** %162, align 8
  %164 = load i32*, i32** %10, align 8
  %165 = call i32* (i32*, i32*, i32*, ...) @PyObject_CallFunctionObjArgs(i32* %163, i32* %164, i32* null)
  store i32* %165, i32** %11, align 8
  %166 = icmp ne i32* %165, null
  br i1 %166, label %168, label %167

167:                                              ; preds = %160
  br label %214

168:                                              ; preds = %160
  %169 = load i32*, i32** %11, align 8
  %170 = call i32 @Py_DECREF(i32* %169)
  br label %171

171:                                              ; preds = %168, %154, %130
  %172 = load i32*, i32** %8, align 8
  %173 = icmp ne i32* %172, null
  br i1 %173, label %174, label %185

174:                                              ; preds = %171
  %175 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %176 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %175, i32 0, i32 1
  %177 = load i32*, i32** %176, align 8
  %178 = load i32*, i32** %8, align 8
  %179 = call i32* (i32*, i32*, i32*, ...) @PyObject_CallFunctionObjArgs(i32* %177, i32* %178, i32* null)
  store i32* %179, i32** %11, align 8
  %180 = icmp ne i32* %179, null
  br i1 %180, label %182, label %181

181:                                              ; preds = %174
  br label %214

182:                                              ; preds = %174
  %183 = load i32*, i32** %11, align 8
  %184 = call i32 @Py_DECREF(i32* %183)
  br label %185

185:                                              ; preds = %182, %171
  %186 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %187 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %186, i32 0, i32 0
  %188 = load i32*, i32** %187, align 8
  %189 = icmp ne i32* %188, null
  br i1 %189, label %190, label %201

190:                                              ; preds = %185
  %191 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %192 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %191, i32 0, i32 0
  %193 = load i32*, i32** %192, align 8
  %194 = load i32*, i32** %5, align 8
  %195 = call i32* (i32*, i32*, i32*, ...) @PyObject_CallFunctionObjArgs(i32* %193, i32* %194, i32* null)
  store i32* %195, i32** %11, align 8
  %196 = icmp ne i32* %195, null
  br i1 %196, label %198, label %197

197:                                              ; preds = %190
  br label %214

198:                                              ; preds = %190
  %199 = load i32*, i32** %11, align 8
  %200 = call i32 @Py_DECREF(i32* %199)
  br label %201

201:                                              ; preds = %198, %185
  %202 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %203 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %202, i32 0, i32 0
  %204 = load i64, i64* %203, align 8
  %205 = load i64, i64* @KEEP_ALIVE_FALSE, align 8
  %206 = icmp eq i64 %204, %205
  br i1 %206, label %207, label %213

207:                                              ; preds = %201
  %208 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %209 = call i32 @Protocol_close(%struct.TYPE_15__* %208)
  %210 = icmp ne i32 %209, 0
  br i1 %210, label %212, label %211

211:                                              ; preds = %207
  br label %214

212:                                              ; preds = %207
  br label %213

213:                                              ; preds = %212, %201
  br label %215

214:                                              ; preds = %211, %197, %181, %167, %159, %98, %74, %61, %50
  store %struct.TYPE_15__* null, %struct.TYPE_15__** %7, align 8
  br label %215

215:                                              ; preds = %214, %213, %62
  %216 = load i32*, i32** %10, align 8
  %217 = call i32 @Py_XDECREF(i32* %216)
  %218 = load i32*, i32** %9, align 8
  %219 = call i32 @Py_XDECREF(i32* %218)
  %220 = load i32*, i32** %8, align 8
  %221 = call i32 @Py_XDECREF(i32* %220)
  %222 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  ret %struct.TYPE_15__* %222
}

declare dso_local i64 @Py_TYPE(%struct.TYPE_13__*) #1

declare dso_local i32 @PyErr_SetString(i32, i8*) #1

declare dso_local i32 @Protocol_catch_exception(i32*) #1

declare dso_local i32* @PyObject_CallFunctionObjArgs(i32*, i32*, i32*, ...) #1

declare dso_local i64 @PyList_GET_SIZE(i32*) #1

declare dso_local i32* @PyList_GET_ITEM(i32*, i64) #1

declare dso_local i32 @Py_DECREF(i32*) #1

declare dso_local i64 @Py_SIZE(i32*) #1

declare dso_local i32* @Gather_flush(%struct.TYPE_16__*) #1

declare dso_local i32 @Protocol_close(%struct.TYPE_15__*) #1

declare dso_local i32 @Py_XDECREF(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
