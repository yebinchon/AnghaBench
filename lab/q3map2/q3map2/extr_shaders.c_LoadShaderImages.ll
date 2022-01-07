; ModuleID = '/home/carl/AnghaBench/lab/q3map2/q3map2/extr_shaders.c_LoadShaderImages.c'
source_filename = "/home/carl/AnghaBench/lab/q3map2/q3map2/extr_shaders.c_LoadShaderImages.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, float*, i32, %struct.TYPE_6__*, %struct.TYPE_5__*, i32, i32, i32*, i32, i32, i32 }
%struct.TYPE_6__ = type { i32, i32, i64* }
%struct.TYPE_5__ = type { i32 }

@C_NODRAW = common dso_local global i32 0, align 4
@DEFAULT_IMAGE = common dso_local global i32 0, align 4
@warnImage = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [9 x i8] c"noshader\00", align 1
@SYS_WRN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [44 x i8] c"WARNING: Couldn't find image for shader %s\0A\00", align 1
@SYS_VRB = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [25 x i8] c"Shader %s has\0A    NM %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_7__*)* @LoadShaderImages to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @LoadShaderImages(%struct.TYPE_7__* %0) #0 {
  %2 = alloca %struct.TYPE_7__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca [4 x float], align 16
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %2, align 8
  %6 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %7 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = load i32, i32* @C_NODRAW, align 4
  %10 = and i32 %8, %9
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %18

12:                                               ; preds = %1
  %13 = load i32, i32* @DEFAULT_IMAGE, align 4
  %14 = call i8* @ImageLoad(i32 %13)
  %15 = bitcast i8* %14 to %struct.TYPE_5__*
  %16 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %17 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 4
  store %struct.TYPE_5__* %15, %struct.TYPE_5__** %17, align 8
  br label %119

18:                                               ; preds = %1
  %19 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %20 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i32 0, i32 10
  %21 = load i32, i32* %20, align 8
  %22 = call i8* @ImageLoad(i32 %21)
  %23 = bitcast i8* %22 to %struct.TYPE_5__*
  %24 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i32 0, i32 4
  store %struct.TYPE_5__* %23, %struct.TYPE_5__** %25, align 8
  %26 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %26, i32 0, i32 4
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** %27, align 8
  %29 = icmp eq %struct.TYPE_5__* %28, null
  br i1 %29, label %30, label %38

30:                                               ; preds = %18
  %31 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %31, i32 0, i32 6
  %33 = load i32, i32* %32, align 4
  %34 = call i8* @ImageLoad(i32 %33)
  %35 = bitcast i8* %34 to %struct.TYPE_5__*
  %36 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i32 0, i32 4
  store %struct.TYPE_5__* %35, %struct.TYPE_5__** %37, align 8
  br label %38

38:                                               ; preds = %30, %18
  %39 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %39, i32 0, i32 4
  %41 = load %struct.TYPE_5__*, %struct.TYPE_5__** %40, align 8
  %42 = icmp eq %struct.TYPE_5__* %41, null
  br i1 %42, label %43, label %51

43:                                               ; preds = %38
  %44 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %44, i32 0, i32 9
  %46 = load i32, i32* %45, align 4
  %47 = call i8* @ImageLoad(i32 %46)
  %48 = bitcast i8* %47 to %struct.TYPE_5__*
  %49 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %49, i32 0, i32 4
  store %struct.TYPE_5__* %48, %struct.TYPE_5__** %50, align 8
  br label %51

51:                                               ; preds = %43, %38
  %52 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %53 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %52, i32 0, i32 4
  %54 = load %struct.TYPE_5__*, %struct.TYPE_5__** %53, align 8
  %55 = icmp eq %struct.TYPE_5__* %54, null
  br i1 %55, label %56, label %64

56:                                               ; preds = %51
  %57 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %58 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %57, i32 0, i32 8
  %59 = load i32, i32* %58, align 8
  %60 = call i8* @ImageLoad(i32 %59)
  %61 = bitcast i8* %60 to %struct.TYPE_5__*
  %62 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %63 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %62, i32 0, i32 4
  store %struct.TYPE_5__* %61, %struct.TYPE_5__** %63, align 8
  br label %64

64:                                               ; preds = %56, %51
  %65 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %66 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %65, i32 0, i32 4
  %67 = load %struct.TYPE_5__*, %struct.TYPE_5__** %66, align 8
  %68 = icmp eq %struct.TYPE_5__* %67, null
  br i1 %68, label %69, label %90

69:                                               ; preds = %64
  %70 = load i32, i32* @DEFAULT_IMAGE, align 4
  %71 = call i8* @ImageLoad(i32 %70)
  %72 = bitcast i8* %71 to %struct.TYPE_5__*
  %73 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %74 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %73, i32 0, i32 4
  store %struct.TYPE_5__* %72, %struct.TYPE_5__** %74, align 8
  %75 = load i64, i64* @warnImage, align 8
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %89

