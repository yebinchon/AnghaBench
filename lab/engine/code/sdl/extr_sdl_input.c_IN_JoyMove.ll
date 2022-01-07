; ModuleID = '/home/carl/AnghaBench/lab/engine/code/sdl/extr_sdl_input.c_IN_JoyMove.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/sdl/extr_sdl_input.c_IN_JoyMove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32*, i32, i32*, i32 }
%struct.TYPE_5__ = type { i64 }
%struct.TYPE_6__ = type { float }

@gamepad = common dso_local global i64 0, align 8
@stick = common dso_local global i32 0, align 4
@in_eventTime = common dso_local global i32 0, align 4
@SE_MOUSE = common dso_local global i32 0, align 4
@stick_state = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@SE_KEY = common dso_local global i32 0, align 4
@K_JOY1 = common dso_local global i32 0, align 4
@hat_keys = common dso_local global i32* null, align 8
@qfalse = common dso_local global i32 0, align 4
@qtrue = common dso_local global i32 0, align 4
@in_joystickUseAnalog = common dso_local global %struct.TYPE_5__* null, align 8
@MAX_JOYSTICK_AXIS = common dso_local global i32 0, align 4
@in_joystickThreshold = common dso_local global %struct.TYPE_6__* null, align 8
@SE_JOYSTICK_AXIS = common dso_local global i32 0, align 4
@joy_keys = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @IN_JoyMove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @IN_JoyMove() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca float, align 4
  %12 = alloca i32, align 4
  %13 = alloca float, align 4
  store i32 0, i32* %1, align 4
  store i32 0, i32* %2, align 4
  store i32 0, i32* %3, align 4
  store i32 0, i32* %4, align 4
  %14 = load i64, i64* @gamepad, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %0
  %17 = call i32 (...) @IN_GamepadMove()
  br label %630

18:                                               ; preds = %0
  %19 = load i32, i32* @stick, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %18
  br label %630

22:                                               ; preds = %18
  %23 = call i32 (...) @SDL_JoystickUpdate()
  %24 = load i32, i32* @stick, align 4
  %25 = call i32 @SDL_JoystickNumBalls(i32 %24)
  store i32 %25, i32* %3, align 4
  %26 = load i32, i32* %3, align 4
  %27 = icmp sgt i32 %26, 0
  br i1 %27, label %28, label %73

28:                                               ; preds = %22
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  store i32 0, i32* %4, align 4
  br label %29

29:                                               ; preds = %43, %28
  %30 = load i32, i32* %4, align 4
  %31 = load i32, i32* %3, align 4
  %32 = icmp slt i32 %30, %31
  br i1 %32, label %33, label %46

33:                                               ; preds = %29
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %34 = load i32, i32* @stick, align 4
  %35 = load i32, i32* %4, align 4
  %36 = call i32 @SDL_JoystickGetBall(i32 %34, i32 %35, i32* %7, i32* %8)
  %37 = load i32, i32* %7, align 4
  %38 = load i32, i32* %5, align 4
  %39 = add nsw i32 %38, %37
  store i32 %39, i32* %5, align 4
  %40 = load i32, i32* %8, align 4
  %41 = load i32, i32* %6, align 4
  %42 = add nsw i32 %41, %40
  store i32 %42, i32* %6, align 4
  br label %43

43:                                               ; preds = %33
  %44 = load i32, i32* %4, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %4, align 4
  br label %29

46:                                               ; preds = %29
  %47 = load i32, i32* %5, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %52, label %49

49:                                               ; preds = %46
  %50 = load i32, i32* %6, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %72

52:                                               ; preds = %49, %46
  %53 = load i32, i32* %5, align 4
  %54 = call i32 @abs(i32 %53) #3
  %55 = icmp sgt i32 %54, 1
  br i1 %55, label %56, label %59

56:                                               ; preds = %52
  %57 = load i32, i32* %5, align 4
  %58 = mul nsw i32 %57, 2
  store i32 %58, i32* %5, align 4
  br label %59

59:                                               ; preds = %56, %52
  %60 = load i32, i32* %6, align 4
  %61 = call i32 @abs(i32 %60) #3
  %62 = icmp sgt i32 %61, 1
  br i1 %62, label %63, label %66

63:                                               ; preds = %59
  %64 = load i32, i32* %6, align 4
  %65 = mul nsw i32 %64, 2
  store i32 %65, i32* %6, align 4
  br label %66

66:                                               ; preds = %63, %59
  %67 = load i32, i32* @in_eventTime, align 4
  %68 = load i32, i32* @SE_MOUSE, align 4
  %69 = load i32, i32* %5, align 4
  %70 = load i32, i32* %6, align 4
  %71 = call i32 @Com_QueueEvent(i32 %67, i32 %68, i32 %69, i32 %70, i32 0, i32* null)
  br label %72

72:                                               ; preds = %66, %49
  br label %73

