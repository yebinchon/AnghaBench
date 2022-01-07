; ModuleID = '/home/carl/AnghaBench/libuv/src/unix/extr_process.c_uv__process_child_init.c'
source_filename = "/home/carl/AnghaBench/libuv/src/unix/extr_process.c_uv__process_child_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, i32*, i32, i32, i32* }

@UV_PROCESS_DETACHED = common dso_local global i32 0, align 4
@F_DUPFD = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"/dev/null\00", align 1
@O_RDONLY = common dso_local global i32 0, align 4
@O_RDWR = common dso_local global i32 0, align 4
@UV_PROCESS_SETUID = common dso_local global i32 0, align 4
@UV_PROCESS_SETGID = common dso_local global i32 0, align 4
@environ = common dso_local global i32* null, align 8
@SIGKILL = common dso_local global i32 0, align 4
@SIGSTOP = common dso_local global i32 0, align 4
@SIG_ERR = common dso_local global i64 0, align 8
@SIG_DFL = common dso_local global i32 0, align 4
@SIG_SETMASK = common dso_local global i32 0, align 4
@SIGKILLTHR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*, i32, [2 x i32]*, i32)* @uv__process_child_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @uv__process_child_init(%struct.TYPE_3__* %0, i32 %1, [2 x i32]* %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca [2 x i32]*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %5, align 8
  store i32 %1, i32* %6, align 4
  store [2 x i32]* %2, [2 x i32]** %7, align 8
  store i32 %3, i32* %8, align 4
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* @UV_PROCESS_DETACHED, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %4
  %22 = call i32 (...) @setsid()
  br label %23

23:                                               ; preds = %21, %4
  store i32 0, i32* %13, align 4
  br label %24

24:                                               ; preds = %66, %23
  %25 = load i32, i32* %13, align 4
  %26 = load i32, i32* %6, align 4
  %27 = icmp slt i32 %25, %26
  br i1 %27, label %28, label %69

28:                                               ; preds = %24
  %29 = load [2 x i32]*, [2 x i32]** %7, align 8
  %30 = load i32, i32* %13, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds [2 x i32], [2 x i32]* %29, i64 %31
  %33 = getelementptr inbounds [2 x i32], [2 x i32]* %32, i64 0, i64 1
  %34 = load i32, i32* %33, align 4
  store i32 %34, i32* %11, align 4
  %35 = load i32, i32* %11, align 4
  %36 = icmp slt i32 %35, 0
  br i1 %36, label %41, label %37

37:                                               ; preds = %28
  %38 = load i32, i32* %11, align 4
  %39 = load i32, i32* %13, align 4
  %40 = icmp sge i32 %38, %39
  br i1 %40, label %41, label %42

41:                                               ; preds = %37, %28
  br label %66

42:                                               ; preds = %37
  %43 = load i32, i32* %11, align 4
  %44 = load i32, i32* @F_DUPFD, align 4
  %45 = load i32, i32* %6, align 4
  %46 = call i32 @fcntl(i32 %43, i32 %44, i32 %45)
  %47 = load [2 x i32]*, [2 x i32]** %7, align 8
  %48 = load i32, i32* %13, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds [2 x i32], [2 x i32]* %47, i64 %49
  %51 = getelementptr inbounds [2 x i32], [2 x i32]* %50, i64 0, i64 1
  store i32 %46, i32* %51, align 4
  %52 = load [2 x i32]*, [2 x i32]** %7, align 8
  %53 = load i32, i32* %13, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds [2 x i32], [2 x i32]* %52, i64 %54
  %56 = getelementptr inbounds [2 x i32], [2 x i32]* %55, i64 0, i64 1
  %57 = load i32, i32* %56, align 4
  %58 = icmp eq i32 %57, -1
  br i1 %58, label %59, label %65

59:                                               ; preds = %42
  %60 = load i32, i32* %8, align 4
  %61 = load i32, i32* @errno, align 4
  %62 = call i32 @UV__ERR(i32 %61)
  %63 = call i32 @uv__write_int(i32 %60, i32 %62)
  %64 = call i32 @_exit(i32 127) #3
  unreachable

65:                                               ; preds = %42
  br label %66

66:                                               ; preds = %65, %41
  %67 = load i32, i32* %13, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %13, align 4
  br label %24

69:                                               ; preds = %24
  store i32 0, i32* %13, align 4
  br label %70

70:                                               ; preds = %148, %69
  %71 = load i32, i32* %13, align 4
  %72 = load i32, i32* %6, align 4
  %73 = icmp slt i32 %71, %72
  br i1 %73, label %74, label %151

74:                                               ; preds = %70
  %75 = load [2 x i32]*, [2 x i32]** %7, align 8
  %76 = load i32, i32* %13, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds [2 x i32], [2 x i32]* %75, i64 %77
  %79 = getelementptr inbounds [2 x i32], [2 x i32]* %78, i64 0, i64 0
  %80 = load i32, i32* %79, align 4
  store i32 %80, i32* %10, align 4
  %81 = load [2 x i32]*, [2 x i32]** %7, align 8
  %82 = load i32, i32* %13, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds [2 x i32], [2 x i32]* %81, i64 %83
  %85 = getelementptr inbounds [2 x i32], [2 x i32]* %84, i64 0, i64 1
  %86 = load i32, i32* %85, align 4
  store i32 %86, i32* %11, align 4
  %87 = load i32, i32* %11, align 4
  %88 = icmp slt i32 %87, 0
  br i1 %88, label %89, label %114

89:                                               ; preds = %74
  %90 = load i32, i32* %13, align 4
  %91 = icmp sge i32 %90, 3
  br i1 %91, label %92, label %93

92:                                               ; preds = %89
  br label %148

93:                                               ; preds = %89
  %94 = load i32, i32* %13, align 4
  %95 = icmp eq i32 %94, 0
  br i1 %95, label %96, label %98

96:                                               ; preds = %93
  %97 = load i32, i32* @O_RDONLY, align 4
  br label %100

98:                                               ; preds = %93
  %99 = load i32, i32* @O_RDWR, align 4
  br label %100

100:                                              ; preds = %98, %96
  %101 = phi i32 [ %97, %96 ], [ %99, %98 ]
  %102 = call i32 @open(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %101)
  store i32 %102, i32* %11, align 4
  %103 = load i32, i32* %11, align 4
  store i32 %103, i32* %10, align 4
  %104 = load i32, i32* %11, align 4
  %105 = icmp slt i32 %104, 0
  br i1 %105, label %106, label %112

106:                                              ; preds = %100
  %107 = load i32, i32* %8, align 4
  %108 = load i32, i32* @errno, align 4
  %109 = call i32 @UV__ERR(i32 %108)
  %110 = call i32 @uv__write_int(i32 %107, i32 %109)
  %111 = call i32 @_exit(i32 127) #3
  unreachable

112:                                              ; preds = %100
  br label %113

113:                                              ; preds = %112
  br label %114

114:                                              ; preds = %113, %74
  %115 = load i32, i32* %13, align 4
  %116 = load i32, i32* %11, align 4
  %117 = icmp eq i32 %115, %116
  br i1 %117, label %118, label %121

118:                                              ; preds = %114
  %119 = load i32, i32* %11, align 4
  %120 = call i32 @uv__cloexec_fcntl(i32 %119, i32 0)
  br label %125

121:                                              ; preds = %114
  %122 = load i32, i32* %11, align 4
  %123 = load i32, i32* %13, align 4
  %124 = call i32 @dup2(i32 %122, i32 %123)
  store i32 %124, i32* %13, align 4
  br label %125

125:                                              ; preds = %121, %118
  %126 = load i32, i32* %13, align 4
  %127 = icmp eq i32 %126, -1
  br i1 %127, label %128, label %134

128:                                              ; preds = %125
  %129 = load i32, i32* %8, align 4
  %130 = load i32, i32* @errno, align 4
  %131 = call i32 @UV__ERR(i32 %130)
  %132 = call i32 @uv__write_int(i32 %129, i32 %131)
  %133 = call i32 @_exit(i32 127) #3
  unreachable

134:                                              ; preds = %125
  %135 = load i32, i32* %13, align 4
  %136 = icmp sle i32 %135, 2
  br i1 %136, label %137, label %140

137:                                              ; preds = %134
  %138 = load i32, i32* %13, align 4
  %139 = call i32 @uv__nonblock_fcntl(i32 %138, i32 0)
  br label %140

140:                                              ; preds = %137, %134
  %141 = load i32, i32* %10, align 4
  %142 = load i32, i32* %6, align 4
  %143 = icmp sge i32 %141, %142
  br i1 %143, label %144, label %147

144:                                              ; preds = %140
  %145 = load i32, i32* %10, align 4
  %146 = call i32 @uv__close(i32 %145)
  br label %147

147:                                              ; preds = %144, %140
  br label %148

148:                                              ; preds = %147, %92
  %149 = load i32, i32* %13, align 4
  %150 = add nsw i32 %149, 1
  store i32 %150, i32* %13, align 4
  br label %70

151:                                              ; preds = %70
  store i32 0, i32* %13, align 4
  br label %152

152:                                              ; preds = %170, %151
  %153 = load i32, i32* %13, align 4
  %154 = load i32, i32* %6, align 4
  %155 = icmp slt i32 %153, %154
  br i1 %155, label %156, label %173

156:                                              ; preds = %152
  %157 = load [2 x i32]*, [2 x i32]** %7, align 8
  %158 = load i32, i32* %13, align 4
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds [2 x i32], [2 x i32]* %157, i64 %159
  %161 = getelementptr inbounds [2 x i32], [2 x i32]* %160, i64 0, i64 1
  %162 = load i32, i32* %161, align 4
  store i32 %162, i32* %11, align 4
  %163 = load i32, i32* %11, align 4
  %164 = load i32, i32* %6, align 4
  %165 = icmp sge i32 %163, %164
  br i1 %165, label %166, label %169

166:                                              ; preds = %156
  %167 = load i32, i32* %11, align 4
  %168 = call i32 @uv__close(i32 %167)
  br label %169

169:                                              ; preds = %166, %156
  br label %170

170:                                              ; preds = %169
  %171 = load i32, i32* %13, align 4
  %172 = add nsw i32 %171, 1
  store i32 %172, i32* %13, align 4
  br label %152

173:                                              ; preds = %152
  %174 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %175 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %174, i32 0, i32 6
  %176 = load i32*, i32** %175, align 8
  %177 = icmp ne i32* %176, null
  br i1 %177, label %178, label %190

178:                                              ; preds = %173
  %179 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %180 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %179, i32 0, i32 6
  %181 = load i32*, i32** %180, align 8
  %182 = call i64 @chdir(i32* %181)
  %183 = icmp ne i64 %182, 0
  br i1 %183, label %184, label %190

184:                                              ; preds = %178
  %185 = load i32, i32* %8, align 4
  %186 = load i32, i32* @errno, align 4
  %187 = call i32 @UV__ERR(i32 %186)
  %188 = call i32 @uv__write_int(i32 %185, i32 %187)
  %189 = call i32 @_exit(i32 127) #3
  unreachable

190:                                              ; preds = %178, %173
  %191 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %192 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %191, i32 0, i32 0
  %193 = load i32, i32* %192, align 8
  %194 = load i32, i32* @UV_PROCESS_SETUID, align 4
  %195 = load i32, i32* @UV_PROCESS_SETGID, align 4
  %196 = or i32 %194, %195
  %197 = and i32 %193, %196
  %198 = icmp ne i32 %197, 0
  br i1 %198, label %199, label %202

199:                                              ; preds = %190
  %200 = call i32 @setgroups(i32 0, i32* null)
  %201 = call i32 @SAVE_ERRNO(i32 %200)
  br label %202

202:                                              ; preds = %199, %190
  %203 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %204 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %203, i32 0, i32 0
  %205 = load i32, i32* %204, align 8
  %206 = load i32, i32* @UV_PROCESS_SETGID, align 4
  %207 = and i32 %205, %206
  %208 = icmp ne i32 %207, 0
  br i1 %208, label %209, label %221

209:                                              ; preds = %202
  %210 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %211 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %210, i32 0, i32 5
  %212 = load i32, i32* %211, align 4
  %213 = call i64 @setgid(i32 %212)
  %214 = icmp ne i64 %213, 0
  br i1 %214, label %215, label %221

215:                                              ; preds = %209
  %216 = load i32, i32* %8, align 4
  %217 = load i32, i32* @errno, align 4
  %218 = call i32 @UV__ERR(i32 %217)
  %219 = call i32 @uv__write_int(i32 %216, i32 %218)
  %220 = call i32 @_exit(i32 127) #3
  unreachable

221:                                              ; preds = %209, %202
  %222 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %223 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %222, i32 0, i32 0
  %224 = load i32, i32* %223, align 8
  %225 = load i32, i32* @UV_PROCESS_SETUID, align 4
  %226 = and i32 %224, %225
  %227 = icmp ne i32 %226, 0
  br i1 %227, label %228, label %240

228:                                              ; preds = %221
  %229 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %230 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %229, i32 0, i32 4
  %231 = load i32, i32* %230, align 8
  %232 = call i64 @setuid(i32 %231)
  %233 = icmp ne i64 %232, 0
  br i1 %233, label %234, label %240

234:                                              ; preds = %228
  %235 = load i32, i32* %8, align 4
  %236 = load i32, i32* @errno, align 4
  %237 = call i32 @UV__ERR(i32 %236)
  %238 = call i32 @uv__write_int(i32 %235, i32 %237)
  %239 = call i32 @_exit(i32 127) #3
  unreachable

240:                                              ; preds = %228, %221
  %241 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %242 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %241, i32 0, i32 3
  %243 = load i32*, i32** %242, align 8
  %244 = icmp ne i32* %243, null
  br i1 %244, label %245, label %249

245:                                              ; preds = %240
  %246 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %247 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %246, i32 0, i32 3
  %248 = load i32*, i32** %247, align 8
  store i32* %248, i32** @environ, align 8
  br label %249

249:                                              ; preds = %245, %240
  store i32 1, i32* %14, align 4
  br label %250

250:                                              ; preds = %275, %249
  %251 = load i32, i32* %14, align 4
  %252 = icmp slt i32 %251, 32
  br i1 %252, label %253, label %278

253:                                              ; preds = %250
  %254 = load i32, i32* %14, align 4
  %255 = load i32, i32* @SIGKILL, align 4
  %256 = icmp eq i32 %254, %255
  br i1 %256, label %261, label %257

257:                                              ; preds = %253
  %258 = load i32, i32* %14, align 4
  %259 = load i32, i32* @SIGSTOP, align 4
  %260 = icmp eq i32 %258, %259
  br i1 %260, label %261, label %262

261:                                              ; preds = %257, %253
  br label %275

262:                                              ; preds = %257
  %263 = load i64, i64* @SIG_ERR, align 8
  %264 = load i32, i32* %14, align 4
  %265 = load i32, i32* @SIG_DFL, align 4
  %266 = call i64 @signal(i32 %264, i32 %265)
  %267 = icmp ne i64 %263, %266
  br i1 %267, label %268, label %269

268:                                              ; preds = %262
  br label %275

269:                                              ; preds = %262
  %270 = load i32, i32* %8, align 4
  %271 = load i32, i32* @errno, align 4
  %272 = call i32 @UV__ERR(i32 %271)
  %273 = call i32 @uv__write_int(i32 %270, i32 %272)
  %274 = call i32 @_exit(i32 127) #3
  unreachable

275:                                              ; preds = %268, %261
  %276 = load i32, i32* %14, align 4
  %277 = add nsw i32 %276, 1
  store i32 %277, i32* %14, align 4
  br label %250

278:                                              ; preds = %250
  %279 = call i32 @sigemptyset(i32* %9)
  %280 = load i32, i32* @SIG_SETMASK, align 4
  %281 = call i32 @pthread_sigmask(i32 %280, i32* %9, i32* null)
  store i32 %281, i32* %12, align 4
  %282 = load i32, i32* %12, align 4
  %283 = icmp ne i32 %282, 0
  br i1 %283, label %284, label %290

284:                                              ; preds = %278
  %285 = load i32, i32* %8, align 4
  %286 = load i32, i32* %12, align 4
  %287 = call i32 @UV__ERR(i32 %286)
  %288 = call i32 @uv__write_int(i32 %285, i32 %287)
  %289 = call i32 @_exit(i32 127) #3
  unreachable

290:                                              ; preds = %278
  %291 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %292 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %291, i32 0, i32 2
  %293 = load i32, i32* %292, align 8
  %294 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %295 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %294, i32 0, i32 1
  %296 = load i32, i32* %295, align 4
  %297 = call i32 @execvp(i32 %293, i32 %296)
  %298 = load i32, i32* %8, align 4
  %299 = load i32, i32* @errno, align 4
  %300 = call i32 @UV__ERR(i32 %299)
  %301 = call i32 @uv__write_int(i32 %298, i32 %300)
  %302 = call i32 @_exit(i32 127) #3
  unreachable
}

declare dso_local i32 @setsid(...) #1

declare dso_local i32 @fcntl(i32, i32, i32) #1

declare dso_local i32 @uv__write_int(i32, i32) #1

declare dso_local i32 @UV__ERR(i32) #1

; Function Attrs: noreturn
declare dso_local i32 @_exit(i32) #2

declare dso_local i32 @open(i8*, i32) #1

declare dso_local i32 @uv__cloexec_fcntl(i32, i32) #1

declare dso_local i32 @dup2(i32, i32) #1

declare dso_local i32 @uv__nonblock_fcntl(i32, i32) #1

declare dso_local i32 @uv__close(i32) #1

declare dso_local i64 @chdir(i32*) #1

declare dso_local i32 @SAVE_ERRNO(i32) #1

declare dso_local i32 @setgroups(i32, i32*) #1

declare dso_local i64 @setgid(i32) #1

declare dso_local i64 @setuid(i32) #1

declare dso_local i64 @signal(i32, i32) #1

declare dso_local i32 @sigemptyset(i32*) #1

declare dso_local i32 @pthread_sigmask(i32, i32*, i32*) #1

declare dso_local i32 @execvp(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
