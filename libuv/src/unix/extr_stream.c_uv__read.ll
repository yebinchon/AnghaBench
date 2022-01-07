; ModuleID = '/home/carl/AnghaBench/libuv/src/unix/extr_stream.c_uv__read.c'
source_filename = "/home/carl/AnghaBench/libuv/src/unix/extr_stream.c_uv__read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_25__ = type { i32, i64, i32 (%struct.TYPE_25__*, i64, %struct.TYPE_27__*)*, i32, i32, i32 (i32*, i32, %struct.TYPE_27__*)* }
%struct.TYPE_27__ = type { i64, i32* }
%struct.msghdr = type { i32, i32, i8*, %struct.iovec*, i64, i32*, i64 }
%struct.iovec = type { i32 }
%struct.TYPE_26__ = type { i64 }

@UV__CMSG_FD_SIZE = common dso_local global i32 0, align 4
@UV_HANDLE_READ_PARTIAL = common dso_local global i32 0, align 4
@UV_NAMED_PIPE = common dso_local global i64 0, align 8
@UV_HANDLE_READING = common dso_local global i32 0, align 4
@UV_ENOBUFS = common dso_local global i32 0, align 4
@errno = common dso_local global i64 0, align 8
@EINTR = common dso_local global i64 0, align 8
@EAGAIN = common dso_local global i64 0, align 8
@EWOULDBLOCK = common dso_local global i64 0, align 8
@POLLIN = common dso_local global i32 0, align 4
@POLLOUT = common dso_local global i32 0, align 4
@ECONNRESET = common dso_local global i64 0, align 8
@UV_DISCONNECT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_25__*)* @uv__read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @uv__read(%struct.TYPE_25__* %0) #0 {
  %2 = alloca %struct.TYPE_25__*, align 8
  %3 = alloca %struct.TYPE_27__, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.msghdr, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_27__, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  store %struct.TYPE_25__* %0, %struct.TYPE_25__** %2, align 8
  %14 = load i32, i32* @UV__CMSG_FD_SIZE, align 4
  %15 = call i32 @CMSG_SPACE(i32 %14)
  %16 = zext i32 %15 to i64
  %17 = call i8* @llvm.stacksave()
  store i8* %17, i8** %6, align 8
  %18 = alloca i8, i64 %16, align 16
  store i64 %16, i64* %7, align 8
  %19 = load i32, i32* @UV_HANDLE_READ_PARTIAL, align 4
  %20 = xor i32 %19, -1
  %21 = load %struct.TYPE_25__*, %struct.TYPE_25__** %2, align 8
  %22 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = and i32 %23, %20
  store i32 %24, i32* %22, align 8
  store i32 32, i32* %8, align 4
  %25 = load %struct.TYPE_25__*, %struct.TYPE_25__** %2, align 8
  %26 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @UV_NAMED_PIPE, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %36

30:                                               ; preds = %1
  %31 = load %struct.TYPE_25__*, %struct.TYPE_25__** %2, align 8
  %32 = bitcast %struct.TYPE_25__* %31 to %struct.TYPE_26__*
  %33 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br label %36

36:                                               ; preds = %30, %1
  %37 = phi i1 [ false, %1 ], [ %35, %30 ]
  %38 = zext i1 %37 to i32
  store i32 %38, i32* %10, align 4
  br label %39

39:                                               ; preds = %269, %36
  %40 = load %struct.TYPE_25__*, %struct.TYPE_25__** %2, align 8
  %41 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %40, i32 0, i32 2
  %42 = load i32 (%struct.TYPE_25__*, i64, %struct.TYPE_27__*)*, i32 (%struct.TYPE_25__*, i64, %struct.TYPE_27__*)** %41, align 8
  %43 = icmp ne i32 (%struct.TYPE_25__*, i64, %struct.TYPE_27__*)* %42, null
  br i1 %43, label %44, label %55

44:                                               ; preds = %39
  %45 = load %struct.TYPE_25__*, %struct.TYPE_25__** %2, align 8
  %46 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = load i32, i32* @UV_HANDLE_READING, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %55

51:                                               ; preds = %44
  %52 = load i32, i32* %8, align 4
  %53 = add nsw i32 %52, -1
  store i32 %53, i32* %8, align 4
  %54 = icmp sgt i32 %52, 0
  br label %55

