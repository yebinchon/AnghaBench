; ModuleID = '/home/carl/AnghaBench/lab/q3map2/q3map2/extr_decals.c_ProjectDecalOntoPatch.c'
source_filename = "/home/carl/AnghaBench/lab/q3map2/q3map2/extr_decals.c_ProjectDecalOntoPatch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_25__ = type { i64, i32 }
%struct.TYPE_24__ = type { i64** }
%struct.TYPE_23__ = type { i64, i32, i32, i32, %struct.TYPE_20__*, i64 }
%struct.TYPE_20__ = type { i32 }
%struct.TYPE_22__ = type { i32, i32, %struct.TYPE_20__* }
%struct.TYPE_21__ = type { i32, i64** }

@mapplanes = common dso_local global %struct.TYPE_25__* null, align 8
@entityOrigin = common dso_local global i64* null, align 8
@patchSubdivisions = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_24__*, %struct.TYPE_23__*)* @ProjectDecalOntoPatch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ProjectDecalOntoPatch(%struct.TYPE_24__* %0, %struct.TYPE_23__* %1) #0 {
  %3 = alloca %struct.TYPE_24__*, align 8
  %4 = alloca %struct.TYPE_23__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca [5 x i32], align 16
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64*, align 8
  %11 = alloca float, align 4
  %12 = alloca %struct.TYPE_22__, align 8
  %13 = alloca %struct.TYPE_22__*, align 8
  %14 = alloca %struct.TYPE_22__*, align 8
  %15 = alloca %struct.TYPE_21__*, align 8
  store %struct.TYPE_24__* %0, %struct.TYPE_24__** %3, align 8
  store %struct.TYPE_23__* %1, %struct.TYPE_23__** %4, align 8
  %16 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %16, i32 0, i32 5
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %56

20:                                               ; preds = %2
  %21 = load %struct.TYPE_25__*, %struct.TYPE_25__** @mapplanes, align 8
  %22 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %21, i64 %24
  %26 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  %28 = load i64*, i64** %10, align 8
  %29 = call i32 @VectorCopy(i32 %27, i64* %28)
  %30 = load %struct.TYPE_25__*, %struct.TYPE_25__** @mapplanes, align 8
  %31 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %32 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %30, i64 %33
  %35 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = sitofp i64 %36 to float
  %38 = load i64*, i64** %10, align 8
  %39 = load i64*, i64** @entityOrigin, align 8
  %40 = call float @DotProduct(i64* %38, i64* %39)
  %41 = fadd float %37, %40
  %42 = fptosi float %41 to i64
  %43 = load i64*, i64** %10, align 8
  %44 = getelementptr inbounds i64, i64* %43, i64 3
  store i64 %42, i64* %44, align 8
  %45 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %46 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %45, i32 0, i32 0
  %47 = load i64**, i64*** %46, align 8
  %48 = getelementptr inbounds i64*, i64** %47, i64 0
  %49 = load i64*, i64** %48, align 8
  %50 = load i64*, i64** %10, align 8
  %51 = call float @DotProduct(i64* %49, i64* %50)
  store float %51, float* %11, align 4
  %52 = load float, float* %11, align 4
  %53 = fcmp olt float %52, 0xBF1A36E2E0000000
  br i1 %53, label %54, label %55

54:                                               ; preds = %20
  br label %288

55:                                               ; preds = %20
  br label %56

