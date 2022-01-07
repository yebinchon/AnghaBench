; ModuleID = '/home/carl/AnghaBench/lab/q3map2/q3map2/extr_surface_foliage.c_Foliage.c'
source_filename = "/home/carl/AnghaBench/lab/q3map2/q3map2/extr_surface_foliage.c_Foliage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_26__ = type { i32, i32, i64*, i32, i32, i32, i32, %struct.TYPE_28__*, i32, i32, i32, i32, i32, %struct.TYPE_24__* }
%struct.TYPE_28__ = type { i32**, i32, i32 }
%struct.TYPE_24__ = type { %struct.TYPE_27__* }
%struct.TYPE_27__ = type { i32, i32, %struct.TYPE_27__* }
%struct.TYPE_23__ = type { i32, i32 }
%struct.TYPE_25__ = type { i32, i32, %struct.TYPE_28__* }

@numFoliageInstances = common dso_local global i32 0, align 4
@numMapDrawSurfs = common dso_local global i32 0, align 4
@mapDrawSurfs = common dso_local global %struct.TYPE_26__* null, align 8
@SURFACE_FOLIAGE = common dso_local global i32 0, align 4
@foliageInstances = common dso_local global %struct.TYPE_23__* null, align 8
@MAX_LIGHTMAPS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @Foliage(%struct.TYPE_26__* %0) #0 {
  %2 = alloca %struct.TYPE_26__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca [5 x i32], align 16
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_26__*, align 8
  %12 = alloca %struct.TYPE_24__*, align 8
  %13 = alloca %struct.TYPE_27__*, align 8
  %14 = alloca %struct.TYPE_25__, align 8
  %15 = alloca %struct.TYPE_25__*, align 8
  %16 = alloca %struct.TYPE_25__*, align 8
  %17 = alloca %struct.TYPE_28__*, align 8
  %18 = alloca [3 x %struct.TYPE_28__*], align 16
  %19 = alloca %struct.TYPE_28__*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  store %struct.TYPE_26__* %0, %struct.TYPE_26__** %2, align 8
  %22 = load %struct.TYPE_26__*, %struct.TYPE_26__** %2, align 8
  %23 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %22, i32 0, i32 13
  %24 = load %struct.TYPE_24__*, %struct.TYPE_24__** %23, align 8
  store %struct.TYPE_24__* %24, %struct.TYPE_24__** %12, align 8
  %25 = load %struct.TYPE_24__*, %struct.TYPE_24__** %12, align 8
  %26 = icmp eq %struct.TYPE_24__* %25, null
  br i1 %26, label %32, label %27

27:                                               ; preds = %1
  %28 = load %struct.TYPE_24__*, %struct.TYPE_24__** %12, align 8
  %29 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %28, i32 0, i32 0
  %30 = load %struct.TYPE_27__*, %struct.TYPE_27__** %29, align 8
  %31 = icmp eq %struct.TYPE_27__* %30, null
  br i1 %31, label %32, label %33

32:                                               ; preds = %27, %1
  br label %471

33:                                               ; preds = %27
  %34 = load %struct.TYPE_24__*, %struct.TYPE_24__** %12, align 8
  %35 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %34, i32 0, i32 0
  %36 = load %struct.TYPE_27__*, %struct.TYPE_27__** %35, align 8
  store %struct.TYPE_27__* %36, %struct.TYPE_27__** %13, align 8
  br label %37

37:                                               ; preds = %467, %33
  %38 = load %struct.TYPE_27__*, %struct.TYPE_27__** %13, align 8
  %39 = icmp ne %struct.TYPE_27__* %38, null
  br i1 %39, label %40, label %471

40:                                               ; preds = %37
  store i32 0, i32* @numFoliageInstances, align 4
  %41 = load %struct.TYPE_26__*, %struct.TYPE_26__** %2, align 8
  %42 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  switch i32 %43, label %264 [
    i32 130, label %44
    i32 131, label %44
    i32 128, label %44
    i32 129, label %95
  ]

44:                                               ; preds = %40, %40, %40
  %45 = load %struct.TYPE_26__*, %struct.TYPE_26__** %2, align 8
  %46 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %45, i32 0, i32 7
  %47 = load %struct.TYPE_28__*, %struct.TYPE_28__** %46, align 8
  store %struct.TYPE_28__* %47, %struct.TYPE_28__** %17, align 8
  store i32 0, i32* %3, align 4
  br label %48

