; ModuleID = '/home/carl/AnghaBench/lab/engine/code/qcommon/extr_net_ip.c_NET_GetPacket.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/qcommon/extr_net_ip.c_NET_GetPacket.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32*, i16, i32 }
%struct.TYPE_8__ = type { i32*, i32, i32, i32 }
%struct.sockaddr_storage = type { i32 }
%struct.sockaddr = type { i32 }
%struct.sockaddr_in = type { i32 }

@ip_socket = common dso_local global i64 0, align 8
@INVALID_SOCKET = common dso_local global i64 0, align 8
@SOCKET_ERROR = common dso_local global i32 0, align 4
@socketError = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@ECONNRESET = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"NET_GetPacket: %s\0A\00", align 1
@usingSocks = common dso_local global i64 0, align 8
@socksRelayAddr = common dso_local global i32 0, align 4
@qfalse = common dso_local global i32 0, align 4
@NA_IP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"Oversize packet from %s\0A\00", align 1
@qtrue = common dso_local global i32 0, align 4
@ip6_socket = common dso_local global i64 0, align 8
@multicast6_socket = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @NET_GetPacket(%struct.TYPE_7__* %0, %struct.TYPE_8__* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca %struct.TYPE_8__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.sockaddr_storage, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %5, align 8
  store %struct.TYPE_8__* %1, %struct.TYPE_8__** %6, align 8
  store i32* %2, i32** %7, align 8
  %12 = load i64, i64* @ip_socket, align 8
  %13 = load i64, i64* @INVALID_SOCKET, align 8
  %14 = icmp ne i64 %12, %13
  br i1 %14, label %15, label %169

15:                                               ; preds = %3
  %16 = load i64, i64* @ip_socket, align 8
  %17 = load i32*, i32** %7, align 8
  %18 = call i64 @FD_ISSET(i64 %16, i32* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %169

20:                                               ; preds = %15
  store i32 4, i32* %10, align 4
  %21 = load i64, i64* @ip_socket, align 8
  %22 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %23 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %22, i32 0, i32 0
  %24 = load i32*, i32** %23, align 8
  %25 = bitcast i32* %24 to i8*
  %26 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = bitcast %struct.sockaddr_storage* %9 to %struct.sockaddr*
  %30 = call i32 @recvfrom(i64 %21, i8* %25, i32 %28, i32 0, %struct.sockaddr* %29, i32* %10)
  store i32 %30, i32* %8, align 4
  %31 = load i32, i32* %8, align 4
  %32 = load i32, i32* @SOCKET_ERROR, align 4
  %33 = icmp eq i32 %31, %32
  br i1 %33, label %34, label %47

34:                                               ; preds = %20
  %35 = load i32, i32* @socketError, align 4
  store i32 %35, i32* %11, align 4
  %36 = load i32, i32* %11, align 4
  %37 = load i32, i32* @EAGAIN, align 4
  %38 = icmp ne i32 %36, %37
  br i1 %38, label %39, label %46

39:                                               ; preds = %34
  %40 = load i32, i32* %11, align 4
  %41 = load i32, i32* @ECONNRESET, align 4
  %42 = icmp ne i32 %40, %41
  br i1 %42, label %43, label %46

43:                                               ; preds = %39
  %44 = call i32 (...) @NET_ErrorString()
  %45 = call i32 @Com_Printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %44)
  br label %46

46:                                               ; preds = %43, %39, %34
  br label %168

47:                                               ; preds = %20
  %48 = bitcast %struct.sockaddr_storage* %9 to %struct.sockaddr_in*
  %49 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @memset(i32 %50, i32 0, i32 8)
  %52 = load i64, i64* @usingSocks, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %141

54:                                               ; preds = %47
  %55 = load i32, i32* %10, align 4
  %56 = call i64 @memcmp(%struct.sockaddr_storage* %9, i32* @socksRelayAddr, i32 %55)
  %57 = icmp eq i64 %56, 0
  br i1 %57, label %58, label %141

58:                                               ; preds = %54
  %59 = load i32, i32* %8, align 4
  %60 = icmp slt i32 %59, 10
  br i1 %60, label %89, label %61

61:                                               ; preds = %58
  %62 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %63 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %62, i32 0, i32 0
  %64 = load i32*, i32** %63, align 8
  %65 = getelementptr inbounds i32, i32* %64, i64 0
  %66 = load i32, i32* %65, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %89, label %68

68:                                               ; preds = %61
  %69 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %70 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %69, i32 0, i32 0
  %71 = load i32*, i32** %70, align 8
  %72 = getelementptr inbounds i32, i32* %71, i64 1
  %73 = load i32, i32* %72, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %89, label %75

75:                                               ; preds = %68
  %76 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %77 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %76, i32 0, i32 0
  %78 = load i32*, i32** %77, align 8
  %79 = getelementptr inbounds i32, i32* %78, i64 2
  %80 = load i32, i32* %79, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %89, label %82

82:                                               ; preds = %75
  %83 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %84 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %83, i32 0, i32 0
  %85 = load i32*, i32** %84, align 8
  %86 = getelementptr inbounds i32, i32* %85, i64 3
  %87 = load i32, i32* %86, align 4
  %88 = icmp ne i32 %87, 1
  br i1 %88, label %89, label %91

89:                                               ; preds = %82, %75, %68, %61, %58
  %90 = load i32, i32* @qfalse, align 4
  store i32 %90, i32* %4, align 4
  br label %301

91:                                               ; preds = %82
  %92 = load i32, i32* @NA_IP, align 4
  %93 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %94 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %93, i32 0, i32 2
  store i32 %92, i32* %94, align 4
  %95 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %96 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %95, i32 0, i32 0
  %97 = load i32*, i32** %96, align 8
  %98 = getelementptr inbounds i32, i32* %97, i64 4
  %99 = load i32, i32* %98, align 4
  %100 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %101 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %100, i32 0, i32 0
  %102 = load i32*, i32** %101, align 8
  %103 = getelementptr inbounds i32, i32* %102, i64 0
  store i32 %99, i32* %103, align 4
  %104 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %105 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %104, i32 0, i32 0
  %106 = load i32*, i32** %105, align 8
  %107 = getelementptr inbounds i32, i32* %106, i64 5
  %108 = load i32, i32* %107, align 4
  %109 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %110 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %109, i32 0, i32 0
  %111 = load i32*, i32** %110, align 8
  %112 = getelementptr inbounds i32, i32* %111, i64 1
  store i32 %108, i32* %112, align 4
  %113 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %114 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %113, i32 0, i32 0
  %115 = load i32*, i32** %114, align 8
  %116 = getelementptr inbounds i32, i32* %115, i64 6
  %117 = load i32, i32* %116, align 4
  %118 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %119 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %118, i32 0, i32 0
  %120 = load i32*, i32** %119, align 8
  %121 = getelementptr inbounds i32, i32* %120, i64 2
  store i32 %117, i32* %121, align 4
  %122 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %123 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %122, i32 0, i32 0
  %124 = load i32*, i32** %123, align 8
  %125 = getelementptr inbounds i32, i32* %124, i64 7
  %126 = load i32, i32* %125, align 4
  %127 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %128 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %127, i32 0, i32 0
  %129 = load i32*, i32** %128, align 8
  %130 = getelementptr inbounds i32, i32* %129, i64 3
  store i32 %126, i32* %130, align 4
  %131 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %132 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %131, i32 0, i32 0
  %133 = load i32*, i32** %132, align 8
  %134 = getelementptr inbounds i32, i32* %133, i64 8
  %135 = bitcast i32* %134 to i16*
  %136 = load i16, i16* %135, align 2
  %137 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %138 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %137, i32 0, i32 1
  store i16 %136, i16* %138, align 8
  %139 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %140 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %139, i32 0, i32 2
  store i32 10, i32* %140, align 4
  br label %147

141:                                              ; preds = %54, %47
  %142 = bitcast %struct.sockaddr_storage* %9 to %struct.sockaddr*
  %143 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %144 = call i32 @SockadrToNetadr(%struct.sockaddr* %142, %struct.TYPE_7__* %143)
  %145 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %146 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %145, i32 0, i32 2
  store i32 0, i32* %146, align 4
  br label %147

147:                                              ; preds = %141, %91
  %148 = load i32, i32* %8, align 4
  %149 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %150 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %149, i32 0, i32 1
  %151 = load i32, i32* %150, align 8
  %152 = icmp sge i32 %148, %151
  br i1 %152, label %153, label %163

153:                                              ; preds = %147
  %154 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %155 = bitcast %struct.TYPE_7__* %154 to { i32*, i64 }*
  %156 = getelementptr inbounds { i32*, i64 }, { i32*, i64 }* %155, i32 0, i32 0
  %157 = load i32*, i32** %156, align 8
  %158 = getelementptr inbounds { i32*, i64 }, { i32*, i64 }* %155, i32 0, i32 1
  %159 = load i64, i64* %158, align 8
  %160 = call i32 @NET_AdrToString(i32* %157, i64 %159)
  %161 = call i32 @Com_Printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 %160)
  %162 = load i32, i32* @qfalse, align 4
  store i32 %162, i32* %4, align 4
  br label %301

