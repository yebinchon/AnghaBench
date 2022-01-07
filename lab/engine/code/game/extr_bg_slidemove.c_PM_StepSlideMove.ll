; ModuleID = '/home/carl/AnghaBench/lab/engine/code/game/extr_bg_slidemove.c_PM_StepSlideMove.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/game/extr_bg_slidemove.c_PM_StepSlideMove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i64, %struct.TYPE_10__*, i32, i32, i32, i32 (%struct.TYPE_11__*, float*, i32, i32, float*, i32, i32)* }
%struct.TYPE_10__ = type { float*, float*, i32 }
%struct.TYPE_11__ = type { double, float*, %struct.TYPE_9__, i64 }
%struct.TYPE_9__ = type { i32 }

@pm = common dso_local global %struct.TYPE_12__* null, align 8
@STEPSIZE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [20 x i8] c"%i:bend can't step\0A\00", align 1
@c_pmove = common dso_local global i32 0, align 4
@OVERCLIP = common dso_local global i32 0, align 4
@EV_STEP_4 = common dso_local global i32 0, align 4
@EV_STEP_8 = common dso_local global i32 0, align 4
@EV_STEP_12 = common dso_local global i32 0, align 4
@EV_STEP_16 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [12 x i8] c"%i:stepped\0A\00", align 1
@down_o = common dso_local global float* null, align 8
@down_v = common dso_local global float* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @PM_StepSlideMove(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca float*, align 8
  %4 = alloca float*, align 8
  %5 = alloca %struct.TYPE_11__, align 8
  %6 = alloca float*, align 8
  %7 = alloca float*, align 8
  %8 = alloca float, align 4
  %9 = alloca float, align 4
  store i32 %0, i32* %2, align 4
  %10 = load %struct.TYPE_12__*, %struct.TYPE_12__** @pm, align 8
  %11 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %10, i32 0, i32 1
  %12 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %12, i32 0, i32 0
  %14 = load float*, float** %13, align 8
  %15 = load float*, float** %3, align 8
  %16 = call i32 @VectorCopy(float* %14, float* %15)
  %17 = load %struct.TYPE_12__*, %struct.TYPE_12__** @pm, align 8
  %18 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %17, i32 0, i32 1
  %19 = load %struct.TYPE_10__*, %struct.TYPE_10__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %19, i32 0, i32 1
  %21 = load float*, float** %20, align 8
  %22 = load float*, float** %4, align 8
  %23 = call i32 @VectorCopy(float* %21, float* %22)
  %24 = load i32, i32* %2, align 4
  %25 = call i64 @PM_SlideMove(i32 %24)
  %26 = icmp eq i64 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %1
  br label %262

28:                                               ; preds = %1
  %29 = load float*, float** %3, align 8
  %30 = load float*, float** %7, align 8
  %31 = call i32 @VectorCopy(float* %29, float* %30)
  %32 = load i64, i64* @STEPSIZE, align 8
  %33 = sitofp i64 %32 to float
  %34 = load float*, float** %7, align 8
  %35 = getelementptr inbounds float, float* %34, i64 2
  %36 = load float, float* %35, align 4
  %37 = fsub float %36, %33
  store float %37, float* %35, align 4
  %38 = load %struct.TYPE_12__*, %struct.TYPE_12__** @pm, align 8
  %39 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %38, i32 0, i32 5
  %40 = load i32 (%struct.TYPE_11__*, float*, i32, i32, float*, i32, i32)*, i32 (%struct.TYPE_11__*, float*, i32, i32, float*, i32, i32)** %39, align 8
  %41 = load float*, float** %3, align 8
  %42 = load %struct.TYPE_12__*, %struct.TYPE_12__** @pm, align 8
  %43 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %42, i32 0, i32 4
  %44 = load i32, i32* %43, align 8
  %45 = load %struct.TYPE_12__*, %struct.TYPE_12__** @pm, align 8
  %46 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %45, i32 0, i32 3
  %47 = load i32, i32* %46, align 4
  %48 = load float*, float** %7, align 8
  %49 = load %struct.TYPE_12__*, %struct.TYPE_12__** @pm, align 8
  %50 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %49, i32 0, i32 1
  %51 = load %struct.TYPE_10__*, %struct.TYPE_10__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 8
  %54 = load %struct.TYPE_12__*, %struct.TYPE_12__** @pm, align 8
  %55 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 8
  %57 = call i32 %40(%struct.TYPE_11__* %5, float* %41, i32 %44, i32 %47, float* %48, i32 %53, i32 %56)
  %58 = load float*, float** %6, align 8
  %59 = call i32 @VectorSet(float* %58, i32 0, i32 0, i32 1)
  %60 = load %struct.TYPE_12__*, %struct.TYPE_12__** @pm, align 8
  %61 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %60, i32 0, i32 1
  %62 = load %struct.TYPE_10__*, %struct.TYPE_10__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %62, i32 0, i32 1
  %64 = load float*, float** %63, align 8
  %65 = getelementptr inbounds float, float* %64, i64 2
  %66 = load float, float* %65, align 4
  %67 = fcmp ogt float %66, 0.000000e+00
  br i1 %67, label %68, label %80

68:                                               ; preds = %28
  %69 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %5, i32 0, i32 0
  %70 = load double, double* %69, align 8
  %71 = fcmp oeq double %70, 1.000000e+00
  br i1 %71, label %79, label %72

72:                                               ; preds = %68
  %73 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %5, i32 0, i32 2
  %74 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = load float*, float** %6, align 8
  %77 = call double @DotProduct(i32 %75, float* %76)
  %78 = fcmp olt double %77, 0x3FE6666666666666
  br i1 %78, label %79, label %80

79:                                               ; preds = %72, %68
  br label %262

80:                                               ; preds = %72, %28
  %81 = load float*, float** %3, align 8
  %82 = load float*, float** %6, align 8
  %83 = call i32 @VectorCopy(float* %81, float* %82)
  %84 = load i64, i64* @STEPSIZE, align 8
  %85 = sitofp i64 %84 to float
  %86 = load float*, float** %6, align 8
  %87 = getelementptr inbounds float, float* %86, i64 2
  %88 = load float, float* %87, align 4
  %89 = fadd float %88, %85
  store float %89, float* %87, align 4
  %90 = load %struct.TYPE_12__*, %struct.TYPE_12__** @pm, align 8
  %91 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %90, i32 0, i32 5
  %92 = load i32 (%struct.TYPE_11__*, float*, i32, i32, float*, i32, i32)*, i32 (%struct.TYPE_11__*, float*, i32, i32, float*, i32, i32)** %91, align 8
  %93 = load float*, float** %3, align 8
  %94 = load %struct.TYPE_12__*, %struct.TYPE_12__** @pm, align 8
  %95 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %94, i32 0, i32 4
  %96 = load i32, i32* %95, align 8
  %97 = load %struct.TYPE_12__*, %struct.TYPE_12__** @pm, align 8
  %98 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %97, i32 0, i32 3
  %99 = load i32, i32* %98, align 4
  %100 = load float*, float** %6, align 8
  %101 = load %struct.TYPE_12__*, %struct.TYPE_12__** @pm, align 8
  %102 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %101, i32 0, i32 1
  %103 = load %struct.TYPE_10__*, %struct.TYPE_10__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %103, i32 0, i32 2
  %105 = load i32, i32* %104, align 8
  %106 = load %struct.TYPE_12__*, %struct.TYPE_12__** @pm, align 8
  %107 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %106, i32 0, i32 2
  %108 = load i32, i32* %107, align 8
  %109 = call i32 %92(%struct.TYPE_11__* %5, float* %93, i32 %96, i32 %99, float* %100, i32 %105, i32 %108)
  %110 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %5, i32 0, i32 3
  %111 = load i64, i64* %110, align 8
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %122

113:                                              ; preds = %80
  %114 = load %struct.TYPE_12__*, %struct.TYPE_12__** @pm, align 8
  %115 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %114, i32 0, i32 0
  %116 = load i64, i64* %115, align 8
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %121

118:                                              ; preds = %113
  %119 = load i32, i32* @c_pmove, align 4
  %120 = call i32 @Com_Printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %119)
  br label %121

