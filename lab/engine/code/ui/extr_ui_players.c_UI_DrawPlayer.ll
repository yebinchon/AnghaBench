; ModuleID = '/home/carl/AnghaBench/lab/engine/code/ui/extr_ui_players.c_UI_DrawPlayer.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/ui/extr_ui_players.c_UI_DrawPlayer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_23__ = type { %struct.TYPE_19__ }
%struct.TYPE_19__ = type { float, i32 }
%struct.TYPE_22__ = type { i64, i32, i64, i64, i64, i64, i32, double*, i64, i64, i64, i64, i64, i32, i64, i64, i32, i32, %struct.TYPE_20__* }
%struct.TYPE_20__ = type { i32 }
%struct.TYPE_21__ = type { float, float, float, float, i32, i32, i32, double*, double*, i32, double*, i64, i32, i32, i32, i32, i32, i32, i32, i32 }

@dp_realtime = common dso_local global i32 0, align 4
@WP_NUM_WEAPONS = common dso_local global i64 0, align 8
@weaponChangeSound = common dso_local global i32 0, align 4
@CHAN_LOCAL = common dso_local global i32 0, align 4
@jumpHeight = common dso_local global i64 0, align 8
@RDF_NOWORLDMODEL = common dso_local global i32 0, align 4
@uiInfo = common dso_local global %struct.TYPE_23__ zeroinitializer, align 4
@M_PI = common dso_local global i32 0, align 4
@RF_LIGHTING_ORIGIN = common dso_local global i32 0, align 4
@RF_NOSHADOW = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"tag_torso\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"tag_head\00", align 1
@WP_NONE = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [11 x i8] c"tag_weapon\00", align 1
@WP_MACHINEGUN = common dso_local global i64 0, align 8
@WP_GAUNTLET = common dso_local global i64 0, align 8
@WP_BFG = common dso_local global i64 0, align 8
@YAW = common dso_local global i64 0, align 8
@PITCH = common dso_local global i64 0, align 8
@ROLL = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [11 x i8] c"tag_barrel\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"tag_flash\00", align 1
@.str.5 = private unnamed_addr constant [17 x i8] c"sprites/balloon3\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @UI_DrawPlayer(float %0, float %1, float %2, float %3, %struct.TYPE_22__* %4, i32 %5) #0 {
  %7 = alloca float, align 4
  %8 = alloca float, align 4
  %9 = alloca float, align 4
  %10 = alloca float, align 4
  %11 = alloca %struct.TYPE_22__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_21__, align 8
  %14 = alloca %struct.TYPE_21__, align 8
  %15 = alloca %struct.TYPE_21__, align 8
  %16 = alloca %struct.TYPE_21__, align 8
  %17 = alloca %struct.TYPE_21__, align 8
  %18 = alloca %struct.TYPE_21__, align 8
  %19 = alloca %struct.TYPE_21__, align 8
  %20 = alloca double*, align 8
  %21 = alloca i32, align 4
  %22 = alloca double*, align 8
  %23 = alloca double*, align 8
  %24 = alloca float, align 4
  %25 = alloca float, align 4
  %26 = alloca double*, align 8
  store float %0, float* %7, align 4
  store float %1, float* %8, align 4
  store float %2, float* %9, align 4
  store float %3, float* %10, align 4
  store %struct.TYPE_22__* %4, %struct.TYPE_22__** %11, align 8
  store i32 %5, i32* %12, align 4
  %27 = bitcast %struct.TYPE_21__* %14 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %27, i8 0, i64 104, i1 false)
  %28 = bitcast %struct.TYPE_21__* %15 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %28, i8 0, i64 104, i1 false)
  %29 = bitcast %struct.TYPE_21__* %16 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %29, i8 0, i64 104, i1 false)
  %30 = bitcast %struct.TYPE_21__* %17 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %30, i8 0, i64 104, i1 false)
  %31 = bitcast %struct.TYPE_21__* %18 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %31, i8 0, i64 104, i1 false)
  %32 = bitcast %struct.TYPE_21__* %19 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %32, i8 0, i64 104, i1 false)
  store double* inttoptr (i64 -16 to double*), double** %22, align 8
  store double* inttoptr (i64 16 to double*), double** %23, align 8
  %33 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %34 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %33, i32 0, i32 15
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %55

37:                                               ; preds = %6
  %38 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %39 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %38, i32 0, i32 12
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %55

