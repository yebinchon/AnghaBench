; ModuleID = '/home/carl/AnghaBench/lab/engine/code/ui/extr_ui_shared.c_Item_OwnerDraw_Paint.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/ui/extr_ui_shared.c_Item_OwnerDraw_Paint.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { float (i32)*, i32, i32 (i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, double*, i32, i32)* }
%struct.TYPE_17__ = type { i64, i32, i32, %struct.TYPE_14__, i32, i32, i32, i32, i32, %struct.TYPE_15__, i64*, %struct.TYPE_13__*, i64 }
%struct.TYPE_14__ = type { i32, double*, i32, i32, i32, %struct.TYPE_12__, i32 }
%struct.TYPE_12__ = type { i32, i32, i32, i64 }
%struct.TYPE_15__ = type { i64, i64 }
%struct.TYPE_13__ = type { float, float, double* }
%struct.TYPE_16__ = type { double*, i32, i32, i32, i32 }

@DC = common dso_local global %struct.TYPE_11__* null, align 8
@qtrue = common dso_local global i32 0, align 4
@WINDOW_HASFOCUS = common dso_local global i32 0, align 4
@PULSE_DIVISOR = common dso_local global i32 0, align 4
@ITEM_TEXTSTYLE_BLINK = common dso_local global i32 0, align 4
@BLINK_DIVISOR = common dso_local global i32 0, align 4
@CVAR_ENABLE = common dso_local global i32 0, align 4
@CVAR_DISABLE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @Item_OwnerDraw_Paint(%struct.TYPE_17__* %0) #0 {
  %2 = alloca %struct.TYPE_17__*, align 8
  %3 = alloca double*, align 8
  %4 = alloca double*, align 8
  %5 = alloca %struct.TYPE_16__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca float, align 4
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %2, align 8
  %8 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %9 = icmp eq %struct.TYPE_17__* %8, null
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  br label %437

11:                                               ; preds = %1
  %12 = load %struct.TYPE_11__*, %struct.TYPE_11__** @DC, align 8
  %13 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %12, i32 0, i32 2
  %14 = load i32 (i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, double*, i32, i32)*, i32 (i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, double*, i32, i32)** %13, align 8
  %15 = icmp ne i32 (i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, double*, i32, i32)* %14, null
  br i1 %15, label %16, label %437

16:                                               ; preds = %11
  %17 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %18 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %17, i32 0, i32 12
  %19 = load i64, i64* %18, align 8
  %20 = inttoptr i64 %19 to %struct.TYPE_16__*
  store %struct.TYPE_16__* %20, %struct.TYPE_16__** %5, align 8
  %21 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %22 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %21, i32 0, i32 3
  %23 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %22, i32 0, i32 0
  %24 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %25 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %24, i32 0, i32 3
  %26 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %25, i32 0, i32 1
  %27 = load double*, double** %26, align 8
  %28 = getelementptr inbounds double, double* %27, i64 3
  %29 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %30 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %29, i32 0, i32 4
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %33 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %32, i32 0, i32 3
  %34 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %33, i32 0, i32 6
  %35 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %36 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %35, i32 0, i32 3
  %37 = load i32, i32* %36, align 8
  %38 = load i32, i32* @qtrue, align 4
  %39 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %40 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @Fade(i32* %23, double* %28, i32 %31, i32* %34, i32 %37, i32 %38, i32 %41)
  %43 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %44 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %43, i32 0, i32 3
  %45 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %44, i32 0, i32 1
  %46 = call i32 @memcpy(double** %3, double** %45, i32 8)
  %47 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %48 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = icmp sgt i64 %49, 0
  br i1 %50, label %51, label %108

51:                                               ; preds = %16
  %52 = load %struct.TYPE_11__*, %struct.TYPE_11__** @DC, align 8
  %53 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %52, i32 0, i32 0
  %54 = load float (i32)*, float (i32)** %53, align 8
  %55 = icmp ne float (i32)* %54, null
  br i1 %55, label %56, label %108

56:                                               ; preds = %51
  %57 = load %struct.TYPE_11__*, %struct.TYPE_11__** @DC, align 8
  %58 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %57, i32 0, i32 0
  %59 = load float (i32)*, float (i32)** %58, align 8
  %60 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %61 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %60, i32 0, i32 3
  %62 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %61, i32 0, i32 4
  %63 = load i32, i32* %62, align 8
  %64 = call float %59(i32 %63)
  store float %64, float* %7, align 4
  store i32 0, i32* %6, align 4
  br label %65

