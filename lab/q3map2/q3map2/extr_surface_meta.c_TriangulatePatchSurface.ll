; ModuleID = '/home/carl/AnghaBench/lab/q3map2/q3map2/extr_surface_meta.c_TriangulatePatchSurface.c'
source_filename = "/home/carl/AnghaBench/lab/q3map2/q3map2/extr_surface_meta.c_TriangulatePatchSurface.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { i32, i64, i32, i32, i32*, i64, i32, %struct.TYPE_17__*, i32 }
%struct.TYPE_17__ = type { i32 }
%struct.TYPE_18__ = type { i32, i32, i32 }

@SURFACE_PATCH = common dso_local global i64 0, align 8
@patchMeta = common dso_local global i64 0, align 8
@qfalse = common dso_local global i64 0, align 8
@patchSubdivisions = common dso_local global i32 0, align 4
@SURFACE_META = common dso_local global i64 0, align 8
@C_SOLID = common dso_local global i32 0, align 4
@numPatchMetaSurfaces = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @TriangulatePatchSurface(%struct.TYPE_19__* %0) #0 {
  %2 = alloca %struct.TYPE_19__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca [5 x i32], align 16
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_19__*, align 8
  %9 = alloca %struct.TYPE_18__, align 4
  %10 = alloca %struct.TYPE_18__*, align 8
  %11 = alloca %struct.TYPE_18__*, align 8
  %12 = alloca { i64, i32 }, align 4
  %13 = alloca { i64, i32 }, align 4
  store %struct.TYPE_19__* %0, %struct.TYPE_19__** %2, align 8
  %14 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %15 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %28, label %18

18:                                               ; preds = %1
  %19 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %20 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @SURFACE_PATCH, align 8
  %23 = icmp ne i64 %21, %22
  br i1 %23, label %28, label %24

24:                                               ; preds = %18
  %25 = load i64, i64* @patchMeta, align 8
  %26 = load i64, i64* @qfalse, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %24, %18, %1
  br label %274

29:                                               ; preds = %24
  %30 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %31 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %9, i32 0, i32 0
  store i32 %32, i32* %33, align 4
  %34 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %35 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %34, i32 0, i32 3
  %36 = load i32, i32* %35, align 4
  %37 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %9, i32 0, i32 1
  store i32 %36, i32* %37, align 4
  %38 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %39 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %38, i32 0, i32 6
  %40 = load i32, i32* %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %9, i32 0, i32 2
  store i32 %40, i32* %41, align 4
  %42 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %43 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %42, i32 0, i32 8
  %44 = load i32, i32* %43, align 8
  %45 = load i32, i32* @patchSubdivisions, align 4
  %46 = call i32 @IterationsForCurve(i32 %44, i32 %45)
  store i32 %46, i32* %3, align 4
  %47 = load i32, i32* %3, align 4
  %48 = bitcast { i64, i32 }* %12 to i8*
  %49 = bitcast %struct.TYPE_18__* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %48, i8* align 4 %49, i64 12, i1 false)
  %50 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %12, i32 0, i32 0
  %51 = load i64, i64* %50, align 4
  %52 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %12, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = call %struct.TYPE_18__* @SubdivideMesh2(i64 %51, i32 %53, i32 %47)
  store %struct.TYPE_18__* %54, %struct.TYPE_18__** %10, align 8
  %55 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %56 = bitcast { i64, i32 }* %13 to i8*
  %57 = bitcast %struct.TYPE_18__* %55 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %56, i8* align 4 %57, i64 12, i1 false)
  %58 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %13, i32 0, i32 0
  %59 = load i64, i64* %58, align 4
  %60 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %13, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @PutMeshOnCurve(i64 %59, i32 %61)
  %63 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %64 = call %struct.TYPE_18__* @RemoveLinearMeshColumnsRows(%struct.TYPE_18__* %63)
  store %struct.TYPE_18__* %64, %struct.TYPE_18__** %11, align 8
  %65 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %66 = call i32 @FreeMesh(%struct.TYPE_18__* %65)
  %67 = load i64, i64* @SURFACE_META, align 8
  %68 = call %struct.TYPE_19__* @AllocDrawSurface(i64 %67)
  store %struct.TYPE_19__* %68, %struct.TYPE_19__** %8, align 8
  %69 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %70 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %71 = call i32 @memcpy(%struct.TYPE_19__* %69, %struct.TYPE_19__* %70, i32 64)
  %72 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %73 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %72, i32 0, i32 7
  %74 = load %struct.TYPE_17__*, %struct.TYPE_17__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = load i32, i32* @C_SOLID, align 4
  %78 = and i32 %76, %77
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %83, label %80

80:                                               ; preds = %29
  %81 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %82 = call i32 @ClearSurface(%struct.TYPE_19__* %81)
  br label %83