42:                                               ; preds = %37
  %43 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %44 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %43, i32 0, i32 14
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %55

47:                                               ; preds = %42
  %48 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %49 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %48, i32 0, i32 18
  %50 = load %struct.TYPE_20__*, %struct.TYPE_20__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %50, i64 0
  %52 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %56, label %55

55:                                               ; preds = %47, %42, %37, %6
  br label %486

56:                                               ; preds = %47
  %57 = load float, float* %9, align 4
  %58 = fcmp oeq float %57, 0.000000e+00
  br i1 %58, label %62, label %59

59:                                               ; preds = %56
  %60 = load float, float* %10, align 4
  %61 = fcmp oeq float %60, 0.000000e+00
  br i1 %61, label %62, label %63

62:                                               ; preds = %59, %56
  br label %486

63:                                               ; preds = %59
  %64 = load i32, i32* %12, align 4
  store i32 %64, i32* @dp_realtime, align 4
  %65 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %66 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = load i64, i64* @WP_NUM_WEAPONS, align 8
  %69 = icmp ne i64 %67, %68
  br i1 %69, label %70, label %104

70:                                               ; preds = %63
  %71 = load i32, i32* @dp_realtime, align 4
  %72 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %73 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 8
  %75 = icmp sgt i32 %71, %74
  br i1 %75, label %76, label %104

76:                                               ; preds = %70
  %77 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %78 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %81 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %80, i32 0, i32 2
  store i64 %79, i64* %81, align 8
  %82 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %83 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %86 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %85, i32 0, i32 3
  store i64 %84, i64* %86, align 8
  %87 = load i64, i64* @WP_NUM_WEAPONS, align 8
  %88 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %89 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %88, i32 0, i32 0
  store i64 %87, i64* %89, align 8
  %90 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %91 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %90, i32 0, i32 1
  store i32 0, i32* %91, align 8
  %92 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %93 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %92, i32 0, i32 4
  %94 = load i64, i64* %93, align 8
  %95 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %96 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %95, i32 0, i32 2
  %97 = load i64, i64* %96, align 8
  %98 = icmp ne i64 %94, %97
  br i1 %98, label %99, label %103

99:                                               ; preds = %76
  %100 = load i32, i32* @weaponChangeSound, align 4
  %101 = load i32, i32* @CHAN_LOCAL, align 4
  %102 = call i32 @trap_S_StartLocalSound(i32 %100, i32 %101)
  br label %103

103:                                              ; preds = %99, %76
  br label %104

