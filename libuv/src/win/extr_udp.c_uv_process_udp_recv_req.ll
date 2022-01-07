; ModuleID = '/home/carl/AnghaBench/libuv/src/win/extr_udp.c_uv_process_udp_recv_req.c'
source_filename = "/home/carl/AnghaBench/libuv/src/win/extr_udp.c_uv_process_udp_recv_req.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_35__ = type { i64, i32, i32 (%struct.TYPE_35__*, i64, %struct.TYPE_37__*, %struct.sockaddr*, i32)*, i32, i32 (i32*, i32, %struct.TYPE_37__*)*, i32, %struct.TYPE_37__ }
%struct.sockaddr = type opaque
%struct.TYPE_37__ = type { i64, i32* }
%struct.TYPE_36__ = type { %struct.TYPE_34__ }
%struct.TYPE_34__ = type { %struct.TYPE_33__ }
%struct.TYPE_33__ = type { %struct.TYPE_32__ }
%struct.TYPE_32__ = type { i64 }
%struct.sockaddr_storage = type { i32 }
%struct.sockaddr.0 = type { i32 }

@UV_UDP = common dso_local global i64 0, align 8
@UV_HANDLE_READ_PENDING = common dso_local global i32 0, align 4
@WSAEMSGSIZE = common dso_local global i64 0, align 8
@WSAECONNRESET = common dso_local global i64 0, align 8
@WSAENETRESET = common dso_local global i64 0, align 8
@UV_HANDLE_ZERO_READ = common dso_local global i32 0, align 4
@UV_HANDLE_READING = common dso_local global i32 0, align 4
@UV_UDP_PARTIAL = common dso_local global i32 0, align 4
@UV_ENOBUFS = common dso_local global i64 0, align 8
@SOCKET_ERROR = common dso_local global i64 0, align 8
@WSAEWOULDBLOCK = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @uv_process_udp_recv_req(i32* %0, %struct.TYPE_35__* %1, %struct.TYPE_36__* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_35__*, align 8
  %6 = alloca %struct.TYPE_36__*, align 8
  %7 = alloca %struct.TYPE_37__, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca %struct.TYPE_37__, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.sockaddr_storage, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.TYPE_37__, align 8
  store i32* %0, i32** %4, align 8
  store %struct.TYPE_35__* %1, %struct.TYPE_35__** %5, align 8
  store %struct.TYPE_36__* %2, %struct.TYPE_36__** %6, align 8
  %17 = load %struct.TYPE_35__*, %struct.TYPE_35__** %5, align 8
  %18 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @UV_UDP, align 8
  %21 = icmp eq i64 %19, %20
  %22 = zext i1 %21 to i32
  %23 = call i32 @assert(i32 %22)
  %24 = load i32, i32* @UV_HANDLE_READ_PENDING, align 4
  %25 = xor i32 %24, -1
  %26 = load %struct.TYPE_35__*, %struct.TYPE_35__** %5, align 8
  %27 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = and i32 %28, %25
  store i32 %29, i32* %27, align 8
  %30 = load %struct.TYPE_36__*, %struct.TYPE_36__** %6, align 8
  %31 = call i32 @REQ_SUCCESS(%struct.TYPE_36__* %30)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %98, label %33

33:                                               ; preds = %3
  %34 = load %struct.TYPE_36__*, %struct.TYPE_36__** %6, align 8
  %35 = call i64 @GET_REQ_SOCK_ERROR(%struct.TYPE_36__* %34)
  store i64 %35, i64* %9, align 8
  %36 = load i64, i64* %9, align 8
  %37 = load i64, i64* @WSAEMSGSIZE, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %39, label %40

39:                                               ; preds = %33
  br label %97

40:                                               ; preds = %33
  %41 = load i64, i64* %9, align 8
  %42 = load i64, i64* @WSAECONNRESET, align 8
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %48, label %44

44:                                               ; preds = %40
  %45 = load i64, i64* %9, align 8
  %46 = load i64, i64* @WSAENETRESET, align 8
  %47 = icmp eq i64 %45, %46
  br i1 %47, label %48, label %57

48:                                               ; preds = %44, %40
  %49 = load %struct.TYPE_35__*, %struct.TYPE_35__** %5, align 8
  %50 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 8
  %52 = load i32, i32* @UV_HANDLE_ZERO_READ, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %56, label %55

55:                                               ; preds = %48
  br label %250

56:                                               ; preds = %48
  br label %96

57:                                               ; preds = %44
  %58 = load %struct.TYPE_35__*, %struct.TYPE_35__** %5, align 8
  %59 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 8
  %61 = load i32, i32* @UV_HANDLE_READING, align 4
  %62 = and i32 %60, %61
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %95

64:                                               ; preds = %57
  %65 = load %struct.TYPE_35__*, %struct.TYPE_35__** %5, align 8
  %66 = call i32 @uv_udp_recv_stop(%struct.TYPE_35__* %65)
  %67 = load %struct.TYPE_35__*, %struct.TYPE_35__** %5, align 8
  %68 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 8
  %70 = load i32, i32* @UV_HANDLE_ZERO_READ, align 4
  %71 = and i32 %69, %70
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %82

73:                                               ; preds = %64
  %74 = call { i64, i32* } @uv_buf_init(i32* null, i32 0)
  %75 = bitcast %struct.TYPE_37__* %10 to { i64, i32* }*
  %76 = getelementptr inbounds { i64, i32* }, { i64, i32* }* %75, i32 0, i32 0
  %77 = extractvalue { i64, i32* } %74, 0
  store i64 %77, i64* %76, align 8
  %78 = getelementptr inbounds { i64, i32* }, { i64, i32* }* %75, i32 0, i32 1
  %79 = extractvalue { i64, i32* } %74, 1
  store i32* %79, i32** %78, align 8
  %80 = bitcast %struct.TYPE_37__* %7 to i8*
  %81 = bitcast %struct.TYPE_37__* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %80, i8* align 8 %81, i64 16, i1 false)
  br label %87

