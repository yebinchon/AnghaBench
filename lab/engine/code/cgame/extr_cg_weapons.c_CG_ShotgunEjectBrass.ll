; ModuleID = '/home/carl/AnghaBench/lab/engine/code/cgame/extr_cg_weapons.c_CG_ShotgunEjectBrass.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/cgame/extr_cg_weapons.c_CG_ShotgunEjectBrass.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { i32 }
%struct.TYPE_20__ = type { i64 }
%struct.TYPE_18__ = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_17__ = type { i32, i32 }
%struct.TYPE_16__ = type { float, i32, i32, i32, %struct.TYPE_13__, %struct.TYPE_14__, i64, i64, i32, %struct.TYPE_15__ }
%struct.TYPE_13__ = type { i32*, i32*, i64, i32 }
%struct.TYPE_14__ = type { i32, i32, i64, i32 }
%struct.TYPE_15__ = type { i32, i32, i32 }

@cg_brassTime = common dso_local global %struct.TYPE_19__ zeroinitializer, align 4
@LE_FRAGMENT = common dso_local global i32 0, align 4
@cg = common dso_local global %struct.TYPE_20__ zeroinitializer, align 8
@TR_GRAVITY = common dso_local global i32 0, align 4
@CONTENTS_WATER = common dso_local global i32 0, align 4
@axisDefault = common dso_local global i32 0, align 4
@cgs = common dso_local global %struct.TYPE_18__ zeroinitializer, align 4
@TR_LINEAR = common dso_local global i32 0, align 4
@LEF_TUMBLE = common dso_local global i32 0, align 4
@LEBS_BRASS = common dso_local global i32 0, align 4
@LEMT_NONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_17__*)* @CG_ShotgunEjectBrass to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @CG_ShotgunEjectBrass(%struct.TYPE_17__* %0) #0 {
  %2 = alloca %struct.TYPE_17__*, align 8
  %3 = alloca %struct.TYPE_16__*, align 8
  %4 = alloca %struct.TYPE_15__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca [3 x i32*], align 16
  %10 = alloca i32, align 4
  %11 = alloca float, align 4
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %2, align 8
  %12 = load i32, i32* getelementptr inbounds (%struct.TYPE_19__, %struct.TYPE_19__* @cg_brassTime, i32 0, i32 0), align 4
  %13 = icmp sle i32 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %1
  br label %353

15:                                               ; preds = %1
  store i32 0, i32* %10, align 4
  br label %16

16:                                               ; preds = %350, %15
  %17 = load i32, i32* %10, align 4
  %18 = icmp slt i32 %17, 2
  br i1 %18, label %19, label %353

19:                                               ; preds = %16
  store float 1.000000e+00, float* %11, align 4
  %20 = call %struct.TYPE_16__* (...) @CG_AllocLocalEntity()
  store %struct.TYPE_16__* %20, %struct.TYPE_16__** %3, align 8
  %21 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %22 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %21, i32 0, i32 9
  store %struct.TYPE_15__* %22, %struct.TYPE_15__** %4, align 8
  %23 = call i32 (...) @crandom()
  %24 = mul nsw i32 60, %23
  %25 = add nsw i32 60, %24
  %26 = load i32*, i32** %5, align 8
  %27 = getelementptr inbounds i32, i32* %26, i64 0
  store i32 %25, i32* %27, align 4
  %28 = load i32, i32* %10, align 4
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %36

30:                                               ; preds = %19
  %31 = call i32 (...) @crandom()
  %32 = mul nsw i32 10, %31
  %33 = add nsw i32 40, %32
  %34 = load i32*, i32** %5, align 8
  %35 = getelementptr inbounds i32, i32* %34, i64 1
  store i32 %33, i32* %35, align 4
  br label %42