65:                                               ; preds = %104, %56
  %66 = load i32, i32* %6, align 4
  %67 = sext i32 %66 to i64
  %68 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %69 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = icmp slt i64 %67, %70
  br i1 %71, label %72, label %107

72:                                               ; preds = %65
  %73 = load float, float* %7, align 4
  %74 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %75 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %74, i32 0, i32 11
  %76 = load %struct.TYPE_13__*, %struct.TYPE_13__** %75, align 8
  %77 = load i32, i32* %6, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %76, i64 %78
  %80 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %79, i32 0, i32 0
  %81 = load float, float* %80, align 8
  %82 = fcmp oge float %73, %81
  br i1 %82, label %83, label %103

83:                                               ; preds = %72
  %84 = load float, float* %7, align 4
  %85 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %86 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %85, i32 0, i32 11
  %87 = load %struct.TYPE_13__*, %struct.TYPE_13__** %86, align 8
  %88 = load i32, i32* %6, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %87, i64 %89
  %91 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %90, i32 0, i32 1
  %92 = load float, float* %91, align 4
  %93 = fcmp ole float %84, %92
  br i1 %93, label %94, label %103

94:                                               ; preds = %83
  %95 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %96 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %95, i32 0, i32 11
  %97 = load %struct.TYPE_13__*, %struct.TYPE_13__** %96, align 8
  %98 = load i32, i32* %6, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %97, i64 %99
  %101 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %100, i32 0, i32 2
  %102 = call i32 @memcpy(double** %3, double** %101, i32 8)
  br label %107

103:                                              ; preds = %83, %72
  br label %104

104:                                              ; preds = %103
  %105 = load i32, i32* %6, align 4
  %106 = add nsw i32 %105, 1
  store i32 %106, i32* %6, align 4
  br label %65

107:                                              ; preds = %94, %65
  br label %108

108:                                              ; preds = %107, %51, %16
  %109 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %110 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %109, i32 0, i32 3
  %111 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 8
  %113 = load i32, i32* @WINDOW_HASFOCUS, align 4
  %114 = and i32 %112, %113
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %163

116:                                              ; preds = %108
  %117 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %118 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %117, i32 0, i32 0
  %119 = load double*, double** %118, align 8
  %120 = getelementptr inbounds double, double* %119, i64 0
  %121 = load double, double* %120, align 8
  %122 = fmul double 8.000000e-01, %121
  %123 = load double*, double** %4, align 8
  %124 = getelementptr inbounds double, double* %123, i64 0
  store double %122, double* %124, align 8
  %125 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %126 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %125, i32 0, i32 0
  %127 = load double*, double** %126, align 8
  %128 = getelementptr inbounds double, double* %127, i64 1
  %129 = load double, double* %128, align 8
  %130 = fmul double 8.000000e-01, %129
  %131 = load double*, double** %4, align 8
  %132 = getelementptr inbounds double, double* %131, i64 1
  store double %130, double* %132, align 8
  %133 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %134 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %133, i32 0, i32 0
  %135 = load double*, double** %134, align 8
  %136 = getelementptr inbounds double, double* %135, i64 2
  %137 = load double, double* %136, align 8
  %138 = fmul double 8.000000e-01, %137
  %139 = load double*, double** %4, align 8
  %140 = getelementptr inbounds double, double* %139, i64 2
  store double %138, double* %140, align 8
  %141 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %142 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %141, i32 0, i32 0
  %143 = load double*, double** %142, align 8
  %144 = getelementptr inbounds double, double* %143, i64 3
  %145 = load double, double* %144, align 8
  %146 = fmul double 8.000000e-01, %145
  %147 = load double*, double** %4, align 8
  %148 = getelementptr inbounds double, double* %147, i64 3
  store double %146, double* %148, align 8
  %149 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %150 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %149, i32 0, i32 0
  %151 = load double*, double** %150, align 8
  %152 = load double*, double** %4, align 8
  %153 = load double*, double** %3, align 8
  %154 = load %struct.TYPE_11__*, %struct.TYPE_11__** @DC, align 8
  %155 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %154, i32 0, i32 1
  %156 = load i32, i32* %155, align 8
  %157 = load i32, i32* @PULSE_DIVISOR, align 4
  %158 = sdiv i32 %156, %157
  %159 = call double @sin(i32 %158)
  %160 = fmul double 5.000000e-01, %159
  %161 = fadd double 5.000000e-01, %160
  %162 = call i32 @LerpColor(double* %151, double* %152, double* %153, double %161)
  br label %230