73:                                               ; preds = %72, %22
  %74 = load i32, i32* @stick, align 4
  %75 = call i32 @SDL_JoystickNumButtons(i32 %74)
  store i32 %75, i32* %3, align 4
  %76 = load i32, i32* %3, align 4
  %77 = icmp sgt i32 %76, 0
  br i1 %77, label %78, label %122

78:                                               ; preds = %73
  %79 = load i32, i32* %3, align 4
  %80 = load i32*, i32** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @stick_state, i32 0, i32 0), align 8
  %81 = call i32 @ARRAY_LEN(i32* %80)
  %82 = icmp sgt i32 %79, %81
  br i1 %82, label %83, label %86

83:                                               ; preds = %78
  %84 = load i32*, i32** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @stick_state, i32 0, i32 0), align 8
  %85 = call i32 @ARRAY_LEN(i32* %84)
  store i32 %85, i32* %3, align 4
  br label %86

86:                                               ; preds = %83, %78
  store i32 0, i32* %4, align 4
  br label %87

87:                                               ; preds = %118, %86
  %88 = load i32, i32* %4, align 4
  %89 = load i32, i32* %3, align 4
  %90 = icmp slt i32 %88, %89
  br i1 %90, label %91, label %121

91:                                               ; preds = %87
  %92 = load i32, i32* @stick, align 4
  %93 = load i32, i32* %4, align 4
  %94 = call i64 @SDL_JoystickGetButton(i32 %92, i32 %93)
  %95 = icmp ne i64 %94, 0
  %96 = zext i1 %95 to i32
  store i32 %96, i32* %9, align 4
  %97 = load i32, i32* %9, align 4
  %98 = load i32*, i32** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @stick_state, i32 0, i32 0), align 8
  %99 = load i32, i32* %4, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds i32, i32* %98, i64 %100
  %102 = load i32, i32* %101, align 4
  %103 = icmp ne i32 %97, %102
  br i1 %103, label %104, label %117

104:                                              ; preds = %91
  %105 = load i32, i32* @in_eventTime, align 4
  %106 = load i32, i32* @SE_KEY, align 4
  %107 = load i32, i32* @K_JOY1, align 4
  %108 = load i32, i32* %4, align 4
  %109 = add nsw i32 %107, %108
  %110 = load i32, i32* %9, align 4
  %111 = call i32 @Com_QueueEvent(i32 %105, i32 %106, i32 %109, i32 %110, i32 0, i32* null)
  %112 = load i32, i32* %9, align 4
  %113 = load i32*, i32** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @stick_state, i32 0, i32 0), align 8
  %114 = load i32, i32* %4, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds i32, i32* %113, i64 %115
  store i32 %112, i32* %116, align 4
  br label %117

117:                                              ; preds = %104, %91
  br label %118

118:                                              ; preds = %117
  %119 = load i32, i32* %4, align 4
  %120 = add nsw i32 %119, 1
  store i32 %120, i32* %4, align 4
  br label %87

121:                                              ; preds = %87
  br label %122

122:                                              ; preds = %121, %73
  %123 = load i32, i32* @stick, align 4
  %124 = call i32 @SDL_JoystickNumHats(i32 %123)
  store i32 %124, i32* %3, align 4
  %125 = load i32, i32* %3, align 4
  %126 = icmp sgt i32 %125, 0
  br i1 %126, label %127, label %147

127:                                              ; preds = %122
  %128 = load i32, i32* %3, align 4
  %129 = icmp sgt i32 %128, 4
  br i1 %129, label %130, label %131

130:                                              ; preds = %127
  store i32 4, i32* %3, align 4
  br label %131

131:                                              ; preds = %130, %127
  store i32 0, i32* %4, align 4
  br label %132

132:                                              ; preds = %143, %131
  %133 = load i32, i32* %4, align 4
  %134 = load i32, i32* %3, align 4
  %135 = icmp slt i32 %133, %134
  br i1 %135, label %136, label %146

136:                                              ; preds = %132
  %137 = load i32, i32* @stick, align 4
  %138 = load i32, i32* %4, align 4
  %139 = call i32 @SDL_JoystickGetHat(i32 %137, i32 %138)
  %140 = load i32, i32* %4, align 4
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds i32, i32* %2, i64 %141
  store i32 %139, i32* %142, align 4
  br label %143

143:                                              ; preds = %136
  %144 = load i32, i32* %4, align 4
  %145 = add nsw i32 %144, 1
  store i32 %145, i32* %4, align 4
  br label %132

146:                                              ; preds = %132
  br label %147

147:                                              ; preds = %146, %122
  %148 = load i32, i32* %2, align 4
  %149 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @stick_state, i32 0, i32 1), align 8
  %150 = icmp ne i32 %148, %149
  br i1 %150, label %151, label %463

151:                                              ; preds = %147
  store i32 0, i32* %4, align 4
  br label %152

152:                                              ; preds = %459, %151
  %153 = load i32, i32* %4, align 4
  %154 = icmp slt i32 %153, 4
  br i1 %154, label %155, label %462

