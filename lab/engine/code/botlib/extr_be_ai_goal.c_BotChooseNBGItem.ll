; ModuleID = '/home/carl/AnghaBench/lab/engine/code/botlib/extr_be_ai_goal.c_BotChooseNBGItem.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/botlib/extr_be_ai_goal.c_BotChooseNBGItem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { %struct.TYPE_15__* }
%struct.TYPE_15__ = type { i64, float, i32, i32 }
%struct.TYPE_14__ = type { i32, i32, i64, float, i32, i64, i32, i32, %struct.TYPE_14__* }
%struct.TYPE_19__ = type { i64 }
%struct.TYPE_18__ = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_17__ = type { i32, i32*, i32, i32 }

@qfalse = common dso_local global i32 0, align 4
@itemconfig = common dso_local global %struct.TYPE_16__* null, align 8
@levelitems = common dso_local global %struct.TYPE_14__* null, align 8
@g_gametype = common dso_local global i64 0, align 8
@GT_SINGLE_PLAYER = common dso_local global i64 0, align 8
@IFL_NOTSINGLE = common dso_local global i32 0, align 4
@GT_TEAM = common dso_local global i64 0, align 8
@IFL_NOTTEAM = common dso_local global i32 0, align 4
@IFL_NOTFREE = common dso_local global i32 0, align 4
@IFL_NOTBOT = common dso_local global i32 0, align 4
@IFL_ROAM = common dso_local global i32 0, align 4
@TRAVELTIME_SCALE = common dso_local global float 0.000000e+00, align 4
@GFL_ITEM = common dso_local global i32 0, align 4
@GFL_DROPPED = common dso_local global i32 0, align 4
@GFL_ROAM = common dso_local global i32 0, align 4
@AVOID_DROPPED_TIME = common dso_local global float 0.000000e+00, align 4
@AVOID_DEFAULT_TIME = common dso_local global float 0.000000e+00, align 4
@AVOID_MINIMUM_TIME = common dso_local global float 0.000000e+00, align 4
@qtrue = common dso_local global i32 0, align 4
@droppedweight = common dso_local global %struct.TYPE_19__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @BotChooseNBGItem(i32 %0, i32 %1, i32* %2, i32 %3, %struct.TYPE_18__* %4, float %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_18__*, align 8
  %13 = alloca float, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca float, align 4
  %19 = alloca float, align 4
  %20 = alloca float, align 4
  %21 = alloca %struct.TYPE_15__*, align 8
  %22 = alloca %struct.TYPE_16__*, align 8
  %23 = alloca %struct.TYPE_14__*, align 8
  %24 = alloca %struct.TYPE_14__*, align 8
  %25 = alloca %struct.TYPE_18__, align 4
  %26 = alloca %struct.TYPE_17__*, align 8
  store i32 %0, i32* %8, align 4
  store i32 %1, i32* %9, align 4
  store i32* %2, i32** %10, align 8
  store i32 %3, i32* %11, align 4
  store %struct.TYPE_18__* %4, %struct.TYPE_18__** %12, align 8
  store float %5, float* %13, align 4
  %27 = load i32, i32* %8, align 4
  %28 = call %struct.TYPE_17__* @BotGoalStateFromHandle(i32 %27)
  store %struct.TYPE_17__* %28, %struct.TYPE_17__** %26, align 8
  %29 = load %struct.TYPE_17__*, %struct.TYPE_17__** %26, align 8
  %30 = icmp ne %struct.TYPE_17__* %29, null
  br i1 %30, label %33, label %31

31:                                               ; preds = %6
  %32 = load i32, i32* @qfalse, align 4
  store i32 %32, i32* %7, align 4
  br label %369

33:                                               ; preds = %6
  %34 = load %struct.TYPE_17__*, %struct.TYPE_17__** %26, align 8
  %35 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 8
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %40, label %38

38:                                               ; preds = %33
  %39 = load i32, i32* @qfalse, align 4
  store i32 %39, i32* %7, align 4
  br label %369

40:                                               ; preds = %33
  %41 = load i32, i32* %9, align 4
  %42 = load %struct.TYPE_17__*, %struct.TYPE_17__** %26, align 8
  %43 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %42, i32 0, i32 3
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @BotReachabilityArea(i32 %41, i32 %44)
  store i32 %45, i32* %14, align 4
  %46 = load i32, i32* %14, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %52

48:                                               ; preds = %40
  %49 = load i32, i32* %14, align 4
  %50 = call i32 @AAS_AreaReachability(i32 %49)
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %56, label %52

52:                                               ; preds = %48, %40
  %53 = load %struct.TYPE_17__*, %struct.TYPE_17__** %26, align 8
  %54 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  store i32 %55, i32* %14, align 4
  br label %56

56:                                               ; preds = %52, %48
  %57 = load i32, i32* %14, align 4
  %58 = load %struct.TYPE_17__*, %struct.TYPE_17__** %26, align 8
  %59 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %58, i32 0, i32 0
  store i32 %57, i32* %59, align 8
  %60 = load i32, i32* %14, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %64, label %62

62:                                               ; preds = %56
  %63 = load i32, i32* @qfalse, align 4
  store i32 %63, i32* %7, align 4
  br label %369

64:                                               ; preds = %56
  %65 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %66 = icmp ne %struct.TYPE_18__* %65, null
  br i1 %66, label %67, label %75

67:                                               ; preds = %64
  %68 = load i32, i32* %14, align 4
  %69 = load i32, i32* %9, align 4
  %70 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %71 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = load i32, i32* %11, align 4
  %74 = call i32 @AAS_AreaTravelTimeToGoalArea(i32 %68, i32 %69, i32 %72, i32 %73)
  store i32 %74, i32* %17, align 4
  br label %76

75:                                               ; preds = %64
  store i32 99999, i32* %17, align 4
  br label %76

76:                                               ; preds = %75, %67
  %77 = load %struct.TYPE_16__*, %struct.TYPE_16__** @itemconfig, align 8
  store %struct.TYPE_16__* %77, %struct.TYPE_16__** %22, align 8
  %78 = load %struct.TYPE_16__*, %struct.TYPE_16__** @itemconfig, align 8
  %79 = icmp ne %struct.TYPE_16__* %78, null
  br i1 %79, label %82, label %80

80:                                               ; preds = %76
  %81 = load i32, i32* @qfalse, align 4
  store i32 %81, i32* %7, align 4
  br label %369

82:                                               ; preds = %76
  store float 0.000000e+00, float* %19, align 4
  store %struct.TYPE_14__* null, %struct.TYPE_14__** %24, align 8
  %83 = call i32 @Com_Memset(%struct.TYPE_18__* %25, i32 0, i32 32)
  %84 = load %struct.TYPE_14__*, %struct.TYPE_14__** @levelitems, align 8
  store %struct.TYPE_14__* %84, %struct.TYPE_14__** %23, align 8
  br label %85

85:                                               ; preds = %262, %82
  %86 = load %struct.TYPE_14__*, %struct.TYPE_14__** %23, align 8
  %87 = icmp ne %struct.TYPE_14__* %86, null
  br i1 %87, label %88, label %266

88:                                               ; preds = %85
  %89 = load i64, i64* @g_gametype, align 8
  %90 = load i64, i64* @GT_SINGLE_PLAYER, align 8
  %91 = icmp eq i64 %89, %90
  br i1 %91, label %92, label %101

92:                                               ; preds = %88
  %93 = load %struct.TYPE_14__*, %struct.TYPE_14__** %23, align 8
  %94 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = load i32, i32* @IFL_NOTSINGLE, align 4
  %97 = and i32 %95, %96
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %100

99:                                               ; preds = %92
  br label %262

100:                                              ; preds = %92
  br label %124

101:                                              ; preds = %88
  %102 = load i64, i64* @g_gametype, align 8
  %103 = load i64, i64* @GT_TEAM, align 8
  %104 = icmp sge i64 %102, %103
  br i1 %104, label %105, label %114

105:                                              ; preds = %101
  %106 = load %struct.TYPE_14__*, %struct.TYPE_14__** %23, align 8
  %107 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  %109 = load i32, i32* @IFL_NOTTEAM, align 4
  %110 = and i32 %108, %109
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %113

112:                                              ; preds = %105
  br label %262

113:                                              ; preds = %105
  br label %123

114:                                              ; preds = %101
  %115 = load %struct.TYPE_14__*, %struct.TYPE_14__** %23, align 8
  %116 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 8
  %118 = load i32, i32* @IFL_NOTFREE, align 4
  %119 = and i32 %117, %118
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %122

121:                                              ; preds = %114
  br label %262

122:                                              ; preds = %114
  br label %123

123:                                              ; preds = %122, %113
  br label %124

124:                                              ; preds = %123, %100
  %125 = load %struct.TYPE_14__*, %struct.TYPE_14__** %23, align 8
  %126 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 8
  %128 = load i32, i32* @IFL_NOTBOT, align 4
  %129 = and i32 %127, %128
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %132

131:                                              ; preds = %124
  br label %262

132:                                              ; preds = %124
  %133 = load %struct.TYPE_14__*, %struct.TYPE_14__** %23, align 8
  %134 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %133, i32 0, i32 1
  %135 = load i32, i32* %134, align 4
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %138, label %137

137:                                              ; preds = %132
  br label %262

138:                                              ; preds = %132
  %139 = load %struct.TYPE_14__*, %struct.TYPE_14__** %23, align 8
  %140 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %139, i32 0, i32 6
  %141 = load i32, i32* %140, align 8
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %151, label %143

143:                                              ; preds = %138
  %144 = load %struct.TYPE_14__*, %struct.TYPE_14__** %23, align 8
  %145 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 8
  %147 = load i32, i32* @IFL_ROAM, align 4
  %148 = and i32 %146, %147
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %151, label %150

150:                                              ; preds = %143
  br label %262

151:                                              ; preds = %143, %138
  %152 = load %struct.TYPE_16__*, %struct.TYPE_16__** %22, align 8
  %153 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %152, i32 0, i32 0
  %154 = load %struct.TYPE_15__*, %struct.TYPE_15__** %153, align 8
  %155 = load %struct.TYPE_14__*, %struct.TYPE_14__** %23, align 8
  %156 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %155, i32 0, i32 2
  %157 = load i64, i64* %156, align 8
  %158 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %154, i64 %157
  store %struct.TYPE_15__* %158, %struct.TYPE_15__** %21, align 8
  %159 = load %struct.TYPE_17__*, %struct.TYPE_17__** %26, align 8
  %160 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %159, i32 0, i32 1
  %161 = load i32*, i32** %160, align 8
  %162 = load %struct.TYPE_15__*, %struct.TYPE_15__** %21, align 8
  %163 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %162, i32 0, i32 0
  %164 = load i64, i64* %163, align 8
  %165 = getelementptr inbounds i32, i32* %161, i64 %164
  %166 = load i32, i32* %165, align 4
  store i32 %166, i32* %16, align 4
  %167 = load i32, i32* %16, align 4
  %168 = icmp slt i32 %167, 0
  br i1 %168, label %169, label %170

169:                                              ; preds = %151
  br label %262

170:                                              ; preds = %151
  %171 = load i32*, i32** %10, align 8
  %172 = load %struct.TYPE_17__*, %struct.TYPE_17__** %26, align 8
  %173 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %172, i32 0, i32 2
  %174 = load i32, i32* %173, align 8
  %175 = load i32, i32* %16, align 4
  %176 = call float @FuzzyWeight(i32* %171, i32 %174, i32 %175)
  store float %176, float* %18, align 4
  %177 = load %struct.TYPE_14__*, %struct.TYPE_14__** %23, align 8
  %178 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %177, i32 0, i32 0
  %179 = load i32, i32* %178, align 8
  %180 = load i32, i32* @IFL_ROAM, align 4
  %181 = and i32 %179, %180
  %182 = icmp ne i32 %181, 0
  br i1 %182, label %183, label %189

183:                                              ; preds = %170
  %184 = load %struct.TYPE_14__*, %struct.TYPE_14__** %23, align 8
  %185 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %184, i32 0, i32 3
  %186 = load float, float* %185, align 8
  %187 = load float, float* %18, align 4
  %188 = fmul float %187, %186
  store float %188, float* %18, align 4
  br label %189

189:                                              ; preds = %183, %170
  %190 = load float, float* %18, align 4
  %191 = fcmp ogt float %190, 0.000000e+00
  br i1 %191, label %192, label %261

192:                                              ; preds = %189
  %193 = load i32, i32* %14, align 4
  %194 = load i32, i32* %9, align 4
  %195 = load %struct.TYPE_14__*, %struct.TYPE_14__** %23, align 8
  %196 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %195, i32 0, i32 1
  %197 = load i32, i32* %196, align 4
  %198 = load i32, i32* %11, align 4
  %199 = call i32 @AAS_AreaTravelTimeToGoalArea(i32 %193, i32 %194, i32 %197, i32 %198)
  store i32 %199, i32* %15, align 4
  %200 = load i32, i32* %15, align 4
  %201 = icmp sgt i32 %200, 0
  br i1 %201, label %202, label %260

202:                                              ; preds = %192
  %203 = load i32, i32* %15, align 4
  %204 = sitofp i32 %203 to float
  %205 = load float, float* %13, align 4
  %206 = fcmp olt float %204, %205
  br i1 %206, label %207, label %260

207:                                              ; preds = %202
  %208 = load i32, i32* %8, align 4
  %209 = load %struct.TYPE_14__*, %struct.TYPE_14__** %23, align 8
  %210 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %209, i32 0, i32 4
  %211 = load i32, i32* %210, align 4
  %212 = call float @BotAvoidGoalTime(i32 %208, i32 %211)
  store float %212, float* %20, align 4
  %213 = load float, float* %20, align 4
  %214 = fpext float %213 to double
  %215 = load i32, i32* %15, align 4
  %216 = sitofp i32 %215 to double
  %217 = fmul double %216, 0x3F826E978D4FDF3B
  %218 = fsub double %214, %217
  %219 = fcmp ogt double %218, 0.000000e+00
  br i1 %219, label %220, label %221

220:                                              ; preds = %207
  br label %262

221:                                              ; preds = %207
  %222 = load i32, i32* %15, align 4
  %223 = sitofp i32 %222 to float
  %224 = load float, float* @TRAVELTIME_SCALE, align 4
  %225 = fmul float %223, %224
  %226 = load float, float* %18, align 4
  %227 = fdiv float %226, %225
  store float %227, float* %18, align 4
  %228 = load float, float* %18, align 4
  %229 = load float, float* %19, align 4
  %230 = fcmp ogt float %228, %229
  br i1 %230, label %231, label %259

231:                                              ; preds = %221
  store i32 0, i32* %15, align 4
  %232 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %233 = icmp ne %struct.TYPE_18__* %232, null
  br i1 %233, label %234, label %251

234:                                              ; preds = %231
  %235 = load %struct.TYPE_14__*, %struct.TYPE_14__** %23, align 8
  %236 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %235, i32 0, i32 5
  %237 = load i64, i64* %236, align 8
  %238 = icmp ne i64 %237, 0
  br i1 %238, label %251, label %239

239:                                              ; preds = %234
  %240 = load %struct.TYPE_14__*, %struct.TYPE_14__** %23, align 8
  %241 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %240, i32 0, i32 1
  %242 = load i32, i32* %241, align 4
  %243 = load %struct.TYPE_14__*, %struct.TYPE_14__** %23, align 8
  %244 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %243, i32 0, i32 7
  %245 = load i32, i32* %244, align 4
  %246 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %247 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %246, i32 0, i32 0
  %248 = load i32, i32* %247, align 4
  %249 = load i32, i32* %11, align 4
  %250 = call i32 @AAS_AreaTravelTimeToGoalArea(i32 %242, i32 %245, i32 %248, i32 %249)
  store i32 %250, i32* %15, align 4
  br label %251

251:                                              ; preds = %239, %234, %231
  %252 = load i32, i32* %15, align 4
  %253 = load i32, i32* %17, align 4
  %254 = icmp sle i32 %252, %253
  br i1 %254, label %255, label %258

255:                                              ; preds = %251
  %256 = load float, float* %18, align 4
  store float %256, float* %19, align 4
  %257 = load %struct.TYPE_14__*, %struct.TYPE_14__** %23, align 8
  store %struct.TYPE_14__* %257, %struct.TYPE_14__** %24, align 8
  br label %258

258:                                              ; preds = %255, %251
  br label %259

259:                                              ; preds = %258, %221
  br label %260

260:                                              ; preds = %259, %202, %192
  br label %261

261:                                              ; preds = %260, %189
  br label %262

262:                                              ; preds = %261, %220, %169, %150, %137, %131, %121, %112, %99
  %263 = load %struct.TYPE_14__*, %struct.TYPE_14__** %23, align 8
  %264 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %263, i32 0, i32 8
  %265 = load %struct.TYPE_14__*, %struct.TYPE_14__** %264, align 8
  store %struct.TYPE_14__* %265, %struct.TYPE_14__** %23, align 8
  br label %85

266:                                              ; preds = %85
  %267 = load %struct.TYPE_14__*, %struct.TYPE_14__** %24, align 8
  %268 = icmp ne %struct.TYPE_14__* %267, null
  br i1 %268, label %271, label %269

269:                                              ; preds = %266
  %270 = load i32, i32* @qfalse, align 4
  store i32 %270, i32* %7, align 4
  br label %369

271:                                              ; preds = %266
  %272 = load %struct.TYPE_16__*, %struct.TYPE_16__** %22, align 8
  %273 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %272, i32 0, i32 0
  %274 = load %struct.TYPE_15__*, %struct.TYPE_15__** %273, align 8
  %275 = load %struct.TYPE_14__*, %struct.TYPE_14__** %24, align 8
  %276 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %275, i32 0, i32 2
  %277 = load i64, i64* %276, align 8
  %278 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %274, i64 %277
  store %struct.TYPE_15__* %278, %struct.TYPE_15__** %21, align 8
  %279 = load %struct.TYPE_14__*, %struct.TYPE_14__** %24, align 8
  %280 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %279, i32 0, i32 7
  %281 = load i32, i32* %280, align 4
  %282 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %25, i32 0, i32 7
  %283 = load i32, i32* %282, align 4
  %284 = call i32 @VectorCopy(i32 %281, i32 %283)
  %285 = load %struct.TYPE_15__*, %struct.TYPE_15__** %21, align 8
  %286 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %285, i32 0, i32 3
  %287 = load i32, i32* %286, align 8
  %288 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %25, i32 0, i32 6
  %289 = load i32, i32* %288, align 4
  %290 = call i32 @VectorCopy(i32 %287, i32 %289)
  %291 = load %struct.TYPE_15__*, %struct.TYPE_15__** %21, align 8
  %292 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %291, i32 0, i32 2
  %293 = load i32, i32* %292, align 4
  %294 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %25, i32 0, i32 5
  %295 = load i32, i32* %294, align 4
  %296 = call i32 @VectorCopy(i32 %293, i32 %295)
  %297 = load %struct.TYPE_14__*, %struct.TYPE_14__** %24, align 8
  %298 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %297, i32 0, i32 1
  %299 = load i32, i32* %298, align 4
  %300 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %25, i32 0, i32 0
  store i32 %299, i32* %300, align 4
  %301 = load %struct.TYPE_14__*, %struct.TYPE_14__** %24, align 8
  %302 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %301, i32 0, i32 6
  %303 = load i32, i32* %302, align 8
  %304 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %25, i32 0, i32 4
  store i32 %303, i32* %304, align 4
  %305 = load %struct.TYPE_14__*, %struct.TYPE_14__** %24, align 8
  %306 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %305, i32 0, i32 4
  %307 = load i32, i32* %306, align 4
  %308 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %25, i32 0, i32 3
  store i32 %307, i32* %308, align 4
  %309 = load i32, i32* @GFL_ITEM, align 4
  %310 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %25, i32 0, i32 2
  store i32 %309, i32* %310, align 4
  %311 = load %struct.TYPE_14__*, %struct.TYPE_14__** %24, align 8
  %312 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %311, i32 0, i32 5
  %313 = load i64, i64* %312, align 8
  %314 = icmp ne i64 %313, 0
  br i1 %314, label %315, label %320

315:                                              ; preds = %271
  %316 = load i32, i32* @GFL_DROPPED, align 4
  %317 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %25, i32 0, i32 2
  %318 = load i32, i32* %317, align 4
  %319 = or i32 %318, %316
  store i32 %319, i32* %317, align 4
  br label %320

320:                                              ; preds = %315, %271
  %321 = load %struct.TYPE_14__*, %struct.TYPE_14__** %24, align 8
  %322 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %321, i32 0, i32 0
  %323 = load i32, i32* %322, align 8
  %324 = load i32, i32* @IFL_ROAM, align 4
  %325 = and i32 %323, %324
  %326 = icmp ne i32 %325, 0
  br i1 %326, label %327, label %332

327:                                              ; preds = %320
  %328 = load i32, i32* @GFL_ROAM, align 4
  %329 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %25, i32 0, i32 2
  %330 = load i32, i32* %329, align 4
  %331 = or i32 %330, %328
  store i32 %331, i32* %329, align 4
  br label %332

332:                                              ; preds = %327, %320
  %333 = load %struct.TYPE_14__*, %struct.TYPE_14__** %24, align 8
  %334 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %333, i32 0, i32 2
  %335 = load i64, i64* %334, align 8
  %336 = trunc i64 %335 to i32
  %337 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %25, i32 0, i32 1
  store i32 %336, i32* %337, align 4
  %338 = load %struct.TYPE_14__*, %struct.TYPE_14__** %24, align 8
  %339 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %338, i32 0, i32 5
  %340 = load i64, i64* %339, align 8
  %341 = icmp ne i64 %340, 0
  br i1 %341, label %342, label %344

342:                                              ; preds = %332
  %343 = load float, float* @AVOID_DROPPED_TIME, align 4
  store float %343, float* %20, align 4
  br label %359

344:                                              ; preds = %332
  %345 = load %struct.TYPE_15__*, %struct.TYPE_15__** %21, align 8
  %346 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %345, i32 0, i32 1
  %347 = load float, float* %346, align 8
  store float %347, float* %20, align 4
  %348 = load float, float* %20, align 4
  %349 = fcmp une float %348, 0.000000e+00
  br i1 %349, label %352, label %350

350:                                              ; preds = %344
  %351 = load float, float* @AVOID_DEFAULT_TIME, align 4
  store float %351, float* %20, align 4
  br label %352

352:                                              ; preds = %350, %344
  %353 = load float, float* %20, align 4
  %354 = load float, float* @AVOID_MINIMUM_TIME, align 4
  %355 = fcmp olt float %353, %354
  br i1 %355, label %356, label %358

356:                                              ; preds = %352
  %357 = load float, float* @AVOID_MINIMUM_TIME, align 4
  store float %357, float* %20, align 4
  br label %358

358:                                              ; preds = %356, %352
  br label %359

359:                                              ; preds = %358, %342
  %360 = load %struct.TYPE_17__*, %struct.TYPE_17__** %26, align 8
  %361 = load %struct.TYPE_14__*, %struct.TYPE_14__** %24, align 8
  %362 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %361, i32 0, i32 4
  %363 = load i32, i32* %362, align 4
  %364 = load float, float* %20, align 4
  %365 = call i32 @BotAddToAvoidGoals(%struct.TYPE_17__* %360, i32 %363, float %364)
  %366 = load i32, i32* %8, align 4
  %367 = call i32 @BotPushGoal(i32 %366, %struct.TYPE_18__* %25)
  %368 = load i32, i32* @qtrue, align 4
  store i32 %368, i32* %7, align 4
  br label %369

369:                                              ; preds = %359, %269, %80, %62, %38, %31
  %370 = load i32, i32* %7, align 4
  ret i32 %370
}

declare dso_local %struct.TYPE_17__* @BotGoalStateFromHandle(i32) #1

declare dso_local i32 @BotReachabilityArea(i32, i32) #1

declare dso_local i32 @AAS_AreaReachability(i32) #1

declare dso_local i32 @AAS_AreaTravelTimeToGoalArea(i32, i32, i32, i32) #1

declare dso_local i32 @Com_Memset(%struct.TYPE_18__*, i32, i32) #1

declare dso_local float @FuzzyWeight(i32*, i32, i32) #1

declare dso_local float @BotAvoidGoalTime(i32, i32) #1

declare dso_local i32 @VectorCopy(i32, i32) #1

declare dso_local i32 @BotAddToAvoidGoals(%struct.TYPE_17__*, i32, float) #1

declare dso_local i32 @BotPushGoal(i32, %struct.TYPE_18__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
