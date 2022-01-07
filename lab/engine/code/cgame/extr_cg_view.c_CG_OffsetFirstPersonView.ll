; ModuleID = '/home/carl/AnghaBench/lab/engine/code/cgame/extr_cg_view.c_CG_OffsetFirstPersonView.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/cgame/extr_cg_view.c_CG_OffsetFirstPersonView.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { float*, float, float, float, float, float, float, i32, float, i32, i32, i32, float, %struct.TYPE_15__, %struct.TYPE_14__, %struct.TYPE_13__* }
%struct.TYPE_15__ = type { i32, i64, i32 }
%struct.TYPE_14__ = type { float*, i32* }
%struct.TYPE_13__ = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i64, float* }
%struct.TYPE_17__ = type { float }
%struct.TYPE_16__ = type { float }
%struct.TYPE_20__ = type { float }
%struct.TYPE_19__ = type { float }
%struct.TYPE_18__ = type { float }

@cg = common dso_local global %struct.TYPE_11__ zeroinitializer, align 8
@PM_INTERMISSION = common dso_local global i64 0, align 8
@STAT_HEALTH = common dso_local global i64 0, align 8
@ROLL = common dso_local global i64 0, align 8
@PITCH = common dso_local global i64 0, align 8
@STAT_DEAD_YAW = common dso_local global i64 0, align 8
@YAW = common dso_local global i64 0, align 8
@DAMAGE_DEFLECT_TIME = common dso_local global float 0.000000e+00, align 4
@DAMAGE_RETURN_TIME = common dso_local global float 0.000000e+00, align 4
@cg_runpitch = common dso_local global %struct.TYPE_17__ zeroinitializer, align 4
@cg_runroll = common dso_local global %struct.TYPE_16__ zeroinitializer, align 4
@cg_bobpitch = common dso_local global %struct.TYPE_20__ zeroinitializer, align 4
@PMF_DUCKED = common dso_local global i32 0, align 4
@cg_bobroll = common dso_local global %struct.TYPE_19__ zeroinitializer, align 4
@DUCK_TIME = common dso_local global i32 0, align 4
@cg_bobup = common dso_local global %struct.TYPE_18__ zeroinitializer, align 4
@LAND_DEFLECT_TIME = common dso_local global float 0.000000e+00, align 4
@LAND_RETURN_TIME = common dso_local global float 0.000000e+00, align 4
@FALL_TIME = common dso_local global float 0.000000e+00, align 4
@NECK_LENGTH = common dso_local global float 0.000000e+00, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @CG_OffsetFirstPersonView to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @CG_OffsetFirstPersonView() #0 {
  %1 = alloca float*, align 8
  %2 = alloca float*, align 8
  %3 = alloca float, align 4
  %4 = alloca float, align 4
  %5 = alloca float, align 4
  %6 = alloca float, align 4
  %7 = alloca float, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = load %struct.TYPE_13__*, %struct.TYPE_13__** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @cg, i32 0, i32 15), align 8
  %11 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @PM_INTERMISSION, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %17

16:                                               ; preds = %0
  br label %280

17:                                               ; preds = %0
  %18 = load float*, float** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @cg, i32 0, i32 14, i32 0), align 8
  store float* %18, float** %1, align 8
  %19 = load float*, float** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @cg, i32 0, i32 0), align 8
  store float* %19, float** %2, align 8
  %20 = load %struct.TYPE_13__*, %struct.TYPE_13__** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @cg, i32 0, i32 15), align 8
  %21 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %21, i32 0, i32 1
  %23 = load float*, float** %22, align 8
  %24 = load i64, i64* @STAT_HEALTH, align 8
  %25 = getelementptr inbounds float, float* %23, i64 %24
  %26 = load float, float* %25, align 4
  %27 = fcmp ole float %26, 0.000000e+00
  br i1 %27, label %28, label %51

28:                                               ; preds = %17
  %29 = load float*, float** %2, align 8
  %30 = load i64, i64* @ROLL, align 8
  %31 = getelementptr inbounds float, float* %29, i64 %30
  store float 4.000000e+01, float* %31, align 4
  %32 = load float*, float** %2, align 8
  %33 = load i64, i64* @PITCH, align 8
  %34 = getelementptr inbounds float, float* %32, i64 %33
  store float -1.500000e+01, float* %34, align 4
  %35 = load %struct.TYPE_13__*, %struct.TYPE_13__** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @cg, i32 0, i32 15), align 8
  %36 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %36, i32 0, i32 1
  %38 = load float*, float** %37, align 8
  %39 = load i64, i64* @STAT_DEAD_YAW, align 8
  %40 = getelementptr inbounds float, float* %38, i64 %39
  %41 = load float, float* %40, align 4
  %42 = load float*, float** %2, align 8
  %43 = load i64, i64* @YAW, align 8
  %44 = getelementptr inbounds float, float* %42, i64 %43
  store float %41, float* %44, align 4
  %45 = load i64, i64* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @cg, i32 0, i32 13, i32 1), align 8
  %46 = sitofp i64 %45 to float
  %47 = load float*, float** %1, align 8
  %48 = getelementptr inbounds float, float* %47, i64 2
  %49 = load float, float* %48, align 4
  %50 = fadd float %49, %46
  store float %50, float* %48, align 4
  br label %280

