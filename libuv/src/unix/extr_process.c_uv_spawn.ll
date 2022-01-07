; ModuleID = '/home/carl/AnghaBench/libuv/src/unix/extr_process.c_uv_spawn.c'
source_filename = "/home/carl/AnghaBench/libuv/src/unix/extr_process.c_uv_spawn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i32, i32, i32 }
%struct.TYPE_13__ = type { i32, i32, i32, i32 }
%struct.TYPE_14__ = type { i32, i32, %struct.TYPE_16__*, i32, i32* }
%struct.TYPE_16__ = type { i32 }

@__const.uv_spawn.signal_pipe = private unnamed_addr constant [2 x i32] [i32 -1, i32 -1], align 4
@UV_PROCESS_DETACHED = common dso_local global i32 0, align 4
@UV_PROCESS_SETGID = common dso_local global i32 0, align 4
@UV_PROCESS_SETUID = common dso_local global i32 0, align 4
@UV_PROCESS_WINDOWS_HIDE = common dso_local global i32 0, align 4
@UV_PROCESS_WINDOWS_HIDE_CONSOLE = common dso_local global i32 0, align 4
@UV_PROCESS_WINDOWS_HIDE_GUI = common dso_local global i32 0, align 4
@UV_PROCESS_WINDOWS_VERBATIM_ARGUMENTS = common dso_local global i32 0, align 4
@UV_PROCESS = common dso_local global i32 0, align 4
@UV_ENOMEM = common dso_local global i32 0, align 4
@uv__chld = common dso_local global i32 0, align 4
@SIGCHLD = common dso_local global i32 0, align 4
@errno = common dso_local global i64 0, align 8
@EINTR = common dso_local global i64 0, align 8
@EPIPE = common dso_local global i64 0, align 8
@UV_INHERIT_FD = common dso_local global i32 0, align 4
@UV_INHERIT_STREAM = common dso_local global i32 0, align 4
@UV_ENOSYS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @uv_spawn(%struct.TYPE_15__* %0, %struct.TYPE_13__* %1, %struct.TYPE_14__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_15__*, align 8
  %6 = alloca %struct.TYPE_13__*, align 8
  %7 = alloca %struct.TYPE_14__*, align 8
  %8 = alloca [2 x i32], align 4
  %9 = alloca [8 x [2 x i32]], align 16
  %10 = alloca [2 x i32]*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %5, align 8
  store %struct.TYPE_13__* %1, %struct.TYPE_13__** %6, align 8
  store %struct.TYPE_14__* %2, %struct.TYPE_14__** %7, align 8
  %18 = bitcast [2 x i32]* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %18, i8* align 4 bitcast ([2 x i32]* @__const.uv_spawn.signal_pipe to i8*), i64 8, i1 false)
  %19 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %20 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %19, i32 0, i32 4
  %21 = load i32*, i32** %20, align 8
  %22 = icmp ne i32* %21, null
  %23 = zext i1 %22 to i32
  %24 = call i32 @assert(i32 %23)
  %25 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %26 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* @UV_PROCESS_DETACHED, align 4
  %29 = load i32, i32* @UV_PROCESS_SETGID, align 4
  %30 = or i32 %28, %29
  %31 = load i32, i32* @UV_PROCESS_SETUID, align 4
  %32 = or i32 %30, %31
  %33 = load i32, i32* @UV_PROCESS_WINDOWS_HIDE, align 4
  %34 = or i32 %32, %33
  %35 = load i32, i32* @UV_PROCESS_WINDOWS_HIDE_CONSOLE, align 4
  %36 = or i32 %34, %35
  %37 = load i32, i32* @UV_PROCESS_WINDOWS_HIDE_GUI, align 4
  %38 = or i32 %36, %37
  %39 = load i32, i32* @UV_PROCESS_WINDOWS_VERBATIM_ARGUMENTS, align 4
  %40 = or i32 %38, %39
  %41 = xor i32 %40, -1
  %42 = and i32 %27, %41
  %43 = icmp ne i32 %42, 0
  %44 = xor i1 %43, true
  %45 = zext i1 %44 to i32
  %46 = call i32 @assert(i32 %45)
  %47 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %48 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %49 = bitcast %struct.TYPE_13__* %48 to i32*
  %50 = load i32, i32* @UV_PROCESS, align 4
  %51 = call i32 @uv__handle_init(%struct.TYPE_15__* %47, i32* %49, i32 %50)
  %52 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %53 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %52, i32 0, i32 2
  %54 = call i32 @QUEUE_INIT(i32* %53)
  %55 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %56 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  store i32 %57, i32* %11, align 4
  %58 = load i32, i32* %11, align 4
  %59 = icmp slt i32 %58, 3
  br i1 %59, label %60, label %61

