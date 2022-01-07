; ModuleID = '/home/carl/AnghaBench/lab/engine/code/qcommon/extr_common.c_Com_Frame.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/qcommon/extr_common.c_Com_Frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { i64 }
%struct.TYPE_17__ = type { i32 }
%struct.TYPE_13__ = type { i64, i8* }
%struct.TYPE_21__ = type { i64 }
%struct.TYPE_23__ = type { i32 }
%struct.TYPE_16__ = type { i64 }
%struct.TYPE_22__ = type { i32 }
%struct.TYPE_24__ = type { i32 }
%struct.TYPE_18__ = type { i64 }
%struct.TYPE_14__ = type { i64 }
%struct.TYPE_15__ = type { i8* }
%struct.TYPE_20__ = type { i64 }

@Com_Frame.lastTime = internal global i32 0, align 4
@Com_Frame.bias = internal global i32 0, align 4
@abortframe = common dso_local global i32 0, align 4
@com_speeds = common dso_local global %struct.TYPE_19__* null, align 8
@com_timedemo = common dso_local global %struct.TYPE_17__* null, align 8
@com_dedicated = common dso_local global %struct.TYPE_13__* null, align 8
@com_minimized = common dso_local global %struct.TYPE_21__* null, align 8
@com_maxfpsMinimized = common dso_local global %struct.TYPE_23__* null, align 8
@com_unfocused = common dso_local global %struct.TYPE_16__* null, align 8
@com_maxfpsUnfocused = common dso_local global %struct.TYPE_22__* null, align 8
@com_maxfps = common dso_local global %struct.TYPE_24__* null, align 8
@com_frameTime = common dso_local global i32 0, align 4
@com_sv_running = common dso_local global %struct.TYPE_18__* null, align 8
@com_busyWait = common dso_local global %struct.TYPE_14__* null, align 8
@com_altivec = common dso_local global %struct.TYPE_15__* null, align 8
@qfalse = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [10 x i8] c"dedicated\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"dedicated set to 0\00", align 1
@time_game = common dso_local global i64 0, align 8
@time_frontend = common dso_local global i64 0, align 8
@time_backend = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [60 x i8] c"frame:%i all:%3i sv:%3i ev:%3i cl:%3i gm:%3i rf:%3i bk:%3i\0A\00", align 1
@com_frameNumber = common dso_local global i32 0, align 4
@com_showtrace = common dso_local global %struct.TYPE_20__* null, align 8
@.str.4 = private unnamed_addr constant [34 x i8] c"%4i traces  (%ib %ip) %4i points\0A\00", align 1
@c_traces = external dso_local global i32, align 4
@c_brush_traces = external dso_local global i32, align 4
@c_patch_traces = external dso_local global i32, align 4
@c_pointcontents = external dso_local global i32, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @Com_Frame() #0 {
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
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = load i32, i32* @abortframe, align 4
  %15 = call i64 @setjmp(i32 %14) #3
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %0
  br label %276

18:                                               ; preds = %0
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %19 = call i32 (...) @Com_WriteConfiguration()
  %20 = load %struct.TYPE_19__*, %struct.TYPE_19__** @com_speeds, align 8
  %21 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %18
  %25 = call i32 (...) @Sys_Milliseconds()
  store i32 %25, i32* %5, align 4
  br label %26

26:                                               ; preds = %24, %18
  %27 = load %struct.TYPE_17__*, %struct.TYPE_17__** @com_timedemo, align 8
  %28 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %100, label %31

31:                                               ; preds = %26
  %32 = load %struct.TYPE_13__*, %struct.TYPE_13__** @com_dedicated, align 8
  %33 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %31
  %37 = call i32 (...) @SV_FrameMsec()
  store i32 %37, i32* %2, align 4
  br label %99

38:                                               ; preds = %31
  %39 = load %struct.TYPE_21__*, %struct.TYPE_21__** @com_minimized, align 8
  %40 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %53