55:                                               ; preds = %51, %44, %39
  %56 = phi i1 [ false, %44 ], [ false, %39 ], [ %54, %51 ]
  br i1 %56, label %57, label %270

57:                                               ; preds = %55
  %58 = load %struct.TYPE_25__*, %struct.TYPE_25__** %2, align 8
  %59 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %58, i32 0, i32 5
  %60 = load i32 (i32*, i32, %struct.TYPE_27__*)*, i32 (i32*, i32, %struct.TYPE_27__*)** %59, align 8
  %61 = icmp ne i32 (i32*, i32, %struct.TYPE_27__*)* %60, null
  %62 = zext i1 %61 to i32
  %63 = call i32 @assert(i32 %62)
  %64 = call { i64, i32* } @uv_buf_init(i32* null, i32 0)
  %65 = bitcast %struct.TYPE_27__* %11 to { i64, i32* }*
  %66 = getelementptr inbounds { i64, i32* }, { i64, i32* }* %65, i32 0, i32 0
  %67 = extractvalue { i64, i32* } %64, 0
  store i64 %67, i64* %66, align 8
  %68 = getelementptr inbounds { i64, i32* }, { i64, i32* }* %65, i32 0, i32 1
  %69 = extractvalue { i64, i32* } %64, 1
  store i32* %69, i32** %68, align 8
  %70 = bitcast %struct.TYPE_27__* %3 to i8*
  %71 = bitcast %struct.TYPE_27__* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %70, i8* align 8 %71, i64 16, i1 false)
  %72 = load %struct.TYPE_25__*, %struct.TYPE_25__** %2, align 8
  %73 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %72, i32 0, i32 5
  %74 = load i32 (i32*, i32, %struct.TYPE_27__*)*, i32 (i32*, i32, %struct.TYPE_27__*)** %73, align 8
  %75 = load %struct.TYPE_25__*, %struct.TYPE_25__** %2, align 8
  %76 = bitcast %struct.TYPE_25__* %75 to i32*
  %77 = call i32 %74(i32* %76, i32 65536, %struct.TYPE_27__* %3)
  %78 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %3, i32 0, i32 1
  %79 = load i32*, i32** %78, align 8
  %80 = icmp eq i32* %79, null
  br i1 %80, label %85, label %81

81:                                               ; preds = %57
  %82 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %3, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = icmp eq i64 %83, 0
  br i1 %84, label %85, label %93

85:                                               ; preds = %81, %57
  %86 = load %struct.TYPE_25__*, %struct.TYPE_25__** %2, align 8
  %87 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %86, i32 0, i32 2
  %88 = load i32 (%struct.TYPE_25__*, i64, %struct.TYPE_27__*)*, i32 (%struct.TYPE_25__*, i64, %struct.TYPE_27__*)** %87, align 8
  %89 = load %struct.TYPE_25__*, %struct.TYPE_25__** %2, align 8
  %90 = load i32, i32* @UV_ENOBUFS, align 4
  %91 = sext i32 %90 to i64
  %92 = call i32 %88(%struct.TYPE_25__* %89, i64 %91, %struct.TYPE_27__* %3)
  store i32 1, i32* %12, align 4
  br label %271

93:                                               ; preds = %81
  %94 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %3, i32 0, i32 1
  %95 = load i32*, i32** %94, align 8
  %96 = icmp ne i32* %95, null
  %97 = zext i1 %96 to i32
  %98 = call i32 @assert(i32 %97)
  %99 = load %struct.TYPE_25__*, %struct.TYPE_25__** %2, align 8
  %100 = call i64 @uv__stream_fd(%struct.TYPE_25__* %99)
  %101 = icmp sge i64 %100, 0
  %102 = zext i1 %101 to i32
  %103 = call i32 @assert(i32 %102)
  %104 = load i32, i32* %10, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %125, label %106

106:                                              ; preds = %93
  br label %107

107:                                              ; preds = %122, %106
  %108 = load %struct.TYPE_25__*, %struct.TYPE_25__** %2, align 8
  %109 = call i64 @uv__stream_fd(%struct.TYPE_25__* %108)
  %110 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %3, i32 0, i32 1
  %111 = load i32*, i32** %110, align 8
  %112 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %3, i32 0, i32 0
  %113 = load i64, i64* %112, align 8
  %114 = call i64 @read(i64 %109, i32* %111, i64 %113)
  store i64 %114, i64* %4, align 8
  br label %115