163:                                              ; preds = %108
  %164 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %165 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %164, i32 0, i32 2
  %166 = load i32, i32* %165, align 4
  %167 = load i32, i32* @ITEM_TEXTSTYLE_BLINK, align 4
  %168 = icmp eq i32 %166, %167
  br i1 %168, label %169, label %229

169:                                              ; preds = %163
  %170 = load %struct.TYPE_11__*, %struct.TYPE_11__** @DC, align 8
  %171 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %170, i32 0, i32 1
  %172 = load i32, i32* %171, align 8
  %173 = load i32, i32* @BLINK_DIVISOR, align 4
  %174 = sdiv i32 %172, %173
  %175 = and i32 %174, 1
  %176 = icmp ne i32 %175, 0
  br i1 %176, label %229, label %177

177:                                              ; preds = %169
  %178 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %179 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %178, i32 0, i32 3
  %180 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %179, i32 0, i32 1
  %181 = load double*, double** %180, align 8
  %182 = getelementptr inbounds double, double* %181, i64 0
  %183 = load double, double* %182, align 8
  %184 = fmul double 8.000000e-01, %183
  %185 = load double*, double** %4, align 8
  %186 = getelementptr inbounds double, double* %185, i64 0
  store double %184, double* %186, align 8
  %187 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %188 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %187, i32 0, i32 3
  %189 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %188, i32 0, i32 1
  %190 = load double*, double** %189, align 8
  %191 = getelementptr inbounds double, double* %190, i64 1
  %192 = load double, double* %191, align 8
  %193 = fmul double 8.000000e-01, %192
  %194 = load double*, double** %4, align 8
  %195 = getelementptr inbounds double, double* %194, i64 1
  store double %193, double* %195, align 8
  %196 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %197 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %196, i32 0, i32 3
  %198 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %197, i32 0, i32 1
  %199 = load double*, double** %198, align 8
  %200 = getelementptr inbounds double, double* %199, i64 2
  %201 = load double, double* %200, align 8
  %202 = fmul double 8.000000e-01, %201
  %203 = load double*, double** %4, align 8
  %204 = getelementptr inbounds double, double* %203, i64 2
  store double %202, double* %204, align 8
  %205 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %206 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %205, i32 0, i32 3
  %207 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %206, i32 0, i32 1
  %208 = load double*, double** %207, align 8
  %209 = getelementptr inbounds double, double* %208, i64 3
  %210 = load double, double* %209, align 8
  %211 = fmul double 8.000000e-01, %210
  %212 = load double*, double** %4, align 8
  %213 = getelementptr inbounds double, double* %212, i64 3
  store double %211, double* %213, align 8
  %214 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %215 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %214, i32 0, i32 3
  %216 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %215, i32 0, i32 1
  %217 = load double*, double** %216, align 8
  %218 = load double*, double** %4, align 8
  %219 = load double*, double** %3, align 8
  %220 = load %struct.TYPE_11__*, %struct.TYPE_11__** @DC, align 8
  %221 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %220, i32 0, i32 1
  %222 = load i32, i32* %221, align 8
  %223 = load i32, i32* @PULSE_DIVISOR, align 4
  %224 = sdiv i32 %222, %223
  %225 = call double @sin(i32 %224)
  %226 = fmul double 5.000000e-01, %225
  %227 = fadd double 5.000000e-01, %226
  %228 = call i32 @LerpColor(double* %217, double* %218, double* %219, double %227)
  br label %229

229:                                              ; preds = %177, %169, %163
  br label %230

230:                                              ; preds = %229, %116
  %231 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %232 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %231, i32 0, i32 1
  %233 = load i32, i32* %232, align 8
  %234 = load i32, i32* @CVAR_ENABLE, align 4
  %235 = load i32, i32* @CVAR_DISABLE, align 4
  %236 = or i32 %234, %235
  %237 = and i32 %233, %236
  %238 = icmp ne i32 %237, 0
  br i1 %238, label %239, label %250

239:                                              ; preds = %230
  %240 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %241 = load i32, i32* @CVAR_ENABLE, align 4
  %242 = call i32 @Item_EnableShowViaCvar(%struct.TYPE_17__* %240, i32 %241)
  %243 = icmp ne i32 %242, 0
  br i1 %243, label %250, label %244

244:                                              ; preds = %239
  %245 = load double*, double** %3, align 8
  %246 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %247 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %246, i32 0, i32 1
  %248 = load i32, i32* %247, align 8
  %249 = call i32 @Com_Memcpy(double* %245, i32 %248, i32 8)
  br label %250