43:                                               ; preds = %38
  %44 = load %struct.TYPE_23__*, %struct.TYPE_23__** @com_maxfpsMinimized, align 8
  %45 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = icmp sgt i32 %46, 0
  br i1 %47, label %48, label %53

48:                                               ; preds = %43
  %49 = load %struct.TYPE_23__*, %struct.TYPE_23__** @com_maxfpsMinimized, align 8
  %50 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = sdiv i32 1000, %51
  store i32 %52, i32* %2, align 4
  br label %81

53:                                               ; preds = %43, %38
  %54 = load %struct.TYPE_16__*, %struct.TYPE_16__** @com_unfocused, align 8
  %55 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %68

58:                                               ; preds = %53
  %59 = load %struct.TYPE_22__*, %struct.TYPE_22__** @com_maxfpsUnfocused, align 8
  %60 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = icmp sgt i32 %61, 0
  br i1 %62, label %63, label %68

63:                                               ; preds = %58
  %64 = load %struct.TYPE_22__*, %struct.TYPE_22__** @com_maxfpsUnfocused, align 8
  %65 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = sdiv i32 1000, %66
  store i32 %67, i32* %2, align 4
  br label %80

68:                                               ; preds = %58, %53
  %69 = load %struct.TYPE_24__*, %struct.TYPE_24__** @com_maxfps, align 8
  %70 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = icmp sgt i32 %71, 0
  br i1 %72, label %73, label %78

73:                                               ; preds = %68
  %74 = load %struct.TYPE_24__*, %struct.TYPE_24__** @com_maxfps, align 8
  %75 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = sdiv i32 1000, %76
  store i32 %77, i32* %2, align 4
  br label %79

78:                                               ; preds = %68
  store i32 1, i32* %2, align 4
  br label %79

79:                                               ; preds = %78, %73
  br label %80

80:                                               ; preds = %79, %63
  br label %81

81:                                               ; preds = %80, %48
  %82 = load i32, i32* @com_frameTime, align 4
  %83 = load i32, i32* @Com_Frame.lastTime, align 4
  %84 = sub nsw i32 %82, %83
  store i32 %84, i32* %3, align 4
  %85 = load i32, i32* %3, align 4
  %86 = load i32, i32* %2, align 4
  %87 = sub nsw i32 %85, %86
  %88 = load i32, i32* @Com_Frame.bias, align 4
  %89 = add nsw i32 %88, %87
  store i32 %89, i32* @Com_Frame.bias, align 4
  %90 = load i32, i32* @Com_Frame.bias, align 4
  %91 = load i32, i32* %2, align 4
  %92 = icmp sgt i32 %90, %91
  br i1 %92, label %93, label %95

93:                                               ; preds = %81
  %94 = load i32, i32* %2, align 4
  store i32 %94, i32* @Com_Frame.bias, align 4
  br label %95

95:                                               ; preds = %93, %81
  %96 = load i32, i32* @Com_Frame.bias, align 4
  %97 = load i32, i32* %2, align 4
  %98 = sub nsw i32 %97, %96
  store i32 %98, i32* %2, align 4
  br label %99

99:                                               ; preds = %95, %36
  br label %101

100:                                              ; preds = %26
  store i32 1, i32* %2, align 4
  br label %101

101:                                              ; preds = %100, %99
  br label %102

102:                                              ; preds = %144, %101
  %103 = load %struct.TYPE_18__*, %struct.TYPE_18__** @com_sv_running, align 8
  %104 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %103, i32 0, i32 0
  %105 = load i64, i64* %104, align 8
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %117

107:                                              ; preds = %102
  %108 = call i32 (...) @SV_SendQueuedPackets()
  store i32 %108, i32* %4, align 4
  %109 = load i32, i32* %2, align 4
  %110 = call i32 @Com_TimeVal(i32 %109)
  store i32 %110, i32* %3, align 4
  %111 = load i32, i32* %4, align 4
  %112 = load i32, i32* %3, align 4
  %113 = icmp slt i32 %111, %112
  br i1 %113, label %114, label %116

114:                                              ; preds = %107
  %115 = load i32, i32* %4, align 4
  store i32 %115, i32* %3, align 4
  br label %116