82:                                               ; preds = %64
  %83 = load %struct.TYPE_35__*, %struct.TYPE_35__** %5, align 8
  %84 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %83, i32 0, i32 6
  %85 = bitcast %struct.TYPE_37__* %7 to i8*
  %86 = bitcast %struct.TYPE_37__* %84 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %85, i8* align 8 %86, i64 16, i1 false)
  br label %87

87:                                               ; preds = %82, %73
  %88 = load %struct.TYPE_35__*, %struct.TYPE_35__** %5, align 8
  %89 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %88, i32 0, i32 2
  %90 = load i32 (%struct.TYPE_35__*, i64, %struct.TYPE_37__*, %struct.sockaddr*, i32)*, i32 (%struct.TYPE_35__*, i64, %struct.TYPE_37__*, %struct.sockaddr*, i32)** %89, align 8
  %91 = load %struct.TYPE_35__*, %struct.TYPE_35__** %5, align 8
  %92 = load i64, i64* %9, align 8
  %93 = call i64 @uv_translate_sys_error(i64 %92)
  %94 = call i32 %90(%struct.TYPE_35__* %91, i64 %93, %struct.TYPE_37__* %7, %struct.sockaddr* null, i32 0)
  br label %95

95:                                               ; preds = %87, %57
  br label %250

96:                                               ; preds = %56
  br label %97

97:                                               ; preds = %96, %39
  br label %98

98:                                               ; preds = %97, %3
  %99 = load %struct.TYPE_35__*, %struct.TYPE_35__** %5, align 8
  %100 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 8
  %102 = load i32, i32* @UV_HANDLE_ZERO_READ, align 4
  %103 = and i32 %101, %102
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %135, label %105

105:                                              ; preds = %98
  %106 = load %struct.TYPE_36__*, %struct.TYPE_36__** %6, align 8
  %107 = call i32 @REQ_SUCCESS(%struct.TYPE_36__* %106)
  %108 = icmp ne i32 %107, 0
  %109 = xor i1 %108, true
  %110 = zext i1 %109 to i32
  store i32 %110, i32* %8, align 4
  %111 = load %struct.TYPE_35__*, %struct.TYPE_35__** %5, align 8
  %112 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %111, i32 0, i32 2
  %113 = load i32 (%struct.TYPE_35__*, i64, %struct.TYPE_37__*, %struct.sockaddr*, i32)*, i32 (%struct.TYPE_35__*, i64, %struct.TYPE_37__*, %struct.sockaddr*, i32)** %112, align 8
  %114 = load %struct.TYPE_35__*, %struct.TYPE_35__** %5, align 8
  %115 = load %struct.TYPE_36__*, %struct.TYPE_36__** %6, align 8
  %116 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %115, i32 0, i32 0
  %117 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %116, i32 0, i32 0
  %118 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %117, i32 0, i32 0
  %119 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %118, i32 0, i32 0
  %120 = load i64, i64* %119, align 8
  %121 = load %struct.TYPE_35__*, %struct.TYPE_35__** %5, align 8
  %122 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %121, i32 0, i32 6
  %123 = load %struct.TYPE_35__*, %struct.TYPE_35__** %5, align 8
  %124 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %123, i32 0, i32 5
  %125 = bitcast i32* %124 to %struct.sockaddr.0*
  %126 = bitcast %struct.sockaddr.0* %125 to %struct.sockaddr*
  %127 = load i32, i32* %8, align 4
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %131