56:                                               ; preds = %55, %2
  %57 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %58 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %12, i32 0, i32 0
  store i32 %59, i32* %60, align 8
  %61 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %62 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 4
  %64 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %12, i32 0, i32 1
  store i32 %63, i32* %64, align 4
  %65 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %66 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %65, i32 0, i32 4
  %67 = load %struct.TYPE_20__*, %struct.TYPE_20__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %12, i32 0, i32 2
  store %struct.TYPE_20__* %67, %struct.TYPE_20__** %68, align 8
  %69 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %70 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %69, i32 0, i32 3
  %71 = load i32, i32* %70, align 8
  %72 = load i32, i32* @patchSubdivisions, align 4
  %73 = call i32 @IterationsForCurve(i32 %71, i32 %72)
  store i32 %73, i32* %9, align 4
  %74 = load i32, i32* %9, align 4
  %75 = bitcast %struct.TYPE_22__* %12 to { i64, %struct.TYPE_20__* }*
  %76 = getelementptr inbounds { i64, %struct.TYPE_20__* }, { i64, %struct.TYPE_20__* }* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = getelementptr inbounds { i64, %struct.TYPE_20__* }, { i64, %struct.TYPE_20__* }* %75, i32 0, i32 1
  %79 = load %struct.TYPE_20__*, %struct.TYPE_20__** %78, align 8
  %80 = call %struct.TYPE_22__* @SubdivideMesh2(i64 %77, %struct.TYPE_20__* %79, i32 %74)
  store %struct.TYPE_22__* %80, %struct.TYPE_22__** %14, align 8
  %81 = load %struct.TYPE_22__*, %struct.TYPE_22__** %14, align 8
  %82 = bitcast %struct.TYPE_22__* %81 to { i64, %struct.TYPE_20__* }*
  %83 = getelementptr inbounds { i64, %struct.TYPE_20__* }, { i64, %struct.TYPE_20__* }* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = getelementptr inbounds { i64, %struct.TYPE_20__* }, { i64, %struct.TYPE_20__* }* %82, i32 0, i32 1
  %86 = load %struct.TYPE_20__*, %struct.TYPE_20__** %85, align 8
  %87 = call i32 @PutMeshOnCurve(i64 %84, %struct.TYPE_20__* %86)
  %88 = load %struct.TYPE_22__*, %struct.TYPE_22__** %14, align 8
  %89 = call %struct.TYPE_22__* @RemoveLinearMeshColumnsRows(%struct.TYPE_22__* %88)
  store %struct.TYPE_22__* %89, %struct.TYPE_22__** %13, align 8
  %90 = load %struct.TYPE_22__*, %struct.TYPE_22__** %14, align 8
  %91 = call i32 @FreeMesh(%struct.TYPE_22__* %90)
  store i32 0, i32* %6, align 4
  br label %92

92:                                               ; preds = %282, %56
  %93 = load i32, i32* %6, align 4
  %94 = load %struct.TYPE_22__*, %struct.TYPE_22__** %13, align 8
  %95 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  %97 = sub nsw i32 %96, 1
  %98 = icmp slt i32 %93, %97
  br i1 %98, label %99, label %285

99:                                               ; preds = %92
  store i32 0, i32* %5, align 4
  br label %100

100:                                              ; preds = %278, %99
  %101 = load i32, i32* %5, align 4
  %102 = load %struct.TYPE_22__*, %struct.TYPE_22__** %13, align 8
  %103 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = sub nsw i32 %104, 1
  %106 = icmp slt i32 %101, %105
  br i1 %106, label %107, label %281