116:                                              ; preds = %114, %107
  br label %120

117:                                              ; preds = %102
  %118 = load i32, i32* %2, align 4
  %119 = call i32 @Com_TimeVal(i32 %118)
  store i32 %119, i32* %3, align 4
  br label %120

120:                                              ; preds = %117, %116
  %121 = load %struct.TYPE_14__*, %struct.TYPE_14__** @com_busyWait, align 8
  %122 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %121, i32 0, i32 0
  %123 = load i64, i64* %122, align 8
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %128, label %125

125:                                              ; preds = %120
  %126 = load i32, i32* %3, align 4
  %127 = icmp slt i32 %126, 1
  br i1 %127, label %128, label %130

128:                                              ; preds = %125, %120
  %129 = call i32 @NET_Sleep(i32 0)
  br label %134

130:                                              ; preds = %125
  %131 = load i32, i32* %3, align 4
  %132 = sub nsw i32 %131, 1
  %133 = call i32 @NET_Sleep(i32 %132)
  br label %134

134:                                              ; preds = %130, %128
  br label %135

135:                                              ; preds = %134
  %136 = load %struct.TYPE_24__*, %struct.TYPE_24__** @com_maxfps, align 8
  %137 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 4
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %140, label %144

140:                                              ; preds = %135
  %141 = load i32, i32* %2, align 4
  %142 = call i32 @Com_TimeVal(i32 %141)
  %143 = icmp ne i32 %142, 0
  br label %144

144:                                              ; preds = %140, %135
  %145 = phi i1 [ false, %135 ], [ %143, %140 ]
  br i1 %145, label %102, label %146

146:                                              ; preds = %144
  %147 = call i32 (...) @IN_Frame()
  %148 = load i32, i32* @com_frameTime, align 4
  store i32 %148, i32* @Com_Frame.lastTime, align 4
  %149 = call i32 (...) @Com_EventLoop()
  store i32 %149, i32* @com_frameTime, align 4
  %150 = load i32, i32* @com_frameTime, align 4
  %151 = load i32, i32* @Com_Frame.lastTime, align 4
  %152 = sub nsw i32 %150, %151
  store i32 %152, i32* %1, align 4
  %153 = call i32 (...) @Cbuf_Execute()
  %154 = load %struct.TYPE_15__*, %struct.TYPE_15__** @com_altivec, align 8
  %155 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %154, i32 0, i32 0
  %156 = load i8*, i8** %155, align 8
  %157 = icmp ne i8* %156, null
  br i1 %157, label %158, label %163

158:                                              ; preds = %146
  %159 = call i32 (...) @Com_DetectAltivec()
  %160 = load i8*, i8** @qfalse, align 8
  %161 = load %struct.TYPE_15__*, %struct.TYPE_15__** @com_altivec, align 8
  %162 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %161, i32 0, i32 0
  store i8* %160, i8** %162, align 8
  br label %163

163:                                              ; preds = %158, %146
  %164 = load i32, i32* %1, align 4
  %165 = call i32 @Com_ModifyMsec(i32 %164)
  store i32 %165, i32* %1, align 4
  %166 = load %struct.TYPE_19__*, %struct.TYPE_19__** @com_speeds, align 8
  %167 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %166, i32 0, i32 0
  %168 = load i64, i64* %167, align 8
  %169 = icmp ne i64 %168, 0
  br i1 %169, label %170, label %172

170:                                              ; preds = %163
  %171 = call i32 (...) @Sys_Milliseconds()
  store i32 %171, i32* %6, align 4
  br label %172

172:                                              ; preds = %170, %163
  %173 = load i32, i32* %1, align 4
  %174 = call i32 @SV_Frame(i32 %173)
  %175 = load %struct.TYPE_13__*, %struct.TYPE_13__** @com_dedicated, align 8
  %176 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %175, i32 0, i32 1
  %177 = load i8*, i8** %176, align 8
  %178 = icmp ne i8* %177, null
  br i1 %178, label %179, label %192