250:                                              ; preds = %244, %239, %230
  %251 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %252 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %251, i32 0, i32 10
  %253 = load i64*, i64** %252, align 8
  %254 = icmp ne i64* %253, null
  br i1 %254, label %255, label %380

255:                                              ; preds = %250
  %256 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %257 = call i32 @Item_Text_Paint(%struct.TYPE_17__* %256)
  %258 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %259 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %258, i32 0, i32 10
  %260 = load i64*, i64** %259, align 8
  %261 = getelementptr inbounds i64, i64* %260, i64 0
  %262 = load i64, i64* %261, align 8
  %263 = icmp ne i64 %262, 0
  br i1 %263, label %264, label %322

264:                                              ; preds = %255
  %265 = load %struct.TYPE_11__*, %struct.TYPE_11__** @DC, align 8
  %266 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %265, i32 0, i32 2
  %267 = load i32 (i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, double*, i32, i32)*, i32 (i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, double*, i32, i32)** %266, align 8
  %268 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %269 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %268, i32 0, i32 9
  %270 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %269, i32 0, i32 1
  %271 = load i64, i64* %270, align 8
  %272 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %273 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %272, i32 0, i32 9
  %274 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %273, i32 0, i32 0
  %275 = load i64, i64* %274, align 8
  %276 = add nsw i64 %271, %275
  %277 = add nsw i64 %276, 8
  %278 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %279 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %278, i32 0, i32 3
  %280 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %279, i32 0, i32 5
  %281 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %280, i32 0, i32 2
  %282 = load i32, i32* %281, align 8
  %283 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %284 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %283, i32 0, i32 3
  %285 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %284, i32 0, i32 5
  %286 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %285, i32 0, i32 1
  %287 = load i32, i32* %286, align 4
  %288 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %289 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %288, i32 0, i32 3
  %290 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %289, i32 0, i32 5
  %291 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %290, i32 0, i32 0
  %292 = load i32, i32* %291, align 8
  %293 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %294 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %293, i32 0, i32 7
  %295 = load i32, i32* %294, align 4
  %296 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %297 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %296, i32 0, i32 3
  %298 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %297, i32 0, i32 4
  %299 = load i32, i32* %298, align 8
  %300 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %301 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %300, i32 0, i32 3
  %302 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %301, i32 0, i32 3
  %303 = load i32, i32* %302, align 4
  %304 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %305 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %304, i32 0, i32 6
  %306 = load i32, i32* %305, align 8
  %307 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %308 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %307, i32 0, i32 5
  %309 = load i32, i32* %308, align 4
  %310 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %311 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %310, i32 0, i32 4
  %312 = load i32, i32* %311, align 8
  %313 = load double*, double** %3, align 8
  %314 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %315 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %314, i32 0, i32 3
  %316 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %315, i32 0, i32 2
  %317 = load i32, i32* %316, align 8
  %318 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %319 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %318, i32 0, i32 2
  %320 = load i32, i32* %319, align 4
  %321 = call i32 %267(i64 %277, i32 %282, i32 %287, i32 %292, i32 0, i32 %295, i32 %299, i32 %303, i32 %306, i32 %309, i32 %312, double* %313, i32 %317, i32 %320)
  br label %379