83:                                               ; preds = %80, %29
  %84 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  store %struct.TYPE_19__* %84, %struct.TYPE_19__** %2, align 8
  %85 = load i64, i64* @SURFACE_META, align 8
  %86 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %87 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %86, i32 0, i32 1
  store i64 %85, i64* %87, align 8
  %88 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %89 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %88, i32 0, i32 5
  store i64 0, i64* %89, align 8
  %90 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %91 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %94 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  %96 = mul nsw i32 %92, %95
  %97 = mul nsw i32 %96, 6
  %98 = sext i32 %97 to i64
  %99 = mul i64 %98, 4
  %100 = trunc i64 %99 to i32
  %101 = call i32* @safe_malloc(i32 %100)
  %102 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %103 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %102, i32 0, i32 4
  store i32* %101, i32** %103, align 8
  %104 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %105 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %108 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 4
  %110 = mul nsw i32 %106, %109
  %111 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %112 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %111, i32 0, i32 0
  store i32 %110, i32* %112, align 8
  %113 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %114 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %113, i32 0, i32 2
  %115 = load i32, i32* %114, align 4
  %116 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %117 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %116, i32 0, i32 6
  store i32 %115, i32* %117, align 8
  store i32 0, i32* %5, align 4
  br label %118

118:                                              ; preds = %264, %83
  %119 = load i32, i32* %5, align 4
  %120 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %121 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %120, i32 0, i32 1
  %122 = load i32, i32* %121, align 4
  %123 = sub nsw i32 %122, 1
  %124 = icmp slt i32 %119, %123
  br i1 %124, label %125, label %267

125:                                              ; preds = %118
  store i32 0, i32* %4, align 4
  br label %126

126:                                              ; preds = %260, %125
  %127 = load i32, i32* %4, align 4
  %128 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %129 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 4
  %131 = sub nsw i32 %130, 1
  %132 = icmp slt i32 %127, %131
  br i1 %132, label %133, label %263

133:                                              ; preds = %126
  %134 = load i32, i32* %4, align 4
  %135 = load i32, i32* %5, align 4
  %136 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %137 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 4
  %139 = mul nsw i32 %135, %138
  %140 = add nsw i32 %134, %139
  %141 = getelementptr inbounds [5 x i32], [5 x i32]* %6, i64 0, i64 0
  store i32 %140, i32* %141, align 16
  %142 = load i32, i32* %4, align 4
  %143 = load i32, i32* %5, align 4
  %144 = add nsw i32 %143, 1
  %145 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %146 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 4
  %148 = mul nsw i32 %144, %147
  %149 = add nsw i32 %142, %148
  %150 = getelementptr inbounds [5 x i32], [5 x i32]* %6, i64 0, i64 1
  store i32 %149, i32* %150, align 4
  %151 = load i32, i32* %4, align 4
  %152 = add nsw i32 %151, 1
  %153 = load i32, i32* %5, align 4
  %154 = add nsw i32 %153, 1
  %155 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %156 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 4
  %158 = mul nsw i32 %154, %157
  %159 = add nsw i32 %152, %158
  %160 = getelementptr inbounds [5 x i32], [5 x i32]* %6, i64 0, i64 2
  store i32 %159, i32* %160, align 8
  %161 = load i32, i32* %4, align 4
  %162 = add nsw i32 %161, 1
  %163 = load i32, i32* %5, align 4
  %164 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %165 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %164, i32 0, i32 0
  %166 = load i32, i32* %165, align 4
  %167 = mul nsw i32 %163, %166
  %168 = add nsw i32 %162, %167
  %169 = getelementptr inbounds [5 x i32], [5 x i32]* %6, i64 0, i64 3
  store i32 %168, i32* %169, align 4
  %170 = load i32, i32* %4, align 4
  %171 = load i32, i32* %5, align 4
  %172 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %173 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %172, i32 0, i32 0
  %174 = load i32, i32* %173, align 4
  %175 = mul nsw i32 %171, %174
  %176 = add nsw i32 %170, %175
  %177 = getelementptr inbounds [5 x i32], [5 x i32]* %6, i64 0, i64 4
  store i32 %176, i32* %177, align 16
  %178 = load i32, i32* %4, align 4
  %179 = load i32, i32* %5, align 4
  %180 = add nsw i32 %178, %179
  %181 = and i32 %180, 1
  store i32 %181, i32* %7, align 4
  %182 = load i32, i32* %7, align 4
  %183 = add nsw i32 %182, 0
  %184 = sext i32 %183 to i64
  %185 = getelementptr inbounds [5 x i32], [5 x i32]* %6, i64 0, i64 %184
  %186 = load i32, i32* %185, align 4
  %187 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %188 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %187, i32 0, i32 4
  %189 = load i32*, i32** %188, align 8
  %190 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %191 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %190, i32 0, i32 5
  %192 = load i64, i64* %191, align 8
  %193 = add nsw i64 %192, 1
  store i64 %193, i64* %191, align 8
  %194 = getelementptr inbounds i32, i32* %189, i64 %192
  store i32 %186, i32* %194, align 4
  %195 = load i32, i32* %7, align 4
  %196 = add nsw i32 %195, 1
  %197 = sext i32 %196 to i64
  %198 = getelementptr inbounds [5 x i32], [5 x i32]* %6, i64 0, i64 %197
  %199 = load i32, i32* %198, align 4
  %200 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %201 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %200, i32 0, i32 4
  %202 = load i32*, i32** %201, align 8
  %203 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %204 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %203, i32 0, i32 5
  %205 = load i64, i64* %204, align 8
  %206 = add nsw i64 %205, 1
  store i64 %206, i64* %204, align 8
  %207 = getelementptr inbounds i32, i32* %202, i64 %205
  store i32 %199, i32* %207, align 4
  %208 = load i32, i32* %7, align 4
  %209 = add nsw i32 %208, 2
  %210 = sext i32 %209 to i64
  %211 = getelementptr inbounds [5 x i32], [5 x i32]* %6, i64 0, i64 %210
  %212 = load i32, i32* %211, align 4
  %213 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %214 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %213, i32 0, i32 4
  %215 = load i32*, i32** %214, align 8
  %216 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %217 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %216, i32 0, i32 5
  %218 = load i64, i64* %217, align 8
  %219 = add nsw i64 %218, 1
  store i64 %219, i64* %217, align 8
  %220 = getelementptr inbounds i32, i32* %215, i64 %218
  store i32 %212, i32* %220, align 4
  %221 = load i32, i32* %7, align 4
  %222 = add nsw i32 %221, 0
  %223 = sext i32 %222 to i64
  %224 = getelementptr inbounds [5 x i32], [5 x i32]* %6, i64 0, i64 %223
  %225 = load i32, i32* %224, align 4
  %226 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %227 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %226, i32 0, i32 4
  %228 = load i32*, i32** %227, align 8
  %229 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %230 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %229, i32 0, i32 5
  %231 = load i64, i64* %230, align 8
  %232 = add nsw i64 %231, 1
  store i64 %232, i64* %230, align 8
  %233 = getelementptr inbounds i32, i32* %228, i64 %231
  store i32 %225, i32* %233, align 4
  %234 = load i32, i32* %7, align 4
  %235 = add nsw i32 %234, 2
  %236 = sext i32 %235 to i64
  %237 = getelementptr inbounds [5 x i32], [5 x i32]* %6, i64 0, i64 %236
  %238 = load i32, i32* %237, align 4
  %239 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %240 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %239, i32 0, i32 4
  %241 = load i32*, i32** %240, align 8
  %242 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %243 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %242, i32 0, i32 5
  %244 = load i64, i64* %243, align 8
  %245 = add nsw i64 %244, 1
  store i64 %245, i64* %243, align 8
  %246 = getelementptr inbounds i32, i32* %241, i64 %244
  store i32 %238, i32* %246, align 4
  %247 = load i32, i32* %7, align 4
  %248 = add nsw i32 %247, 3
  %249 = sext i32 %248 to i64
  %250 = getelementptr inbounds [5 x i32], [5 x i32]* %6, i64 0, i64 %249
  %251 = load i32, i32* %250, align 4
  %252 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %253 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %252, i32 0, i32 4
  %254 = load i32*, i32** %253, align 8
  %255 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %256 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %255, i32 0, i32 5
  %257 = load i64, i64* %256, align 8
  %258 = add nsw i64 %257, 1
  store i64 %258, i64* %256, align 8
  %259 = getelementptr inbounds i32, i32* %254, i64 %257
  store i32 %251, i32* %259, align 4
  br label %260

