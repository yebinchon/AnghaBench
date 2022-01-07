; ModuleID = '/home/carl/AnghaBench/lab/engine/code/botlib/extr_be_ai_move.c_BotTravel_Elevator.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/botlib/extr_be_ai_move.c_BotTravel_Elevator.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { i32, i64*, i32 }
%struct.TYPE_20__ = type { i64 }
%struct.TYPE_21__ = type { i32 (i32, i8*)* }
%struct.TYPE_17__ = type { i32, i32, i64*, i64, i32 }
%struct.TYPE_19__ = type { i64*, i64* }

@result = common dso_local global %struct.TYPE_18__ zeroinitializer, align 8
@sv_maxbarrier = common dso_local global %struct.TYPE_20__* null, align 8
@MFL_SWIMMING = common dso_local global i32 0, align 4
@MOVERESULT_SWIMVIEW = common dso_local global i32 0, align 4
@qfalse = common dso_local global i32 0, align 4
@RESULTTYPE_ELEVATORUP = common dso_local global i32 0, align 4
@MOVERESULT_WAITING = common dso_local global i32 0, align 4
@PRT_MESSAGE = common dso_local global i32 0, align 4
@botimport = common dso_local global %struct.TYPE_21__ zeroinitializer, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @BotTravel_Elevator(%struct.TYPE_18__* noalias sret %0, %struct.TYPE_17__* %1, %struct.TYPE_19__* %2) #0 {
  %4 = alloca %struct.TYPE_17__*, align 8
  %5 = alloca %struct.TYPE_19__*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i64*, align 8
  %11 = alloca float, align 4
  %12 = alloca float, align 4
  %13 = alloca float, align 4
  %14 = alloca float, align 4
  store %struct.TYPE_17__* %1, %struct.TYPE_17__** %4, align 8
  store %struct.TYPE_19__* %2, %struct.TYPE_19__** %5, align 8
  %15 = call i32 @bot_moveresult_t_cleared(%struct.TYPE_18__* byval(%struct.TYPE_18__) align 8 @result)
  %16 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %16, i32 0, i32 2
  %18 = load i64*, i64** %17, align 8
  %19 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %19, i32 0, i32 4
  %21 = load i32, i32* %20, align 8
  %22 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %23 = call i64 @BotOnMover(i64* %18, i32 %21, %struct.TYPE_19__* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %105

25:                                               ; preds = %3
  %26 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %27 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %26, i32 0, i32 2
  %28 = load i64*, i64** %27, align 8
  %29 = getelementptr inbounds i64, i64* %28, i64 2
  %30 = load i64, i64* %29, align 8
  %31 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %32 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %31, i32 0, i32 1
  %33 = load i64*, i64** %32, align 8
  %34 = getelementptr inbounds i64, i64* %33, i64 2
  %35 = load i64, i64* %34, align 8
  %36 = sub nsw i64 %30, %35
  %37 = call i64 @fabsf(i64 %36)
  %38 = load %struct.TYPE_20__*, %struct.TYPE_20__** @sv_maxbarrier, align 8
  %39 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = icmp slt i64 %37, %40
  br i1 %41, label %42, label %69

42:                                               ; preds = %25
  %43 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %44 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %43, i32 0, i32 1
  %45 = load i64*, i64** %44, align 8
  %46 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %47 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %46, i32 0, i32 2
  %48 = load i64*, i64** %47, align 8
  %49 = load i64*, i64** %9, align 8
  %50 = call i32 @VectorSubtract(i64* %45, i64* %48, i64* %49)
  %51 = load i64*, i64** %9, align 8
  %52 = getelementptr inbounds i64, i64* %51, i64 2
  store i64 0, i64* %52, align 8
  %53 = load i64*, i64** %9, align 8
  %54 = call float @VectorNormalize(i64* %53)
  %55 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %56 = load i64*, i64** %9, align 8
  %57 = call i32 @BotCheckBarrierJump(%struct.TYPE_17__* %55, i64* %56, i32 100)
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %65, label %59

59:                                               ; preds = %42
  %60 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %61 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = load i64*, i64** %9, align 8
  %64 = call i32 @EA_Move(i32 %62, i64* %63, float 4.000000e+02)
  br label %65

65:                                               ; preds = %59, %42
  %66 = load i64*, i64** %9, align 8
  %67 = load i64*, i64** getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @result, i32 0, i32 1), align 8
  %68 = call i32 @VectorCopy(i64* %66, i64* %67)
  br label %104