104:                                              ; preds = %103, %70, %63
  %105 = call i32 @UI_AdjustFrom640(float* %7, float* %8, float* %9, float* %10)
  %106 = load i64, i64* @jumpHeight, align 8
  %107 = sitofp i64 %106 to float
  %108 = load float, float* %8, align 4
  %109 = fsub float %108, %107
  store float %109, float* %8, align 4
  %110 = call i32 @memset(%struct.TYPE_21__* %13, i32 0, i32 104)
  %111 = call i32 @memset(%struct.TYPE_21__* %14, i32 0, i32 104)
  %112 = call i32 @memset(%struct.TYPE_21__* %15, i32 0, i32 104)
  %113 = call i32 @memset(%struct.TYPE_21__* %16, i32 0, i32 104)
  %114 = load i32, i32* @RDF_NOWORLDMODEL, align 4
  %115 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %13, i32 0, i32 18
  store i32 %114, i32* %115, align 8
  %116 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %13, i32 0, i32 17
  %117 = load i32, i32* %116, align 4
  %118 = call i32 @AxisClear(i32 %117)
  %119 = load float, float* %7, align 4
  %120 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %13, i32 0, i32 0
  store float %119, float* %120, align 8
  %121 = load float, float* %8, align 4
  %122 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %13, i32 0, i32 1
  store float %121, float* %122, align 4
  %123 = load float, float* %9, align 4
  %124 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %13, i32 0, i32 2
  store float %123, float* %124, align 8
  %125 = load float, float* %10, align 4
  %126 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %13, i32 0, i32 3
  store float %125, float* %126, align 4
  %127 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %13, i32 0, i32 2
  %128 = load float, float* %127, align 8
  %129 = load float, float* getelementptr inbounds (%struct.TYPE_23__, %struct.TYPE_23__* @uiInfo, i32 0, i32 0, i32 0), align 4
  %130 = fdiv float %128, %129
  %131 = fdiv float %130, 6.400000e+02
  %132 = fmul float %131, 9.000000e+01
  %133 = fptosi float %132 to i32
  %134 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %13, i32 0, i32 4
  store i32 %133, i32* %134, align 8
  %135 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %13, i32 0, i32 2
  %136 = load float, float* %135, align 8
  %137 = load float, float* getelementptr inbounds (%struct.TYPE_23__, %struct.TYPE_23__* @uiInfo, i32 0, i32 0, i32 0), align 4
  %138 = fdiv float %136, %137
  %139 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %13, i32 0, i32 4
  %140 = load i32, i32* %139, align 8
  %141 = sdiv i32 %140, 360
  %142 = load i32, i32* @M_PI, align 4
  %143 = mul nsw i32 %141, %142
  %144 = sitofp i32 %143 to double
  %145 = call float @tan(double %144)
  %146 = fdiv float %138, %145
  store float %146, float* %25, align 4
  %147 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %13, i32 0, i32 3
  %148 = load float, float* %147, align 4
  %149 = load i32, i32* getelementptr inbounds (%struct.TYPE_23__, %struct.TYPE_23__* @uiInfo, i32 0, i32 0, i32 1), align 4
  %150 = sitofp i32 %149 to float
  %151 = fdiv float %148, %150
  %152 = fptosi float %151 to i32
  %153 = load float, float* %25, align 4
  %154 = call i32 @atan2(i32 %152, float %153)
  %155 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %13, i32 0, i32 5
  store i32 %154, i32* %155, align 4
  %156 = load i32, i32* @M_PI, align 4
  %157 = sitofp i32 %156 to float
  %158 = fdiv float 3.600000e+02, %157
  %159 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %13, i32 0, i32 5
  %160 = load i32, i32* %159, align 4
  %161 = sitofp i32 %160 to float
  %162 = fmul float %161, %158
  %163 = fptosi float %162 to i32
  store i32 %163, i32* %159, align 4
  %164 = load double*, double** %23, align 8
  %165 = getelementptr inbounds double, double* %164, i64 2
  %166 = load double, double* %165, align 8
  %167 = load double*, double** %22, align 8
  %168 = getelementptr inbounds double, double* %167, i64 2
  %169 = load double, double* %168, align 8
  %170 = fsub double %166, %169
  %171 = fmul double 0x3FE6666666666666, %170
  %172 = fptrunc double %171 to float
  store float %172, float* %24, align 4
  %173 = load float, float* %24, align 4
  %174 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %13, i32 0, i32 4
  %175 = load i32, i32* %174, align 8
  %176 = call double @DEG2RAD(i32 %175)
  %177 = fmul double %176, 5.000000e-01
  %178 = call float @tan(double %177)
  %179 = fdiv float %173, %178
  %180 = fpext float %179 to double
  %181 = load double*, double** %20, align 8
  %182 = getelementptr inbounds double, double* %181, i64 0
  store double %180, double* %182, align 8
  %183 = load double*, double** %22, align 8
  %184 = getelementptr inbounds double, double* %183, i64 1
  %185 = load double, double* %184, align 8
  %186 = load double*, double** %23, align 8
  %187 = getelementptr inbounds double, double* %186, i64 1
  %188 = load double, double* %187, align 8
  %189 = fadd double %185, %188
  %190 = fmul double 5.000000e-01, %189
  %191 = load double*, double** %20, align 8
  %192 = getelementptr inbounds double, double* %191, i64 1
  store double %190, double* %192, align 8
  %193 = load double*, double** %22, align 8
  %194 = getelementptr inbounds double, double* %193, i64 2
  %195 = load double, double* %194, align 8
  %196 = load double*, double** %23, align 8
  %197 = getelementptr inbounds double, double* %196, i64 2
  %198 = load double, double* %197, align 8
  %199 = fadd double %195, %198
  %200 = fmul double -5.000000e-01, %199
  %201 = load double*, double** %20, align 8
  %202 = getelementptr inbounds double, double* %201, i64 2
  store double %200, double* %202, align 8
  %203 = load i32, i32* @dp_realtime, align 4
  %204 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %13, i32 0, i32 6
  store i32 %203, i32* %204, align 8
  %205 = call i32 (...) @trap_R_ClearScene()
  %206 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %207 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %14, i32 0, i32 12
  %208 = load i32, i32* %207, align 8
  %209 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %15, i32 0, i32 12
  %210 = load i32, i32* %209, align 8
  %211 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %16, i32 0, i32 12
  %212 = load i32, i32* %211, align 8
  %213 = call i32 @UI_PlayerAngles(%struct.TYPE_22__* %206, i32 %208, i32 %210, i32 %212)
  %214 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %215 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %14, i32 0, i32 16
  %216 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %14, i32 0, i32 15
  %217 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %14, i32 0, i32 14
  %218 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %15, i32 0, i32 16
  %219 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %15, i32 0, i32 15
  %220 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %15, i32 0, i32 14
  %221 = call i32 @UI_PlayerAnimation(%struct.TYPE_22__* %214, i32* %215, i32* %216, i32* %217, i32* %218, i32* %219, i32* %220)
  %222 = load i32, i32* @RF_LIGHTING_ORIGIN, align 4
  %223 = load i32, i32* @RF_NOSHADOW, align 4
  %224 = or i32 %222, %223
  store i32 %224, i32* %21, align 4
  %225 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %226 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %225, i32 0, i32 15
  %227 = load i64, i64* %226, align 8
  %228 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %14, i32 0, i32 11
  store i64 %227, i64* %228, align 8
  %229 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %230 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %229, i32 0, i32 17
  %231 = load i32, i32* %230, align 4
  %232 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %14, i32 0, i32 13
  store i32 %231, i32* %232, align 4
  %233 = load double*, double** %20, align 8
  %234 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %14, i32 0, i32 7
  %235 = load double*, double** %234, align 8
  %236 = call i32 @VectorCopy(double* %233, double* %235)
  %237 = load double*, double** %20, align 8
  %238 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %14, i32 0, i32 8
  %239 = load double*, double** %238, align 8
  %240 = call i32 @VectorCopy(double* %237, double* %239)
  %241 = load i32, i32* %21, align 4
  %242 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %14, i32 0, i32 9
  store i32 %241, i32* %242, align 8
  %243 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %14, i32 0, i32 7
  %244 = load double*, double** %243, align 8
  %245 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %14, i32 0, i32 10
  %246 = load double*, double** %245, align 8
  %247 = call i32 @VectorCopy(double* %244, double* %246)
  %248 = call i32 @trap_R_AddRefEntityToScene(%struct.TYPE_21__* %14)
  %249 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %14, i32 0, i32 11
  %250 = load i64, i64* %249, align 8
  %251 = icmp ne i64 %250, 0
  br i1 %251, label %253, label %252