163:                                              ; preds = %147
  %164 = load i32, i32* %8, align 4
  %165 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %166 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %165, i32 0, i32 3
  store i32 %164, i32* %166, align 8
  %167 = load i32, i32* @qtrue, align 4
  store i32 %167, i32* %4, align 4
  br label %301

168:                                              ; preds = %46
  br label %169

169:                                              ; preds = %168, %15, %3
  %170 = load i64, i64* @ip6_socket, align 8
  %171 = load i64, i64* @INVALID_SOCKET, align 8
  %172 = icmp ne i64 %170, %171
  br i1 %172, label %173, label %232

173:                                              ; preds = %169
  %174 = load i64, i64* @ip6_socket, align 8
  %175 = load i32*, i32** %7, align 8
  %176 = call i64 @FD_ISSET(i64 %174, i32* %175)
  %177 = icmp ne i64 %176, 0
  br i1 %177, label %178, label %232

178:                                              ; preds = %173
  store i32 4, i32* %10, align 4
  %179 = load i64, i64* @ip6_socket, align 8
  %180 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %181 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %180, i32 0, i32 0
  %182 = load i32*, i32** %181, align 8
  %183 = bitcast i32* %182 to i8*
  %184 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %185 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %184, i32 0, i32 1
  %186 = load i32, i32* %185, align 8
  %187 = bitcast %struct.sockaddr_storage* %9 to %struct.sockaddr*
  %188 = call i32 @recvfrom(i64 %179, i8* %183, i32 %186, i32 0, %struct.sockaddr* %187, i32* %10)
  store i32 %188, i32* %8, align 4
  %189 = load i32, i32* %8, align 4
  %190 = load i32, i32* @SOCKET_ERROR, align 4
  %191 = icmp eq i32 %189, %190
  br i1 %191, label %192, label %205