260:                                              ; preds = %133
  %261 = load i32, i32* %4, align 4
  %262 = add nsw i32 %261, 1
  store i32 %262, i32* %4, align 4
  br label %126

263:                                              ; preds = %126
  br label %264

264:                                              ; preds = %263
  %265 = load i32, i32* %5, align 4
  %266 = add nsw i32 %265, 1
  store i32 %266, i32* %5, align 4
  br label %118

267:                                              ; preds = %118
  %268 = load %struct.TYPE_18__*, %struct.TYPE_18__** %11, align 8
  %269 = call i32 @free(%struct.TYPE_18__* %268)
  %270 = load i32, i32* @numPatchMetaSurfaces, align 4
  %271 = add nsw i32 %270, 1
  store i32 %271, i32* @numPatchMetaSurfaces, align 4
  %272 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  %273 = call i32 @ClassifySurfaces(i32 1, %struct.TYPE_19__* %272)
  br label %274

274:                                              ; preds = %267, %28
  ret void
}

declare dso_local i32 @IterationsForCurve(i32, i32) #1

declare dso_local %struct.TYPE_18__* @SubdivideMesh2(i64, i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @PutMeshOnCurve(i64, i32) #1

declare dso_local %struct.TYPE_18__* @RemoveLinearMeshColumnsRows(%struct.TYPE_18__*) #1

declare dso_local i32 @FreeMesh(%struct.TYPE_18__*) #1

declare dso_local %struct.TYPE_19__* @AllocDrawSurface(i64) #1

declare dso_local i32 @memcpy(%struct.TYPE_19__*, %struct.TYPE_19__*, i32) #1

declare dso_local i32 @ClearSurface(%struct.TYPE_19__*) #1

declare dso_local i32* @safe_malloc(i32) #1

declare dso_local i32 @free(%struct.TYPE_18__*) #1

declare dso_local i32 @ClassifySurfaces(i32, %struct.TYPE_19__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