179:                                              ; preds = %172
  %180 = call i32 @Cvar_Get(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i32 0)
  %181 = load i8*, i8** @qfalse, align 8
  %182 = load %struct.TYPE_13__*, %struct.TYPE_13__** @com_dedicated, align 8
  %183 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %182, i32 0, i32 1
  store i8* %181, i8** %183, align 8
  %184 = load %struct.TYPE_13__*, %struct.TYPE_13__** @com_dedicated, align 8
  %185 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %184, i32 0, i32 0
  %186 = load i64, i64* %185, align 8
  %187 = icmp ne i64 %186, 0
  br i1 %187, label %191, label %188

188:                                              ; preds = %179
  %189 = call i32 @SV_Shutdown(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0))
  %190 = call i32 (...) @CL_FlushMemory()
  br label %191

191:                                              ; preds = %188, %179
  br label %192

192:                                              ; preds = %191, %172
  %193 = load %struct.TYPE_19__*, %struct.TYPE_19__** @com_speeds, align 8
  %194 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %193, i32 0, i32 0
  %195 = load i64, i64* %194, align 8
  %196 = icmp ne i64 %195, 0
  br i1 %196, label %197, label %199

197:                                              ; preds = %192
  %198 = call i32 (...) @Sys_Milliseconds()
  store i32 %198, i32* %7, align 4
  br label %199

199:                                              ; preds = %197, %192
  %200 = call i32 (...) @Com_EventLoop()
  %201 = call i32 (...) @Cbuf_Execute()
  %202 = load %struct.TYPE_19__*, %struct.TYPE_19__** @com_speeds, align 8
  %203 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %202, i32 0, i32 0
  %204 = load i64, i64* %203, align 8
  %205 = icmp ne i64 %204, 0
  br i1 %205, label %206, label %208

206:                                              ; preds = %199
  %207 = call i32 (...) @Sys_Milliseconds()
  store i32 %207, i32* %8, align 4
  br label %208

208:                                              ; preds = %206, %199
  %209 = load i32, i32* %1, align 4
  %210 = call i32 @CL_Frame(i32 %209)
  %211 = load %struct.TYPE_19__*, %struct.TYPE_19__** @com_speeds, align 8
  %212 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %211, i32 0, i32 0
  %213 = load i64, i64* %212, align 8
  %214 = icmp ne i64 %213, 0
  br i1 %214, label %215, label %217

215:                                              ; preds = %208
  %216 = call i32 (...) @Sys_Milliseconds()
  store i32 %216, i32* %9, align 4
  br label %217

217:                                              ; preds = %215, %208
  %218 = call i32 (...) @NET_FlushPacketQueue()
  %219 = load %struct.TYPE_19__*, %struct.TYPE_19__** @com_speeds, align 8
  %220 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %219, i32 0, i32 0
  %221 = load i64, i64* %220, align 8
  %222 = icmp ne i64 %221, 0
  br i1 %222, label %223, label %261