252:                                              ; preds = %104
  br label %486

253:                                              ; preds = %104
  %254 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %255 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %254, i32 0, i32 12
  %256 = load i64, i64* %255, align 8
  %257 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %15, i32 0, i32 11
  store i64 %256, i64* %257, align 8
  %258 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %15, i32 0, i32 11
  %259 = load i64, i64* %258, align 8
  %260 = icmp ne i64 %259, 0
  br i1 %260, label %262, label %261

261:                                              ; preds = %253
  br label %486

262:                                              ; preds = %253
  %263 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %264 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %263, i32 0, i32 16
  %265 = load i32, i32* %264, align 8
  %266 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %15, i32 0, i32 13
  store i32 %265, i32* %266, align 4
  %267 = load double*, double** %20, align 8
  %268 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %15, i32 0, i32 8
  %269 = load double*, double** %268, align 8
  %270 = call i32 @VectorCopy(double* %267, double* %269)
  %271 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %272 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %271, i32 0, i32 15
  %273 = load i64, i64* %272, align 8
  %274 = call i32 @UI_PositionRotatedEntityOnTag(%struct.TYPE_21__* %15, %struct.TYPE_21__* %14, i64 %273, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  %275 = load i32, i32* %21, align 4
  %276 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %15, i32 0, i32 9
  store i32 %275, i32* %276, align 8
  %277 = call i32 @trap_R_AddRefEntityToScene(%struct.TYPE_21__* %15)
  %278 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %279 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %278, i32 0, i32 14
  %280 = load i64, i64* %279, align 8
  %281 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %16, i32 0, i32 11
  store i64 %280, i64* %281, align 8
  %282 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %16, i32 0, i32 11
  %283 = load i64, i64* %282, align 8
  %284 = icmp ne i64 %283, 0
  br i1 %284, label %286, label %285

285:                                              ; preds = %262
  br label %486

286:                                              ; preds = %262
  %287 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %288 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %287, i32 0, i32 13
  %289 = load i32, i32* %288, align 8
  %290 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %16, i32 0, i32 13
  store i32 %289, i32* %290, align 4
  %291 = load double*, double** %20, align 8
  %292 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %16, i32 0, i32 8
  %293 = load double*, double** %292, align 8
  %294 = call i32 @VectorCopy(double* %291, double* %293)
  %295 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %296 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %295, i32 0, i32 12
  %297 = load i64, i64* %296, align 8
  %298 = call i32 @UI_PositionRotatedEntityOnTag(%struct.TYPE_21__* %16, %struct.TYPE_21__* %15, i64 %297, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  %299 = load i32, i32* %21, align 4
  %300 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %16, i32 0, i32 9
  store i32 %299, i32* %300, align 8
  %301 = call i32 @trap_R_AddRefEntityToScene(%struct.TYPE_21__* %16)
  %302 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %303 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %302, i32 0, i32 4
  %304 = load i64, i64* %303, align 8
  %305 = load i64, i64* @WP_NONE, align 8
  %306 = icmp ne i64 %304, %305
  br i1 %306, label %307, label %324

307:                                              ; preds = %286
  %308 = call i32 @memset(%struct.TYPE_21__* %17, i32 0, i32 104)
  %309 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %310 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %309, i32 0, i32 9
  %311 = load i64, i64* %310, align 8
  %312 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %17, i32 0, i32 11
  store i64 %311, i64* %312, align 8
  %313 = load double*, double** %20, align 8
  %314 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %17, i32 0, i32 8
  %315 = load double*, double** %314, align 8
  %316 = call i32 @VectorCopy(double* %313, double* %315)
  %317 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %318 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %317, i32 0, i32 12
  %319 = load i64, i64* %318, align 8
  %320 = call i32 @UI_PositionEntityOnTag(%struct.TYPE_21__* %17, %struct.TYPE_21__* %15, i64 %319, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0))
  %321 = load i32, i32* %21, align 4
  %322 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %17, i32 0, i32 9
  store i32 %321, i32* %322, align 8
  %323 = call i32 @trap_R_AddRefEntityToScene(%struct.TYPE_21__* %17)
  br label %324

324:                                              ; preds = %307, %286
  %325 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %326 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %325, i32 0, i32 5
  %327 = load i64, i64* %326, align 8
  %328 = load i64, i64* @WP_MACHINEGUN, align 8
  %329 = icmp eq i64 %327, %328
  br i1 %329, label %342, label %330

330:                                              ; preds = %324
  %331 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %332 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %331, i32 0, i32 5
  %333 = load i64, i64* %332, align 8
  %334 = load i64, i64* @WP_GAUNTLET, align 8
  %335 = icmp eq i64 %333, %334
  br i1 %335, label %342, label %336

336:                                              ; preds = %330
  %337 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %338 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %337, i32 0, i32 5
  %339 = load i64, i64* %338, align 8
  %340 = load i64, i64* @WP_BFG, align 8
  %341 = icmp eq i64 %339, %340
  br i1 %341, label %342, label %374

342:                                              ; preds = %336, %330, %324
  %343 = call i32 @memset(%struct.TYPE_21__* %18, i32 0, i32 104)
  %344 = load double*, double** %20, align 8
  %345 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %18, i32 0, i32 8
  %346 = load double*, double** %345, align 8
  %347 = call i32 @VectorCopy(double* %344, double* %346)
  %348 = load i32, i32* %21, align 4
  %349 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %18, i32 0, i32 9
  store i32 %348, i32* %349, align 8
  %350 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %351 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %350, i32 0, i32 11
  %352 = load i64, i64* %351, align 8
  %353 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %18, i32 0, i32 11
  store i64 %352, i64* %353, align 8
  %354 = load double*, double** %26, align 8
  %355 = load i64, i64* @YAW, align 8
  %356 = getelementptr inbounds double, double* %354, i64 %355
  store double 0.000000e+00, double* %356, align 8
  %357 = load double*, double** %26, align 8
  %358 = load i64, i64* @PITCH, align 8
  %359 = getelementptr inbounds double, double* %357, i64 %358
  store double 0.000000e+00, double* %359, align 8
  %360 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %361 = call double @UI_MachinegunSpinAngle(%struct.TYPE_22__* %360)
  %362 = load double*, double** %26, align 8
  %363 = load i64, i64* @ROLL, align 8
  %364 = getelementptr inbounds double, double* %362, i64 %363
  store double %361, double* %364, align 8
  %365 = load double*, double** %26, align 8
  %366 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %18, i32 0, i32 12
  %367 = load i32, i32* %366, align 8
  %368 = call i32 @AnglesToAxis(double* %365, i32 %367)
  %369 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %370 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %369, i32 0, i32 9
  %371 = load i64, i64* %370, align 8
  %372 = call i32 @UI_PositionRotatedEntityOnTag(%struct.TYPE_21__* %18, %struct.TYPE_21__* %17, i64 %371, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0))
  %373 = call i32 @trap_R_AddRefEntityToScene(%struct.TYPE_21__* %18)
  br label %374

