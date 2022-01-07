; ModuleID = '/home/carl/AnghaBench/lab/engine/code/game/extr_ai_main.c_BotInputToUserCommand.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/game/extr_ai_main.c_BotInputToUserCommand.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, float*, i32*, i32, i32 }
%struct.TYPE_6__ = type { i32, i32*, float, float, float, i32, i32 }

@ACTION_DELAYEDJUMP = common dso_local global i32 0, align 4
@ACTION_JUMP = common dso_local global i32 0, align 4
@ACTION_RESPAWN = common dso_local global i32 0, align 4
@BUTTON_ATTACK = common dso_local global i32 0, align 4
@ACTION_ATTACK = common dso_local global i32 0, align 4
@ACTION_TALK = common dso_local global i32 0, align 4
@BUTTON_TALK = common dso_local global i32 0, align 4
@ACTION_GESTURE = common dso_local global i32 0, align 4
@BUTTON_GESTURE = common dso_local global i32 0, align 4
@ACTION_USE = common dso_local global i32 0, align 4
@BUTTON_USE_HOLDABLE = common dso_local global i32 0, align 4
@ACTION_WALK = common dso_local global i32 0, align 4
@BUTTON_WALKING = common dso_local global i32 0, align 4
@ACTION_AFFIRMATIVE = common dso_local global i32 0, align 4
@BUTTON_AFFIRMATIVE = common dso_local global i32 0, align 4
@ACTION_NEGATIVE = common dso_local global i32 0, align 4
@BUTTON_NEGATIVE = common dso_local global i32 0, align 4
@ACTION_GETFLAG = common dso_local global i32 0, align 4
@BUTTON_GETFLAG = common dso_local global i32 0, align 4
@ACTION_GUARDBASE = common dso_local global i32 0, align 4
@BUTTON_GUARDBASE = common dso_local global i32 0, align 4
@ACTION_PATROL = common dso_local global i32 0, align 4
@BUTTON_PATROL = common dso_local global i32 0, align 4
@ACTION_FOLLOWME = common dso_local global i32 0, align 4
@BUTTON_FOLLOWME = common dso_local global i32 0, align 4
@PITCH = common dso_local global i64 0, align 8
@YAW = common dso_local global i64 0, align 8
@ROLL = common dso_local global i64 0, align 8
@ACTION_MOVEFORWARD = common dso_local global i32 0, align 4
@ACTION_MOVEBACK = common dso_local global i32 0, align 4
@ACTION_MOVELEFT = common dso_local global i32 0, align 4
@ACTION_MOVERIGHT = common dso_local global i32 0, align 4
@ACTION_CROUCH = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @BotInputToUserCommand(%struct.TYPE_7__* %0, %struct.TYPE_6__* %1, i32* %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca %struct.TYPE_6__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca float*, align 8
  %10 = alloca float*, align 8
  %11 = alloca float*, align 8
  %12 = alloca i16, align 2
  %13 = alloca i32, align 4
  %14 = alloca float, align 4
  %15 = alloca float, align 4
  %16 = alloca float, align 4
  %17 = alloca float, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %5, align 8
  store %struct.TYPE_6__* %1, %struct.TYPE_6__** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32 %3, i32* %8, align 4
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %19 = call i32 @memset(%struct.TYPE_6__* %18, i32 0, i32 40)
  %20 = load i32, i32* %8, align 4
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 0
  store i32 %20, i32* %22, align 8
  %23 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* @ACTION_DELAYEDJUMP, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %41

29:                                               ; preds = %4
  %30 = load i32, i32* @ACTION_JUMP, align 4
  %31 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = or i32 %33, %30
  store i32 %34, i32* %32, align 8
  %35 = load i32, i32* @ACTION_DELAYEDJUMP, align 4
  %36 = xor i32 %35, -1
  %37 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = and i32 %39, %36
  store i32 %40, i32* %38, align 8
  br label %41

41:                                               ; preds = %29, %4
  %42 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = load i32, i32* @ACTION_RESPAWN, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %52

48:                                               ; preds = %41
  %49 = load i32, i32* @BUTTON_ATTACK, align 4
  %50 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 6
  store i32 %49, i32* %51, align 8
  br label %52

52:                                               ; preds = %48, %41
  %53 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %54 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = load i32, i32* @ACTION_ATTACK, align 4
  %57 = and i32 %55, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %65

59:                                               ; preds = %52
  %60 = load i32, i32* @BUTTON_ATTACK, align 4
  %61 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 6
  %63 = load i32, i32* %62, align 8
  %64 = or i32 %63, %60
  store i32 %64, i32* %62, align 8
  br label %65

65:                                               ; preds = %59, %52
  %66 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %67 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = load i32, i32* @ACTION_TALK, align 4
  %70 = and i32 %68, %69
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %78

72:                                               ; preds = %65
  %73 = load i32, i32* @BUTTON_TALK, align 4
  %74 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %75 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %74, i32 0, i32 6
  %76 = load i32, i32* %75, align 8
  %77 = or i32 %76, %73
  store i32 %77, i32* %75, align 8
  br label %78

78:                                               ; preds = %72, %65
  %79 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %80 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = load i32, i32* @ACTION_GESTURE, align 4
  %83 = and i32 %81, %82
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %91

85:                                               ; preds = %78
  %86 = load i32, i32* @BUTTON_GESTURE, align 4
  %87 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %88 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %87, i32 0, i32 6
  %89 = load i32, i32* %88, align 8
  %90 = or i32 %89, %86
  store i32 %90, i32* %88, align 8
  br label %91

91:                                               ; preds = %85, %78
  %92 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %93 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = load i32, i32* @ACTION_USE, align 4
  %96 = and i32 %94, %95
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %104

98:                                               ; preds = %91
  %99 = load i32, i32* @BUTTON_USE_HOLDABLE, align 4
  %100 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %101 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %100, i32 0, i32 6
  %102 = load i32, i32* %101, align 8
  %103 = or i32 %102, %99
  store i32 %103, i32* %101, align 8
  br label %104

104:                                              ; preds = %98, %91
  %105 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %106 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 8
  %108 = load i32, i32* @ACTION_WALK, align 4
  %109 = and i32 %107, %108
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %117

111:                                              ; preds = %104
  %112 = load i32, i32* @BUTTON_WALKING, align 4
  %113 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %114 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %113, i32 0, i32 6
  %115 = load i32, i32* %114, align 8
  %116 = or i32 %115, %112
  store i32 %116, i32* %114, align 8
  br label %117

117:                                              ; preds = %111, %104
  %118 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %119 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 8
  %121 = load i32, i32* @ACTION_AFFIRMATIVE, align 4
  %122 = and i32 %120, %121
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %130

124:                                              ; preds = %117
  %125 = load i32, i32* @BUTTON_AFFIRMATIVE, align 4
  %126 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %127 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %126, i32 0, i32 6
  %128 = load i32, i32* %127, align 8
  %129 = or i32 %128, %125
  store i32 %129, i32* %127, align 8
  br label %130

130:                                              ; preds = %124, %117
  %131 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %132 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 8
  %134 = load i32, i32* @ACTION_NEGATIVE, align 4
  %135 = and i32 %133, %134
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %143

137:                                              ; preds = %130
  %138 = load i32, i32* @BUTTON_NEGATIVE, align 4
  %139 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %140 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %139, i32 0, i32 6
  %141 = load i32, i32* %140, align 8
  %142 = or i32 %141, %138
  store i32 %142, i32* %140, align 8
  br label %143

143:                                              ; preds = %137, %130
  %144 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %145 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 8
  %147 = load i32, i32* @ACTION_GETFLAG, align 4
  %148 = and i32 %146, %147
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %150, label %156

150:                                              ; preds = %143
  %151 = load i32, i32* @BUTTON_GETFLAG, align 4
  %152 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %153 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %152, i32 0, i32 6
  %154 = load i32, i32* %153, align 8
  %155 = or i32 %154, %151
  store i32 %155, i32* %153, align 8
  br label %156

156:                                              ; preds = %150, %143
  %157 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %158 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %157, i32 0, i32 0
  %159 = load i32, i32* %158, align 8
  %160 = load i32, i32* @ACTION_GUARDBASE, align 4
  %161 = and i32 %159, %160
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %163, label %169

163:                                              ; preds = %156
  %164 = load i32, i32* @BUTTON_GUARDBASE, align 4
  %165 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %166 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %165, i32 0, i32 6
  %167 = load i32, i32* %166, align 8
  %168 = or i32 %167, %164
  store i32 %168, i32* %166, align 8
  br label %169

169:                                              ; preds = %163, %156
  %170 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %171 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %170, i32 0, i32 0
  %172 = load i32, i32* %171, align 8
  %173 = load i32, i32* @ACTION_PATROL, align 4
  %174 = and i32 %172, %173
  %175 = icmp ne i32 %174, 0
  br i1 %175, label %176, label %182

176:                                              ; preds = %169
  %177 = load i32, i32* @BUTTON_PATROL, align 4
  %178 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %179 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %178, i32 0, i32 6
  %180 = load i32, i32* %179, align 8
  %181 = or i32 %180, %177
  store i32 %181, i32* %179, align 8
  br label %182

182:                                              ; preds = %176, %169
  %183 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %184 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %183, i32 0, i32 0
  %185 = load i32, i32* %184, align 8
  %186 = load i32, i32* @ACTION_FOLLOWME, align 4
  %187 = and i32 %185, %186
  %188 = icmp ne i32 %187, 0
  br i1 %188, label %189, label %195

189:                                              ; preds = %182
  %190 = load i32, i32* @BUTTON_FOLLOWME, align 4
  %191 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %192 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %191, i32 0, i32 6
  %193 = load i32, i32* %192, align 8
  %194 = or i32 %193, %190
  store i32 %194, i32* %192, align 8
  br label %195

195:                                              ; preds = %189, %182
  %196 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %197 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %196, i32 0, i32 4
  %198 = load i32, i32* %197, align 4
  %199 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %200 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %199, i32 0, i32 5
  store i32 %198, i32* %200, align 4
  %201 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %202 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %201, i32 0, i32 1
  %203 = load float*, float** %202, align 8
  %204 = load i64, i64* @PITCH, align 8
  %205 = getelementptr inbounds float, float* %203, i64 %204
  %206 = load float, float* %205, align 4
  %207 = call i8* @ANGLE2SHORT(float %206)
  %208 = ptrtoint i8* %207 to i32
  %209 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %210 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %209, i32 0, i32 1
  %211 = load i32*, i32** %210, align 8
  %212 = load i64, i64* @PITCH, align 8
  %213 = getelementptr inbounds i32, i32* %211, i64 %212
  store i32 %208, i32* %213, align 4
  %214 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %215 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %214, i32 0, i32 1
  %216 = load float*, float** %215, align 8
  %217 = load i64, i64* @YAW, align 8
  %218 = getelementptr inbounds float, float* %216, i64 %217
  %219 = load float, float* %218, align 4
  %220 = call i8* @ANGLE2SHORT(float %219)
  %221 = ptrtoint i8* %220 to i32
  %222 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %223 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %222, i32 0, i32 1
  %224 = load i32*, i32** %223, align 8
  %225 = load i64, i64* @YAW, align 8
  %226 = getelementptr inbounds i32, i32* %224, i64 %225
  store i32 %221, i32* %226, align 4
  %227 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %228 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %227, i32 0, i32 1
  %229 = load float*, float** %228, align 8
  %230 = load i64, i64* @ROLL, align 8
  %231 = getelementptr inbounds float, float* %229, i64 %230
  %232 = load float, float* %231, align 4
  %233 = call i8* @ANGLE2SHORT(float %232)
  %234 = ptrtoint i8* %233 to i32
  %235 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %236 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %235, i32 0, i32 1
  %237 = load i32*, i32** %236, align 8
  %238 = load i64, i64* @ROLL, align 8
  %239 = getelementptr inbounds i32, i32* %237, i64 %238
  store i32 %234, i32* %239, align 4
  store i32 0, i32* %13, align 4
  br label %240

240:                                              ; preds = %266, %195
  %241 = load i32, i32* %13, align 4
  %242 = icmp slt i32 %241, 3
  br i1 %242, label %243, label %269

243:                                              ; preds = %240
  %244 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %245 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %244, i32 0, i32 1
  %246 = load i32*, i32** %245, align 8
  %247 = load i32, i32* %13, align 4
  %248 = sext i32 %247 to i64
  %249 = getelementptr inbounds i32, i32* %246, i64 %248
  %250 = load i32, i32* %249, align 4
  %251 = load i32*, i32** %7, align 8
  %252 = load i32, i32* %13, align 4
  %253 = sext i32 %252 to i64
  %254 = getelementptr inbounds i32, i32* %251, i64 %253
  %255 = load i32, i32* %254, align 4
  %256 = sub nsw i32 %250, %255
  %257 = trunc i32 %256 to i16
  store i16 %257, i16* %12, align 2
  %258 = load i16, i16* %12, align 2
  %259 = sext i16 %258 to i32
  %260 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %261 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %260, i32 0, i32 1
  %262 = load i32*, i32** %261, align 8
  %263 = load i32, i32* %13, align 4
  %264 = sext i32 %263 to i64
  %265 = getelementptr inbounds i32, i32* %262, i64 %264
  store i32 %259, i32* %265, align 4
  br label %266

266:                                              ; preds = %243
  %267 = load i32, i32* %13, align 4
  %268 = add nsw i32 %267, 1
  store i32 %268, i32* %13, align 4
  br label %240

269:                                              ; preds = %240
  %270 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %271 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %270, i32 0, i32 2
  %272 = load i32*, i32** %271, align 8
  %273 = getelementptr inbounds i32, i32* %272, i64 2
  %274 = load i32, i32* %273, align 4
  %275 = icmp ne i32 %274, 0
  br i1 %275, label %276, label %286

276:                                              ; preds = %269
  %277 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %278 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %277, i32 0, i32 1
  %279 = load float*, float** %278, align 8
  %280 = load i64, i64* @PITCH, align 8
  %281 = getelementptr inbounds float, float* %279, i64 %280
  %282 = load float, float* %281, align 4
  %283 = load float*, float** %9, align 8
  %284 = load i64, i64* @PITCH, align 8
  %285 = getelementptr inbounds float, float* %283, i64 %284
  store float %282, float* %285, align 4
  br label %290

286:                                              ; preds = %269
  %287 = load float*, float** %9, align 8
  %288 = load i64, i64* @PITCH, align 8
  %289 = getelementptr inbounds float, float* %287, i64 %288
  store float 0.000000e+00, float* %289, align 4
  br label %290

290:                                              ; preds = %286, %276
  %291 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %292 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %291, i32 0, i32 1
  %293 = load float*, float** %292, align 8
  %294 = load i64, i64* @YAW, align 8
  %295 = getelementptr inbounds float, float* %293, i64 %294
  %296 = load float, float* %295, align 4
  %297 = load float*, float** %9, align 8
  %298 = load i64, i64* @YAW, align 8
  %299 = getelementptr inbounds float, float* %297, i64 %298
  store float %296, float* %299, align 4
  %300 = load float*, float** %9, align 8
  %301 = load i64, i64* @ROLL, align 8
  %302 = getelementptr inbounds float, float* %300, i64 %301
  store float 0.000000e+00, float* %302, align 4
  %303 = load float*, float** %9, align 8
  %304 = load float*, float** %10, align 8
  %305 = load float*, float** %11, align 8
  %306 = call i32 @AngleVectors(float* %303, float* %304, float* %305, i32* null)
  %307 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %308 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %307, i32 0, i32 3
  %309 = load i32, i32* %308, align 8
  %310 = mul nsw i32 %309, 127
  %311 = sdiv i32 %310, 400
  %312 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %313 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %312, i32 0, i32 3
  store i32 %311, i32* %313, align 8
  %314 = load float*, float** %10, align 8
  %315 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %316 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %315, i32 0, i32 2
  %317 = load i32*, i32** %316, align 8
  %318 = call float @DotProduct(float* %314, i32* %317)
  store float %318, float* %14, align 4
  %319 = load float*, float** %11, align 8
  %320 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %321 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %320, i32 0, i32 2
  %322 = load i32*, i32** %321, align 8
  %323 = call float @DotProduct(float* %319, i32* %322)
  store float %323, float* %15, align 4
  %324 = load float*, float** %10, align 8
  %325 = getelementptr inbounds float, float* %324, i64 2
  %326 = load float, float* %325, align 4
  %327 = call float @fabs(float %326)
  %328 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %329 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %328, i32 0, i32 2
  %330 = load i32*, i32** %329, align 8
  %331 = getelementptr inbounds i32, i32* %330, i64 2
  %332 = load i32, i32* %331, align 4
  %333 = sitofp i32 %332 to float
  %334 = fmul float %327, %333
  store float %334, float* %16, align 4
  %335 = load float, float* %14, align 4
  %336 = call float @fabs(float %335)
  store float %336, float* %17, align 4
  %337 = load float, float* %15, align 4
  %338 = call float @fabs(float %337)
  %339 = load float, float* %17, align 4
  %340 = fcmp ogt float %338, %339
  br i1 %340, label %341, label %344

341:                                              ; preds = %290
  %342 = load float, float* %15, align 4
  %343 = call float @fabs(float %342)
  store float %343, float* %17, align 4
  br label %344

344:                                              ; preds = %341, %290
  %345 = load float, float* %16, align 4
  %346 = call float @fabs(float %345)
  %347 = load float, float* %17, align 4
  %348 = fcmp ogt float %346, %347
  br i1 %348, label %349, label %352

349:                                              ; preds = %344
  %350 = load float, float* %16, align 4
  %351 = call float @fabs(float %350)
  store float %351, float* %17, align 4
  br label %352

352:                                              ; preds = %349, %344
  %353 = load float, float* %17, align 4
  %354 = fcmp ogt float %353, 0.000000e+00
  br i1 %354, label %355, label %380

355:                                              ; preds = %352
  %356 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %357 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %356, i32 0, i32 3
  %358 = load i32, i32* %357, align 8
  %359 = sitofp i32 %358 to float
  %360 = load float, float* %17, align 4
  %361 = fdiv float %359, %360
  %362 = load float, float* %14, align 4
  %363 = fmul float %362, %361
  store float %363, float* %14, align 4
  %364 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %365 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %364, i32 0, i32 3
  %366 = load i32, i32* %365, align 8
  %367 = sitofp i32 %366 to float
  %368 = load float, float* %17, align 4
  %369 = fdiv float %367, %368
  %370 = load float, float* %15, align 4
  %371 = fmul float %370, %369
  store float %371, float* %15, align 4
  %372 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %373 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %372, i32 0, i32 3
  %374 = load i32, i32* %373, align 8
  %375 = sitofp i32 %374 to float
  %376 = load float, float* %17, align 4
  %377 = fdiv float %375, %376
  %378 = load float, float* %16, align 4
  %379 = fmul float %378, %377
  store float %379, float* %16, align 4
  br label %380

380:                                              ; preds = %355, %352
  %381 = load float, float* %14, align 4
  %382 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %383 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %382, i32 0, i32 2
  store float %381, float* %383, align 8
  %384 = load float, float* %15, align 4
  %385 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %386 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %385, i32 0, i32 3
  store float %384, float* %386, align 4
  %387 = load float, float* %16, align 4
  %388 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %389 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %388, i32 0, i32 4
  store float %387, float* %389, align 8
  %390 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %391 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %390, i32 0, i32 0
  %392 = load i32, i32* %391, align 8
  %393 = load i32, i32* @ACTION_MOVEFORWARD, align 4
  %394 = and i32 %392, %393
  %395 = icmp ne i32 %394, 0
  br i1 %395, label %396, label %399

396:                                              ; preds = %380
  %397 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %398 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %397, i32 0, i32 2
  store float 1.270000e+02, float* %398, align 8
  br label %399

399:                                              ; preds = %396, %380
  %400 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %401 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %400, i32 0, i32 0
  %402 = load i32, i32* %401, align 8
  %403 = load i32, i32* @ACTION_MOVEBACK, align 4
  %404 = and i32 %402, %403
  %405 = icmp ne i32 %404, 0
  br i1 %405, label %406, label %409

406:                                              ; preds = %399
  %407 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %408 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %407, i32 0, i32 2
  store float -1.270000e+02, float* %408, align 8
  br label %409

409:                                              ; preds = %406, %399
  %410 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %411 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %410, i32 0, i32 0
  %412 = load i32, i32* %411, align 8
  %413 = load i32, i32* @ACTION_MOVELEFT, align 4
  %414 = and i32 %412, %413
  %415 = icmp ne i32 %414, 0
  br i1 %415, label %416, label %419

416:                                              ; preds = %409
  %417 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %418 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %417, i32 0, i32 3
  store float -1.270000e+02, float* %418, align 4
  br label %419

419:                                              ; preds = %416, %409
  %420 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %421 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %420, i32 0, i32 0
  %422 = load i32, i32* %421, align 8
  %423 = load i32, i32* @ACTION_MOVERIGHT, align 4
  %424 = and i32 %422, %423
  %425 = icmp ne i32 %424, 0
  br i1 %425, label %426, label %429

426:                                              ; preds = %419
  %427 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %428 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %427, i32 0, i32 3
  store float 1.270000e+02, float* %428, align 4
  br label %429

429:                                              ; preds = %426, %419
  %430 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %431 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %430, i32 0, i32 0
  %432 = load i32, i32* %431, align 8
  %433 = load i32, i32* @ACTION_JUMP, align 4
  %434 = and i32 %432, %433
  %435 = icmp ne i32 %434, 0
  br i1 %435, label %436, label %439

436:                                              ; preds = %429
  %437 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %438 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %437, i32 0, i32 4
  store float 1.270000e+02, float* %438, align 8
  br label %439

439:                                              ; preds = %436, %429
  %440 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %441 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %440, i32 0, i32 0
  %442 = load i32, i32* %441, align 8
  %443 = load i32, i32* @ACTION_CROUCH, align 4
  %444 = and i32 %442, %443
  %445 = icmp ne i32 %444, 0
  br i1 %445, label %446, label %449

446:                                              ; preds = %439
  %447 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %448 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %447, i32 0, i32 4
  store float -1.270000e+02, float* %448, align 8
  br label %449

449:                                              ; preds = %446, %439
  ret void
}

declare dso_local i32 @memset(%struct.TYPE_6__*, i32, i32) #1

declare dso_local i8* @ANGLE2SHORT(float) #1

declare dso_local i32 @AngleVectors(float*, float*, float*, i32*) #1

declare dso_local float @DotProduct(float*, i32*) #1

declare dso_local float @fabs(float) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
