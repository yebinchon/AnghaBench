; ModuleID = '/home/carl/AnghaBench/lab/engine/code/sdl/extr_sdl_input.c_IN_ProcessEvents.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/sdl/extr_sdl_input.c_IN_ProcessEvents.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_23__ = type { i32 }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_14__ = type { %struct.TYPE_21__ }
%struct.TYPE_21__ = type { i32, i32, i32 }
%struct.TYPE_22__ = type { i32, %struct.TYPE_20__, %struct.TYPE_19__, %struct.TYPE_18__, %struct.TYPE_17__, %struct.TYPE_16__, %struct.TYPE_15__ }
%struct.TYPE_20__ = type { i32, i32, i32 }
%struct.TYPE_19__ = type { i32 }
%struct.TYPE_18__ = type { i32 }
%struct.TYPE_17__ = type { i32, i32 }
%struct.TYPE_16__ = type { i8* }
%struct.TYPE_15__ = type { i32, i32 }

@IN_ProcessEvents.lastKeyDown = internal global i8 0, align 1
@SDL_INIT_VIDEO = common dso_local global i32 0, align 4
@qtrue = common dso_local global i32 0, align 4
@in_eventTime = common dso_local global i32 0, align 4
@SE_KEY = common dso_local global i32 0, align 4
@K_BACKSPACE = common dso_local global i8 0, align 1
@SE_CHAR = common dso_local global i32 0, align 4
@keys = common dso_local global %struct.TYPE_23__* null, align 8
@K_CTRL = common dso_local global i64 0, align 8
@qfalse = common dso_local global i32 0, align 4
@K_CONSOLE = common dso_local global i8 0, align 1
@.str = private unnamed_addr constant [36 x i8] c"Unrecognised UTF-8 lead byte: 0x%x\0A\00", align 1
@mouseActive = common dso_local global i32 0, align 4
@SE_MOUSE = common dso_local global i32 0, align 4
@K_MOUSE1 = common dso_local global i32 0, align 4
@K_MOUSE3 = common dso_local global i32 0, align 4
@K_MOUSE2 = common dso_local global i32 0, align 4
@K_MOUSE4 = common dso_local global i32 0, align 4
@K_MOUSE5 = common dso_local global i32 0, align 4
@K_AUX1 = common dso_local global i32 0, align 4
@K_MWHEELUP = common dso_local global i32 0, align 4
@K_MWHEELDOWN = common dso_local global i32 0, align 4
@in_joystick = common dso_local global %struct.TYPE_13__* null, align 8
@EXEC_NOW = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"quit Closed window\0A\00", align 1
@cls = common dso_local global %struct.TYPE_14__ zeroinitializer, align 4
@.str.2 = private unnamed_addr constant [14 x i8] c"r_customwidth\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"r_customheight\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"r_mode\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"-1\00", align 1
@vidRestartTime = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [14 x i8] c"com_minimized\00", align 1
@.str.7 = private unnamed_addr constant [14 x i8] c"com_unfocused\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @IN_ProcessEvents to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @IN_ProcessEvents() #0 {
  %1 = alloca %struct.TYPE_22__, align 8
  %2 = alloca i8, align 1
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i8 0, i8* %2, align 1
  %8 = load i32, i32* @SDL_INIT_VIDEO, align 4
  %9 = call i32 @SDL_WasInit(i32 %8)
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %0
  br label %393

12:                                               ; preds = %0
  br label %13

13:                                               ; preds = %392, %12
  %14 = call i64 @SDL_PollEvent(%struct.TYPE_22__* %1)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %393

16:                                               ; preds = %13
  %17 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %1, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  switch i32 %18, label %391 [
    i32 142, label %19
    i32 141, label %76
    i32 135, label %90
    i32 138, label %244
    i32 140, label %269
    i32 139, label %269
    i32 137, label %306
    i32 144, label %340
    i32 143, label %340
    i32 136, label %348
    i32 134, label %351
  ]