374:                                              ; preds = %342, %336
  %375 = load i32, i32* @dp_realtime, align 4
  %376 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %377 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %376, i32 0, i32 6
  %378 = load i32, i32* %377, align 8
  %379 = icmp sle i32 %375, %378
  br i1 %379, label %380, label %446

380:                                              ; preds = %374
  %381 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %382 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %381, i32 0, i32 10
  %383 = load i64, i64* %382, align 8
  %384 = icmp ne i64 %383, 0
  br i1 %384, label %385, label %402

385:                                              ; preds = %380
  %386 = call i32 @memset(%struct.TYPE_21__* %19, i32 0, i32 104)
  %387 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %388 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %387, i32 0, i32 10
  %389 = load i64, i64* %388, align 8
  %390 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %19, i32 0, i32 11
  store i64 %389, i64* %390, align 8
  %391 = load double*, double** %20, align 8
  %392 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %19, i32 0, i32 8
  %393 = load double*, double** %392, align 8
  %394 = call i32 @VectorCopy(double* %391, double* %393)
  %395 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %396 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %395, i32 0, i32 9
  %397 = load i64, i64* %396, align 8
  %398 = call i32 @UI_PositionEntityOnTag(%struct.TYPE_21__* %19, %struct.TYPE_21__* %17, i64 %397, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0))
  %399 = load i32, i32* %21, align 4
  %400 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %19, i32 0, i32 9
  store i32 %399, i32* %400, align 8
  %401 = call i32 @trap_R_AddRefEntityToScene(%struct.TYPE_21__* %19)
  br label %402