121:                                              ; preds = %118, %113
  br label %262

122:                                              ; preds = %80
  %123 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %5, i32 0, i32 1
  %124 = load float*, float** %123, align 8
  %125 = getelementptr inbounds float, float* %124, i64 2
  %126 = load float, float* %125, align 4
  %127 = load float*, float** %3, align 8
  %128 = getelementptr inbounds float, float* %127, i64 2
  %129 = load float, float* %128, align 4
  %130 = fsub float %126, %129
  store float %130, float* %8, align 4
  %131 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %5, i32 0, i32 1
  %132 = load float*, float** %131, align 8
  %133 = load %struct.TYPE_12__*, %struct.TYPE_12__** @pm, align 8
  %134 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %133, i32 0, i32 1
  %135 = load %struct.TYPE_10__*, %struct.TYPE_10__** %134, align 8
  %136 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %135, i32 0, i32 0
  %137 = load float*, float** %136, align 8
  %138 = call i32 @VectorCopy(float* %132, float* %137)
  %139 = load float*, float** %4, align 8
  %140 = load %struct.TYPE_12__*, %struct.TYPE_12__** @pm, align 8
  %141 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %140, i32 0, i32 1
  %142 = load %struct.TYPE_10__*, %struct.TYPE_10__** %141, align 8
  %143 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %142, i32 0, i32 1
  %144 = load float*, float** %143, align 8
  %145 = call i32 @VectorCopy(float* %139, float* %144)
  %146 = load i32, i32* %2, align 4
  %147 = call i64 @PM_SlideMove(i32 %146)
  %148 = load %struct.TYPE_12__*, %struct.TYPE_12__** @pm, align 8
  %149 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %148, i32 0, i32 1
  %150 = load %struct.TYPE_10__*, %struct.TYPE_10__** %149, align 8
  %151 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %150, i32 0, i32 0
  %152 = load float*, float** %151, align 8
  %153 = load float*, float** %7, align 8
  %154 = call i32 @VectorCopy(float* %152, float* %153)
  %155 = load float, float* %8, align 4
  %156 = load float*, float** %7, align 8
  %157 = getelementptr inbounds float, float* %156, i64 2
  %158 = load float, float* %157, align 4
  %159 = fsub float %158, %155
  store float %159, float* %157, align 4
  %160 = load %struct.TYPE_12__*, %struct.TYPE_12__** @pm, align 8
  %161 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %160, i32 0, i32 5
  %162 = load i32 (%struct.TYPE_11__*, float*, i32, i32, float*, i32, i32)*, i32 (%struct.TYPE_11__*, float*, i32, i32, float*, i32, i32)** %161, align 8
  %163 = load %struct.TYPE_12__*, %struct.TYPE_12__** @pm, align 8
  %164 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %163, i32 0, i32 1
  %165 = load %struct.TYPE_10__*, %struct.TYPE_10__** %164, align 8
  %166 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %165, i32 0, i32 0
  %167 = load float*, float** %166, align 8
  %168 = load %struct.TYPE_12__*, %struct.TYPE_12__** @pm, align 8
  %169 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %168, i32 0, i32 4
  %170 = load i32, i32* %169, align 8
  %171 = load %struct.TYPE_12__*, %struct.TYPE_12__** @pm, align 8
  %172 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %171, i32 0, i32 3
  %173 = load i32, i32* %172, align 4
  %174 = load float*, float** %7, align 8
  %175 = load %struct.TYPE_12__*, %struct.TYPE_12__** @pm, align 8
  %176 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %175, i32 0, i32 1
  %177 = load %struct.TYPE_10__*, %struct.TYPE_10__** %176, align 8
  %178 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %177, i32 0, i32 2
  %179 = load i32, i32* %178, align 8
  %180 = load %struct.TYPE_12__*, %struct.TYPE_12__** @pm, align 8
  %181 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %180, i32 0, i32 2
  %182 = load i32, i32* %181, align 8
  %183 = call i32 %162(%struct.TYPE_11__* %5, float* %167, i32 %170, i32 %173, float* %174, i32 %179, i32 %182)
  %184 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %5, i32 0, i32 3
  %185 = load i64, i64* %184, align 8
  %186 = icmp ne i64 %185, 0
  br i1 %186, label %196, label %187