155:                                              ; preds = %152
  %156 = load i32, i32* %4, align 4
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds i32, i32* %2, i64 %157
  %159 = load i32, i32* %158, align 4
  %160 = load i32, i32* %4, align 4
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @stick_state, i32 0, i32 1), i64 %161
  %163 = load i32, i32* %162, align 4
  %164 = icmp ne i32 %159, %163
  br i1 %164, label %165, label %458

165:                                              ; preds = %155
  %166 = load i32, i32* %4, align 4
  %167 = sext i32 %166 to i64
  %168 = getelementptr inbounds i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @stick_state, i32 0, i32 1), i64 %167
  %169 = load i32, i32* %168, align 4
  switch i32 %169, label %310 [
    i32 128, label %170
    i32 131, label %182
    i32 135, label %194
    i32 134, label %206
    i32 129, label %218
    i32 130, label %241
    i32 132, label %264
    i32 133, label %287
  ]

170:                                              ; preds = %165
  %171 = load i32, i32* @in_eventTime, align 4
  %172 = load i32, i32* @SE_KEY, align 4
  %173 = load i32*, i32** @hat_keys, align 8
  %174 = load i32, i32* %4, align 4
  %175 = mul nsw i32 4, %174
  %176 = add nsw i32 %175, 0
  %177 = sext i32 %176 to i64
  %178 = getelementptr inbounds i32, i32* %173, i64 %177
  %179 = load i32, i32* %178, align 4
  %180 = load i32, i32* @qfalse, align 4
  %181 = call i32 @Com_QueueEvent(i32 %171, i32 %172, i32 %179, i32 %180, i32 0, i32* null)
  br label %311

182:                                              ; preds = %165
  %183 = load i32, i32* @in_eventTime, align 4
  %184 = load i32, i32* @SE_KEY, align 4
  %185 = load i32*, i32** @hat_keys, align 8
  %186 = load i32, i32* %4, align 4
  %187 = mul nsw i32 4, %186
  %188 = add nsw i32 %187, 1
  %189 = sext i32 %188 to i64
  %190 = getelementptr inbounds i32, i32* %185, i64 %189
  %191 = load i32, i32* %190, align 4
  %192 = load i32, i32* @qfalse, align 4
  %193 = call i32 @Com_QueueEvent(i32 %183, i32 %184, i32 %191, i32 %192, i32 0, i32* null)
  br label %311

194:                                              ; preds = %165
  %195 = load i32, i32* @in_eventTime, align 4
  %196 = load i32, i32* @SE_KEY, align 4
  %197 = load i32*, i32** @hat_keys, align 8
  %198 = load i32, i32* %4, align 4
  %199 = mul nsw i32 4, %198
  %200 = add nsw i32 %199, 2
  %201 = sext i32 %200 to i64
  %202 = getelementptr inbounds i32, i32* %197, i64 %201
  %203 = load i32, i32* %202, align 4
  %204 = load i32, i32* @qfalse, align 4
  %205 = call i32 @Com_QueueEvent(i32 %195, i32 %196, i32 %203, i32 %204, i32 0, i32* null)
  br label %311

206:                                              ; preds = %165
  %207 = load i32, i32* @in_eventTime, align 4
  %208 = load i32, i32* @SE_KEY, align 4
  %209 = load i32*, i32** @hat_keys, align 8
  %210 = load i32, i32* %4, align 4
  %211 = mul nsw i32 4, %210
  %212 = add nsw i32 %211, 3
  %213 = sext i32 %212 to i64
  %214 = getelementptr inbounds i32, i32* %209, i64 %213
  %215 = load i32, i32* %214, align 4
  %216 = load i32, i32* @qfalse, align 4
  %217 = call i32 @Com_QueueEvent(i32 %207, i32 %208, i32 %215, i32 %216, i32 0, i32* null)
  br label %311

218:                                              ; preds = %165
  %219 = load i32, i32* @in_eventTime, align 4
  %220 = load i32, i32* @SE_KEY, align 4
  %221 = load i32*, i32** @hat_keys, align 8
  %222 = load i32, i32* %4, align 4
  %223 = mul nsw i32 4, %222
  %224 = add nsw i32 %223, 0
  %225 = sext i32 %224 to i64
  %226 = getelementptr inbounds i32, i32* %221, i64 %225
  %227 = load i32, i32* %226, align 4
  %228 = load i32, i32* @qfalse, align 4
  %229 = call i32 @Com_QueueEvent(i32 %219, i32 %220, i32 %227, i32 %228, i32 0, i32* null)
  %230 = load i32, i32* @in_eventTime, align 4
  %231 = load i32, i32* @SE_KEY, align 4
  %232 = load i32*, i32** @hat_keys, align 8
  %233 = load i32, i32* %4, align 4
  %234 = mul nsw i32 4, %233
  %235 = add nsw i32 %234, 1
  %236 = sext i32 %235 to i64
  %237 = getelementptr inbounds i32, i32* %232, i64 %236
  %238 = load i32, i32* %237, align 4
  %239 = load i32, i32* @qfalse, align 4
  %240 = call i32 @Com_QueueEvent(i32 %230, i32 %231, i32 %238, i32 %239, i32 0, i32* null)
  br label %311