402:                                              ; preds = %385, %380
  %403 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %404 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %403, i32 0, i32 7
  %405 = load double*, double** %404, align 8
  %406 = getelementptr inbounds double, double* %405, i64 0
  %407 = load double, double* %406, align 8
  %408 = fcmp une double %407, 0.000000e+00
  br i1 %408, label %423, label %409

409:                                              ; preds = %402
  %410 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %411 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %410, i32 0, i32 7
  %412 = load double*, double** %411, align 8
  %413 = getelementptr inbounds double, double* %412, i64 1
  %414 = load double, double* %413, align 8
  %415 = fcmp une double %414, 0.000000e+00
  br i1 %415, label %423, label %416

416:                                              ; preds = %409
  %417 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %418 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %417, i32 0, i32 7
  %419 = load double*, double** %418, align 8
  %420 = getelementptr inbounds double, double* %419, i64 2
  %421 = load double, double* %420, align 8
  %422 = fcmp une double %421, 0.000000e+00
  br i1 %422, label %423, label %445

423:                                              ; preds = %416, %409, %402
  %424 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %19, i32 0, i32 7
  %425 = load double*, double** %424, align 8
  %426 = call i32 (...) @rand()
  %427 = and i32 %426, 31
  %428 = add nsw i32 200, %427
  %429 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %430 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %429, i32 0, i32 7
  %431 = load double*, double** %430, align 8
  %432 = getelementptr inbounds double, double* %431, i64 0
  %433 = load double, double* %432, align 8
  %434 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %435 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %434, i32 0, i32 7
  %436 = load double*, double** %435, align 8
  %437 = getelementptr inbounds double, double* %436, i64 1
  %438 = load double, double* %437, align 8
  %439 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %440 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %439, i32 0, i32 7
  %441 = load double*, double** %440, align 8
  %442 = getelementptr inbounds double, double* %441, i64 2
  %443 = load double, double* %442, align 8
  %444 = call i32 @trap_R_AddLightToScene(double* %425, i32 %428, double %433, double %438, double %443)
  br label %445

445:                                              ; preds = %423, %416
  br label %446