77:                                               ; preds = %69
  %78 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %79 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %78, i32 0, i32 6
  %80 = load i32, i32* %79, align 4
  %81 = call i64 @strcmp(i32 %80, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %89

83:                                               ; preds = %77
  %84 = load i32, i32* @SYS_WRN, align 4
  %85 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %86 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %85, i32 0, i32 6
  %87 = load i32, i32* %86, align 4
  %88 = call i32 (i32, i8*, i32, ...) @Sys_FPrintf(i32 %84, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0), i32 %87)
  br label %89

89:                                               ; preds = %83, %77, %69
  br label %90

90:                                               ; preds = %89, %64
  %91 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %92 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %91, i32 0, i32 8
  %93 = load i32, i32* %92, align 8
  %94 = call i8* @ImageLoad(i32 %93)
  %95 = bitcast i8* %94 to %struct.TYPE_6__*
  %96 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %97 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %96, i32 0, i32 3
  store %struct.TYPE_6__* %95, %struct.TYPE_6__** %97, align 8
  %98 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %99 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %98, i32 0, i32 5
  %100 = load i32, i32* %99, align 8
  %101 = call i8* @ImageLoad(i32 %100)
  %102 = bitcast i8* %101 to i32*
  %103 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %104 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %103, i32 0, i32 7
  store i32* %102, i32** %104, align 8
  %105 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %106 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %105, i32 0, i32 7
  %107 = load i32*, i32** %106, align 8
  %108 = icmp ne i32* %107, null
  br i1 %108, label %109, label %118

109:                                              ; preds = %90
  %110 = load i32, i32* @SYS_VRB, align 4
  %111 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %112 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %111, i32 0, i32 6
  %113 = load i32, i32* %112, align 4
  %114 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %115 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %114, i32 0, i32 5
  %116 = load i32, i32* %115, align 8
  %117 = call i32 (i32, i8*, i32, ...) @Sys_FPrintf(i32 %110, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i32 %113, i32 %116)
  br label %118

118:                                              ; preds = %109, %90
  br label %119

119:                                              ; preds = %118, %12
  %120 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %121 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %120, i32 0, i32 3
  %122 = load %struct.TYPE_6__*, %struct.TYPE_6__** %121, align 8
  %123 = icmp eq %struct.TYPE_6__* %122, null
  br i1 %123, label %124, label %134

124:                                              ; preds = %119
  %125 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %126 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %125, i32 0, i32 4
  %127 = load %struct.TYPE_5__*, %struct.TYPE_5__** %126, align 8
  %128 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 4
  %130 = call i8* @ImageLoad(i32 %129)
  %131 = bitcast i8* %130 to %struct.TYPE_6__*
  %132 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %133 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %132, i32 0, i32 3
  store %struct.TYPE_6__* %131, %struct.TYPE_6__** %133, align 8
  br label %134

134:                                              ; preds = %124, %119
  %135 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %136 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %135, i32 0, i32 3
  %137 = load %struct.TYPE_6__*, %struct.TYPE_6__** %136, align 8
  %138 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 8
  %140 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %141 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %140, i32 0, i32 3
  %142 = load %struct.TYPE_6__*, %struct.TYPE_6__** %141, align 8
  %143 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %142, i32 0, i32 1
  %144 = load i32, i32* %143, align 4
  %145 = mul nsw i32 %139, %144
  store i32 %145, i32* %4, align 4
  %146 = getelementptr inbounds [4 x float], [4 x float]* %5, i64 0, i64 0
  %147 = call i32 @VectorClear(float* %146)
  %148 = getelementptr inbounds [4 x float], [4 x float]* %5, i64 0, i64 3
  store float 0.000000e+00, float* %148, align 4
  store i32 0, i32* %3, align 4
  br label %149

149:                                              ; preds = %214, %134
  %150 = load i32, i32* %3, align 4
  %151 = load i32, i32* %4, align 4
  %152 = icmp slt i32 %150, %151
  br i1 %152, label %153, label %217