48:                                               ; preds = %91, %44
  %49 = load i32, i32* %3, align 4
  %50 = load %struct.TYPE_26__*, %struct.TYPE_26__** %2, align 8
  %51 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = icmp slt i32 %49, %52
  br i1 %53, label %54, label %94

54:                                               ; preds = %48
  %55 = load %struct.TYPE_28__*, %struct.TYPE_28__** %17, align 8
  %56 = load %struct.TYPE_26__*, %struct.TYPE_26__** %2, align 8
  %57 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %56, i32 0, i32 2
  %58 = load i64*, i64** %57, align 8
  %59 = load i32, i32* %3, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i64, i64* %58, i64 %60
  %62 = load i64, i64* %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %55, i64 %62
  %64 = getelementptr inbounds [3 x %struct.TYPE_28__*], [3 x %struct.TYPE_28__*]* %18, i64 0, i64 0
  store %struct.TYPE_28__* %63, %struct.TYPE_28__** %64, align 16
  %65 = load %struct.TYPE_28__*, %struct.TYPE_28__** %17, align 8
  %66 = load %struct.TYPE_26__*, %struct.TYPE_26__** %2, align 8
  %67 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %66, i32 0, i32 2
  %68 = load i64*, i64** %67, align 8
  %69 = load i32, i32* %3, align 4
  %70 = add nsw i32 %69, 1
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i64, i64* %68, i64 %71
  %73 = load i64, i64* %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %65, i64 %73
  %75 = getelementptr inbounds [3 x %struct.TYPE_28__*], [3 x %struct.TYPE_28__*]* %18, i64 0, i64 1
  store %struct.TYPE_28__* %74, %struct.TYPE_28__** %75, align 8
  %76 = load %struct.TYPE_28__*, %struct.TYPE_28__** %17, align 8
  %77 = load %struct.TYPE_26__*, %struct.TYPE_26__** %2, align 8
  %78 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %77, i32 0, i32 2
  %79 = load i64*, i64** %78, align 8
  %80 = load i32, i32* %3, align 4
  %81 = add nsw i32 %80, 2
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds i64, i64* %79, i64 %82
  %84 = load i64, i64* %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %76, i64 %84
  %86 = getelementptr inbounds [3 x %struct.TYPE_28__*], [3 x %struct.TYPE_28__*]* %18, i64 0, i64 2
  store %struct.TYPE_28__* %85, %struct.TYPE_28__** %86, align 16
  %87 = load %struct.TYPE_26__*, %struct.TYPE_26__** %2, align 8
  %88 = load %struct.TYPE_27__*, %struct.TYPE_27__** %13, align 8
  %89 = getelementptr inbounds [3 x %struct.TYPE_28__*], [3 x %struct.TYPE_28__*]* %18, i64 0, i64 0
  %90 = call i32 @SubdivideFoliageTriangle_r(%struct.TYPE_26__* %87, %struct.TYPE_27__* %88, %struct.TYPE_28__** %89)
  br label %91

91:                                               ; preds = %54
  %92 = load i32, i32* %3, align 4
  %93 = add nsw i32 %92, 3
  store i32 %93, i32* %3, align 4
  br label %48

94:                                               ; preds = %48
  br label %265

