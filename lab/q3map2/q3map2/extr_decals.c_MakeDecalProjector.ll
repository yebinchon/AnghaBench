; ModuleID = '/home/carl/AnghaBench/lab/q3map2/q3map2/extr_decals.c_MakeDecalProjector.c'
source_filename = "/home/carl/AnghaBench/lab/q3map2/q3map2/extr_decals.c_MakeDecalProjector.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, i32, i32, i32**, i32*, i32, i32, i32* }
%struct.TYPE_11__ = type { i32* }

@numProjectors = common dso_local global i64 0, align 8
@MAX_PROJECTORS = common dso_local global i64 0, align 8
@SYS_WRN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [76 x i8] c"WARNING: MAX_PROJECTORS (%d) exceeded, no more decal projectors available.\0A\00", align 1
@projectors = common dso_local global %struct.TYPE_10__* null, align 8
@vec3_origin = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, float, i32, %struct.TYPE_11__**)* @MakeDecalProjector to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @MakeDecalProjector(i32* %0, i32 %1, float %2, i32 %3, %struct.TYPE_11__** %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca float, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_11__**, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_10__*, align 8
  %15 = alloca i32*, align 8
  store i32* %0, i32** %7, align 8
  store i32 %1, i32* %8, align 4
  store float %2, float* %9, align 4
  store i32 %3, i32* %10, align 4
  store %struct.TYPE_11__** %4, %struct.TYPE_11__*** %11, align 8
  %16 = load i32, i32* %10, align 4
  %17 = icmp ne i32 %16, 3
  br i1 %17, label %18, label %22

18:                                               ; preds = %5
  %19 = load i32, i32* %10, align 4
  %20 = icmp ne i32 %19, 4
  br i1 %20, label %21, label %22

21:                                               ; preds = %18
  store i32 -1, i32* %6, align 4
  br label %259

22:                                               ; preds = %18, %5
  %23 = load i64, i64* @numProjectors, align 8
  %24 = load i64, i64* @MAX_PROJECTORS, align 8
  %25 = icmp uge i64 %23, %24
  br i1 %25, label %26, label %30

26:                                               ; preds = %22
  %27 = load i32, i32* @SYS_WRN, align 4
  %28 = load i64, i64* @MAX_PROJECTORS, align 8
  %29 = call i32 @Sys_FPrintf(i32 %27, i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str, i64 0, i64 0), i64 %28)
  store i32 -2, i32* %6, align 4
  br label %259

30:                                               ; preds = %22
  %31 = load %struct.TYPE_10__*, %struct.TYPE_10__** @projectors, align 8
  %32 = load i64, i64* @numProjectors, align 8
  %33 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %31, i64 %32
  store %struct.TYPE_10__* %33, %struct.TYPE_10__** %14, align 8
  %34 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %35 = call i32 @memset(%struct.TYPE_10__* %34, i32 0, i32 48)
  %36 = load i32*, i32** %7, align 8
  %37 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %38 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %37, i32 0, i32 7
  store i32* %36, i32** %38, align 8
  %39 = load i32, i32* %10, align 4
  %40 = add nsw i32 %39, 2
  %41 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %42 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %41, i32 0, i32 0
  store i32 %40, i32* %42, align 8
  %43 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %44 = load i32, i32* %8, align 4
  %45 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %11, align 8
  %46 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %45, i64 0
  %47 = load %struct.TYPE_11__*, %struct.TYPE_11__** %46, align 8
  %48 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %11, align 8
  %49 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %48, i64 1
  %50 = load %struct.TYPE_11__*, %struct.TYPE_11__** %49, align 8
  %51 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %11, align 8
  %52 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %51, i64 2
  %53 = load %struct.TYPE_11__*, %struct.TYPE_11__** %52, align 8
  %54 = call i32 @MakeTextureMatrix(%struct.TYPE_10__* %43, i32 %44, %struct.TYPE_11__* %47, %struct.TYPE_11__* %50, %struct.TYPE_11__* %53)
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %57, label %56

56:                                               ; preds = %30
  store i32 -1, i32* %6, align 4
  br label %259

57:                                               ; preds = %30
  %58 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %59 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %58, i32 0, i32 6
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %62 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %61, i32 0, i32 5
  %63 = load i32, i32* %62, align 8
  %64 = call i32 @ClearBounds(i32 %60, i32 %63)
  store i32 0, i32* %12, align 4
  br label %65

65:                                               ; preds = %103, %57
  %66 = load i32, i32* %12, align 4
  %67 = load i32, i32* %10, align 4
  %68 = icmp slt i32 %66, %67
  br i1 %68, label %69, label %106