19:                                               ; preds = %16
  %20 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %1, i32 0, i32 6
  %21 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %19
  %25 = call i32 (...) @Key_GetCatcher()
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %24
  br label %392

28:                                               ; preds = %24, %19
  %29 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %1, i32 0, i32 6
  %30 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %29, i32 0, i32 0
  %31 = load i32, i32* @qtrue, align 4
  %32 = call signext i8 @IN_TranslateSDLToQ3Key(i32* %30, i32 %31)
  store i8 %32, i8* %2, align 1
  %33 = icmp ne i8 %32, 0
  br i1 %33, label %34, label %41

34:                                               ; preds = %28
  %35 = load i32, i32* @in_eventTime, align 4
  %36 = load i32, i32* @SE_KEY, align 4
  %37 = load i8, i8* %2, align 1
  %38 = sext i8 %37 to i32
  %39 = load i32, i32* @qtrue, align 4
  %40 = call i32 @Com_QueueEvent(i32 %35, i32 %36, i32 %38, i32 %39, i32 0, i32* null)
  br label %41

41:                                               ; preds = %34, %28
  %42 = load i8, i8* %2, align 1
  %43 = sext i8 %42 to i32
  %44 = load i8, i8* @K_BACKSPACE, align 1
  %45 = sext i8 %44 to i32
  %46 = icmp eq i32 %43, %45
  br i1 %46, label %47, label %52

47:                                               ; preds = %41
  %48 = load i32, i32* @in_eventTime, align 4
  %49 = load i32, i32* @SE_CHAR, align 4
  %50 = call i32 @CTRL(i8 signext 104)
  %51 = call i32 @Com_QueueEvent(i32 %48, i32 %49, i32 %50, i32 0, i32 0, i32* null)
  br label %74

52:                                               ; preds = %41
  %53 = load %struct.TYPE_23__*, %struct.TYPE_23__** @keys, align 8
  %54 = load i64, i64* @K_CTRL, align 8
  %55 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %53, i64 %54
  %56 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %73

59:                                               ; preds = %52
  %60 = load i8, i8* %2, align 1
  %61 = sext i8 %60 to i32
  %62 = icmp sge i32 %61, 97
  br i1 %62, label %63, label %73

63:                                               ; preds = %59
  %64 = load i8, i8* %2, align 1
  %65 = sext i8 %64 to i32
  %66 = icmp sle i32 %65, 122
  br i1 %66, label %67, label %73

67:                                               ; preds = %63
  %68 = load i32, i32* @in_eventTime, align 4
  %69 = load i32, i32* @SE_CHAR, align 4
  %70 = load i8, i8* %2, align 1
  %71 = call i32 @CTRL(i8 signext %70)
  %72 = call i32 @Com_QueueEvent(i32 %68, i32 %69, i32 %71, i32 0, i32 0, i32* null)
  br label %73

73:                                               ; preds = %67, %63, %59, %52
  br label %74

74:                                               ; preds = %73, %47
  %75 = load i8, i8* %2, align 1
  store i8 %75, i8* @IN_ProcessEvents.lastKeyDown, align 1
  br label %392

76:                                               ; preds = %16
  %77 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %1, i32 0, i32 6
  %78 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %77, i32 0, i32 0
  %79 = load i32, i32* @qfalse, align 4
  %80 = call signext i8 @IN_TranslateSDLToQ3Key(i32* %78, i32 %79)
  store i8 %80, i8* %2, align 1
  %81 = icmp ne i8 %80, 0
  br i1 %81, label %82, label %89

82:                                               ; preds = %76
  %83 = load i32, i32* @in_eventTime, align 4
  %84 = load i32, i32* @SE_KEY, align 4
  %85 = load i8, i8* %2, align 1
  %86 = sext i8 %85 to i32
  %87 = load i32, i32* @qfalse, align 4
  %88 = call i32 @Com_QueueEvent(i32 %83, i32 %84, i32 %86, i32 %87, i32 0, i32* null)
  br label %89

89:                                               ; preds = %82, %76
  store i8 0, i8* @IN_ProcessEvents.lastKeyDown, align 1
  br label %392

