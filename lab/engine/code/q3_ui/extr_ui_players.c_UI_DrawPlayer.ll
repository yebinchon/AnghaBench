; ModuleID = '/home/carl/AnghaBench/lab/engine/code/q3_ui/extr_ui_players.c_UI_DrawPlayer.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/q3_ui/extr_ui_players.c_UI_DrawPlayer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_21__ = type { float, i32 }
%struct.TYPE_20__ = type { i64, i32, i64, i64, i64, i64, i32, double*, i64, i64, i32, i64, i64, i64, i32, i64, i64, i32, i32, %struct.TYPE_18__* }
%struct.TYPE_18__ = type { i32 }
%struct.TYPE_19__ = type { float, float, float, float, i32, i32, i32, double*, double*, i32, double*, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32 }

@dp_realtime = common dso_local global i32 0, align 4
@WP_NUM_WEAPONS = common dso_local global i64 0, align 8
@weaponChangeSound = common dso_local global i32 0, align 4
@CHAN_LOCAL = common dso_local global i32 0, align 4
@jumpHeight = common dso_local global i64 0, align 8
@RDF_NOWORLDMODEL = common dso_local global i32 0, align 4
@uis = common dso_local global %struct.TYPE_21__ zeroinitializer, align 4
@M_PI = common dso_local global i32 0, align 4
@RF_LIGHTING_ORIGIN = common dso_local global i32 0, align 4
@RF_NOSHADOW = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"tag_torso\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"tag_head\00", align 1
@WP_NONE = common dso_local global i64 0, align 8
@WP_RAILGUN = common dso_local global i64 0, align 8
@colorWhite = common dso_local global i32 0, align 4
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
define dso_local void @UI_DrawPlayer(float %0, float %1, float %2, float %3, %struct.TYPE_20__* %4, i32 %5) #0 {
  %7 = alloca float, align 4
  %8 = alloca float, align 4
  %9 = alloca float, align 4
  %10 = alloca float, align 4
  %11 = alloca %struct.TYPE_20__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_19__, align 8
  %14 = alloca %struct.TYPE_19__, align 8
  %15 = alloca %struct.TYPE_19__, align 8
  %16 = alloca %struct.TYPE_19__, align 8
  %17 = alloca %struct.TYPE_19__, align 8
  %18 = alloca %struct.TYPE_19__, align 8
  %19 = alloca %struct.TYPE_19__, align 8
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
  store %struct.TYPE_20__* %4, %struct.TYPE_20__** %11, align 8
  store i32 %5, i32* %12, align 4
  %27 = bitcast %struct.TYPE_19__* %14 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %27, i8 0, i64 112, i1 false)
  %28 = bitcast %struct.TYPE_19__* %15 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %28, i8 0, i64 112, i1 false)
  %29 = bitcast %struct.TYPE_19__* %16 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %29, i8 0, i64 112, i1 false)
  %30 = bitcast %struct.TYPE_19__* %17 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %30, i8 0, i64 112, i1 false)
  %31 = bitcast %struct.TYPE_19__* %18 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %31, i8 0, i64 112, i1 false)
  %32 = bitcast %struct.TYPE_19__* %19 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %32, i8 0, i64 112, i1 false)
  store double* inttoptr (i64 -16 to double*), double** %22, align 8
  store double* inttoptr (i64 16 to double*), double** %23, align 8
  %33 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %34 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %33, i32 0, i32 16
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %55

37:                                               ; preds = %6
  %38 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %39 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %38, i32 0, i32 13
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %55

42:                                               ; preds = %37
  %43 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %44 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %43, i32 0, i32 15
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %55

47:                                               ; preds = %42
  %48 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %49 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %48, i32 0, i32 19
  %50 = load %struct.TYPE_18__*, %struct.TYPE_18__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %50, i64 0
  %52 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %56, label %55

55:                                               ; preds = %47, %42, %37, %6
  br label %512

