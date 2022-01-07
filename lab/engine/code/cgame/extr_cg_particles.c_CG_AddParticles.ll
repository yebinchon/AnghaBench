; ModuleID = '/home/carl/AnghaBench/lab/engine/code/cgame/extr_cg_particles.c_CG_AddParticles.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/cgame/extr_cg_particles.c_CG_AddParticles.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { double, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32* }
%struct.TYPE_7__ = type { double, float, float, i64, double, double*, float*, float*, %struct.TYPE_7__*, i64 }

@initparticles = common dso_local global i32 0, align 4
@cg = common dso_local global %struct.TYPE_8__ zeroinitializer, align 8
@vforward = common dso_local global i32 0, align 4
@vright = common dso_local global i32 0, align 4
@vup = common dso_local global i32 0, align 4
@oldtime = common dso_local global double 0.000000e+00, align 8
@roll = common dso_local global double 0.000000e+00, align 8
@ROLL = common dso_local global i64 0, align 8
@rforward = common dso_local global i32 0, align 4
@rright = common dso_local global i32 0, align 4
@rup = common dso_local global i32 0, align 4
@active_particles = common dso_local global %struct.TYPE_7__* null, align 8
@free_particles = common dso_local global i8* null, align 8
@P_SMOKE = common dso_local global i64 0, align 8
@P_ANIM = common dso_local global i64 0, align 8
@P_BLEED = common dso_local global i64 0, align 8
@P_SMOKE_IMPACT = common dso_local global i64 0, align 8
@P_WEATHER_FLURRY = common dso_local global i64 0, align 8
@P_FLAT_SCALEUP_FADE = common dso_local global i64 0, align 8
@P_BAT = common dso_local global i64 0, align 8
@P_SPRITE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CG_AddParticles() #0 {
  %1 = alloca %struct.TYPE_7__*, align 8
  %2 = alloca %struct.TYPE_7__*, align 8
  %3 = alloca float, align 4
  %4 = alloca float, align 4
  %5 = alloca float, align 4
  %6 = alloca double*, align 8
  %7 = alloca %struct.TYPE_7__*, align 8
  %8 = alloca %struct.TYPE_7__*, align 8
  %9 = alloca double*, align 8
  %10 = load i32, i32* @initparticles, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %14, label %12

12:                                               ; preds = %0
  %13 = call i32 (...) @CG_ClearParticles()
  br label %14

14:                                               ; preds = %12, %0
  %15 = load i32*, i32** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @cg, i32 0, i32 1, i32 0), align 8
  %16 = getelementptr inbounds i32, i32* %15, i64 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @vforward, align 4
  %19 = call i32 @VectorCopy(i32 %17, i32 %18)
  %20 = load i32*, i32** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @cg, i32 0, i32 1, i32 0), align 8
  %21 = getelementptr inbounds i32, i32* %20, i64 1
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @vright, align 4
  %24 = call i32 @VectorCopy(i32 %22, i32 %23)
  %25 = load i32*, i32** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @cg, i32 0, i32 1, i32 0), align 8
  %26 = getelementptr inbounds i32, i32* %25, i64 2
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @vup, align 4
  %29 = call i32 @VectorCopy(i32 %27, i32 %28)
  %30 = load i32*, i32** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @cg, i32 0, i32 1, i32 0), align 8
  %31 = getelementptr inbounds i32, i32* %30, i64 0
  %32 = load i32, i32* %31, align 4
  %33 = load double*, double** %9, align 8
  %34 = call i32 @vectoangles(i32 %32, double* %33)
  %35 = load double, double* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @cg, i32 0, i32 0), align 8
  %36 = load double, double* @oldtime, align 8
  %37 = fsub double %35, %36
  %38 = fmul double %37, 1.000000e-01
  %39 = load double, double* @roll, align 8
  %40 = fadd double %39, %38
  store double %40, double* @roll, align 8
  %41 = load double, double* @roll, align 8
  %42 = fmul double %41, 9.000000e-01
  %43 = load double*, double** %9, align 8
  %44 = load i64, i64* @ROLL, align 8
  %45 = getelementptr inbounds double, double* %43, i64 %44
  %46 = load double, double* %45, align 8
  %47 = fadd double %46, %42
  store double %47, double* %45, align 8
  %48 = load double*, double** %9, align 8
  %49 = load i32, i32* @rforward, align 4
  %50 = load i32, i32* @rright, align 4
  %51 = load i32, i32* @rup, align 4
  %52 = call i32 @AngleVectors(double* %48, i32 %49, i32 %50, i32 %51)
  %53 = load double, double* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @cg, i32 0, i32 0), align 8
  store double %53, double* @oldtime, align 8
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %7, align 8
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %8, align 8
  %54 = load %struct.TYPE_7__*, %struct.TYPE_7__** @active_particles, align 8
  store %struct.TYPE_7__* %54, %struct.TYPE_7__** %1, align 8
  br label %55