90:                                               ; preds = %16
  %91 = load i8, i8* @IN_ProcessEvents.lastKeyDown, align 1
  %92 = sext i8 %91 to i32
  %93 = load i8, i8* @K_CONSOLE, align 1
  %94 = sext i8 %93 to i32
  %95 = icmp ne i32 %92, %94
  br i1 %95, label %96, label %243

96:                                               ; preds = %90
  %97 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %1, i32 0, i32 5
  %98 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %97, i32 0, i32 0
  %99 = load i8*, i8** %98, align 8
  store i8* %99, i8** %3, align 8
  br label %100

100:                                              ; preds = %241, %96
  %101 = load i8*, i8** %3, align 8
  %102 = load i8, i8* %101, align 1
  %103 = icmp ne i8 %102, 0
  br i1 %103, label %104, label %242

104:                                              ; preds = %100
  store i32 0, i32* %4, align 4
  %105 = load i8*, i8** %3, align 8
  %106 = load i8, i8* %105, align 1
  %107 = sext i8 %106 to i32
  %108 = and i32 %107, 128
  %109 = icmp eq i32 %108, 0
  br i1 %109, label %110, label %115

110:                                              ; preds = %104
  %111 = load i8*, i8** %3, align 8
  %112 = getelementptr inbounds i8, i8* %111, i32 1
  store i8* %112, i8** %3, align 8
  %113 = load i8, i8* %111, align 1
  %114 = sext i8 %113 to i32
  store i32 %114, i32* %4, align 4
  br label %215

115:                                              ; preds = %104
  %116 = load i8*, i8** %3, align 8
  %117 = load i8, i8* %116, align 1
  %118 = sext i8 %117 to i32
  %119 = and i32 %118, 224
  %120 = icmp eq i32 %119, 192
  br i1 %120, label %121, label %137

121:                                              ; preds = %115
  %122 = load i8*, i8** %3, align 8
  %123 = getelementptr inbounds i8, i8* %122, i32 1
  store i8* %123, i8** %3, align 8
  %124 = load i8, i8* %122, align 1
  %125 = sext i8 %124 to i32
  %126 = and i32 %125, 31
  %127 = shl i32 %126, 6
  %128 = load i32, i32* %4, align 4
  %129 = or i32 %128, %127
  store i32 %129, i32* %4, align 4
  %130 = load i8*, i8** %3, align 8
  %131 = getelementptr inbounds i8, i8* %130, i32 1
  store i8* %131, i8** %3, align 8
  %132 = load i8, i8* %130, align 1
  %133 = sext i8 %132 to i32
  %134 = and i32 %133, 63
  %135 = load i32, i32* %4, align 4
  %136 = or i32 %135, %134
  store i32 %136, i32* %4, align 4
  br label %214

137:                                              ; preds = %115
  %138 = load i8*, i8** %3, align 8
  %139 = load i8, i8* %138, align 1
  %140 = sext i8 %139 to i32
  %141 = and i32 %140, 240
  %142 = icmp eq i32 %141, 224
  br i1 %142, label %143, label %167

143:                                              ; preds = %137
  %144 = load i8*, i8** %3, align 8
  %145 = getelementptr inbounds i8, i8* %144, i32 1
  store i8* %145, i8** %3, align 8
  %146 = load i8, i8* %144, align 1
  %147 = sext i8 %146 to i32
  %148 = and i32 %147, 15
  %149 = shl i32 %148, 12
  %150 = load i32, i32* %4, align 4
  %151 = or i32 %150, %149
  store i32 %151, i32* %4, align 4
  %152 = load i8*, i8** %3, align 8
  %153 = getelementptr inbounds i8, i8* %152, i32 1
  store i8* %153, i8** %3, align 8
  %154 = load i8, i8* %152, align 1
  %155 = sext i8 %154 to i32
  %156 = and i32 %155, 63
  %157 = shl i32 %156, 6
  %158 = load i32, i32* %4, align 4
  %159 = or i32 %158, %157
  store i32 %159, i32* %4, align 4
  %160 = load i8*, i8** %3, align 8
  %161 = getelementptr inbounds i8, i8* %160, i32 1
  store i8* %161, i8** %3, align 8
  %162 = load i8, i8* %160, align 1
  %163 = sext i8 %162 to i32
  %164 = and i32 %163, 63
  %165 = load i32, i32* %4, align 4
  %166 = or i32 %165, %164
  store i32 %166, i32* %4, align 4
  br label %213