60:                                               ; preds = %3
  store i32 3, i32* %11, align 4
  br label %61

61:                                               ; preds = %60, %3
  %62 = load i32, i32* @UV_ENOMEM, align 4
  store i32 %62, i32* %14, align 4
  %63 = getelementptr inbounds [8 x [2 x i32]], [8 x [2 x i32]]* %9, i64 0, i64 0
  store [2 x i32]* %63, [2 x i32]** %10, align 8
  %64 = load i32, i32* %11, align 4
  %65 = getelementptr inbounds [8 x [2 x i32]], [8 x [2 x i32]]* %9, i64 0, i64 0
  %66 = bitcast [2 x i32]* %65 to i32**
  %67 = call i64 @ARRAY_SIZE(i32** %66)
  %68 = trunc i64 %67 to i32
  %69 = icmp sgt i32 %64, %68
  br i1 %69, label %70, label %77

70:                                               ; preds = %61
  %71 = load i32, i32* %11, align 4
  %72 = sext i32 %71 to i64
  %73 = mul i64 %72, 8
  %74 = trunc i64 %73 to i32
  %75 = call i32** @uv__malloc(i32 %74)
  %76 = bitcast i32** %75 to [2 x i32]*
  store [2 x i32]* %76, [2 x i32]** %10, align 8
  br label %77

77:                                               ; preds = %70, %61
  %78 = load [2 x i32]*, [2 x i32]** %10, align 8
  %79 = icmp eq [2 x i32]* %78, null
  br i1 %79, label %80, label %81

80:                                               ; preds = %77
  br label %320

81:                                               ; preds = %77
  store i32 0, i32* %16, align 4
  br label %82

82:                                               ; preds = %97, %81
  %83 = load i32, i32* %16, align 4
  %84 = load i32, i32* %11, align 4
  %85 = icmp slt i32 %83, %84
  br i1 %85, label %86, label %100

86:                                               ; preds = %82
  %87 = load [2 x i32]*, [2 x i32]** %10, align 8
  %88 = load i32, i32* %16, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds [2 x i32], [2 x i32]* %87, i64 %89
  %91 = getelementptr inbounds [2 x i32], [2 x i32]* %90, i64 0, i64 0
  store i32 -1, i32* %91, align 4
  %92 = load [2 x i32]*, [2 x i32]** %10, align 8
  %93 = load i32, i32* %16, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds [2 x i32], [2 x i32]* %92, i64 %94
  %96 = getelementptr inbounds [2 x i32], [2 x i32]* %95, i64 0, i64 1
  store i32 -1, i32* %96, align 4
  br label %97

97:                                               ; preds = %86
  %98 = load i32, i32* %16, align 4
  %99 = add nsw i32 %98, 1
  store i32 %99, i32* %16, align 4
  br label %82

100:                                              ; preds = %82
  store i32 0, i32* %16, align 4
  br label %101

101:                                              ; preds = %124, %100
  %102 = load i32, i32* %16, align 4
  %103 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %104 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 4
  %106 = icmp slt i32 %102, %105
  br i1 %106, label %107, label %127

107:                                              ; preds = %101
  %108 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %109 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %108, i32 0, i32 2
  %110 = load %struct.TYPE_16__*, %struct.TYPE_16__** %109, align 8
  %111 = load i32, i32* %16, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %110, i64 %112
  %114 = load [2 x i32]*, [2 x i32]** %10, align 8
  %115 = load i32, i32* %16, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds [2 x i32], [2 x i32]* %114, i64 %116
  %118 = getelementptr inbounds [2 x i32], [2 x i32]* %117, i64 0, i64 0
  %119 = call i32 @uv__process_init_stdio(%struct.TYPE_16__* %113, i32* %118)
  store i32 %119, i32* %14, align 4
  %120 = load i32, i32* %14, align 4
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %123

122:                                              ; preds = %107
  br label %320

123:                                              ; preds = %107
  br label %124