51:                                               ; preds = %17
  %52 = load float, float* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @cg, i32 0, i32 1), align 8
  %53 = fcmp une float %52, 0.000000e+00
  br i1 %53, label %54, label %111

54:                                               ; preds = %51
  %55 = load float, float* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @cg, i32 0, i32 2), align 4
  %56 = load float, float* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @cg, i32 0, i32 1), align 8
  %57 = fsub float %55, %56
  store float %57, float* %4, align 4
  %58 = load float, float* %4, align 4
  %59 = load float, float* @DAMAGE_DEFLECT_TIME, align 4
  %60 = fcmp olt float %58, %59
  br i1 %60, label %61, label %81

61:                                               ; preds = %54
  %62 = load float, float* @DAMAGE_DEFLECT_TIME, align 4
  %63 = load float, float* %4, align 4
  %64 = fdiv float %63, %62
  store float %64, float* %4, align 4
  %65 = load float, float* %4, align 4
  %66 = load float, float* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @cg, i32 0, i32 3), align 8
  %67 = fmul float %65, %66
  %68 = load float*, float** %2, align 8
  %69 = load i64, i64* @PITCH, align 8
  %70 = getelementptr inbounds float, float* %68, i64 %69
  %71 = load float, float* %70, align 4
  %72 = fadd float %71, %67
  store float %72, float* %70, align 4
  %73 = load float, float* %4, align 4
  %74 = load float, float* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @cg, i32 0, i32 4), align 4
  %75 = fmul float %73, %74
  %76 = load float*, float** %2, align 8
  %77 = load i64, i64* @ROLL, align 8
  %78 = getelementptr inbounds float, float* %76, i64 %77
  %79 = load float, float* %78, align 4
  %80 = fadd float %79, %75
  store float %80, float* %78, align 4
  br label %110

81:                                               ; preds = %54
  %82 = load float, float* %4, align 4
  %83 = load float, float* @DAMAGE_DEFLECT_TIME, align 4
  %84 = fsub float %82, %83
  %85 = load float, float* @DAMAGE_RETURN_TIME, align 4
  %86 = fdiv float %84, %85
  %87 = fpext float %86 to double
  %88 = fsub double 1.000000e+00, %87
  %89 = fptrunc double %88 to float
  store float %89, float* %4, align 4
  %90 = load float, float* %4, align 4
  %91 = fcmp ogt float %90, 0.000000e+00
  br i1 %91, label %92, label %109

92:                                               ; preds = %81
  %93 = load float, float* %4, align 4
  %94 = load float, float* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @cg, i32 0, i32 3), align 8
  %95 = fmul float %93, %94
  %96 = load float*, float** %2, align 8
  %97 = load i64, i64* @PITCH, align 8
  %98 = getelementptr inbounds float, float* %96, i64 %97
  %99 = load float, float* %98, align 4
  %100 = fadd float %99, %95
  store float %100, float* %98, align 4
  %101 = load float, float* %4, align 4
  %102 = load float, float* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @cg, i32 0, i32 4), align 4
  %103 = fmul float %101, %102
  %104 = load float*, float** %2, align 8
  %105 = load i64, i64* @ROLL, align 8
  %106 = getelementptr inbounds float, float* %104, i64 %105
  %107 = load float, float* %106, align 4
  %108 = fadd float %107, %103
  store float %108, float* %106, align 4
  br label %109

109:                                              ; preds = %92, %81
  br label %110

110:                                              ; preds = %109, %61
  br label %111

