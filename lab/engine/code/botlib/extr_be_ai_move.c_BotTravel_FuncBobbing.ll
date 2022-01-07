; ModuleID = '/home/carl/AnghaBench/lab/engine/code/botlib/extr_be_ai_move.c_BotTravel_FuncBobbing.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/botlib/extr_be_ai_move.c_BotTravel_FuncBobbing.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i32, i64*, i32 }
%struct.TYPE_19__ = type { i32 (i32, i8*)* }
%struct.TYPE_16__ = type { i32, i32, i64*, i64, i32 }
%struct.TYPE_18__ = type { i64*, i64* }

@result = common dso_local global %struct.TYPE_17__ zeroinitializer, align 8
@MFL_SWIMMING = common dso_local global i32 0, align 4
@MOVERESULT_SWIMVIEW = common dso_local global i32 0, align 4
@qfalse = common dso_local global i32 0, align 4
@RESULTTYPE_WAITFORFUNCBOBBING = common dso_local global i32 0, align 4
@MOVERESULT_WAITING = common dso_local global i32 0, align 4
@PRT_MESSAGE = common dso_local global i32 0, align 4
@botimport = common dso_local global %struct.TYPE_19__ zeroinitializer, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @BotTravel_FuncBobbing(%struct.TYPE_17__* noalias sret %0, %struct.TYPE_16__* %1, %struct.TYPE_18__* %2) #0 {
  %4 = alloca %struct.TYPE_16__*, align 8
  %5 = alloca %struct.TYPE_18__*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i64*, align 8
  %13 = alloca i64*, align 8
  %14 = alloca float, align 4
  %15 = alloca float, align 4
  %16 = alloca float, align 4
  %17 = alloca float, align 4
  store %struct.TYPE_16__* %1, %struct.TYPE_16__** %4, align 8
  store %struct.TYPE_18__* %2, %struct.TYPE_18__** %5, align 8
  %18 = call i32 @bot_moveresult_t_cleared(%struct.TYPE_17__* byval(%struct.TYPE_17__) align 8 @result)
  %19 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %20 = load i64*, i64** %11, align 8
  %21 = load i64*, i64** %12, align 8
  %22 = load i64*, i64** %13, align 8
  %23 = call i32 @BotFuncBobStartEnd(%struct.TYPE_18__* %19, i64* %20, i64* %21, i64* %22)
  %24 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %25 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %24, i32 0, i32 2
  %26 = load i64*, i64** %25, align 8
  %27 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %28 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %27, i32 0, i32 4
  %29 = load i32, i32* %28, align 8
  %30 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %31 = call i64 @BotOnMover(i64* %26, i32 %29, %struct.TYPE_18__* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %104

33:                                               ; preds = %3
  %34 = load i64*, i64** %13, align 8
  %35 = load i64*, i64** %12, align 8
  %36 = load i64*, i64** %6, align 8
  %37 = call i32 @VectorSubtract(i64* %34, i64* %35, i64* %36)
  %38 = load i64*, i64** %6, align 8
  %39 = call i32 @VectorLength(i64* %38)
  %40 = icmp slt i32 %39, 24
  br i1 %40, label %41, label %68

41:                                               ; preds = %33
  %42 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %43 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %42, i32 0, i32 1
  %44 = load i64*, i64** %43, align 8
  %45 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %46 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %45, i32 0, i32 2
  %47 = load i64*, i64** %46, align 8
  %48 = load i64*, i64** %9, align 8
  %49 = call i32 @VectorSubtract(i64* %44, i64* %47, i64* %48)
  %50 = load i64*, i64** %9, align 8
  %51 = getelementptr inbounds i64, i64* %50, i64 2
  store i64 0, i64* %51, align 8
  %52 = load i64*, i64** %9, align 8
  %53 = call float @VectorNormalize(i64* %52)
  %54 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %55 = load i64*, i64** %9, align 8
  %56 = call i32 @BotCheckBarrierJump(%struct.TYPE_16__* %54, i64* %55, i32 100)
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %64, label %58

58:                                               ; preds = %41
  %59 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %60 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = load i64*, i64** %9, align 8
  %63 = call i32 @EA_Move(i32 %61, i64* %62, float 4.000000e+02)
  br label %64

64:                                               ; preds = %58, %41
  %65 = load i64*, i64** %9, align 8
  %66 = load i64*, i64** getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @result, i32 0, i32 1), align 8
  %67 = call i32 @VectorCopy(i64* %65, i64* %66)
  br label %103