69:                                               ; preds = %25
  %70 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %71 = load i64*, i64** %10, align 8
  %72 = call i32 @MoverBottomCenter(%struct.TYPE_19__* %70, i64* %71)
  %73 = load i64*, i64** %10, align 8
  %74 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %75 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %74, i32 0, i32 2
  %76 = load i64*, i64** %75, align 8
  %77 = load i64*, i64** %9, align 8
  %78 = call i32 @VectorSubtract(i64* %73, i64* %76, i64* %77)
  %79 = load i64*, i64** %9, align 8
  %80 = getelementptr inbounds i64, i64* %79, i64 2
  store i64 0, i64* %80, align 8
  %81 = load i64*, i64** %9, align 8
  %82 = call float @VectorNormalize(i64* %81)
  store float %82, float* %11, align 4
  %83 = load float, float* %11, align 4
  %84 = fcmp ogt float %83, 1.000000e+01
  br i1 %84, label %85, label %103

85:                                               ; preds = %69
  %86 = load float, float* %11, align 4
  %87 = fcmp ogt float %86, 1.000000e+02
  br i1 %87, label %88, label %89

88:                                               ; preds = %85
  store float 1.000000e+02, float* %11, align 4
  br label %89

89:                                               ; preds = %88, %85
  %90 = load float, float* %11, align 4
  %91 = fmul float 4.000000e+00, %90
  %92 = fsub float 4.000000e+02, %91
  %93 = fsub float 4.000000e+02, %92
  store float %93, float* %14, align 4
  %94 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %95 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  %97 = load i64*, i64** %9, align 8
  %98 = load float, float* %14, align 4
  %99 = call i32 @EA_Move(i32 %96, i64* %97, float %98)
  %100 = load i64*, i64** %9, align 8
  %101 = load i64*, i64** getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @result, i32 0, i32 1), align 8
  %102 = call i32 @VectorCopy(i64* %100, i64* %101)
  br label %103

103:                                              ; preds = %89, %69
  br label %104

104:                                              ; preds = %103, %65
  br label %339

105:                                              ; preds = %3
  %106 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %107 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %106, i32 0, i32 1
  %108 = load i64*, i64** %107, align 8
  %109 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %110 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %109, i32 0, i32 2
  %111 = load i64*, i64** %110, align 8
  %112 = load i64*, i64** %6, align 8
  %113 = call i32 @VectorSubtract(i64* %108, i64* %111, i64* %112)
  %114 = load i64*, i64** %6, align 8
  %115 = call float @VectorLength(i64* %114)
  store float %115, float* %11, align 4
  %116 = load float, float* %11, align 4
  %117 = fcmp olt float %116, 6.400000e+01
  br i1 %117, label %118, label %167

118:                                              ; preds = %105
  %119 = load float, float* %11, align 4
  %120 = fcmp ogt float %119, 6.000000e+01
  br i1 %120, label %121, label %122

121:                                              ; preds = %118
  store float 6.000000e+01, float* %11, align 4
  br label %122

122:                                              ; preds = %121, %118
  %123 = load float, float* %11, align 4
  %124 = fmul float 6.000000e+00, %123
  %125 = fsub float 3.600000e+02, %124
  %126 = fsub float 3.600000e+02, %125
  store float %126, float* %14, align 4
  %127 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %128 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 8
  %130 = load i32, i32* @MFL_SWIMMING, align 4
  %131 = and i32 %129, %130
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %138, label %133

133:                                              ; preds = %122
  %134 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %135 = load i64*, i64** %6, align 8
  %136 = call i32 @BotCheckBarrierJump(%struct.TYPE_17__* %134, i64* %135, i32 50)
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %149, label %138

138:                                              ; preds = %133, %122
  %139 = load float, float* %14, align 4
  %140 = fcmp ogt float %139, 5.000000e+00
  br i1 %140, label %141, label %148

