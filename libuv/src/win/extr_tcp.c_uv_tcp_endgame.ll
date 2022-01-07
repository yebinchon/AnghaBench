; ModuleID = '/home/carl/AnghaBench/libuv/src/win/extr_tcp.c_uv_tcp_endgame.c'
source_filename = "/home/carl/AnghaBench/libuv/src/win/extr_tcp.c_uv_tcp_endgame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_26__ = type { i32 }
%struct.TYPE_24__ = type { i32, i64, %struct.TYPE_23__, %struct.TYPE_22__, i32, %struct.TYPE_20__ }
%struct.TYPE_23__ = type { i64, i32* }
%struct.TYPE_22__ = type { %struct.TYPE_21__ }
%struct.TYPE_21__ = type { %struct.TYPE_25__* }
%struct.TYPE_25__ = type { i64, i32* }
%struct.TYPE_20__ = type { %struct.TYPE_19__ }
%struct.TYPE_19__ = type { i64, %struct.TYPE_18__* }
%struct.TYPE_18__ = type { i32 (%struct.TYPE_18__*, i32)* }

@UV_HANDLE_CONNECTION = common dso_local global i32 0, align 4
@UV_HANDLE_CLOSING = common dso_local global i32 0, align 4
@ERROR_OPERATION_ABORTED = common dso_local global i32 0, align 4
@SD_SEND = common dso_local global i32 0, align 4
@SOCKET_ERROR = common dso_local global i64 0, align 8
@UV_HANDLE_CLOSED = common dso_local global i32 0, align 4
@UV_HANDLE_TCP_SOCKET_CLOSED = common dso_local global i32 0, align 4
@INVALID_SOCKET = common dso_local global i32 0, align 4
@UV_HANDLE_EMULATE_IOCP = common dso_local global i32 0, align 4
@uv_simultaneous_server_accepts = common dso_local global i32 0, align 4
@INVALID_HANDLE_VALUE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @uv_tcp_endgame(%struct.TYPE_26__* %0, %struct.TYPE_24__* %1) #0 {
  %3 = alloca %struct.TYPE_26__*, align 8
  %4 = alloca %struct.TYPE_24__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_25__*, align 8
  store %struct.TYPE_26__* %0, %struct.TYPE_26__** %3, align 8
  store %struct.TYPE_24__* %1, %struct.TYPE_24__** %4, align 8
  %8 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %9 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = load i32, i32* @UV_HANDLE_CONNECTION, align 4
  %12 = and i32 %10, %11
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %88

14:                                               ; preds = %2
  %15 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %15, i32 0, i32 5
  %17 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %17, i32 0, i32 1
  %19 = load %struct.TYPE_18__*, %struct.TYPE_18__** %18, align 8
  %20 = icmp ne %struct.TYPE_18__* %19, null
  br i1 %20, label %21, label %88

21:                                               ; preds = %14
  %22 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %22, i32 0, i32 5
  %24 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp eq i64 %26, 0
  br i1 %27, label %28, label %88

28:                                               ; preds = %21
  %29 = load %struct.TYPE_26__*, %struct.TYPE_26__** %3, align 8
  %30 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %31 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %32 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %31, i32 0, i32 5
  %33 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %33, i32 0, i32 1
  %35 = load %struct.TYPE_18__*, %struct.TYPE_18__** %34, align 8
  %36 = call i32 @UNREGISTER_HANDLE_REQ(%struct.TYPE_26__* %29, %struct.TYPE_24__* %30, %struct.TYPE_18__* %35)
  store i32 0, i32* %5, align 4
  %37 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %38 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = load i32, i32* @UV_HANDLE_CLOSING, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %28
  %44 = load i32, i32* @ERROR_OPERATION_ABORTED, align 4
  store i32 %44, i32* %5, align 4
  br label %56

45:                                               ; preds = %28
  %46 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %47 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %46, i32 0, i32 4
  %48 = load i32, i32* %47, align 8
  %49 = load i32, i32* @SD_SEND, align 4
  %50 = call i64 @shutdown(i32 %48, i32 %49)
  %51 = load i64, i64* @SOCKET_ERROR, align 8
  %52 = icmp eq i64 %50, %51
  br i1 %52, label %53, label %55

53:                                               ; preds = %45
  %54 = call i32 (...) @WSAGetLastError()
  store i32 %54, i32* %5, align 4
  br label %55

55:                                               ; preds = %53, %45
  br label %56

56:                                               ; preds = %55, %43
  %57 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %58 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %57, i32 0, i32 5
  %59 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %59, i32 0, i32 1
  %61 = load %struct.TYPE_18__*, %struct.TYPE_18__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %61, i32 0, i32 0
  %63 = load i32 (%struct.TYPE_18__*, i32)*, i32 (%struct.TYPE_18__*, i32)** %62, align 8
  %64 = icmp ne i32 (%struct.TYPE_18__*, i32)* %63, null
  br i1 %64, label %65, label %81

