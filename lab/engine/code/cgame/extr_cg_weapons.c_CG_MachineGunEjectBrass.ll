; ModuleID = '/home/carl/AnghaBench/lab/engine/code/cgame/extr_cg_weapons.c_CG_MachineGunEjectBrass.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/cgame/extr_cg_weapons.c_CG_MachineGunEjectBrass.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { i32 }
%struct.TYPE_20__ = type { i64 }
%struct.TYPE_18__ = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_17__ = type { i32, i32 }
%struct.TYPE_16__ = type { double, i32, i32, i32, %struct.TYPE_13__, %struct.TYPE_14__, i64, i64, i32, %struct.TYPE_15__ }
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
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_17__*)* @CG_MachineGunEjectBrass to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @CG_MachineGunEjectBrass(%struct.TYPE_17__* %0) #0 {
  %2 = alloca %struct.TYPE_17__*, align 8
  %3 = alloca %struct.TYPE_16__*, align 8
  %4 = alloca %struct.TYPE_15__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca float, align 4
  %10 = alloca [3 x i32*], align 16
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %2, align 8
  store float 1.000000e+00, float* %9, align 4
  %11 = load i32, i32* getelementptr inbounds (%struct.TYPE_19__, %struct.TYPE_19__* @cg_brassTime, i32 0, i32 0), align 4
  %12 = icmp sle i32 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %1
  br label %339