107:                                              ; preds = %100
  %108 = load i32, i32* %5, align 4
  %109 = load i32, i32* %6, align 4
  %110 = load %struct.TYPE_22__*, %struct.TYPE_22__** %13, align 8
  %111 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 8
  %113 = mul nsw i32 %109, %112
  %114 = add nsw i32 %108, %113
  %115 = getelementptr inbounds [5 x i32], [5 x i32]* %7, i64 0, i64 0
  store i32 %114, i32* %115, align 16
  %116 = load i32, i32* %5, align 4
  %117 = load i32, i32* %6, align 4
  %118 = add nsw i32 %117, 1
  %119 = load %struct.TYPE_22__*, %struct.TYPE_22__** %13, align 8
  %120 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 8
  %122 = mul nsw i32 %118, %121
  %123 = add nsw i32 %116, %122
  %124 = getelementptr inbounds [5 x i32], [5 x i32]* %7, i64 0, i64 1
  store i32 %123, i32* %124, align 4
  %125 = load i32, i32* %5, align 4
  %126 = add nsw i32 %125, 1
  %127 = load i32, i32* %6, align 4
  %128 = add nsw i32 %127, 1
  %129 = load %struct.TYPE_22__*, %struct.TYPE_22__** %13, align 8
  %130 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 8
  %132 = mul nsw i32 %128, %131
  %133 = add nsw i32 %126, %132
  %134 = getelementptr inbounds [5 x i32], [5 x i32]* %7, i64 0, i64 2
  store i32 %133, i32* %134, align 8
  %135 = load i32, i32* %5, align 4
  %136 = add nsw i32 %135, 1
  %137 = load i32, i32* %6, align 4
  %138 = load %struct.TYPE_22__*, %struct.TYPE_22__** %13, align 8
  %139 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 8
  %141 = mul nsw i32 %137, %140
  %142 = add nsw i32 %136, %141
  %143 = getelementptr inbounds [5 x i32], [5 x i32]* %7, i64 0, i64 3
  store i32 %142, i32* %143, align 4
  %144 = load i32, i32* %5, align 4
  %145 = load i32, i32* %6, align 4
  %146 = load %struct.TYPE_22__*, %struct.TYPE_22__** %13, align 8
  %147 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 8
  %149 = mul nsw i32 %145, %148
  %150 = add nsw i32 %144, %149
  %151 = getelementptr inbounds [5 x i32], [5 x i32]* %7, i64 0, i64 4
  store i32 %150, i32* %151, align 16
  %152 = load i32, i32* %5, align 4
  %153 = load i32, i32* %6, align 4
  %154 = add nsw i32 %152, %153
  %155 = and i32 %154, 1
  store i32 %155, i32* %8, align 4
  %156 = call %struct.TYPE_21__* @AllocWinding(i32 3)
  store %struct.TYPE_21__* %156, %struct.TYPE_21__** %15, align 8
  %157 = load %struct.TYPE_21__*, %struct.TYPE_21__** %15, align 8
  %158 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %157, i32 0, i32 0
  store i32 3, i32* %158, align 8
  %159 = load %struct.TYPE_22__*, %struct.TYPE_22__** %13, align 8
  %160 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %159, i32 0, i32 2
  %161 = load %struct.TYPE_20__*, %struct.TYPE_20__** %160, align 8
  %162 = load i32, i32* %8, align 4
  %163 = add nsw i32 %162, 0
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds [5 x i32], [5 x i32]* %7, i64 0, i64 %164
  %166 = load i32, i32* %165, align 4
  %167 = sext i32 %166 to i64
  %168 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %161, i64 %167
  %169 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %168, i32 0, i32 0
  %170 = load i32, i32* %169, align 4
  %171 = load %struct.TYPE_21__*, %struct.TYPE_21__** %15, align 8
  %172 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %171, i32 0, i32 1
  %173 = load i64**, i64*** %172, align 8
  %174 = getelementptr inbounds i64*, i64** %173, i64 0
  %175 = load i64*, i64** %174, align 8
  %176 = call i32 @VectorCopy(i32 %170, i64* %175)
  %177 = load %struct.TYPE_22__*, %struct.TYPE_22__** %13, align 8
  %178 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %177, i32 0, i32 2
  %179 = load %struct.TYPE_20__*, %struct.TYPE_20__** %178, align 8
  %180 = load i32, i32* %8, align 4
  %181 = add nsw i32 %180, 1
  %182 = sext i32 %181 to i64
  %183 = getelementptr inbounds [5 x i32], [5 x i32]* %7, i64 0, i64 %182
  %184 = load i32, i32* %183, align 4
  %185 = sext i32 %184 to i64
  %186 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %179, i64 %185
  %187 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %186, i32 0, i32 0
  %188 = load i32, i32* %187, align 4
  %189 = load %struct.TYPE_21__*, %struct.TYPE_21__** %15, align 8
  %190 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %189, i32 0, i32 1
  %191 = load i64**, i64*** %190, align 8
  %192 = getelementptr inbounds i64*, i64** %191, i64 1
  %193 = load i64*, i64** %192, align 8
  %194 = call i32 @VectorCopy(i32 %188, i64* %193)
  %195 = load %struct.TYPE_22__*, %struct.TYPE_22__** %13, align 8
  %196 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %195, i32 0, i32 2
  %197 = load %struct.TYPE_20__*, %struct.TYPE_20__** %196, align 8
  %198 = load i32, i32* %8, align 4
  %199 = add nsw i32 %198, 2
  %200 = sext i32 %199 to i64
  %201 = getelementptr inbounds [5 x i32], [5 x i32]* %7, i64 0, i64 %200
  %202 = load i32, i32* %201, align 4
  %203 = sext i32 %202 to i64
  %204 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %197, i64 %203
  %205 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %204, i32 0, i32 0
  %206 = load i32, i32* %205, align 4
  %207 = load %struct.TYPE_21__*, %struct.TYPE_21__** %15, align 8
  %208 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %207, i32 0, i32 1
  %209 = load i64**, i64*** %208, align 8
  %210 = getelementptr inbounds i64*, i64** %209, i64 2
  %211 = load i64*, i64** %210, align 8
  %212 = call i32 @VectorCopy(i32 %206, i64* %211)
  %213 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %214 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %215 = load %struct.TYPE_21__*, %struct.TYPE_21__** %15, align 8
  %216 = call i32 @ProjectDecalOntoWinding(%struct.TYPE_24__* %213, %struct.TYPE_23__* %214, %struct.TYPE_21__* %215)
  %217 = call %struct.TYPE_21__* @AllocWinding(i32 3)
  store %struct.TYPE_21__* %217, %struct.TYPE_21__** %15, align 8
  %218 = load %struct.TYPE_21__*, %struct.TYPE_21__** %15, align 8
  %219 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %218, i32 0, i32 0
  store i32 3, i32* %219, align 8
  %220 = load %struct.TYPE_22__*, %struct.TYPE_22__** %13, align 8
  %221 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %220, i32 0, i32 2
  %222 = load %struct.TYPE_20__*, %struct.TYPE_20__** %221, align 8
  %223 = load i32, i32* %8, align 4
  %224 = add nsw i32 %223, 0
  %225 = sext i32 %224 to i64
  %226 = getelementptr inbounds [5 x i32], [5 x i32]* %7, i64 0, i64 %225
  %227 = load i32, i32* %226, align 4
  %228 = sext i32 %227 to i64
  %229 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %222, i64 %228
  %230 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %229, i32 0, i32 0
  %231 = load i32, i32* %230, align 4
  %232 = load %struct.TYPE_21__*, %struct.TYPE_21__** %15, align 8
  %233 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %232, i32 0, i32 1
  %234 = load i64**, i64*** %233, align 8
  %235 = getelementptr inbounds i64*, i64** %234, i64 0
  %236 = load i64*, i64** %235, align 8
  %237 = call i32 @VectorCopy(i32 %231, i64* %236)
  %238 = load %struct.TYPE_22__*, %struct.TYPE_22__** %13, align 8
  %239 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %238, i32 0, i32 2
  %240 = load %struct.TYPE_20__*, %struct.TYPE_20__** %239, align 8
  %241 = load i32, i32* %8, align 4
  %242 = add nsw i32 %241, 2
  %243 = sext i32 %242 to i64
  %244 = getelementptr inbounds [5 x i32], [5 x i32]* %7, i64 0, i64 %243
  %245 = load i32, i32* %244, align 4
  %246 = sext i32 %245 to i64
  %247 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %240, i64 %246
  %248 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %247, i32 0, i32 0
  %249 = load i32, i32* %248, align 4
  %250 = load %struct.TYPE_21__*, %struct.TYPE_21__** %15, align 8
  %251 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %250, i32 0, i32 1
  %252 = load i64**, i64*** %251, align 8
  %253 = getelementptr inbounds i64*, i64** %252, i64 1
  %254 = load i64*, i64** %253, align 8
  %255 = call i32 @VectorCopy(i32 %249, i64* %254)
  %256 = load %struct.TYPE_22__*, %struct.TYPE_22__** %13, align 8
  %257 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %256, i32 0, i32 2
  %258 = load %struct.TYPE_20__*, %struct.TYPE_20__** %257, align 8
  %259 = load i32, i32* %8, align 4
  %260 = add nsw i32 %259, 3
  %261 = sext i32 %260 to i64
  %262 = getelementptr inbounds [5 x i32], [5 x i32]* %7, i64 0, i64 %261
  %263 = load i32, i32* %262, align 4
  %264 = sext i32 %263 to i64
  %265 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %258, i64 %264
  %266 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %265, i32 0, i32 0
  %267 = load i32, i32* %266, align 4
  %268 = load %struct.TYPE_21__*, %struct.TYPE_21__** %15, align 8
  %269 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %268, i32 0, i32 1
  %270 = load i64**, i64*** %269, align 8
  %271 = getelementptr inbounds i64*, i64** %270, i64 2
  %272 = load i64*, i64** %271, align 8
  %273 = call i32 @VectorCopy(i32 %267, i64* %272)
  %274 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %275 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %276 = load %struct.TYPE_21__*, %struct.TYPE_21__** %15, align 8
  %277 = call i32 @ProjectDecalOntoWinding(%struct.TYPE_24__* %274, %struct.TYPE_23__* %275, %struct.TYPE_21__* %276)
  br label %278

