; ModuleID = '/home/carl/AnghaBench/lab/q3map2/q3map2/extr_light.c_CreateSunLight.c'
source_filename = "/home/carl/AnghaBench/lab/q3map2/q3map2/extr_light.c_CreateSunLight.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { float, i32, i32*, float, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_8__* }
%struct.TYPE_7__ = type { i32, float, i32*, float, i32, i32*, %struct.TYPE_7__*, i32 }

@numSunLights = common dso_local global i32 0, align 4
@lights = common dso_local global %struct.TYPE_8__* null, align 8
@LIGHT_SUN_DEFAULT = common dso_local global i32 0, align 4
@EMIT_SUN = common dso_local global i32 0, align 4
@falloffTolerance = common dso_local global i32 0, align 4
@noStyles = common dso_local global i64 0, align 8
@LS_NORMAL = common dso_local global i32 0, align 4
@vec3_origin = common dso_local global i32 0, align 4
@MAX_WORLD_COORD = common dso_local global float 0.000000e+00, align 4
@skyScale = common dso_local global float 0.000000e+00, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_7__*)* @CreateSunLight to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @CreateSunLight(%struct.TYPE_7__* %0) #0 {
  %2 = alloca %struct.TYPE_7__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca float, align 4
  %5 = alloca float, align 4
  %6 = alloca float, align 4
  %7 = alloca float, align 4
  %8 = alloca float, align 4
  %9 = alloca float, align 4
  %10 = alloca i32*, align 8
  %11 = alloca %struct.TYPE_8__*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %2, align 8
  %12 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %13 = icmp eq %struct.TYPE_7__* %12, null
  br i1 %13, label %14, label %15

14:                                               ; preds = %1
  br label %235

15:                                               ; preds = %1
  %16 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %17 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = icmp slt i32 %18, 1
  br i1 %19, label %20, label %23

20:                                               ; preds = %15
  %21 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %21, i32 0, i32 0
  store i32 1, i32* %22, align 8
  br label %23

23:                                               ; preds = %20, %15
  %24 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i32 0, i32 1
  %26 = load float, float* %25, align 4
  %27 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = sitofp i32 %29 to float
  %31 = fdiv float %26, %30
  store float %31, float* %4, align 4
  store i32 0, i32* %3, align 4
  br label %32

32:                                               ; preds = %223, %23
  %33 = load i32, i32* %3, align 4
  %34 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = icmp slt i32 %33, %36
  br i1 %37, label %38, label %226

38:                                               ; preds = %32
  %39 = load i32, i32* %3, align 4
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %47

41:                                               ; preds = %38
  %42 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i32 0, i32 2
  %44 = load i32*, i32** %43, align 8
  %45 = load i32*, i32** %10, align 8
  %46 = call i32 @VectorCopy(i32* %44, i32* %45)
  br label %147

47:                                               ; preds = %38
  %48 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %49 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %48, i32 0, i32 2
  %50 = load i32*, i32** %49, align 8
  %51 = getelementptr inbounds i32, i32* %50, i64 0
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %54 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %53, i32 0, i32 2
  %55 = load i32*, i32** %54, align 8
  %56 = getelementptr inbounds i32, i32* %55, i64 0
  %57 = load i32, i32* %56, align 4
  %58 = mul nsw i32 %52, %57
  %59 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %60 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %59, i32 0, i32 2
  %61 = load i32*, i32** %60, align 8
  %62 = getelementptr inbounds i32, i32* %61, i64 1
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %65 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %64, i32 0, i32 2
  %66 = load i32*, i32** %65, align 8
  %67 = getelementptr inbounds i32, i32* %66, i64 1
  %68 = load i32, i32* %67, align 4
  %69 = mul nsw i32 %63, %68
  %70 = add nsw i32 %58, %69
  %71 = call float @sqrt(i32 %70)
  store float %71, float* %5, align 4
  %72 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %73 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %72, i32 0, i32 2
  %74 = load i32*, i32** %73, align 8
  %75 = getelementptr inbounds i32, i32* %74, i64 1
  %76 = load i32, i32* %75, align 4
  %77 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %78 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %77, i32 0, i32 2
  %79 = load i32*, i32** %78, align 8
  %80 = getelementptr inbounds i32, i32* %79, i64 0
  %81 = load i32, i32* %80, align 4
  %82 = sitofp i32 %81 to float
  %83 = call float @atan2(i32 %76, float %82)
  store float %83, float* %6, align 4
  %84 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %85 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %84, i32 0, i32 2
  %86 = load i32*, i32** %85, align 8
  %87 = getelementptr inbounds i32, i32* %86, i64 2
  %88 = load i32, i32* %87, align 4
  %89 = load float, float* %5, align 4
  %90 = call float @atan2(i32 %88, float %89)
  store float %90, float* %7, align 4
  br label %91