322:                                              ; preds = %255
  %323 = load %struct.TYPE_11__*, %struct.TYPE_11__** @DC, align 8
  %324 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %323, i32 0, i32 2
  %325 = load i32 (i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, double*, i32, i32)*, i32 (i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, double*, i32, i32)** %324, align 8
  %326 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %327 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %326, i32 0, i32 9
  %328 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %327, i32 0, i32 1
  %329 = load i64, i64* %328, align 8
  %330 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %331 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %330, i32 0, i32 9
  %332 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %331, i32 0, i32 0
  %333 = load i64, i64* %332, align 8
  %334 = add nsw i64 %329, %333
  %335 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %336 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %335, i32 0, i32 3
  %337 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %336, i32 0, i32 5
  %338 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %337, i32 0, i32 2
  %339 = load i32, i32* %338, align 8
  %340 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %341 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %340, i32 0, i32 3
  %342 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %341, i32 0, i32 5
  %343 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %342, i32 0, i32 1
  %344 = load i32, i32* %343, align 4
  %345 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %346 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %345, i32 0, i32 3
  %347 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %346, i32 0, i32 5
  %348 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %347, i32 0, i32 0
  %349 = load i32, i32* %348, align 8
  %350 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %351 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %350, i32 0, i32 7
  %352 = load i32, i32* %351, align 4
  %353 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %354 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %353, i32 0, i32 3
  %355 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %354, i32 0, i32 4
  %356 = load i32, i32* %355, align 8
  %357 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %358 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %357, i32 0, i32 3
  %359 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %358, i32 0, i32 3
  %360 = load i32, i32* %359, align 4
  %361 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %362 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %361, i32 0, i32 6
  %363 = load i32, i32* %362, align 8
  %364 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %365 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %364, i32 0, i32 5
  %366 = load i32, i32* %365, align 4
  %367 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %368 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %367, i32 0, i32 4
  %369 = load i32, i32* %368, align 8
  %370 = load double*, double** %3, align 8
  %371 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %372 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %371, i32 0, i32 3
  %373 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %372, i32 0, i32 2
  %374 = load i32, i32* %373, align 8
  %375 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %376 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %375, i32 0, i32 2
  %377 = load i32, i32* %376, align 4
  %378 = call i32 %325(i64 %334, i32 %339, i32 %344, i32 %349, i32 0, i32 %352, i32 %356, i32 %360, i32 %363, i32 %366, i32 %369, double* %370, i32 %374, i32 %377)
  br label %379

379:                                              ; preds = %322, %264
  br label %436

380:                                              ; preds = %250
  %381 = load %struct.TYPE_11__*, %struct.TYPE_11__** @DC, align 8
  %382 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %381, i32 0, i32 2
  %383 = load i32 (i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, double*, i32, i32)*, i32 (i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, double*, i32, i32)** %382, align 8
  %384 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %385 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %384, i32 0, i32 3
  %386 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %385, i32 0, i32 5
  %387 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %386, i32 0, i32 3
  %388 = load i64, i64* %387, align 8
  %389 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %390 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %389, i32 0, i32 3
  %391 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %390, i32 0, i32 5
  %392 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %391, i32 0, i32 2
  %393 = load i32, i32* %392, align 8
  %394 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %395 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %394, i32 0, i32 3
  %396 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %395, i32 0, i32 5
  %397 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %396, i32 0, i32 1
  %398 = load i32, i32* %397, align 4
  %399 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %400 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %399, i32 0, i32 3
  %401 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %400, i32 0, i32 5
  %402 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %401, i32 0, i32 0
  %403 = load i32, i32* %402, align 8
  %404 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %405 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %404, i32 0, i32 8
  %406 = load i32, i32* %405, align 8
  %407 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %408 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %407, i32 0, i32 7
  %409 = load i32, i32* %408, align 4
  %410 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %411 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %410, i32 0, i32 3
  %412 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %411, i32 0, i32 4
  %413 = load i32, i32* %412, align 8
  %414 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %415 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %414, i32 0, i32 3
  %416 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %415, i32 0, i32 3
  %417 = load i32, i32* %416, align 4
  %418 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %419 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %418, i32 0, i32 6
  %420 = load i32, i32* %419, align 8
  %421 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %422 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %421, i32 0, i32 5
  %423 = load i32, i32* %422, align 4
  %424 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %425 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %424, i32 0, i32 4
  %426 = load i32, i32* %425, align 8
  %427 = load double*, double** %3, align 8
  %428 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %429 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %428, i32 0, i32 3
  %430 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %429, i32 0, i32 2
  %431 = load i32, i32* %430, align 8
  %432 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %433 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %432, i32 0, i32 2
  %434 = load i32, i32* %433, align 4
  %435 = call i32 %383(i64 %388, i32 %393, i32 %398, i32 %403, i32 %406, i32 %409, i32 %413, i32 %417, i32 %420, i32 %423, i32 %426, double* %427, i32 %431, i32 %434)
  br label %436

436:                                              ; preds = %380, %379
  br label %437

437:                                              ; preds = %10, %436, %11
  ret void
}

declare dso_local i32 @Fade(i32*, double*, i32, i32*, i32, i32, i32) #1

declare dso_local i32 @memcpy(double**, double**, i32) #1

declare dso_local i32 @LerpColor(double*, double*, double*, double) #1

declare dso_local double @sin(i32) #1

declare dso_local i32 @Item_EnableShowViaCvar(%struct.TYPE_17__*, i32) #1

declare dso_local i32 @Com_Memcpy(double*, i32, i32) #1

declare dso_local i32 @Item_Text_Paint(%struct.TYPE_17__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