124:                                              ; preds = %123
  %125 = load i32, i32* %16, align 4
  %126 = add nsw i32 %125, 1
  store i32 %126, i32* %16, align 4
  br label %101

127:                                              ; preds = %101
  %128 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 0
  %129 = call i32 @uv__make_pipe(i32* %128, i32 0)
  store i32 %129, i32* %14, align 4
  %130 = load i32, i32* %14, align 4
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %133

132:                                              ; preds = %127
  br label %320

133:                                              ; preds = %127
  %134 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %135 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %134, i32 0, i32 2
  %136 = load i32, i32* @uv__chld, align 4
  %137 = load i32, i32* @SIGCHLD, align 4
  %138 = call i32 @uv_signal_start(i32* %135, i32 %136, i32 %137)
  %139 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %140 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %139, i32 0, i32 1
  %141 = call i32 @uv_rwlock_wrlock(i32* %140)
  %142 = call i32 (...) @fork()
  store i32 %142, i32* %13, align 4
  %143 = load i32, i32* %13, align 4
  %144 = icmp eq i32 %143, -1
  br i1 %144, label %145, label %157

145:                                              ; preds = %133
  %146 = load i64, i64* @errno, align 8
  %147 = call i32 @UV__ERR(i64 %146)
  store i32 %147, i32* %14, align 4
  %148 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %149 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %148, i32 0, i32 1
  %150 = call i32 @uv_rwlock_wrunlock(i32* %149)
  %151 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 0
  %152 = load i32, i32* %151, align 4
  %153 = call i32 @uv__close(i32 %152)
  %154 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 1
  %155 = load i32, i32* %154, align 4
  %156 = call i32 @uv__close(i32 %155)
  br label %320

157:                                              ; preds = %133
  %158 = load i32, i32* %13, align 4
  %159 = icmp eq i32 %158, 0
  br i1 %159, label %160, label %169

160:                                              ; preds = %157
  %161 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %162 = load i32, i32* %11, align 4
  %163 = load [2 x i32]*, [2 x i32]** %10, align 8
  %164 = bitcast [2 x i32]* %163 to i32**
  %165 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 1
  %166 = load i32, i32* %165, align 4
  %167 = call i32 @uv__process_child_init(%struct.TYPE_14__* %161, i32 %162, i32** %164, i32 %166)
  %168 = call i32 (...) @abort() #4
  unreachable

169:                                              ; preds = %157
  %170 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %171 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %170, i32 0, i32 1
  %172 = call i32 @uv_rwlock_wrunlock(i32* %171)
  %173 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 1
  %174 = load i32, i32* %173, align 4
  %175 = call i32 @uv__close(i32 %174)
  %176 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %177 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %176, i32 0, i32 3
  store i32 0, i32* %177, align 4
  store i32 0, i32* %15, align 4
  br label %178

178:                                              ; preds = %189, %169
  %179 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 0
  %180 = load i32, i32* %179, align 4
  %181 = call i32 @read(i32 %180, i32* %15, i32 4)
  store i32 %181, i32* %12, align 4
  br label %182

182:                                              ; preds = %178
  %183 = load i32, i32* %12, align 4
  %184 = icmp eq i32 %183, -1
  br i1 %184, label %185, label %189

185:                                              ; preds = %182
  %186 = load i64, i64* @errno, align 8
  %187 = load i64, i64* @EINTR, align 8
  %188 = icmp eq i64 %186, %187
  br label %189

189:                                              ; preds = %185, %182
  %190 = phi i1 [ false, %182 ], [ %188, %185 ]
  br i1 %190, label %178, label %191

191:                                              ; preds = %189
  %192 = load i32, i32* %12, align 4
  %193 = icmp eq i32 %192, 0
  br i1 %193, label %194, label %195

194:                                              ; preds = %191
  br label %248

195:                                              ; preds = %191
  %196 = load i32, i32* %12, align 4
  %197 = sext i32 %196 to i64
  %198 = icmp eq i64 %197, 4
  br i1 %198, label %199, label %218

199:                                              ; preds = %195
  br label %200

200:                                              ; preds = %210, %199
  %201 = load i32, i32* %13, align 4
  %202 = call i32 @waitpid(i32 %201, i32* %17, i32 0)
  store i32 %202, i32* %14, align 4
  br label %203

203:                                              ; preds = %200
  %204 = load i32, i32* %14, align 4
  %205 = icmp eq i32 %204, -1
  br i1 %205, label %206, label %210