56:                                               ; preds = %47
  %57 = load i32, i32* %12, align 4
  store i32 %57, i32* @dp_realtime, align 4
  %58 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %59 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* @WP_NUM_WEAPONS, align 8
  %62 = icmp ne i64 %60, %61
  br i1 %62, label %63, label %97

63:                                               ; preds = %56
  %64 = load i32, i32* @dp_realtime, align 4
  %65 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %66 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 8
  %68 = icmp sgt i32 %64, %67
  br i1 %68, label %69, label %97

69:                                               ; preds = %63
  %70 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %71 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %74 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %73, i32 0, i32 2
  store i64 %72, i64* %74, align 8
  %75 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %76 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %79 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %78, i32 0, i32 3
  store i64 %77, i64* %79, align 8
  %80 = load i64, i64* @WP_NUM_WEAPONS, align 8
  %81 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %82 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %81, i32 0, i32 0
  store i64 %80, i64* %82, align 8
  %83 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %84 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %83, i32 0, i32 1
  store i32 0, i32* %84, align 8
  %85 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %86 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %85, i32 0, i32 4
  %87 = load i64, i64* %86, align 8
  %88 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %89 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %88, i32 0, i32 2
  %90 = load i64, i64* %89, align 8
  %91 = icmp ne i64 %87, %90
  br i1 %91, label %92, label %96

92:                                               ; preds = %69
  %93 = load i32, i32* @weaponChangeSound, align 4
  %94 = load i32, i32* @CHAN_LOCAL, align 4
  %95 = call i32 @trap_S_StartLocalSound(i32 %93, i32 %94)
  br label %96

96:                                               ; preds = %92, %69
  br label %97