241:                                              ; preds = %165
  %242 = load i32, i32* @in_eventTime, align 4
  %243 = load i32, i32* @SE_KEY, align 4
  %244 = load i32*, i32** @hat_keys, align 8
  %245 = load i32, i32* %4, align 4
  %246 = mul nsw i32 4, %245
  %247 = add nsw i32 %246, 2
  %248 = sext i32 %247 to i64
  %249 = getelementptr inbounds i32, i32* %244, i64 %248
  %250 = load i32, i32* %249, align 4
  %251 = load i32, i32* @qfalse, align 4
  %252 = call i32 @Com_QueueEvent(i32 %242, i32 %243, i32 %250, i32 %251, i32 0, i32* null)
  %253 = load i32, i32* @in_eventTime, align 4
  %254 = load i32, i32* @SE_KEY, align 4
  %255 = load i32*, i32** @hat_keys, align 8
  %256 = load i32, i32* %4, align 4
  %257 = mul nsw i32 4, %256
  %258 = add nsw i32 %257, 1
  %259 = sext i32 %258 to i64
  %260 = getelementptr inbounds i32, i32* %255, i64 %259
  %261 = load i32, i32* %260, align 4
  %262 = load i32, i32* @qfalse, align 4
  %263 = call i32 @Com_QueueEvent(i32 %253, i32 %254, i32 %261, i32 %262, i32 0, i32* null)
  br label %311

264:                                              ; preds = %165
  %265 = load i32, i32* @in_eventTime, align 4
  %266 = load i32, i32* @SE_KEY, align 4
  %267 = load i32*, i32** @hat_keys, align 8
  %268 = load i32, i32* %4, align 4
  %269 = mul nsw i32 4, %268
  %270 = add nsw i32 %269, 0
  %271 = sext i32 %270 to i64
  %272 = getelementptr inbounds i32, i32* %267, i64 %271
  %273 = load i32, i32* %272, align 4
  %274 = load i32, i32* @qfalse, align 4
  %275 = call i32 @Com_QueueEvent(i32 %265, i32 %266, i32 %273, i32 %274, i32 0, i32* null)
  %276 = load i32, i32* @in_eventTime, align 4
  %277 = load i32, i32* @SE_KEY, align 4
  %278 = load i32*, i32** @hat_keys, align 8
  %279 = load i32, i32* %4, align 4
  %280 = mul nsw i32 4, %279
  %281 = add nsw i32 %280, 3
  %282 = sext i32 %281 to i64
  %283 = getelementptr inbounds i32, i32* %278, i64 %282
  %284 = load i32, i32* %283, align 4
  %285 = load i32, i32* @qfalse, align 4
  %286 = call i32 @Com_QueueEvent(i32 %276, i32 %277, i32 %284, i32 %285, i32 0, i32* null)
  br label %311

287:                                              ; preds = %165
  %288 = load i32, i32* @in_eventTime, align 4
  %289 = load i32, i32* @SE_KEY, align 4
  %290 = load i32*, i32** @hat_keys, align 8
  %291 = load i32, i32* %4, align 4
  %292 = mul nsw i32 4, %291
  %293 = add nsw i32 %292, 2
  %294 = sext i32 %293 to i64
  %295 = getelementptr inbounds i32, i32* %290, i64 %294
  %296 = load i32, i32* %295, align 4
  %297 = load i32, i32* @qfalse, align 4
  %298 = call i32 @Com_QueueEvent(i32 %288, i32 %289, i32 %296, i32 %297, i32 0, i32* null)
  %299 = load i32, i32* @in_eventTime, align 4
  %300 = load i32, i32* @SE_KEY, align 4
  %301 = load i32*, i32** @hat_keys, align 8
  %302 = load i32, i32* %4, align 4
  %303 = mul nsw i32 4, %302
  %304 = add nsw i32 %303, 3
  %305 = sext i32 %304 to i64
  %306 = getelementptr inbounds i32, i32* %301, i64 %305
  %307 = load i32, i32* %306, align 4
  %308 = load i32, i32* @qfalse, align 4
  %309 = call i32 @Com_QueueEvent(i32 %299, i32 %300, i32 %307, i32 %308, i32 0, i32* null)
  br label %311

310:                                              ; preds = %165
  br label %311

311:                                              ; preds = %310, %287, %264, %241, %218, %206, %194, %182, %170
  %312 = load i32, i32* %4, align 4
  %313 = sext i32 %312 to i64
  %314 = getelementptr inbounds i32, i32* %2, i64 %313
  %315 = load i32, i32* %314, align 4
  switch i32 %315, label %456 [
    i32 128, label %316
    i32 131, label %328
    i32 135, label %340
    i32 134, label %352
    i32 129, label %364
    i32 130, label %387
    i32 132, label %410
    i32 133, label %433
  ]