55:                                               ; preds = %325, %14
  %56 = load %struct.TYPE_7__*, %struct.TYPE_7__** %1, align 8
  %57 = icmp ne %struct.TYPE_7__* %56, null
  br i1 %57, label %58, label %327

58:                                               ; preds = %55
  %59 = load %struct.TYPE_7__*, %struct.TYPE_7__** %1, align 8
  %60 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %59, i32 0, i32 8
  %61 = load %struct.TYPE_7__*, %struct.TYPE_7__** %60, align 8
  store %struct.TYPE_7__* %61, %struct.TYPE_7__** %2, align 8
  %62 = load double, double* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @cg, i32 0, i32 0), align 8
  %63 = load %struct.TYPE_7__*, %struct.TYPE_7__** %1, align 8
  %64 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %63, i32 0, i32 0
  %65 = load double, double* %64, align 8
  %66 = fsub double %62, %65
  %67 = fmul double %66, 1.000000e-03
  %68 = fptrunc double %67 to float
  store float %68, float* %4, align 4
  %69 = load %struct.TYPE_7__*, %struct.TYPE_7__** %1, align 8
  %70 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %69, i32 0, i32 1
  %71 = load float, float* %70, align 8
  %72 = load float, float* %4, align 4
  %73 = load %struct.TYPE_7__*, %struct.TYPE_7__** %1, align 8
  %74 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %73, i32 0, i32 2
  %75 = load float, float* %74, align 4
  %76 = fmul float %72, %75
  %77 = fadd float %71, %76
  store float %77, float* %3, align 4
  %78 = load float, float* %3, align 4
  %79 = fcmp ole float %78, 0.000000e+00
  br i1 %79, label %80, label %93

80:                                               ; preds = %58
  %81 = load i8*, i8** @free_particles, align 8
  %82 = bitcast i8* %81 to %struct.TYPE_7__*
  %83 = load %struct.TYPE_7__*, %struct.TYPE_7__** %1, align 8
  %84 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %83, i32 0, i32 8
  store %struct.TYPE_7__* %82, %struct.TYPE_7__** %84, align 8
  %85 = load %struct.TYPE_7__*, %struct.TYPE_7__** %1, align 8
  %86 = bitcast %struct.TYPE_7__* %85 to i8*
  store i8* %86, i8** @free_particles, align 8
  %87 = load %struct.TYPE_7__*, %struct.TYPE_7__** %1, align 8
  %88 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %87, i32 0, i32 3
  store i64 0, i64* %88, align 8
  %89 = load %struct.TYPE_7__*, %struct.TYPE_7__** %1, align 8
  %90 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %89, i32 0, i32 9
  store i64 0, i64* %90, align 8
  %91 = load %struct.TYPE_7__*, %struct.TYPE_7__** %1, align 8
  %92 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %91, i32 0, i32 1
  store float 0.000000e+00, float* %92, align 8
  br label %325

93:                                               ; preds = %58
  %94 = load %struct.TYPE_7__*, %struct.TYPE_7__** %1, align 8
  %95 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %94, i32 0, i32 3
  %96 = load i64, i64* %95, align 8
  %97 = load i64, i64* @P_SMOKE, align 8
  %98 = icmp eq i64 %96, %97
  br i1 %98, label %117, label %99