97:                                               ; preds = %96, %63, %56
  %98 = call i32 @UI_AdjustFrom640(float* %7, float* %8, float* %9, float* %10)
  %99 = load i64, i64* @jumpHeight, align 8
  %100 = sitofp i64 %99 to float
  %101 = load float, float* %8, align 4
  %102 = fsub float %101, %100
  store float %102, float* %8, align 4
  %103 = call i32 @memset(%struct.TYPE_19__* %13, i32 0, i32 112)
  %104 = call i32 @memset(%struct.TYPE_19__* %14, i32 0, i32 112)
  %105 = call i32 @memset(%struct.TYPE_19__* %15, i32 0, i32 112)
  %106 = call i32 @memset(%struct.TYPE_19__* %16, i32 0, i32 112)
  %107 = load i32, i32* @RDF_NOWORLDMODEL, align 4
  %108 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %13, i32 0, i32 19
  store i32 %107, i32* %108, align 8
  %109 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %13, i32 0, i32 18
  %110 = load i32, i32* %109, align 4
  %111 = call i32 @AxisClear(i32 %110)
  %112 = load float, float* %7, align 4
  %113 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %13, i32 0, i32 0
  store float %112, float* %113, align 8
  %114 = load float, float* %8, align 4
  %115 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %13, i32 0, i32 1
  store float %114, float* %115, align 4
  %116 = load float, float* %9, align 4
  %117 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %13, i32 0, i32 2
  store float %116, float* %117, align 8
  %118 = load float, float* %10, align 4
  %119 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %13, i32 0, i32 3
  store float %118, float* %119, align 4
  %120 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %13, i32 0, i32 2
  %121 = load float, float* %120, align 8
  %122 = load float, float* getelementptr inbounds (%struct.TYPE_21__, %struct.TYPE_21__* @uis, i32 0, i32 0), align 4
  %123 = fdiv float %121, %122
  %124 = fdiv float %123, 6.400000e+02
  %125 = fmul float %124, 9.000000e+01
  %126 = fptosi float %125 to i32
  %127 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %13, i32 0, i32 4
  store i32 %126, i32* %127, align 8
  %128 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %13, i32 0, i32 2
  %129 = load float, float* %128, align 8
  %130 = load float, float* getelementptr inbounds (%struct.TYPE_21__, %struct.TYPE_21__* @uis, i32 0, i32 0), align 4
  %131 = fdiv float %129, %130
  %132 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %13, i32 0, i32 4
  %133 = load i32, i32* %132, align 8
  %134 = sdiv i32 %133, 360
  %135 = load i32, i32* @M_PI, align 4
  %136 = mul nsw i32 %134, %135
  %137 = sitofp i32 %136 to double
  %138 = call float @tan(double %137)
  %139 = fdiv float %131, %138
  store float %139, float* %25, align 4
  %140 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %13, i32 0, i32 3
  %141 = load float, float* %140, align 4
  %142 = load i32, i32* getelementptr inbounds (%struct.TYPE_21__, %struct.TYPE_21__* @uis, i32 0, i32 1), align 4
  %143 = sitofp i32 %142 to float
  %144 = fdiv float %141, %143
  %145 = fptosi float %144 to i32
  %146 = load float, float* %25, align 4
  %147 = call i32 @atan2(i32 %145, float %146)
  %148 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %13, i32 0, i32 5
  store i32 %147, i32* %148, align 4
  %149 = load i32, i32* @M_PI, align 4
  %150 = sdiv i32 360, %149
  %151 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %13, i32 0, i32 5
  %152 = load i32, i32* %151, align 4
  %153 = mul nsw i32 %152, %150
  store i32 %153, i32* %151, align 4
  %154 = load double*, double** %23, align 8
  %155 = getelementptr inbounds double, double* %154, i64 2
  %156 = load double, double* %155, align 8
  %157 = load double*, double** %22, align 8
  %158 = getelementptr inbounds double, double* %157, i64 2
  %159 = load double, double* %158, align 8
  %160 = fsub double %156, %159
  %161 = fmul double 0x3FE6666666666666, %160
  %162 = fptrunc double %161 to float
  store float %162, float* %24, align 4
  %163 = load float, float* %24, align 4
  %164 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %13, i32 0, i32 4
  %165 = load i32, i32* %164, align 8
  %166 = call double @DEG2RAD(i32 %165)
  %167 = fmul double %166, 5.000000e-01
  %168 = call float @tan(double %167)
  %169 = fdiv float %163, %168
  %170 = fpext float %169 to double
  %171 = load double*, double** %20, align 8
  %172 = getelementptr inbounds double, double* %171, i64 0
  store double %170, double* %172, align 8
  %173 = load double*, double** %22, align 8
  %174 = getelementptr inbounds double, double* %173, i64 1
  %175 = load double, double* %174, align 8
  %176 = load double*, double** %23, align 8
  %177 = getelementptr inbounds double, double* %176, i64 1
  %178 = load double, double* %177, align 8
  %179 = fadd double %175, %178
  %180 = fmul double 5.000000e-01, %179
  %181 = load double*, double** %20, align 8
  %182 = getelementptr inbounds double, double* %181, i64 1
  store double %180, double* %182, align 8
  %183 = load double*, double** %22, align 8
  %184 = getelementptr inbounds double, double* %183, i64 2
  %185 = load double, double* %184, align 8
  %186 = load double*, double** %23, align 8
  %187 = getelementptr inbounds double, double* %186, i64 2
  %188 = load double, double* %187, align 8
  %189 = fadd double %185, %188
  %190 = fmul double -5.000000e-01, %189
  %191 = load double*, double** %20, align 8
  %192 = getelementptr inbounds double, double* %191, i64 2
  store double %190, double* %192, align 8
  %193 = load i32, i32* @dp_realtime, align 4
  %194 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %13, i32 0, i32 6
  store i32 %193, i32* %194, align 8
  %195 = call i32 (...) @trap_R_ClearScene()
  %196 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %197 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %14, i32 0, i32 13
  %198 = load i32, i32* %197, align 8
  %199 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %15, i32 0, i32 13
  %200 = load i32, i32* %199, align 8
  %201 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %16, i32 0, i32 13
  %202 = load i32, i32* %201, align 8
  %203 = call i32 @UI_PlayerAngles(%struct.TYPE_20__* %196, i32 %198, i32 %200, i32 %202)
  %204 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %205 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %14, i32 0, i32 17
  %206 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %14, i32 0, i32 16
  %207 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %14, i32 0, i32 15
  %208 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %15, i32 0, i32 17
  %209 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %15, i32 0, i32 16
  %210 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %15, i32 0, i32 15
  %211 = call i32 @UI_PlayerAnimation(%struct.TYPE_20__* %204, i32* %205, i32* %206, i32* %207, i32* %208, i32* %209, i32* %210)
  %212 = load i32, i32* @RF_LIGHTING_ORIGIN, align 4
  %213 = load i32, i32* @RF_NOSHADOW, align 4
  %214 = or i32 %212, %213
  store i32 %214, i32* %21, align 4
  %215 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %216 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %215, i32 0, i32 16
  %217 = load i64, i64* %216, align 8
  %218 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %14, i32 0, i32 12
  store i64 %217, i64* %218, align 8
  %219 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %220 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %219, i32 0, i32 18
  %221 = load i32, i32* %220, align 4
  %222 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %14, i32 0, i32 14
  store i32 %221, i32* %222, align 4
  %223 = load double*, double** %20, align 8
  %224 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %14, i32 0, i32 7
  %225 = load double*, double** %224, align 8
  %226 = call i32 @VectorCopy(double* %223, double* %225)
  %227 = load double*, double** %20, align 8
  %228 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %14, i32 0, i32 8
  %229 = load double*, double** %228, align 8
  %230 = call i32 @VectorCopy(double* %227, double* %229)
  %231 = load i32, i32* %21, align 4
  %232 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %14, i32 0, i32 9
  store i32 %231, i32* %232, align 8
  %233 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %14, i32 0, i32 7
  %234 = load double*, double** %233, align 8
  %235 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %14, i32 0, i32 10
  %236 = load double*, double** %235, align 8
  %237 = call i32 @VectorCopy(double* %234, double* %236)
  %238 = call i32 @trap_R_AddRefEntityToScene(%struct.TYPE_19__* %14)
  %239 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %14, i32 0, i32 12
  %240 = load i64, i64* %239, align 8
  %241 = icmp ne i64 %240, 0
  br i1 %241, label %243, label %242