68:                                               ; preds = %33
  %69 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %70 = load i64*, i64** %10, align 8
  %71 = call i32 @MoverBottomCenter(%struct.TYPE_18__* %69, i64* %70)
  %72 = load i64*, i64** %10, align 8
  %73 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %74 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %73, i32 0, i32 2
  %75 = load i64*, i64** %74, align 8
  %76 = load i64*, i64** %9, align 8
  %77 = call i32 @VectorSubtract(i64* %72, i64* %75, i64* %76)
  %78 = load i64*, i64** %9, align 8
  %79 = getelementptr inbounds i64, i64* %78, i64 2
  store i64 0, i64* %79, align 8
  %80 = load i64*, i64** %9, align 8
  %81 = call float @VectorNormalize(i64* %80)
  store float %81, float* %14, align 4
  %82 = load float, float* %14, align 4
  %83 = fcmp ogt float %82, 1.000000e+01
  br i1 %83, label %84, label %102

84:                                               ; preds = %68
  %85 = load float, float* %14, align 4
  %86 = fcmp ogt float %85, 1.000000e+02
  br i1 %86, label %87, label %88

87:                                               ; preds = %84
  store float 1.000000e+02, float* %14, align 4
  br label %88

88:                                               ; preds = %87, %84
  %89 = load float, float* %14, align 4
  %90 = fmul float 4.000000e+00, %89
  %91 = fsub float 4.000000e+02, %90
  %92 = fsub float 4.000000e+02, %91
  store float %92, float* %17, align 4
  %93 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %94 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  %96 = load i64*, i64** %9, align 8
  %97 = load float, float* %17, align 4
  %98 = call i32 @EA_Move(i32 %95, i64* %96, float %97)
  %99 = load i64*, i64** %9, align 8
  %100 = load i64*, i64** getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @result, i32 0, i32 1), align 8
  %101 = call i32 @VectorCopy(i64* %99, i64* %100)
  br label %102

102:                                              ; preds = %88, %68
  br label %103

103:                                              ; preds = %102, %64
  br label %343

104:                                              ; preds = %3
  %105 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %106 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %105, i32 0, i32 1
  %107 = load i64*, i64** %106, align 8
  %108 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %109 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %108, i32 0, i32 2
  %110 = load i64*, i64** %109, align 8
  %111 = load i64*, i64** %6, align 8
  %112 = call i32 @VectorSubtract(i64* %107, i64* %110, i64* %111)
  %113 = load i64*, i64** %6, align 8
  %114 = call i32 @VectorLength(i64* %113)
  %115 = sitofp i32 %114 to float
  store float %115, float* %14, align 4
  %116 = load float, float* %14, align 4
  %117 = fcmp olt float %116, 6.400000e+01
  br i1 %117, label %118, label %167

118:                                              ; preds = %104
  %119 = load float, float* %14, align 4
  %120 = fcmp ogt float %119, 6.000000e+01
  br i1 %120, label %121, label %122

121:                                              ; preds = %118
  store float 6.000000e+01, float* %14, align 4
  br label %122

122:                                              ; preds = %121, %118
  %123 = load float, float* %14, align 4
  %124 = fmul float 6.000000e+00, %123
  %125 = fsub float 3.600000e+02, %124
  %126 = fsub float 3.600000e+02, %125
  store float %126, float* %17, align 4
  %127 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %128 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 8
  %130 = load i32, i32* @MFL_SWIMMING, align 4
  %131 = and i32 %129, %130
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %138, label %133

133:                                              ; preds = %122
  %134 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %135 = load i64*, i64** %6, align 8
  %136 = call i32 @BotCheckBarrierJump(%struct.TYPE_16__* %134, i64* %135, i32 50)
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %149, label %138

138:                                              ; preds = %133, %122
  %139 = load float, float* %17, align 4
  %140 = fcmp ogt float %139, 5.000000e+00
  br i1 %140, label %141, label %148

141:                                              ; preds = %138
  %142 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %143 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %142, i32 0, i32 1
  %144 = load i32, i32* %143, align 4
  %145 = load i64*, i64** %6, align 8
  %146 = load float, float* %17, align 4
  %147 = call i32 @EA_Move(i32 %144, i64* %145, float %146)
  br label %148