95:                                               ; preds = %40
  %96 = load %struct.TYPE_26__*, %struct.TYPE_26__** %2, align 8
  %97 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %96, i32 0, i32 3
  %98 = load i32, i32* %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %14, i32 0, i32 0
  store i32 %98, i32* %99, align 8
  %100 = load %struct.TYPE_26__*, %struct.TYPE_26__** %2, align 8
  %101 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %100, i32 0, i32 4
  %102 = load i32, i32* %101, align 4
  %103 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %14, i32 0, i32 1
  store i32 %102, i32* %103, align 4
  %104 = load %struct.TYPE_26__*, %struct.TYPE_26__** %2, align 8
  %105 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %104, i32 0, i32 7
  %106 = load %struct.TYPE_28__*, %struct.TYPE_28__** %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %14, i32 0, i32 2
  store %struct.TYPE_28__* %106, %struct.TYPE_28__** %107, align 8
  %108 = bitcast %struct.TYPE_25__* %14 to { i64, %struct.TYPE_28__* }*
  %109 = getelementptr inbounds { i64, %struct.TYPE_28__* }, { i64, %struct.TYPE_28__* }* %108, i32 0, i32 0
  %110 = load i64, i64* %109, align 8
  %111 = getelementptr inbounds { i64, %struct.TYPE_28__* }, { i64, %struct.TYPE_28__* }* %108, i32 0, i32 1
  %112 = load %struct.TYPE_28__*, %struct.TYPE_28__** %111, align 8
  %113 = call %struct.TYPE_25__* @SubdivideMesh(i64 %110, %struct.TYPE_28__* %112, i32 8, i32 512)
  store %struct.TYPE_25__* %113, %struct.TYPE_25__** %15, align 8
  %114 = load %struct.TYPE_25__*, %struct.TYPE_25__** %15, align 8
  %115 = bitcast %struct.TYPE_25__* %114 to { i64, %struct.TYPE_28__* }*
  %116 = getelementptr inbounds { i64, %struct.TYPE_28__* }, { i64, %struct.TYPE_28__* }* %115, i32 0, i32 0
  %117 = load i64, i64* %116, align 8
  %118 = getelementptr inbounds { i64, %struct.TYPE_28__* }, { i64, %struct.TYPE_28__* }* %115, i32 0, i32 1
  %119 = load %struct.TYPE_28__*, %struct.TYPE_28__** %118, align 8
  %120 = call i32 @PutMeshOnCurve(i64 %117, %struct.TYPE_28__* %119)
  %121 = load %struct.TYPE_25__*, %struct.TYPE_25__** %15, align 8
  %122 = call %struct.TYPE_25__* @RemoveLinearMeshColumnsRows(%struct.TYPE_25__* %121)
  store %struct.TYPE_25__* %122, %struct.TYPE_25__** %16, align 8
  %123 = load %struct.TYPE_25__*, %struct.TYPE_25__** %15, align 8
  %124 = call i32 @FreeMesh(%struct.TYPE_25__* %123)
  %125 = load %struct.TYPE_25__*, %struct.TYPE_25__** %16, align 8
  %126 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %125, i32 0, i32 2
  %127 = load %struct.TYPE_28__*, %struct.TYPE_28__** %126, align 8
  store %struct.TYPE_28__* %127, %struct.TYPE_28__** %17, align 8
  store i32 0, i32* %7, align 4
  br label %128

128:                                              ; preds = %258, %95
  %129 = load i32, i32* %7, align 4
  %130 = load %struct.TYPE_25__*, %struct.TYPE_25__** %16, align 8
  %131 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %130, i32 0, i32 1
  %132 = load i32, i32* %131, align 4
  %133 = sub nsw i32 %132, 1
  %134 = icmp slt i32 %129, %133
  br i1 %134, label %135, label %261

135:                                              ; preds = %128
  store i32 0, i32* %6, align 4
  br label %136

136:                                              ; preds = %254, %135
  %137 = load i32, i32* %6, align 4
  %138 = load %struct.TYPE_25__*, %struct.TYPE_25__** %16, align 8
  %139 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 8
  %141 = sub nsw i32 %140, 1
  %142 = icmp slt i32 %137, %141
  br i1 %142, label %143, label %257