14:                                               ; preds = %1
  %15 = call %struct.TYPE_16__* (...) @CG_AllocLocalEntity()
  store %struct.TYPE_16__* %15, %struct.TYPE_16__** %3, align 8
  %16 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %16, i32 0, i32 9
  store %struct.TYPE_15__* %17, %struct.TYPE_15__** %4, align 8
  %18 = load i32*, i32** %5, align 8
  %19 = getelementptr inbounds i32, i32* %18, i64 0
  store i32 0, i32* %19, align 4
  %20 = call i32 (...) @crandom()
  %21 = mul nsw i32 40, %20
  %22 = add nsw i32 -50, %21
  %23 = load i32*, i32** %5, align 8
  %24 = getelementptr inbounds i32, i32* %23, i64 1
  store i32 %22, i32* %24, align 4
  %25 = call i32 (...) @crandom()
  %26 = mul nsw i32 50, %25
  %27 = add nsw i32 100, %26
  %28 = load i32*, i32** %5, align 8
  %29 = getelementptr inbounds i32, i32* %28, i64 2
  store i32 %27, i32* %29, align 4
  %30 = load i32, i32* @LE_FRAGMENT, align 4
  %31 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %32 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %31, i32 0, i32 8
  store i32 %30, i32* %32, align 8
  %33 = load i64, i64* getelementptr inbounds (%struct.TYPE_20__, %struct.TYPE_20__* @cg, i32 0, i32 0), align 8
  %34 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %35 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %34, i32 0, i32 6
  store i64 %33, i64* %35, align 8
  %36 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %37 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %36, i32 0, i32 6
  %38 = load i64, i64* %37, align 8
  %39 = load i32, i32* getelementptr inbounds (%struct.TYPE_19__, %struct.TYPE_19__* @cg_brassTime, i32 0, i32 0), align 4
  %40 = sext i32 %39 to i64
  %41 = add nsw i64 %38, %40
  %42 = load i32, i32* getelementptr inbounds (%struct.TYPE_19__, %struct.TYPE_19__* @cg_brassTime, i32 0, i32 0), align 4
  %43 = sdiv i32 %42, 4
  %44 = call i32 (...) @random()
  %45 = mul nsw i32 %43, %44
  %46 = sext i32 %45 to i64
  %47 = add nsw i64 %41, %46
  %48 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %49 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %48, i32 0, i32 7
  store i64 %47, i64* %49, align 8
  %50 = load i32, i32* @TR_GRAVITY, align 4
  %51 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %52 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %51, i32 0, i32 5
  %53 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %52, i32 0, i32 3
  store i32 %50, i32* %53, align 8
  %54 = load i64, i64* getelementptr inbounds (%struct.TYPE_20__, %struct.TYPE_20__* @cg, i32 0, i32 0), align 8
  %55 = call i32 (...) @rand()
  %56 = and i32 %55, 15
  %57 = sext i32 %56 to i64
  %58 = sub nsw i64 %54, %57
  %59 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %60 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %59, i32 0, i32 5
  %61 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %60, i32 0, i32 2
  store i64 %58, i64* %61, align 8
  %62 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %63 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = getelementptr inbounds [3 x i32*], [3 x i32*]* %10, i64 0, i64 0
  %66 = call i32 @AnglesToAxis(i32 %64, i32** %65)
  %67 = load i32*, i32** %7, align 8
  %68 = getelementptr inbounds i32, i32* %67, i64 0
  store i32 8, i32* %68, align 4
  %69 = load i32*, i32** %7, align 8
  %70 = getelementptr inbounds i32, i32* %69, i64 1
  store i32 -4, i32* %70, align 4
  %71 = load i32*, i32** %7, align 8
  %72 = getelementptr inbounds i32, i32* %71, i64 2
  store i32 24, i32* %72, align 4
  %73 = load i32*, i32** %7, align 8
  %74 = getelementptr inbounds i32, i32* %73, i64 0
  %75 = load i32, i32* %74, align 4
  %76 = getelementptr inbounds [3 x i32*], [3 x i32*]* %10, i64 0, i64 0
  %77 = load i32*, i32** %76, align 16
  %78 = getelementptr inbounds i32, i32* %77, i64 0
  %79 = load i32, i32* %78, align 4
  %80 = mul nsw i32 %75, %79
  %81 = load i32*, i32** %7, align 8
  %82 = getelementptr inbounds i32, i32* %81, i64 1
  %83 = load i32, i32* %82, align 4
  %84 = getelementptr inbounds [3 x i32*], [3 x i32*]* %10, i64 0, i64 1
  %85 = load i32*, i32** %84, align 8
  %86 = getelementptr inbounds i32, i32* %85, i64 0
  %87 = load i32, i32* %86, align 4
  %88 = mul nsw i32 %83, %87
  %89 = add nsw i32 %80, %88
  %90 = load i32*, i32** %7, align 8
  %91 = getelementptr inbounds i32, i32* %90, i64 2
  %92 = load i32, i32* %91, align 4
  %93 = getelementptr inbounds [3 x i32*], [3 x i32*]* %10, i64 0, i64 2
  %94 = load i32*, i32** %93, align 16
  %95 = getelementptr inbounds i32, i32* %94, i64 0
  %96 = load i32, i32* %95, align 4
  %97 = mul nsw i32 %92, %96
  %98 = add nsw i32 %89, %97
  %99 = load i32*, i32** %8, align 8
  %100 = getelementptr inbounds i32, i32* %99, i64 0
  store i32 %98, i32* %100, align 4
  %101 = load i32*, i32** %7, align 8
  %102 = getelementptr inbounds i32, i32* %101, i64 0
  %103 = load i32, i32* %102, align 4
  %104 = getelementptr inbounds [3 x i32*], [3 x i32*]* %10, i64 0, i64 0
  %105 = load i32*, i32** %104, align 16
  %106 = getelementptr inbounds i32, i32* %105, i64 1
  %107 = load i32, i32* %106, align 4
  %108 = mul nsw i32 %103, %107
  %109 = load i32*, i32** %7, align 8
  %110 = getelementptr inbounds i32, i32* %109, i64 1
  %111 = load i32, i32* %110, align 4
  %112 = getelementptr inbounds [3 x i32*], [3 x i32*]* %10, i64 0, i64 1
  %113 = load i32*, i32** %112, align 8
  %114 = getelementptr inbounds i32, i32* %113, i64 1
  %115 = load i32, i32* %114, align 4
  %116 = mul nsw i32 %111, %115
  %117 = add nsw i32 %108, %116
  %118 = load i32*, i32** %7, align 8
  %119 = getelementptr inbounds i32, i32* %118, i64 2
  %120 = load i32, i32* %119, align 4
  %121 = getelementptr inbounds [3 x i32*], [3 x i32*]* %10, i64 0, i64 2
  %122 = load i32*, i32** %121, align 16
  %123 = getelementptr inbounds i32, i32* %122, i64 1
  %124 = load i32, i32* %123, align 4
  %125 = mul nsw i32 %120, %124
  %126 = add nsw i32 %117, %125
  %127 = load i32*, i32** %8, align 8
  %128 = getelementptr inbounds i32, i32* %127, i64 1
  store i32 %126, i32* %128, align 4
  %129 = load i32*, i32** %7, align 8
  %130 = getelementptr inbounds i32, i32* %129, i64 0
  %131 = load i32, i32* %130, align 4
  %132 = getelementptr inbounds [3 x i32*], [3 x i32*]* %10, i64 0, i64 0
  %133 = load i32*, i32** %132, align 16
  %134 = getelementptr inbounds i32, i32* %133, i64 2
  %135 = load i32, i32* %134, align 4
  %136 = mul nsw i32 %131, %135
  %137 = load i32*, i32** %7, align 8
  %138 = getelementptr inbounds i32, i32* %137, i64 1
  %139 = load i32, i32* %138, align 4
  %140 = getelementptr inbounds [3 x i32*], [3 x i32*]* %10, i64 0, i64 1
  %141 = load i32*, i32** %140, align 8
  %142 = getelementptr inbounds i32, i32* %141, i64 2
  %143 = load i32, i32* %142, align 4
  %144 = mul nsw i32 %139, %143
  %145 = add nsw i32 %136, %144
  %146 = load i32*, i32** %7, align 8
  %147 = getelementptr inbounds i32, i32* %146, i64 2
  %148 = load i32, i32* %147, align 4
  %149 = getelementptr inbounds [3 x i32*], [3 x i32*]* %10, i64 0, i64 2
  %150 = load i32*, i32** %149, align 16
  %151 = getelementptr inbounds i32, i32* %150, i64 2
  %152 = load i32, i32* %151, align 4
  %153 = mul nsw i32 %148, %152
  %154 = add nsw i32 %145, %153
  %155 = load i32*, i32** %8, align 8
  %156 = getelementptr inbounds i32, i32* %155, i64 2
  store i32 %154, i32* %156, align 4
  %157 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %158 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %157, i32 0, i32 0
  %159 = load i32, i32* %158, align 4
  %160 = load i32*, i32** %8, align 8
  %161 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %162 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %161, i32 0, i32 2
  %163 = load i32, i32* %162, align 4
  %164 = call i32 @VectorAdd(i32 %159, i32* %160, i32 %163)
  %165 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %166 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %165, i32 0, i32 2
  %167 = load i32, i32* %166, align 4
  %168 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %169 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %168, i32 0, i32 5
  %170 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %169, i32 0, i32 1
  %171 = load i32, i32* %170, align 4
  %172 = call i32 @VectorCopy(i32 %167, i32 %171)
  %173 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %174 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %173, i32 0, i32 2
  %175 = load i32, i32* %174, align 4
  %176 = call i32 @CG_PointContents(i32 %175, i32 -1)
  %177 = load i32, i32* @CONTENTS_WATER, align 4
  %178 = and i32 %176, %177
  %179 = icmp ne i32 %178, 0
  br i1 %179, label %180, label %181