242:                                              ; preds = %97
  br label %512

243:                                              ; preds = %97
  %244 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %245 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %244, i32 0, i32 13
  %246 = load i64, i64* %245, align 8
  %247 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %15, i32 0, i32 12
  store i64 %246, i64* %247, align 8
  %248 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %15, i32 0, i32 12
  %249 = load i64, i64* %248, align 8
  %250 = icmp ne i64 %249, 0
  br i1 %250, label %252, label %251

251:                                              ; preds = %243
  br label %512

252:                                              ; preds = %243
  %253 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %254 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %253, i32 0, i32 17
  %255 = load i32, i32* %254, align 8
  %256 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %15, i32 0, i32 14
  store i32 %255, i32* %256, align 4
  %257 = load double*, double** %20, align 8
  %258 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %15, i32 0, i32 8
  %259 = load double*, double** %258, align 8
  %260 = call i32 @VectorCopy(double* %257, double* %259)
  %261 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %262 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %261, i32 0, i32 16
  %263 = load i64, i64* %262, align 8
  %264 = call i32 @UI_PositionRotatedEntityOnTag(%struct.TYPE_19__* %15, %struct.TYPE_19__* %14, i64 %263, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  %265 = load i32, i32* %21, align 4
  %266 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %15, i32 0, i32 9
  store i32 %265, i32* %266, align 8
  %267 = call i32 @trap_R_AddRefEntityToScene(%struct.TYPE_19__* %15)
  %268 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %269 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %268, i32 0, i32 15
  %270 = load i64, i64* %269, align 8
  %271 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %16, i32 0, i32 12
  store i64 %270, i64* %271, align 8
  %272 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %16, i32 0, i32 12
  %273 = load i64, i64* %272, align 8
  %274 = icmp ne i64 %273, 0
  br i1 %274, label %276, label %275

275:                                              ; preds = %252
  br label %512

276:                                              ; preds = %252
  %277 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %278 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %277, i32 0, i32 14
  %279 = load i32, i32* %278, align 8
  %280 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %16, i32 0, i32 14
  store i32 %279, i32* %280, align 4
  %281 = load double*, double** %20, align 8
  %282 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %16, i32 0, i32 8
  %283 = load double*, double** %282, align 8
  %284 = call i32 @VectorCopy(double* %281, double* %283)
  %285 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %286 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %285, i32 0, i32 13
  %287 = load i64, i64* %286, align 8
  %288 = call i32 @UI_PositionRotatedEntityOnTag(%struct.TYPE_19__* %16, %struct.TYPE_19__* %15, i64 %287, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  %289 = load i32, i32* %21, align 4
  %290 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %16, i32 0, i32 9
  store i32 %289, i32* %290, align 8
  %291 = call i32 @trap_R_AddRefEntityToScene(%struct.TYPE_19__* %16)
  %292 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %293 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %292, i32 0, i32 4
  %294 = load i64, i64* %293, align 8
  %295 = load i64, i64* @WP_NONE, align 8
  %296 = icmp ne i64 %294, %295
  br i1 %296, label %297, label %332

297:                                              ; preds = %276
  %298 = call i32 @memset(%struct.TYPE_19__* %17, i32 0, i32 112)
  %299 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %300 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %299, i32 0, i32 9
  %301 = load i64, i64* %300, align 8
  %302 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %17, i32 0, i32 12
  store i64 %301, i64* %302, align 8
  %303 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %304 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %303, i32 0, i32 4
  %305 = load i64, i64* %304, align 8
  %306 = load i64, i64* @WP_RAILGUN, align 8
  %307 = icmp eq i64 %305, %306
  br i1 %307, label %308, label %315

308:                                              ; preds = %297
  %309 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %310 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %309, i32 0, i32 10
  %311 = load i32, i32* %310, align 8
  %312 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %17, i32 0, i32 11
  %313 = load i32, i32* %312, align 8
  %314 = call i32 @Byte4Copy(i32 %311, i32 %313)
  br label %320

315:                                              ; preds = %297
  %316 = load i32, i32* @colorWhite, align 4
  %317 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %17, i32 0, i32 11
  %318 = load i32, i32* %317, align 8
  %319 = call i32 @Byte4Copy(i32 %316, i32 %318)
  br label %320

320:                                              ; preds = %315, %308
  %321 = load double*, double** %20, align 8
  %322 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %17, i32 0, i32 8
  %323 = load double*, double** %322, align 8
  %324 = call i32 @VectorCopy(double* %321, double* %323)
  %325 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %326 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %325, i32 0, i32 13
  %327 = load i64, i64* %326, align 8
  %328 = call i32 @UI_PositionEntityOnTag(%struct.TYPE_19__* %17, %struct.TYPE_19__* %15, i64 %327, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0))
  %329 = load i32, i32* %21, align 4
  %330 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %17, i32 0, i32 9
  store i32 %329, i32* %330, align 8
  %331 = call i32 @trap_R_AddRefEntityToScene(%struct.TYPE_19__* %17)
  br label %332

332:                                              ; preds = %320, %276
  %333 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %334 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %333, i32 0, i32 5
  %335 = load i64, i64* %334, align 8
  %336 = load i64, i64* @WP_MACHINEGUN, align 8
  %337 = icmp eq i64 %335, %336
  br i1 %337, label %350, label %338

338:                                              ; preds = %332
  %339 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %340 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %339, i32 0, i32 5
  %341 = load i64, i64* %340, align 8
  %342 = load i64, i64* @WP_GAUNTLET, align 8
  %343 = icmp eq i64 %341, %342
  br i1 %343, label %350, label %344

344:                                              ; preds = %338
  %345 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %346 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %345, i32 0, i32 5
  %347 = load i64, i64* %346, align 8
  %348 = load i64, i64* @WP_BFG, align 8
  %349 = icmp eq i64 %347, %348
  br i1 %349, label %350, label %382

350:                                              ; preds = %344, %338, %332
  %351 = call i32 @memset(%struct.TYPE_19__* %18, i32 0, i32 112)
  %352 = load double*, double** %20, align 8
  %353 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %18, i32 0, i32 8
  %354 = load double*, double** %353, align 8
  %355 = call i32 @VectorCopy(double* %352, double* %354)
  %356 = load i32, i32* %21, align 4
  %357 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %18, i32 0, i32 9
  store i32 %356, i32* %357, align 8
  %358 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %359 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %358, i32 0, i32 12
  %360 = load i64, i64* %359, align 8
  %361 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %18, i32 0, i32 12
  store i64 %360, i64* %361, align 8
  %362 = load double*, double** %26, align 8
  %363 = load i64, i64* @YAW, align 8
  %364 = getelementptr inbounds double, double* %362, i64 %363
  store double 0.000000e+00, double* %364, align 8
  %365 = load double*, double** %26, align 8
  %366 = load i64, i64* @PITCH, align 8
  %367 = getelementptr inbounds double, double* %365, i64 %366
  store double 0.000000e+00, double* %367, align 8
  %368 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %369 = call double @UI_MachinegunSpinAngle(%struct.TYPE_20__* %368)
  %370 = load double*, double** %26, align 8
  %371 = load i64, i64* @ROLL, align 8
  %372 = getelementptr inbounds double, double* %370, i64 %371
  store double %369, double* %372, align 8
  %373 = load double*, double** %26, align 8
  %374 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %18, i32 0, i32 13
  %375 = load i32, i32* %374, align 8
  %376 = call i32 @AnglesToAxis(double* %373, i32 %375)
  %377 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %378 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %377, i32 0, i32 9
  %379 = load i64, i64* %378, align 8
  %380 = call i32 @UI_PositionRotatedEntityOnTag(%struct.TYPE_19__* %18, %struct.TYPE_19__* %17, i64 %379, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0))
  %381 = call i32 @trap_R_AddRefEntityToScene(%struct.TYPE_19__* %18)
  br label %382