129:                                              ; preds = %105
  %130 = load i32, i32* @UV_UDP_PARTIAL, align 4
  br label %132

131:                                              ; preds = %105
  br label %132

132:                                              ; preds = %131, %129
  %133 = phi i32 [ %130, %129 ], [ 0, %131 ]
  %134 = call i32 %113(%struct.TYPE_35__* %114, i64 %120, %struct.TYPE_37__* %122, %struct.sockaddr* %126, i32 %133)
  br label %249

135:                                              ; preds = %98
  %136 = load %struct.TYPE_35__*, %struct.TYPE_35__** %5, align 8
  %137 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %136, i32 0, i32 1
  %138 = load i32, i32* %137, align 8
  %139 = load i32, i32* @UV_HANDLE_READING, align 4
  %140 = and i32 %138, %139
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %142, label %248

142:                                              ; preds = %135
  %143 = call { i64, i32* } @uv_buf_init(i32* null, i32 0)
  %144 = bitcast %struct.TYPE_37__* %16 to { i64, i32* }*
  %145 = getelementptr inbounds { i64, i32* }, { i64, i32* }* %144, i32 0, i32 0
  %146 = extractvalue { i64, i32* } %143, 0
  store i64 %146, i64* %145, align 8
  %147 = getelementptr inbounds { i64, i32* }, { i64, i32* }* %144, i32 0, i32 1
  %148 = extractvalue { i64, i32* } %143, 1
  store i32* %148, i32** %147, align 8
  %149 = bitcast %struct.TYPE_37__* %7 to i8*
  %150 = bitcast %struct.TYPE_37__* %16 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %149, i8* align 8 %150, i64 16, i1 false)
  %151 = load %struct.TYPE_35__*, %struct.TYPE_35__** %5, align 8
  %152 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %151, i32 0, i32 4
  %153 = load i32 (i32*, i32, %struct.TYPE_37__*)*, i32 (i32*, i32, %struct.TYPE_37__*)** %152, align 8
  %154 = load %struct.TYPE_35__*, %struct.TYPE_35__** %5, align 8
  %155 = bitcast %struct.TYPE_35__* %154 to i32*
  %156 = call i32 %153(i32* %155, i32 65536, %struct.TYPE_37__* %7)
  %157 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %7, i32 0, i32 1
  %158 = load i32*, i32** %157, align 8
  %159 = icmp eq i32* %158, null
  br i1 %159, label %164, label %160

160:                                              ; preds = %142
  %161 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %7, i32 0, i32 0
  %162 = load i64, i64* %161, align 8
  %163 = icmp eq i64 %162, 0
  br i1 %163, label %164, label %171

164:                                              ; preds = %160, %142
  %165 = load %struct.TYPE_35__*, %struct.TYPE_35__** %5, align 8
  %166 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %165, i32 0, i32 2
  %167 = load i32 (%struct.TYPE_35__*, i64, %struct.TYPE_37__*, %struct.sockaddr*, i32)*, i32 (%struct.TYPE_35__*, i64, %struct.TYPE_37__*, %struct.sockaddr*, i32)** %166, align 8
  %168 = load %struct.TYPE_35__*, %struct.TYPE_35__** %5, align 8
  %169 = load i64, i64* @UV_ENOBUFS, align 8
  %170 = call i32 %167(%struct.TYPE_35__* %168, i64 %169, %struct.TYPE_37__* %7, %struct.sockaddr* null, i32 0)
  br label %250