180:                                              ; preds = %14
  store float 0x3FB99999A0000000, float* %9, align 4
  br label %181

181:                                              ; preds = %180, %14
  %182 = load i32*, i32** %5, align 8
  %183 = getelementptr inbounds i32, i32* %182, i64 0
  %184 = load i32, i32* %183, align 4
  %185 = getelementptr inbounds [3 x i32*], [3 x i32*]* %10, i64 0, i64 0
  %186 = load i32*, i32** %185, align 16
  %187 = getelementptr inbounds i32, i32* %186, i64 0
  %188 = load i32, i32* %187, align 4
  %189 = mul nsw i32 %184, %188
  %190 = load i32*, i32** %5, align 8
  %191 = getelementptr inbounds i32, i32* %190, i64 1
  %192 = load i32, i32* %191, align 4
  %193 = getelementptr inbounds [3 x i32*], [3 x i32*]* %10, i64 0, i64 1
  %194 = load i32*, i32** %193, align 8
  %195 = getelementptr inbounds i32, i32* %194, i64 0
  %196 = load i32, i32* %195, align 4
  %197 = mul nsw i32 %192, %196
  %198 = add nsw i32 %189, %197
  %199 = load i32*, i32** %5, align 8
  %200 = getelementptr inbounds i32, i32* %199, i64 2
  %201 = load i32, i32* %200, align 4
  %202 = getelementptr inbounds [3 x i32*], [3 x i32*]* %10, i64 0, i64 2
  %203 = load i32*, i32** %202, align 16
  %204 = getelementptr inbounds i32, i32* %203, i64 0
  %205 = load i32, i32* %204, align 4
  %206 = mul nsw i32 %201, %205
  %207 = add nsw i32 %198, %206
  %208 = load i32*, i32** %6, align 8
  %209 = getelementptr inbounds i32, i32* %208, i64 0
  store i32 %207, i32* %209, align 4
  %210 = load i32*, i32** %5, align 8
  %211 = getelementptr inbounds i32, i32* %210, i64 0
  %212 = load i32, i32* %211, align 4
  %213 = getelementptr inbounds [3 x i32*], [3 x i32*]* %10, i64 0, i64 0
  %214 = load i32*, i32** %213, align 16
  %215 = getelementptr inbounds i32, i32* %214, i64 1
  %216 = load i32, i32* %215, align 4
  %217 = mul nsw i32 %212, %216
  %218 = load i32*, i32** %5, align 8
  %219 = getelementptr inbounds i32, i32* %218, i64 1
  %220 = load i32, i32* %219, align 4
  %221 = getelementptr inbounds [3 x i32*], [3 x i32*]* %10, i64 0, i64 1
  %222 = load i32*, i32** %221, align 8
  %223 = getelementptr inbounds i32, i32* %222, i64 1
  %224 = load i32, i32* %223, align 4
  %225 = mul nsw i32 %220, %224
  %226 = add nsw i32 %217, %225
  %227 = load i32*, i32** %5, align 8
  %228 = getelementptr inbounds i32, i32* %227, i64 2
  %229 = load i32, i32* %228, align 4
  %230 = getelementptr inbounds [3 x i32*], [3 x i32*]* %10, i64 0, i64 2
  %231 = load i32*, i32** %230, align 16
  %232 = getelementptr inbounds i32, i32* %231, i64 1
  %233 = load i32, i32* %232, align 4
  %234 = mul nsw i32 %229, %233
  %235 = add nsw i32 %226, %234
  %236 = load i32*, i32** %6, align 8
  %237 = getelementptr inbounds i32, i32* %236, i64 1
  store i32 %235, i32* %237, align 4
  %238 = load i32*, i32** %5, align 8
  %239 = getelementptr inbounds i32, i32* %238, i64 0
  %240 = load i32, i32* %239, align 4
  %241 = getelementptr inbounds [3 x i32*], [3 x i32*]* %10, i64 0, i64 0
  %242 = load i32*, i32** %241, align 16
  %243 = getelementptr inbounds i32, i32* %242, i64 2
  %244 = load i32, i32* %243, align 4
  %245 = mul nsw i32 %240, %244
  %246 = load i32*, i32** %5, align 8
  %247 = getelementptr inbounds i32, i32* %246, i64 1
  %248 = load i32, i32* %247, align 4
  %249 = getelementptr inbounds [3 x i32*], [3 x i32*]* %10, i64 0, i64 1
  %250 = load i32*, i32** %249, align 8
  %251 = getelementptr inbounds i32, i32* %250, i64 2
  %252 = load i32, i32* %251, align 4
  %253 = mul nsw i32 %248, %252
  %254 = add nsw i32 %245, %253
  %255 = load i32*, i32** %5, align 8
  %256 = getelementptr inbounds i32, i32* %255, i64 2
  %257 = load i32, i32* %256, align 4
  %258 = getelementptr inbounds [3 x i32*], [3 x i32*]* %10, i64 0, i64 2
  %259 = load i32*, i32** %258, align 16
  %260 = getelementptr inbounds i32, i32* %259, i64 2
  %261 = load i32, i32* %260, align 4
  %262 = mul nsw i32 %257, %261
  %263 = add nsw i32 %254, %262
  %264 = load i32*, i32** %6, align 8
  %265 = getelementptr inbounds i32, i32* %264, i64 2
  store i32 %263, i32* %265, align 4
  %266 = load i32*, i32** %6, align 8
  %267 = load float, float* %9, align 4
  %268 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %269 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %268, i32 0, i32 5
  %270 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %269, i32 0, i32 0
  %271 = load i32, i32* %270, align 8
  %272 = call i32 @VectorScale(i32* %266, float %267, i32 %271)
  %273 = load i32, i32* @axisDefault, align 4
  %274 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %275 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %274, i32 0, i32 1
  %276 = load i32, i32* %275, align 4
  %277 = call i32 @AxisCopy(i32 %273, i32 %276)
  %278 = load i32, i32* getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @cgs, i32 0, i32 0, i32 0), align 4
  %279 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %280 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %279, i32 0, i32 0
  store i32 %278, i32* %280, align 4
  %281 = load float, float* %9, align 4
  %282 = fpext float %281 to double
  %283 = fmul double 4.000000e-01, %282
  %284 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %285 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %284, i32 0, i32 0
  store double %283, double* %285, align 8
  %286 = load i32, i32* @TR_LINEAR, align 4
  %287 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %288 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %287, i32 0, i32 4
  %289 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %288, i32 0, i32 3
  store i32 %286, i32* %289, align 8
  %290 = load i64, i64* getelementptr inbounds (%struct.TYPE_20__, %struct.TYPE_20__* @cg, i32 0, i32 0), align 8
  %291 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %292 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %291, i32 0, i32 4
  %293 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %292, i32 0, i32 2
  store i64 %290, i64* %293, align 8
  %294 = call i32 (...) @rand()
  %295 = and i32 %294, 31
  %296 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %297 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %296, i32 0, i32 4
  %298 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %297, i32 0, i32 0
  %299 = load i32*, i32** %298, align 8
  %300 = getelementptr inbounds i32, i32* %299, i64 0
  store i32 %295, i32* %300, align 4
  %301 = call i32 (...) @rand()
  %302 = and i32 %301, 31
  %303 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %304 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %303, i32 0, i32 4
  %305 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %304, i32 0, i32 0
  %306 = load i32*, i32** %305, align 8
  %307 = getelementptr inbounds i32, i32* %306, i64 1
  store i32 %302, i32* %307, align 4
  %308 = call i32 (...) @rand()
  %309 = and i32 %308, 31
  %310 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %311 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %310, i32 0, i32 4
  %312 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %311, i32 0, i32 0
  %313 = load i32*, i32** %312, align 8
  %314 = getelementptr inbounds i32, i32* %313, i64 2
  store i32 %309, i32* %314, align 4
  %315 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %316 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %315, i32 0, i32 4
  %317 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %316, i32 0, i32 1
  %318 = load i32*, i32** %317, align 8
  %319 = getelementptr inbounds i32, i32* %318, i64 0
  store i32 2, i32* %319, align 4
  %320 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %321 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %320, i32 0, i32 4
  %322 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %321, i32 0, i32 1
  %323 = load i32*, i32** %322, align 8
  %324 = getelementptr inbounds i32, i32* %323, i64 1
  store i32 1, i32* %324, align 4
  %325 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %326 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %325, i32 0, i32 4
  %327 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %326, i32 0, i32 1
  %328 = load i32*, i32** %327, align 8
  %329 = getelementptr inbounds i32, i32* %328, i64 2
  store i32 0, i32* %329, align 4
  %330 = load i32, i32* @LEF_TUMBLE, align 4
  %331 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %332 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %331, i32 0, i32 3
  store i32 %330, i32* %332, align 8
  %333 = load i32, i32* @LEBS_BRASS, align 4
  %334 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %335 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %334, i32 0, i32 2
  store i32 %333, i32* %335, align 4
  %336 = load i32, i32* @LEMT_NONE, align 4
  %337 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %338 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %337, i32 0, i32 1
  store i32 %336, i32* %338, align 8
  br label %339

339:                                              ; preds = %181, %13
  ret void
}

declare dso_local %struct.TYPE_16__* @CG_AllocLocalEntity(...) #1

declare dso_local i32 @crandom(...) #1

declare dso_local i32 @random(...) #1

declare dso_local i32 @rand(...) #1

declare dso_local i32 @AnglesToAxis(i32, i32**) #1

declare dso_local i32 @VectorAdd(i32, i32*, i32) #1

declare dso_local i32 @VectorCopy(i32, i32) #1

declare dso_local i32 @CG_PointContents(i32, i32) #1

declare dso_local i32 @VectorScale(i32*, float, i32) #1

declare dso_local i32 @AxisCopy(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