148:                                              ; preds = %141, %138
  br label %149

149:                                              ; preds = %148, %133
  %150 = load i64*, i64** %6, align 8
  %151 = load i64*, i64** getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @result, i32 0, i32 1), align 8
  %152 = call i32 @VectorCopy(i64* %150, i64* %151)
  %153 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %154 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %153, i32 0, i32 0
  %155 = load i32, i32* %154, align 8
  %156 = load i32, i32* @MFL_SWIMMING, align 4
  %157 = and i32 %155, %156
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %159, label %163

159:                                              ; preds = %149
  %160 = load i32, i32* @MOVERESULT_SWIMVIEW, align 4
  %161 = load i32, i32* getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @result, i32 0, i32 0), align 8
  %162 = or i32 %161, %160
  store i32 %162, i32* getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @result, i32 0, i32 0), align 8
  br label %163

163:                                              ; preds = %159, %149
  %164 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %165 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %164, i32 0, i32 3
  store i64 0, i64* %165, align 8
  %166 = bitcast %struct.TYPE_17__* %0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %166, i8* align 8 bitcast (%struct.TYPE_17__* @result to i8*), i64 24, i1 false)
  br label %345

167:                                              ; preds = %104
  %168 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %169 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %168, i32 0, i32 0
  %170 = load i64*, i64** %169, align 8
  %171 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %172 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %171, i32 0, i32 2
  %173 = load i64*, i64** %172, align 8
  %174 = load i64*, i64** %7, align 8
  %175 = call i32 @VectorSubtract(i64* %170, i64* %173, i64* %174)
  %176 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %177 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %176, i32 0, i32 0
  %178 = load i32, i32* %177, align 8
  %179 = load i32, i32* @MFL_SWIMMING, align 4
  %180 = and i32 %178, %179
  %181 = icmp ne i32 %180, 0
  br i1 %181, label %185, label %182

182:                                              ; preds = %167
  %183 = load i64*, i64** %7, align 8
  %184 = getelementptr inbounds i64, i64* %183, i64 2
  store i64 0, i64* %184, align 8
  br label %185

185:                                              ; preds = %182, %167
  %186 = load i64*, i64** %7, align 8
  %187 = call float @VectorNormalize(i64* %186)
  store float %187, float* %15, align 4
  %188 = load i64*, i64** %13, align 8
  %189 = load i64*, i64** %11, align 8
  %190 = load i64*, i64** %6, align 8
  %191 = call i32 @VectorSubtract(i64* %188, i64* %189, i64* %190)
  %192 = load i64*, i64** %6, align 8
  %193 = call i32 @VectorLength(i64* %192)
  %194 = icmp sgt i32 %193, 16
  br i1 %194, label %195, label %254

195:                                              ; preds = %185
  %196 = load float, float* %15, align 4
  store float %196, float* %14, align 4
  %197 = load i64*, i64** %7, align 8
  %198 = load i64*, i64** %6, align 8
  %199 = call i32 @VectorCopy(i64* %197, i64* %198)
  %200 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %201 = load i64*, i64** %6, align 8
  %202 = load i32, i32* @qfalse, align 4
  %203 = call i32 @BotCheckBlocked(%struct.TYPE_16__* %200, i64* %201, i32 %202, %struct.TYPE_17__* @result)
  %204 = load float, float* %14, align 4
  %205 = fcmp ogt float %204, 6.000000e+01
  br i1 %205, label %206, label %207

206:                                              ; preds = %195
  store float 6.000000e+01, float* %14, align 4
  br label %207

207:                                              ; preds = %206, %195
  %208 = load float, float* %14, align 4
  %209 = fmul float 6.000000e+00, %208
  %210 = fsub float 3.600000e+02, %209
  %211 = fsub float 3.600000e+02, %210
  store float %211, float* %17, align 4
  %212 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %213 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %212, i32 0, i32 0
  %214 = load i32, i32* %213, align 8
  %215 = load i32, i32* @MFL_SWIMMING, align 4
  %216 = and i32 %214, %215
  %217 = icmp ne i32 %216, 0
  br i1 %217, label %234, label %218

218:                                              ; preds = %207
  %219 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %220 = load i64*, i64** %6, align 8
  %221 = call i32 @BotCheckBarrierJump(%struct.TYPE_16__* %219, i64* %220, i32 50)
  %222 = icmp ne i32 %221, 0
  br i1 %222, label %234, label %223