278:                                              ; preds = %107
  %279 = load i32, i32* %5, align 4
  %280 = add nsw i32 %279, 1
  store i32 %280, i32* %5, align 4
  br label %100

281:                                              ; preds = %100
  br label %282

282:                                              ; preds = %281
  %283 = load i32, i32* %6, align 4
  %284 = add nsw i32 %283, 1
  store i32 %284, i32* %6, align 4
  br label %92

285:                                              ; preds = %92
  %286 = load %struct.TYPE_22__*, %struct.TYPE_22__** %13, align 8
  %287 = call i32 @free(%struct.TYPE_22__* %286)
  br label %288

288:                                              ; preds = %285, %54
  ret void
}

declare dso_local i32 @VectorCopy(i32, i64*) #1

declare dso_local float @DotProduct(i64*, i64*) #1

declare dso_local i32 @IterationsForCurve(i32, i32) #1

declare dso_local %struct.TYPE_22__* @SubdivideMesh2(i64, %struct.TYPE_20__*, i32) #1

declare dso_local i32 @PutMeshOnCurve(i64, %struct.TYPE_20__*) #1

declare dso_local %struct.TYPE_22__* @RemoveLinearMeshColumnsRows(%struct.TYPE_22__*) #1

declare dso_local i32 @FreeMesh(%struct.TYPE_22__*) #1

declare dso_local %struct.TYPE_21__* @AllocWinding(i32) #1

declare dso_local i32 @ProjectDecalOntoWinding(%struct.TYPE_24__*, %struct.TYPE_23__*, %struct.TYPE_21__*) #1

declare dso_local i32 @free(%struct.TYPE_22__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