187:                                              ; preds = %122
  %188 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %5, i32 0, i32 1
  %189 = load float*, float** %188, align 8
  %190 = load %struct.TYPE_12__*, %struct.TYPE_12__** @pm, align 8
  %191 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %190, i32 0, i32 1
  %192 = load %struct.TYPE_10__*, %struct.TYPE_10__** %191, align 8
  %193 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %192, i32 0, i32 0
  %194 = load float*, float** %193, align 8
  %195 = call i32 @VectorCopy(float* %189, float* %194)
  br label %196

196:                                              ; preds = %187, %122
  %197 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %5, i32 0, i32 0
  %198 = load double, double* %197, align 8
  %199 = fcmp olt double %198, 1.000000e+00
  br i1 %199, label %200, label %216

200:                                              ; preds = %196
  %201 = load %struct.TYPE_12__*, %struct.TYPE_12__** @pm, align 8
  %202 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %201, i32 0, i32 1
  %203 = load %struct.TYPE_10__*, %struct.TYPE_10__** %202, align 8
  %204 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %203, i32 0, i32 1
  %205 = load float*, float** %204, align 8
  %206 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %5, i32 0, i32 2
  %207 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %206, i32 0, i32 0
  %208 = load i32, i32* %207, align 8
  %209 = load %struct.TYPE_12__*, %struct.TYPE_12__** @pm, align 8
  %210 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %209, i32 0, i32 1
  %211 = load %struct.TYPE_10__*, %struct.TYPE_10__** %210, align 8
  %212 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %211, i32 0, i32 1
  %213 = load float*, float** %212, align 8
  %214 = load i32, i32* @OVERCLIP, align 4
  %215 = call i32 @PM_ClipVelocity(float* %205, i32 %208, float* %213, i32 %214)
  br label %216