115:                                              ; preds = %107
  %116 = load i64, i64* %4, align 8
  %117 = icmp slt i64 %116, 0
  br i1 %117, label %118, label %122

118:                                              ; preds = %115
  %119 = load i64, i64* @errno, align 8
  %120 = load i64, i64* @EINTR, align 8
  %121 = icmp eq i64 %119, %120
  br label %122

122:                                              ; preds = %118, %115
  %123 = phi i1 [ false, %115 ], [ %121, %118 ]
  br i1 %123, label %107, label %124

124:                                              ; preds = %122
  br label %150

125:                                              ; preds = %93
  %126 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %5, i32 0, i32 6
  store i64 0, i64* %126, align 8
  %127 = bitcast %struct.TYPE_27__* %3 to %struct.iovec*
  %128 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %5, i32 0, i32 3
  store %struct.iovec* %127, %struct.iovec** %128, align 8
  %129 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %5, i32 0, i32 0
  store i32 1, i32* %129, align 8
  %130 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %5, i32 0, i32 5
  store i32* null, i32** %130, align 8
  %131 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %5, i32 0, i32 4
  store i64 0, i64* %131, align 8
  %132 = trunc i64 %16 to i32
  %133 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %5, i32 0, i32 1
  store i32 %132, i32* %133, align 4
  %134 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %5, i32 0, i32 2
  store i8* %18, i8** %134, align 8
  br label %135

135:                                              ; preds = %147, %125
  %136 = load %struct.TYPE_25__*, %struct.TYPE_25__** %2, align 8
  %137 = call i64 @uv__stream_fd(%struct.TYPE_25__* %136)
  %138 = call i8* @uv__recvmsg(i64 %137, %struct.msghdr* %5, i32 0)
  %139 = ptrtoint i8* %138 to i64
  store i64 %139, i64* %4, align 8
  br label %140

140:                                              ; preds = %135
  %141 = load i64, i64* %4, align 8
  %142 = icmp slt i64 %141, 0
  br i1 %142, label %143, label %147

143:                                              ; preds = %140
  %144 = load i64, i64* @errno, align 8
  %145 = load i64, i64* @EINTR, align 8
  %146 = icmp eq i64 %144, %145
  br label %147

147:                                              ; preds = %143, %140
  %148 = phi i1 [ false, %140 ], [ %146, %143 ]
  br i1 %148, label %135, label %149

149:                                              ; preds = %147
  br label %150

150:                                              ; preds = %149, %124
  %151 = load i64, i64* %4, align 8
  %152 = icmp slt i64 %151, 0
  br i1 %152, label %153, label %226

153:                                              ; preds = %150
  %154 = load i64, i64* @errno, align 8
  %155 = load i64, i64* @EAGAIN, align 8
  %156 = icmp eq i64 %154, %155
  br i1 %156, label %161, label %157

157:                                              ; preds = %153
  %158 = load i64, i64* @errno, align 8
  %159 = load i64, i64* @EWOULDBLOCK, align 8
  %160 = icmp eq i64 %158, %159
  br i1 %160, label %161, label %184

161:                                              ; preds = %157, %153
  %162 = load %struct.TYPE_25__*, %struct.TYPE_25__** %2, align 8
  %163 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %162, i32 0, i32 0
  %164 = load i32, i32* %163, align 8
  %165 = load i32, i32* @UV_HANDLE_READING, align 4
  %166 = and i32 %164, %165
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %168, label %178

168:                                              ; preds = %161
  %169 = load %struct.TYPE_25__*, %struct.TYPE_25__** %2, align 8
  %170 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %169, i32 0, i32 4
  %171 = load i32, i32* %170, align 4
  %172 = load %struct.TYPE_25__*, %struct.TYPE_25__** %2, align 8
  %173 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %172, i32 0, i32 3
  %174 = load i32, i32* @POLLIN, align 4
  %175 = call i32 @uv__io_start(i32 %171, i32* %173, i32 %174)
  %176 = load %struct.TYPE_25__*, %struct.TYPE_25__** %2, align 8
  %177 = call i32 @uv__stream_osx_interrupt_select(%struct.TYPE_25__* %176)
  br label %178