171:                                              ; preds = %160
  %172 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %7, i32 0, i32 1
  %173 = load i32*, i32** %172, align 8
  %174 = icmp ne i32* %173, null
  %175 = zext i1 %174 to i32
  %176 = call i32 @assert(i32 %175)
  %177 = call i32 @memset(%struct.sockaddr_storage* %14, i32 0, i32 4)
  store i32 4, i32* %15, align 4
  store i64 0, i64* %13, align 8
  %178 = load %struct.TYPE_35__*, %struct.TYPE_35__** %5, align 8
  %179 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %178, i32 0, i32 3
  %180 = load i32, i32* %179, align 8
  %181 = bitcast %struct.TYPE_37__* %7 to i32*
  %182 = bitcast %struct.sockaddr_storage* %14 to %struct.sockaddr.0*
  %183 = call i64 @WSARecvFrom(i32 %180, i32* %181, i32 1, i64* %11, i64* %13, %struct.sockaddr.0* %182, i32* %15, i32* null, i32* null)
  %184 = load i64, i64* @SOCKET_ERROR, align 8
  %185 = icmp ne i64 %183, %184
  br i1 %185, label %186, label %195

186:                                              ; preds = %171
  %187 = load %struct.TYPE_35__*, %struct.TYPE_35__** %5, align 8
  %188 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %187, i32 0, i32 2
  %189 = load i32 (%struct.TYPE_35__*, i64, %struct.TYPE_37__*, %struct.sockaddr*, i32)*, i32 (%struct.TYPE_35__*, i64, %struct.TYPE_37__*, %struct.sockaddr*, i32)** %188, align 8
  %190 = load %struct.TYPE_35__*, %struct.TYPE_35__** %5, align 8
  %191 = load i64, i64* %11, align 8
  %192 = bitcast %struct.sockaddr_storage* %14 to %struct.sockaddr.0*
  %193 = bitcast %struct.sockaddr.0* %192 to %struct.sockaddr*
  %194 = call i32 %189(%struct.TYPE_35__* %190, i64 %191, %struct.TYPE_37__* %7, %struct.sockaddr* %193, i32 0)
  br label %247

195:                                              ; preds = %171
  %196 = call i64 (...) @WSAGetLastError()
  store i64 %196, i64* %12, align 8
  %197 = load i64, i64* %12, align 8
  %198 = load i64, i64* @WSAEMSGSIZE, align 8
  %199 = icmp eq i64 %197, %198
  br i1 %199, label %200, label %210

200:                                              ; preds = %195
  %201 = load %struct.TYPE_35__*, %struct.TYPE_35__** %5, align 8
  %202 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %201, i32 0, i32 2
  %203 = load i32 (%struct.TYPE_35__*, i64, %struct.TYPE_37__*, %struct.sockaddr*, i32)*, i32 (%struct.TYPE_35__*, i64, %struct.TYPE_37__*, %struct.sockaddr*, i32)** %202, align 8
  %204 = load %struct.TYPE_35__*, %struct.TYPE_35__** %5, align 8
  %205 = load i64, i64* %11, align 8
  %206 = bitcast %struct.sockaddr_storage* %14 to %struct.sockaddr.0*
  %207 = bitcast %struct.sockaddr.0* %206 to %struct.sockaddr*
  %208 = load i32, i32* @UV_UDP_PARTIAL, align 4
  %209 = call i32 %203(%struct.TYPE_35__* %204, i64 %205, %struct.TYPE_37__* %7, %struct.sockaddr* %207, i32 %208)
  br label %246

210:                                              ; preds = %195
  %211 = load i64, i64* %12, align 8
  %212 = load i64, i64* @WSAEWOULDBLOCK, align 8
  %213 = icmp eq i64 %211, %212
  br i1 %213, label %214, label %220

214:                                              ; preds = %210
  %215 = load %struct.TYPE_35__*, %struct.TYPE_35__** %5, align 8
  %216 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %215, i32 0, i32 2
  %217 = load i32 (%struct.TYPE_35__*, i64, %struct.TYPE_37__*, %struct.sockaddr*, i32)*, i32 (%struct.TYPE_35__*, i64, %struct.TYPE_37__*, %struct.sockaddr*, i32)** %216, align 8
  %218 = load %struct.TYPE_35__*, %struct.TYPE_35__** %5, align 8
  %219 = call i32 %217(%struct.TYPE_35__* %218, i64 0, %struct.TYPE_37__* %7, %struct.sockaddr* null, i32 0)
  br label %245

220:                                              ; preds = %210
  %221 = load i64, i64* %12, align 8
  %222 = load i64, i64* @WSAECONNRESET, align 8
  %223 = icmp eq i64 %221, %222
  br i1 %223, label %228, label %224

224:                                              ; preds = %220
  %225 = load i64, i64* %12, align 8
  %226 = load i64, i64* @WSAENETRESET, align 8
  %227 = icmp eq i64 %225, %226
  br i1 %227, label %228, label %234