91:                                               ; preds = %106, %47
  %92 = call float (...) @Random()
  %93 = fmul float %92, 2.000000e+00
  %94 = fsub float %93, 1.000000e+00
  %95 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %96 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %95, i32 0, i32 3
  %97 = load float, float* %96, align 8
  %98 = fmul float %94, %97
  store float %98, float* %8, align 4
  %99 = call float (...) @Random()
  %100 = fmul float %99, 2.000000e+00
  %101 = fsub float %100, 1.000000e+00
  %102 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %103 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %102, i32 0, i32 3
  %104 = load float, float* %103, align 8
  %105 = fmul float %101, %104
  store float %105, float* %9, align 4
  br label %106

106:                                              ; preds = %91
  %107 = load float, float* %8, align 4
  %108 = load float, float* %8, align 4
  %109 = fmul float %107, %108
  %110 = load float, float* %9, align 4
  %111 = load float, float* %9, align 4
  %112 = fmul float %110, %111
  %113 = fadd float %109, %112
  %114 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %115 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %114, i32 0, i32 3
  %116 = load float, float* %115, align 8
  %117 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %118 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %117, i32 0, i32 3
  %119 = load float, float* %118, align 8
  %120 = fmul float %116, %119
  %121 = fcmp ogt float %113, %120
  br i1 %121, label %91, label %122

122:                                              ; preds = %106
  %123 = load float, float* %8, align 4
  %124 = load float, float* %6, align 4
  %125 = fadd float %124, %123
  store float %125, float* %6, align 4
  %126 = load float, float* %9, align 4
  %127 = load float, float* %7, align 4
  %128 = fadd float %127, %126
  store float %128, float* %7, align 4
  %129 = load float, float* %6, align 4
  %130 = call i32 @cos(float %129)
  %131 = load float, float* %7, align 4
  %132 = call i32 @cos(float %131)
  %133 = mul nsw i32 %130, %132
  %134 = load i32*, i32** %10, align 8
  %135 = getelementptr inbounds i32, i32* %134, i64 0
  store i32 %133, i32* %135, align 4
  %136 = load float, float* %6, align 4
  %137 = call i32 @sin(float %136)
  %138 = load float, float* %7, align 4
  %139 = call i32 @cos(float %138)
  %140 = mul nsw i32 %137, %139
  %141 = load i32*, i32** %10, align 8
  %142 = getelementptr inbounds i32, i32* %141, i64 1
  store i32 %140, i32* %142, align 4
  %143 = load float, float* %7, align 4
  %144 = call i32 @sin(float %143)
  %145 = load i32*, i32** %10, align 8
  %146 = getelementptr inbounds i32, i32* %145, i64 2
  store i32 %144, i32* %146, align 4
  br label %147

147:                                              ; preds = %122, %41
  %148 = load i32, i32* @numSunLights, align 4
  %149 = add nsw i32 %148, 1
  store i32 %149, i32* @numSunLights, align 4
  %150 = call %struct.TYPE_8__* @safe_malloc(i32 56)
  store %struct.TYPE_8__* %150, %struct.TYPE_8__** %11, align 8
  %151 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %152 = call i32 @memset(%struct.TYPE_8__* %151, i32 0, i32 56)
  %153 = load %struct.TYPE_8__*, %struct.TYPE_8__** @lights, align 8
  %154 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %155 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %154, i32 0, i32 11
  store %struct.TYPE_8__* %153, %struct.TYPE_8__** %155, align 8
  %156 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  store %struct.TYPE_8__* %156, %struct.TYPE_8__** @lights, align 8
  %157 = load i32, i32* @LIGHT_SUN_DEFAULT, align 4
  %158 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %159 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %158, i32 0, i32 10
  store i32 %157, i32* %159, align 4
  %160 = load i32, i32* @EMIT_SUN, align 4
  %161 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %162 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %161, i32 0, i32 9
  store i32 %160, i32* %162, align 8
  %163 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %164 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %163, i32 0, i32 0
  store float 1.000000e+00, float* %164, align 8
  %165 = load i32, i32* @falloffTolerance, align 4
  %166 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %167 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %166, i32 0, i32 8
  store i32 %165, i32* %167, align 4
  %168 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %169 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %168, i32 0, i32 4
  %170 = load i32, i32* %169, align 4
  %171 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %172 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %171, i32 0, i32 0
  %173 = load i32, i32* %172, align 8
  %174 = sdiv i32 %170, %173
  %175 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %176 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %175, i32 0, i32 1
  store i32 %174, i32* %176, align 4
  %177 = load i64, i64* @noStyles, align 8
  %178 = icmp ne i64 %177, 0
  br i1 %178, label %179, label %181