206:                                              ; preds = %203
  %207 = load i64, i64* @errno, align 8
  %208 = load i64, i64* @EINTR, align 8
  %209 = icmp eq i64 %207, %208
  br label %210

210:                                              ; preds = %206, %203
  %211 = phi i1 [ false, %203 ], [ %209, %206 ]
  br i1 %211, label %200, label %212

212:                                              ; preds = %210
  %213 = load i32, i32* %14, align 4
  %214 = load i32, i32* %13, align 4
  %215 = icmp eq i32 %213, %214
  %216 = zext i1 %215 to i32
  %217 = call i32 @assert(i32 %216)
  br label %247

218:                                              ; preds = %195
  %219 = load i32, i32* %12, align 4
  %220 = icmp eq i32 %219, -1
  br i1 %220, label %221, label %244

221:                                              ; preds = %218
  %222 = load i64, i64* @errno, align 8
  %223 = load i64, i64* @EPIPE, align 8
  %224 = icmp eq i64 %222, %223
  br i1 %224, label %225, label %244

225:                                              ; preds = %221
  br label %226

226:                                              ; preds = %236, %225
  %227 = load i32, i32* %13, align 4
  %228 = call i32 @waitpid(i32 %227, i32* %17, i32 0)
  store i32 %228, i32* %14, align 4
  br label %229

229:                                              ; preds = %226
  %230 = load i32, i32* %14, align 4
  %231 = icmp eq i32 %230, -1
  br i1 %231, label %232, label %236

232:                                              ; preds = %229
  %233 = load i64, i64* @errno, align 8
  %234 = load i64, i64* @EINTR, align 8
  %235 = icmp eq i64 %233, %234
  br label %236

236:                                              ; preds = %232, %229
  %237 = phi i1 [ false, %229 ], [ %235, %232 ]
  br i1 %237, label %226, label %238

238:                                              ; preds = %236
  %239 = load i32, i32* %14, align 4
  %240 = load i32, i32* %13, align 4
  %241 = icmp eq i32 %239, %240
  %242 = zext i1 %241 to i32
  %243 = call i32 @assert(i32 %242)
  br label %246

244:                                              ; preds = %221, %218
  %245 = call i32 (...) @abort() #4
  unreachable

246:                                              ; preds = %238
  br label %247

247:                                              ; preds = %246, %212
  br label %248

248:                                              ; preds = %247, %194
  %249 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 0
  %250 = load i32, i32* %249, align 4
  %251 = call i32 @uv__close_nocheckstdio(i32 %250)
  store i32 0, i32* %16, align 4
  br label %252

252:                                              ; preds = %288, %248
  %253 = load i32, i32* %16, align 4
  %254 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %255 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %254, i32 0, i32 1
  %256 = load i32, i32* %255, align 4
  %257 = icmp slt i32 %253, %256
  br i1 %257, label %258, label %291

258:                                              ; preds = %252
  %259 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %260 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %259, i32 0, i32 2
  %261 = load %struct.TYPE_16__*, %struct.TYPE_16__** %260, align 8
  %262 = load i32, i32* %16, align 4
  %263 = sext i32 %262 to i64
  %264 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %261, i64 %263
  %265 = load [2 x i32]*, [2 x i32]** %10, align 8
  %266 = load i32, i32* %16, align 4
  %267 = sext i32 %266 to i64
  %268 = getelementptr inbounds [2 x i32], [2 x i32]* %265, i64 %267
  %269 = getelementptr inbounds [2 x i32], [2 x i32]* %268, i64 0, i64 0
  %270 = call i32 @uv__process_open_stream(%struct.TYPE_16__* %264, i32* %269)
  store i32 %270, i32* %14, align 4
  %271 = load i32, i32* %14, align 4
  %272 = icmp eq i32 %271, 0
  br i1 %272, label %273, label %274

273:                                              ; preds = %258
  br label %288

274:                                              ; preds = %258
  br label %275

275:                                              ; preds = %279, %274
  %276 = load i32, i32* %16, align 4
  %277 = add nsw i32 %276, -1
  store i32 %277, i32* %16, align 4
  %278 = icmp ne i32 %276, 0
  br i1 %278, label %279, label %287

