; ModuleID = '/home/carl/AnghaBench/lab/q3map2/q3map2/extr_light_ydnar.c_SubmapRawLuxel.c'
source_filename = "/home/carl/AnghaBench/lab/q3map2/q3map2/extr_light_ydnar.c_SubmapRawLuxel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, i32 }

@SYS_WRN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"WARNING: Spurious lightmap S vector\0A\00", align 1
@.str.1 = private unnamed_addr constant [37 x i8] c"WARNING: Spurious lightmap T vector\0A\00", align 1
@LUXEL_EPSILON = common dso_local global i32 0, align 4
@qfalse = common dso_local global i32 0, align 4
@qtrue = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_3__*, i32, i32, float, float, i32*, float*, float*)* @SubmapRawLuxel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @SubmapRawLuxel(%struct.TYPE_3__* %0, i32 %1, i32 %2, float %3, float %4, i32* %5, float* %6, float* %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_3__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca float, align 4
  %14 = alloca float, align 4
  %15 = alloca i32*, align 8
  %16 = alloca float*, align 8
  %17 = alloca float*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32*, align 8
  %20 = alloca i32*, align 8
  %21 = alloca float*, align 8
  %22 = alloca float*, align 8
  %23 = alloca float*, align 8
  %24 = alloca [2 x float*], align 16
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %10, align 8
  store i32 %1, i32* %11, align 4
  store i32 %2, i32* %12, align 4
  store float %3, float* %13, align 4
  store float %4, float* %14, align 4
  store i32* %5, i32** %15, align 8
  store float* %6, float** %16, align 8
  store float* %7, float** %17, align 8
  %25 = load i32, i32* %11, align 4
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = sub nsw i32 %28, 1
  %30 = icmp slt i32 %25, %29
  br i1 %30, label %31, label %34

31:                                               ; preds = %8
  %32 = load float, float* %13, align 4
  %33 = fcmp oge float %32, 0.000000e+00
  br i1 %33, label %40, label %34

34:                                               ; preds = %31, %8
  %35 = load i32, i32* %11, align 4
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %65

37:                                               ; preds = %34
  %38 = load float, float* %13, align 4
  %39 = fcmp ole float %38, 0.000000e+00
  br i1 %39, label %40, label %65

40:                                               ; preds = %37, %31
  %41 = load i32, i32* %11, align 4
  %42 = load i32, i32* %12, align 4
  %43 = call i32* @SUPER_CLUSTER(i32 %41, i32 %42)
  store i32* %43, i32** %19, align 8
  %44 = load i32, i32* %11, align 4
  %45 = load i32, i32* %12, align 4
  %46 = call float* @SUPER_ORIGIN(i32 %44, i32 %45)
  store float* %46, float** %21, align 8
  %47 = load i32, i32* %11, align 4
  %48 = add nsw i32 %47, 1
  %49 = load i32, i32* %12, align 4
  %50 = call i32* @SUPER_CLUSTER(i32 %48, i32 %49)
  store i32* %50, i32** %20, align 8
  %51 = load i32*, i32** %20, align 8
  %52 = load i32, i32* %51, align 4
  %53 = icmp slt i32 %52, 0
  br i1 %53, label %54, label %58

54:                                               ; preds = %40
  %55 = load i32, i32* %11, align 4
  %56 = load i32, i32* %12, align 4
  %57 = call float* @SUPER_ORIGIN(i32 %55, i32 %56)
  br label %63

58:                                               ; preds = %40
  %59 = load i32, i32* %11, align 4
  %60 = add nsw i32 %59, 1
  %61 = load i32, i32* %12, align 4
  %62 = call float* @SUPER_ORIGIN(i32 %60, i32 %61)
  br label %63

63:                                               ; preds = %58, %54
  %64 = phi float* [ %57, %54 ], [ %62, %58 ]
  store float* %64, float** %22, align 8
  br label %117

65:                                               ; preds = %37, %34
  %66 = load i32, i32* %11, align 4
  %67 = icmp sgt i32 %66, 0
  br i1 %67, label %68, label %71

68:                                               ; preds = %65
  %69 = load float, float* %13, align 4
  %70 = fcmp ole float %69, 0.000000e+00
  br i1 %70, label %81, label %71

71:                                               ; preds = %68, %65
  %72 = load i32, i32* %11, align 4
  %73 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %74 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = sub nsw i32 %75, 1
  %77 = icmp eq i32 %72, %76
  br i1 %77, label %78, label %106

78:                                               ; preds = %71
  %79 = load float, float* %13, align 4
  %80 = fcmp oge float %79, 0.000000e+00
  br i1 %80, label %81, label %106

81:                                               ; preds = %78, %68
  %82 = load i32, i32* %11, align 4
  %83 = sub nsw i32 %82, 1
  %84 = load i32, i32* %12, align 4
  %85 = call i32* @SUPER_CLUSTER(i32 %83, i32 %84)
  store i32* %85, i32** %19, align 8
  %86 = load i32*, i32** %19, align 8
  %87 = load i32, i32* %86, align 4
  %88 = icmp slt i32 %87, 0
  br i1 %88, label %89, label %93

89:                                               ; preds = %81
  %90 = load i32, i32* %11, align 4
  %91 = load i32, i32* %12, align 4
  %92 = call float* @SUPER_ORIGIN(i32 %90, i32 %91)
  br label %98

93:                                               ; preds = %81
  %94 = load i32, i32* %11, align 4
  %95 = sub nsw i32 %94, 1
  %96 = load i32, i32* %12, align 4
  %97 = call float* @SUPER_ORIGIN(i32 %95, i32 %96)
  br label %98

98:                                               ; preds = %93, %89
  %99 = phi float* [ %92, %89 ], [ %97, %93 ]
  store float* %99, float** %21, align 8
  %100 = load i32, i32* %11, align 4
  %101 = load i32, i32* %12, align 4
  %102 = call i32* @SUPER_CLUSTER(i32 %100, i32 %101)
  store i32* %102, i32** %20, align 8
  %103 = load i32, i32* %11, align 4
  %104 = load i32, i32* %12, align 4
  %105 = call float* @SUPER_ORIGIN(i32 %103, i32 %104)
  store float* %105, float** %22, align 8
  br label %116

106:                                              ; preds = %78, %71
  %107 = load i32, i32* @SYS_WRN, align 4
  %108 = call i32 @Sys_FPrintf(i32 %107, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  %109 = getelementptr inbounds [2 x float*], [2 x float*]* %24, i64 0, i64 0
  %110 = load float*, float** %109, align 16
  %111 = call i32 @VectorClear(float* %110)
  %112 = getelementptr inbounds [2 x float*], [2 x float*]* %24, i64 0, i64 0
  %113 = load float*, float** %112, align 16
  store float* %113, float** %21, align 8
  %114 = getelementptr inbounds [2 x float*], [2 x float*]* %24, i64 0, i64 0
  %115 = load float*, float** %114, align 16
  store float* %115, float** %22, align 8
  br label %116

116:                                              ; preds = %106, %98
  br label %117

117:                                              ; preds = %116, %63
  %118 = load float*, float** %22, align 8
  %119 = load float*, float** %21, align 8
  %120 = getelementptr inbounds [2 x float*], [2 x float*]* %24, i64 0, i64 0
  %121 = load float*, float** %120, align 16
  %122 = call i32 @VectorSubtract(float* %118, float* %119, float* %121)
  %123 = load i32, i32* %12, align 4
  %124 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %125 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %124, i32 0, i32 1
  %126 = load i32, i32* %125, align 4
  %127 = sub nsw i32 %126, 1
  %128 = icmp slt i32 %123, %127
  br i1 %128, label %129, label %132

129:                                              ; preds = %117
  %130 = load float, float* %13, align 4
  %131 = fcmp oge float %130, 0.000000e+00
  br i1 %131, label %138, label %132

132:                                              ; preds = %129, %117
  %133 = load i32, i32* %12, align 4
  %134 = icmp eq i32 %133, 0
  br i1 %134, label %135, label %163

135:                                              ; preds = %132
  %136 = load float, float* %13, align 4
  %137 = fcmp ole float %136, 0.000000e+00
  br i1 %137, label %138, label %163

138:                                              ; preds = %135, %129
  %139 = load i32, i32* %11, align 4
  %140 = load i32, i32* %12, align 4
  %141 = call i32* @SUPER_CLUSTER(i32 %139, i32 %140)
  store i32* %141, i32** %19, align 8
  %142 = load i32, i32* %11, align 4
  %143 = load i32, i32* %12, align 4
  %144 = call float* @SUPER_ORIGIN(i32 %142, i32 %143)
  store float* %144, float** %21, align 8
  %145 = load i32, i32* %11, align 4
  %146 = load i32, i32* %12, align 4
  %147 = add nsw i32 %146, 1
  %148 = call i32* @SUPER_CLUSTER(i32 %145, i32 %147)
  store i32* %148, i32** %20, align 8
  %149 = load i32*, i32** %20, align 8
  %150 = load i32, i32* %149, align 4
  %151 = icmp slt i32 %150, 0
  br i1 %151, label %152, label %156

152:                                              ; preds = %138
  %153 = load i32, i32* %11, align 4
  %154 = load i32, i32* %12, align 4
  %155 = call float* @SUPER_ORIGIN(i32 %153, i32 %154)
  br label %161

156:                                              ; preds = %138
  %157 = load i32, i32* %11, align 4
  %158 = load i32, i32* %12, align 4
  %159 = add nsw i32 %158, 1
  %160 = call float* @SUPER_ORIGIN(i32 %157, i32 %159)
  br label %161

161:                                              ; preds = %156, %152
  %162 = phi float* [ %155, %152 ], [ %160, %156 ]
  store float* %162, float** %22, align 8
  br label %215

163:                                              ; preds = %135, %132
  %164 = load i32, i32* %12, align 4
  %165 = icmp sgt i32 %164, 0
  br i1 %165, label %166, label %169

166:                                              ; preds = %163
  %167 = load float, float* %13, align 4
  %168 = fcmp ole float %167, 0.000000e+00
  br i1 %168, label %179, label %169

169:                                              ; preds = %166, %163
  %170 = load i32, i32* %12, align 4
  %171 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %172 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %171, i32 0, i32 1
  %173 = load i32, i32* %172, align 4
  %174 = sub nsw i32 %173, 1
  %175 = icmp eq i32 %170, %174
  br i1 %175, label %176, label %204

176:                                              ; preds = %169
  %177 = load float, float* %13, align 4
  %178 = fcmp oge float %177, 0.000000e+00
  br i1 %178, label %179, label %204

179:                                              ; preds = %176, %166
  %180 = load i32, i32* %11, align 4
  %181 = load i32, i32* %12, align 4
  %182 = sub nsw i32 %181, 1
  %183 = call i32* @SUPER_CLUSTER(i32 %180, i32 %182)
  store i32* %183, i32** %19, align 8
  %184 = load i32*, i32** %19, align 8
  %185 = load i32, i32* %184, align 4
  %186 = icmp slt i32 %185, 0
  br i1 %186, label %187, label %191

187:                                              ; preds = %179
  %188 = load i32, i32* %11, align 4
  %189 = load i32, i32* %12, align 4
  %190 = call float* @SUPER_ORIGIN(i32 %188, i32 %189)
  br label %196

191:                                              ; preds = %179
  %192 = load i32, i32* %11, align 4
  %193 = load i32, i32* %12, align 4
  %194 = sub nsw i32 %193, 1
  %195 = call float* @SUPER_ORIGIN(i32 %192, i32 %194)
  br label %196

196:                                              ; preds = %191, %187
  %197 = phi float* [ %190, %187 ], [ %195, %191 ]
  store float* %197, float** %21, align 8
  %198 = load i32, i32* %11, align 4
  %199 = load i32, i32* %12, align 4
  %200 = call i32* @SUPER_CLUSTER(i32 %198, i32 %199)
  store i32* %200, i32** %20, align 8
  %201 = load i32, i32* %11, align 4
  %202 = load i32, i32* %12, align 4
  %203 = call float* @SUPER_ORIGIN(i32 %201, i32 %202)
  store float* %203, float** %22, align 8
  br label %214

204:                                              ; preds = %176, %169
  %205 = load i32, i32* @SYS_WRN, align 4
  %206 = call i32 @Sys_FPrintf(i32 %205, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0))
  %207 = getelementptr inbounds [2 x float*], [2 x float*]* %24, i64 0, i64 1
  %208 = load float*, float** %207, align 8
  %209 = call i32 @VectorClear(float* %208)
  %210 = getelementptr inbounds [2 x float*], [2 x float*]* %24, i64 0, i64 1
  %211 = load float*, float** %210, align 8
  store float* %211, float** %21, align 8
  %212 = getelementptr inbounds [2 x float*], [2 x float*]* %24, i64 0, i64 1
  %213 = load float*, float** %212, align 8
  store float* %213, float** %22, align 8
  br label %214

214:                                              ; preds = %204, %196
  br label %215

215:                                              ; preds = %214, %161
  %216 = load float*, float** %22, align 8
  %217 = load float*, float** %21, align 8
  %218 = getelementptr inbounds [2 x float*], [2 x float*]* %24, i64 0, i64 1
  %219 = load float*, float** %218, align 8
  %220 = call i32 @VectorSubtract(float* %216, float* %217, float* %219)
  store i32 0, i32* %18, align 4
  br label %221

221:                                              ; preds = %252, %215
  %222 = load i32, i32* %18, align 4
  %223 = icmp slt i32 %222, 3
  br i1 %223, label %224, label %255

224:                                              ; preds = %221
  %225 = load float*, float** %16, align 8
  %226 = load i32, i32* %18, align 4
  %227 = sext i32 %226 to i64
  %228 = getelementptr inbounds float, float* %225, i64 %227
  %229 = load float, float* %228, align 4
  %230 = load float, float* %13, align 4
  %231 = getelementptr inbounds [2 x float*], [2 x float*]* %24, i64 0, i64 0
  %232 = load float*, float** %231, align 16
  %233 = load i32, i32* %18, align 4
  %234 = sext i32 %233 to i64
  %235 = getelementptr inbounds float, float* %232, i64 %234
  %236 = load float, float* %235, align 4
  %237 = fmul float %230, %236
  %238 = fadd float %229, %237
  %239 = load float, float* %14, align 4
  %240 = getelementptr inbounds [2 x float*], [2 x float*]* %24, i64 0, i64 1
  %241 = load float*, float** %240, align 8
  %242 = load i32, i32* %18, align 4
  %243 = sext i32 %242 to i64
  %244 = getelementptr inbounds float, float* %241, i64 %243
  %245 = load float, float* %244, align 4
  %246 = fmul float %239, %245
  %247 = fadd float %238, %246
  %248 = load float*, float** %16, align 8
  %249 = load i32, i32* %18, align 4
  %250 = sext i32 %249 to i64
  %251 = getelementptr inbounds float, float* %248, i64 %250
  store float %247, float* %251, align 4
  br label %252

252:                                              ; preds = %224
  %253 = load i32, i32* %18, align 4
  %254 = add nsw i32 %253, 1
  store i32 %254, i32* %18, align 4
  br label %221

255:                                              ; preds = %221
  %256 = load float*, float** %16, align 8
  %257 = load i32, i32* @LUXEL_EPSILON, align 4
  %258 = mul nsw i32 %257, 2
  %259 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %260 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %259, i32 0, i32 3
  %261 = load i32, i32* %260, align 4
  %262 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %263 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %262, i32 0, i32 2
  %264 = load i32, i32* %263, align 4
  %265 = call i32 @ClusterForPointExtFilter(float* %256, i32 %258, i32 %261, i32 %264)
  %266 = load i32*, i32** %15, align 8
  store i32 %265, i32* %266, align 4
  %267 = load i32*, i32** %15, align 8
  %268 = load i32, i32* %267, align 4
  %269 = icmp slt i32 %268, 0
  br i1 %269, label %270, label %272

270:                                              ; preds = %255
  %271 = load i32, i32* @qfalse, align 4
  store i32 %271, i32* %9, align 4
  br label %280

272:                                              ; preds = %255
  %273 = load i32, i32* %11, align 4
  %274 = load i32, i32* %12, align 4
  %275 = call float* @SUPER_NORMAL(i32 %273, i32 %274)
  store float* %275, float** %23, align 8
  %276 = load float*, float** %23, align 8
  %277 = load float*, float** %17, align 8
  %278 = call i32 @VectorCopy(float* %276, float* %277)
  %279 = load i32, i32* @qtrue, align 4
  store i32 %279, i32* %9, align 4
  br label %280

280:                                              ; preds = %272, %270
  %281 = load i32, i32* %9, align 4
  ret i32 %281
}

declare dso_local i32* @SUPER_CLUSTER(i32, i32) #1

declare dso_local float* @SUPER_ORIGIN(i32, i32) #1

declare dso_local i32 @Sys_FPrintf(i32, i8*) #1

declare dso_local i32 @VectorClear(float*) #1

declare dso_local i32 @VectorSubtract(float*, float*, float*) #1

declare dso_local i32 @ClusterForPointExtFilter(float*, i32, i32, i32) #1

declare dso_local float* @SUPER_NORMAL(i32, i32) #1

declare dso_local i32 @VectorCopy(float*, float*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