111:                                              ; preds = %110, %51
  %112 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @cg, i32 0, i32 13, i32 2), align 8
  %113 = load i32, i32* %8, align 4
  %114 = call i32 @VectorCopy(i32 %112, i32 %113)
  %115 = load i32, i32* %8, align 4
  %116 = load i32*, i32** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @cg, i32 0, i32 14, i32 1), align 8
  %117 = getelementptr inbounds i32, i32* %116, i64 0
  %118 = load i32, i32* %117, align 4
  %119 = call float @DotProduct(i32 %115, i32 %118)
  store float %119, float* %5, align 4
  %120 = load float, float* %5, align 4
  %121 = load float, float* getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @cg_runpitch, i32 0, i32 0), align 4
  %122 = fmul float %120, %121
  %123 = load float*, float** %2, align 8
  %124 = load i64, i64* @PITCH, align 8
  %125 = getelementptr inbounds float, float* %123, i64 %124
  %126 = load float, float* %125, align 4
  %127 = fadd float %126, %122
  store float %127, float* %125, align 4
  %128 = load i32, i32* %8, align 4
  %129 = load i32*, i32** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @cg, i32 0, i32 14, i32 1), align 8
  %130 = getelementptr inbounds i32, i32* %129, i64 1
  %131 = load i32, i32* %130, align 4
  %132 = call float @DotProduct(i32 %128, i32 %131)
  store float %132, float* %5, align 4
  %133 = load float, float* %5, align 4
  %134 = load float, float* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @cg_runroll, i32 0, i32 0), align 4
  %135 = fmul float %133, %134
  %136 = load float*, float** %2, align 8
  %137 = load i64, i64* @ROLL, align 8
  %138 = getelementptr inbounds float, float* %136, i64 %137
  %139 = load float, float* %138, align 4
  %140 = fsub float %139, %135
  store float %140, float* %138, align 4
  %141 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @cg, i32 0, i32 7), align 8
  %142 = icmp sgt i32 %141, 200
  br i1 %142, label %143, label %145

143:                                              ; preds = %111
  %144 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @cg, i32 0, i32 7), align 8
  br label %146

145:                                              ; preds = %111
  br label %146

146:                                              ; preds = %145, %143
  %147 = phi i32 [ %144, %143 ], [ 200, %145 ]
  %148 = sitofp i32 %147 to float
  store float %148, float* %6, align 4
  %149 = load float, float* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @cg, i32 0, i32 8), align 4
  %150 = load float, float* getelementptr inbounds (%struct.TYPE_20__, %struct.TYPE_20__* @cg_bobpitch, i32 0, i32 0), align 4
  %151 = fmul float %149, %150
  %152 = load float, float* %6, align 4
  %153 = fmul float %151, %152
  store float %153, float* %5, align 4
  %154 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @cg, i32 0, i32 13, i32 0), align 8
  %155 = load i32, i32* @PMF_DUCKED, align 4
  %156 = and i32 %154, %155
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %158, label %161

158:                                              ; preds = %146
  %159 = load float, float* %5, align 4
  %160 = fmul float %159, 3.000000e+00
  store float %160, float* %5, align 4
  br label %161

161:                                              ; preds = %158, %146
  %162 = load float, float* %5, align 4
  %163 = load float*, float** %2, align 8
  %164 = load i64, i64* @PITCH, align 8
  %165 = getelementptr inbounds float, float* %163, i64 %164
  %166 = load float, float* %165, align 4
  %167 = fadd float %166, %162
  store float %167, float* %165, align 4
  %168 = load float, float* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @cg, i32 0, i32 8), align 4
  %169 = load float, float* getelementptr inbounds (%struct.TYPE_19__, %struct.TYPE_19__* @cg_bobroll, i32 0, i32 0), align 4
  %170 = fmul float %168, %169
  %171 = load float, float* %6, align 4
  %172 = fmul float %170, %171
  store float %172, float* %5, align 4
  %173 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @cg, i32 0, i32 13, i32 0), align 8
  %174 = load i32, i32* @PMF_DUCKED, align 4
  %175 = and i32 %173, %174
  %176 = icmp ne i32 %175, 0
  br i1 %176, label %177, label %180

177:                                              ; preds = %161
  %178 = load float, float* %5, align 4
  %179 = fmul float %178, 3.000000e+00
  store float %179, float* %5, align 4
  br label %180

180:                                              ; preds = %177, %161
  %181 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @cg, i32 0, i32 9), align 8
  %182 = and i32 %181, 1
  %183 = icmp ne i32 %182, 0
  br i1 %183, label %184, label %187

184:                                              ; preds = %180
  %185 = load float, float* %5, align 4
  %186 = fneg float %185
  store float %186, float* %5, align 4
  br label %187

187:                                              ; preds = %184, %180
  %188 = load float, float* %5, align 4
  %189 = load float*, float** %2, align 8
  %190 = load i64, i64* @ROLL, align 8
  %191 = getelementptr inbounds float, float* %189, i64 %190
  %192 = load float, float* %191, align 4
  %193 = fadd float %192, %188
  store float %193, float* %191, align 4
  %194 = load i64, i64* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @cg, i32 0, i32 13, i32 1), align 8
  %195 = sitofp i64 %194 to float
  %196 = load float*, float** %1, align 8
  %197 = getelementptr inbounds float, float* %196, i64 2
  %198 = load float, float* %197, align 4
  %199 = fadd float %198, %195
  store float %199, float* %197, align 4
  %200 = load float, float* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @cg, i32 0, i32 2), align 4
  %201 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @cg, i32 0, i32 10), align 4
  %202 = sitofp i32 %201 to float
  %203 = fsub float %200, %202
  %204 = fptosi float %203 to i32
  store i32 %204, i32* %9, align 4
  %205 = load i32, i32* %9, align 4
  %206 = load i32, i32* @DUCK_TIME, align 4
  %207 = icmp slt i32 %205, %206
  br i1 %207, label %208, label %221