143:                                              ; preds = %136
  %144 = load i32, i32* %6, align 4
  %145 = load i32, i32* %7, align 4
  %146 = load %struct.TYPE_25__*, %struct.TYPE_25__** %16, align 8
  %147 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 8
  %149 = mul nsw i32 %145, %148
  %150 = add nsw i32 %144, %149
  %151 = getelementptr inbounds [5 x i32], [5 x i32]* %8, i64 0, i64 0
  store i32 %150, i32* %151, align 16
  %152 = load i32, i32* %6, align 4
  %153 = load i32, i32* %7, align 4
  %154 = add nsw i32 %153, 1
  %155 = load %struct.TYPE_25__*, %struct.TYPE_25__** %16, align 8
  %156 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 8
  %158 = mul nsw i32 %154, %157
  %159 = add nsw i32 %152, %158
  %160 = getelementptr inbounds [5 x i32], [5 x i32]* %8, i64 0, i64 1
  store i32 %159, i32* %160, align 4
  %161 = load i32, i32* %6, align 4
  %162 = add nsw i32 %161, 1
  %163 = load i32, i32* %7, align 4
  %164 = add nsw i32 %163, 1
  %165 = load %struct.TYPE_25__*, %struct.TYPE_25__** %16, align 8
  %166 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %165, i32 0, i32 0
  %167 = load i32, i32* %166, align 8
  %168 = mul nsw i32 %164, %167
  %169 = add nsw i32 %162, %168
  %170 = getelementptr inbounds [5 x i32], [5 x i32]* %8, i64 0, i64 2
  store i32 %169, i32* %170, align 8
  %171 = load i32, i32* %6, align 4
  %172 = add nsw i32 %171, 1
  %173 = load i32, i32* %7, align 4
  %174 = load %struct.TYPE_25__*, %struct.TYPE_25__** %16, align 8
  %175 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %174, i32 0, i32 0
  %176 = load i32, i32* %175, align 8
  %177 = mul nsw i32 %173, %176
  %178 = add nsw i32 %172, %177
  %179 = getelementptr inbounds [5 x i32], [5 x i32]* %8, i64 0, i64 3
  store i32 %178, i32* %179, align 4
  %180 = load i32, i32* %6, align 4
  %181 = load i32, i32* %7, align 4
  %182 = load %struct.TYPE_25__*, %struct.TYPE_25__** %16, align 8
  %183 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %182, i32 0, i32 0
  %184 = load i32, i32* %183, align 8
  %185 = mul nsw i32 %181, %184
  %186 = add nsw i32 %180, %185
  %187 = getelementptr inbounds [5 x i32], [5 x i32]* %8, i64 0, i64 4
  store i32 %186, i32* %187, align 16
  %188 = load i32, i32* %6, align 4
  %189 = load i32, i32* %7, align 4
  %190 = add nsw i32 %188, %189
  %191 = and i32 %190, 1
  store i32 %191, i32* %9, align 4
  %192 = load %struct.TYPE_28__*, %struct.TYPE_28__** %17, align 8
  %193 = load i32, i32* %9, align 4
  %194 = add nsw i32 %193, 0
  %195 = sext i32 %194 to i64
  %196 = getelementptr inbounds [5 x i32], [5 x i32]* %8, i64 0, i64 %195
  %197 = load i32, i32* %196, align 4
  %198 = sext i32 %197 to i64
  %199 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %192, i64 %198
  %200 = getelementptr inbounds [3 x %struct.TYPE_28__*], [3 x %struct.TYPE_28__*]* %18, i64 0, i64 0
  store %struct.TYPE_28__* %199, %struct.TYPE_28__** %200, align 16
  %201 = load %struct.TYPE_28__*, %struct.TYPE_28__** %17, align 8
  %202 = load i32, i32* %9, align 4
  %203 = add nsw i32 %202, 1
  %204 = sext i32 %203 to i64
  %205 = getelementptr inbounds [5 x i32], [5 x i32]* %8, i64 0, i64 %204
  %206 = load i32, i32* %205, align 4
  %207 = sext i32 %206 to i64
  %208 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %201, i64 %207
  %209 = getelementptr inbounds [3 x %struct.TYPE_28__*], [3 x %struct.TYPE_28__*]* %18, i64 0, i64 1
  store %struct.TYPE_28__* %208, %struct.TYPE_28__** %209, align 8
  %210 = load %struct.TYPE_28__*, %struct.TYPE_28__** %17, align 8
  %211 = load i32, i32* %9, align 4
  %212 = add nsw i32 %211, 2
  %213 = sext i32 %212 to i64
  %214 = getelementptr inbounds [5 x i32], [5 x i32]* %8, i64 0, i64 %213
  %215 = load i32, i32* %214, align 4
  %216 = sext i32 %215 to i64
  %217 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %210, i64 %216
  %218 = getelementptr inbounds [3 x %struct.TYPE_28__*], [3 x %struct.TYPE_28__*]* %18, i64 0, i64 2
  store %struct.TYPE_28__* %217, %struct.TYPE_28__** %218, align 16
  %219 = load %struct.TYPE_26__*, %struct.TYPE_26__** %2, align 8
  %220 = load %struct.TYPE_27__*, %struct.TYPE_27__** %13, align 8
  %221 = getelementptr inbounds [3 x %struct.TYPE_28__*], [3 x %struct.TYPE_28__*]* %18, i64 0, i64 0
  %222 = call i32 @SubdivideFoliageTriangle_r(%struct.TYPE_26__* %219, %struct.TYPE_27__* %220, %struct.TYPE_28__** %221)
  %223 = load %struct.TYPE_28__*, %struct.TYPE_28__** %17, align 8
  %224 = load i32, i32* %9, align 4
  %225 = add nsw i32 %224, 0
  %226 = sext i32 %225 to i64
  %227 = getelementptr inbounds [5 x i32], [5 x i32]* %8, i64 0, i64 %226
  %228 = load i32, i32* %227, align 4
  %229 = sext i32 %228 to i64
  %230 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %223, i64 %229
  %231 = getelementptr inbounds [3 x %struct.TYPE_28__*], [3 x %struct.TYPE_28__*]* %18, i64 0, i64 0
  store %struct.TYPE_28__* %230, %struct.TYPE_28__** %231, align 16
  %232 = load %struct.TYPE_28__*, %struct.TYPE_28__** %17, align 8
  %233 = load i32, i32* %9, align 4
  %234 = add nsw i32 %233, 2
  %235 = sext i32 %234 to i64
  %236 = getelementptr inbounds [5 x i32], [5 x i32]* %8, i64 0, i64 %235
  %237 = load i32, i32* %236, align 4
  %238 = sext i32 %237 to i64
  %239 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %232, i64 %238
  %240 = getelementptr inbounds [3 x %struct.TYPE_28__*], [3 x %struct.TYPE_28__*]* %18, i64 0, i64 1
  store %struct.TYPE_28__* %239, %struct.TYPE_28__** %240, align 8
  %241 = load %struct.TYPE_28__*, %struct.TYPE_28__** %17, align 8
  %242 = load i32, i32* %9, align 4
  %243 = add nsw i32 %242, 3
  %244 = sext i32 %243 to i64
  %245 = getelementptr inbounds [5 x i32], [5 x i32]* %8, i64 0, i64 %244
  %246 = load i32, i32* %245, align 4
  %247 = sext i32 %246 to i64
  %248 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %241, i64 %247
  %249 = getelementptr inbounds [3 x %struct.TYPE_28__*], [3 x %struct.TYPE_28__*]* %18, i64 0, i64 2
  store %struct.TYPE_28__* %248, %struct.TYPE_28__** %249, align 16
  %250 = load %struct.TYPE_26__*, %struct.TYPE_26__** %2, align 8
  %251 = load %struct.TYPE_27__*, %struct.TYPE_27__** %13, align 8
  %252 = getelementptr inbounds [3 x %struct.TYPE_28__*], [3 x %struct.TYPE_28__*]* %18, i64 0, i64 0
  %253 = call i32 @SubdivideFoliageTriangle_r(%struct.TYPE_26__* %250, %struct.TYPE_27__* %251, %struct.TYPE_28__** %252)
  br label %254