192:                                              ; preds = %178
  %193 = load i32, i32* @socketError, align 4
  store i32 %193, i32* %11, align 4
  %194 = load i32, i32* %11, align 4
  %195 = load i32, i32* @EAGAIN, align 4
  %196 = icmp ne i32 %194, %195
  br i1 %196, label %197, label %204

197:                                              ; preds = %192
  %198 = load i32, i32* %11, align 4
  %199 = load i32, i32* @ECONNRESET, align 4
  %200 = icmp ne i32 %198, %199
  br i1 %200, label %201, label %204

201:                                              ; preds = %197
  %202 = call i32 (...) @NET_ErrorString()
  %203 = call i32 @Com_Printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %202)
  br label %204

204:                                              ; preds = %201, %197, %192
  br label %231

205:                                              ; preds = %178
  %206 = bitcast %struct.sockaddr_storage* %9 to %struct.sockaddr*
  %207 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %208 = call i32 @SockadrToNetadr(%struct.sockaddr* %206, %struct.TYPE_7__* %207)
  %209 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %210 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %209, i32 0, i32 2
  store i32 0, i32* %210, align 4
  %211 = load i32, i32* %8, align 4
  %212 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %213 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %212, i32 0, i32 1
  %214 = load i32, i32* %213, align 8
  %215 = icmp sge i32 %211, %214
  br i1 %215, label %216, label %226

216:                                              ; preds = %205
  %217 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %218 = bitcast %struct.TYPE_7__* %217 to { i32*, i64 }*
  %219 = getelementptr inbounds { i32*, i64 }, { i32*, i64 }* %218, i32 0, i32 0
  %220 = load i32*, i32** %219, align 8
  %221 = getelementptr inbounds { i32*, i64 }, { i32*, i64 }* %218, i32 0, i32 1
  %222 = load i64, i64* %221, align 8
  %223 = call i32 @NET_AdrToString(i32* %220, i64 %222)
  %224 = call i32 @Com_Printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 %223)
  %225 = load i32, i32* @qfalse, align 4
  store i32 %225, i32* %4, align 4
  br label %301

226:                                              ; preds = %205
  %227 = load i32, i32* %8, align 4
  %228 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %229 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %228, i32 0, i32 3
  store i32 %227, i32* %229, align 8
  %230 = load i32, i32* @qtrue, align 4
  store i32 %230, i32* %4, align 4
  br label %301

231:                                              ; preds = %204
  br label %232

232:                                              ; preds = %231, %173, %169
  %233 = load i64, i64* @multicast6_socket, align 8
  %234 = load i64, i64* @INVALID_SOCKET, align 8
  %235 = icmp ne i64 %233, %234
  br i1 %235, label %236, label %299

236:                                              ; preds = %232
  %237 = load i64, i64* @multicast6_socket, align 8
  %238 = load i64, i64* @ip6_socket, align 8
  %239 = icmp ne i64 %237, %238
  br i1 %239, label %240, label %299