69:                                               ; preds = %65
  %70 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %11, align 8
  %71 = load i32, i32* %12, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %70, i64 %72
  %74 = load %struct.TYPE_11__*, %struct.TYPE_11__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %74, i32 0, i32 0
  %76 = load i32*, i32** %75, align 8
  %77 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %78 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %77, i32 0, i32 6
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %81 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %80, i32 0, i32 5
  %82 = load i32, i32* %81, align 8
  %83 = call i32 @AddPointToBounds(i32* %76, i32 %79, i32 %82)
  %84 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %11, align 8
  %85 = load i32, i32* %12, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %84, i64 %86
  %88 = load %struct.TYPE_11__*, %struct.TYPE_11__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %88, i32 0, i32 0
  %90 = load i32*, i32** %89, align 8
  %91 = load float, float* %9, align 4
  %92 = load i32, i32* %8, align 4
  %93 = load i32*, i32** %15, align 8
  %94 = call i32 @VectorMA(i32* %90, float %91, i32 %92, i32* %93)
  %95 = load i32*, i32** %15, align 8
  %96 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %97 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %96, i32 0, i32 6
  %98 = load i32, i32* %97, align 4
  %99 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %100 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %99, i32 0, i32 5
  %101 = load i32, i32* %100, align 8
  %102 = call i32 @AddPointToBounds(i32* %95, i32 %98, i32 %101)
  br label %103

103:                                              ; preds = %69
  %104 = load i32, i32* %12, align 4
  %105 = add nsw i32 %104, 1
  store i32 %105, i32* %12, align 4
  br label %65

106:                                              ; preds = %65
  %107 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %108 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %107, i32 0, i32 6
  %109 = load i32, i32* %108, align 4
  %110 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %111 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %110, i32 0, i32 5
  %112 = load i32, i32* %111, align 8
  %113 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %114 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %113, i32 0, i32 4
  %115 = load i32*, i32** %114, align 8
  %116 = call i32 @VectorAdd(i32 %109, i32 %112, i32* %115)
  %117 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %118 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %117, i32 0, i32 4
  %119 = load i32*, i32** %118, align 8
  %120 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %121 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %120, i32 0, i32 4
  %122 = load i32*, i32** %121, align 8
  %123 = call i32 @VectorScale(i32* %119, float 5.000000e-01, i32* %122)
  %124 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %125 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %124, i32 0, i32 5
  %126 = load i32, i32* %125, align 8
  %127 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %128 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %127, i32 0, i32 4
  %129 = load i32*, i32** %128, align 8
  %130 = load i32*, i32** %15, align 8
  %131 = call i32 @VectorSubtract(i32 %126, i32* %129, i32* %130)
  %132 = load i32*, i32** %15, align 8
  %133 = call i32 @VectorLength(i32* %132)
  %134 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %135 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %134, i32 0, i32 1
  store i32 %133, i32* %135, align 4
  %136 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %137 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %136, i32 0, i32 1
  %138 = load i32, i32* %137, align 4
  %139 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %140 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %139, i32 0, i32 1
  %141 = load i32, i32* %140, align 4
  %142 = mul nsw i32 %138, %141
  %143 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %144 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %143, i32 0, i32 2
  store i32 %142, i32* %144, align 8
  %145 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %146 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %145, i32 0, i32 3
  %147 = load i32**, i32*** %146, align 8
  %148 = getelementptr inbounds i32*, i32** %147, i64 0
  %149 = load i32*, i32** %148, align 8
  %150 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %11, align 8
  %151 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %150, i64 0
  %152 = load %struct.TYPE_11__*, %struct.TYPE_11__** %151, align 8
  %153 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %152, i32 0, i32 0
  %154 = load i32*, i32** %153, align 8
  %155 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %11, align 8
  %156 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %155, i64 1
  %157 = load %struct.TYPE_11__*, %struct.TYPE_11__** %156, align 8
  %158 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %157, i32 0, i32 0
  %159 = load i32*, i32** %158, align 8
  %160 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %11, align 8
  %161 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %160, i64 2
  %162 = load %struct.TYPE_11__*, %struct.TYPE_11__** %161, align 8
  %163 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %162, i32 0, i32 0
  %164 = load i32*, i32** %163, align 8
  %165 = call i32 @PlaneFromPoints(i32* %149, i32* %154, i32* %159, i32* %164)
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %168, label %167

167:                                              ; preds = %106
  store i32 -1, i32* %6, align 4
  br label %259

168:                                              ; preds = %106
  %169 = load i32, i32* @vec3_origin, align 4
  %170 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %171 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %170, i32 0, i32 3
  %172 = load i32**, i32*** %171, align 8
  %173 = getelementptr inbounds i32*, i32** %172, i64 0
  %174 = load i32*, i32** %173, align 8
  %175 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %176 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %175, i32 0, i32 3
  %177 = load i32**, i32*** %176, align 8
  %178 = getelementptr inbounds i32*, i32** %177, i64 1
  %179 = load i32*, i32** %178, align 8
  %180 = call i32 @VectorSubtract(i32 %169, i32* %174, i32* %179)
  %181 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %11, align 8
  %182 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %181, i64 0
  %183 = load %struct.TYPE_11__*, %struct.TYPE_11__** %182, align 8
  %184 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %183, i32 0, i32 0
  %185 = load i32*, i32** %184, align 8
  %186 = load float, float* %9, align 4
  %187 = load i32, i32* %8, align 4
  %188 = load i32*, i32** %15, align 8
  %189 = call i32 @VectorMA(i32* %185, float %186, i32 %187, i32* %188)
  %190 = load i32*, i32** %15, align 8
  %191 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %192 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %191, i32 0, i32 3
  %193 = load i32**, i32*** %192, align 8
  %194 = getelementptr inbounds i32*, i32** %193, i64 1
  %195 = load i32*, i32** %194, align 8
  %196 = call i32 @DotProduct(i32* %190, i32* %195)
  %197 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %198 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %197, i32 0, i32 3
  %199 = load i32**, i32*** %198, align 8
  %200 = getelementptr inbounds i32*, i32** %199, i64 1
  %201 = load i32*, i32** %200, align 8
  %202 = getelementptr inbounds i32, i32* %201, i64 3
  store i32 %196, i32* %202, align 4
  store i32 0, i32* %12, align 4
  br label %203