316:                                              ; preds = %311
  %317 = load i32, i32* @in_eventTime, align 4
  %318 = load i32, i32* @SE_KEY, align 4
  %319 = load i32*, i32** @hat_keys, align 8
  %320 = load i32, i32* %4, align 4
  %321 = mul nsw i32 4, %320
  %322 = add nsw i32 %321, 0
  %323 = sext i32 %322 to i64
  %324 = getelementptr inbounds i32, i32* %319, i64 %323
  %325 = load i32, i32* %324, align 4
  %326 = load i32, i32* @qtrue, align 4
  %327 = call i32 @Com_QueueEvent(i32 %317, i32 %318, i32 %325, i32 %326, i32 0, i32* null)
  br label %457

328:                                              ; preds = %311
  %329 = load i32, i32* @in_eventTime, align 4
  %330 = load i32, i32* @SE_KEY, align 4
  %331 = load i32*, i32** @hat_keys, align 8
  %332 = load i32, i32* %4, align 4
  %333 = mul nsw i32 4, %332
  %334 = add nsw i32 %333, 1
  %335 = sext i32 %334 to i64
  %336 = getelementptr inbounds i32, i32* %331, i64 %335
  %337 = load i32, i32* %336, align 4
  %338 = load i32, i32* @qtrue, align 4
  %339 = call i32 @Com_QueueEvent(i32 %329, i32 %330, i32 %337, i32 %338, i32 0, i32* null)
  br label %457

340:                                              ; preds = %311
  %341 = load i32, i32* @in_eventTime, align 4
  %342 = load i32, i32* @SE_KEY, align 4
  %343 = load i32*, i32** @hat_keys, align 8
  %344 = load i32, i32* %4, align 4
  %345 = mul nsw i32 4, %344
  %346 = add nsw i32 %345, 2
  %347 = sext i32 %346 to i64
  %348 = getelementptr inbounds i32, i32* %343, i64 %347
  %349 = load i32, i32* %348, align 4
  %350 = load i32, i32* @qtrue, align 4
  %351 = call i32 @Com_QueueEvent(i32 %341, i32 %342, i32 %349, i32 %350, i32 0, i32* null)
  br label %457

352:                                              ; preds = %311
  %353 = load i32, i32* @in_eventTime, align 4
  %354 = load i32, i32* @SE_KEY, align 4
  %355 = load i32*, i32** @hat_keys, align 8
  %356 = load i32, i32* %4, align 4
  %357 = mul nsw i32 4, %356
  %358 = add nsw i32 %357, 3
  %359 = sext i32 %358 to i64
  %360 = getelementptr inbounds i32, i32* %355, i64 %359
  %361 = load i32, i32* %360, align 4
  %362 = load i32, i32* @qtrue, align 4
  %363 = call i32 @Com_QueueEvent(i32 %353, i32 %354, i32 %361, i32 %362, i32 0, i32* null)
  br label %457

364:                                              ; preds = %311
  %365 = load i32, i32* @in_eventTime, align 4
  %366 = load i32, i32* @SE_KEY, align 4
  %367 = load i32*, i32** @hat_keys, align 8
  %368 = load i32, i32* %4, align 4
  %369 = mul nsw i32 4, %368
  %370 = add nsw i32 %369, 0
  %371 = sext i32 %370 to i64
  %372 = getelementptr inbounds i32, i32* %367, i64 %371
  %373 = load i32, i32* %372, align 4
  %374 = load i32, i32* @qtrue, align 4
  %375 = call i32 @Com_QueueEvent(i32 %365, i32 %366, i32 %373, i32 %374, i32 0, i32* null)
  %376 = load i32, i32* @in_eventTime, align 4
  %377 = load i32, i32* @SE_KEY, align 4
  %378 = load i32*, i32** @hat_keys, align 8
  %379 = load i32, i32* %4, align 4
  %380 = mul nsw i32 4, %379
  %381 = add nsw i32 %380, 1
  %382 = sext i32 %381 to i64
  %383 = getelementptr inbounds i32, i32* %378, i64 %382
  %384 = load i32, i32* %383, align 4
  %385 = load i32, i32* @qtrue, align 4
  %386 = call i32 @Com_QueueEvent(i32 %376, i32 %377, i32 %384, i32 %385, i32 0, i32* null)
  br label %457

387:                                              ; preds = %311
  %388 = load i32, i32* @in_eventTime, align 4
  %389 = load i32, i32* @SE_KEY, align 4
  %390 = load i32*, i32** @hat_keys, align 8
  %391 = load i32, i32* %4, align 4
  %392 = mul nsw i32 4, %391
  %393 = add nsw i32 %392, 2
  %394 = sext i32 %393 to i64
  %395 = getelementptr inbounds i32, i32* %390, i64 %394
  %396 = load i32, i32* %395, align 4
  %397 = load i32, i32* @qtrue, align 4
  %398 = call i32 @Com_QueueEvent(i32 %388, i32 %389, i32 %396, i32 %397, i32 0, i32* null)
  %399 = load i32, i32* @in_eventTime, align 4
  %400 = load i32, i32* @SE_KEY, align 4
  %401 = load i32*, i32** @hat_keys, align 8
  %402 = load i32, i32* %4, align 4
  %403 = mul nsw i32 4, %402
  %404 = add nsw i32 %403, 1
  %405 = sext i32 %404 to i64
  %406 = getelementptr inbounds i32, i32* %401, i64 %405
  %407 = load i32, i32* %406, align 4
  %408 = load i32, i32* @qtrue, align 4
  %409 = call i32 @Com_QueueEvent(i32 %399, i32 %400, i32 %407, i32 %408, i32 0, i32* null)
  br label %457