223:                                              ; preds = %218
  %224 = load float, float* %17, align 4
  %225 = fcmp ogt float %224, 5.000000e+00
  br i1 %225, label %226, label %233

226:                                              ; preds = %223
  %227 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %228 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %227, i32 0, i32 1
  %229 = load i32, i32* %228, align 4
  %230 = load i64*, i64** %6, align 8
  %231 = load float, float* %17, align 4
  %232 = call i32 @EA_Move(i32 %229, i64* %230, float %231)
  br label %233

233:                                              ; preds = %226, %223
  br label %234

234:                                              ; preds = %233, %218, %207
  %235 = load i64*, i64** %6, align 8
  %236 = load i64*, i64** getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @result, i32 0, i32 1), align 8
  %237 = call i32 @VectorCopy(i64* %235, i64* %236)
  %238 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %239 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %238, i32 0, i32 0
  %240 = load i32, i32* %239, align 8
  %241 = load i32, i32* @MFL_SWIMMING, align 4
  %242 = and i32 %240, %241
  %243 = icmp ne i32 %242, 0
  br i1 %243, label %244, label %248

244:                                              ; preds = %234
  %245 = load i32, i32* @MOVERESULT_SWIMVIEW, align 4
  %246 = load i32, i32* getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @result, i32 0, i32 0), align 8
  %247 = or i32 %246, %245
  store i32 %247, i32* getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @result, i32 0, i32 0), align 8
  br label %248

248:                                              ; preds = %244, %234
  %249 = load i32, i32* @RESULTTYPE_WAITFORFUNCBOBBING, align 4
  store i32 %249, i32* getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @result, i32 0, i32 2), align 8
  %250 = load i32, i32* @MOVERESULT_WAITING, align 4
  %251 = load i32, i32* getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @result, i32 0, i32 0), align 8
  %252 = or i32 %251, %250
  store i32 %252, i32* getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @result, i32 0, i32 0), align 8
  %253 = bitcast %struct.TYPE_17__* %0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %253, i8* align 8 bitcast (%struct.TYPE_17__* @result to i8*), i64 24, i1 false)
  br label %345

254:                                              ; preds = %185
  %255 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %256 = load i64*, i64** %10, align 8
  %257 = call i32 @MoverBottomCenter(%struct.TYPE_18__* %255, i64* %256)
  %258 = load i64*, i64** %10, align 8
  %259 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %260 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %259, i32 0, i32 2
  %261 = load i64*, i64** %260, align 8
  %262 = load i64*, i64** %8, align 8
  %263 = call i32 @VectorSubtract(i64* %258, i64* %261, i64* %262)
  %264 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %265 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %264, i32 0, i32 0
  %266 = load i32, i32* %265, align 8
  %267 = load i32, i32* @MFL_SWIMMING, align 4
  %268 = and i32 %266, %267
  %269 = icmp ne i32 %268, 0
  br i1 %269, label %273, label %270

270:                                              ; preds = %254
  %271 = load i64*, i64** %8, align 8
  %272 = getelementptr inbounds i64, i64* %271, i64 2
  store i64 0, i64* %272, align 8
  br label %273

273:                                              ; preds = %270, %254
  %274 = load i64*, i64** %8, align 8
  %275 = call float @VectorNormalize(i64* %274)
  store float %275, float* %16, align 4
  %276 = load float, float* %15, align 4
  %277 = fcmp olt float %276, 2.000000e+01
  br i1 %277, label %287, label %278

278:                                              ; preds = %273
  %279 = load float, float* %16, align 4
  %280 = load float, float* %15, align 4
  %281 = fcmp olt float %279, %280
  br i1 %281, label %287, label %282

282:                                              ; preds = %278
  %283 = load i64*, i64** %7, align 8
  %284 = load i64*, i64** %8, align 8
  %285 = call i64 @DotProduct(i64* %283, i64* %284)
  %286 = icmp slt i64 %285, 0
  br i1 %286, label %287, label %292

287:                                              ; preds = %282, %278, %273
  %288 = load float, float* %16, align 4
  store float %288, float* %14, align 4
  %289 = load i64*, i64** %8, align 8
  %290 = load i64*, i64** %6, align 8
  %291 = call i32 @VectorCopy(i64* %289, i64* %290)
  br label %297