167:                                              ; preds = %137
  %168 = load i8*, i8** %3, align 8
  %169 = load i8, i8* %168, align 1
  %170 = sext i8 %169 to i32
  %171 = and i32 %170, 248
  %172 = icmp eq i32 %171, 240
  br i1 %172, label %173, label %205

173:                                              ; preds = %167
  %174 = load i8*, i8** %3, align 8
  %175 = getelementptr inbounds i8, i8* %174, i32 1
  store i8* %175, i8** %3, align 8
  %176 = load i8, i8* %174, align 1
  %177 = sext i8 %176 to i32
  %178 = and i32 %177, 7
  %179 = shl i32 %178, 18
  %180 = load i32, i32* %4, align 4
  %181 = or i32 %180, %179
  store i32 %181, i32* %4, align 4
  %182 = load i8*, i8** %3, align 8
  %183 = getelementptr inbounds i8, i8* %182, i32 1
  store i8* %183, i8** %3, align 8
  %184 = load i8, i8* %182, align 1
  %185 = sext i8 %184 to i32
  %186 = and i32 %185, 63
  %187 = shl i32 %186, 12
  %188 = load i32, i32* %4, align 4
  %189 = or i32 %188, %187
  store i32 %189, i32* %4, align 4
  %190 = load i8*, i8** %3, align 8
  %191 = getelementptr inbounds i8, i8* %190, i32 1
  store i8* %191, i8** %3, align 8
  %192 = load i8, i8* %190, align 1
  %193 = sext i8 %192 to i32
  %194 = and i32 %193, 63
  %195 = shl i32 %194, 6
  %196 = load i32, i32* %4, align 4
  %197 = or i32 %196, %195
  store i32 %197, i32* %4, align 4
  %198 = load i8*, i8** %3, align 8
  %199 = getelementptr inbounds i8, i8* %198, i32 1
  store i8* %199, i8** %3, align 8
  %200 = load i8, i8* %198, align 1
  %201 = sext i8 %200 to i32
  %202 = and i32 %201, 63
  %203 = load i32, i32* %4, align 4
  %204 = or i32 %203, %202
  store i32 %204, i32* %4, align 4
  br label %212

205:                                              ; preds = %167
  %206 = load i8*, i8** %3, align 8
  %207 = load i8, i8* %206, align 1
  %208 = sext i8 %207 to i32
  %209 = call i32 @Com_DPrintf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %208)
  %210 = load i8*, i8** %3, align 8
  %211 = getelementptr inbounds i8, i8* %210, i32 1
  store i8* %211, i8** %3, align 8
  br label %212

212:                                              ; preds = %205, %173
  br label %213

213:                                              ; preds = %212, %143
  br label %214

214:                                              ; preds = %213, %121
  br label %215

215:                                              ; preds = %214, %110
  %216 = load i32, i32* %4, align 4
  %217 = icmp ne i32 %216, 0
  br i1 %217, label %218, label %241

218:                                              ; preds = %215
  %219 = load i32, i32* %4, align 4
  %220 = call i32 @IN_IsConsoleKey(i32 0, i32 %219)
  %221 = icmp ne i32 %220, 0
  br i1 %221, label %222, label %235