178:                                              ; preds = %168, %161
  %179 = load %struct.TYPE_25__*, %struct.TYPE_25__** %2, align 8
  %180 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %179, i32 0, i32 2
  %181 = load i32 (%struct.TYPE_25__*, i64, %struct.TYPE_27__*)*, i32 (%struct.TYPE_25__*, i64, %struct.TYPE_27__*)** %180, align 8
  %182 = load %struct.TYPE_25__*, %struct.TYPE_25__** %2, align 8
  %183 = call i32 %181(%struct.TYPE_25__* %182, i64 0, %struct.TYPE_27__* %3)
  br label %225

184:                                              ; preds = %157
  %185 = load %struct.TYPE_25__*, %struct.TYPE_25__** %2, align 8
  %186 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %185, i32 0, i32 2
  %187 = load i32 (%struct.TYPE_25__*, i64, %struct.TYPE_27__*)*, i32 (%struct.TYPE_25__*, i64, %struct.TYPE_27__*)** %186, align 8
  %188 = load %struct.TYPE_25__*, %struct.TYPE_25__** %2, align 8
  %189 = load i64, i64* @errno, align 8
  %190 = call i32 @UV__ERR(i64 %189)
  %191 = sext i32 %190 to i64
  %192 = call i32 %187(%struct.TYPE_25__* %188, i64 %191, %struct.TYPE_27__* %3)
  %193 = load %struct.TYPE_25__*, %struct.TYPE_25__** %2, align 8
  %194 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %193, i32 0, i32 0
  %195 = load i32, i32* %194, align 8
  %196 = load i32, i32* @UV_HANDLE_READING, align 4
  %197 = and i32 %195, %196
  %198 = icmp ne i32 %197, 0
  br i1 %198, label %199, label %224

199:                                              ; preds = %184
  %200 = load i32, i32* @UV_HANDLE_READING, align 4
  %201 = xor i32 %200, -1
  %202 = load %struct.TYPE_25__*, %struct.TYPE_25__** %2, align 8
  %203 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %202, i32 0, i32 0
  %204 = load i32, i32* %203, align 8
  %205 = and i32 %204, %201
  store i32 %205, i32* %203, align 8
  %206 = load %struct.TYPE_25__*, %struct.TYPE_25__** %2, align 8
  %207 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %206, i32 0, i32 4
  %208 = load i32, i32* %207, align 4
  %209 = load %struct.TYPE_25__*, %struct.TYPE_25__** %2, align 8
  %210 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %209, i32 0, i32 3
  %211 = load i32, i32* @POLLIN, align 4
  %212 = call i32 @uv__io_stop(i32 %208, i32* %210, i32 %211)
  %213 = load %struct.TYPE_25__*, %struct.TYPE_25__** %2, align 8
  %214 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %213, i32 0, i32 3
  %215 = load i32, i32* @POLLOUT, align 4
  %216 = call i32 @uv__io_active(i32* %214, i32 %215)
  %217 = icmp ne i32 %216, 0
  br i1 %217, label %221, label %218

218:                                              ; preds = %199
  %219 = load %struct.TYPE_25__*, %struct.TYPE_25__** %2, align 8
  %220 = call i32 @uv__handle_stop(%struct.TYPE_25__* %219)
  br label %221

221:                                              ; preds = %218, %199
  %222 = load %struct.TYPE_25__*, %struct.TYPE_25__** %2, align 8
  %223 = call i32 @uv__stream_osx_interrupt_select(%struct.TYPE_25__* %222)
  br label %224

224:                                              ; preds = %221, %184
  br label %225

225:                                              ; preds = %224, %178
  store i32 1, i32* %12, align 4
  br label %271

226:                                              ; preds = %150
  %227 = load i64, i64* %4, align 8
  %228 = icmp eq i64 %227, 0
  br i1 %228, label %229, label %232

229:                                              ; preds = %226
  %230 = load %struct.TYPE_25__*, %struct.TYPE_25__** %2, align 8
  %231 = call i32 @uv__stream_eof(%struct.TYPE_25__* %230, %struct.TYPE_27__* %3)
  store i32 1, i32* %12, align 4
  br label %271

232:                                              ; preds = %226
  %233 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %3, i32 0, i32 0
  %234 = load i64, i64* %233, align 8
  store i64 %234, i64* %13, align 8
  %235 = load i32, i32* %10, align 4
  %236 = icmp ne i32 %235, 0
  br i1 %236, label %237, label %251