279:                                              ; preds = %275
  %280 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %281 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %280, i32 0, i32 2
  %282 = load %struct.TYPE_16__*, %struct.TYPE_16__** %281, align 8
  %283 = load i32, i32* %16, align 4
  %284 = sext i32 %283 to i64
  %285 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %282, i64 %284
  %286 = call i32 @uv__process_close_stream(%struct.TYPE_16__* %285)
  br label %275

287:                                              ; preds = %275
  br label %320

288:                                              ; preds = %273
  %289 = load i32, i32* %16, align 4
  %290 = add nsw i32 %289, 1
  store i32 %290, i32* %16, align 4
  br label %252

291:                                              ; preds = %252
  %292 = load i32, i32* %15, align 4
  %293 = icmp eq i32 %292, 0
  br i1 %293, label %294, label %302

294:                                              ; preds = %291
  %295 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %296 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %295, i32 0, i32 0
  %297 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %298 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %297, i32 0, i32 2
  %299 = call i32 @QUEUE_INSERT_TAIL(i32* %296, i32* %298)
  %300 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %301 = call i32 @uv__handle_start(%struct.TYPE_13__* %300)
  br label %302

302:                                              ; preds = %294, %291
  %303 = load i32, i32* %13, align 4
  %304 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %305 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %304, i32 0, i32 0
  store i32 %303, i32* %305, align 4
  %306 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %307 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %306, i32 0, i32 3
  %308 = load i32, i32* %307, align 8
  %309 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %310 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %309, i32 0, i32 1
  store i32 %308, i32* %310, align 4
  %311 = load [2 x i32]*, [2 x i32]** %10, align 8
  %312 = getelementptr inbounds [8 x [2 x i32]], [8 x [2 x i32]]* %9, i64 0, i64 0
  %313 = icmp ne [2 x i32]* %311, %312
  br i1 %313, label %314, label %318

314:                                              ; preds = %302
  %315 = load [2 x i32]*, [2 x i32]** %10, align 8
  %316 = bitcast [2 x i32]* %315 to i32**
  %317 = call i32 @uv__free(i32** %316)
  br label %318

318:                                              ; preds = %314, %302
  %319 = load i32, i32* %15, align 4
  store i32 %319, i32* %4, align 4
  br label %397

320:                                              ; preds = %287, %145, %132, %122, %80
  %321 = load [2 x i32]*, [2 x i32]** %10, align 8
  %322 = icmp ne [2 x i32]* %321, null
  br i1 %322, label %323, label %395

323:                                              ; preds = %320
  store i32 0, i32* %16, align 4
  br label %324

324:                                              ; preds = %383, %323
  %325 = load i32, i32* %16, align 4
  %326 = load i32, i32* %11, align 4
  %327 = icmp slt i32 %325, %326
  br i1 %327, label %328, label %386

328:                                              ; preds = %324
  %329 = load i32, i32* %16, align 4
  %330 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %331 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %330, i32 0, i32 1
  %332 = load i32, i32* %331, align 4
  %333 = icmp slt i32 %329, %332
  br i1 %333, label %334, label %350

334:                                              ; preds = %328
  %335 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %336 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %335, i32 0, i32 2
  %337 = load %struct.TYPE_16__*, %struct.TYPE_16__** %336, align 8
  %338 = load i32, i32* %16, align 4
  %339 = sext i32 %338 to i64
  %340 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %337, i64 %339
  %341 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %340, i32 0, i32 0
  %342 = load i32, i32* %341, align 4
  %343 = load i32, i32* @UV_INHERIT_FD, align 4
  %344 = load i32, i32* @UV_INHERIT_STREAM, align 4
  %345 = or i32 %343, %344
  %346 = and i32 %342, %345
  %347 = icmp ne i32 %346, 0
  br i1 %347, label %348, label %349

348:                                              ; preds = %334
  br label %383

349:                                              ; preds = %334
  br label %350

350:                                              ; preds = %349, %328
  %351 = load [2 x i32]*, [2 x i32]** %10, align 8
  %352 = load i32, i32* %16, align 4
  %353 = sext i32 %352 to i64
  %354 = getelementptr inbounds [2 x i32], [2 x i32]* %351, i64 %353
  %355 = getelementptr inbounds [2 x i32], [2 x i32]* %354, i64 0, i64 0
  %356 = load i32, i32* %355, align 4
  %357 = icmp ne i32 %356, -1
  br i1 %357, label %358, label %366

