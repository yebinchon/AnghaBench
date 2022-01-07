; ModuleID = '/home/carl/AnghaBench/lab/q3map2/q3map2/extr_light_bounce.c_RadLightForPatch.c'
source_filename = "/home/carl/AnghaBench/lab/q3map2/q3map2/extr_light_bounce.c_RadLightForPatch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_25__ = type { i32, i64, i32, i32 }
%struct.TYPE_21__ = type { i32 }
%struct.TYPE_24__ = type { i32**, i32 }
%struct.TYPE_23__ = type { i32, i32, %struct.TYPE_24__* }
%struct.TYPE_22__ = type { i32, %struct.TYPE_24__* }

@bspDrawSurfaces = common dso_local global %struct.TYPE_25__* null, align 8
@surfaceInfos = common dso_local global %struct.TYPE_21__* null, align 8
@yDrawVerts = common dso_local global %struct.TYPE_24__* null, align 8
@PLANAR_EPSILON = common dso_local global i64 0, align 8
@qfalse = common dso_local global i64 0, align 8
@MAX_LIGHTMAPS = common dso_local global i32 0, align 4
@qtrue = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @RadLightForPatch(i32 %0, i32 %1, i32* %2, i32* %3, float %4, float %5, i32* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca float, align 4
  %13 = alloca float, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca [5 x i32], align 16
  %21 = alloca i32, align 4
  %22 = alloca %struct.TYPE_25__*, align 8
  %23 = alloca %struct.TYPE_21__*, align 8
  %24 = alloca %struct.TYPE_24__*, align 8
  %25 = alloca [4 x %struct.TYPE_24__*], align 16
  %26 = alloca %struct.TYPE_23__, align 8
  %27 = alloca %struct.TYPE_23__*, align 8
  %28 = alloca %struct.TYPE_23__*, align 8
  %29 = alloca float*, align 8
  %30 = alloca float, align 4
  %31 = alloca float*, align 8
  %32 = alloca i64, align 8
  %33 = alloca %struct.TYPE_22__, align 8
  store i32 %0, i32* %8, align 4
  store i32 %1, i32* %9, align 4
  store i32* %2, i32** %10, align 8
  store i32* %3, i32** %11, align 8
  store float %4, float* %12, align 4
  store float %5, float* %13, align 4
  store i32* %6, i32** %14, align 8
  %34 = load %struct.TYPE_25__*, %struct.TYPE_25__** @bspDrawSurfaces, align 8
  %35 = load i32, i32* %8, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %34, i64 %36
  store %struct.TYPE_25__* %37, %struct.TYPE_25__** %22, align 8
  %38 = load %struct.TYPE_21__*, %struct.TYPE_21__** @surfaceInfos, align 8
  %39 = load i32, i32* %8, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %38, i64 %40
  store %struct.TYPE_21__* %41, %struct.TYPE_21__** %23, align 8
  %42 = load %struct.TYPE_25__*, %struct.TYPE_25__** %22, align 8
  %43 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = sext i32 %44 to i64
  %46 = mul i64 %45, 16
  %47 = trunc i64 %46 to i32
  %48 = call %struct.TYPE_24__* @safe_malloc(i32 %47)
  store %struct.TYPE_24__* %48, %struct.TYPE_24__** %24, align 8
  %49 = load %struct.TYPE_24__*, %struct.TYPE_24__** %24, align 8
  %50 = load %struct.TYPE_24__*, %struct.TYPE_24__** @yDrawVerts, align 8
  %51 = load %struct.TYPE_25__*, %struct.TYPE_25__** %22, align 8
  %52 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %51, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %50, i64 %53
  %55 = load %struct.TYPE_25__*, %struct.TYPE_25__** %22, align 8
  %56 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = sext i32 %57 to i64
  %59 = mul i64 %58, 16
  %60 = trunc i64 %59 to i32
  %61 = call i32 @memcpy(%struct.TYPE_24__* %49, %struct.TYPE_24__* %54, i32 %60)
  store i32 0, i32* %15, align 4
  br label %62

62:                                               ; preds = %79, %7
  %63 = load i32, i32* %15, align 4
  %64 = load %struct.TYPE_25__*, %struct.TYPE_25__** %22, align 8
  %65 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = icmp slt i32 %63, %66
  br i1 %67, label %68, label %82

68:                                               ; preds = %62
  %69 = load i32, i32* %15, align 4
  %70 = load %struct.TYPE_24__*, %struct.TYPE_24__** %24, align 8
  %71 = load i32, i32* %15, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %70, i64 %72
  %74 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %73, i32 0, i32 0
  %75 = load i32**, i32*** %74, align 8
  %76 = getelementptr inbounds i32*, i32** %75, i64 0
  %77 = load i32*, i32** %76, align 8
  %78 = getelementptr inbounds i32, i32* %77, i64 0
  store i32 %69, i32* %78, align 4
  br label %79

79:                                               ; preds = %68
  %80 = load i32, i32* %15, align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %15, align 4
  br label %62

82:                                               ; preds = %62
  %83 = load %struct.TYPE_25__*, %struct.TYPE_25__** %22, align 8
  %84 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %83, i32 0, i32 2
  %85 = load i32, i32* %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %26, i32 0, i32 0
  store i32 %85, i32* %86, align 8
  %87 = load %struct.TYPE_25__*, %struct.TYPE_25__** %22, align 8
  %88 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %87, i32 0, i32 3
  %89 = load i32, i32* %88, align 4
  %90 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %26, i32 0, i32 1
  store i32 %89, i32* %90, align 4
  %91 = load %struct.TYPE_24__*, %struct.TYPE_24__** %24, align 8
  %92 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %26, i32 0, i32 2
  store %struct.TYPE_24__* %91, %struct.TYPE_24__** %92, align 8
  %93 = load %struct.TYPE_21__*, %struct.TYPE_21__** %23, align 8
  %94 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = bitcast %struct.TYPE_23__* %26 to { i64, %struct.TYPE_24__* }*
  %97 = getelementptr inbounds { i64, %struct.TYPE_24__* }, { i64, %struct.TYPE_24__* }* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = getelementptr inbounds { i64, %struct.TYPE_24__* }, { i64, %struct.TYPE_24__* }* %96, i32 0, i32 1
  %100 = load %struct.TYPE_24__*, %struct.TYPE_24__** %99, align 8
  %101 = call %struct.TYPE_23__* @SubdivideMesh2(i64 %98, %struct.TYPE_24__* %100, i32 %95)
  store %struct.TYPE_23__* %101, %struct.TYPE_23__** %27, align 8
  %102 = load %struct.TYPE_23__*, %struct.TYPE_23__** %27, align 8
  %103 = bitcast %struct.TYPE_23__* %102 to { i64, %struct.TYPE_24__* }*
  %104 = getelementptr inbounds { i64, %struct.TYPE_24__* }, { i64, %struct.TYPE_24__* }* %103, i32 0, i32 0
  %105 = load i64, i64* %104, align 8
  %106 = getelementptr inbounds { i64, %struct.TYPE_24__* }, { i64, %struct.TYPE_24__* }* %103, i32 0, i32 1
  %107 = load %struct.TYPE_24__*, %struct.TYPE_24__** %106, align 8
  %108 = call i32 @PutMeshOnCurve(i64 %105, %struct.TYPE_24__* %107)
  %109 = load %struct.TYPE_23__*, %struct.TYPE_23__** %27, align 8
  %110 = call %struct.TYPE_23__* @RemoveLinearMeshColumnsRows(%struct.TYPE_23__* %109)
  store %struct.TYPE_23__* %110, %struct.TYPE_23__** %28, align 8
  %111 = load %struct.TYPE_23__*, %struct.TYPE_23__** %27, align 8
  %112 = call i32 @FreeMesh(%struct.TYPE_23__* %111)
  %113 = load %struct.TYPE_24__*, %struct.TYPE_24__** %24, align 8
  %114 = call i32 @free(%struct.TYPE_24__* %113)
  store i32 0, i32* %15, align 4
  br label %115

115:                                              ; preds = %158, %82
  %116 = load i32, i32* %15, align 4
  %117 = load %struct.TYPE_23__*, %struct.TYPE_23__** %28, align 8
  %118 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 8
  %120 = load %struct.TYPE_23__*, %struct.TYPE_23__** %28, align 8
  %121 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %120, i32 0, i32 1
  %122 = load i32, i32* %121, align 4
  %123 = mul nsw i32 %119, %122
  %124 = icmp slt i32 %116, %123
  br i1 %124, label %125, label %161

125:                                              ; preds = %115
  %126 = load %struct.TYPE_23__*, %struct.TYPE_23__** %28, align 8
  %127 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %126, i32 0, i32 2
  %128 = load %struct.TYPE_24__*, %struct.TYPE_24__** %127, align 8
  %129 = load i32, i32* %15, align 4
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %128, i64 %130
  %132 = getelementptr inbounds [4 x %struct.TYPE_24__*], [4 x %struct.TYPE_24__*]* %25, i64 0, i64 0
  store %struct.TYPE_24__* %131, %struct.TYPE_24__** %132, align 16
  %133 = getelementptr inbounds [4 x %struct.TYPE_24__*], [4 x %struct.TYPE_24__*]* %25, i64 0, i64 0
  %134 = load %struct.TYPE_24__*, %struct.TYPE_24__** %133, align 16
  %135 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %134, i32 0, i32 0
  %136 = load i32**, i32*** %135, align 8
  %137 = getelementptr inbounds i32*, i32** %136, i64 0
  %138 = load i32*, i32** %137, align 8
  %139 = getelementptr inbounds i32, i32* %138, i64 0
  %140 = load i32, i32* %139, align 4
  %141 = load %struct.TYPE_25__*, %struct.TYPE_25__** %22, align 8
  %142 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 8
  %144 = icmp sge i32 %140, %143
  br i1 %144, label %145, label %157

145:                                              ; preds = %125
  %146 = load %struct.TYPE_25__*, %struct.TYPE_25__** %22, align 8
  %147 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 8
  %149 = sub nsw i32 %148, 1
  %150 = getelementptr inbounds [4 x %struct.TYPE_24__*], [4 x %struct.TYPE_24__*]* %25, i64 0, i64 0
  %151 = load %struct.TYPE_24__*, %struct.TYPE_24__** %150, align 16
  %152 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %151, i32 0, i32 0
  %153 = load i32**, i32*** %152, align 8
  %154 = getelementptr inbounds i32*, i32** %153, i64 0
  %155 = load i32*, i32** %154, align 8
  %156 = getelementptr inbounds i32, i32* %155, i64 0
  store i32 %149, i32* %156, align 4
  br label %157

157:                                              ; preds = %145, %125
  br label %158

158:                                              ; preds = %157
  %159 = load i32, i32* %15, align 4
  %160 = add nsw i32 %159, 1
  store i32 %160, i32* %15, align 4
  br label %115

161:                                              ; preds = %115
  store i32 0, i32* %17, align 4
  br label %162

162:                                              ; preds = %517, %161
  %163 = load i32, i32* %17, align 4
  %164 = load %struct.TYPE_23__*, %struct.TYPE_23__** %28, align 8
  %165 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %164, i32 0, i32 1
  %166 = load i32, i32* %165, align 4
  %167 = sub nsw i32 %166, 1
  %168 = icmp slt i32 %163, %167
  br i1 %168, label %169, label %520

169:                                              ; preds = %162
  store i32 0, i32* %16, align 4
  br label %170

170:                                              ; preds = %513, %169
  %171 = load i32, i32* %16, align 4
  %172 = load %struct.TYPE_23__*, %struct.TYPE_23__** %28, align 8
  %173 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %172, i32 0, i32 0
  %174 = load i32, i32* %173, align 8
  %175 = sub nsw i32 %174, 1
  %176 = icmp slt i32 %171, %175
  br i1 %176, label %177, label %516

177:                                              ; preds = %170
  %178 = load i32, i32* %16, align 4
  %179 = load i32, i32* %17, align 4
  %180 = load %struct.TYPE_23__*, %struct.TYPE_23__** %28, align 8
  %181 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %180, i32 0, i32 0
  %182 = load i32, i32* %181, align 8
  %183 = mul nsw i32 %179, %182
  %184 = add nsw i32 %178, %183
  %185 = getelementptr inbounds [5 x i32], [5 x i32]* %20, i64 0, i64 0
  store i32 %184, i32* %185, align 16
  %186 = load i32, i32* %16, align 4
  %187 = load i32, i32* %17, align 4
  %188 = add nsw i32 %187, 1
  %189 = load %struct.TYPE_23__*, %struct.TYPE_23__** %28, align 8
  %190 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %189, i32 0, i32 0
  %191 = load i32, i32* %190, align 8
  %192 = mul nsw i32 %188, %191
  %193 = add nsw i32 %186, %192
  %194 = getelementptr inbounds [5 x i32], [5 x i32]* %20, i64 0, i64 1
  store i32 %193, i32* %194, align 4
  %195 = load i32, i32* %16, align 4
  %196 = add nsw i32 %195, 1
  %197 = load i32, i32* %17, align 4
  %198 = add nsw i32 %197, 1
  %199 = load %struct.TYPE_23__*, %struct.TYPE_23__** %28, align 8
  %200 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %199, i32 0, i32 0
  %201 = load i32, i32* %200, align 8
  %202 = mul nsw i32 %198, %201
  %203 = add nsw i32 %196, %202
  %204 = getelementptr inbounds [5 x i32], [5 x i32]* %20, i64 0, i64 2
  store i32 %203, i32* %204, align 8
  %205 = load i32, i32* %16, align 4
  %206 = add nsw i32 %205, 1
  %207 = load i32, i32* %17, align 4
  %208 = load %struct.TYPE_23__*, %struct.TYPE_23__** %28, align 8
  %209 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %208, i32 0, i32 0
  %210 = load i32, i32* %209, align 8
  %211 = mul nsw i32 %207, %210
  %212 = add nsw i32 %206, %211
  %213 = getelementptr inbounds [5 x i32], [5 x i32]* %20, i64 0, i64 3
  store i32 %212, i32* %213, align 4
  %214 = load i32, i32* %16, align 4
  %215 = load i32, i32* %17, align 4
  %216 = load %struct.TYPE_23__*, %struct.TYPE_23__** %28, align 8
  %217 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %216, i32 0, i32 0
  %218 = load i32, i32* %217, align 8
  %219 = mul nsw i32 %215, %218
  %220 = add nsw i32 %214, %219
  %221 = getelementptr inbounds [5 x i32], [5 x i32]* %20, i64 0, i64 4
  store i32 %220, i32* %221, align 16
  %222 = load i32, i32* %16, align 4
  %223 = load i32, i32* %17, align 4
  %224 = add nsw i32 %222, %223
  %225 = and i32 %224, 1
  store i32 %225, i32* %21, align 4
  %226 = load %struct.TYPE_23__*, %struct.TYPE_23__** %28, align 8
  %227 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %226, i32 0, i32 2
  %228 = load %struct.TYPE_24__*, %struct.TYPE_24__** %227, align 8
  %229 = load i32, i32* %21, align 4
  %230 = add nsw i32 %229, 0
  %231 = sext i32 %230 to i64
  %232 = getelementptr inbounds [5 x i32], [5 x i32]* %20, i64 0, i64 %231
  %233 = load i32, i32* %232, align 4
  %234 = sext i32 %233 to i64
  %235 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %228, i64 %234
  %236 = getelementptr inbounds [4 x %struct.TYPE_24__*], [4 x %struct.TYPE_24__*]* %25, i64 0, i64 0
  store %struct.TYPE_24__* %235, %struct.TYPE_24__** %236, align 16
  %237 = load %struct.TYPE_23__*, %struct.TYPE_23__** %28, align 8
  %238 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %237, i32 0, i32 2
  %239 = load %struct.TYPE_24__*, %struct.TYPE_24__** %238, align 8
  %240 = load i32, i32* %21, align 4
  %241 = add nsw i32 %240, 1
  %242 = sext i32 %241 to i64
  %243 = getelementptr inbounds [5 x i32], [5 x i32]* %20, i64 0, i64 %242
  %244 = load i32, i32* %243, align 4
  %245 = sext i32 %244 to i64
  %246 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %239, i64 %245
  %247 = getelementptr inbounds [4 x %struct.TYPE_24__*], [4 x %struct.TYPE_24__*]* %25, i64 0, i64 1
  store %struct.TYPE_24__* %246, %struct.TYPE_24__** %247, align 8
  %248 = load %struct.TYPE_23__*, %struct.TYPE_23__** %28, align 8
  %249 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %248, i32 0, i32 2
  %250 = load %struct.TYPE_24__*, %struct.TYPE_24__** %249, align 8
  %251 = load i32, i32* %21, align 4
  %252 = add nsw i32 %251, 2
  %253 = sext i32 %252 to i64
  %254 = getelementptr inbounds [5 x i32], [5 x i32]* %20, i64 0, i64 %253
  %255 = load i32, i32* %254, align 4
  %256 = sext i32 %255 to i64
  %257 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %250, i64 %256
  %258 = getelementptr inbounds [4 x %struct.TYPE_24__*], [4 x %struct.TYPE_24__*]* %25, i64 0, i64 2
  store %struct.TYPE_24__* %257, %struct.TYPE_24__** %258, align 16
  %259 = load %struct.TYPE_23__*, %struct.TYPE_23__** %28, align 8
  %260 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %259, i32 0, i32 2
  %261 = load %struct.TYPE_24__*, %struct.TYPE_24__** %260, align 8
  %262 = load i32, i32* %21, align 4
  %263 = add nsw i32 %262, 3
  %264 = sext i32 %263 to i64
  %265 = getelementptr inbounds [5 x i32], [5 x i32]* %20, i64 0, i64 %264
  %266 = load i32, i32* %265, align 4
  %267 = sext i32 %266 to i64
  %268 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %261, i64 %267
  %269 = getelementptr inbounds [4 x %struct.TYPE_24__*], [4 x %struct.TYPE_24__*]* %25, i64 0, i64 3
  store %struct.TYPE_24__* %268, %struct.TYPE_24__** %269, align 8
  %270 = load float*, float** %31, align 8
  %271 = getelementptr inbounds [4 x %struct.TYPE_24__*], [4 x %struct.TYPE_24__*]* %25, i64 0, i64 0
  %272 = load %struct.TYPE_24__*, %struct.TYPE_24__** %271, align 16
  %273 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %272, i32 0, i32 1
  %274 = load i32, i32* %273, align 8
  %275 = getelementptr inbounds [4 x %struct.TYPE_24__*], [4 x %struct.TYPE_24__*]* %25, i64 0, i64 1
  %276 = load %struct.TYPE_24__*, %struct.TYPE_24__** %275, align 8
  %277 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %276, i32 0, i32 1
  %278 = load i32, i32* %277, align 8
  %279 = getelementptr inbounds [4 x %struct.TYPE_24__*], [4 x %struct.TYPE_24__*]* %25, i64 0, i64 2
  %280 = load %struct.TYPE_24__*, %struct.TYPE_24__** %279, align 16
  %281 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %280, i32 0, i32 1
  %282 = load i32, i32* %281, align 8
  %283 = call i64 @PlaneFromPoints(float* %270, i32 %274, i32 %278, i32 %282)
  store i64 %283, i64* %32, align 8
  %284 = load i64, i64* %32, align 8
  %285 = icmp ne i64 %284, 0
  br i1 %285, label %286, label %304

286:                                              ; preds = %177
  %287 = getelementptr inbounds [4 x %struct.TYPE_24__*], [4 x %struct.TYPE_24__*]* %25, i64 0, i64 1
  %288 = load %struct.TYPE_24__*, %struct.TYPE_24__** %287, align 8
  %289 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %288, i32 0, i32 1
  %290 = load i32, i32* %289, align 8
  %291 = load float*, float** %31, align 8
  %292 = call float @DotProduct(i32 %290, float* %291)
  %293 = load float*, float** %31, align 8
  %294 = getelementptr inbounds float, float* %293, i64 3
  %295 = load float, float* %294, align 4
  %296 = fsub float %292, %295
  store float %296, float* %30, align 4
  %297 = load float, float* %30, align 4
  %298 = call i64 @fabs(float %297)
  %299 = load i64, i64* @PLANAR_EPSILON, align 8
  %300 = icmp sgt i64 %298, %299
  br i1 %300, label %301, label %303

301:                                              ; preds = %286
  %302 = load i64, i64* @qfalse, align 8
  store i64 %302, i64* %32, align 8
  br label %303

303:                                              ; preds = %301, %286
  br label %304

304:                                              ; preds = %303, %177
  %305 = load i64, i64* %32, align 8
  %306 = icmp ne i64 %305, 0
  br i1 %306, label %307, label %400

307:                                              ; preds = %304
  %308 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %33, i32 0, i32 0
  store i32 4, i32* %308, align 8
  store i32 0, i32* %18, align 4
  br label %309

309:                                              ; preds = %387, %307
  %310 = load i32, i32* %18, align 4
  %311 = icmp slt i32 %310, 4
  br i1 %311, label %312, label %390

312:                                              ; preds = %309
  %313 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %33, i32 0, i32 1
  %314 = load %struct.TYPE_24__*, %struct.TYPE_24__** %313, align 8
  %315 = load i32, i32* %18, align 4
  %316 = sext i32 %315 to i64
  %317 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %314, i64 %316
  %318 = load i32, i32* %18, align 4
  %319 = sext i32 %318 to i64
  %320 = getelementptr inbounds [4 x %struct.TYPE_24__*], [4 x %struct.TYPE_24__*]* %25, i64 0, i64 %319
  %321 = load %struct.TYPE_24__*, %struct.TYPE_24__** %320, align 8
  %322 = call i32 @memcpy(%struct.TYPE_24__* %317, %struct.TYPE_24__* %321, i32 16)
  store i32 0, i32* %15, align 4
  br label %323

323:                                              ; preds = %383, %312
  %324 = load i32, i32* %15, align 4
  %325 = load i32, i32* @MAX_LIGHTMAPS, align 4
  %326 = icmp slt i32 %324, %325
  br i1 %326, label %327, label %386

327:                                              ; preds = %323
  %328 = load i32, i32* %15, align 4
  %329 = load %struct.TYPE_25__*, %struct.TYPE_25__** %22, align 8
  %330 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %329, i32 0, i32 1
  %331 = load i64, i64* %330, align 8
  %332 = load i32, i32* %18, align 4
  %333 = sext i32 %332 to i64
  %334 = getelementptr inbounds [4 x %struct.TYPE_24__*], [4 x %struct.TYPE_24__*]* %25, i64 0, i64 %333
  %335 = load %struct.TYPE_24__*, %struct.TYPE_24__** %334, align 8
  %336 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %335, i32 0, i32 0
  %337 = load i32**, i32*** %336, align 8
  %338 = getelementptr inbounds i32*, i32** %337, i64 0
  %339 = load i32*, i32** %338, align 8
  %340 = getelementptr inbounds i32, i32* %339, i64 0
  %341 = load i32, i32* %340, align 4
  %342 = sext i32 %341 to i64
  %343 = add i64 %331, %342
  %344 = call float* @RAD_VERTEX_LUXEL(i32 %328, i64 %343)
  store float* %344, float** %29, align 8
  %345 = load float*, float** %29, align 8
  %346 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %33, i32 0, i32 1
  %347 = load %struct.TYPE_24__*, %struct.TYPE_24__** %346, align 8
  %348 = load i32, i32* %18, align 4
  %349 = sext i32 %348 to i64
  %350 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %347, i64 %349
  %351 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %350, i32 0, i32 0
  %352 = load i32**, i32*** %351, align 8
  %353 = load i32, i32* %15, align 4
  %354 = sext i32 %353 to i64
  %355 = getelementptr inbounds i32*, i32** %352, i64 %354
  %356 = load i32*, i32** %355, align 8
  %357 = bitcast i32* %356 to i64*
  %358 = call i32 @VectorCopy(float* %345, i64* %357)
  %359 = load i32, i32* %18, align 4
  %360 = sext i32 %359 to i64
  %361 = getelementptr inbounds [4 x %struct.TYPE_24__*], [4 x %struct.TYPE_24__*]* %25, i64 0, i64 %360
  %362 = load %struct.TYPE_24__*, %struct.TYPE_24__** %361, align 8
  %363 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %362, i32 0, i32 0
  %364 = load i32**, i32*** %363, align 8
  %365 = load i32, i32* %15, align 4
  %366 = sext i32 %365 to i64
  %367 = getelementptr inbounds i32*, i32** %364, i64 %366
  %368 = load i32*, i32** %367, align 8
  %369 = getelementptr inbounds i32, i32* %368, i64 3
  %370 = load i32, i32* %369, align 4
  %371 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %33, i32 0, i32 1
  %372 = load %struct.TYPE_24__*, %struct.TYPE_24__** %371, align 8
  %373 = load i32, i32* %18, align 4
  %374 = sext i32 %373 to i64
  %375 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %372, i64 %374
  %376 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %375, i32 0, i32 0
  %377 = load i32**, i32*** %376, align 8
  %378 = load i32, i32* %15, align 4
  %379 = sext i32 %378 to i64
  %380 = getelementptr inbounds i32*, i32** %377, i64 %379
  %381 = load i32*, i32** %380, align 8
  %382 = getelementptr inbounds i32, i32* %381, i64 3
  store i32 %370, i32* %382, align 4
  br label %383

383:                                              ; preds = %327
  %384 = load i32, i32* %15, align 4
  %385 = add nsw i32 %384, 1
  store i32 %385, i32* %15, align 4
  br label %323

386:                                              ; preds = %323
  br label %387

387:                                              ; preds = %386
  %388 = load i32, i32* %18, align 4
  %389 = add nsw i32 %388, 1
  store i32 %389, i32* %18, align 4
  br label %309

390:                                              ; preds = %309
  %391 = load i32, i32* %9, align 4
  %392 = load %struct.TYPE_25__*, %struct.TYPE_25__** %22, align 8
  %393 = load i32*, i32** %10, align 8
  %394 = load i32*, i32** %11, align 8
  %395 = load float, float* %12, align 4
  %396 = load float, float* %13, align 4
  %397 = load i32, i32* @qtrue, align 4
  %398 = load i32*, i32** %14, align 8
  %399 = call i32 @RadSubdivideDiffuseLight(i32 %391, %struct.TYPE_25__* %392, i32* %393, i32* %394, float %395, float %396, i32 %397, %struct.TYPE_22__* %33, i32* %398)
  br label %512

400:                                              ; preds = %304
  %401 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %33, i32 0, i32 0
  store i32 3, i32* %401, align 8
  store i32 0, i32* %19, align 4
  br label %402

402:                                              ; preds = %508, %400
  %403 = load i32, i32* %19, align 4
  %404 = icmp slt i32 %403, 2
  br i1 %404, label %405, label %511

405:                                              ; preds = %402
  store i32 0, i32* %18, align 4
  br label %406

406:                                              ; preds = %495, %405
  %407 = load i32, i32* %18, align 4
  %408 = load i32, i32* %19, align 4
  %409 = add nsw i32 3, %408
  %410 = icmp slt i32 %407, %409
  br i1 %410, label %411, label %498

411:                                              ; preds = %406
  %412 = load i32, i32* %18, align 4
  %413 = icmp eq i32 %412, 1
  br i1 %413, label %414, label %420

414:                                              ; preds = %411
  %415 = load i32, i32* %19, align 4
  %416 = icmp eq i32 %415, 1
  br i1 %416, label %417, label %420

417:                                              ; preds = %414
  %418 = load i32, i32* %18, align 4
  %419 = add nsw i32 %418, 1
  store i32 %419, i32* %18, align 4
  br label %420

420:                                              ; preds = %417, %414, %411
  %421 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %33, i32 0, i32 1
  %422 = load %struct.TYPE_24__*, %struct.TYPE_24__** %421, align 8
  %423 = load i32, i32* %18, align 4
  %424 = sext i32 %423 to i64
  %425 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %422, i64 %424
  %426 = load i32, i32* %18, align 4
  %427 = sext i32 %426 to i64
  %428 = getelementptr inbounds [4 x %struct.TYPE_24__*], [4 x %struct.TYPE_24__*]* %25, i64 0, i64 %427
  %429 = load %struct.TYPE_24__*, %struct.TYPE_24__** %428, align 8
  %430 = call i32 @memcpy(%struct.TYPE_24__* %425, %struct.TYPE_24__* %429, i32 16)
  store i32 0, i32* %15, align 4
  br label %431

431:                                              ; preds = %491, %420
  %432 = load i32, i32* %15, align 4
  %433 = load i32, i32* @MAX_LIGHTMAPS, align 4
  %434 = icmp slt i32 %432, %433
  br i1 %434, label %435, label %494

435:                                              ; preds = %431
  %436 = load i32, i32* %15, align 4
  %437 = load %struct.TYPE_25__*, %struct.TYPE_25__** %22, align 8
  %438 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %437, i32 0, i32 1
  %439 = load i64, i64* %438, align 8
  %440 = load i32, i32* %18, align 4
  %441 = sext i32 %440 to i64
  %442 = getelementptr inbounds [4 x %struct.TYPE_24__*], [4 x %struct.TYPE_24__*]* %25, i64 0, i64 %441
  %443 = load %struct.TYPE_24__*, %struct.TYPE_24__** %442, align 8
  %444 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %443, i32 0, i32 0
  %445 = load i32**, i32*** %444, align 8
  %446 = getelementptr inbounds i32*, i32** %445, i64 0
  %447 = load i32*, i32** %446, align 8
  %448 = getelementptr inbounds i32, i32* %447, i64 0
  %449 = load i32, i32* %448, align 4
  %450 = sext i32 %449 to i64
  %451 = add i64 %439, %450
  %452 = call float* @RAD_VERTEX_LUXEL(i32 %436, i64 %451)
  store float* %452, float** %29, align 8
  %453 = load float*, float** %29, align 8
  %454 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %33, i32 0, i32 1
  %455 = load %struct.TYPE_24__*, %struct.TYPE_24__** %454, align 8
  %456 = load i32, i32* %18, align 4
  %457 = sext i32 %456 to i64
  %458 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %455, i64 %457
  %459 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %458, i32 0, i32 0
  %460 = load i32**, i32*** %459, align 8
  %461 = load i32, i32* %15, align 4
  %462 = sext i32 %461 to i64
  %463 = getelementptr inbounds i32*, i32** %460, i64 %462
  %464 = load i32*, i32** %463, align 8
  %465 = bitcast i32* %464 to i64*
  %466 = call i32 @VectorCopy(float* %453, i64* %465)
  %467 = load i32, i32* %18, align 4
  %468 = sext i32 %467 to i64
  %469 = getelementptr inbounds [4 x %struct.TYPE_24__*], [4 x %struct.TYPE_24__*]* %25, i64 0, i64 %468
  %470 = load %struct.TYPE_24__*, %struct.TYPE_24__** %469, align 8
  %471 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %470, i32 0, i32 0
  %472 = load i32**, i32*** %471, align 8
  %473 = load i32, i32* %15, align 4
  %474 = sext i32 %473 to i64
  %475 = getelementptr inbounds i32*, i32** %472, i64 %474
  %476 = load i32*, i32** %475, align 8
  %477 = getelementptr inbounds i32, i32* %476, i64 3
  %478 = load i32, i32* %477, align 4
  %479 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %33, i32 0, i32 1
  %480 = load %struct.TYPE_24__*, %struct.TYPE_24__** %479, align 8
  %481 = load i32, i32* %18, align 4
  %482 = sext i32 %481 to i64
  %483 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %480, i64 %482
  %484 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %483, i32 0, i32 0
  %485 = load i32**, i32*** %484, align 8
  %486 = load i32, i32* %15, align 4
  %487 = sext i32 %486 to i64
  %488 = getelementptr inbounds i32*, i32** %485, i64 %487
  %489 = load i32*, i32** %488, align 8
  %490 = getelementptr inbounds i32, i32* %489, i64 3
  store i32 %478, i32* %490, align 4
  br label %491

491:                                              ; preds = %435
  %492 = load i32, i32* %15, align 4
  %493 = add nsw i32 %492, 1
  store i32 %493, i32* %15, align 4
  br label %431

494:                                              ; preds = %431
  br label %495

495:                                              ; preds = %494
  %496 = load i32, i32* %18, align 4
  %497 = add nsw i32 %496, 1
  store i32 %497, i32* %18, align 4
  br label %406

498:                                              ; preds = %406
  %499 = load i32, i32* %9, align 4
  %500 = load %struct.TYPE_25__*, %struct.TYPE_25__** %22, align 8
  %501 = load i32*, i32** %10, align 8
  %502 = load i32*, i32** %11, align 8
  %503 = load float, float* %12, align 4
  %504 = load float, float* %13, align 4
  %505 = load i32, i32* @qtrue, align 4
  %506 = load i32*, i32** %14, align 8
  %507 = call i32 @RadSubdivideDiffuseLight(i32 %499, %struct.TYPE_25__* %500, i32* %501, i32* %502, float %503, float %504, i32 %505, %struct.TYPE_22__* %33, i32* %506)
  br label %508

508:                                              ; preds = %498
  %509 = load i32, i32* %19, align 4
  %510 = add nsw i32 %509, 1
  store i32 %510, i32* %19, align 4
  br label %402

511:                                              ; preds = %402
  br label %512

512:                                              ; preds = %511, %390
  br label %513

513:                                              ; preds = %512
  %514 = load i32, i32* %16, align 4
  %515 = add nsw i32 %514, 1
  store i32 %515, i32* %16, align 4
  br label %170

516:                                              ; preds = %170
  br label %517

517:                                              ; preds = %516
  %518 = load i32, i32* %17, align 4
  %519 = add nsw i32 %518, 1
  store i32 %519, i32* %17, align 4
  br label %162

520:                                              ; preds = %162
  %521 = load %struct.TYPE_23__*, %struct.TYPE_23__** %28, align 8
  %522 = call i32 @FreeMesh(%struct.TYPE_23__* %521)
  ret void
}

declare dso_local %struct.TYPE_24__* @safe_malloc(i32) #1

declare dso_local i32 @memcpy(%struct.TYPE_24__*, %struct.TYPE_24__*, i32) #1

declare dso_local %struct.TYPE_23__* @SubdivideMesh2(i64, %struct.TYPE_24__*, i32) #1

declare dso_local i32 @PutMeshOnCurve(i64, %struct.TYPE_24__*) #1

declare dso_local %struct.TYPE_23__* @RemoveLinearMeshColumnsRows(%struct.TYPE_23__*) #1

declare dso_local i32 @FreeMesh(%struct.TYPE_23__*) #1

declare dso_local i32 @free(%struct.TYPE_24__*) #1

declare dso_local i64 @PlaneFromPoints(float*, i32, i32, i32) #1

declare dso_local float @DotProduct(i32, float*) #1

declare dso_local i64 @fabs(float) #1

declare dso_local float* @RAD_VERTEX_LUXEL(i32, i64) #1

declare dso_local i32 @VectorCopy(float*, i64*) #1

declare dso_local i32 @RadSubdivideDiffuseLight(i32, %struct.TYPE_25__*, i32*, i32*, float, float, i32, %struct.TYPE_22__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