237:                                              ; preds = %232
  %238 = load %struct.TYPE_25__*, %struct.TYPE_25__** %2, align 8
  %239 = call i32 @uv__stream_recv_cmsg(%struct.TYPE_25__* %238, %struct.msghdr* %5)
  store i32 %239, i32* %9, align 4
  %240 = load i32, i32* %9, align 4
  %241 = icmp ne i32 %240, 0
  br i1 %241, label %242, label %250

242:                                              ; preds = %237
  %243 = load %struct.TYPE_25__*, %struct.TYPE_25__** %2, align 8
  %244 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %243, i32 0, i32 2
  %245 = load i32 (%struct.TYPE_25__*, i64, %struct.TYPE_27__*)*, i32 (%struct.TYPE_25__*, i64, %struct.TYPE_27__*)** %244, align 8
  %246 = load %struct.TYPE_25__*, %struct.TYPE_25__** %2, align 8
  %247 = load i32, i32* %9, align 4
  %248 = sext i32 %247 to i64
  %249 = call i32 %245(%struct.TYPE_25__* %246, i64 %248, %struct.TYPE_27__* %3)
  store i32 1, i32* %12, align 4
  br label %271

250:                                              ; preds = %237
  br label %251

251:                                              ; preds = %250, %232
  %252 = load %struct.TYPE_25__*, %struct.TYPE_25__** %2, align 8
  %253 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %252, i32 0, i32 2
  %254 = load i32 (%struct.TYPE_25__*, i64, %struct.TYPE_27__*)*, i32 (%struct.TYPE_25__*, i64, %struct.TYPE_27__*)** %253, align 8
  %255 = load %struct.TYPE_25__*, %struct.TYPE_25__** %2, align 8
  %256 = load i64, i64* %4, align 8
  %257 = call i32 %254(%struct.TYPE_25__* %255, i64 %256, %struct.TYPE_27__* %3)
  %258 = load i64, i64* %4, align 8
  %259 = load i64, i64* %13, align 8
  %260 = icmp slt i64 %258, %259
  br i1 %260, label %261, label %267

261:                                              ; preds = %251
  %262 = load i32, i32* @UV_HANDLE_READ_PARTIAL, align 4
  %263 = load %struct.TYPE_25__*, %struct.TYPE_25__** %2, align 8
  %264 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %263, i32 0, i32 0
  %265 = load i32, i32* %264, align 8
  %266 = or i32 %265, %262
  store i32 %266, i32* %264, align 8
  store i32 1, i32* %12, align 4
  br label %271

267:                                              ; preds = %251
  br label %268

268:                                              ; preds = %267
  br label %269

269:                                              ; preds = %268
  br label %39

270:                                              ; preds = %55
  store i32 0, i32* %12, align 4
  br label %271

271:                                              ; preds = %270, %261, %242, %229, %225, %85
  %272 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %272)
  %273 = load i32, i32* %12, align 4
  switch i32 %273, label %275 [
    i32 0, label %274
    i32 1, label %274
  ]

274:                                              ; preds = %271, %271
  ret void

275:                                              ; preds = %271
  unreachable
}

declare dso_local i32 @CMSG_SPACE(i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @assert(i32) #1

declare dso_local { i64, i32* } @uv_buf_init(i32*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

declare dso_local i64 @uv__stream_fd(%struct.TYPE_25__*) #1

declare dso_local i64 @read(i64, i32*, i64) #1

declare dso_local i8* @uv__recvmsg(i64, %struct.msghdr*, i32) #1

declare dso_local i32 @uv__io_start(i32, i32*, i32) #1

declare dso_local i32 @uv__stream_osx_interrupt_select(%struct.TYPE_25__*) #1

declare dso_local i32 @UV__ERR(i64) #1

declare dso_local i32 @uv__io_stop(i32, i32*, i32) #1

declare dso_local i32 @uv__io_active(i32*, i32) #1

declare dso_local i32 @uv__handle_stop(%struct.TYPE_25__*) #1

declare dso_local i32 @uv__stream_eof(%struct.TYPE_25__*, %struct.TYPE_27__*) #1

declare dso_local i32 @uv__stream_recv_cmsg(%struct.TYPE_25__*, %struct.msghdr*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }
attributes #3 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