382:                                              ; preds = %350, %344
  %383 = load i32, i32* @dp_realtime, align 4
  %384 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %385 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %384, i32 0, i32 6
  %386 = load i32, i32* %385, align 8
  %387 = icmp sle i32 %383, %386
  br i1 %387, label %388, label %472

388:                                              ; preds = %382
  %389 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %390 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %389, i32 0, i32 11
  %391 = load i64, i64* %390, align 8
  %392 = icmp ne i64 %391, 0
  br i1 %392, label %393, label %428

393:                                              ; preds = %388
  %394 = call i32 @memset(%struct.TYPE_19__* %19, i32 0, i32 112)
  %395 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %396 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %395, i32 0, i32 11
  %397 = load i64, i64* %396, align 8
  %398 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %19, i32 0, i32 12
  store i64 %397, i64* %398, align 8
  %399 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %400 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %399, i32 0, i32 4
  %401 = load i64, i64* %400, align 8
  %402 = load i64, i64* @WP_RAILGUN, align 8
  %403 = icmp eq i64 %401, %402
  br i1 %403, label %404, label %411

404:                                              ; preds = %393
  %405 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %406 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %405, i32 0, i32 10
  %407 = load i32, i32* %406, align 8
  %408 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %19, i32 0, i32 11
  %409 = load i32, i32* %408, align 8
  %410 = call i32 @Byte4Copy(i32 %407, i32 %409)
  br label %416