292:                                              ; preds = %282
  %293 = load float, float* %15, align 4
  store float %293, float* %14, align 4
  %294 = load i64*, i64** %7, align 8
  %295 = load i64*, i64** %6, align 8
  %296 = call i32 @VectorCopy(i64* %294, i64* %295)
  br label %297

297:                                              ; preds = %292, %287
  %298 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %299 = load i64*, i64** %6, align 8
  %300 = load i32, i32* @qfalse, align 4
  %301 = call i32 @BotCheckBlocked(%struct.TYPE_16__* %298, i64* %299, i32 %300, %struct.TYPE_17__* @result)
  %302 = load float, float* %14, align 4
  %303 = fcmp ogt float %302, 6.000000e+01
  br i1 %303, label %304, label %305

304:                                              ; preds = %297
  store float 6.000000e+01, float* %14, align 4
  br label %305

305:                                              ; preds = %304, %297
  %306 = load float, float* %14, align 4
  %307 = fmul float 6.000000e+00, %306
  %308 = fsub float 4.000000e+02, %307
  %309 = fsub float 4.000000e+02, %308
  store float %309, float* %17, align 4
  %310 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %311 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %310, i32 0, i32 0
  %312 = load i32, i32* %311, align 8
  %313 = load i32, i32* @MFL_SWIMMING, align 4
  %314 = and i32 %312, %313
  %315 = icmp ne i32 %314, 0
  br i1 %315, label %328, label %316

316:                                              ; preds = %305
  %317 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %318 = load i64*, i64** %6, align 8
  %319 = call i32 @BotCheckBarrierJump(%struct.TYPE_16__* %317, i64* %318, i32 50)
  %320 = icmp ne i32 %319, 0
  br i1 %320, label %328, label %321

321:                                              ; preds = %316
  %322 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %323 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %322, i32 0, i32 1
  %324 = load i32, i32* %323, align 4
  %325 = load i64*, i64** %6, align 8
  %326 = load float, float* %17, align 4
  %327 = call i32 @EA_Move(i32 %324, i64* %325, float %326)
  br label %328

328:                                              ; preds = %321, %316, %305
  %329 = load i64*, i64** %6, align 8
  %330 = load i64*, i64** getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @result, i32 0, i32 1), align 8
  %331 = call i32 @VectorCopy(i64* %329, i64* %330)
  %332 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %333 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %332, i32 0, i32 0
  %334 = load i32, i32* %333, align 8
  %335 = load i32, i32* @MFL_SWIMMING, align 4
  %336 = and i32 %334, %335
  %337 = icmp ne i32 %336, 0
  br i1 %337, label %338, label %342

338:                                              ; preds = %328
  %339 = load i32, i32* @MOVERESULT_SWIMVIEW, align 4
  %340 = load i32, i32* getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @result, i32 0, i32 0), align 8
  %341 = or i32 %340, %339
  store i32 %341, i32* getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @result, i32 0, i32 0), align 8
  br label %342

342:                                              ; preds = %338, %328
  br label %343

343:                                              ; preds = %342, %103
  %344 = bitcast %struct.TYPE_17__* %0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %344, i8* align 8 bitcast (%struct.TYPE_17__* @result to i8*), i64 24, i1 false)
  br label %345

345:                                              ; preds = %343, %248, %163
  ret void
}

declare dso_local i32 @bot_moveresult_t_cleared(%struct.TYPE_17__* byval(%struct.TYPE_17__) align 8) #1

declare dso_local i32 @BotFuncBobStartEnd(%struct.TYPE_18__*, i64*, i64*, i64*) #1

declare dso_local i64 @BotOnMover(i64*, i32, %struct.TYPE_18__*) #1

declare dso_local i32 @VectorSubtract(i64*, i64*, i64*) #1

declare dso_local i32 @VectorLength(i64*) #1

declare dso_local float @VectorNormalize(i64*) #1

declare dso_local i32 @BotCheckBarrierJump(%struct.TYPE_16__*, i64*, i32) #1

declare dso_local i32 @EA_Move(i32, i64*, float) #1

declare dso_local i32 @VectorCopy(i64*, i64*) #1

declare dso_local i32 @MoverBottomCenter(%struct.TYPE_18__*, i64*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @BotCheckBlocked(%struct.TYPE_16__*, i64*, i32, %struct.TYPE_17__*) #1

declare dso_local i64 @DotProduct(i64*, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