65:                                               ; preds = %56
  %66 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %67 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %66, i32 0, i32 5
  %68 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %68, i32 0, i32 1
  %70 = load %struct.TYPE_18__*, %struct.TYPE_18__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %70, i32 0, i32 0
  %72 = load i32 (%struct.TYPE_18__*, i32)*, i32 (%struct.TYPE_18__*, i32)** %71, align 8
  %73 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %74 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %73, i32 0, i32 5
  %75 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %75, i32 0, i32 1
  %77 = load %struct.TYPE_18__*, %struct.TYPE_18__** %76, align 8
  %78 = load i32, i32* %5, align 4
  %79 = call i32 @uv_translate_sys_error(i32 %78)
  %80 = call i32 %72(%struct.TYPE_18__* %77, i32 %79)
  br label %81

81:                                               ; preds = %65, %56
  %82 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %83 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %82, i32 0, i32 5
  %84 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %84, i32 0, i32 1
  store %struct.TYPE_18__* null, %struct.TYPE_18__** %85, align 8
  %86 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %87 = call i32 @DECREASE_PENDING_REQ_COUNT(%struct.TYPE_24__* %86)
  br label %259

88:                                               ; preds = %21, %14, %2
  %89 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %90 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = load i32, i32* @UV_HANDLE_CLOSING, align 4
  %93 = and i32 %91, %92
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %259

95:                                               ; preds = %88
  %96 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %97 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %96, i32 0, i32 1
  %98 = load i64, i64* %97, align 8
  %99 = icmp eq i64 %98, 0
  br i1 %99, label %100, label %259

100:                                              ; preds = %95
  %101 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %102 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = load i32, i32* @UV_HANDLE_CLOSED, align 4
  %105 = and i32 %103, %104
  %106 = icmp ne i32 %105, 0
  %107 = xor i1 %106, true
  %108 = zext i1 %107 to i32
  %109 = call i32 @assert(i32 %108)
  %110 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %111 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 8
  %113 = load i32, i32* @UV_HANDLE_TCP_SOCKET_CLOSED, align 4
  %114 = and i32 %112, %113
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %129, label %116

116:                                              ; preds = %100
  %117 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %118 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %117, i32 0, i32 4
  %119 = load i32, i32* %118, align 8
  %120 = call i32 @closesocket(i32 %119)
  %121 = load i32, i32* @INVALID_SOCKET, align 4
  %122 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %123 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %122, i32 0, i32 4
  store i32 %121, i32* %123, align 8
  %124 = load i32, i32* @UV_HANDLE_TCP_SOCKET_CLOSED, align 4
  %125 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %126 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 8
  %128 = or i32 %127, %124
  store i32 %128, i32* %126, align 8
  br label %129

129:                                              ; preds = %116, %100
  %130 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %131 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 8
  %133 = load i32, i32* @UV_HANDLE_CONNECTION, align 4
  %134 = and i32 %132, %133
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %205, label %136

136:                                              ; preds = %129
  %137 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %138 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %137, i32 0, i32 3
  %139 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %138, i32 0, i32 0
  %140 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %139, i32 0, i32 0
  %141 = load %struct.TYPE_25__*, %struct.TYPE_25__** %140, align 8
  %142 = icmp ne %struct.TYPE_25__* %141, null
  br i1 %142, label %143, label %205

143:                                              ; preds = %136
  %144 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %145 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 8
  %147 = load i32, i32* @UV_HANDLE_EMULATE_IOCP, align 4
  %148 = and i32 %146, %147
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %150, label %194

150:                                              ; preds = %143
  store i32 0, i32* %6, align 4
  br label %151

151:                                              ; preds = %190, %150
  %152 = load i32, i32* %6, align 4
  %153 = load i32, i32* @uv_simultaneous_server_accepts, align 4
  %154 = icmp ult i32 %152, %153
  br i1 %154, label %155, label %193

155:                                              ; preds = %151
  %156 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %157 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %156, i32 0, i32 3
  %158 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %157, i32 0, i32 0
  %159 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %158, i32 0, i32 0
  %160 = load %struct.TYPE_25__*, %struct.TYPE_25__** %159, align 8
  %161 = load i32, i32* %6, align 4
  %162 = zext i32 %161 to i64
  %163 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %160, i64 %162
  store %struct.TYPE_25__* %163, %struct.TYPE_25__** %7, align 8
  %164 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %165 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %164, i32 0, i32 0
  %166 = load i64, i64* %165, align 8
  %167 = load i64, i64* @INVALID_HANDLE_VALUE, align 8
  %168 = icmp ne i64 %166, %167
  br i1 %168, label %169, label %177

169:                                              ; preds = %155
  %170 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %171 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %170, i32 0, i32 0
  %172 = load i64, i64* %171, align 8
  %173 = call i32 @UnregisterWait(i64 %172)
  %174 = load i64, i64* @INVALID_HANDLE_VALUE, align 8
  %175 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %176 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %175, i32 0, i32 0
  store i64 %174, i64* %176, align 8
  br label %177