99:                                               ; preds = %93
  %100 = load %struct.TYPE_7__*, %struct.TYPE_7__** %1, align 8
  %101 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %100, i32 0, i32 3
  %102 = load i64, i64* %101, align 8
  %103 = load i64, i64* @P_ANIM, align 8
  %104 = icmp eq i64 %102, %103
  br i1 %104, label %117, label %105

105:                                              ; preds = %99
  %106 = load %struct.TYPE_7__*, %struct.TYPE_7__** %1, align 8
  %107 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %106, i32 0, i32 3
  %108 = load i64, i64* %107, align 8
  %109 = load i64, i64* @P_BLEED, align 8
  %110 = icmp eq i64 %108, %109
  br i1 %110, label %117, label %111

111:                                              ; preds = %105
  %112 = load %struct.TYPE_7__*, %struct.TYPE_7__** %1, align 8
  %113 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %112, i32 0, i32 3
  %114 = load i64, i64* %113, align 8
  %115 = load i64, i64* @P_SMOKE_IMPACT, align 8
  %116 = icmp eq i64 %114, %115
  br i1 %116, label %117, label %137

117:                                              ; preds = %111, %105, %99, %93
  %118 = load double, double* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @cg, i32 0, i32 0), align 8
  %119 = load %struct.TYPE_7__*, %struct.TYPE_7__** %1, align 8
  %120 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %119, i32 0, i32 4
  %121 = load double, double* %120, align 8
  %122 = fcmp ogt double %118, %121
  br i1 %122, label %123, label %136

123:                                              ; preds = %117
  %124 = load i8*, i8** @free_particles, align 8
  %125 = bitcast i8* %124 to %struct.TYPE_7__*
  %126 = load %struct.TYPE_7__*, %struct.TYPE_7__** %1, align 8
  %127 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %126, i32 0, i32 8
  store %struct.TYPE_7__* %125, %struct.TYPE_7__** %127, align 8
  %128 = load %struct.TYPE_7__*, %struct.TYPE_7__** %1, align 8
  %129 = bitcast %struct.TYPE_7__* %128 to i8*
  store i8* %129, i8** @free_particles, align 8
  %130 = load %struct.TYPE_7__*, %struct.TYPE_7__** %1, align 8
  %131 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %130, i32 0, i32 3
  store i64 0, i64* %131, align 8
  %132 = load %struct.TYPE_7__*, %struct.TYPE_7__** %1, align 8
  %133 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %132, i32 0, i32 9
  store i64 0, i64* %133, align 8
  %134 = load %struct.TYPE_7__*, %struct.TYPE_7__** %1, align 8
  %135 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %134, i32 0, i32 1
  store float 0.000000e+00, float* %135, align 8
  br label %325

136:                                              ; preds = %117
  br label %137

137:                                              ; preds = %136, %111
  %138 = load %struct.TYPE_7__*, %struct.TYPE_7__** %1, align 8
  %139 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %138, i32 0, i32 3
  %140 = load i64, i64* %139, align 8
  %141 = load i64, i64* @P_WEATHER_FLURRY, align 8
  %142 = icmp eq i64 %140, %141
  br i1 %142, label %143, label %163

143:                                              ; preds = %137
  %144 = load double, double* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @cg, i32 0, i32 0), align 8
  %145 = load %struct.TYPE_7__*, %struct.TYPE_7__** %1, align 8
  %146 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %145, i32 0, i32 4
  %147 = load double, double* %146, align 8
  %148 = fcmp ogt double %144, %147
  br i1 %148, label %149, label %162