411:                                              ; preds = %393
  %412 = load i32, i32* @colorWhite, align 4
  %413 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %19, i32 0, i32 11
  %414 = load i32, i32* %413, align 8
  %415 = call i32 @Byte4Copy(i32 %412, i32 %414)
  br label %416

416:                                              ; preds = %411, %404
  %417 = load double*, double** %20, align 8
  %418 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %19, i32 0, i32 8
  %419 = load double*, double** %418, align 8
  %420 = call i32 @VectorCopy(double* %417, double* %419)
  %421 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %422 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %421, i32 0, i32 9
  %423 = load i64, i64* %422, align 8
  %424 = call i32 @UI_PositionEntityOnTag(%struct.TYPE_19__* %19, %struct.TYPE_19__* %17, i64 %423, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0))
  %425 = load i32, i32* %21, align 4
  %426 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %19, i32 0, i32 9
  store i32 %425, i32* %426, align 8
  %427 = call i32 @trap_R_AddRefEntityToScene(%struct.TYPE_19__* %19)
  br label %428

428:                                              ; preds = %416, %388
  %429 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %430 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %429, i32 0, i32 7
  %431 = load double*, double** %430, align 8
  %432 = getelementptr inbounds double, double* %431, i64 0
  %433 = load double, double* %432, align 8
  %434 = fcmp une double %433, 0.000000e+00
  br i1 %434, label %449, label %435

