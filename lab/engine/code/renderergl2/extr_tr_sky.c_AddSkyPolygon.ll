; ModuleID = '/home/carl/AnghaBench/lab/engine/code/renderergl2/extr_tr_sky.c_AddSkyPolygon.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/renderergl2/extr_tr_sky.c_AddSkyPolygon.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@AddSkyPolygon.vec_to_st = internal global [6 x [3 x i32]] [[3 x i32] [i32 -2, i32 3, i32 1], [3 x i32] [i32 2, i32 3, i32 -1], [3 x i32] [i32 1, i32 3, i32 2], [3 x i32] [i32 -1, i32 3, i32 -2], [3 x i32] [i32 -2, i32 -1, i32 3], [3 x i32] [i32 -2, i32 1, i32 -3]], align 16
@vec3_origin = common dso_local global i32 0, align 4
@sky_mins = common dso_local global float** null, align 8
@sky_maxs = common dso_local global float** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i64*)* @AddSkyPolygon to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @AddSkyPolygon(i32 %0, i64* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i64*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca float, align 4
  %10 = alloca float, align 4
  %11 = alloca float, align 4
  %12 = alloca i32, align 4
  %13 = alloca float*, align 8
  store i32 %0, i32* %3, align 4
  store i64* %1, i64** %4, align 8
  %14 = load i32, i32* @vec3_origin, align 4
  %15 = load i64*, i64** %7, align 8
  %16 = call i32 @VectorCopy(i32 %14, i64* %15)
  store i32 0, i32* %5, align 4
  %17 = load i64*, i64** %4, align 8
  %18 = bitcast i64* %17 to float*
  store float* %18, float** %13, align 8
  br label %19

19:                                               ; preds = %28, %2
  %20 = load i32, i32* %5, align 4
  %21 = load i32, i32* %3, align 4
  %22 = icmp slt i32 %20, %21
  br i1 %22, label %23, label %33

23:                                               ; preds = %19
  %24 = load float*, float** %13, align 8
  %25 = load i64*, i64** %7, align 8
  %26 = load i64*, i64** %7, align 8
  %27 = call i32 @VectorAdd(float* %24, i64* %25, i64* %26)
  br label %28

28:                                               ; preds = %23
  %29 = load i32, i32* %5, align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %5, align 4
  %31 = load float*, float** %13, align 8
  %32 = getelementptr inbounds float, float* %31, i64 3
  store float* %32, float** %13, align 8
  br label %19

33:                                               ; preds = %19
  %34 = load i64*, i64** %7, align 8
  %35 = getelementptr inbounds i64, i64* %34, i64 0
  %36 = load i64, i64* %35, align 8
  %37 = call i64 @fabs(i64 %36)
  %38 = load i64*, i64** %8, align 8
  %39 = getelementptr inbounds i64, i64* %38, i64 0
  store i64 %37, i64* %39, align 8
  %40 = load i64*, i64** %7, align 8
  %41 = getelementptr inbounds i64, i64* %40, i64 1
  %42 = load i64, i64* %41, align 8
  %43 = call i64 @fabs(i64 %42)
  %44 = load i64*, i64** %8, align 8
  %45 = getelementptr inbounds i64, i64* %44, i64 1
  store i64 %43, i64* %45, align 8
  %46 = load i64*, i64** %7, align 8
  %47 = getelementptr inbounds i64, i64* %46, i64 2
  %48 = load i64, i64* %47, align 8
  %49 = call i64 @fabs(i64 %48)
  %50 = load i64*, i64** %8, align 8
  %51 = getelementptr inbounds i64, i64* %50, i64 2
  store i64 %49, i64* %51, align 8
  %52 = load i64*, i64** %8, align 8
  %53 = getelementptr inbounds i64, i64* %52, i64 0
  %54 = load i64, i64* %53, align 8
  %55 = load i64*, i64** %8, align 8
  %56 = getelementptr inbounds i64, i64* %55, i64 1
  %57 = load i64, i64* %56, align 8
  %58 = icmp sgt i64 %54, %57
  br i1 %58, label %59, label %75

59:                                               ; preds = %33
  %60 = load i64*, i64** %8, align 8
  %61 = getelementptr inbounds i64, i64* %60, i64 0
  %62 = load i64, i64* %61, align 8
  %63 = load i64*, i64** %8, align 8
  %64 = getelementptr inbounds i64, i64* %63, i64 2
  %65 = load i64, i64* %64, align 8
  %66 = icmp sgt i64 %62, %65
  br i1 %66, label %67, label %75

67:                                               ; preds = %59
  %68 = load i64*, i64** %7, align 8
  %69 = getelementptr inbounds i64, i64* %68, i64 0
  %70 = load i64, i64* %69, align 8
  %71 = icmp slt i64 %70, 0
  br i1 %71, label %72, label %73

72:                                               ; preds = %67
  store i32 1, i32* %12, align 4
  br label %74

73:                                               ; preds = %67
  store i32 0, i32* %12, align 4
  br label %74

74:                                               ; preds = %73, %72
  br label %108

75:                                               ; preds = %59, %33
  %76 = load i64*, i64** %8, align 8
  %77 = getelementptr inbounds i64, i64* %76, i64 1
  %78 = load i64, i64* %77, align 8
  %79 = load i64*, i64** %8, align 8
  %80 = getelementptr inbounds i64, i64* %79, i64 2
  %81 = load i64, i64* %80, align 8
  %82 = icmp sgt i64 %78, %81
  br i1 %82, label %83, label %99

83:                                               ; preds = %75
  %84 = load i64*, i64** %8, align 8
  %85 = getelementptr inbounds i64, i64* %84, i64 1
  %86 = load i64, i64* %85, align 8
  %87 = load i64*, i64** %8, align 8
  %88 = getelementptr inbounds i64, i64* %87, i64 0
  %89 = load i64, i64* %88, align 8
  %90 = icmp sgt i64 %86, %89
  br i1 %90, label %91, label %99

91:                                               ; preds = %83
  %92 = load i64*, i64** %7, align 8
  %93 = getelementptr inbounds i64, i64* %92, i64 1
  %94 = load i64, i64* %93, align 8
  %95 = icmp slt i64 %94, 0
  br i1 %95, label %96, label %97

96:                                               ; preds = %91
  store i32 3, i32* %12, align 4
  br label %98

97:                                               ; preds = %91
  store i32 2, i32* %12, align 4
  br label %98

98:                                               ; preds = %97, %96
  br label %107

99:                                               ; preds = %83, %75
  %100 = load i64*, i64** %7, align 8
  %101 = getelementptr inbounds i64, i64* %100, i64 2
  %102 = load i64, i64* %101, align 8
  %103 = icmp slt i64 %102, 0
  br i1 %103, label %104, label %105

104:                                              ; preds = %99
  store i32 5, i32* %12, align 4
  br label %106

105:                                              ; preds = %99
  store i32 4, i32* %12, align 4
  br label %106

106:                                              ; preds = %105, %104
  br label %107

107:                                              ; preds = %106, %98
  br label %108

108:                                              ; preds = %107, %74
  store i32 0, i32* %5, align 4
  br label %109

109:                                              ; preds = %277, %108
  %110 = load i32, i32* %5, align 4
  %111 = load i32, i32* %3, align 4
  %112 = icmp slt i32 %110, %111
  br i1 %112, label %113, label %282

113:                                              ; preds = %109
  %114 = load i32, i32* %12, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds [6 x [3 x i32]], [6 x [3 x i32]]* @AddSkyPolygon.vec_to_st, i64 0, i64 %115
  %117 = getelementptr inbounds [3 x i32], [3 x i32]* %116, i64 0, i64 2
  %118 = load i32, i32* %117, align 4
  store i32 %118, i32* %6, align 4
  %119 = load i32, i32* %6, align 4
  %120 = icmp sgt i32 %119, 0
  br i1 %120, label %121, label %129

121:                                              ; preds = %113
  %122 = load i64*, i64** %4, align 8
  %123 = load i32, i32* %6, align 4
  %124 = sub nsw i32 %123, 1
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds i64, i64* %122, i64 %125
  %127 = load i64, i64* %126, align 8
  %128 = sitofp i64 %127 to float
  store float %128, float* %11, align 4
  br label %139

129:                                              ; preds = %113
  %130 = load i64*, i64** %4, align 8
  %131 = load i32, i32* %6, align 4
  %132 = sub nsw i32 0, %131
  %133 = sub nsw i32 %132, 1
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds i64, i64* %130, i64 %134
  %136 = load i64, i64* %135, align 8
  %137 = sub nsw i64 0, %136
  %138 = sitofp i64 %137 to float
  store float %138, float* %11, align 4
  br label %139

139:                                              ; preds = %129, %121
  %140 = load float, float* %11, align 4
  %141 = fpext float %140 to double
  %142 = fcmp olt double %141, 1.000000e-03
  br i1 %142, label %143, label %144

143:                                              ; preds = %139
  br label %277

144:                                              ; preds = %139
  %145 = load i32, i32* %12, align 4
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds [6 x [3 x i32]], [6 x [3 x i32]]* @AddSkyPolygon.vec_to_st, i64 0, i64 %146
  %148 = getelementptr inbounds [3 x i32], [3 x i32]* %147, i64 0, i64 0
  %149 = load i32, i32* %148, align 4
  store i32 %149, i32* %6, align 4
  %150 = load i32, i32* %6, align 4
  %151 = icmp slt i32 %150, 0
  br i1 %151, label %152, label %164

152:                                              ; preds = %144
  %153 = load i64*, i64** %4, align 8
  %154 = load i32, i32* %6, align 4
  %155 = sub nsw i32 0, %154
  %156 = sub nsw i32 %155, 1
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds i64, i64* %153, i64 %157
  %159 = load i64, i64* %158, align 8
  %160 = sub nsw i64 0, %159
  %161 = sitofp i64 %160 to float
  %162 = load float, float* %11, align 4
  %163 = fdiv float %161, %162
  store float %163, float* %9, align 4
  br label %174

164:                                              ; preds = %144
  %165 = load i64*, i64** %4, align 8
  %166 = load i32, i32* %6, align 4
  %167 = sub nsw i32 %166, 1
  %168 = sext i32 %167 to i64
  %169 = getelementptr inbounds i64, i64* %165, i64 %168
  %170 = load i64, i64* %169, align 8
  %171 = sitofp i64 %170 to float
  %172 = load float, float* %11, align 4
  %173 = fdiv float %171, %172
  store float %173, float* %9, align 4
  br label %174

174:                                              ; preds = %164, %152
  %175 = load i32, i32* %12, align 4
  %176 = sext i32 %175 to i64
  %177 = getelementptr inbounds [6 x [3 x i32]], [6 x [3 x i32]]* @AddSkyPolygon.vec_to_st, i64 0, i64 %176
  %178 = getelementptr inbounds [3 x i32], [3 x i32]* %177, i64 0, i64 1
  %179 = load i32, i32* %178, align 4
  store i32 %179, i32* %6, align 4
  %180 = load i32, i32* %6, align 4
  %181 = icmp slt i32 %180, 0
  br i1 %181, label %182, label %194

182:                                              ; preds = %174
  %183 = load i64*, i64** %4, align 8
  %184 = load i32, i32* %6, align 4
  %185 = sub nsw i32 0, %184
  %186 = sub nsw i32 %185, 1
  %187 = sext i32 %186 to i64
  %188 = getelementptr inbounds i64, i64* %183, i64 %187
  %189 = load i64, i64* %188, align 8
  %190 = sub nsw i64 0, %189
  %191 = sitofp i64 %190 to float
  %192 = load float, float* %11, align 4
  %193 = fdiv float %191, %192
  store float %193, float* %10, align 4
  br label %204

194:                                              ; preds = %174
  %195 = load i64*, i64** %4, align 8
  %196 = load i32, i32* %6, align 4
  %197 = sub nsw i32 %196, 1
  %198 = sext i32 %197 to i64
  %199 = getelementptr inbounds i64, i64* %195, i64 %198
  %200 = load i64, i64* %199, align 8
  %201 = sitofp i64 %200 to float
  %202 = load float, float* %11, align 4
  %203 = fdiv float %201, %202
  store float %203, float* %10, align 4
  br label %204

204:                                              ; preds = %194, %182
  %205 = load float, float* %9, align 4
  %206 = load float**, float*** @sky_mins, align 8
  %207 = getelementptr inbounds float*, float** %206, i64 0
  %208 = load float*, float** %207, align 8
  %209 = load i32, i32* %12, align 4
  %210 = sext i32 %209 to i64
  %211 = getelementptr inbounds float, float* %208, i64 %210
  %212 = load float, float* %211, align 4
  %213 = fcmp olt float %205, %212
  br i1 %213, label %214, label %222

214:                                              ; preds = %204
  %215 = load float, float* %9, align 4
  %216 = load float**, float*** @sky_mins, align 8
  %217 = getelementptr inbounds float*, float** %216, i64 0
  %218 = load float*, float** %217, align 8
  %219 = load i32, i32* %12, align 4
  %220 = sext i32 %219 to i64
  %221 = getelementptr inbounds float, float* %218, i64 %220
  store float %215, float* %221, align 4
  br label %222

222:                                              ; preds = %214, %204
  %223 = load float, float* %10, align 4
  %224 = load float**, float*** @sky_mins, align 8
  %225 = getelementptr inbounds float*, float** %224, i64 1
  %226 = load float*, float** %225, align 8
  %227 = load i32, i32* %12, align 4
  %228 = sext i32 %227 to i64
  %229 = getelementptr inbounds float, float* %226, i64 %228
  %230 = load float, float* %229, align 4
  %231 = fcmp olt float %223, %230
  br i1 %231, label %232, label %240

232:                                              ; preds = %222
  %233 = load float, float* %10, align 4
  %234 = load float**, float*** @sky_mins, align 8
  %235 = getelementptr inbounds float*, float** %234, i64 1
  %236 = load float*, float** %235, align 8
  %237 = load i32, i32* %12, align 4
  %238 = sext i32 %237 to i64
  %239 = getelementptr inbounds float, float* %236, i64 %238
  store float %233, float* %239, align 4
  br label %240

240:                                              ; preds = %232, %222
  %241 = load float, float* %9, align 4
  %242 = load float**, float*** @sky_maxs, align 8
  %243 = getelementptr inbounds float*, float** %242, i64 0
  %244 = load float*, float** %243, align 8
  %245 = load i32, i32* %12, align 4
  %246 = sext i32 %245 to i64
  %247 = getelementptr inbounds float, float* %244, i64 %246
  %248 = load float, float* %247, align 4
  %249 = fcmp ogt float %241, %248
  br i1 %249, label %250, label %258

250:                                              ; preds = %240
  %251 = load float, float* %9, align 4
  %252 = load float**, float*** @sky_maxs, align 8
  %253 = getelementptr inbounds float*, float** %252, i64 0
  %254 = load float*, float** %253, align 8
  %255 = load i32, i32* %12, align 4
  %256 = sext i32 %255 to i64
  %257 = getelementptr inbounds float, float* %254, i64 %256
  store float %251, float* %257, align 4
  br label %258

258:                                              ; preds = %250, %240
  %259 = load float, float* %10, align 4
  %260 = load float**, float*** @sky_maxs, align 8
  %261 = getelementptr inbounds float*, float** %260, i64 1
  %262 = load float*, float** %261, align 8
  %263 = load i32, i32* %12, align 4
  %264 = sext i32 %263 to i64
  %265 = getelementptr inbounds float, float* %262, i64 %264
  %266 = load float, float* %265, align 4
  %267 = fcmp ogt float %259, %266
  br i1 %267, label %268, label %276

268:                                              ; preds = %258
  %269 = load float, float* %10, align 4
  %270 = load float**, float*** @sky_maxs, align 8
  %271 = getelementptr inbounds float*, float** %270, i64 1
  %272 = load float*, float** %271, align 8
  %273 = load i32, i32* %12, align 4
  %274 = sext i32 %273 to i64
  %275 = getelementptr inbounds float, float* %272, i64 %274
  store float %269, float* %275, align 4
  br label %276

276:                                              ; preds = %268, %258
  br label %277

277:                                              ; preds = %276, %143
  %278 = load i32, i32* %5, align 4
  %279 = add nsw i32 %278, 1
  store i32 %279, i32* %5, align 4
  %280 = load i64*, i64** %4, align 8
  %281 = getelementptr inbounds i64, i64* %280, i64 3
  store i64* %281, i64** %4, align 8
  br label %109

282:                                              ; preds = %109
  ret void
}

declare dso_local i32 @VectorCopy(i32, i64*) #1

declare dso_local i32 @VectorAdd(float*, i64*, i64*) #1

declare dso_local i64 @fabs(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