36:                                               ; preds = %19
  %37 = call i32 (...) @crandom()
  %38 = mul nsw i32 10, %37
  %39 = add nsw i32 -40, %38
  %40 = load i32*, i32** %5, align 8
  %41 = getelementptr inbounds i32, i32* %40, i64 1
  store i32 %39, i32* %41, align 4
  br label %42

42:                                               ; preds = %36, %30
  %43 = call i32 (...) @crandom()
  %44 = mul nsw i32 50, %43
  %45 = add nsw i32 100, %44
  %46 = load i32*, i32** %5, align 8
  %47 = getelementptr inbounds i32, i32* %46, i64 2
  store i32 %45, i32* %47, align 4
  %48 = load i32, i32* @LE_FRAGMENT, align 4
  %49 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %50 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %49, i32 0, i32 8
  store i32 %48, i32* %50, align 8
  %51 = load i64, i64* getelementptr inbounds (%struct.TYPE_20__, %struct.TYPE_20__* @cg, i32 0, i32 0), align 8
  %52 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %53 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %52, i32 0, i32 6
  store i64 %51, i64* %53, align 8
  %54 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %55 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %54, i32 0, i32 6
  %56 = load i64, i64* %55, align 8
  %57 = load i32, i32* getelementptr inbounds (%struct.TYPE_19__, %struct.TYPE_19__* @cg_brassTime, i32 0, i32 0), align 4
  %58 = mul nsw i32 %57, 3
  %59 = sext i32 %58 to i64
  %60 = add nsw i64 %56, %59
  %61 = load i32, i32* getelementptr inbounds (%struct.TYPE_19__, %struct.TYPE_19__* @cg_brassTime, i32 0, i32 0), align 4
  %62 = call i32 (...) @random()
  %63 = mul nsw i32 %61, %62
  %64 = sext i32 %63 to i64
  %65 = add nsw i64 %60, %64
  %66 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %67 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %66, i32 0, i32 7
  store i64 %65, i64* %67, align 8
  %68 = load i32, i32* @TR_GRAVITY, align 4
  %69 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %70 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %69, i32 0, i32 5
  %71 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %70, i32 0, i32 3
  store i32 %68, i32* %71, align 8
  %72 = load i64, i64* getelementptr inbounds (%struct.TYPE_20__, %struct.TYPE_20__* @cg, i32 0, i32 0), align 8
  %73 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %74 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %73, i32 0, i32 5
  %75 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %74, i32 0, i32 2
  store i64 %72, i64* %75, align 8
  %76 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %77 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = getelementptr inbounds [3 x i32*], [3 x i32*]* %9, i64 0, i64 0
  %80 = call i32 @AnglesToAxis(i32 %78, i32** %79)
  %81 = load i32*, i32** %7, align 8
  %82 = getelementptr inbounds i32, i32* %81, i64 0
  store i32 8, i32* %82, align 4
  %83 = load i32*, i32** %7, align 8
  %84 = getelementptr inbounds i32, i32* %83, i64 1
  store i32 0, i32* %84, align 4
  %85 = load i32*, i32** %7, align 8
  %86 = getelementptr inbounds i32, i32* %85, i64 2
  store i32 24, i32* %86, align 4
  %87 = load i32*, i32** %7, align 8
  %88 = getelementptr inbounds i32, i32* %87, i64 0
  %89 = load i32, i32* %88, align 4
  %90 = getelementptr inbounds [3 x i32*], [3 x i32*]* %9, i64 0, i64 0
  %91 = load i32*, i32** %90, align 16
  %92 = getelementptr inbounds i32, i32* %91, i64 0
  %93 = load i32, i32* %92, align 4
  %94 = mul nsw i32 %89, %93
  %95 = load i32*, i32** %7, align 8
  %96 = getelementptr inbounds i32, i32* %95, i64 1
  %97 = load i32, i32* %96, align 4
  %98 = getelementptr inbounds [3 x i32*], [3 x i32*]* %9, i64 0, i64 1
  %99 = load i32*, i32** %98, align 8
  %100 = getelementptr inbounds i32, i32* %99, i64 0
  %101 = load i32, i32* %100, align 4
  %102 = mul nsw i32 %97, %101
  %103 = add nsw i32 %94, %102
  %104 = load i32*, i32** %7, align 8
  %105 = getelementptr inbounds i32, i32* %104, i64 2
  %106 = load i32, i32* %105, align 4
  %107 = getelementptr inbounds [3 x i32*], [3 x i32*]* %9, i64 0, i64 2
  %108 = load i32*, i32** %107, align 16
  %109 = getelementptr inbounds i32, i32* %108, i64 0
  %110 = load i32, i32* %109, align 4
  %111 = mul nsw i32 %106, %110
  %112 = add nsw i32 %103, %111
  %113 = load i32*, i32** %8, align 8
  %114 = getelementptr inbounds i32, i32* %113, i64 0
  store i32 %112, i32* %114, align 4
  %115 = load i32*, i32** %7, align 8
  %116 = getelementptr inbounds i32, i32* %115, i64 0
  %117 = load i32, i32* %116, align 4
  %118 = getelementptr inbounds [3 x i32*], [3 x i32*]* %9, i64 0, i64 0
  %119 = load i32*, i32** %118, align 16
  %120 = getelementptr inbounds i32, i32* %119, i64 1
  %121 = load i32, i32* %120, align 4
  %122 = mul nsw i32 %117, %121
  %123 = load i32*, i32** %7, align 8
  %124 = getelementptr inbounds i32, i32* %123, i64 1
  %125 = load i32, i32* %124, align 4
  %126 = getelementptr inbounds [3 x i32*], [3 x i32*]* %9, i64 0, i64 1
  %127 = load i32*, i32** %126, align 8
  %128 = getelementptr inbounds i32, i32* %127, i64 1
  %129 = load i32, i32* %128, align 4
  %130 = mul nsw i32 %125, %129
  %131 = add nsw i32 %122, %130
  %132 = load i32*, i32** %7, align 8
  %133 = getelementptr inbounds i32, i32* %132, i64 2
  %134 = load i32, i32* %133, align 4
  %135 = getelementptr inbounds [3 x i32*], [3 x i32*]* %9, i64 0, i64 2
  %136 = load i32*, i32** %135, align 16
  %137 = getelementptr inbounds i32, i32* %136, i64 1
  %138 = load i32, i32* %137, align 4
  %139 = mul nsw i32 %134, %138
  %140 = add nsw i32 %131, %139
  %141 = load i32*, i32** %8, align 8
  %142 = getelementptr inbounds i32, i32* %141, i64 1
  store i32 %140, i32* %142, align 4
  %143 = load i32*, i32** %7, align 8
  %144 = getelementptr inbounds i32, i32* %143, i64 0
  %145 = load i32, i32* %144, align 4
  %146 = getelementptr inbounds [3 x i32*], [3 x i32*]* %9, i64 0, i64 0
  %147 = load i32*, i32** %146, align 16
  %148 = getelementptr inbounds i32, i32* %147, i64 2
  %149 = load i32, i32* %148, align 4
  %150 = mul nsw i32 %145, %149
  %151 = load i32*, i32** %7, align 8
  %152 = getelementptr inbounds i32, i32* %151, i64 1
  %153 = load i32, i32* %152, align 4
  %154 = getelementptr inbounds [3 x i32*], [3 x i32*]* %9, i64 0, i64 1
  %155 = load i32*, i32** %154, align 8
  %156 = getelementptr inbounds i32, i32* %155, i64 2
  %157 = load i32, i32* %156, align 4
  %158 = mul nsw i32 %153, %157
  %159 = add nsw i32 %150, %158
  %160 = load i32*, i32** %7, align 8
  %161 = getelementptr inbounds i32, i32* %160, i64 2
  %162 = load i32, i32* %161, align 4
  %163 = getelementptr inbounds [3 x i32*], [3 x i32*]* %9, i64 0, i64 2
  %164 = load i32*, i32** %163, align 16
  %165 = getelementptr inbounds i32, i32* %164, i64 2
  %166 = load i32, i32* %165, align 4
  %167 = mul nsw i32 %162, %166
  %168 = add nsw i32 %159, %167
  %169 = load i32*, i32** %8, align 8
  %170 = getelementptr inbounds i32, i32* %169, i64 2
  store i32 %168, i32* %170, align 4
  %171 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %172 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %171, i32 0, i32 0
  %173 = load i32, i32* %172, align 4
  %174 = load i32*, i32** %8, align 8
  %175 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %176 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %175, i32 0, i32 2
  %177 = load i32, i32* %176, align 4
  %178 = call i32 @VectorAdd(i32 %173, i32* %174, i32 %177)
  %179 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %180 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %179, i32 0, i32 2
  %181 = load i32, i32* %180, align 4
  %182 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %183 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %182, i32 0, i32 5
  %184 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %183, i32 0, i32 1
  %185 = load i32, i32* %184, align 4
  %186 = call i32 @VectorCopy(i32 %181, i32 %185)
  %187 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %188 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %187, i32 0, i32 2
  %189 = load i32, i32* %188, align 4
  %190 = call i32 @CG_PointContents(i32 %189, i32 -1)
  %191 = load i32, i32* @CONTENTS_WATER, align 4
  %192 = and i32 %190, %191
  %193 = icmp ne i32 %192, 0
  br i1 %193, label %194, label %195