149:                                              ; preds = %143
  %150 = load i8*, i8** @free_particles, align 8
  %151 = bitcast i8* %150 to %struct.TYPE_7__*
  %152 = load %struct.TYPE_7__*, %struct.TYPE_7__** %1, align 8
  %153 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %152, i32 0, i32 8
  store %struct.TYPE_7__* %151, %struct.TYPE_7__** %153, align 8
  %154 = load %struct.TYPE_7__*, %struct.TYPE_7__** %1, align 8
  %155 = bitcast %struct.TYPE_7__* %154 to i8*
  store i8* %155, i8** @free_particles, align 8
  %156 = load %struct.TYPE_7__*, %struct.TYPE_7__** %1, align 8
  %157 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %156, i32 0, i32 3
  store i64 0, i64* %157, align 8
  %158 = load %struct.TYPE_7__*, %struct.TYPE_7__** %1, align 8
  %159 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %158, i32 0, i32 9
  store i64 0, i64* %159, align 8
  %160 = load %struct.TYPE_7__*, %struct.TYPE_7__** %1, align 8
  %161 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %160, i32 0, i32 1
  store float 0.000000e+00, float* %161, align 8
  br label %325

162:                                              ; preds = %143
  br label %163

163:                                              ; preds = %162, %137
  %164 = load %struct.TYPE_7__*, %struct.TYPE_7__** %1, align 8
  %165 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %164, i32 0, i32 3
  %166 = load i64, i64* %165, align 8
  %167 = load i64, i64* @P_FLAT_SCALEUP_FADE, align 8
  %168 = icmp eq i64 %166, %167
  br i1 %168, label %169, label %189

169:                                              ; preds = %163
  %170 = load double, double* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @cg, i32 0, i32 0), align 8
  %171 = load %struct.TYPE_7__*, %struct.TYPE_7__** %1, align 8
  %172 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %171, i32 0, i32 4
  %173 = load double, double* %172, align 8
  %174 = fcmp ogt double %170, %173
  br i1 %174, label %175, label %188

175:                                              ; preds = %169
  %176 = load i8*, i8** @free_particles, align 8
  %177 = bitcast i8* %176 to %struct.TYPE_7__*
  %178 = load %struct.TYPE_7__*, %struct.TYPE_7__** %1, align 8
  %179 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %178, i32 0, i32 8
  store %struct.TYPE_7__* %177, %struct.TYPE_7__** %179, align 8
  %180 = load %struct.TYPE_7__*, %struct.TYPE_7__** %1, align 8
  %181 = bitcast %struct.TYPE_7__* %180 to i8*
  store i8* %181, i8** @free_particles, align 8
  %182 = load %struct.TYPE_7__*, %struct.TYPE_7__** %1, align 8
  %183 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %182, i32 0, i32 3
  store i64 0, i64* %183, align 8
  %184 = load %struct.TYPE_7__*, %struct.TYPE_7__** %1, align 8
  %185 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %184, i32 0, i32 9
  store i64 0, i64* %185, align 8
  %186 = load %struct.TYPE_7__*, %struct.TYPE_7__** %1, align 8
  %187 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %186, i32 0, i32 1
  store float 0.000000e+00, float* %187, align 8
  br label %325

188:                                              ; preds = %169
  br label %189

189:                                              ; preds = %188, %163
  %190 = load %struct.TYPE_7__*, %struct.TYPE_7__** %1, align 8
  %191 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %190, i32 0, i32 3
  %192 = load i64, i64* %191, align 8
  %193 = load i64, i64* @P_BAT, align 8
  %194 = icmp eq i64 %192, %193
  br i1 %194, label %201, label %195

195:                                              ; preds = %189
  %196 = load %struct.TYPE_7__*, %struct.TYPE_7__** %1, align 8
  %197 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %196, i32 0, i32 3
  %198 = load i64, i64* %197, align 8
  %199 = load i64, i64* @P_SPRITE, align 8
  %200 = icmp eq i64 %198, %199
  br i1 %200, label %201, label %225

201:                                              ; preds = %195, %189
  %202 = load %struct.TYPE_7__*, %struct.TYPE_7__** %1, align 8
  %203 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %202, i32 0, i32 4
  %204 = load double, double* %203, align 8
  %205 = fcmp olt double %204, 0.000000e+00
  br i1 %205, label %206, label %225

