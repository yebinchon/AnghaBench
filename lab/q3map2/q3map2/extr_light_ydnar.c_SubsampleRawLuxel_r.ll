; ModuleID = '/home/carl/AnghaBench/lab/q3map2/q3map2/extr_light_ydnar.c_SubsampleRawLuxel_r.c'
source_filename = "/home/carl/AnghaBench/lab/q3map2/q3map2/extr_light_ydnar.c_SubsampleRawLuxel_r.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, float*, float*, float* }

@__const.SubsampleRawLuxel_r.biasDirs = private unnamed_addr constant [4 x [2 x float]] [[2 x float] [float -1.000000e+00, float -1.000000e+00], [2 x float] [float 1.000000e+00, float -1.000000e+00], [2 x float] [float -1.000000e+00, float 1.000000e+00], [2 x float] [float 1.000000e+00, float 1.000000e+00]], align 16
@lightSamples = common dso_local global float 0.000000e+00, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.TYPE_4__*, float*, i32, i32, float, float*)* @SubsampleRawLuxel_r to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @SubsampleRawLuxel_r(i32* %0, %struct.TYPE_4__* %1, float* %2, i32 %3, i32 %4, float %5, float* %6) #0 {
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_4__*, align 8
  %10 = alloca float*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca float, align 4
  %14 = alloca float*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca [4 x i32], align 16
  %20 = alloca [4 x float*], align 16
  %21 = alloca [4 x float*], align 16
  %22 = alloca [4 x float*], align 16
  %23 = alloca [4 x [2 x float]], align 16
  %24 = alloca float*, align 8
  %25 = alloca float*, align 8
  store i32* %0, i32** %8, align 8
  store %struct.TYPE_4__* %1, %struct.TYPE_4__** %9, align 8
  store float* %2, float** %10, align 8
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store float %5, float* %13, align 4
  store float* %6, float** %14, align 8
  %26 = bitcast [4 x [2 x float]]* %23 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %26, i8* align 16 bitcast ([4 x [2 x float]]* @__const.SubsampleRawLuxel_r.biasDirs to i8*), i64 32, i1 false)
  %27 = load float*, float** %14, align 8
  %28 = getelementptr inbounds float, float* %27, i64 3
  %29 = load float, float* %28, align 4
  %30 = load float, float* @lightSamples, align 4
  %31 = fcmp oge float %29, %30
  br i1 %31, label %32, label %33

32:                                               ; preds = %7
  br label %271

33:                                               ; preds = %7
  %34 = load float*, float** %25, align 8
  %35 = call i32 @VectorClear(float* %34)
  store i32 0, i32* %17, align 4
  store i32 0, i32* %18, align 4
  store i32 0, i32* %15, align 4
  br label %36

36:                                               ; preds = %153, %33
  %37 = load i32, i32* %15, align 4
  %38 = icmp slt i32 %37, 4
  br i1 %38, label %39, label %156

39:                                               ; preds = %36
  %40 = load float*, float** %10, align 8
  %41 = load i32, i32* %15, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds [4 x float*], [4 x float*]* %21, i64 0, i64 %42
  %44 = load float*, float** %43, align 8
  %45 = call i32 @VectorCopy(float* %40, float* %44)
  %46 = load i32*, i32** %8, align 8
  %47 = load i32, i32* %11, align 4
  %48 = load i32, i32* %12, align 4
  %49 = load float, float* %13, align 4
  %50 = load i32, i32* %15, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds [4 x [2 x float]], [4 x [2 x float]]* %23, i64 0, i64 %51
  %53 = getelementptr inbounds [2 x float], [2 x float]* %52, i64 0, i64 0
  %54 = load float, float* %53, align 8
  %55 = fmul float %49, %54
  %56 = load float, float* %13, align 4
  %57 = load i32, i32* %15, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds [4 x [2 x float]], [4 x [2 x float]]* %23, i64 0, i64 %58
  %60 = getelementptr inbounds [2 x float], [2 x float]* %59, i64 0, i64 1
  %61 = load float, float* %60, align 4
  %62 = fmul float %56, %61
  %63 = load i32, i32* %15, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds [4 x i32], [4 x i32]* %19, i64 0, i64 %64
  %66 = load i32, i32* %15, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds [4 x float*], [4 x float*]* %21, i64 0, i64 %67
  %69 = load float*, float** %68, align 8
  %70 = load i32, i32* %15, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds [4 x float*], [4 x float*]* %22, i64 0, i64 %71
  %73 = load float*, float** %72, align 8
  %74 = call i32 @SubmapRawLuxel(i32* %46, i32 %47, i32 %48, float %55, float %62, i32* %65, float* %69, float* %73)
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %80, label %76