240:                                              ; preds = %236
  %241 = load i64, i64* @multicast6_socket, align 8
  %242 = load i32*, i32** %7, align 8
  %243 = call i64 @FD_ISSET(i64 %241, i32* %242)
  %244 = icmp ne i64 %243, 0
  br i1 %244, label %245, label %299

245:                                              ; preds = %240
  store i32 4, i32* %10, align 4
  %246 = load i64, i64* @multicast6_socket, align 8
  %247 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %248 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %247, i32 0, i32 0
  %249 = load i32*, i32** %248, align 8
  %250 = bitcast i32* %249 to i8*
  %251 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %252 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %251, i32 0, i32 1
  %253 = load i32, i32* %252, align 8
  %254 = bitcast %struct.sockaddr_storage* %9 to %struct.sockaddr*
  %255 = call i32 @recvfrom(i64 %246, i8* %250, i32 %253, i32 0, %struct.sockaddr* %254, i32* %10)
  store i32 %255, i32* %8, align 4
  %256 = load i32, i32* %8, align 4
  %257 = load i32, i32* @SOCKET_ERROR, align 4
  %258 = icmp eq i32 %256, %257
  br i1 %258, label %259, label %272

259:                                              ; preds = %245
  %260 = load i32, i32* @socketError, align 4
  store i32 %260, i32* %11, align 4
  %261 = load i32, i32* %11, align 4
  %262 = load i32, i32* @EAGAIN, align 4
  %263 = icmp ne i32 %261, %262
  br i1 %263, label %264, label %271

264:                                              ; preds = %259
  %265 = load i32, i32* %11, align 4
  %266 = load i32, i32* @ECONNRESET, align 4
  %267 = icmp ne i32 %265, %266
  br i1 %267, label %268, label %271

268:                                              ; preds = %264
  %269 = call i32 (...) @NET_ErrorString()
  %270 = call i32 @Com_Printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %269)
  br label %271

271:                                              ; preds = %268, %264, %259
  br label %298

272:                                              ; preds = %245
  %273 = bitcast %struct.sockaddr_storage* %9 to %struct.sockaddr*
  %274 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %275 = call i32 @SockadrToNetadr(%struct.sockaddr* %273, %struct.TYPE_7__* %274)
  %276 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %277 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %276, i32 0, i32 2
  store i32 0, i32* %277, align 4
  %278 = load i32, i32* %8, align 4
  %279 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %280 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %279, i32 0, i32 1
  %281 = load i32, i32* %280, align 8
  %282 = icmp sge i32 %278, %281
  br i1 %282, label %283, label %293

283:                                              ; preds = %272
  %284 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %285 = bitcast %struct.TYPE_7__* %284 to { i32*, i64 }*
  %286 = getelementptr inbounds { i32*, i64 }, { i32*, i64 }* %285, i32 0, i32 0
  %287 = load i32*, i32** %286, align 8
  %288 = getelementptr inbounds { i32*, i64 }, { i32*, i64 }* %285, i32 0, i32 1
  %289 = load i64, i64* %288, align 8
  %290 = call i32 @NET_AdrToString(i32* %287, i64 %289)
  %291 = call i32 @Com_Printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 %290)
  %292 = load i32, i32* @qfalse, align 4
  store i32 %292, i32* %4, align 4
  br label %301

293:                                              ; preds = %272
  %294 = load i32, i32* %8, align 4
  %295 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %296 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %295, i32 0, i32 3
  store i32 %294, i32* %296, align 8
  %297 = load i32, i32* @qtrue, align 4
  store i32 %297, i32* %4, align 4
  br label %301

298:                                              ; preds = %271
  br label %299

299:                                              ; preds = %298, %240, %236, %232
  %300 = load i32, i32* @qfalse, align 4
  store i32 %300, i32* %4, align 4
  br label %301

301:                                              ; preds = %299, %293, %283, %226, %216, %163, %153, %89
  %302 = load i32, i32* %4, align 4
  ret i32 %302
}

declare dso_local i64 @FD_ISSET(i64, i32*) #1

declare dso_local i32 @recvfrom(i64, i8*, i32, i32, %struct.sockaddr*, i32*) #1

declare dso_local i32 @Com_Printf(i8*, i32) #1

declare dso_local i32 @NET_ErrorString(...) #1

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i64 @memcmp(%struct.sockaddr_storage*, i32*, i32) #1

declare dso_local i32 @SockadrToNetadr(%struct.sockaddr*, %struct.TYPE_7__*) #1

declare dso_local i32 @NET_AdrToString(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