435:                                              ; preds = %428
  %436 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %437 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %436, i32 0, i32 7
  %438 = load double*, double** %437, align 8
  %439 = getelementptr inbounds double, double* %438, i64 1
  %440 = load double, double* %439, align 8
  %441 = fcmp une double %440, 0.000000e+00
  br i1 %441, label %449, label %442

442:                                              ; preds = %435
  %443 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %444 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %443, i32 0, i32 7
  %445 = load double*, double** %444, align 8
  %446 = getelementptr inbounds double, double* %445, i64 2
  %447 = load double, double* %446, align 8
  %448 = fcmp une double %447, 0.000000e+00
  br i1 %448, label %449, label %471

449:                                              ; preds = %442, %435, %428
  %450 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %19, i32 0, i32 7
  %451 = load double*, double** %450, align 8
  %452 = call i32 (...) @rand()
  %453 = and i32 %452, 31
  %454 = add nsw i32 200, %453
  %455 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %456 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %455, i32 0, i32 7
  %457 = load double*, double** %456, align 8
  %458 = getelementptr inbounds double, double* %457, i64 0
  %459 = load double, double* %458, align 8
  %460 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %461 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %460, i32 0, i32 7
  %462 = load double*, double** %461, align 8
  %463 = getelementptr inbounds double, double* %462, i64 1
  %464 = load double, double* %463, align 8
  %465 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %466 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %465, i32 0, i32 7
  %467 = load double*, double** %466, align 8
  %468 = getelementptr inbounds double, double* %467, i64 2
  %469 = load double, double* %468, align 8
  %470 = call i32 @trap_R_AddLightToScene(double* %451, i32 %454, double %459, double %464, double %469)
  br label %471

471:                                              ; preds = %449, %442
  br label %472

472:                                              ; preds = %471, %382
  %473 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %474 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %473, i32 0, i32 8
  %475 = load i64, i64* %474, align 8
  %476 = icmp ne i64 %475, 0
  br i1 %476, label %477, label %482

477:                                              ; preds = %472
  %478 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %479 = load double*, double** %20, align 8
  %480 = call i32 @trap_R_RegisterShaderNoMip(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i64 0, i64 0))
  %481 = call i32 @UI_PlayerFloatSprite(%struct.TYPE_20__* %478, double* %479, i32 %480)
  br label %482