206:                                              ; preds = %201
  %207 = load %struct.TYPE_7__*, %struct.TYPE_7__** %1, align 8
  %208 = load %struct.TYPE_7__*, %struct.TYPE_7__** %1, align 8
  %209 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %208, i32 0, i32 5
  %210 = load double*, double** %209, align 8
  %211 = load float, float* %3, align 4
  %212 = call i32 @CG_AddParticleToScene(%struct.TYPE_7__* %207, double* %210, float %211)
  %213 = load i8*, i8** @free_particles, align 8
  %214 = bitcast i8* %213 to %struct.TYPE_7__*
  %215 = load %struct.TYPE_7__*, %struct.TYPE_7__** %1, align 8
  %216 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %215, i32 0, i32 8
  store %struct.TYPE_7__* %214, %struct.TYPE_7__** %216, align 8
  %217 = load %struct.TYPE_7__*, %struct.TYPE_7__** %1, align 8
  %218 = bitcast %struct.TYPE_7__* %217 to i8*
  store i8* %218, i8** @free_particles, align 8
  %219 = load %struct.TYPE_7__*, %struct.TYPE_7__** %1, align 8
  %220 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %219, i32 0, i32 3
  store i64 0, i64* %220, align 8
  %221 = load %struct.TYPE_7__*, %struct.TYPE_7__** %1, align 8
  %222 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %221, i32 0, i32 9
  store i64 0, i64* %222, align 8
  %223 = load %struct.TYPE_7__*, %struct.TYPE_7__** %1, align 8
  %224 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %223, i32 0, i32 1
  store float 0.000000e+00, float* %224, align 8
  br label %325

225:                                              ; preds = %201, %195
  %226 = load %struct.TYPE_7__*, %struct.TYPE_7__** %1, align 8
  %227 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %226, i32 0, i32 8
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %227, align 8
  %228 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %229 = icmp ne %struct.TYPE_7__* %228, null
  br i1 %229, label %232, label %230

230:                                              ; preds = %225
  %231 = load %struct.TYPE_7__*, %struct.TYPE_7__** %1, align 8
  store %struct.TYPE_7__* %231, %struct.TYPE_7__** %8, align 8
  store %struct.TYPE_7__* %231, %struct.TYPE_7__** %7, align 8
  br label %237

232:                                              ; preds = %225
  %233 = load %struct.TYPE_7__*, %struct.TYPE_7__** %1, align 8
  %234 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %235 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %234, i32 0, i32 8
  store %struct.TYPE_7__* %233, %struct.TYPE_7__** %235, align 8
  %236 = load %struct.TYPE_7__*, %struct.TYPE_7__** %1, align 8
  store %struct.TYPE_7__* %236, %struct.TYPE_7__** %8, align 8
  br label %237

237:                                              ; preds = %232, %230
  %238 = load float, float* %3, align 4
  %239 = fpext float %238 to double
  %240 = fcmp ogt double %239, 1.000000e+00
  br i1 %240, label %241, label %242

241:                                              ; preds = %237
  store float 1.000000e+00, float* %3, align 4
  br label %242