203:                                              ; preds = %250, %168
  %204 = load i32, i32* %12, align 4
  %205 = load i32, i32* %10, align 4
  %206 = icmp slt i32 %204, %205
  br i1 %206, label %207, label %253

207:                                              ; preds = %203
  %208 = load i32, i32* %12, align 4
  %209 = add nsw i32 %208, 1
  %210 = load i32, i32* %10, align 4
  %211 = srem i32 %209, %210
  store i32 %211, i32* %13, align 4
  %212 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %11, align 8
  %213 = load i32, i32* %12, align 4
  %214 = sext i32 %213 to i64
  %215 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %212, i64 %214
  %216 = load %struct.TYPE_11__*, %struct.TYPE_11__** %215, align 8
  %217 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %216, i32 0, i32 0
  %218 = load i32*, i32** %217, align 8
  %219 = load float, float* %9, align 4
  %220 = load i32, i32* %8, align 4
  %221 = load i32*, i32** %15, align 8
  %222 = call i32 @VectorMA(i32* %218, float %219, i32 %220, i32* %221)
  %223 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %224 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %223, i32 0, i32 3
  %225 = load i32**, i32*** %224, align 8
  %226 = load i32, i32* %12, align 4
  %227 = add nsw i32 %226, 2
  %228 = sext i32 %227 to i64
  %229 = getelementptr inbounds i32*, i32** %225, i64 %228
  %230 = load i32*, i32** %229, align 8
  %231 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %11, align 8
  %232 = load i32, i32* %13, align 4
  %233 = sext i32 %232 to i64
  %234 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %231, i64 %233
  %235 = load %struct.TYPE_11__*, %struct.TYPE_11__** %234, align 8
  %236 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %235, i32 0, i32 0
  %237 = load i32*, i32** %236, align 8
  %238 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %11, align 8
  %239 = load i32, i32* %12, align 4
  %240 = sext i32 %239 to i64
  %241 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %238, i64 %240
  %242 = load %struct.TYPE_11__*, %struct.TYPE_11__** %241, align 8
  %243 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %242, i32 0, i32 0
  %244 = load i32*, i32** %243, align 8
  %245 = load i32*, i32** %15, align 8
  %246 = call i32 @PlaneFromPoints(i32* %230, i32* %237, i32* %244, i32* %245)
  %247 = icmp ne i32 %246, 0
  br i1 %247, label %249, label %248

248:                                              ; preds = %207
  store i32 -1, i32* %6, align 4
  br label %259

249:                                              ; preds = %207
  br label %250

250:                                              ; preds = %249
  %251 = load i32, i32* %12, align 4
  %252 = add nsw i32 %251, 1
  store i32 %252, i32* %12, align 4
  br label %203

253:                                              ; preds = %203
  %254 = load i64, i64* @numProjectors, align 8
  %255 = add i64 %254, 1
  store i64 %255, i64* @numProjectors, align 8
  %256 = load i64, i64* @numProjectors, align 8
  %257 = sub i64 %256, 1
  %258 = trunc i64 %257 to i32
  store i32 %258, i32* %6, align 4
  br label %259

259:                                              ; preds = %253, %248, %167, %56, %26, %21
  %260 = load i32, i32* %6, align 4
  ret i32 %260
}

declare dso_local i32 @Sys_FPrintf(i32, i8*, i64) #1

declare dso_local i32 @memset(%struct.TYPE_10__*, i32, i32) #1

declare dso_local i32 @MakeTextureMatrix(%struct.TYPE_10__*, i32, %struct.TYPE_11__*, %struct.TYPE_11__*, %struct.TYPE_11__*) #1

declare dso_local i32 @ClearBounds(i32, i32) #1

declare dso_local i32 @AddPointToBounds(i32*, i32, i32) #1

declare dso_local i32 @VectorMA(i32*, float, i32, i32*) #1

declare dso_local i32 @VectorAdd(i32, i32, i32*) #1

declare dso_local i32 @VectorScale(i32*, float, i32*) #1

declare dso_local i32 @VectorSubtract(i32, i32*, i32*) #1

declare dso_local i32 @VectorLength(i32*) #1

declare dso_local i32 @PlaneFromPoints(i32*, i32*, i32*, i32*) #1

declare dso_local i32 @DotProduct(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