76:                                               ; preds = %39
  %77 = load i32, i32* %15, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds [4 x i32], [4 x i32]* %19, i64 0, i64 %78
  store i32 -1, i32* %79, align 4
  br label %153

80:                                               ; preds = %39
  %81 = load i32, i32* %17, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %17, align 4
  %83 = load float*, float** %14, align 8
  %84 = getelementptr inbounds float, float* %83, i64 3
  %85 = load float, float* %84, align 4
  %86 = fadd float %85, 1.000000e+00
  %87 = load i32, i32* %15, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds [4 x float*], [4 x float*]* %20, i64 0, i64 %88
  %90 = load float*, float** %89, align 8
  %91 = getelementptr inbounds float, float* %90, i64 3
  store float %86, float* %91, align 4
  %92 = getelementptr inbounds [4 x i32], [4 x i32]* %19, i64 0, i64 0
  %93 = load i32, i32* %92, align 16
  %94 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %95 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %94, i32 0, i32 0
  store i32 %93, i32* %95, align 8
  %96 = load i32, i32* %15, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds [4 x float*], [4 x float*]* %21, i64 0, i64 %97
  %99 = load float*, float** %98, align 8
  %100 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %101 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %100, i32 0, i32 1
  %102 = load float*, float** %101, align 8
  %103 = call i32 @VectorCopy(float* %99, float* %102)
  %104 = load i32, i32* %15, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds [4 x float*], [4 x float*]* %22, i64 0, i64 %105
  %107 = load float*, float** %106, align 8
  %108 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %109 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %108, i32 0, i32 2
  %110 = load float*, float** %109, align 8
  %111 = call i32 @VectorCopy(float* %107, float* %110)
  %112 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %113 = call i32 @LightContributionToSample(%struct.TYPE_4__* %112)
  %114 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %115 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %114, i32 0, i32 3
  %116 = load float*, float** %115, align 8
  %117 = load i32, i32* %15, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds [4 x float*], [4 x float*]* %20, i64 0, i64 %118
  %120 = load float*, float** %119, align 8
  %121 = call i32 @VectorCopy(float* %116, float* %120)
  %122 = load float*, float** %25, align 8
  %123 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %124 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %123, i32 0, i32 3
  %125 = load float*, float** %124, align 8
  %126 = load float*, float** %25, align 8
  %127 = call i32 @VectorAdd(float* %122, float* %125, float* %126)
  %128 = load i32, i32* %15, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds [4 x float*], [4 x float*]* %20, i64 0, i64 %129
  %131 = load float*, float** %130, align 8
  %132 = getelementptr inbounds float, float* %131, i64 0
  %133 = load float, float* %132, align 4
  %134 = load i32, i32* %15, align 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds [4 x float*], [4 x float*]* %20, i64 0, i64 %135
  %137 = load float*, float** %136, align 8
  %138 = getelementptr inbounds float, float* %137, i64 1
  %139 = load float, float* %138, align 4
  %140 = fadd float %133, %139
  %141 = load i32, i32* %15, align 4
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds [4 x float*], [4 x float*]* %20, i64 0, i64 %142
  %144 = load float*, float** %143, align 8
  %145 = getelementptr inbounds float, float* %144, i64 2
  %146 = load float, float* %145, align 4
  %147 = fadd float %140, %146
  %148 = fcmp ogt float %147, 0.000000e+00
  br i1 %148, label %149, label %152

