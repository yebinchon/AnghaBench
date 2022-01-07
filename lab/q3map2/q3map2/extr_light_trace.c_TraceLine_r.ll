; ModuleID = '/home/carl/AnghaBench/lab/q3map2/q3map2/extr_light_trace.c_TraceLine_r.c'
source_filename = "/home/carl/AnghaBench/lab/q3map2/q3map2/extr_light_trace.c_TraceLine_r.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i64, float*, i32* }
%struct.TYPE_5__ = type { i64, i32*, i64, i8*, i32 }

@qtrue = common dso_local global i8* null, align 8
@traceNodes = common dso_local global %struct.TYPE_6__* null, align 8
@TRACE_LEAF_SOLID = common dso_local global i32 0, align 4
@MAX_TRACE_TEST_NODES = common dso_local global i64 0, align 8
@qfalse = common dso_local global i8* null, align 8
@TRACE_ON_EPSILON = common dso_local global float 0.000000e+00, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i32, float*, float*, %struct.TYPE_5__*)* @TraceLine_r to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @TraceLine_r(i32 %0, float* %1, float* %2, %struct.TYPE_5__* %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca float*, align 8
  %8 = alloca float*, align 8
  %9 = alloca %struct.TYPE_5__*, align 8
  %10 = alloca %struct.TYPE_6__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca float, align 4
  %13 = alloca float, align 4
  %14 = alloca float, align 4
  %15 = alloca float*, align 8
  %16 = alloca i8*, align 8
  store i32 %0, i32* %6, align 4
  store float* %1, float** %7, align 8
  store float* %2, float** %8, align 8
  store %struct.TYPE_5__* %3, %struct.TYPE_5__** %9, align 8
  %17 = load i32, i32* %6, align 4
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %19, label %29

19:                                               ; preds = %4
  %20 = load float*, float** %7, align 8
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 4
  %23 = load i32, i32* %22, align 8
  %24 = call i32 @VectorCopy(float* %20, i32 %23)
  %25 = load i8*, i8** @qtrue, align 8
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 3
  store i8* %25, i8** %27, align 8
  %28 = load i8*, i8** @qtrue, align 8
  store i8* %28, i8** %5, align 8
  br label %295

29:                                               ; preds = %4
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** @traceNodes, align 8
  %31 = load i32, i32* %6, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i64 %32
  store %struct.TYPE_6__* %33, %struct.TYPE_6__** %10, align 8
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = load i32, i32* @TRACE_LEAF_SOLID, align 4
  %38 = icmp eq i32 %36, %37
  br i1 %38, label %39, label %49

39:                                               ; preds = %29
  %40 = load float*, float** %7, align 8
  %41 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 4
  %43 = load i32, i32* %42, align 8
  %44 = call i32 @VectorCopy(float* %40, i32 %43)
  %45 = load i8*, i8** @qtrue, align 8
  %46 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 3
  store i8* %45, i8** %47, align 8
  %48 = load i8*, i8** @qtrue, align 8
  store i8* %48, i8** %5, align 8
  br label %295

49:                                               ; preds = %29
  %50 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = icmp slt i32 %52, 0
  br i1 %53, label %54, label %77

54:                                               ; preds = %49
  %55 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = icmp sgt i64 %57, 0
  br i1 %58, label %59, label %75

59:                                               ; preds = %54
  %60 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* @MAX_TRACE_TEST_NODES, align 8
  %64 = icmp slt i64 %62, %63
  br i1 %64, label %65, label %75

65:                                               ; preds = %59
  %66 = load i32, i32* %6, align 4
  %67 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %68 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %67, i32 0, i32 1
  %69 = load i32*, i32** %68, align 8
  %70 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %71 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = add nsw i64 %72, 1
  store i64 %73, i64* %71, align 8
  %74 = getelementptr inbounds i32, i32* %69, i64 %72
  store i32 %66, i32* %74, align 4
  br label %75

75:                                               ; preds = %65, %59, %54
  %76 = load i8*, i8** @qfalse, align 8
  store i8* %76, i8** %5, align 8
  br label %295

77:                                               ; preds = %49
  %78 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %79 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %78, i32 0, i32 2
  %80 = load i64, i64* %79, align 8
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %89

82:                                               ; preds = %77
  %83 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %84 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %83, i32 0, i32 1
  %85 = load i64, i64* %84, align 8
  %86 = icmp eq i64 %85, 0
  br i1 %86, label %87, label %89

87:                                               ; preds = %82
  %88 = load i8*, i8** @qfalse, align 8
  store i8* %88, i8** %5, align 8
  br label %295

89:                                               ; preds = %82, %77
  %90 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %91 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  switch i32 %92, label %150 [
    i32 130, label %93
    i32 129, label %112
    i32 128, label %131
  ]

93:                                               ; preds = %89
  %94 = load float*, float** %7, align 8
  %95 = getelementptr inbounds float, float* %94, i64 0
  %96 = load float, float* %95, align 4
  %97 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %98 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %97, i32 0, i32 2
  %99 = load float*, float** %98, align 8
  %100 = getelementptr inbounds float, float* %99, i64 3
  %101 = load float, float* %100, align 4
  %102 = fsub float %96, %101
  store float %102, float* %12, align 4
  %103 = load float*, float** %8, align 8
  %104 = getelementptr inbounds float, float* %103, i64 0
  %105 = load float, float* %104, align 4
  %106 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %107 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %106, i32 0, i32 2
  %108 = load float*, float** %107, align 8
  %109 = getelementptr inbounds float, float* %108, i64 3
  %110 = load float, float* %109, align 4
  %111 = fsub float %105, %110
  store float %111, float* %13, align 4
  br label %173

112:                                              ; preds = %89
  %113 = load float*, float** %7, align 8
  %114 = getelementptr inbounds float, float* %113, i64 1
  %115 = load float, float* %114, align 4
  %116 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %117 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %116, i32 0, i32 2
  %118 = load float*, float** %117, align 8
  %119 = getelementptr inbounds float, float* %118, i64 3
  %120 = load float, float* %119, align 4
  %121 = fsub float %115, %120
  store float %121, float* %12, align 4
  %122 = load float*, float** %8, align 8
  %123 = getelementptr inbounds float, float* %122, i64 1
  %124 = load float, float* %123, align 4
  %125 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %126 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %125, i32 0, i32 2
  %127 = load float*, float** %126, align 8
  %128 = getelementptr inbounds float, float* %127, i64 3
  %129 = load float, float* %128, align 4
  %130 = fsub float %124, %129
  store float %130, float* %13, align 4
  br label %173

131:                                              ; preds = %89
  %132 = load float*, float** %7, align 8
  %133 = getelementptr inbounds float, float* %132, i64 2
  %134 = load float, float* %133, align 4
  %135 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %136 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %135, i32 0, i32 2
  %137 = load float*, float** %136, align 8
  %138 = getelementptr inbounds float, float* %137, i64 3
  %139 = load float, float* %138, align 4
  %140 = fsub float %134, %139
  store float %140, float* %12, align 4
  %141 = load float*, float** %8, align 8
  %142 = getelementptr inbounds float, float* %141, i64 2
  %143 = load float, float* %142, align 4
  %144 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %145 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %144, i32 0, i32 2
  %146 = load float*, float** %145, align 8
  %147 = getelementptr inbounds float, float* %146, i64 3
  %148 = load float, float* %147, align 4
  %149 = fsub float %143, %148
  store float %149, float* %13, align 4
  br label %173

150:                                              ; preds = %89
  %151 = load float*, float** %7, align 8
  %152 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %153 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %152, i32 0, i32 2
  %154 = load float*, float** %153, align 8
  %155 = call float @DotProduct(float* %151, float* %154)
  %156 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %157 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %156, i32 0, i32 2
  %158 = load float*, float** %157, align 8
  %159 = getelementptr inbounds float, float* %158, i64 3
  %160 = load float, float* %159, align 4
  %161 = fsub float %155, %160
  store float %161, float* %12, align 4
  %162 = load float*, float** %8, align 8
  %163 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %164 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %163, i32 0, i32 2
  %165 = load float*, float** %164, align 8
  %166 = call float @DotProduct(float* %162, float* %165)
  %167 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %168 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %167, i32 0, i32 2
  %169 = load float*, float** %168, align 8
  %170 = getelementptr inbounds float, float* %169, i64 3
  %171 = load float, float* %170, align 4
  %172 = fsub float %166, %171
  store float %172, float* %13, align 4
  br label %173

173:                                              ; preds = %150, %131, %112, %93
  %174 = load float, float* %12, align 4
  %175 = load float, float* @TRACE_ON_EPSILON, align 4
  %176 = fneg float %175
  %177 = fcmp oge float %174, %176
  br i1 %177, label %178, label %193

178:                                              ; preds = %173
  %179 = load float, float* %13, align 4
  %180 = load float, float* @TRACE_ON_EPSILON, align 4
  %181 = fneg float %180
  %182 = fcmp oge float %179, %181
  br i1 %182, label %183, label %193

183:                                              ; preds = %178
  %184 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %185 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %184, i32 0, i32 3
  %186 = load i32*, i32** %185, align 8
  %187 = getelementptr inbounds i32, i32* %186, i64 0
  %188 = load i32, i32* %187, align 4
  %189 = load float*, float** %7, align 8
  %190 = load float*, float** %8, align 8
  %191 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %192 = call i8* @TraceLine_r(i32 %188, float* %189, float* %190, %struct.TYPE_5__* %191)
  store i8* %192, i8** %5, align 8
  br label %295

193:                                              ; preds = %178, %173
  %194 = load float, float* %12, align 4
  %195 = load float, float* @TRACE_ON_EPSILON, align 4
  %196 = fcmp olt float %194, %195
  br i1 %196, label %197, label %211

197:                                              ; preds = %193
  %198 = load float, float* %13, align 4
  %199 = load float, float* @TRACE_ON_EPSILON, align 4
  %200 = fcmp olt float %198, %199
  br i1 %200, label %201, label %211

201:                                              ; preds = %197
  %202 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %203 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %202, i32 0, i32 3
  %204 = load i32*, i32** %203, align 8
  %205 = getelementptr inbounds i32, i32* %204, i64 1
  %206 = load i32, i32* %205, align 4
  %207 = load float*, float** %7, align 8
  %208 = load float*, float** %8, align 8
  %209 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %210 = call i8* @TraceLine_r(i32 %206, float* %207, float* %208, %struct.TYPE_5__* %209)
  store i8* %210, i8** %5, align 8
  br label %295

211:                                              ; preds = %197, %193
  %212 = load float, float* %12, align 4
  %213 = fcmp olt float %212, 0.000000e+00
  %214 = zext i1 %213 to i32
  store i32 %214, i32* %11, align 4
  %215 = load float, float* %12, align 4
  %216 = load float, float* %12, align 4
  %217 = load float, float* %13, align 4
  %218 = fsub float %216, %217
  %219 = fdiv float %215, %218
  store float %219, float* %14, align 4
  %220 = load float*, float** %7, align 8
  %221 = getelementptr inbounds float, float* %220, i64 0
  %222 = load float, float* %221, align 4
  %223 = load float*, float** %8, align 8
  %224 = getelementptr inbounds float, float* %223, i64 0
  %225 = load float, float* %224, align 4
  %226 = load float*, float** %7, align 8
  %227 = getelementptr inbounds float, float* %226, i64 0
  %228 = load float, float* %227, align 4
  %229 = fsub float %225, %228
  %230 = load float, float* %14, align 4
  %231 = fmul float %229, %230
  %232 = fadd float %222, %231
  %233 = load float*, float** %15, align 8
  %234 = getelementptr inbounds float, float* %233, i64 0
  store float %232, float* %234, align 4
  %235 = load float*, float** %7, align 8
  %236 = getelementptr inbounds float, float* %235, i64 1
  %237 = load float, float* %236, align 4
  %238 = load float*, float** %8, align 8
  %239 = getelementptr inbounds float, float* %238, i64 1
  %240 = load float, float* %239, align 4
  %241 = load float*, float** %7, align 8
  %242 = getelementptr inbounds float, float* %241, i64 1
  %243 = load float, float* %242, align 4
  %244 = fsub float %240, %243
  %245 = load float, float* %14, align 4
  %246 = fmul float %244, %245
  %247 = fadd float %237, %246
  %248 = load float*, float** %15, align 8
  %249 = getelementptr inbounds float, float* %248, i64 1
  store float %247, float* %249, align 4
  %250 = load float*, float** %7, align 8
  %251 = getelementptr inbounds float, float* %250, i64 2
  %252 = load float, float* %251, align 4
  %253 = load float*, float** %8, align 8
  %254 = getelementptr inbounds float, float* %253, i64 2
  %255 = load float, float* %254, align 4
  %256 = load float*, float** %7, align 8
  %257 = getelementptr inbounds float, float* %256, i64 2
  %258 = load float, float* %257, align 4
  %259 = fsub float %255, %258
  %260 = load float, float* %14, align 4
  %261 = fmul float %259, %260
  %262 = fadd float %252, %261
  %263 = load float*, float** %15, align 8
  %264 = getelementptr inbounds float, float* %263, i64 2
  store float %262, float* %264, align 4
  %265 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %266 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %265, i32 0, i32 3
  %267 = load i32*, i32** %266, align 8
  %268 = load i32, i32* %11, align 4
  %269 = sext i32 %268 to i64
  %270 = getelementptr inbounds i32, i32* %267, i64 %269
  %271 = load i32, i32* %270, align 4
  %272 = load float*, float** %7, align 8
  %273 = load float*, float** %15, align 8
  %274 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %275 = call i8* @TraceLine_r(i32 %271, float* %272, float* %273, %struct.TYPE_5__* %274)
  store i8* %275, i8** %16, align 8
  %276 = load i8*, i8** %16, align 8
  %277 = icmp ne i8* %276, null
  br i1 %277, label %278, label %280

278:                                              ; preds = %211
  %279 = load i8*, i8** %16, align 8
  store i8* %279, i8** %5, align 8
  br label %295

280:                                              ; preds = %211
  %281 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %282 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %281, i32 0, i32 3
  %283 = load i32*, i32** %282, align 8
  %284 = load i32, i32* %11, align 4
  %285 = icmp ne i32 %284, 0
  %286 = xor i1 %285, true
  %287 = zext i1 %286 to i32
  %288 = sext i32 %287 to i64
  %289 = getelementptr inbounds i32, i32* %283, i64 %288
  %290 = load i32, i32* %289, align 4
  %291 = load float*, float** %15, align 8
  %292 = load float*, float** %8, align 8
  %293 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %294 = call i8* @TraceLine_r(i32 %290, float* %291, float* %292, %struct.TYPE_5__* %293)
  store i8* %294, i8** %5, align 8
  br label %295

295:                                              ; preds = %280, %278, %201, %183, %87, %75, %39, %19
  %296 = load i8*, i8** %5, align 8
  ret i8* %296
}

declare dso_local i32 @VectorCopy(float*, i32) #1

declare dso_local float @DotProduct(float*, float*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