358:                                              ; preds = %350
  %359 = load [2 x i32]*, [2 x i32]** %10, align 8
  %360 = load i32, i32* %16, align 4
  %361 = sext i32 %360 to i64
  %362 = getelementptr inbounds [2 x i32], [2 x i32]* %359, i64 %361
  %363 = getelementptr inbounds [2 x i32], [2 x i32]* %362, i64 0, i64 0
  %364 = load i32, i32* %363, align 4
  %365 = call i32 @uv__close_nocheckstdio(i32 %364)
  br label %366

366:                                              ; preds = %358, %350
  %367 = load [2 x i32]*, [2 x i32]** %10, align 8
  %368 = load i32, i32* %16, align 4
  %369 = sext i32 %368 to i64
  %370 = getelementptr inbounds [2 x i32], [2 x i32]* %367, i64 %369
  %371 = getelementptr inbounds [2 x i32], [2 x i32]* %370, i64 0, i64 1
  %372 = load i32, i32* %371, align 4
  %373 = icmp ne i32 %372, -1
  br i1 %373, label %374, label %382

374:                                              ; preds = %366
  %375 = load [2 x i32]*, [2 x i32]** %10, align 8
  %376 = load i32, i32* %16, align 4
  %377 = sext i32 %376 to i64
  %378 = getelementptr inbounds [2 x i32], [2 x i32]* %375, i64 %377
  %379 = getelementptr inbounds [2 x i32], [2 x i32]* %378, i64 0, i64 1
  %380 = load i32, i32* %379, align 4
  %381 = call i32 @uv__close_nocheckstdio(i32 %380)
  br label %382

382:                                              ; preds = %374, %366
  br label %383

383:                                              ; preds = %382, %348
  %384 = load i32, i32* %16, align 4
  %385 = add nsw i32 %384, 1
  store i32 %385, i32* %16, align 4
  br label %324

386:                                              ; preds = %324
  %387 = load [2 x i32]*, [2 x i32]** %10, align 8
  %388 = getelementptr inbounds [8 x [2 x i32]], [8 x [2 x i32]]* %9, i64 0, i64 0
  %389 = icmp ne [2 x i32]* %387, %388
  br i1 %389, label %390, label %394

390:                                              ; preds = %386
  %391 = load [2 x i32]*, [2 x i32]** %10, align 8
  %392 = bitcast [2 x i32]* %391 to i32**
  %393 = call i32 @uv__free(i32** %392)
  br label %394

394:                                              ; preds = %390, %386
  br label %395

395:                                              ; preds = %394, %320
  %396 = load i32, i32* %14, align 4
  store i32 %396, i32* %4, align 4
  br label %397

397:                                              ; preds = %395, %318
  %398 = load i32, i32* %4, align 4
  ret i32 %398
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @assert(i32) #2

declare dso_local i32 @uv__handle_init(%struct.TYPE_15__*, i32*, i32) #2

declare dso_local i32 @QUEUE_INIT(i32*) #2

declare dso_local i64 @ARRAY_SIZE(i32**) #2

declare dso_local i32** @uv__malloc(i32) #2

declare dso_local i32 @uv__process_init_stdio(%struct.TYPE_16__*, i32*) #2

declare dso_local i32 @uv__make_pipe(i32*, i32) #2

declare dso_local i32 @uv_signal_start(i32*, i32, i32) #2

declare dso_local i32 @uv_rwlock_wrlock(i32*) #2

declare dso_local i32 @fork(...) #2

declare dso_local i32 @UV__ERR(i64) #2

declare dso_local i32 @uv_rwlock_wrunlock(i32*) #2

declare dso_local i32 @uv__close(i32) #2

declare dso_local i32 @uv__process_child_init(%struct.TYPE_14__*, i32, i32**, i32) #2

; Function Attrs: noreturn
declare dso_local i32 @abort(...) #3

declare dso_local i32 @read(i32, i32*, i32) #2

declare dso_local i32 @waitpid(i32, i32*, i32) #2

declare dso_local i32 @uv__close_nocheckstdio(i32) #2

declare dso_local i32 @uv__process_open_stream(%struct.TYPE_16__*, i32*) #2

declare dso_local i32 @uv__process_close_stream(%struct.TYPE_16__*) #2

declare dso_local i32 @QUEUE_INSERT_TAIL(i32*, i32*) #2

declare dso_local i32 @uv__handle_start(%struct.TYPE_13__*) #2

declare dso_local i32 @uv__free(i32**) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