141:                                              ; preds = %138
  %142 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %143 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %142, i32 0, i32 1
  %144 = load i32, i32* %143, align 4
  %145 = load i64*, i64** %6, align 8
  %146 = load float, float* %14, align 4
  %147 = call i32 @EA_Move(i32 %144, i64* %145, float %146)
  br label %148

148:                                              ; preds = %141, %138
  br label %149

149:                                              ; preds = %148, %133
  %150 = load i64*, i64** %6, align 8
  %151 = load i64*, i64** getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @result, i32 0, i32 1), align 8
  %152 = call i32 @VectorCopy(i64* %150, i64* %151)
  %153 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %154 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %153, i32 0, i32 0
  %155 = load i32, i32* %154, align 8
  %156 = load i32, i32* @MFL_SWIMMING, align 4
  %157 = and i32 %155, %156
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %159, label %163

159:                                              ; preds = %149
  %160 = load i32, i32* @MOVERESULT_SWIMVIEW, align 4
  %161 = load i32, i32* getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @result, i32 0, i32 0), align 8
  %162 = or i32 %161, %160
  store i32 %162, i32* getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @result, i32 0, i32 0), align 8
  br label %163

163:                                              ; preds = %159, %149
  %164 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %165 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %164, i32 0, i32 3
  store i64 0, i64* %165, align 8
  %166 = bitcast %struct.TYPE_18__* %0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %166, i8* align 8 bitcast (%struct.TYPE_18__* @result to i8*), i64 24, i1 false)
  br label %341

167:                                              ; preds = %105
  %168 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %169 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %168, i32 0, i32 0
  %170 = load i64*, i64** %169, align 8
  %171 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %172 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %171, i32 0, i32 2
  %173 = load i64*, i64** %172, align 8
  %174 = load i64*, i64** %7, align 8
  %175 = call i32 @VectorSubtract(i64* %170, i64* %173, i64* %174)
  %176 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %177 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %176, i32 0, i32 0
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
  store float %187, float* %12, align 4
  %188 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %189 = call i32 @MoverDown(%struct.TYPE_19__* %188)
  %190 = icmp ne i32 %189, 0
  br i1 %190, label %250, label %191

191:                                              ; preds = %185
  %192 = load float, float* %12, align 4
  store float %192, float* %11, align 4
  %193 = load i64*, i64** %7, align 8
  %194 = load i64*, i64** %6, align 8
  %195 = call i32 @VectorCopy(i64* %193, i64* %194)
  %196 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %197 = load i64*, i64** %6, align 8
  %198 = load i32, i32* @qfalse, align 4
  %199 = call i32 @BotCheckBlocked(%struct.TYPE_17__* %196, i64* %197, i32 %198, %struct.TYPE_18__* @result)
  %200 = load float, float* %11, align 4
  %201 = fcmp ogt float %200, 6.000000e+01
  br i1 %201, label %202, label %203

202:                                              ; preds = %191
  store float 6.000000e+01, float* %11, align 4
  br label %203

203:                                              ; preds = %202, %191
  %204 = load float, float* %11, align 4
  %205 = fmul float 6.000000e+00, %204
  %206 = fsub float 3.600000e+02, %205
  %207 = fsub float 3.600000e+02, %206
  store float %207, float* %14, align 4
  %208 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %209 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %208, i32 0, i32 0
  %210 = load i32, i32* %209, align 8
  %211 = load i32, i32* @MFL_SWIMMING, align 4
  %212 = and i32 %210, %211
  %213 = icmp ne i32 %212, 0
  br i1 %213, label %230, label %214

214:                                              ; preds = %203
  %215 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %216 = load i64*, i64** %6, align 8
  %217 = call i32 @BotCheckBarrierJump(%struct.TYPE_17__* %215, i64* %216, i32 50)
  %218 = icmp ne i32 %217, 0
  br i1 %218, label %230, label %219

219:                                              ; preds = %214
  %220 = load float, float* %14, align 4
  %221 = fcmp ogt float %220, 5.000000e+00
  br i1 %221, label %222, label %229