153:                                              ; preds = %149
  %154 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %155 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %154, i32 0, i32 3
  %156 = load %struct.TYPE_6__*, %struct.TYPE_6__** %155, align 8
  %157 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %156, i32 0, i32 2
  %158 = load i64*, i64** %157, align 8
  %159 = load i32, i32* %3, align 4
  %160 = mul nsw i32 %159, 4
  %161 = add nsw i32 %160, 0
  %162 = sext i32 %161 to i64
  %163 = getelementptr inbounds i64, i64* %158, i64 %162
  %164 = load i64, i64* %163, align 8
  %165 = sitofp i64 %164 to float
  %166 = getelementptr inbounds [4 x float], [4 x float]* %5, i64 0, i64 0
  %167 = load float, float* %166, align 16
  %168 = fadd float %167, %165
  store float %168, float* %166, align 16
  %169 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %170 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %169, i32 0, i32 3
  %171 = load %struct.TYPE_6__*, %struct.TYPE_6__** %170, align 8
  %172 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %171, i32 0, i32 2
  %173 = load i64*, i64** %172, align 8
  %174 = load i32, i32* %3, align 4
  %175 = mul nsw i32 %174, 4
  %176 = add nsw i32 %175, 1
  %177 = sext i32 %176 to i64
  %178 = getelementptr inbounds i64, i64* %173, i64 %177
  %179 = load i64, i64* %178, align 8
  %180 = sitofp i64 %179 to float
  %181 = getelementptr inbounds [4 x float], [4 x float]* %5, i64 0, i64 1
  %182 = load float, float* %181, align 4
  %183 = fadd float %182, %180
  store float %183, float* %181, align 4
  %184 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %185 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %184, i32 0, i32 3
  %186 = load %struct.TYPE_6__*, %struct.TYPE_6__** %185, align 8
  %187 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %186, i32 0, i32 2
  %188 = load i64*, i64** %187, align 8
  %189 = load i32, i32* %3, align 4
  %190 = mul nsw i32 %189, 4
  %191 = add nsw i32 %190, 2
  %192 = sext i32 %191 to i64
  %193 = getelementptr inbounds i64, i64* %188, i64 %192
  %194 = load i64, i64* %193, align 8
  %195 = sitofp i64 %194 to float
  %196 = getelementptr inbounds [4 x float], [4 x float]* %5, i64 0, i64 2
  %197 = load float, float* %196, align 8
  %198 = fadd float %197, %195
  store float %198, float* %196, align 8
  %199 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %200 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %199, i32 0, i32 3
  %201 = load %struct.TYPE_6__*, %struct.TYPE_6__** %200, align 8
  %202 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %201, i32 0, i32 2
  %203 = load i64*, i64** %202, align 8
  %204 = load i32, i32* %3, align 4
  %205 = mul nsw i32 %204, 4
  %206 = add nsw i32 %205, 3
  %207 = sext i32 %206 to i64
  %208 = getelementptr inbounds i64, i64* %203, i64 %207
  %209 = load i64, i64* %208, align 8
  %210 = sitofp i64 %209 to float
  %211 = getelementptr inbounds [4 x float], [4 x float]* %5, i64 0, i64 3
  %212 = load float, float* %211, align 4
  %213 = fadd float %212, %210
  store float %213, float* %211, align 4
  br label %214

214:                                              ; preds = %153
  %215 = load i32, i32* %3, align 4
  %216 = add nsw i32 %215, 1
  store i32 %216, i32* %3, align 4
  br label %149

217:                                              ; preds = %149
  %218 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %219 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %218, i32 0, i32 2
  %220 = load i32, i32* %219, align 8
  %221 = call float @VectorLength(i32 %220)
  %222 = fcmp ole float %221, 0.000000e+00
  br i1 %222, label %223, label %229

223:                                              ; preds = %217
  %224 = getelementptr inbounds [4 x float], [4 x float]* %5, i64 0, i64 0
  %225 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %226 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %225, i32 0, i32 2
  %227 = load i32, i32* %226, align 8
  %228 = call i32 @ColorNormalize(float* %224, i32 %227)
  br label %229

229:                                              ; preds = %223, %217
  %230 = getelementptr inbounds [4 x float], [4 x float]* %5, i64 0, i64 0
  %231 = load i32, i32* %4, align 4
  %232 = sitofp i32 %231 to float
  %233 = fdiv float 1.000000e+00, %232
  %234 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %235 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %234, i32 0, i32 1
  %236 = load float*, float** %235, align 8
  %237 = call i32 @VectorScale(float* %230, float %233, float* %236)
  %238 = getelementptr inbounds [4 x float], [4 x float]* %5, i64 0, i64 3
  %239 = load float, float* %238, align 4
  %240 = load i32, i32* %4, align 4
  %241 = sitofp i32 %240 to float
  %242 = fdiv float %239, %241
  %243 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %244 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %243, i32 0, i32 1
  %245 = load float*, float** %244, align 8
  %246 = getelementptr inbounds float, float* %245, i64 3
  store float %242, float* %246, align 4
  ret void
}

declare dso_local i8* @ImageLoad(i32) #1

declare dso_local i64 @strcmp(i32, i8*) #1

declare dso_local i32 @Sys_FPrintf(i32, i8*, i32, ...) #1

declare dso_local i32 @VectorClear(float*) #1

declare dso_local float @VectorLength(i32) #1

declare dso_local i32 @ColorNormalize(float*, i32) #1

declare dso_local i32 @VectorScale(float*, float, float*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