177:                                              ; preds = %169, %155
  %178 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %179 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %178, i32 0, i32 1
  %180 = load i32*, i32** %179, align 8
  %181 = icmp ne i32* %180, null
  br i1 %181, label %182, label %189

182:                                              ; preds = %177
  %183 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %184 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %183, i32 0, i32 1
  %185 = load i32*, i32** %184, align 8
  %186 = call i32 @CloseHandle(i32* %185)
  %187 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %188 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %187, i32 0, i32 1
  store i32* null, i32** %188, align 8
  br label %189

189:                                              ; preds = %182, %177
  br label %190

190:                                              ; preds = %189
  %191 = load i32, i32* %6, align 4
  %192 = add i32 %191, 1
  store i32 %192, i32* %6, align 4
  br label %151

193:                                              ; preds = %151
  br label %194

194:                                              ; preds = %193, %143
  %195 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %196 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %195, i32 0, i32 3
  %197 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %196, i32 0, i32 0
  %198 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %197, i32 0, i32 0
  %199 = load %struct.TYPE_25__*, %struct.TYPE_25__** %198, align 8
  %200 = call i32 @uv__free(%struct.TYPE_25__* %199)
  %201 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %202 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %201, i32 0, i32 3
  %203 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %202, i32 0, i32 0
  %204 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %203, i32 0, i32 0
  store %struct.TYPE_25__* null, %struct.TYPE_25__** %204, align 8
  br label %205

205:                                              ; preds = %194, %136, %129
  %206 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %207 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %206, i32 0, i32 0
  %208 = load i32, i32* %207, align 8
  %209 = load i32, i32* @UV_HANDLE_CONNECTION, align 4
  %210 = and i32 %208, %209
  %211 = icmp ne i32 %210, 0
  br i1 %211, label %212, label %252

212:                                              ; preds = %205
  %213 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %214 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %213, i32 0, i32 0
  %215 = load i32, i32* %214, align 8
  %216 = load i32, i32* @UV_HANDLE_EMULATE_IOCP, align 4
  %217 = and i32 %215, %216
  %218 = icmp ne i32 %217, 0
  br i1 %218, label %219, label %252

219:                                              ; preds = %212
  %220 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %221 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %220, i32 0, i32 2
  %222 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %221, i32 0, i32 0
  %223 = load i64, i64* %222, align 8
  %224 = load i64, i64* @INVALID_HANDLE_VALUE, align 8
  %225 = icmp ne i64 %223, %224
  br i1 %225, label %226, label %236

226:                                              ; preds = %219
  %227 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %228 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %227, i32 0, i32 2
  %229 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %228, i32 0, i32 0
  %230 = load i64, i64* %229, align 8
  %231 = call i32 @UnregisterWait(i64 %230)
  %232 = load i64, i64* @INVALID_HANDLE_VALUE, align 8
  %233 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %234 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %233, i32 0, i32 2
  %235 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %234, i32 0, i32 0
  store i64 %232, i64* %235, align 8
  br label %236

236:                                              ; preds = %226, %219
  %237 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %238 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %237, i32 0, i32 2
  %239 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %238, i32 0, i32 1
  %240 = load i32*, i32** %239, align 8
  %241 = icmp ne i32* %240, null
  br i1 %241, label %242, label %251

242:                                              ; preds = %236
  %243 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %244 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %243, i32 0, i32 2
  %245 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %244, i32 0, i32 1
  %246 = load i32*, i32** %245, align 8
  %247 = call i32 @CloseHandle(i32* %246)
  %248 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %249 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %248, i32 0, i32 2
  %250 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %249, i32 0, i32 1
  store i32* null, i32** %250, align 8
  br label %251

251:                                              ; preds = %242, %236
  br label %252

252:                                              ; preds = %251, %212, %205
  %253 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %254 = call i32 @uv__handle_close(%struct.TYPE_24__* %253)
  %255 = load %struct.TYPE_26__*, %struct.TYPE_26__** %3, align 8
  %256 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %255, i32 0, i32 0
  %257 = load i32, i32* %256, align 4
  %258 = add nsw i32 %257, -1
  store i32 %258, i32* %256, align 4
  br label %259

259:                                              ; preds = %81, %252, %95, %88
  ret void
}

declare dso_local i32 @UNREGISTER_HANDLE_REQ(%struct.TYPE_26__*, %struct.TYPE_24__*, %struct.TYPE_18__*) #1

declare dso_local i64 @shutdown(i32, i32) #1

declare dso_local i32 @WSAGetLastError(...) #1

declare dso_local i32 @uv_translate_sys_error(i32) #1

declare dso_local i32 @DECREASE_PENDING_REQ_COUNT(%struct.TYPE_24__*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @closesocket(i32) #1

declare dso_local i32 @UnregisterWait(i64) #1

declare dso_local i32 @CloseHandle(i32*) #1

declare dso_local i32 @uv__free(%struct.TYPE_25__*) #1

declare dso_local i32 @uv__handle_close(%struct.TYPE_24__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