222:                                              ; preds = %218
  %223 = load i32, i32* @in_eventTime, align 4
  %224 = load i32, i32* @SE_KEY, align 4
  %225 = load i8, i8* @K_CONSOLE, align 1
  %226 = sext i8 %225 to i32
  %227 = load i32, i32* @qtrue, align 4
  %228 = call i32 @Com_QueueEvent(i32 %223, i32 %224, i32 %226, i32 %227, i32 0, i32* null)
  %229 = load i32, i32* @in_eventTime, align 4
  %230 = load i32, i32* @SE_KEY, align 4
  %231 = load i8, i8* @K_CONSOLE, align 1
  %232 = sext i8 %231 to i32
  %233 = load i32, i32* @qfalse, align 4
  %234 = call i32 @Com_QueueEvent(i32 %229, i32 %230, i32 %232, i32 %233, i32 0, i32* null)
  br label %240

235:                                              ; preds = %218
  %236 = load i32, i32* @in_eventTime, align 4
  %237 = load i32, i32* @SE_CHAR, align 4
  %238 = load i32, i32* %4, align 4
  %239 = call i32 @Com_QueueEvent(i32 %236, i32 %237, i32 %238, i32 0, i32 0, i32* null)
  br label %240

240:                                              ; preds = %235, %222
  br label %241

241:                                              ; preds = %240, %215
  br label %100

242:                                              ; preds = %100
  br label %243

243:                                              ; preds = %242, %90
  br label %392

244:                                              ; preds = %16
  %245 = load i32, i32* @mouseActive, align 4
  %246 = icmp ne i32 %245, 0
  br i1 %246, label %247, label %268

247:                                              ; preds = %244
  %248 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %1, i32 0, i32 4
  %249 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %248, i32 0, i32 0
  %250 = load i32, i32* %249, align 8
  %251 = icmp ne i32 %250, 0
  br i1 %251, label %258, label %252

252:                                              ; preds = %247
  %253 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %1, i32 0, i32 4
  %254 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %253, i32 0, i32 1
  %255 = load i32, i32* %254, align 4
  %256 = icmp ne i32 %255, 0
  br i1 %256, label %258, label %257

257:                                              ; preds = %252
  br label %392

258:                                              ; preds = %252, %247
  %259 = load i32, i32* @in_eventTime, align 4
  %260 = load i32, i32* @SE_MOUSE, align 4
  %261 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %1, i32 0, i32 4
  %262 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %261, i32 0, i32 0
  %263 = load i32, i32* %262, align 8
  %264 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %1, i32 0, i32 4
  %265 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %264, i32 0, i32 1
  %266 = load i32, i32* %265, align 4
  %267 = call i32 @Com_QueueEvent(i32 %259, i32 %260, i32 %263, i32 %266, i32 0, i32* null)
  br label %268

268:                                              ; preds = %258, %244
  br label %392

269:                                              ; preds = %16, %16
  %270 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %1, i32 0, i32 3
  %271 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %270, i32 0, i32 0
  %272 = load i32, i32* %271, align 4
  switch i32 %272, label %283 [
    i32 149, label %273
    i32 148, label %275
    i32 147, label %277
    i32 146, label %279
    i32 145, label %281
  ]

273:                                              ; preds = %269
  %274 = load i32, i32* @K_MOUSE1, align 4
  store i32 %274, i32* %5, align 4
  br label %292

275:                                              ; preds = %269
  %276 = load i32, i32* @K_MOUSE3, align 4
  store i32 %276, i32* %5, align 4
  br label %292

277:                                              ; preds = %269
  %278 = load i32, i32* @K_MOUSE2, align 4
  store i32 %278, i32* %5, align 4
  br label %292

279:                                              ; preds = %269
  %280 = load i32, i32* @K_MOUSE4, align 4
  store i32 %280, i32* %5, align 4
  br label %292

281:                                              ; preds = %269
  %282 = load i32, i32* @K_MOUSE5, align 4
  store i32 %282, i32* %5, align 4
  br label %292

283:                                              ; preds = %269
  %284 = load i32, i32* @K_AUX1, align 4
  %285 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %1, i32 0, i32 3
  %286 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %285, i32 0, i32 0
  %287 = load i32, i32* %286, align 4
  %288 = sub nsw i32 %287, 145
  %289 = add nsw i32 %288, 1
  %290 = srem i32 %289, 16
  %291 = add nsw i32 %284, %290
  store i32 %291, i32* %5, align 4
  br label %292