254:                                              ; preds = %143
  %255 = load i32, i32* %6, align 4
  %256 = add nsw i32 %255, 1
  store i32 %256, i32* %6, align 4
  br label %136

257:                                              ; preds = %136
  br label %258

258:                                              ; preds = %257
  %259 = load i32, i32* %7, align 4
  %260 = add nsw i32 %259, 1
  store i32 %260, i32* %7, align 4
  br label %128

261:                                              ; preds = %128
  %262 = load %struct.TYPE_25__*, %struct.TYPE_25__** %16, align 8
  %263 = call i32 @FreeMesh(%struct.TYPE_25__* %262)
  br label %265

264:                                              ; preds = %40
  br label %265

265:                                              ; preds = %264, %261, %94
  %266 = load i32, i32* @numFoliageInstances, align 4
  %267 = icmp slt i32 %266, 1
  br i1 %267, label %268, label %269

268:                                              ; preds = %265
  br label %467

269:                                              ; preds = %265
  %270 = load i32, i32* @numMapDrawSurfs, align 4
  store i32 %270, i32* %10, align 4
  %271 = load i32, i32* %20, align 4
  %272 = load %struct.TYPE_27__*, %struct.TYPE_27__** %13, align 8
  %273 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %272, i32 0, i32 1
  %274 = load i32, i32* %273, align 4
  %275 = load %struct.TYPE_27__*, %struct.TYPE_27__** %13, align 8
  %276 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %275, i32 0, i32 1
  %277 = load i32, i32* %276, align 4
  %278 = load %struct.TYPE_27__*, %struct.TYPE_27__** %13, align 8
  %279 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %278, i32 0, i32 1
  %280 = load i32, i32* %279, align 4
  %281 = call i32 @VectorSet(i32 %271, i32 %274, i32 %277, i32 %280)
  %282 = load i32, i32* %21, align 4
  %283 = load i32, i32* %20, align 4
  %284 = call i32 @m4x4_scale_for_vec3(i32 %282, i32 %283)
  %285 = load %struct.TYPE_27__*, %struct.TYPE_27__** %13, align 8
  %286 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %285, i32 0, i32 0
  %287 = load i32, i32* %286, align 8
  %288 = load i32, i32* %21, align 4
  %289 = load %struct.TYPE_26__*, %struct.TYPE_26__** %2, align 8
  %290 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %289, i32 0, i32 12
  %291 = load i32, i32* %290, align 8
  %292 = load %struct.TYPE_26__*, %struct.TYPE_26__** %2, align 8
  %293 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %292, i32 0, i32 11
  %294 = load i32, i32* %293, align 4
  %295 = load %struct.TYPE_26__*, %struct.TYPE_26__** %2, align 8
  %296 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %295, i32 0, i32 10
  %297 = load i32, i32* %296, align 8
  %298 = load %struct.TYPE_26__*, %struct.TYPE_26__** %2, align 8
  %299 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %298, i32 0, i32 9
  %300 = load i32, i32* %299, align 4
  %301 = call i32 @InsertModel(i32 %287, i32 0, i32 %288, i32* null, i32* null, i32 %291, i32 %294, i32 %297, i32 0, i32 %300)
  %302 = load i32, i32* %10, align 4
  store i32 %302, i32* %3, align 4
  br label %303