222:                                              ; preds = %219
  %223 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %224 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %223, i32 0, i32 1
  %225 = load i32, i32* %224, align 4
  %226 = load i64*, i64** %6, align 8
  %227 = load float, float* %14, align 4
  %228 = call i32 @EA_Move(i32 %225, i64* %226, float %227)
  br label %229

229:                                              ; preds = %222, %219
  br label %230

230:                                              ; preds = %229, %214, %203
  %231 = load i64*, i64** %6, align 8
  %232 = load i64*, i64** getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @result, i32 0, i32 1), align 8
  %233 = call i32 @VectorCopy(i64* %231, i64* %232)
  %234 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %235 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %234, i32 0, i32 0
  %236 = load i32, i32* %235, align 8
  %237 = load i32, i32* @MFL_SWIMMING, align 4
  %238 = and i32 %236, %237
  %239 = icmp ne i32 %238, 0
  br i1 %239, label %240, label %244

240:                                              ; preds = %230
  %241 = load i32, i32* @MOVERESULT_SWIMVIEW, align 4
  %242 = load i32, i32* getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @result, i32 0, i32 0), align 8
  %243 = or i32 %242, %241
  store i32 %243, i32* getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @result, i32 0, i32 0), align 8
  br label %244

244:                                              ; preds = %240, %230
  %245 = load i32, i32* @RESULTTYPE_ELEVATORUP, align 4
  store i32 %245, i32* getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @result, i32 0, i32 2), align 8
  %246 = load i32, i32* @MOVERESULT_WAITING, align 4
  %247 = load i32, i32* getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @result, i32 0, i32 0), align 8
  %248 = or i32 %247, %246
  store i32 %248, i32* getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @result, i32 0, i32 0), align 8
  %249 = bitcast %struct.TYPE_18__* %0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %249, i8* align 8 bitcast (%struct.TYPE_18__* @result to i8*), i64 24, i1 false)
  br label %341

250:                                              ; preds = %185
  %251 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %252 = load i64*, i64** %10, align 8
  %253 = call i32 @MoverBottomCenter(%struct.TYPE_19__* %251, i64* %252)
  %254 = load i64*, i64** %10, align 8
  %255 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %256 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %255, i32 0, i32 2
  %257 = load i64*, i64** %256, align 8
  %258 = load i64*, i64** %8, align 8
  %259 = call i32 @VectorSubtract(i64* %254, i64* %257, i64* %258)
  %260 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %261 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %260, i32 0, i32 0
  %262 = load i32, i32* %261, align 8
  %263 = load i32, i32* @MFL_SWIMMING, align 4
  %264 = and i32 %262, %263
  %265 = icmp ne i32 %264, 0
  br i1 %265, label %269, label %266

266:                                              ; preds = %250
  %267 = load i64*, i64** %8, align 8
  %268 = getelementptr inbounds i64, i64* %267, i64 2
  store i64 0, i64* %268, align 8
  br label %269

269:                                              ; preds = %266, %250
  %270 = load i64*, i64** %8, align 8
  %271 = call float @VectorNormalize(i64* %270)
  store float %271, float* %13, align 4
  %272 = load float, float* %12, align 4
  %273 = fcmp olt float %272, 2.000000e+01
  br i1 %273, label %283, label %274

274:                                              ; preds = %269
  %275 = load float, float* %13, align 4
  %276 = load float, float* %12, align 4
  %277 = fcmp olt float %275, %276
  br i1 %277, label %283, label %278

278:                                              ; preds = %274
  %279 = load i64*, i64** %7, align 8
  %280 = load i64*, i64** %8, align 8
  %281 = call i64 @DotProduct(i64* %279, i64* %280)
  %282 = icmp slt i64 %281, 0
  br i1 %282, label %283, label %288

283:                                              ; preds = %278, %274, %269
  %284 = load float, float* %13, align 4
  store float %284, float* %11, align 4
  %285 = load i64*, i64** %8, align 8
  %286 = load i64*, i64** %6, align 8
  %287 = call i32 @VectorCopy(i64* %285, i64* %286)
  br label %293

288:                                              ; preds = %278
  %289 = load float, float* %12, align 4
  store float %289, float* %11, align 4
  %290 = load i64*, i64** %7, align 8
  %291 = load i64*, i64** %6, align 8
  %292 = call i32 @VectorCopy(i64* %290, i64* %291)
  br label %293