149:                                              ; preds = %80
  %150 = load i32, i32* %18, align 4
  %151 = add nsw i32 %150, 1
  store i32 %151, i32* %18, align 4
  br label %152

152:                                              ; preds = %149, %80
  br label %153

153:                                              ; preds = %152, %76
  %154 = load i32, i32* %15, align 4
  %155 = add nsw i32 %154, 1
  store i32 %155, i32* %15, align 4
  br label %36

156:                                              ; preds = %36
  %157 = load float*, float** %14, align 8
  %158 = getelementptr inbounds float, float* %157, i64 3
  %159 = load float, float* %158, align 4
  %160 = fadd float %159, 1.000000e+00
  %161 = load float, float* @lightSamples, align 4
  %162 = fcmp olt float %160, %161
  br i1 %162, label %163, label %215

163:                                              ; preds = %156
  %164 = load float*, float** %25, align 8
  %165 = getelementptr inbounds float, float* %164, i64 0
  %166 = load float, float* %165, align 4
  %167 = fcmp ogt float %166, 4.000000e+00
  br i1 %167, label %178, label %168

168:                                              ; preds = %163
  %169 = load float*, float** %25, align 8
  %170 = getelementptr inbounds float, float* %169, i64 1
  %171 = load float, float* %170, align 4
  %172 = fcmp ogt float %171, 4.000000e+00
  br i1 %172, label %178, label %173

173:                                              ; preds = %168
  %174 = load float*, float** %25, align 8
  %175 = getelementptr inbounds float, float* %174, i64 2
  %176 = load float, float* %175, align 4
  %177 = fcmp ogt float %176, 4.000000e+00
  br i1 %177, label %178, label %215

178:                                              ; preds = %173, %168, %163
  %179 = load i32, i32* %18, align 4
  %180 = icmp ne i32 %179, 0
  br i1 %180, label %181, label %215

181:                                              ; preds = %178
  %182 = load i32, i32* %18, align 4
  %183 = load i32, i32* %17, align 4
  %184 = icmp ne i32 %182, %183
  br i1 %184, label %185, label %215

185:                                              ; preds = %181
  store i32 0, i32* %15, align 4
  br label %186

186:                                              ; preds = %211, %185
  %187 = load i32, i32* %15, align 4
  %188 = icmp slt i32 %187, 4
  br i1 %188, label %189, label %214

189:                                              ; preds = %186
  %190 = load i32, i32* %15, align 4
  %191 = sext i32 %190 to i64
  %192 = getelementptr inbounds [4 x i32], [4 x i32]* %19, i64 0, i64 %191
  %193 = load i32, i32* %192, align 4
  %194 = icmp slt i32 %193, 0
  br i1 %194, label %195, label %196

195:                                              ; preds = %189
  br label %211

196:                                              ; preds = %189
  %197 = load i32*, i32** %8, align 8
  %198 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %199 = load i32, i32* %15, align 4
  %200 = sext i32 %199 to i64
  %201 = getelementptr inbounds [4 x float*], [4 x float*]* %21, i64 0, i64 %200
  %202 = load float*, float** %201, align 8
  %203 = load i32, i32* %11, align 4
  %204 = load i32, i32* %12, align 4
  %205 = load float, float* %13, align 4
  %206 = fmul float %205, 2.500000e-01
  %207 = load i32, i32* %15, align 4
  %208 = sext i32 %207 to i64
  %209 = getelementptr inbounds [4 x float*], [4 x float*]* %20, i64 0, i64 %208
  %210 = load float*, float** %209, align 8
  call void @SubsampleRawLuxel_r(i32* %197, %struct.TYPE_4__* %198, float* %202, i32 %203, i32 %204, float %206, float* %210)
  br label %211