303:                                              ; preds = %463, %269
  %304 = load i32, i32* %3, align 4
  %305 = load i32, i32* @numMapDrawSurfs, align 4
  %306 = icmp slt i32 %304, %305
  br i1 %306, label %307, label %466

307:                                              ; preds = %303
  %308 = load %struct.TYPE_26__*, %struct.TYPE_26__** @mapDrawSurfs, align 8
  %309 = load i32, i32* %3, align 4
  %310 = sext i32 %309 to i64
  %311 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %308, i64 %310
  store %struct.TYPE_26__* %311, %struct.TYPE_26__** %11, align 8
  %312 = load i32, i32* @SURFACE_FOLIAGE, align 4
  %313 = load %struct.TYPE_26__*, %struct.TYPE_26__** %11, align 8
  %314 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %313, i32 0, i32 0
  store i32 %312, i32* %314, align 8
  %315 = load i32, i32* @numFoliageInstances, align 4
  %316 = load %struct.TYPE_26__*, %struct.TYPE_26__** %11, align 8
  %317 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %316, i32 0, i32 5
  store i32 %315, i32* %317, align 8
  %318 = load %struct.TYPE_26__*, %struct.TYPE_26__** %11, align 8
  %319 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %318, i32 0, i32 5
  %320 = load i32, i32* %319, align 8
  %321 = load %struct.TYPE_26__*, %struct.TYPE_26__** %11, align 8
  %322 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %321, i32 0, i32 3
  store i32 %320, i32* %322, align 8
  %323 = load %struct.TYPE_26__*, %struct.TYPE_26__** %11, align 8
  %324 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %323, i32 0, i32 6
  %325 = load i32, i32* %324, align 4
  %326 = load %struct.TYPE_26__*, %struct.TYPE_26__** %11, align 8
  %327 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %326, i32 0, i32 4
  store i32 %325, i32* %327, align 4
  %328 = load %struct.TYPE_26__*, %struct.TYPE_26__** %2, align 8
  %329 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %328, i32 0, i32 8
  %330 = load i32, i32* %329, align 8
  %331 = load %struct.TYPE_26__*, %struct.TYPE_26__** %11, align 8
  %332 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %331, i32 0, i32 8
  store i32 %330, i32* %332, align 8
  %333 = load %struct.TYPE_26__*, %struct.TYPE_26__** %11, align 8
  %334 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %333, i32 0, i32 6
  %335 = load i32, i32* %334, align 4
  %336 = load %struct.TYPE_26__*, %struct.TYPE_26__** %11, align 8
  %337 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %336, i32 0, i32 5
  %338 = load i32, i32* %337, align 8
  %339 = add nsw i32 %335, %338
  %340 = sext i32 %339 to i64
  %341 = mul i64 %340, 16
  %342 = trunc i64 %341 to i32
  %343 = call %struct.TYPE_28__* @safe_malloc(i32 %342)
  store %struct.TYPE_28__* %343, %struct.TYPE_28__** %17, align 8
  %344 = load %struct.TYPE_28__*, %struct.TYPE_28__** %17, align 8
  %345 = load %struct.TYPE_26__*, %struct.TYPE_26__** %11, align 8
  %346 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %345, i32 0, i32 6
  %347 = load i32, i32* %346, align 4
  %348 = load %struct.TYPE_26__*, %struct.TYPE_26__** %11, align 8
  %349 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %348, i32 0, i32 5
  %350 = load i32, i32* %349, align 8
  %351 = add nsw i32 %347, %350
  %352 = sext i32 %351 to i64
  %353 = mul i64 %352, 16
  %354 = trunc i64 %353 to i32
  %355 = call i32 @memset(%struct.TYPE_28__* %344, i32 0, i32 %354)
  %356 = load %struct.TYPE_28__*, %struct.TYPE_28__** %17, align 8
  %357 = load %struct.TYPE_26__*, %struct.TYPE_26__** %11, align 8
  %358 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %357, i32 0, i32 7
  %359 = load %struct.TYPE_28__*, %struct.TYPE_28__** %358, align 8
  %360 = load %struct.TYPE_26__*, %struct.TYPE_26__** %11, align 8
  %361 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %360, i32 0, i32 6
  %362 = load i32, i32* %361, align 4
  %363 = sext i32 %362 to i64
  %364 = mul i64 %363, 16
  %365 = trunc i64 %364 to i32
  %366 = call i32 @memcpy(%struct.TYPE_28__* %356, %struct.TYPE_28__* %359, i32 %365)
  %367 = load %struct.TYPE_26__*, %struct.TYPE_26__** %11, align 8
  %368 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %367, i32 0, i32 7
  %369 = load %struct.TYPE_28__*, %struct.TYPE_28__** %368, align 8
  %370 = call i32 @free(%struct.TYPE_28__* %369)
  %371 = load %struct.TYPE_28__*, %struct.TYPE_28__** %17, align 8
  %372 = load %struct.TYPE_26__*, %struct.TYPE_26__** %11, align 8
  %373 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %372, i32 0, i32 7
  store %struct.TYPE_28__* %371, %struct.TYPE_28__** %373, align 8
  store i32 0, i32* %4, align 4
  br label %374