293:                                              ; preds = %288, %283
  %294 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %295 = load i64*, i64** %6, align 8
  %296 = load i32, i32* @qfalse, align 4
  %297 = call i32 @BotCheckBlocked(%struct.TYPE_17__* %294, i64* %295, i32 %296, %struct.TYPE_18__* @result)
  %298 = load float, float* %11, align 4
  %299 = fcmp ogt float %298, 6.000000e+01
  br i1 %299, label %300, label %301

300:                                              ; preds = %293
  store float 6.000000e+01, float* %11, align 4
  br label %301

301:                                              ; preds = %300, %293
  %302 = load float, float* %11, align 4
  %303 = fmul float 6.000000e+00, %302
  %304 = fsub float 4.000000e+02, %303
  %305 = fsub float 4.000000e+02, %304
  store float %305, float* %14, align 4
  %306 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %307 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %306, i32 0, i32 0
  %308 = load i32, i32* %307, align 8
  %309 = load i32, i32* @MFL_SWIMMING, align 4
  %310 = and i32 %308, %309
  %311 = icmp ne i32 %310, 0
  br i1 %311, label %324, label %312

312:                                              ; preds = %301
  %313 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %314 = load i64*, i64** %6, align 8
  %315 = call i32 @BotCheckBarrierJump(%struct.TYPE_17__* %313, i64* %314, i32 50)
  %316 = icmp ne i32 %315, 0
  br i1 %316, label %324, label %317

317:                                              ; preds = %312
  %318 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %319 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %318, i32 0, i32 1
  %320 = load i32, i32* %319, align 4
  %321 = load i64*, i64** %6, align 8
  %322 = load float, float* %14, align 4
  %323 = call i32 @EA_Move(i32 %320, i64* %321, float %322)
  br label %324

324:                                              ; preds = %317, %312, %301
  %325 = load i64*, i64** %6, align 8
  %326 = load i64*, i64** getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @result, i32 0, i32 1), align 8
  %327 = call i32 @VectorCopy(i64* %325, i64* %326)
  %328 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %329 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %328, i32 0, i32 0
  %330 = load i32, i32* %329, align 8
  %331 = load i32, i32* @MFL_SWIMMING, align 4
  %332 = and i32 %330, %331
  %333 = icmp ne i32 %332, 0
  br i1 %333, label %334, label %338

334:                                              ; preds = %324
  %335 = load i32, i32* @MOVERESULT_SWIMVIEW, align 4
  %336 = load i32, i32* getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @result, i32 0, i32 0), align 8
  %337 = or i32 %336, %335
  store i32 %337, i32* getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @result, i32 0, i32 0), align 8
  br label %338

338:                                              ; preds = %334, %324
  br label %339

339:                                              ; preds = %338, %104
  %340 = bitcast %struct.TYPE_18__* %0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %340, i8* align 8 bitcast (%struct.TYPE_18__* @result to i8*), i64 24, i1 false)
  br label %341

341:                                              ; preds = %339, %244, %163
  ret void
}

declare dso_local i32 @bot_moveresult_t_cleared(%struct.TYPE_18__* byval(%struct.TYPE_18__) align 8) #1

declare dso_local i64 @BotOnMover(i64*, i32, %struct.TYPE_19__*) #1

declare dso_local i64 @fabsf(i64) #1

declare dso_local i32 @VectorSubtract(i64*, i64*, i64*) #1

declare dso_local float @VectorNormalize(i64*) #1

declare dso_local i32 @BotCheckBarrierJump(%struct.TYPE_17__*, i64*, i32) #1

declare dso_local i32 @EA_Move(i32, i64*, float) #1

declare dso_local i32 @VectorCopy(i64*, i64*) #1

declare dso_local i32 @MoverBottomCenter(%struct.TYPE_19__*, i64*) #1

declare dso_local float @VectorLength(i64*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @MoverDown(%struct.TYPE_19__*) #1

declare dso_local i32 @BotCheckBlocked(%struct.TYPE_17__*, i64*, i32, %struct.TYPE_18__*) #1

declare dso_local i64 @DotProduct(i64*, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