228:                                              ; preds = %224, %220
  %229 = load %struct.TYPE_35__*, %struct.TYPE_35__** %5, align 8
  %230 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %229, i32 0, i32 2
  %231 = load i32 (%struct.TYPE_35__*, i64, %struct.TYPE_37__*, %struct.sockaddr*, i32)*, i32 (%struct.TYPE_35__*, i64, %struct.TYPE_37__*, %struct.sockaddr*, i32)** %230, align 8
  %232 = load %struct.TYPE_35__*, %struct.TYPE_35__** %5, align 8
  %233 = call i32 %231(%struct.TYPE_35__* %232, i64 0, %struct.TYPE_37__* %7, %struct.sockaddr* null, i32 0)
  br label %244

234:                                              ; preds = %224
  %235 = load %struct.TYPE_35__*, %struct.TYPE_35__** %5, align 8
  %236 = call i32 @uv_udp_recv_stop(%struct.TYPE_35__* %235)
  %237 = load %struct.TYPE_35__*, %struct.TYPE_35__** %5, align 8
  %238 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %237, i32 0, i32 2
  %239 = load i32 (%struct.TYPE_35__*, i64, %struct.TYPE_37__*, %struct.sockaddr*, i32)*, i32 (%struct.TYPE_35__*, i64, %struct.TYPE_37__*, %struct.sockaddr*, i32)** %238, align 8
  %240 = load %struct.TYPE_35__*, %struct.TYPE_35__** %5, align 8
  %241 = load i64, i64* %12, align 8
  %242 = call i64 @uv_translate_sys_error(i64 %241)
  %243 = call i32 %239(%struct.TYPE_35__* %240, i64 %242, %struct.TYPE_37__* %7, %struct.sockaddr* null, i32 0)
  br label %244

244:                                              ; preds = %234, %228
  br label %245

245:                                              ; preds = %244, %214
  br label %246

246:                                              ; preds = %245, %200
  br label %247

247:                                              ; preds = %246, %186
  br label %248

248:                                              ; preds = %247, %135
  br label %249

249:                                              ; preds = %248, %132
  br label %250

250:                                              ; preds = %249, %164, %95, %55
  %251 = load %struct.TYPE_35__*, %struct.TYPE_35__** %5, align 8
  %252 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %251, i32 0, i32 1
  %253 = load i32, i32* %252, align 8
  %254 = load i32, i32* @UV_HANDLE_READING, align 4
  %255 = and i32 %253, %254
  %256 = icmp ne i32 %255, 0
  br i1 %256, label %257, label %268

257:                                              ; preds = %250
  %258 = load %struct.TYPE_35__*, %struct.TYPE_35__** %5, align 8
  %259 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %258, i32 0, i32 1
  %260 = load i32, i32* %259, align 8
  %261 = load i32, i32* @UV_HANDLE_READ_PENDING, align 4
  %262 = and i32 %260, %261
  %263 = icmp ne i32 %262, 0
  br i1 %263, label %268, label %264

264:                                              ; preds = %257
  %265 = load i32*, i32** %4, align 8
  %266 = load %struct.TYPE_35__*, %struct.TYPE_35__** %5, align 8
  %267 = call i32 @uv_udp_queue_recv(i32* %265, %struct.TYPE_35__* %266)
  br label %268

268:                                              ; preds = %264, %257, %250
  %269 = load %struct.TYPE_35__*, %struct.TYPE_35__** %5, align 8
  %270 = call i32 @DECREASE_PENDING_REQ_COUNT(%struct.TYPE_35__* %269)
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @REQ_SUCCESS(%struct.TYPE_36__*) #1

declare dso_local i64 @GET_REQ_SOCK_ERROR(%struct.TYPE_36__*) #1

declare dso_local i32 @uv_udp_recv_stop(%struct.TYPE_35__*) #1

declare dso_local { i64, i32* } @uv_buf_init(i32*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i64 @uv_translate_sys_error(i64) #1

declare dso_local i32 @memset(%struct.sockaddr_storage*, i32, i32) #1

declare dso_local i64 @WSARecvFrom(i32, i32*, i32, i64*, i64*, %struct.sockaddr.0*, i32*, i32*, i32*) #1

declare dso_local i64 @WSAGetLastError(...) #1

declare dso_local i32 @uv_udp_queue_recv(i32*, %struct.TYPE_35__*) #1

declare dso_local i32 @DECREASE_PENDING_REQ_COUNT(%struct.TYPE_35__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