216:                                              ; preds = %200, %196
  %217 = load %struct.TYPE_12__*, %struct.TYPE_12__** @pm, align 8
  %218 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %217, i32 0, i32 1
  %219 = load %struct.TYPE_10__*, %struct.TYPE_10__** %218, align 8
  %220 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %219, i32 0, i32 0
  %221 = load float*, float** %220, align 8
  %222 = getelementptr inbounds float, float* %221, i64 2
  %223 = load float, float* %222, align 4
  %224 = load float*, float** %3, align 8
  %225 = getelementptr inbounds float, float* %224, i64 2
  %226 = load float, float* %225, align 4
  %227 = fsub float %223, %226
  store float %227, float* %9, align 4
  %228 = load float, float* %9, align 4
  %229 = fcmp ogt float %228, 2.000000e+00
  br i1 %229, label %230, label %254

230:                                              ; preds = %216
  %231 = load float, float* %9, align 4
  %232 = fcmp olt float %231, 7.000000e+00
  br i1 %232, label %233, label %236

233:                                              ; preds = %230
  %234 = load i32, i32* @EV_STEP_4, align 4
  %235 = call i32 @PM_AddEvent(i32 %234)
  br label %253

236:                                              ; preds = %230
  %237 = load float, float* %9, align 4
  %238 = fcmp olt float %237, 1.100000e+01
  br i1 %238, label %239, label %242

239:                                              ; preds = %236
  %240 = load i32, i32* @EV_STEP_8, align 4
  %241 = call i32 @PM_AddEvent(i32 %240)
  br label %252

242:                                              ; preds = %236
  %243 = load float, float* %9, align 4
  %244 = fcmp olt float %243, 1.500000e+01
  br i1 %244, label %245, label %248

245:                                              ; preds = %242
  %246 = load i32, i32* @EV_STEP_12, align 4
  %247 = call i32 @PM_AddEvent(i32 %246)
  br label %251

248:                                              ; preds = %242
  %249 = load i32, i32* @EV_STEP_16, align 4
  %250 = call i32 @PM_AddEvent(i32 %249)
  br label %251

251:                                              ; preds = %248, %245
  br label %252

252:                                              ; preds = %251, %239
  br label %253

253:                                              ; preds = %252, %233
  br label %254

254:                                              ; preds = %253, %216
  %255 = load %struct.TYPE_12__*, %struct.TYPE_12__** @pm, align 8
  %256 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %255, i32 0, i32 0
  %257 = load i64, i64* %256, align 8
  %258 = icmp ne i64 %257, 0
  br i1 %258, label %259, label %262

259:                                              ; preds = %254
  %260 = load i32, i32* @c_pmove, align 4
  %261 = call i32 @Com_Printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i32 %260)
  br label %262

262:                                              ; preds = %27, %79, %121, %259, %254
  ret void
}

declare dso_local i32 @VectorCopy(float*, float*) #1

declare dso_local i64 @PM_SlideMove(i32) #1

declare dso_local i32 @VectorSet(float*, i32, i32, i32) #1

declare dso_local double @DotProduct(i32, float*) #1

declare dso_local i32 @Com_Printf(i8*, i32) #1

declare dso_local i32 @PM_ClipVelocity(float*, i32, float*, i32) #1

declare dso_local i32 @PM_AddEvent(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