374:                                              ; preds = %452, %307
  %375 = load i32, i32* %4, align 4
  %376 = load %struct.TYPE_26__*, %struct.TYPE_26__** %11, align 8
  %377 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %376, i32 0, i32 5
  %378 = load i32, i32* %377, align 8
  %379 = icmp slt i32 %375, %378
  br i1 %379, label %380, label %455

380:                                              ; preds = %374
  %381 = load %struct.TYPE_26__*, %struct.TYPE_26__** %11, align 8
  %382 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %381, i32 0, i32 7
  %383 = load %struct.TYPE_28__*, %struct.TYPE_28__** %382, align 8
  %384 = load %struct.TYPE_26__*, %struct.TYPE_26__** %11, align 8
  %385 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %384, i32 0, i32 6
  %386 = load i32, i32* %385, align 4
  %387 = load i32, i32* %4, align 4
  %388 = add nsw i32 %386, %387
  %389 = sext i32 %388 to i64
  %390 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %383, i64 %389
  store %struct.TYPE_28__* %390, %struct.TYPE_28__** %19, align 8
  %391 = load %struct.TYPE_23__*, %struct.TYPE_23__** @foliageInstances, align 8
  %392 = load i32, i32* %4, align 4
  %393 = sext i32 %392 to i64
  %394 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %391, i64 %393
  %395 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %394, i32 0, i32 1
  %396 = load i32, i32* %395, align 4
  %397 = load %struct.TYPE_28__*, %struct.TYPE_28__** %19, align 8
  %398 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %397, i32 0, i32 2
  %399 = load i32, i32* %398, align 4
  %400 = call i32 @VectorCopy(i32 %396, i32 %399)
  %401 = load %struct.TYPE_23__*, %struct.TYPE_23__** @foliageInstances, align 8
  %402 = load i32, i32* %4, align 4
  %403 = sext i32 %402 to i64
  %404 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %401, i64 %403
  %405 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %404, i32 0, i32 0
  %406 = load i32, i32* %405, align 4
  %407 = load %struct.TYPE_28__*, %struct.TYPE_28__** %19, align 8
  %408 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %407, i32 0, i32 1
  %409 = load i32, i32* %408, align 8
  %410 = call i32 @VectorCopy(i32 %406, i32 %409)
  store i32 0, i32* %5, align 4
  br label %411

411:                                              ; preds = %448, %380
  %412 = load i32, i32* %5, align 4
  %413 = load i32, i32* @MAX_LIGHTMAPS, align 4
  %414 = icmp slt i32 %412, %413
  br i1 %414, label %415, label %451

