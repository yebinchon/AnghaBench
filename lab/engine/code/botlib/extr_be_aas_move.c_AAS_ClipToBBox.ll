; ModuleID = '/home/carl/AnghaBench/lab/engine/code/botlib/extr_be_aas_move.c_AAS_ClipToBBox.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/botlib/extr_be_aas_move.c_AAS_ClipToBBox.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { float*, i32, i32, i64, i64, i64, i64 }

@qfalse = common dso_local global i32 0, align 4
@qtrue = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @AAS_ClipToBBox(%struct.TYPE_3__* %0, float* %1, float* %2, i32 %3, float* %4, float* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_3__*, align 8
  %9 = alloca float*, align 8
  %10 = alloca float*, align 8
  %11 = alloca i32, align 4
  %12 = alloca float*, align 8
  %13 = alloca float*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca float, align 4
  %18 = alloca float, align 4
  %19 = alloca float, align 4
  %20 = alloca float, align 4
  %21 = alloca float*, align 8
  %22 = alloca float*, align 8
  %23 = alloca float*, align 8
  %24 = alloca float*, align 8
  %25 = alloca float*, align 8
  %26 = alloca float*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %8, align 8
  store float* %1, float** %9, align 8
  store float* %2, float** %10, align 8
  store i32 %3, i32* %11, align 4
  store float* %4, float** %12, align 8
  store float* %5, float** %13, align 8
  %27 = load i32, i32* %11, align 4
  %28 = load float*, float** %21, align 8
  %29 = load float*, float** %22, align 8
  %30 = call i32 @AAS_PresenceTypeBoundingBox(i32 %27, float* %28, float* %29)
  %31 = load float*, float** %12, align 8
  %32 = load float*, float** %22, align 8
  %33 = load float*, float** %23, align 8
  %34 = call i32 @VectorSubtract(float* %31, float* %32, float* %33)
  %35 = load float*, float** %13, align 8
  %36 = load float*, float** %21, align 8
  %37 = load float*, float** %24, align 8
  %38 = call i32 @VectorSubtract(float* %35, float* %36, float* %37)
  %39 = load float*, float** %10, align 8
  %40 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 0
  %42 = load float*, float** %41, align 8
  %43 = call i32 @VectorCopy(float* %39, float* %42)
  %44 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 1
  store i32 1, i32* %45, align 8
  store i32 0, i32* %14, align 4
  br label %46

46:                                               ; preds = %102, %6
  %47 = load i32, i32* %14, align 4
  %48 = icmp slt i32 %47, 3
  br i1 %48, label %49, label %105

49:                                               ; preds = %46
  %50 = load float*, float** %9, align 8
  %51 = load i32, i32* %14, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds float, float* %50, i64 %52
  %54 = load float, float* %53, align 4
  %55 = load float*, float** %23, align 8
  %56 = load i32, i32* %14, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds float, float* %55, i64 %57
  %59 = load float, float* %58, align 4
  %60 = fcmp olt float %54, %59
  br i1 %60, label %61, label %75

61:                                               ; preds = %49
  %62 = load float*, float** %10, align 8
  %63 = load i32, i32* %14, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds float, float* %62, i64 %64
  %66 = load float, float* %65, align 4
  %67 = load float*, float** %23, align 8
  %68 = load i32, i32* %14, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds float, float* %67, i64 %69
  %71 = load float, float* %70, align 4
  %72 = fcmp olt float %66, %71
  br i1 %72, label %73, label %75

73:                                               ; preds = %61
  %74 = load i32, i32* @qfalse, align 4
  store i32 %74, i32* %7, align 4
  br label %305

75:                                               ; preds = %61, %49
  %76 = load float*, float** %9, align 8
  %77 = load i32, i32* %14, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds float, float* %76, i64 %78
  %80 = load float, float* %79, align 4
  %81 = load float*, float** %24, align 8
  %82 = load i32, i32* %14, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds float, float* %81, i64 %83
  %85 = load float, float* %84, align 4
  %86 = fcmp ogt float %80, %85
  br i1 %86, label %87, label %101

87:                                               ; preds = %75
  %88 = load float*, float** %10, align 8
  %89 = load i32, i32* %14, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds float, float* %88, i64 %90
  %92 = load float, float* %91, align 4
  %93 = load float*, float** %24, align 8
  %94 = load i32, i32* %14, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds float, float* %93, i64 %95
  %97 = load float, float* %96, align 4
  %98 = fcmp ogt float %92, %97
  br i1 %98, label %99, label %101

99:                                               ; preds = %87
  %100 = load i32, i32* @qfalse, align 4
  store i32 %100, i32* %7, align 4
  br label %305

101:                                              ; preds = %87, %75
  br label %102

102:                                              ; preds = %101
  %103 = load i32, i32* %14, align 4
  %104 = add nsw i32 %103, 1
  store i32 %104, i32* %14, align 4
  br label %46

105:                                              ; preds = %46
  %106 = load float*, float** %10, align 8
  %107 = load float*, float** %9, align 8
  %108 = load float*, float** %25, align 8
  %109 = call i32 @VectorSubtract(float* %106, float* %107, float* %108)
  store float 1.000000e+00, float* %19, align 4
  store i32 0, i32* %14, align 4
  br label %110

110:                                              ; preds = %253, %105
  %111 = load i32, i32* %14, align 4
  %112 = icmp slt i32 %111, 3
  br i1 %112, label %113, label %256

113:                                              ; preds = %110
  %114 = load float*, float** %25, align 8
  %115 = load i32, i32* %14, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds float, float* %114, i64 %116
  %118 = load float, float* %117, align 4
  %119 = fcmp ogt float %118, 0.000000e+00
  br i1 %119, label %120, label %126

120:                                              ; preds = %113
  %121 = load float*, float** %23, align 8
  %122 = load i32, i32* %14, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds float, float* %121, i64 %123
  %125 = load float, float* %124, align 4
  store float %125, float* %20, align 4
  br label %132

126:                                              ; preds = %113
  %127 = load float*, float** %24, align 8
  %128 = load i32, i32* %14, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds float, float* %127, i64 %129
  %131 = load float, float* %130, align 4
  store float %131, float* %20, align 4
  br label %132

132:                                              ; preds = %126, %120
  %133 = load float*, float** %9, align 8
  %134 = load i32, i32* %14, align 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds float, float* %133, i64 %135
  %137 = load float, float* %136, align 4
  %138 = load float, float* %20, align 4
  %139 = fsub float %137, %138
  store float %139, float* %17, align 4
  %140 = load float*, float** %10, align 8
  %141 = load i32, i32* %14, align 4
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds float, float* %140, i64 %142
  %144 = load float, float* %143, align 4
  %145 = load float, float* %20, align 4
  %146 = fsub float %144, %145
  store float %146, float* %18, align 4
  %147 = load float, float* %17, align 4
  %148 = load float, float* %17, align 4
  %149 = load float, float* %18, align 4
  %150 = fsub float %148, %149
  %151 = fdiv float %147, %150
  store float %151, float* %19, align 4
  %152 = load i32, i32* %14, align 4
  %153 = add nsw i32 %152, 1
  store i32 %153, i32* %16, align 4
  %154 = load i32, i32* %16, align 4
  %155 = icmp sgt i32 %154, 2
  br i1 %155, label %156, label %157

156:                                              ; preds = %132
  store i32 0, i32* %16, align 4
  br label %157

157:                                              ; preds = %156, %132
  %158 = load float*, float** %9, align 8
  %159 = load i32, i32* %16, align 4
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds float, float* %158, i64 %160
  %162 = load float, float* %161, align 4
  %163 = load float*, float** %25, align 8
  %164 = load i32, i32* %16, align 4
  %165 = sext i32 %164 to i64
  %166 = getelementptr inbounds float, float* %163, i64 %165
  %167 = load float, float* %166, align 4
  %168 = load float, float* %19, align 4
  %169 = fmul float %167, %168
  %170 = fadd float %162, %169
  %171 = load float*, float** %26, align 8
  %172 = load i32, i32* %16, align 4
  %173 = sext i32 %172 to i64
  %174 = getelementptr inbounds float, float* %171, i64 %173
  store float %170, float* %174, align 4
  %175 = load float*, float** %26, align 8
  %176 = load i32, i32* %16, align 4
  %177 = sext i32 %176 to i64
  %178 = getelementptr inbounds float, float* %175, i64 %177
  %179 = load float, float* %178, align 4
  %180 = load float*, float** %23, align 8
  %181 = load i32, i32* %16, align 4
  %182 = sext i32 %181 to i64
  %183 = getelementptr inbounds float, float* %180, i64 %182
  %184 = load float, float* %183, align 4
  %185 = fcmp ogt float %179, %184
  br i1 %185, label %186, label %252

186:                                              ; preds = %157
  %187 = load float*, float** %26, align 8
  %188 = load i32, i32* %16, align 4
  %189 = sext i32 %188 to i64
  %190 = getelementptr inbounds float, float* %187, i64 %189
  %191 = load float, float* %190, align 4
  %192 = load float*, float** %24, align 8
  %193 = load i32, i32* %16, align 4
  %194 = sext i32 %193 to i64
  %195 = getelementptr inbounds float, float* %192, i64 %194
  %196 = load float, float* %195, align 4
  %197 = fcmp olt float %191, %196
  br i1 %197, label %198, label %252

198:                                              ; preds = %186
  %199 = load i32, i32* %16, align 4
  %200 = add nsw i32 %199, 1
  store i32 %200, i32* %16, align 4
  %201 = load i32, i32* %16, align 4
  %202 = icmp sgt i32 %201, 2
  br i1 %202, label %203, label %204

203:                                              ; preds = %198
  store i32 0, i32* %16, align 4
  br label %204

204:                                              ; preds = %203, %198
  %205 = load float*, float** %9, align 8
  %206 = load i32, i32* %16, align 4
  %207 = sext i32 %206 to i64
  %208 = getelementptr inbounds float, float* %205, i64 %207
  %209 = load float, float* %208, align 4
  %210 = load float*, float** %25, align 8
  %211 = load i32, i32* %16, align 4
  %212 = sext i32 %211 to i64
  %213 = getelementptr inbounds float, float* %210, i64 %212
  %214 = load float, float* %213, align 4
  %215 = load float, float* %19, align 4
  %216 = fmul float %214, %215
  %217 = fadd float %209, %216
  %218 = load float*, float** %26, align 8
  %219 = load i32, i32* %16, align 4
  %220 = sext i32 %219 to i64
  %221 = getelementptr inbounds float, float* %218, i64 %220
  store float %217, float* %221, align 4
  %222 = load float*, float** %26, align 8
  %223 = load i32, i32* %16, align 4
  %224 = sext i32 %223 to i64
  %225 = getelementptr inbounds float, float* %222, i64 %224
  %226 = load float, float* %225, align 4
  %227 = load float*, float** %23, align 8
  %228 = load i32, i32* %16, align 4
  %229 = sext i32 %228 to i64
  %230 = getelementptr inbounds float, float* %227, i64 %229
  %231 = load float, float* %230, align 4
  %232 = fcmp ogt float %226, %231
  br i1 %232, label %233, label %251

233:                                              ; preds = %204
  %234 = load float*, float** %26, align 8
  %235 = load i32, i32* %16, align 4
  %236 = sext i32 %235 to i64
  %237 = getelementptr inbounds float, float* %234, i64 %236
  %238 = load float, float* %237, align 4
  %239 = load float*, float** %24, align 8
  %240 = load i32, i32* %16, align 4
  %241 = sext i32 %240 to i64
  %242 = getelementptr inbounds float, float* %239, i64 %241
  %243 = load float, float* %242, align 4
  %244 = fcmp olt float %238, %243
  br i1 %244, label %245, label %251

245:                                              ; preds = %233
  %246 = load float, float* %20, align 4
  %247 = load float*, float** %26, align 8
  %248 = load i32, i32* %14, align 4
  %249 = sext i32 %248 to i64
  %250 = getelementptr inbounds float, float* %247, i64 %249
  store float %246, float* %250, align 4
  br label %256

251:                                              ; preds = %233, %204
  br label %252

252:                                              ; preds = %251, %186, %157
  br label %253

253:                                              ; preds = %252
  %254 = load i32, i32* %14, align 4
  %255 = add nsw i32 %254, 1
  store i32 %255, i32* %14, align 4
  br label %110

256:                                              ; preds = %245, %110
  %257 = load i32, i32* %14, align 4
  %258 = icmp ne i32 %257, 3
  br i1 %258, label %259, label %303

259:                                              ; preds = %256
  %260 = load i32, i32* @qfalse, align 4
  %261 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %262 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %261, i32 0, i32 2
  store i32 %260, i32* %262, align 4
  %263 = load float, float* %19, align 4
  %264 = fptosi float %263 to i32
  %265 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %266 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %265, i32 0, i32 1
  store i32 %264, i32* %266, align 8
  %267 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %268 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %267, i32 0, i32 6
  store i64 0, i64* %268, align 8
  %269 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %270 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %269, i32 0, i32 5
  store i64 0, i64* %270, align 8
  %271 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %272 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %271, i32 0, i32 4
  store i64 0, i64* %272, align 8
  %273 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %274 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %273, i32 0, i32 3
  store i64 0, i64* %274, align 8
  store i32 0, i32* %15, align 4
  br label %275

275:                                              ; preds = %298, %259
  %276 = load i32, i32* %15, align 4
  %277 = icmp slt i32 %276, 3
  br i1 %277, label %278, label %301

278:                                              ; preds = %275
  %279 = load float*, float** %9, align 8
  %280 = load i32, i32* %15, align 4
  %281 = sext i32 %280 to i64
  %282 = getelementptr inbounds float, float* %279, i64 %281
  %283 = load float, float* %282, align 4
  %284 = load float*, float** %25, align 8
  %285 = load i32, i32* %15, align 4
  %286 = sext i32 %285 to i64
  %287 = getelementptr inbounds float, float* %284, i64 %286
  %288 = load float, float* %287, align 4
  %289 = load float, float* %19, align 4
  %290 = fmul float %288, %289
  %291 = fadd float %283, %290
  %292 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %293 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %292, i32 0, i32 0
  %294 = load float*, float** %293, align 8
  %295 = load i32, i32* %15, align 4
  %296 = sext i32 %295 to i64
  %297 = getelementptr inbounds float, float* %294, i64 %296
  store float %291, float* %297, align 4
  br label %298

298:                                              ; preds = %278
  %299 = load i32, i32* %15, align 4
  %300 = add nsw i32 %299, 1
  store i32 %300, i32* %15, align 4
  br label %275

301:                                              ; preds = %275
  %302 = load i32, i32* @qtrue, align 4
  store i32 %302, i32* %7, align 4
  br label %305

303:                                              ; preds = %256
  %304 = load i32, i32* @qfalse, align 4
  store i32 %304, i32* %7, align 4
  br label %305

305:                                              ; preds = %303, %301, %99, %73
  %306 = load i32, i32* %7, align 4
  ret i32 %306
}

declare dso_local i32 @AAS_PresenceTypeBoundingBox(i32, float*, float*) #1

declare dso_local i32 @VectorSubtract(float*, float*, float*) #1

declare dso_local i32 @VectorCopy(float*, float*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