482:                                              ; preds = %477, %472
  %483 = load double*, double** %20, align 8
  %484 = getelementptr inbounds double, double* %483, i64 0
  %485 = load double, double* %484, align 8
  %486 = fsub double %485, 1.000000e+02
  store double %486, double* %484, align 8
  %487 = load double*, double** %20, align 8
  %488 = getelementptr inbounds double, double* %487, i64 1
  %489 = load double, double* %488, align 8
  %490 = fadd double %489, 1.000000e+02
  store double %490, double* %488, align 8
  %491 = load double*, double** %20, align 8
  %492 = getelementptr inbounds double, double* %491, i64 2
  %493 = load double, double* %492, align 8
  %494 = fadd double %493, 1.000000e+02
  store double %494, double* %492, align 8
  %495 = load double*, double** %20, align 8
  %496 = call i32 @trap_R_AddLightToScene(double* %495, i32 500, double 1.000000e+00, double 1.000000e+00, double 1.000000e+00)
  %497 = load double*, double** %20, align 8
  %498 = getelementptr inbounds double, double* %497, i64 0
  %499 = load double, double* %498, align 8
  %500 = fsub double %499, 1.000000e+02
  store double %500, double* %498, align 8
  %501 = load double*, double** %20, align 8
  %502 = getelementptr inbounds double, double* %501, i64 1
  %503 = load double, double* %502, align 8
  %504 = fsub double %503, 1.000000e+02
  store double %504, double* %502, align 8
  %505 = load double*, double** %20, align 8
  %506 = getelementptr inbounds double, double* %505, i64 2
  %507 = load double, double* %506, align 8
  %508 = fsub double %507, 1.000000e+02
  store double %508, double* %506, align 8
  %509 = load double*, double** %20, align 8
  %510 = call i32 @trap_R_AddLightToScene(double* %509, i32 500, double 1.000000e+00, double 0.000000e+00, double 0.000000e+00)
  %511 = call i32 @trap_R_RenderScene(%struct.TYPE_19__* %13)
  br label %512

512:                                              ; preds = %482, %275, %251, %242, %55
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @trap_S_StartLocalSound(i32, i32) #2

declare dso_local i32 @UI_AdjustFrom640(float*, float*, float*, float*) #2

declare dso_local i32 @memset(%struct.TYPE_19__*, i32, i32) #2

declare dso_local i32 @AxisClear(i32) #2

declare dso_local float @tan(double) #2

declare dso_local i32 @atan2(i32, float) #2

declare dso_local double @DEG2RAD(i32) #2

declare dso_local i32 @trap_R_ClearScene(...) #2

declare dso_local i32 @UI_PlayerAngles(%struct.TYPE_20__*, i32, i32, i32) #2

declare dso_local i32 @UI_PlayerAnimation(%struct.TYPE_20__*, i32*, i32*, i32*, i32*, i32*, i32*) #2

declare dso_local i32 @VectorCopy(double*, double*) #2

declare dso_local i32 @trap_R_AddRefEntityToScene(%struct.TYPE_19__*) #2

declare dso_local i32 @UI_PositionRotatedEntityOnTag(%struct.TYPE_19__*, %struct.TYPE_19__*, i64, i8*) #2

declare dso_local i32 @Byte4Copy(i32, i32) #2

declare dso_local i32 @UI_PositionEntityOnTag(%struct.TYPE_19__*, %struct.TYPE_19__*, i64, i8*) #2

declare dso_local double @UI_MachinegunSpinAngle(%struct.TYPE_20__*) #2

declare dso_local i32 @AnglesToAxis(double*, i32) #2

declare dso_local i32 @trap_R_AddLightToScene(double*, i32, double, double, double) #2

declare dso_local i32 @rand(...) #2

declare dso_local i32 @UI_PlayerFloatSprite(%struct.TYPE_20__*, double*, i32) #2

declare dso_local i32 @trap_R_RegisterShaderNoMip(i8*) #2

declare dso_local i32 @trap_R_RenderScene(%struct.TYPE_19__*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