415:                                              ; preds = %411
  %416 = load %struct.TYPE_28__*, %struct.TYPE_28__** %19, align 8
  %417 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %416, i32 0, i32 0
  %418 = load i32**, i32*** %417, align 8
  %419 = load i32, i32* %5, align 4
  %420 = sext i32 %419 to i64
  %421 = getelementptr inbounds i32*, i32** %418, i64 %420
  %422 = load i32*, i32** %421, align 8
  %423 = getelementptr inbounds i32, i32* %422, i64 0
  store i32 255, i32* %423, align 4
  %424 = load %struct.TYPE_28__*, %struct.TYPE_28__** %19, align 8
  %425 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %424, i32 0, i32 0
  %426 = load i32**, i32*** %425, align 8
  %427 = load i32, i32* %5, align 4
  %428 = sext i32 %427 to i64
  %429 = getelementptr inbounds i32*, i32** %426, i64 %428
  %430 = load i32*, i32** %429, align 8
  %431 = getelementptr inbounds i32, i32* %430, i64 1
  store i32 255, i32* %431, align 4
  %432 = load %struct.TYPE_28__*, %struct.TYPE_28__** %19, align 8
  %433 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %432, i32 0, i32 0
  %434 = load i32**, i32*** %433, align 8
  %435 = load i32, i32* %5, align 4
  %436 = sext i32 %435 to i64
  %437 = getelementptr inbounds i32*, i32** %434, i64 %436
  %438 = load i32*, i32** %437, align 8
  %439 = getelementptr inbounds i32, i32* %438, i64 2
  store i32 255, i32* %439, align 4
  %440 = load %struct.TYPE_28__*, %struct.TYPE_28__** %19, align 8
  %441 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %440, i32 0, i32 0
  %442 = load i32**, i32*** %441, align 8
  %443 = load i32, i32* %5, align 4
  %444 = sext i32 %443 to i64
  %445 = getelementptr inbounds i32*, i32** %442, i64 %444
  %446 = load i32*, i32** %445, align 8
  %447 = getelementptr inbounds i32, i32* %446, i64 3
  store i32 255, i32* %447, align 4
  br label %448

448:                                              ; preds = %415
  %449 = load i32, i32* %5, align 4
  %450 = add nsw i32 %449, 1
  store i32 %450, i32* %5, align 4
  br label %411

451:                                              ; preds = %411
  br label %452

452:                                              ; preds = %451
  %453 = load i32, i32* %4, align 4
  %454 = add nsw i32 %453, 1
  store i32 %454, i32* %4, align 4
  br label %374

455:                                              ; preds = %374
  %456 = load %struct.TYPE_26__*, %struct.TYPE_26__** %11, align 8
  %457 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %456, i32 0, i32 5
  %458 = load i32, i32* %457, align 8
  %459 = load %struct.TYPE_26__*, %struct.TYPE_26__** %11, align 8
  %460 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %459, i32 0, i32 6
  %461 = load i32, i32* %460, align 4
  %462 = add nsw i32 %461, %458
  store i32 %462, i32* %460, align 4
  br label %463

463:                                              ; preds = %455
  %464 = load i32, i32* %3, align 4
  %465 = add nsw i32 %464, 1
  store i32 %465, i32* %3, align 4
  br label %303

466:                                              ; preds = %303
  br label %467

467:                                              ; preds = %466, %268
  %468 = load %struct.TYPE_27__*, %struct.TYPE_27__** %13, align 8
  %469 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %468, i32 0, i32 2
  %470 = load %struct.TYPE_27__*, %struct.TYPE_27__** %469, align 8
  store %struct.TYPE_27__* %470, %struct.TYPE_27__** %13, align 8
  br label %37

471:                                              ; preds = %32, %37
  ret void
}

declare dso_local i32 @SubdivideFoliageTriangle_r(%struct.TYPE_26__*, %struct.TYPE_27__*, %struct.TYPE_28__**) #1

declare dso_local %struct.TYPE_25__* @SubdivideMesh(i64, %struct.TYPE_28__*, i32, i32) #1

declare dso_local i32 @PutMeshOnCurve(i64, %struct.TYPE_28__*) #1

declare dso_local %struct.TYPE_25__* @RemoveLinearMeshColumnsRows(%struct.TYPE_25__*) #1

declare dso_local i32 @FreeMesh(%struct.TYPE_25__*) #1

declare dso_local i32 @VectorSet(i32, i32, i32, i32) #1

declare dso_local i32 @m4x4_scale_for_vec3(i32, i32) #1

declare dso_local i32 @InsertModel(i32, i32, i32, i32*, i32*, i32, i32, i32, i32, i32) #1

declare dso_local %struct.TYPE_28__* @safe_malloc(i32) #1

declare dso_local i32 @memset(%struct.TYPE_28__*, i32, i32) #1

declare dso_local i32 @memcpy(%struct.TYPE_28__*, %struct.TYPE_28__*, i32) #1

declare dso_local i32 @free(%struct.TYPE_28__*) #1

declare dso_local i32 @VectorCopy(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