410:                                              ; preds = %311
  %411 = load i32, i32* @in_eventTime, align 4
  %412 = load i32, i32* @SE_KEY, align 4
  %413 = load i32*, i32** @hat_keys, align 8
  %414 = load i32, i32* %4, align 4
  %415 = mul nsw i32 4, %414
  %416 = add nsw i32 %415, 0
  %417 = sext i32 %416 to i64
  %418 = getelementptr inbounds i32, i32* %413, i64 %417
  %419 = load i32, i32* %418, align 4
  %420 = load i32, i32* @qtrue, align 4
  %421 = call i32 @Com_QueueEvent(i32 %411, i32 %412, i32 %419, i32 %420, i32 0, i32* null)
  %422 = load i32, i32* @in_eventTime, align 4
  %423 = load i32, i32* @SE_KEY, align 4
  %424 = load i32*, i32** @hat_keys, align 8
  %425 = load i32, i32* %4, align 4
  %426 = mul nsw i32 4, %425
  %427 = add nsw i32 %426, 3
  %428 = sext i32 %427 to i64
  %429 = getelementptr inbounds i32, i32* %424, i64 %428
  %430 = load i32, i32* %429, align 4
  %431 = load i32, i32* @qtrue, align 4
  %432 = call i32 @Com_QueueEvent(i32 %422, i32 %423, i32 %430, i32 %431, i32 0, i32* null)
  br label %457

433:                                              ; preds = %311
  %434 = load i32, i32* @in_eventTime, align 4
  %435 = load i32, i32* @SE_KEY, align 4
  %436 = load i32*, i32** @hat_keys, align 8
  %437 = load i32, i32* %4, align 4
  %438 = mul nsw i32 4, %437
  %439 = add nsw i32 %438, 2
  %440 = sext i32 %439 to i64
  %441 = getelementptr inbounds i32, i32* %436, i64 %440
  %442 = load i32, i32* %441, align 4
  %443 = load i32, i32* @qtrue, align 4
  %444 = call i32 @Com_QueueEvent(i32 %434, i32 %435, i32 %442, i32 %443, i32 0, i32* null)
  %445 = load i32, i32* @in_eventTime, align 4
  %446 = load i32, i32* @SE_KEY, align 4
  %447 = load i32*, i32** @hat_keys, align 8
  %448 = load i32, i32* %4, align 4
  %449 = mul nsw i32 4, %448
  %450 = add nsw i32 %449, 3
  %451 = sext i32 %450 to i64
  %452 = getelementptr inbounds i32, i32* %447, i64 %451
  %453 = load i32, i32* %452, align 4
  %454 = load i32, i32* @qtrue, align 4
  %455 = call i32 @Com_QueueEvent(i32 %445, i32 %446, i32 %453, i32 %454, i32 0, i32* null)
  br label %457

456:                                              ; preds = %311
  br label %457

457:                                              ; preds = %456, %433, %410, %387, %364, %352, %340, %328, %316
  br label %458

458:                                              ; preds = %457, %155
  br label %459

459:                                              ; preds = %458
  %460 = load i32, i32* %4, align 4
  %461 = add nsw i32 %460, 1
  store i32 %461, i32* %4, align 4
  br label %152

462:                                              ; preds = %152
  br label %463

463:                                              ; preds = %462, %147
  %464 = load i32, i32* %2, align 4
  store i32 %464, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @stick_state, i32 0, i32 1), align 8
  %465 = load i32, i32* @stick, align 4
  %466 = call i32 @SDL_JoystickNumAxes(i32 %465)
  store i32 %466, i32* %3, align 4
  %467 = load i32, i32* %3, align 4
  %468 = icmp sgt i32 %467, 0
  br i1 %468, label %469, label %571

469:                                              ; preds = %463
  %470 = load %struct.TYPE_5__*, %struct.TYPE_5__** @in_joystickUseAnalog, align 8
  %471 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %470, i32 0, i32 0
  %472 = load i64, i64* %471, align 8
  %473 = icmp ne i64 %472, 0
  br i1 %473, label %474, label %523

474:                                              ; preds = %469
  %475 = load i32, i32* %3, align 4
  %476 = load i32, i32* @MAX_JOYSTICK_AXIS, align 4
  %477 = icmp sgt i32 %475, %476
  br i1 %477, label %478, label %480

478:                                              ; preds = %474
  %479 = load i32, i32* @MAX_JOYSTICK_AXIS, align 4
  store i32 %479, i32* %3, align 4
  br label %480

480:                                              ; preds = %478, %474
  store i32 0, i32* %4, align 4
  br label %481