292:                                              ; preds = %283, %281, %279, %277, %275, %273
  %293 = load i32, i32* @in_eventTime, align 4
  %294 = load i32, i32* @SE_KEY, align 4
  %295 = load i32, i32* %5, align 4
  %296 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %1, i32 0, i32 0
  %297 = load i32, i32* %296, align 8
  %298 = icmp eq i32 %297, 140
  br i1 %298, label %299, label %301

299:                                              ; preds = %292
  %300 = load i32, i32* @qtrue, align 4
  br label %303

301:                                              ; preds = %292
  %302 = load i32, i32* @qfalse, align 4
  br label %303

303:                                              ; preds = %301, %299
  %304 = phi i32 [ %300, %299 ], [ %302, %301 ]
  %305 = call i32 @Com_QueueEvent(i32 %293, i32 %294, i32 %295, i32 %304, i32 0, i32* null)
  br label %392

306:                                              ; preds = %16
  %307 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %1, i32 0, i32 2
  %308 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %307, i32 0, i32 0
  %309 = load i32, i32* %308, align 8
  %310 = icmp sgt i32 %309, 0
  br i1 %310, label %311, label %322

311:                                              ; preds = %306
  %312 = load i32, i32* @in_eventTime, align 4
  %313 = load i32, i32* @SE_KEY, align 4
  %314 = load i32, i32* @K_MWHEELUP, align 4
  %315 = load i32, i32* @qtrue, align 4
  %316 = call i32 @Com_QueueEvent(i32 %312, i32 %313, i32 %314, i32 %315, i32 0, i32* null)
  %317 = load i32, i32* @in_eventTime, align 4
  %318 = load i32, i32* @SE_KEY, align 4
  %319 = load i32, i32* @K_MWHEELUP, align 4
  %320 = load i32, i32* @qfalse, align 4
  %321 = call i32 @Com_QueueEvent(i32 %317, i32 %318, i32 %319, i32 %320, i32 0, i32* null)
  br label %339

322:                                              ; preds = %306
  %323 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %1, i32 0, i32 2
  %324 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %323, i32 0, i32 0
  %325 = load i32, i32* %324, align 8
  %326 = icmp slt i32 %325, 0
  br i1 %326, label %327, label %338

327:                                              ; preds = %322
  %328 = load i32, i32* @in_eventTime, align 4
  %329 = load i32, i32* @SE_KEY, align 4
  %330 = load i32, i32* @K_MWHEELDOWN, align 4
  %331 = load i32, i32* @qtrue, align 4
  %332 = call i32 @Com_QueueEvent(i32 %328, i32 %329, i32 %330, i32 %331, i32 0, i32* null)
  %333 = load i32, i32* @in_eventTime, align 4
  %334 = load i32, i32* @SE_KEY, align 4
  %335 = load i32, i32* @K_MWHEELDOWN, align 4
  %336 = load i32, i32* @qfalse, align 4
  %337 = call i32 @Com_QueueEvent(i32 %333, i32 %334, i32 %335, i32 %336, i32 0, i32* null)
  br label %338

338:                                              ; preds = %327, %322
  br label %339

339:                                              ; preds = %338, %311
  br label %392

340:                                              ; preds = %16, %16
  %341 = load %struct.TYPE_13__*, %struct.TYPE_13__** @in_joystick, align 8
  %342 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %341, i32 0, i32 0
  %343 = load i32, i32* %342, align 4
  %344 = icmp ne i32 %343, 0
  br i1 %344, label %345, label %347

345:                                              ; preds = %340
  %346 = call i32 (...) @IN_InitJoystick()
  br label %347

347:                                              ; preds = %345, %340
  br label %392