242:                                              ; preds = %241, %237
  %243 = load float, float* %4, align 4
  %244 = load float, float* %4, align 4
  %245 = fmul float %243, %244
  store float %245, float* %5, align 4
  %246 = load %struct.TYPE_7__*, %struct.TYPE_7__** %1, align 8
  %247 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %246, i32 0, i32 5
  %248 = load double*, double** %247, align 8
  %249 = getelementptr inbounds double, double* %248, i64 0
  %250 = load double, double* %249, align 8
  %251 = load %struct.TYPE_7__*, %struct.TYPE_7__** %1, align 8
  %252 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %251, i32 0, i32 6
  %253 = load float*, float** %252, align 8
  %254 = getelementptr inbounds float, float* %253, i64 0
  %255 = load float, float* %254, align 4
  %256 = load float, float* %4, align 4
  %257 = fmul float %255, %256
  %258 = fpext float %257 to double
  %259 = fadd double %250, %258
  %260 = load %struct.TYPE_7__*, %struct.TYPE_7__** %1, align 8
  %261 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %260, i32 0, i32 7
  %262 = load float*, float** %261, align 8
  %263 = getelementptr inbounds float, float* %262, i64 0
  %264 = load float, float* %263, align 4
  %265 = load float, float* %5, align 4
  %266 = fmul float %264, %265
  %267 = fpext float %266 to double
  %268 = fadd double %259, %267
  %269 = load double*, double** %6, align 8
  %270 = getelementptr inbounds double, double* %269, i64 0
  store double %268, double* %270, align 8
  %271 = load %struct.TYPE_7__*, %struct.TYPE_7__** %1, align 8
  %272 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %271, i32 0, i32 5
  %273 = load double*, double** %272, align 8
  %274 = getelementptr inbounds double, double* %273, i64 1
  %275 = load double, double* %274, align 8
  %276 = load %struct.TYPE_7__*, %struct.TYPE_7__** %1, align 8
  %277 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %276, i32 0, i32 6
  %278 = load float*, float** %277, align 8
  %279 = getelementptr inbounds float, float* %278, i64 1
  %280 = load float, float* %279, align 4
  %281 = load float, float* %4, align 4
  %282 = fmul float %280, %281
  %283 = fpext float %282 to double
  %284 = fadd double %275, %283
  %285 = load %struct.TYPE_7__*, %struct.TYPE_7__** %1, align 8
  %286 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %285, i32 0, i32 7
  %287 = load float*, float** %286, align 8
  %288 = getelementptr inbounds float, float* %287, i64 1
  %289 = load float, float* %288, align 4
  %290 = load float, float* %5, align 4
  %291 = fmul float %289, %290
  %292 = fpext float %291 to double
  %293 = fadd double %284, %292
  %294 = load double*, double** %6, align 8
  %295 = getelementptr inbounds double, double* %294, i64 1
  store double %293, double* %295, align 8
  %296 = load %struct.TYPE_7__*, %struct.TYPE_7__** %1, align 8
  %297 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %296, i32 0, i32 5
  %298 = load double*, double** %297, align 8
  %299 = getelementptr inbounds double, double* %298, i64 2
  %300 = load double, double* %299, align 8
  %301 = load %struct.TYPE_7__*, %struct.TYPE_7__** %1, align 8
  %302 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %301, i32 0, i32 6
  %303 = load float*, float** %302, align 8
  %304 = getelementptr inbounds float, float* %303, i64 2
  %305 = load float, float* %304, align 4
  %306 = load float, float* %4, align 4
  %307 = fmul float %305, %306
  %308 = fpext float %307 to double
  %309 = fadd double %300, %308
  %310 = load %struct.TYPE_7__*, %struct.TYPE_7__** %1, align 8
  %311 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %310, i32 0, i32 7
  %312 = load float*, float** %311, align 8
  %313 = getelementptr inbounds float, float* %312, i64 2
  %314 = load float, float* %313, align 4
  %315 = load float, float* %5, align 4
  %316 = fmul float %314, %315
  %317 = fpext float %316 to double
  %318 = fadd double %309, %317
  %319 = load double*, double** %6, align 8
  %320 = getelementptr inbounds double, double* %319, i64 2
  store double %318, double* %320, align 8
  %321 = load %struct.TYPE_7__*, %struct.TYPE_7__** %1, align 8
  %322 = load double*, double** %6, align 8
  %323 = load float, float* %3, align 4
  %324 = call i32 @CG_AddParticleToScene(%struct.TYPE_7__* %321, double* %322, float %323)
  br label %325

325:                                              ; preds = %242, %206, %175, %149, %123, %80
  %326 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  store %struct.TYPE_7__* %326, %struct.TYPE_7__** %1, align 8
  br label %55

327:                                              ; preds = %55
  %328 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  store %struct.TYPE_7__* %328, %struct.TYPE_7__** @active_particles, align 8
  ret void
}

declare dso_local i32 @CG_ClearParticles(...) #1

declare dso_local i32 @VectorCopy(i32, i32) #1

declare dso_local i32 @vectoangles(i32, double*) #1

declare dso_local i32 @AngleVectors(double*, i32, i32, i32) #1

declare dso_local i32 @CG_AddParticleToScene(%struct.TYPE_7__*, double*, float) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