194:                                              ; preds = %42
  store float 0x3FB99999A0000000, float* %11, align 4
  br label %195

195:                                              ; preds = %194, %42
  %196 = load i32*, i32** %5, align 8
  %197 = getelementptr inbounds i32, i32* %196, i64 0
  %198 = load i32, i32* %197, align 4
  %199 = getelementptr inbounds [3 x i32*], [3 x i32*]* %9, i64 0, i64 0
  %200 = load i32*, i32** %199, align 16
  %201 = getelementptr inbounds i32, i32* %200, i64 0
  %202 = load i32, i32* %201, align 4
  %203 = mul nsw i32 %198, %202
  %204 = load i32*, i32** %5, align 8
  %205 = getelementptr inbounds i32, i32* %204, i64 1
  %206 = load i32, i32* %205, align 4
  %207 = getelementptr inbounds [3 x i32*], [3 x i32*]* %9, i64 0, i64 1
  %208 = load i32*, i32** %207, align 8
  %209 = getelementptr inbounds i32, i32* %208, i64 0
  %210 = load i32, i32* %209, align 4
  %211 = mul nsw i32 %206, %210
  %212 = add nsw i32 %203, %211
  %213 = load i32*, i32** %5, align 8
  %214 = getelementptr inbounds i32, i32* %213, i64 2
  %215 = load i32, i32* %214, align 4
  %216 = getelementptr inbounds [3 x i32*], [3 x i32*]* %9, i64 0, i64 2
  %217 = load i32*, i32** %216, align 16
  %218 = getelementptr inbounds i32, i32* %217, i64 0
  %219 = load i32, i32* %218, align 4
  %220 = mul nsw i32 %215, %219
  %221 = add nsw i32 %212, %220
  %222 = load i32*, i32** %6, align 8
  %223 = getelementptr inbounds i32, i32* %222, i64 0
  store i32 %221, i32* %223, align 4
  %224 = load i32*, i32** %5, align 8
  %225 = getelementptr inbounds i32, i32* %224, i64 0
  %226 = load i32, i32* %225, align 4
  %227 = getelementptr inbounds [3 x i32*], [3 x i32*]* %9, i64 0, i64 0
  %228 = load i32*, i32** %227, align 16
  %229 = getelementptr inbounds i32, i32* %228, i64 1
  %230 = load i32, i32* %229, align 4
  %231 = mul nsw i32 %226, %230
  %232 = load i32*, i32** %5, align 8
  %233 = getelementptr inbounds i32, i32* %232, i64 1
  %234 = load i32, i32* %233, align 4
  %235 = getelementptr inbounds [3 x i32*], [3 x i32*]* %9, i64 0, i64 1
  %236 = load i32*, i32** %235, align 8
  %237 = getelementptr inbounds i32, i32* %236, i64 1
  %238 = load i32, i32* %237, align 4
  %239 = mul nsw i32 %234, %238
  %240 = add nsw i32 %231, %239
  %241 = load i32*, i32** %5, align 8
  %242 = getelementptr inbounds i32, i32* %241, i64 2
  %243 = load i32, i32* %242, align 4
  %244 = getelementptr inbounds [3 x i32*], [3 x i32*]* %9, i64 0, i64 2
  %245 = load i32*, i32** %244, align 16
  %246 = getelementptr inbounds i32, i32* %245, i64 1
  %247 = load i32, i32* %246, align 4
  %248 = mul nsw i32 %243, %247
  %249 = add nsw i32 %240, %248
  %250 = load i32*, i32** %6, align 8
  %251 = getelementptr inbounds i32, i32* %250, i64 1
  store i32 %249, i32* %251, align 4
  %252 = load i32*, i32** %5, align 8
  %253 = getelementptr inbounds i32, i32* %252, i64 0
  %254 = load i32, i32* %253, align 4
  %255 = getelementptr inbounds [3 x i32*], [3 x i32*]* %9, i64 0, i64 0
  %256 = load i32*, i32** %255, align 16
  %257 = getelementptr inbounds i32, i32* %256, i64 2
  %258 = load i32, i32* %257, align 4
  %259 = mul nsw i32 %254, %258
  %260 = load i32*, i32** %5, align 8
  %261 = getelementptr inbounds i32, i32* %260, i64 1
  %262 = load i32, i32* %261, align 4
  %263 = getelementptr inbounds [3 x i32*], [3 x i32*]* %9, i64 0, i64 1
  %264 = load i32*, i32** %263, align 8
  %265 = getelementptr inbounds i32, i32* %264, i64 2
  %266 = load i32, i32* %265, align 4
  %267 = mul nsw i32 %262, %266
  %268 = add nsw i32 %259, %267
  %269 = load i32*, i32** %5, align 8
  %270 = getelementptr inbounds i32, i32* %269, i64 2
  %271 = load i32, i32* %270, align 4
  %272 = getelementptr inbounds [3 x i32*], [3 x i32*]* %9, i64 0, i64 2
  %273 = load i32*, i32** %272, align 16
  %274 = getelementptr inbounds i32, i32* %273, i64 2
  %275 = load i32, i32* %274, align 4
  %276 = mul nsw i32 %271, %275
  %277 = add nsw i32 %268, %276
  %278 = load i32*, i32** %6, align 8
  %279 = getelementptr inbounds i32, i32* %278, i64 2
  store i32 %277, i32* %279, align 4
  %280 = load i32*, i32** %6, align 8
  %281 = load float, float* %11, align 4
  %282 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %283 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %282, i32 0, i32 5
  %284 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %283, i32 0, i32 0
  %285 = load i32, i32* %284, align 8
  %286 = call i32 @VectorScale(i32* %280, float %281, i32 %285)
  %287 = load i32, i32* @axisDefault, align 4
  %288 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %289 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %288, i32 0, i32 1
  %290 = load i32, i32* %289, align 4
  %291 = call i32 @AxisCopy(i32 %287, i32 %290)
  %292 = load i32, i32* getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @cgs, i32 0, i32 0, i32 0), align 4
  %293 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %294 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %293, i32 0, i32 0
  store i32 %292, i32* %294, align 4
  %295 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %296 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %295, i32 0, i32 0
  store float 0x3FD3333340000000, float* %296, align 8
  %297 = load i32, i32* @TR_LINEAR, align 4
  %298 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %299 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %298, i32 0, i32 4
  %300 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %299, i32 0, i32 3
  store i32 %297, i32* %300, align 8
  %301 = load i64, i64* getelementptr inbounds (%struct.TYPE_20__, %struct.TYPE_20__* @cg, i32 0, i32 0), align 8
  %302 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %303 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %302, i32 0, i32 4
  %304 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %303, i32 0, i32 2
  store i64 %301, i64* %304, align 8
  %305 = call i32 (...) @rand()
  %306 = and i32 %305, 31
  %307 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %308 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %307, i32 0, i32 4
  %309 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %308, i32 0, i32 0
  %310 = load i32*, i32** %309, align 8
  %311 = getelementptr inbounds i32, i32* %310, i64 0
  store i32 %306, i32* %311, align 4
  %312 = call i32 (...) @rand()
  %313 = and i32 %312, 31
  %314 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %315 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %314, i32 0, i32 4
  %316 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %315, i32 0, i32 0
  %317 = load i32*, i32** %316, align 8
  %318 = getelementptr inbounds i32, i32* %317, i64 1
  store i32 %313, i32* %318, align 4
  %319 = call i32 (...) @rand()
  %320 = and i32 %319, 31
  %321 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %322 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %321, i32 0, i32 4
  %323 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %322, i32 0, i32 0
  %324 = load i32*, i32** %323, align 8
  %325 = getelementptr inbounds i32, i32* %324, i64 2
  store i32 %320, i32* %325, align 4
  %326 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %327 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %326, i32 0, i32 4
  %328 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %327, i32 0, i32 1
  %329 = load i32*, i32** %328, align 8
  %330 = getelementptr inbounds i32, i32* %329, i64 0
  store i32 1, i32* %330, align 4
  %331 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %332 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %331, i32 0, i32 4
  %333 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %332, i32 0, i32 1
  %334 = load i32*, i32** %333, align 8
  %335 = getelementptr inbounds i32, i32* %334, i64 1
  store i32 0, i32* %335, align 4
  %336 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %337 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %336, i32 0, i32 4
  %338 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %337, i32 0, i32 1
  %339 = load i32*, i32** %338, align 8
  %340 = getelementptr inbounds i32, i32* %339, i64 2
  store i32 0, i32* %340, align 4
  %341 = load i32, i32* @LEF_TUMBLE, align 4
  %342 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %343 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %342, i32 0, i32 3
  store i32 %341, i32* %343, align 4
  %344 = load i32, i32* @LEBS_BRASS, align 4
  %345 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %346 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %345, i32 0, i32 2
  store i32 %344, i32* %346, align 8
  %347 = load i32, i32* @LEMT_NONE, align 4
  %348 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %349 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %348, i32 0, i32 1
  store i32 %347, i32* %349, align 4
  br label %350

350:                                              ; preds = %195
  %351 = load i32, i32* %10, align 4
  %352 = add nsw i32 %351, 1
  store i32 %352, i32* %10, align 4
  br label %16

353:                                              ; preds = %14, %16
  ret void
}

declare dso_local %struct.TYPE_16__* @CG_AllocLocalEntity(...) #1

declare dso_local i32 @crandom(...) #1

declare dso_local i32 @random(...) #1

declare dso_local i32 @AnglesToAxis(i32, i32**) #1

declare dso_local i32 @VectorAdd(i32, i32*, i32) #1

declare dso_local i32 @VectorCopy(i32, i32) #1

declare dso_local i32 @CG_PointContents(i32, i32) #1

declare dso_local i32 @VectorScale(i32*, float, i32) #1

declare dso_local i32 @AxisCopy(i32, i32) #1

declare dso_local i32 @rand(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