348:                                              ; preds = %16
  %349 = load i32, i32* @EXEC_NOW, align 4
  %350 = call i32 @Cbuf_ExecuteText(i32 %349, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  br label %392

351:                                              ; preds = %16
  %352 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %1, i32 0, i32 1
  %353 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %352, i32 0, i32 2
  %354 = load i32, i32* %353, align 4
  switch i32 %354, label %390 [
    i32 129, label %355
    i32 130, label %382
    i32 128, label %384
    i32 131, label %384
    i32 132, label %386
    i32 133, label %388
  ]

355:                                              ; preds = %351
  %356 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %1, i32 0, i32 1
  %357 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %356, i32 0, i32 0
  %358 = load i32, i32* %357, align 4
  store i32 %358, i32* %6, align 4
  %359 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %1, i32 0, i32 1
  %360 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %359, i32 0, i32 1
  %361 = load i32, i32* %360, align 4
  store i32 %361, i32* %7, align 4
  %362 = load i32, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @cls, i32 0, i32 0, i32 2), align 4
  %363 = icmp ne i32 %362, 0
  br i1 %363, label %364, label %365

364:                                              ; preds = %355
  br label %390

365:                                              ; preds = %355
  %366 = load i32, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @cls, i32 0, i32 0, i32 0), align 4
  %367 = load i32, i32* %6, align 4
  %368 = icmp eq i32 %366, %367
  br i1 %368, label %369, label %374

369:                                              ; preds = %365
  %370 = load i32, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @cls, i32 0, i32 0, i32 1), align 4
  %371 = load i32, i32* %7, align 4
  %372 = icmp eq i32 %370, %371
  br i1 %372, label %373, label %374

373:                                              ; preds = %369
  br label %390

374:                                              ; preds = %369, %365
  %375 = load i32, i32* %6, align 4
  %376 = call i32 @Cvar_SetValue(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0), i32 %375)
  %377 = load i32, i32* %7, align 4
  %378 = call i32 @Cvar_SetValue(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0), i32 %377)
  %379 = call i32 @Cvar_Set(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0))
  %380 = call i32 (...) @Sys_Milliseconds()
  %381 = add nsw i32 %380, 1000
  store i32 %381, i32* @vidRestartTime, align 4
  br label %390

382:                                              ; preds = %351
  %383 = call i32 @Cvar_SetValue(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i64 0, i64 0), i32 1)
  br label %390

384:                                              ; preds = %351, %351
  %385 = call i32 @Cvar_SetValue(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i64 0, i64 0), i32 0)
  br label %390

386:                                              ; preds = %351
  %387 = call i32 @Cvar_SetValue(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i64 0, i64 0), i32 1)
  br label %390

388:                                              ; preds = %351
  %389 = call i32 @Cvar_SetValue(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i64 0, i64 0), i32 0)
  br label %390

390:                                              ; preds = %351, %388, %386, %384, %382, %374, %373, %364
  br label %392

391:                                              ; preds = %16
  br label %392

392:                                              ; preds = %391, %390, %348, %347, %339, %303, %268, %257, %243, %89, %74, %27
  br label %13

393:                                              ; preds = %11, %13
  ret void
}

declare dso_local i32 @SDL_WasInit(i32) #1

declare dso_local i64 @SDL_PollEvent(%struct.TYPE_22__*) #1

declare dso_local i32 @Key_GetCatcher(...) #1

declare dso_local signext i8 @IN_TranslateSDLToQ3Key(i32*, i32) #1

declare dso_local i32 @Com_QueueEvent(i32, i32, i32, i32, i32, i32*) #1

declare dso_local i32 @CTRL(i8 signext) #1

declare dso_local i32 @Com_DPrintf(i8*, i32) #1

declare dso_local i32 @IN_IsConsoleKey(i32, i32) #1

declare dso_local i32 @IN_InitJoystick(...) #1

declare dso_local i32 @Cbuf_ExecuteText(i32, i8*) #1

declare dso_local i32 @Cvar_SetValue(i8*, i32) #1

declare dso_local i32 @Cvar_Set(i8*, i8*) #1

declare dso_local i32 @Sys_Milliseconds(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