446:                                              ; preds = %445, %374
  %447 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %448 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %447, i32 0, i32 8
  %449 = load i64, i64* %448, align 8
  %450 = icmp ne i64 %449, 0
  br i1 %450, label %451, label %456

451:                                              ; preds = %446
  %452 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %453 = load double*, double** %20, align 8
  %454 = call i32 @trap_R_RegisterShaderNoMip(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i64 0, i64 0))
  %455 = call i32 @UI_PlayerFloatSprite(%struct.TYPE_22__* %452, double* %453, i32 %454)
  br label %456

456:                                              ; preds = %451, %446
  %457 = load double*, double** %20, align 8
  %458 = getelementptr inbounds double, double* %457, i64 0
  %459 = load double, double* %458, align 8
  %460 = fsub double %459, 1.000000e+02
  store double %460, double* %458, align 8
  %461 = load double*, double** %20, align 8
  %462 = getelementptr inbounds double, double* %461, i64 1
  %463 = load double, double* %462, align 8
  %464 = fadd double %463, 1.000000e+02
  store double %464, double* %462, align 8
  %465 = load double*, double** %20, align 8
  %466 = getelementptr inbounds double, double* %465, i64 2
  %467 = load double, double* %466, align 8
  %468 = fadd double %467, 1.000000e+02
  store double %468, double* %466, align 8
  %469 = load double*, double** %20, align 8
  %470 = call i32 @trap_R_AddLightToScene(double* %469, i32 500, double 1.000000e+00, double 1.000000e+00, double 1.000000e+00)
  %471 = load double*, double** %20, align 8
  %472 = getelementptr inbounds double, double* %471, i64 0
  %473 = load double, double* %472, align 8
  %474 = fsub double %473, 1.000000e+02
  store double %474, double* %472, align 8
  %475 = load double*, double** %20, align 8
  %476 = getelementptr inbounds double, double* %475, i64 1
  %477 = load double, double* %476, align 8
  %478 = fsub double %477, 1.000000e+02
  store double %478, double* %476, align 8
  %479 = load double*, double** %20, align 8
  %480 = getelementptr inbounds double, double* %479, i64 2
  %481 = load double, double* %480, align 8
  %482 = fsub double %481, 1.000000e+02
  store double %482, double* %480, align 8
  %483 = load double*, double** %20, align 8
  %484 = call i32 @trap_R_AddLightToScene(double* %483, i32 500, double 1.000000e+00, double 0.000000e+00, double 0.000000e+00)
  %485 = call i32 @trap_R_RenderScene(%struct.TYPE_21__* %13)
  br label %486

486:                                              ; preds = %456, %285, %261, %252, %62, %55
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @trap_S_StartLocalSound(i32, i32) #2

declare dso_local i32 @UI_AdjustFrom640(float*, float*, float*, float*) #2

declare dso_local i32 @memset(%struct.TYPE_21__*, i32, i32) #2

declare dso_local i32 @AxisClear(i32) #2

declare dso_local float @tan(double) #2

declare dso_local i32 @atan2(i32, float) #2

declare dso_local double @DEG2RAD(i32) #2

declare dso_local i32 @trap_R_ClearScene(...) #2

declare dso_local i32 @UI_PlayerAngles(%struct.TYPE_22__*, i32, i32, i32) #2

declare dso_local i32 @UI_PlayerAnimation(%struct.TYPE_22__*, i32*, i32*, i32*, i32*, i32*, i32*) #2

declare dso_local i32 @VectorCopy(double*, double*) #2

declare dso_local i32 @trap_R_AddRefEntityToScene(%struct.TYPE_21__*) #2

declare dso_local i32 @UI_PositionRotatedEntityOnTag(%struct.TYPE_21__*, %struct.TYPE_21__*, i64, i8*) #2

declare dso_local i32 @UI_PositionEntityOnTag(%struct.TYPE_21__*, %struct.TYPE_21__*, i64, i8*) #2

declare dso_local double @UI_MachinegunSpinAngle(%struct.TYPE_22__*) #2

declare dso_local i32 @AnglesToAxis(double*, i32) #2

declare dso_local i32 @trap_R_AddLightToScene(double*, i32, double, double, double) #2

declare dso_local i32 @rand(...) #2

declare dso_local i32 @UI_PlayerFloatSprite(%struct.TYPE_22__*, double*, i32) #2

declare dso_local i32 @trap_R_RegisterShaderNoMip(i8*) #2

declare dso_local i32 @trap_R_RenderScene(%struct.TYPE_21__*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