208:                                              ; preds = %187
  %209 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @cg, i32 0, i32 11), align 8
  %210 = load i32, i32* @DUCK_TIME, align 4
  %211 = load i32, i32* %9, align 4
  %212 = sub nsw i32 %210, %211
  %213 = mul nsw i32 %209, %212
  %214 = load i32, i32* @DUCK_TIME, align 4
  %215 = sdiv i32 %213, %214
  %216 = sitofp i32 %215 to float
  %217 = load float*, float** %1, align 8
  %218 = getelementptr inbounds float, float* %217, i64 2
  %219 = load float, float* %218, align 4
  %220 = fsub float %219, %216
  store float %220, float* %218, align 4
  br label %221

221:                                              ; preds = %208, %187
  %222 = load float, float* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @cg, i32 0, i32 8), align 4
  %223 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @cg, i32 0, i32 7), align 8
  %224 = sitofp i32 %223 to float
  %225 = fmul float %222, %224
  %226 = load float, float* getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @cg_bobup, i32 0, i32 0), align 4
  %227 = fmul float %225, %226
  store float %227, float* %3, align 4
  %228 = load float, float* %3, align 4
  %229 = fcmp ogt float %228, 6.000000e+00
  br i1 %229, label %230, label %231

230:                                              ; preds = %221
  store float 6.000000e+00, float* %3, align 4
  br label %231

231:                                              ; preds = %230, %221
  %232 = load float, float* %3, align 4
  %233 = load float*, float** %1, align 8
  %234 = getelementptr inbounds float, float* %233, i64 2
  %235 = load float, float* %234, align 4
  %236 = fadd float %235, %232
  store float %236, float* %234, align 4
  %237 = load float, float* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @cg, i32 0, i32 2), align 4
  %238 = load float, float* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @cg, i32 0, i32 5), align 8
  %239 = fsub float %237, %238
  store float %239, float* %5, align 4
  %240 = load float, float* %5, align 4
  %241 = load float, float* @LAND_DEFLECT_TIME, align 4
  %242 = fcmp olt float %240, %241
  br i1 %242, label %243, label %254

243:                                              ; preds = %231
  %244 = load float, float* %5, align 4
  %245 = load float, float* @LAND_DEFLECT_TIME, align 4
  %246 = fdiv float %244, %245
  store float %246, float* %7, align 4
  %247 = load float, float* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @cg, i32 0, i32 12), align 4
  %248 = load float, float* %7, align 4
  %249 = fmul float %247, %248
  %250 = load float*, float** %1, align 8
  %251 = getelementptr inbounds float, float* %250, i64 2
  %252 = load float, float* %251, align 4
  %253 = fadd float %252, %249
  store float %253, float* %251, align 4
  br label %278

254:                                              ; preds = %231
  %255 = load float, float* %5, align 4
  %256 = load float, float* @LAND_DEFLECT_TIME, align 4
  %257 = load float, float* @LAND_RETURN_TIME, align 4
  %258 = fadd float %256, %257
  %259 = fcmp olt float %255, %258
  br i1 %259, label %260, label %277

260:                                              ; preds = %254
  %261 = load float, float* @LAND_DEFLECT_TIME, align 4
  %262 = load float, float* %5, align 4
  %263 = fsub float %262, %261
  store float %263, float* %5, align 4
  %264 = load float, float* %5, align 4
  %265 = load float, float* @LAND_RETURN_TIME, align 4
  %266 = fdiv float %264, %265
  %267 = fpext float %266 to double
  %268 = fsub double 1.000000e+00, %267
  %269 = fptrunc double %268 to float
  store float %269, float* %7, align 4
  %270 = load float, float* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @cg, i32 0, i32 12), align 4
  %271 = load float, float* %7, align 4
  %272 = fmul float %270, %271
  %273 = load float*, float** %1, align 8
  %274 = getelementptr inbounds float, float* %273, i64 2
  %275 = load float, float* %274, align 4
  %276 = fadd float %275, %272
  store float %276, float* %274, align 4
  br label %277

277:                                              ; preds = %260, %254
  br label %278

278:                                              ; preds = %277, %243
  %279 = call i32 (...) @CG_StepOffset()
  br label %280

280:                                              ; preds = %278, %28, %16
  ret void
}

declare dso_local i32 @VectorCopy(i32, i32) #1

declare dso_local float @DotProduct(i32, i32) #1

declare dso_local i32 @CG_StepOffset(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