481:                                              ; preds = %519, %480
  %482 = load i32, i32* %4, align 4
  %483 = load i32, i32* %3, align 4
  %484 = icmp slt i32 %482, %483
  br i1 %484, label %485, label %522

485:                                              ; preds = %481
  %486 = load i32, i32* @stick, align 4
  %487 = load i32, i32* %4, align 4
  %488 = call i32 @SDL_JoystickGetAxis(i32 %486, i32 %487)
  store i32 %488, i32* %10, align 4
  %489 = load i32, i32* %10, align 4
  %490 = call i32 @abs(i32 %489) #3
  %491 = sitofp i32 %490 to float
  %492 = fdiv float %491, 3.276700e+04
  store float %492, float* %11, align 4
  %493 = load float, float* %11, align 4
  %494 = load %struct.TYPE_6__*, %struct.TYPE_6__** @in_joystickThreshold, align 8
  %495 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %494, i32 0, i32 0
  %496 = load float, float* %495, align 4
  %497 = fcmp olt float %493, %496
  br i1 %497, label %498, label %499

498:                                              ; preds = %485
  store i32 0, i32* %10, align 4
  br label %499

499:                                              ; preds = %498, %485
  %500 = load i32, i32* %10, align 4
  %501 = load i32*, i32** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @stick_state, i32 0, i32 2), align 8
  %502 = load i32, i32* %4, align 4
  %503 = sext i32 %502 to i64
  %504 = getelementptr inbounds i32, i32* %501, i64 %503
  %505 = load i32, i32* %504, align 4
  %506 = icmp ne i32 %500, %505
  br i1 %506, label %507, label %518

507:                                              ; preds = %499
  %508 = load i32, i32* @in_eventTime, align 4
  %509 = load i32, i32* @SE_JOYSTICK_AXIS, align 4
  %510 = load i32, i32* %4, align 4
  %511 = load i32, i32* %10, align 4
  %512 = call i32 @Com_QueueEvent(i32 %508, i32 %509, i32 %510, i32 %511, i32 0, i32* null)
  %513 = load i32, i32* %10, align 4
  %514 = load i32*, i32** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @stick_state, i32 0, i32 2), align 8
  %515 = load i32, i32* %4, align 4
  %516 = sext i32 %515 to i64
  %517 = getelementptr inbounds i32, i32* %514, i64 %516
  store i32 %513, i32* %517, align 4
  br label %518

518:                                              ; preds = %507, %499
  br label %519

519:                                              ; preds = %518
  %520 = load i32, i32* %4, align 4
  %521 = add nsw i32 %520, 1
  store i32 %521, i32* %4, align 4
  br label %481

522:                                              ; preds = %481
  br label %570

523:                                              ; preds = %469
  %524 = load i32, i32* %3, align 4
  %525 = icmp sgt i32 %524, 16
  br i1 %525, label %526, label %527

526:                                              ; preds = %523
  store i32 16, i32* %3, align 4
  br label %527

527:                                              ; preds = %526, %523
  store i32 0, i32* %4, align 4
  br label %528

528:                                              ; preds = %566, %527
  %529 = load i32, i32* %4, align 4
  %530 = load i32, i32* %3, align 4
  %531 = icmp slt i32 %529, %530
  br i1 %531, label %532, label %569

532:                                              ; preds = %528
  %533 = load i32, i32* @stick, align 4
  %534 = load i32, i32* %4, align 4
  %535 = call i32 @SDL_JoystickGetAxis(i32 %533, i32 %534)
  store i32 %535, i32* %12, align 4
  %536 = load i32, i32* %12, align 4
  %537 = sitofp i32 %536 to float
  %538 = fdiv float %537, 3.276700e+04
  store float %538, float* %13, align 4
  %539 = load float, float* %13, align 4
  %540 = load %struct.TYPE_6__*, %struct.TYPE_6__** @in_joystickThreshold, align 8
  %541 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %540, i32 0, i32 0
  %542 = load float, float* %541, align 4
  %543 = fneg float %542
  %544 = fcmp olt float %539, %543
  br i1 %544, label %545, label %551

545:                                              ; preds = %532
  %546 = load i32, i32* %4, align 4
  %547 = mul nsw i32 %546, 2
  %548 = shl i32 1, %547
  %549 = load i32, i32* %1, align 4
  %550 = or i32 %549, %548
  store i32 %550, i32* %1, align 4
  br label %565

551:                                              ; preds = %532
  %552 = load float, float* %13, align 4
  %553 = load %struct.TYPE_6__*, %struct.TYPE_6__** @in_joystickThreshold, align 8
  %554 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %553, i32 0, i32 0
  %555 = load float, float* %554, align 4
  %556 = fcmp ogt float %552, %555
  br i1 %556, label %557, label %564

557:                                              ; preds = %551
  %558 = load i32, i32* %4, align 4
  %559 = mul nsw i32 %558, 2
  %560 = add nsw i32 %559, 1
  %561 = shl i32 1, %560
  %562 = load i32, i32* %1, align 4
  %563 = or i32 %562, %561
  store i32 %563, i32* %1, align 4
  br label %564