223:                                              ; preds = %217
  %224 = load i32, i32* %9, align 4
  %225 = load i32, i32* %6, align 4
  %226 = sub nsw i32 %224, %225
  store i32 %226, i32* %10, align 4
  %227 = load i32, i32* %7, align 4
  %228 = load i32, i32* %6, align 4
  %229 = sub nsw i32 %227, %228
  store i32 %229, i32* %11, align 4
  %230 = load i32, i32* %6, align 4
  %231 = load i32, i32* %5, align 4
  %232 = sub nsw i32 %230, %231
  %233 = load i32, i32* %8, align 4
  %234 = add nsw i32 %232, %233
  %235 = load i32, i32* %7, align 4
  %236 = sub nsw i32 %234, %235
  store i32 %236, i32* %12, align 4
  %237 = load i32, i32* %9, align 4
  %238 = load i32, i32* %8, align 4
  %239 = sub nsw i32 %237, %238
  store i32 %239, i32* %13, align 4
  %240 = load i64, i64* @time_game, align 8
  %241 = load i32, i32* %11, align 4
  %242 = sext i32 %241 to i64
  %243 = sub nsw i64 %242, %240
  %244 = trunc i64 %243 to i32
  store i32 %244, i32* %11, align 4
  %245 = load i64, i64* @time_frontend, align 8
  %246 = load i64, i64* @time_backend, align 8
  %247 = add nsw i64 %245, %246
  %248 = load i32, i32* %13, align 4
  %249 = sext i32 %248 to i64
  %250 = sub nsw i64 %249, %247
  %251 = trunc i64 %250 to i32
  store i32 %251, i32* %13, align 4
  %252 = load i32, i32* @com_frameNumber, align 4
  %253 = load i32, i32* %10, align 4
  %254 = load i32, i32* %11, align 4
  %255 = load i32, i32* %12, align 4
  %256 = load i32, i32* %13, align 4
  %257 = load i64, i64* @time_game, align 8
  %258 = load i64, i64* @time_frontend, align 8
  %259 = load i64, i64* @time_backend, align 8
  %260 = call i32 (i8*, i32, i32, i32, i32, ...) @Com_Printf(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.3, i64 0, i64 0), i32 %252, i32 %253, i32 %254, i32 %255, i32 %256, i64 %257, i64 %258, i64 %259)
  br label %261

261:                                              ; preds = %223, %217
  %262 = load %struct.TYPE_20__*, %struct.TYPE_20__** @com_showtrace, align 8
  %263 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %262, i32 0, i32 0
  %264 = load i64, i64* %263, align 8
  %265 = icmp ne i64 %264, 0
  br i1 %265, label %266, label %272

266:                                              ; preds = %261
  %267 = load i32, i32* @c_traces, align 4
  %268 = load i32, i32* @c_brush_traces, align 4
  %269 = load i32, i32* @c_patch_traces, align 4
  %270 = load i32, i32* @c_pointcontents, align 4
  %271 = call i32 (i8*, i32, i32, i32, i32, ...) @Com_Printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.4, i64 0, i64 0), i32 %267, i32 %268, i32 %269, i32 %270)
  store i32 0, i32* @c_traces, align 4
  store i32 0, i32* @c_brush_traces, align 4
  store i32 0, i32* @c_patch_traces, align 4
  store i32 0, i32* @c_pointcontents, align 4
  br label %272

272:                                              ; preds = %266, %261
  %273 = call i32 (...) @Com_ReadFromPipe()
  %274 = load i32, i32* @com_frameNumber, align 4
  %275 = add nsw i32 %274, 1
  store i32 %275, i32* @com_frameNumber, align 4
  br label %276

276:                                              ; preds = %272, %17
  ret void
}

; Function Attrs: returns_twice
declare dso_local i64 @setjmp(i32) #1

declare dso_local i32 @Com_WriteConfiguration(...) #2

declare dso_local i32 @Sys_Milliseconds(...) #2

declare dso_local i32 @SV_FrameMsec(...) #2

declare dso_local i32 @SV_SendQueuedPackets(...) #2

declare dso_local i32 @Com_TimeVal(i32) #2

declare dso_local i32 @NET_Sleep(i32) #2

declare dso_local i32 @IN_Frame(...) #2

declare dso_local i32 @Com_EventLoop(...) #2

declare dso_local i32 @Cbuf_Execute(...) #2

declare dso_local i32 @Com_DetectAltivec(...) #2

declare dso_local i32 @Com_ModifyMsec(i32) #2

declare dso_local i32 @SV_Frame(i32) #2

declare dso_local i32 @Cvar_Get(i8*, i8*, i32) #2

declare dso_local i32 @SV_Shutdown(i8*) #2

declare dso_local i32 @CL_FlushMemory(...) #2

declare dso_local i32 @CL_Frame(i32) #2

declare dso_local i32 @NET_FlushPacketQueue(...) #2

declare dso_local i32 @Com_Printf(i8*, i32, i32, i32, i32, ...) #2

declare dso_local i32 @Com_ReadFromPipe(...) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { returns_twice "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { returns_twice }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
