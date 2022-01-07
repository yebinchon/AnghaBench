; ModuleID = '/home/carl/AnghaBench/lab/engine/code/botlib/extr_be_ai_goal.c_BotChooseLTGItem.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/botlib/extr_be_ai_goal.c_BotChooseLTGItem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i64, float, i32, i32 }
%struct.TYPE_13__ = type { i32, i64, float, i32, i64, i32, i32, i32, %struct.TYPE_13__* }
%struct.TYPE_18__ = type { i64 }
%struct.TYPE_17__ = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_16__ = type { i32, i32*, i32, i32 }

@qfalse = common dso_local global i32 0, align 4
@itemconfig = common dso_local global %struct.TYPE_15__* null, align 8
@levelitems = common dso_local global %struct.TYPE_13__* null, align 8
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
@droppedweight = common dso_local global %struct.TYPE_18__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @BotChooseLTGItem(i32 %0, i32 %1, i32* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca float, align 4
  %14 = alloca float, align 4
  %15 = alloca float, align 4
  %16 = alloca %struct.TYPE_14__*, align 8
  %17 = alloca %struct.TYPE_15__*, align 8
  %18 = alloca %struct.TYPE_13__*, align 8
  %19 = alloca %struct.TYPE_13__*, align 8
  %20 = alloca %struct.TYPE_17__, align 4
  %21 = alloca %struct.TYPE_16__*, align 8
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  %22 = load i32, i32* %6, align 4
  %23 = call %struct.TYPE_16__* @BotGoalStateFromHandle(i32 %22)
  store %struct.TYPE_16__* %23, %struct.TYPE_16__** %21, align 8
  %24 = load %struct.TYPE_16__*, %struct.TYPE_16__** %21, align 8
  %25 = icmp ne %struct.TYPE_16__* %24, null
  br i1 %25, label %28, label %26

26:                                               ; preds = %4
  %27 = load i32, i32* @qfalse, align 4
  store i32 %27, i32* %5, align 4
  br label %322

28:                                               ; preds = %4
  %29 = load %struct.TYPE_16__*, %struct.TYPE_16__** %21, align 8
  %30 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 8
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %35, label %33

33:                                               ; preds = %28
  %34 = load i32, i32* @qfalse, align 4
  store i32 %34, i32* %5, align 4
  br label %322

35:                                               ; preds = %28
  %36 = load i32, i32* %7, align 4
  %37 = load %struct.TYPE_16__*, %struct.TYPE_16__** %21, align 8
  %38 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %37, i32 0, i32 3
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @BotReachabilityArea(i32 %36, i32 %39)
  store i32 %40, i32* %10, align 4
  %41 = load i32, i32* %10, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %47

43:                                               ; preds = %35
  %44 = load i32, i32* %10, align 4
  %45 = call i32 @AAS_AreaReachability(i32 %44)
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %51, label %47

47:                                               ; preds = %43, %35
  %48 = load %struct.TYPE_16__*, %struct.TYPE_16__** %21, align 8
  %49 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  store i32 %50, i32* %10, align 4
  br label %51

51:                                               ; preds = %47, %43
  %52 = load i32, i32* %10, align 4
  %53 = load %struct.TYPE_16__*, %struct.TYPE_16__** %21, align 8
  %54 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %53, i32 0, i32 0
  store i32 %52, i32* %54, align 8
  %55 = load i32, i32* %10, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %59, label %57

57:                                               ; preds = %51
  %58 = load i32, i32* @qfalse, align 4
  store i32 %58, i32* %5, align 4
  br label %322

59:                                               ; preds = %51
  %60 = load %struct.TYPE_15__*, %struct.TYPE_15__** @itemconfig, align 8
  store %struct.TYPE_15__* %60, %struct.TYPE_15__** %17, align 8
  %61 = load %struct.TYPE_15__*, %struct.TYPE_15__** @itemconfig, align 8
  %62 = icmp ne %struct.TYPE_15__* %61, null
  br i1 %62, label %65, label %63

63:                                               ; preds = %59
  %64 = load i32, i32* @qfalse, align 4
  store i32 %64, i32* %5, align 4
  br label %322

65:                                               ; preds = %59
  store float 0.000000e+00, float* %14, align 4
  store %struct.TYPE_13__* null, %struct.TYPE_13__** %19, align 8
  %66 = call i32 @Com_Memset(%struct.TYPE_17__* %20, i32 0, i32 32)
  %67 = load %struct.TYPE_13__*, %struct.TYPE_13__** @levelitems, align 8
  store %struct.TYPE_13__* %67, %struct.TYPE_13__** %18, align 8
  br label %68

68:                                               ; preds = %215, %65
  %69 = load %struct.TYPE_13__*, %struct.TYPE_13__** %18, align 8
  %70 = icmp ne %struct.TYPE_13__* %69, null
  br i1 %70, label %71, label %219

71:                                               ; preds = %68
  %72 = load i64, i64* @g_gametype, align 8
  %73 = load i64, i64* @GT_SINGLE_PLAYER, align 8
  %74 = icmp eq i64 %72, %73
  br i1 %74, label %75, label %84

75:                                               ; preds = %71
  %76 = load %struct.TYPE_13__*, %struct.TYPE_13__** %18, align 8
  %77 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = load i32, i32* @IFL_NOTSINGLE, align 4
  %80 = and i32 %78, %79
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %83

82:                                               ; preds = %75
  br label %215

83:                                               ; preds = %75
  br label %107

84:                                               ; preds = %71
  %85 = load i64, i64* @g_gametype, align 8
  %86 = load i64, i64* @GT_TEAM, align 8
  %87 = icmp sge i64 %85, %86
  br i1 %87, label %88, label %97

88:                                               ; preds = %84
  %89 = load %struct.TYPE_13__*, %struct.TYPE_13__** %18, align 8
  %90 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = load i32, i32* @IFL_NOTTEAM, align 4
  %93 = and i32 %91, %92
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %96

95:                                               ; preds = %88
  br label %215

96:                                               ; preds = %88
  br label %106

97:                                               ; preds = %84
  %98 = load %struct.TYPE_13__*, %struct.TYPE_13__** %18, align 8
  %99 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = load i32, i32* @IFL_NOTFREE, align 4
  %102 = and i32 %100, %101
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %105

104:                                              ; preds = %97
  br label %215

105:                                              ; preds = %97
  br label %106

106:                                              ; preds = %105, %96
  br label %107

107:                                              ; preds = %106, %83
  %108 = load %struct.TYPE_13__*, %struct.TYPE_13__** %18, align 8
  %109 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  %111 = load i32, i32* @IFL_NOTBOT, align 4
  %112 = and i32 %110, %111
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %115

114:                                              ; preds = %107
  br label %215

115:                                              ; preds = %107
  %116 = load %struct.TYPE_13__*, %struct.TYPE_13__** %18, align 8
  %117 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %116, i32 0, i32 6
  %118 = load i32, i32* %117, align 4
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %121, label %120

120:                                              ; preds = %115
  br label %215

121:                                              ; preds = %115
  %122 = load %struct.TYPE_13__*, %struct.TYPE_13__** %18, align 8
  %123 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %122, i32 0, i32 5
  %124 = load i32, i32* %123, align 8
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %134, label %126

126:                                              ; preds = %121
  %127 = load %struct.TYPE_13__*, %struct.TYPE_13__** %18, align 8
  %128 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 8
  %130 = load i32, i32* @IFL_ROAM, align 4
  %131 = and i32 %129, %130
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %134, label %133

133:                                              ; preds = %126
  br label %215

134:                                              ; preds = %126, %121
  %135 = load %struct.TYPE_15__*, %struct.TYPE_15__** %17, align 8
  %136 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %135, i32 0, i32 0
  %137 = load %struct.TYPE_14__*, %struct.TYPE_14__** %136, align 8
  %138 = load %struct.TYPE_13__*, %struct.TYPE_13__** %18, align 8
  %139 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %138, i32 0, i32 1
  %140 = load i64, i64* %139, align 8
  %141 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %137, i64 %140
  store %struct.TYPE_14__* %141, %struct.TYPE_14__** %16, align 8
  %142 = load %struct.TYPE_16__*, %struct.TYPE_16__** %21, align 8
  %143 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %142, i32 0, i32 1
  %144 = load i32*, i32** %143, align 8
  %145 = load %struct.TYPE_14__*, %struct.TYPE_14__** %16, align 8
  %146 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %145, i32 0, i32 0
  %147 = load i64, i64* %146, align 8
  %148 = getelementptr inbounds i32, i32* %144, i64 %147
  %149 = load i32, i32* %148, align 4
  store i32 %149, i32* %12, align 4
  %150 = load i32, i32* %12, align 4
  %151 = icmp slt i32 %150, 0
  br i1 %151, label %152, label %153

152:                                              ; preds = %134
  br label %215

153:                                              ; preds = %134
  %154 = load i32*, i32** %8, align 8
  %155 = load %struct.TYPE_16__*, %struct.TYPE_16__** %21, align 8
  %156 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %155, i32 0, i32 2
  %157 = load i32, i32* %156, align 8
  %158 = load i32, i32* %12, align 4
  %159 = call float @FuzzyWeight(i32* %154, i32 %157, i32 %158)
  store float %159, float* %13, align 4
  %160 = load %struct.TYPE_13__*, %struct.TYPE_13__** %18, align 8
  %161 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %160, i32 0, i32 0
  %162 = load i32, i32* %161, align 8
  %163 = load i32, i32* @IFL_ROAM, align 4
  %164 = and i32 %162, %163
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %166, label %172

166:                                              ; preds = %153
  %167 = load %struct.TYPE_13__*, %struct.TYPE_13__** %18, align 8
  %168 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %167, i32 0, i32 2
  %169 = load float, float* %168, align 8
  %170 = load float, float* %13, align 4
  %171 = fmul float %170, %169
  store float %171, float* %13, align 4
  br label %172

172:                                              ; preds = %166, %153
  %173 = load float, float* %13, align 4
  %174 = fcmp ogt float %173, 0.000000e+00
  br i1 %174, label %175, label %214

175:                                              ; preds = %172
  %176 = load i32, i32* %10, align 4
  %177 = load i32, i32* %7, align 4
  %178 = load %struct.TYPE_13__*, %struct.TYPE_13__** %18, align 8
  %179 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %178, i32 0, i32 6
  %180 = load i32, i32* %179, align 4
  %181 = load i32, i32* %9, align 4
  %182 = call i32 @AAS_AreaTravelTimeToGoalArea(i32 %176, i32 %177, i32 %180, i32 %181)
  store i32 %182, i32* %11, align 4
  %183 = load i32, i32* %11, align 4
  %184 = icmp sgt i32 %183, 0
  br i1 %184, label %185, label %213

185:                                              ; preds = %175
  %186 = load i32, i32* %6, align 4
  %187 = load %struct.TYPE_13__*, %struct.TYPE_13__** %18, align 8
  %188 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %187, i32 0, i32 3
  %189 = load i32, i32* %188, align 4
  %190 = call float @BotAvoidGoalTime(i32 %186, i32 %189)
  store float %190, float* %15, align 4
  %191 = load float, float* %15, align 4
  %192 = fpext float %191 to double
  %193 = load i32, i32* %11, align 4
  %194 = sitofp i32 %193 to double
  %195 = fmul double %194, 0x3F826E978D4FDF3B
  %196 = fsub double %192, %195
  %197 = fcmp ogt double %196, 0.000000e+00
  br i1 %197, label %198, label %199

198:                                              ; preds = %185
  br label %215

199:                                              ; preds = %185
  %200 = load i32, i32* %11, align 4
  %201 = sitofp i32 %200 to float
  %202 = load float, float* @TRAVELTIME_SCALE, align 4
  %203 = fmul float %201, %202
  %204 = load float, float* %13, align 4
  %205 = fdiv float %204, %203
  store float %205, float* %13, align 4
  %206 = load float, float* %13, align 4
  %207 = load float, float* %14, align 4
  %208 = fcmp ogt float %206, %207
  br i1 %208, label %209, label %212

209:                                              ; preds = %199
  %210 = load float, float* %13, align 4
  store float %210, float* %14, align 4
  %211 = load %struct.TYPE_13__*, %struct.TYPE_13__** %18, align 8
  store %struct.TYPE_13__* %211, %struct.TYPE_13__** %19, align 8
  br label %212

212:                                              ; preds = %209, %199
  br label %213

213:                                              ; preds = %212, %175
  br label %214

214:                                              ; preds = %213, %172
  br label %215

215:                                              ; preds = %214, %198, %152, %133, %120, %114, %104, %95, %82
  %216 = load %struct.TYPE_13__*, %struct.TYPE_13__** %18, align 8
  %217 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %216, i32 0, i32 8
  %218 = load %struct.TYPE_13__*, %struct.TYPE_13__** %217, align 8
  store %struct.TYPE_13__* %218, %struct.TYPE_13__** %18, align 8
  br label %68

219:                                              ; preds = %68
  %220 = load %struct.TYPE_13__*, %struct.TYPE_13__** %19, align 8
  %221 = icmp ne %struct.TYPE_13__* %220, null
  br i1 %221, label %224, label %222

222:                                              ; preds = %219
  %223 = load i32, i32* @qfalse, align 4
  store i32 %223, i32* %5, align 4
  br label %322

224:                                              ; preds = %219
  %225 = load %struct.TYPE_15__*, %struct.TYPE_15__** %17, align 8
  %226 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %225, i32 0, i32 0
  %227 = load %struct.TYPE_14__*, %struct.TYPE_14__** %226, align 8
  %228 = load %struct.TYPE_13__*, %struct.TYPE_13__** %19, align 8
  %229 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %228, i32 0, i32 1
  %230 = load i64, i64* %229, align 8
  %231 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %227, i64 %230
  store %struct.TYPE_14__* %231, %struct.TYPE_14__** %16, align 8
  %232 = load %struct.TYPE_13__*, %struct.TYPE_13__** %19, align 8
  %233 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %232, i32 0, i32 7
  %234 = load i32, i32* %233, align 8
  %235 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %20, i32 0, i32 7
  %236 = load i32, i32* %235, align 4
  %237 = call i32 @VectorCopy(i32 %234, i32 %236)
  %238 = load %struct.TYPE_14__*, %struct.TYPE_14__** %16, align 8
  %239 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %238, i32 0, i32 3
  %240 = load i32, i32* %239, align 8
  %241 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %20, i32 0, i32 6
  %242 = load i32, i32* %241, align 4
  %243 = call i32 @VectorCopy(i32 %240, i32 %242)
  %244 = load %struct.TYPE_14__*, %struct.TYPE_14__** %16, align 8
  %245 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %244, i32 0, i32 2
  %246 = load i32, i32* %245, align 4
  %247 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %20, i32 0, i32 5
  %248 = load i32, i32* %247, align 4
  %249 = call i32 @VectorCopy(i32 %246, i32 %248)
  %250 = load %struct.TYPE_13__*, %struct.TYPE_13__** %19, align 8
  %251 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %250, i32 0, i32 6
  %252 = load i32, i32* %251, align 4
  %253 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %20, i32 0, i32 4
  store i32 %252, i32* %253, align 4
  %254 = load %struct.TYPE_13__*, %struct.TYPE_13__** %19, align 8
  %255 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %254, i32 0, i32 5
  %256 = load i32, i32* %255, align 8
  %257 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %20, i32 0, i32 3
  store i32 %256, i32* %257, align 4
  %258 = load %struct.TYPE_13__*, %struct.TYPE_13__** %19, align 8
  %259 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %258, i32 0, i32 3
  %260 = load i32, i32* %259, align 4
  %261 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %20, i32 0, i32 2
  store i32 %260, i32* %261, align 4
  %262 = load i32, i32* @GFL_ITEM, align 4
  %263 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %20, i32 0, i32 1
  store i32 %262, i32* %263, align 4
  %264 = load %struct.TYPE_13__*, %struct.TYPE_13__** %19, align 8
  %265 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %264, i32 0, i32 4
  %266 = load i64, i64* %265, align 8
  %267 = icmp ne i64 %266, 0
  br i1 %267, label %268, label %273

268:                                              ; preds = %224
  %269 = load i32, i32* @GFL_DROPPED, align 4
  %270 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %20, i32 0, i32 1
  %271 = load i32, i32* %270, align 4
  %272 = or i32 %271, %269
  store i32 %272, i32* %270, align 4
  br label %273

273:                                              ; preds = %268, %224
  %274 = load %struct.TYPE_13__*, %struct.TYPE_13__** %19, align 8
  %275 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %274, i32 0, i32 0
  %276 = load i32, i32* %275, align 8
  %277 = load i32, i32* @IFL_ROAM, align 4
  %278 = and i32 %276, %277
  %279 = icmp ne i32 %278, 0
  br i1 %279, label %280, label %285

280:                                              ; preds = %273
  %281 = load i32, i32* @GFL_ROAM, align 4
  %282 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %20, i32 0, i32 1
  %283 = load i32, i32* %282, align 4
  %284 = or i32 %283, %281
  store i32 %284, i32* %282, align 4
  br label %285

285:                                              ; preds = %280, %273
  %286 = load %struct.TYPE_13__*, %struct.TYPE_13__** %19, align 8
  %287 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %286, i32 0, i32 1
  %288 = load i64, i64* %287, align 8
  %289 = trunc i64 %288 to i32
  %290 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %20, i32 0, i32 0
  store i32 %289, i32* %290, align 4
  %291 = load %struct.TYPE_13__*, %struct.TYPE_13__** %19, align 8
  %292 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %291, i32 0, i32 4
  %293 = load i64, i64* %292, align 8
  %294 = icmp ne i64 %293, 0
  br i1 %294, label %295, label %297

295:                                              ; preds = %285
  %296 = load float, float* @AVOID_DROPPED_TIME, align 4
  store float %296, float* %15, align 4
  br label %312

297:                                              ; preds = %285
  %298 = load %struct.TYPE_14__*, %struct.TYPE_14__** %16, align 8
  %299 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %298, i32 0, i32 1
  %300 = load float, float* %299, align 8
  store float %300, float* %15, align 4
  %301 = load float, float* %15, align 4
  %302 = fcmp une float %301, 0.000000e+00
  br i1 %302, label %305, label %303

303:                                              ; preds = %297
  %304 = load float, float* @AVOID_DEFAULT_TIME, align 4
  store float %304, float* %15, align 4
  br label %305

305:                                              ; preds = %303, %297
  %306 = load float, float* %15, align 4
  %307 = load float, float* @AVOID_MINIMUM_TIME, align 4
  %308 = fcmp olt float %306, %307
  br i1 %308, label %309, label %311

309:                                              ; preds = %305
  %310 = load float, float* @AVOID_MINIMUM_TIME, align 4
  store float %310, float* %15, align 4
  br label %311

311:                                              ; preds = %309, %305
  br label %312

312:                                              ; preds = %311, %295
  %313 = load %struct.TYPE_16__*, %struct.TYPE_16__** %21, align 8
  %314 = load %struct.TYPE_13__*, %struct.TYPE_13__** %19, align 8
  %315 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %314, i32 0, i32 3
  %316 = load i32, i32* %315, align 4
  %317 = load float, float* %15, align 4
  %318 = call i32 @BotAddToAvoidGoals(%struct.TYPE_16__* %313, i32 %316, float %317)
  %319 = load i32, i32* %6, align 4
  %320 = call i32 @BotPushGoal(i32 %319, %struct.TYPE_17__* %20)
  %321 = load i32, i32* @qtrue, align 4
  store i32 %321, i32* %5, align 4
  br label %322

322:                                              ; preds = %312, %222, %63, %57, %33, %26
  %323 = load i32, i32* %5, align 4
  ret i32 %323
}

declare dso_local %struct.TYPE_16__* @BotGoalStateFromHandle(i32) #1

declare dso_local i32 @BotReachabilityArea(i32, i32) #1

declare dso_local i32 @AAS_AreaReachability(i32) #1

declare dso_local i32 @Com_Memset(%struct.TYPE_17__*, i32, i32) #1

declare dso_local float @FuzzyWeight(i32*, i32, i32) #1

declare dso_local i32 @AAS_AreaTravelTimeToGoalArea(i32, i32, i32, i32) #1

declare dso_local float @BotAvoidGoalTime(i32, i32) #1

declare dso_local i32 @VectorCopy(i32, i32) #1

declare dso_local i32 @BotAddToAvoidGoals(%struct.TYPE_16__*, i32, float) #1

declare dso_local i32 @BotPushGoal(i32, %struct.TYPE_17__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