564:                                              ; preds = %557, %551
  br label %565

565:                                              ; preds = %564, %545
  br label %566

566:                                              ; preds = %565
  %567 = load i32, i32* %4, align 4
  %568 = add nsw i32 %567, 1
  store i32 %568, i32* %4, align 4
  br label %528

569:                                              ; preds = %528
  br label %570

570:                                              ; preds = %569, %522
  br label %571

571:                                              ; preds = %570, %463
  %572 = load i32, i32* %1, align 4
  %573 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @stick_state, i32 0, i32 3), align 8
  %574 = icmp ne i32 %572, %573
  br i1 %574, label %575, label %628

575:                                              ; preds = %571
  store i32 0, i32* %4, align 4
  br label %576

576:                                              ; preds = %624, %575
  %577 = load i32, i32* %4, align 4
  %578 = icmp slt i32 %577, 16
  br i1 %578, label %579, label %627

579:                                              ; preds = %576
  %580 = load i32, i32* %1, align 4
  %581 = load i32, i32* %4, align 4
  %582 = shl i32 1, %581
  %583 = and i32 %580, %582
  %584 = icmp ne i32 %583, 0
  br i1 %584, label %585, label %601

585:                                              ; preds = %579
  %586 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @stick_state, i32 0, i32 3), align 8
  %587 = load i32, i32* %4, align 4
  %588 = shl i32 1, %587
  %589 = and i32 %586, %588
  %590 = icmp ne i32 %589, 0
  br i1 %590, label %601, label %591

591:                                              ; preds = %585
  %592 = load i32, i32* @in_eventTime, align 4
  %593 = load i32, i32* @SE_KEY, align 4
  %594 = load i32*, i32** @joy_keys, align 8
  %595 = load i32, i32* %4, align 4
  %596 = sext i32 %595 to i64
  %597 = getelementptr inbounds i32, i32* %594, i64 %596
  %598 = load i32, i32* %597, align 4
  %599 = load i32, i32* @qtrue, align 4
  %600 = call i32 @Com_QueueEvent(i32 %592, i32 %593, i32 %598, i32 %599, i32 0, i32* null)
  br label %601

601:                                              ; preds = %591, %585, %579
  %602 = load i32, i32* %1, align 4
  %603 = load i32, i32* %4, align 4
  %604 = shl i32 1, %603
  %605 = and i32 %602, %604
  %606 = icmp ne i32 %605, 0
  br i1 %606, label %623, label %607

607:                                              ; preds = %601
  %608 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @stick_state, i32 0, i32 3), align 8
  %609 = load i32, i32* %4, align 4
  %610 = shl i32 1, %609
  %611 = and i32 %608, %610
  %612 = icmp ne i32 %611, 0
  br i1 %612, label %613, label %623

613:                                              ; preds = %607
  %614 = load i32, i32* @in_eventTime, align 4
  %615 = load i32, i32* @SE_KEY, align 4
  %616 = load i32*, i32** @joy_keys, align 8
  %617 = load i32, i32* %4, align 4
  %618 = sext i32 %617 to i64
  %619 = getelementptr inbounds i32, i32* %616, i64 %618
  %620 = load i32, i32* %619, align 4
  %621 = load i32, i32* @qfalse, align 4
  %622 = call i32 @Com_QueueEvent(i32 %614, i32 %615, i32 %620, i32 %621, i32 0, i32* null)
  br label %623

623:                                              ; preds = %613, %607, %601
  br label %624

624:                                              ; preds = %623
  %625 = load i32, i32* %4, align 4
  %626 = add nsw i32 %625, 1
  store i32 %626, i32* %4, align 4
  br label %576

627:                                              ; preds = %576
  br label %628

628:                                              ; preds = %627, %571
  %629 = load i32, i32* %1, align 4
  store i32 %629, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @stick_state, i32 0, i32 3), align 8
  br label %630

630:                                              ; preds = %628, %21, %16
  ret void
}

declare dso_local i32 @IN_GamepadMove(...) #1

declare dso_local i32 @SDL_JoystickUpdate(...) #1

declare dso_local i32 @SDL_JoystickNumBalls(i32) #1

declare dso_local i32 @SDL_JoystickGetBall(i32, i32, i32*, i32*) #1

; Function Attrs: nounwind readnone
declare dso_local i32 @abs(i32) #2

declare dso_local i32 @Com_QueueEvent(i32, i32, i32, i32, i32, i32*) #1

declare dso_local i32 @SDL_JoystickNumButtons(i32) #1

declare dso_local i32 @ARRAY_LEN(i32*) #1

declare dso_local i64 @SDL_JoystickGetButton(i32, i32) #1

declare dso_local i32 @SDL_JoystickNumHats(i32) #1

declare dso_local i32 @SDL_JoystickGetHat(i32, i32) #1

declare dso_local i32 @SDL_JoystickNumAxes(i32) #1

declare dso_local i32 @SDL_JoystickGetAxis(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