211:                                              ; preds = %196, %195
  %212 = load i32, i32* %15, align 4
  %213 = add nsw i32 %212, 1
  store i32 %213, i32* %15, align 4
  br label %186

214:                                              ; preds = %186
  br label %215

215:                                              ; preds = %214, %181, %178, %173, %156
  %216 = load float*, float** %14, align 8
  %217 = load float*, float** %24, align 8
  %218 = call i32 @VectorCopy(float* %216, float* %217)
  store i32 1, i32* %16, align 4
  store i32 0, i32* %15, align 4
  br label %219

219:                                              ; preds = %239, %215
  %220 = load i32, i32* %15, align 4
  %221 = icmp slt i32 %220, 4
  br i1 %221, label %222, label %242

222:                                              ; preds = %219
  %223 = load i32, i32* %15, align 4
  %224 = sext i32 %223 to i64
  %225 = getelementptr inbounds [4 x i32], [4 x i32]* %19, i64 0, i64 %224
  %226 = load i32, i32* %225, align 4
  %227 = icmp slt i32 %226, 0
  br i1 %227, label %228, label %229

228:                                              ; preds = %222
  br label %239

229:                                              ; preds = %222
  %230 = load float*, float** %24, align 8
  %231 = load i32, i32* %15, align 4
  %232 = sext i32 %231 to i64
  %233 = getelementptr inbounds [4 x float*], [4 x float*]* %20, i64 0, i64 %232
  %234 = load float*, float** %233, align 8
  %235 = load float*, float** %24, align 8
  %236 = call i32 @VectorAdd(float* %230, float* %234, float* %235)
  %237 = load i32, i32* %16, align 4
  %238 = add nsw i32 %237, 1
  store i32 %238, i32* %16, align 4
  br label %239

239:                                              ; preds = %229, %228
  %240 = load i32, i32* %15, align 4
  %241 = add nsw i32 %240, 1
  store i32 %241, i32* %15, align 4
  br label %219

242:                                              ; preds = %219
  %243 = load i32, i32* %16, align 4
  %244 = icmp sgt i32 %243, 0
  br i1 %244, label %245, label %271

245:                                              ; preds = %242
  %246 = load i32, i32* %16, align 4
  %247 = sitofp i32 %246 to float
  %248 = load float*, float** %24, align 8
  %249 = getelementptr inbounds float, float* %248, i64 0
  %250 = load float, float* %249, align 4
  %251 = fdiv float %250, %247
  store float %251, float* %249, align 4
  %252 = load i32, i32* %16, align 4
  %253 = sitofp i32 %252 to float
  %254 = load float*, float** %24, align 8
  %255 = getelementptr inbounds float, float* %254, i64 1
  %256 = load float, float* %255, align 4
  %257 = fdiv float %256, %253
  store float %257, float* %255, align 4
  %258 = load i32, i32* %16, align 4
  %259 = sitofp i32 %258 to float
  %260 = load float*, float** %24, align 8
  %261 = getelementptr inbounds float, float* %260, i64 2
  %262 = load float, float* %261, align 4
  %263 = fdiv float %262, %259
  store float %263, float* %261, align 4
  %264 = load float*, float** %24, align 8
  %265 = load float*, float** %14, align 8
  %266 = call i32 @VectorCopy(float* %264, float* %265)
  %267 = load float*, float** %14, align 8
  %268 = getelementptr inbounds float, float* %267, i64 3
  %269 = load float, float* %268, align 4
  %270 = fadd float %269, 1.000000e+00
  store float %270, float* %268, align 4
  br label %271

271:                                              ; preds = %32, %245, %242
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @VectorClear(float*) #2

declare dso_local i32 @VectorCopy(float*, float*) #2

declare dso_local i32 @SubmapRawLuxel(i32*, i32, i32, float, float, i32*, float*, float*) #2

declare dso_local i32 @LightContributionToSample(%struct.TYPE_4__*) #2

declare dso_local i32 @VectorAdd(float*, float*, float*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