179:                                              ; preds = %147
  %180 = load i32, i32* @LS_NORMAL, align 4
  br label %185

181:                                              ; preds = %147
  %182 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %183 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %182, i32 0, i32 7
  %184 = load i32, i32* %183, align 8
  br label %185

185:                                              ; preds = %181, %179
  %186 = phi i32 [ %180, %179 ], [ %184, %181 ]
  %187 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %188 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %187, i32 0, i32 7
  store i32 %186, i32* %188, align 8
  %189 = load i32, i32* @vec3_origin, align 4
  %190 = load float, float* @MAX_WORLD_COORD, align 4
  %191 = fmul float %190, 8.000000e+00
  %192 = load i32*, i32** %10, align 8
  %193 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %194 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %193, i32 0, i32 5
  %195 = load i32, i32* %194, align 8
  %196 = call i32 @VectorMA(i32 %189, float %191, i32* %192, i32 %195)
  %197 = load i32*, i32** %10, align 8
  %198 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %199 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %198, i32 0, i32 4
  %200 = load i32, i32* %199, align 4
  %201 = call i32 @VectorScale(i32* %197, double -1.000000e+00, i32 %200)
  %202 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %203 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %202, i32 0, i32 5
  %204 = load i32, i32* %203, align 8
  %205 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %206 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %205, i32 0, i32 4
  %207 = load i32, i32* %206, align 4
  %208 = call i32 @DotProduct(i32 %204, i32 %207)
  %209 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %210 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %209, i32 0, i32 6
  store i32 %208, i32* %210, align 4
  %211 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %212 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %211, i32 0, i32 5
  %213 = load i32*, i32** %212, align 8
  %214 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %215 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %214, i32 0, i32 2
  %216 = load i32*, i32** %215, align 8
  %217 = call i32 @VectorCopy(i32* %213, i32* %216)
  %218 = load float, float* %4, align 4
  %219 = load float, float* @skyScale, align 4
  %220 = fmul float %218, %219
  %221 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %222 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %221, i32 0, i32 3
  store float %220, float* %222, align 8
  br label %223

223:                                              ; preds = %185
  %224 = load i32, i32* %3, align 4
  %225 = add nsw i32 %224, 1
  store i32 %225, i32* %3, align 4
  br label %32

226:                                              ; preds = %32
  %227 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %228 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %227, i32 0, i32 6
  %229 = load %struct.TYPE_7__*, %struct.TYPE_7__** %228, align 8
  %230 = icmp ne %struct.TYPE_7__* %229, null
  br i1 %230, label %231, label %235

231:                                              ; preds = %226
  %232 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %233 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %232, i32 0, i32 6
  %234 = load %struct.TYPE_7__*, %struct.TYPE_7__** %233, align 8
  call void @CreateSunLight(%struct.TYPE_7__* %234)
  br label %235

235:                                              ; preds = %14, %231, %226
  ret void
}

declare dso_local i32 @VectorCopy(i32*, i32*) #1

declare dso_local float @sqrt(i32) #1

declare dso_local float @atan2(i32, float) #1

declare dso_local float @Random(...) #1

declare dso_local i32 @cos(float) #1

declare dso_local i32 @sin(float) #1

declare dso_local %struct.TYPE_8__* @safe_malloc(i32) #1

declare dso_local i32 @memset(%struct.TYPE_8__*, i32, i32) #1

declare dso_local i32 @VectorMA(i32, float, i32*, i32) #1

declare dso_local i32 @VectorScale(i32*, double, i32) #1

declare dso_local i32 @DotProduct(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
