; ModuleID = '/home/carl/AnghaBench/h2o/deps/picotls/t/extr_cli.c_handle_connection.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/picotls/t/extr_cli.c_handle_connection.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { %struct.TYPE_14__ }
%struct.TYPE_14__ = type { i64, i64* }
%struct.TYPE_16__ = type { i64, i8* }
%struct.timeval = type { i32, i64 }

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@F_SETFL = common dso_local global i32 0, align 4
@O_NONBLOCK = common dso_local global i32 0, align 4
@O_RDONLY = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"failed to open file:%s:%s\0A\00", align 1
@errno = common dso_local global i64 0, align 8
@PTLS_ERROR_IN_PROGRESS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [19 x i8] c"ptls_handshake:%d\0A\00", align 1
@EINTR = common dso_local global i64 0, align 8
@EWOULDBLOCK = common dso_local global i64 0, align 8
@EAGAIN = common dso_local global i64 0, align 8
@PTLS_EARLY_DATA_ACCEPTANCE_UNKNOWN = common dso_local global i64 0, align 8
@PTLS_EARLY_DATA_ACCEPTED = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [20 x i8] c"ptls_send(1rtt):%d\0A\00", align 1
@.str.4 = private unnamed_addr constant [17 x i8] c"ptls_receive:%d\0A\00", align 1
@.str.5 = private unnamed_addr constant [26 x i8] c"ptls_send(early_data):%d\0A\00", align 1
@PTLS_ALERT_LEVEL_WARNING = common dso_local global i32 0, align 4
@PTLS_ALERT_CLOSE_NOTIFY = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [20 x i8] c"ptls_send_alert:%d\0A\00", align 1
@SHUT_WR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32*, i8*, i8*, %struct.TYPE_15__*, i32, i32)* @handle_connection to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @handle_connection(i32 %0, i32* %1, i8* %2, i8* %3, %struct.TYPE_15__* %4, i32 %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca %struct.TYPE_15__*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca %struct.TYPE_16__, align 8
  %17 = alloca %struct.TYPE_16__, align 8
  %18 = alloca %struct.TYPE_16__, align 8
  %19 = alloca [16384 x i8], align 16
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i64, align 8
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca %struct.timeval, align 8
  %30 = alloca i64, align 8
  %31 = alloca i64, align 8
  %32 = alloca i64, align 8
  %33 = alloca i64, align 8
  %34 = alloca %struct.TYPE_16__, align 8
  %35 = alloca [32 x i8], align 16
  store i32 %0, i32* %8, align 4
  store i32* %1, i32** %9, align 8
  store i8* %2, i8** %10, align 8
  store i8* %3, i8** %11, align 8
  store %struct.TYPE_15__* %4, %struct.TYPE_15__** %12, align 8
  store i32 %5, i32* %13, align 4
  store i32 %6, i32* %14, align 4
  %36 = load i32*, i32** %9, align 8
  %37 = load i8*, i8** %10, align 8
  %38 = icmp eq i8* %37, null
  %39 = zext i1 %38 to i32
  %40 = call i32* @ptls_new(i32* %36, i32 %39)
  store i32* %40, i32** %15, align 8
  store i32 0, i32* %20, align 4
  store i32 0, i32* %21, align 4
  store i32 0, i32* %22, align 4
  store i64 0, i64* %23, align 8
  %41 = call i32 @ptls_buffer_init(%struct.TYPE_16__* %16, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i32 0)
  %42 = call i32 @ptls_buffer_init(%struct.TYPE_16__* %17, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i32 0)
  %43 = call i32 @ptls_buffer_init(%struct.TYPE_16__* %18, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i32 0)
  %44 = load i32, i32* %8, align 4
  %45 = load i32, i32* @F_SETFL, align 4
  %46 = load i32, i32* @O_NONBLOCK, align 4
  %47 = call i32 @fcntl(i32 %44, i32 %45, i32 %46)
  %48 = load i8*, i8** %11, align 8
  %49 = icmp ne i8* %48, null
  br i1 %49, label %50, label %62

50:                                               ; preds = %7
  %51 = load i8*, i8** %11, align 8
  %52 = load i32, i32* @O_RDONLY, align 4
  %53 = call i32 @open(i8* %51, i32 %52)
  store i32 %53, i32* %21, align 4
  %54 = icmp eq i32 %53, -1
  br i1 %54, label %55, label %61

55:                                               ; preds = %50
  %56 = load i32, i32* @stderr, align 4
  %57 = load i8*, i8** %11, align 8
  %58 = load i64, i64* @errno, align 8
  %59 = call i8* @strerror(i64 %58)
  %60 = call i32 (i32, i8*, ...) @fprintf(i32 %56, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i8* %57, i8* %59)
  store i32 1, i32* %22, align 4
  br label %468

61:                                               ; preds = %50
  br label %62

62:                                               ; preds = %61, %7
  %63 = load i8*, i8** %10, align 8
  %64 = icmp ne i8* %63, null
  br i1 %64, label %65, label %79

65:                                               ; preds = %62
  %66 = load i32*, i32** %15, align 8
  %67 = load i8*, i8** %10, align 8
  %68 = call i32 @ptls_set_server_name(i32* %66, i8* %67, i32 0)
  %69 = load i32*, i32** %15, align 8
  %70 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %71 = call i32 @ptls_handshake(i32* %69, %struct.TYPE_16__* %17, i8* null, i64* null, %struct.TYPE_15__* %70)
  store i32 %71, i32* %22, align 4
  %72 = load i32, i32* @PTLS_ERROR_IN_PROGRESS, align 4
  %73 = icmp ne i32 %71, %72
  br i1 %73, label %74, label %78

74:                                               ; preds = %65
  %75 = load i32, i32* @stderr, align 4
  %76 = load i32, i32* %22, align 4
  %77 = call i32 (i32, i8*, ...) @fprintf(i32 %75, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), i32 %76)
  store i32 1, i32* %22, align 4
  br label %468

78:                                               ; preds = %65
  br label %79

79:                                               ; preds = %78, %62
  br label %80

80:                                               ; preds = %79, %467
  store i32 0, i32* %28, align 4
  br label %81

81:                                               ; preds = %120, %80
  %82 = call i32 @FD_ZERO(i32* %25)
  %83 = call i32 @FD_ZERO(i32* %26)
  %84 = call i32 @FD_ZERO(i32* %27)
  %85 = load i32, i32* %8, align 4
  %86 = call i32 @FD_SET(i32 %85, i32* %25)
  %87 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %17, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %93

90:                                               ; preds = %81
  %91 = load i32, i32* %8, align 4
  %92 = call i32 @FD_SET(i32 %91, i32* %26)
  br label %93

93:                                               ; preds = %90, %81
  %94 = load i32, i32* %8, align 4
  %95 = call i32 @FD_SET(i32 %94, i32* %27)
  %96 = load i32, i32* %8, align 4
  %97 = add nsw i32 %96, 1
  store i32 %97, i32* %28, align 4
  %98 = load i32, i32* %21, align 4
  %99 = icmp ne i32 %98, -1
  br i1 %99, label %100, label %112

100:                                              ; preds = %93
  %101 = load i32, i32* %21, align 4
  %102 = call i32 @FD_SET(i32 %101, i32* %25)
  %103 = load i32, i32* %21, align 4
  %104 = call i32 @FD_SET(i32 %103, i32* %27)
  %105 = load i32, i32* %28, align 4
  %106 = load i32, i32* %21, align 4
  %107 = icmp sle i32 %105, %106
  br i1 %107, label %108, label %111

108:                                              ; preds = %100
  %109 = load i32, i32* %21, align 4
  %110 = add nsw i32 %109, 1
  store i32 %110, i32* %28, align 4
  br label %111

111:                                              ; preds = %108, %100
  br label %112

112:                                              ; preds = %111, %93
  %113 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %17, i32 0, i32 0
  %114 = load i64, i64* %113, align 8
  %115 = icmp ne i64 %114, 0
  %116 = zext i1 %115 to i64
  %117 = select i1 %115, i32 0, i32 3600
  %118 = getelementptr inbounds %struct.timeval, %struct.timeval* %29, i32 0, i32 0
  store i32 %117, i32* %118, align 8
  %119 = getelementptr inbounds %struct.timeval, %struct.timeval* %29, i32 0, i32 1
  store i64 0, i64* %119, align 8
  br label %120

120:                                              ; preds = %112
  %121 = load i32, i32* %28, align 4
  %122 = call i32 @select(i32 %121, i32* %25, i32* %26, i32* %27, %struct.timeval* %29)
  %123 = icmp eq i32 %122, -1
  br i1 %123, label %81, label %124

124:                                              ; preds = %120
  %125 = load i32, i32* %8, align 4
  %126 = call i64 @FD_ISSET(i32 %125, i32* %25)
  %127 = icmp ne i64 %126, 0
  br i1 %127, label %132, label %128

128:                                              ; preds = %124
  %129 = load i32, i32* %8, align 4
  %130 = call i64 @FD_ISSET(i32 %129, i32* %27)
  %131 = icmp ne i64 %130, 0
  br i1 %131, label %132, label %288

132:                                              ; preds = %128, %124
  store i64 0, i64* %30, align 8
  br label %133

133:                                              ; preds = %144, %132
  %134 = load i32, i32* %8, align 4
  %135 = getelementptr inbounds [16384 x i8], [16384 x i8]* %19, i64 0, i64 0
  %136 = call i32 @read(i32 %134, i8* %135, i32 16384)
  store i32 %136, i32* %24, align 4
  %137 = icmp eq i32 %136, -1
  br i1 %137, label %138, label %142

138:                                              ; preds = %133
  %139 = load i64, i64* @errno, align 8
  %140 = load i64, i64* @EINTR, align 8
  %141 = icmp eq i64 %139, %140
  br label %142

142:                                              ; preds = %138, %133
  %143 = phi i1 [ false, %133 ], [ %141, %138 ]
  br i1 %143, label %144, label %145

144:                                              ; preds = %142
  br label %133

145:                                              ; preds = %142
  %146 = load i32, i32* %24, align 4
  %147 = icmp eq i32 %146, -1
  br i1 %147, label %148, label %157

148:                                              ; preds = %145
  %149 = load i64, i64* @errno, align 8
  %150 = load i64, i64* @EWOULDBLOCK, align 8
  %151 = icmp eq i64 %149, %150
  br i1 %151, label %156, label %152

152:                                              ; preds = %148
  %153 = load i64, i64* @errno, align 8
  %154 = load i64, i64* @EAGAIN, align 8
  %155 = icmp eq i64 %153, %154
  br i1 %155, label %156, label %157

156:                                              ; preds = %152, %148
  store i32 0, i32* %24, align 4
  br label %162

157:                                              ; preds = %152, %145
  %158 = load i32, i32* %24, align 4
  %159 = icmp sle i32 %158, 0
  br i1 %159, label %160, label %161

160:                                              ; preds = %157
  br label %468

161:                                              ; preds = %157
  br label %162

162:                                              ; preds = %161, %156
  br label %163

163:                                              ; preds = %283, %162
  %164 = load i32, i32* %24, align 4
  %165 = sext i32 %164 to i64
  %166 = load i64, i64* %30, align 8
  %167 = sub i64 %165, %166
  store i64 %167, i64* %31, align 8
  %168 = icmp ne i64 %167, 0
  br i1 %168, label %169, label %287

169:                                              ; preds = %163
  %170 = load i32, i32* %20, align 4
  %171 = icmp eq i32 %170, 0
  br i1 %171, label %172, label %253

172:                                              ; preds = %169
  %173 = load i32*, i32** %15, align 8
  %174 = getelementptr inbounds [16384 x i8], [16384 x i8]* %19, i64 0, i64 0
  %175 = load i64, i64* %30, align 8
  %176 = getelementptr inbounds i8, i8* %174, i64 %175
  %177 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %178 = call i32 @ptls_handshake(i32* %173, %struct.TYPE_16__* %17, i8* %176, i64* %31, %struct.TYPE_15__* %177)
  store i32 %178, i32* %22, align 4
  %179 = icmp eq i32 %178, 0
  br i1 %179, label %180, label %231

180:                                              ; preds = %172
  store i32 1, i32* %20, align 4
  %181 = load i32*, i32** %15, align 8
  %182 = call i64 @ptls_is_server(i32* %181)
  %183 = icmp ne i64 %182, 0
  br i1 %183, label %191, label %184

184:                                              ; preds = %180
  %185 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %186 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %185, i32 0, i32 0
  %187 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %186, i32 0, i32 0
  %188 = load i64, i64* %187, align 8
  %189 = load i64, i64* @PTLS_EARLY_DATA_ACCEPTANCE_UNKNOWN, align 8
  %190 = icmp ne i64 %188, %189
  br label %191

191:                                              ; preds = %184, %180
  %192 = phi i1 [ true, %180 ], [ %190, %184 ]
  %193 = zext i1 %192 to i32
  %194 = call i32 @assert(i32 %193)
  %195 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %196 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %195, i32 0, i32 0
  %197 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %196, i32 0, i32 0
  %198 = load i64, i64* %197, align 8
  %199 = load i64, i64* @PTLS_EARLY_DATA_ACCEPTED, align 8
  %200 = icmp eq i64 %198, %199
  br i1 %200, label %201, label %205

201:                                              ; preds = %191
  %202 = load i64, i64* %23, align 8
  %203 = trunc i64 %202 to i32
  %204 = call i32 @shift_buffer(%struct.TYPE_16__* %18, i32 %203)
  br label %205

205:                                              ; preds = %201, %191
  %206 = load i32, i32* %13, align 4
  %207 = icmp ne i32 %206, 0
  br i1 %207, label %208, label %211

208:                                              ; preds = %205
  %209 = load i32*, i32** %15, align 8
  %210 = call i32 @ptls_update_key(i32* %209, i32 1)
  br label %211

211:                                              ; preds = %208, %205
  %212 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %18, i32 0, i32 0
  %213 = load i64, i64* %212, align 8
  %214 = icmp ne i64 %213, 0
  br i1 %214, label %215, label %230

215:                                              ; preds = %211
  %216 = load i32*, i32** %15, align 8
  %217 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %18, i32 0, i32 1
  %218 = load i8*, i8** %217, align 8
  %219 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %18, i32 0, i32 0
  %220 = load i64, i64* %219, align 8
  %221 = trunc i64 %220 to i32
  %222 = call i32 @ptls_send(i32* %216, %struct.TYPE_16__* %17, i8* %218, i32 %221)
  store i32 %222, i32* %22, align 4
  %223 = icmp ne i32 %222, 0
  br i1 %223, label %224, label %228

224:                                              ; preds = %215
  %225 = load i32, i32* @stderr, align 4
  %226 = load i32, i32* %22, align 4
  %227 = call i32 (i32, i8*, ...) @fprintf(i32 %225, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0), i32 %226)
  br label %468

228:                                              ; preds = %215
  %229 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %18, i32 0, i32 0
  store i64 0, i64* %229, align 8
  br label %230

230:                                              ; preds = %228, %211
  br label %252

231:                                              ; preds = %172
  %232 = load i32, i32* %22, align 4
  %233 = load i32, i32* @PTLS_ERROR_IN_PROGRESS, align 4
  %234 = icmp eq i32 %232, %233
  br i1 %234, label %235, label %236

235:                                              ; preds = %231
  br label %251

236:                                              ; preds = %231
  %237 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %17, i32 0, i32 0
  %238 = load i64, i64* %237, align 8
  %239 = icmp ne i64 %238, 0
  br i1 %239, label %240, label %247

240:                                              ; preds = %236
  %241 = load i32, i32* %8, align 4
  %242 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %17, i32 0, i32 1
  %243 = load i8*, i8** %242, align 8
  %244 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %17, i32 0, i32 0
  %245 = load i64, i64* %244, align 8
  %246 = call i32 @write(i32 %241, i8* %243, i64 %245)
  br label %247

247:                                              ; preds = %240, %236
  %248 = load i32, i32* @stderr, align 4
  %249 = load i32, i32* %22, align 4
  %250 = call i32 (i32, i8*, ...) @fprintf(i32 %248, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), i32 %249)
  br label %468

251:                                              ; preds = %235
  br label %252

252:                                              ; preds = %251, %230
  br label %283

253:                                              ; preds = %169
  %254 = load i32*, i32** %15, align 8
  %255 = getelementptr inbounds [16384 x i8], [16384 x i8]* %19, i64 0, i64 0
  %256 = load i64, i64* %30, align 8
  %257 = getelementptr inbounds i8, i8* %255, i64 %256
  %258 = call i32 @ptls_receive(i32* %254, %struct.TYPE_16__* %16, i8* %257, i64* %31)
  store i32 %258, i32* %22, align 4
  %259 = icmp eq i32 %258, 0
  br i1 %259, label %260, label %272

260:                                              ; preds = %253
  %261 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %16, i32 0, i32 0
  %262 = load i64, i64* %261, align 8
  %263 = icmp ne i64 %262, 0
  br i1 %263, label %264, label %271

264:                                              ; preds = %260
  %265 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %16, i32 0, i32 1
  %266 = load i8*, i8** %265, align 8
  %267 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %16, i32 0, i32 0
  %268 = load i64, i64* %267, align 8
  %269 = call i32 @write(i32 1, i8* %266, i64 %268)
  %270 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %16, i32 0, i32 0
  store i64 0, i64* %270, align 8
  br label %271

271:                                              ; preds = %264, %260
  br label %282

272:                                              ; preds = %253
  %273 = load i32, i32* %22, align 4
  %274 = load i32, i32* @PTLS_ERROR_IN_PROGRESS, align 4
  %275 = icmp eq i32 %273, %274
  br i1 %275, label %276, label %277

276:                                              ; preds = %272
  br label %281

277:                                              ; preds = %272
  %278 = load i32, i32* @stderr, align 4
  %279 = load i32, i32* %22, align 4
  %280 = call i32 (i32, i8*, ...) @fprintf(i32 %278, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0), i32 %279)
  br label %468

281:                                              ; preds = %276
  br label %282

282:                                              ; preds = %281, %271
  br label %283

283:                                              ; preds = %282, %252
  %284 = load i64, i64* %31, align 8
  %285 = load i64, i64* %30, align 8
  %286 = add i64 %285, %284
  store i64 %286, i64* %30, align 8
  br label %163

287:                                              ; preds = %163
  br label %288

288:                                              ; preds = %287, %128
  %289 = load i32, i32* %21, align 4
  %290 = icmp ne i32 %289, -1
  br i1 %290, label %291, label %388

291:                                              ; preds = %288
  %292 = load i32, i32* %21, align 4
  %293 = call i64 @FD_ISSET(i32 %292, i32* %25)
  %294 = icmp ne i64 %293, 0
  br i1 %294, label %299, label %295

295:                                              ; preds = %291
  %296 = load i32, i32* %21, align 4
  %297 = call i64 @FD_ISSET(i32 %296, i32* %27)
  %298 = icmp ne i64 %297, 0
  br i1 %298, label %299, label %388

299:                                              ; preds = %295, %291
  br label %300

300:                                              ; preds = %311, %299
  %301 = load i32, i32* %21, align 4
  %302 = getelementptr inbounds [16384 x i8], [16384 x i8]* %19, i64 0, i64 0
  %303 = call i32 @read(i32 %301, i8* %302, i32 16384)
  store i32 %303, i32* %24, align 4
  %304 = icmp eq i32 %303, -1
  br i1 %304, label %305, label %309

305:                                              ; preds = %300
  %306 = load i64, i64* @errno, align 8
  %307 = load i64, i64* @EINTR, align 8
  %308 = icmp eq i64 %306, %307
  br label %309

309:                                              ; preds = %305, %300
  %310 = phi i1 [ false, %300 ], [ %308, %305 ]
  br i1 %310, label %311, label %312

311:                                              ; preds = %309
  br label %300

312:                                              ; preds = %309
  %313 = load i32, i32* %24, align 4
  %314 = icmp sgt i32 %313, 0
  br i1 %314, label %315, label %380

315:                                              ; preds = %312
  %316 = getelementptr inbounds [16384 x i8], [16384 x i8]* %19, i64 0, i64 0
  %317 = load i32, i32* %24, align 4
  %318 = call i32 @ptls_buffer_pushv(%struct.TYPE_16__* %18, i8* %316, i32 %317)
  %319 = load i32, i32* %20, align 4
  %320 = icmp eq i32 %319, 0
  br i1 %320, label %321, label %367

321:                                              ; preds = %315
  store i64 0, i64* %32, align 8
  %322 = load i8*, i8** %10, align 8
  %323 = icmp ne i8* %322, null
  br i1 %323, label %324, label %347

324:                                              ; preds = %321
  %325 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %326 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %325, i32 0, i32 0
  %327 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %326, i32 0, i32 1
  %328 = load i64*, i64** %327, align 8
  %329 = icmp ne i64* %328, null
  br i1 %329, label %330, label %347

330:                                              ; preds = %324
  %331 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %332 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %331, i32 0, i32 0
  %333 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %332, i32 0, i32 1
  %334 = load i64*, i64** %333, align 8
  %335 = load i64, i64* %334, align 8
  store i64 %335, i64* %33, align 8
  %336 = load i64, i64* %33, align 8
  %337 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %18, i32 0, i32 0
  %338 = load i64, i64* %337, align 8
  %339 = icmp ugt i64 %336, %338
  br i1 %339, label %340, label %343

340:                                              ; preds = %330
  %341 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %18, i32 0, i32 0
  %342 = load i64, i64* %341, align 8
  store i64 %342, i64* %33, align 8
  br label %343

343:                                              ; preds = %340, %330
  %344 = load i64, i64* %33, align 8
  %345 = load i64, i64* %23, align 8
  %346 = sub i64 %344, %345
  store i64 %346, i64* %32, align 8
  br label %347

347:                                              ; preds = %343, %324, %321
  %348 = load i64, i64* %32, align 8
  %349 = icmp ne i64 %348, 0
  br i1 %349, label %350, label %366

350:                                              ; preds = %347
  %351 = load i32*, i32** %15, align 8
  %352 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %18, i32 0, i32 1
  %353 = load i8*, i8** %352, align 8
  %354 = load i64, i64* %32, align 8
  %355 = trunc i64 %354 to i32
  %356 = call i32 @ptls_send(i32* %351, %struct.TYPE_16__* %17, i8* %353, i32 %355)
  store i32 %356, i32* %22, align 4
  %357 = icmp ne i32 %356, 0
  br i1 %357, label %358, label %362

358:                                              ; preds = %350
  %359 = load i32, i32* @stderr, align 4
  %360 = load i32, i32* %22, align 4
  %361 = call i32 (i32, i8*, ...) @fprintf(i32 %359, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5, i64 0, i64 0), i32 %360)
  br label %468

362:                                              ; preds = %350
  %363 = load i64, i64* %32, align 8
  %364 = load i64, i64* %23, align 8
  %365 = add i64 %364, %363
  store i64 %365, i64* %23, align 8
  br label %366

366:                                              ; preds = %362, %347
  br label %379

367:                                              ; preds = %315
  %368 = load i32*, i32** %15, align 8
  %369 = getelementptr inbounds [16384 x i8], [16384 x i8]* %19, i64 0, i64 0
  %370 = load i32, i32* %24, align 4
  %371 = call i32 @ptls_send(i32* %368, %struct.TYPE_16__* %17, i8* %369, i32 %370)
  store i32 %371, i32* %22, align 4
  %372 = icmp ne i32 %371, 0
  br i1 %372, label %373, label %377

373:                                              ; preds = %367
  %374 = load i32, i32* @stderr, align 4
  %375 = load i32, i32* %22, align 4
  %376 = call i32 (i32, i8*, ...) @fprintf(i32 %374, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0), i32 %375)
  br label %468

377:                                              ; preds = %367
  %378 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %18, i32 0, i32 0
  store i64 0, i64* %378, align 8
  br label %379

379:                                              ; preds = %377, %366
  br label %387

380:                                              ; preds = %312
  %381 = load i8*, i8** %11, align 8
  %382 = icmp ne i8* %381, null
  br i1 %382, label %383, label %386

383:                                              ; preds = %380
  %384 = load i32, i32* %21, align 4
  %385 = call i32 @close(i32 %384)
  br label %386

386:                                              ; preds = %383, %380
  store i32 -1, i32* %21, align 4
  br label %387

387:                                              ; preds = %386, %379
  br label %388

388:                                              ; preds = %387, %295, %288
  %389 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %17, i32 0, i32 0
  %390 = load i64, i64* %389, align 8
  %391 = icmp ne i64 %390, 0
  br i1 %391, label %392, label %429

392:                                              ; preds = %388
  br label %393

393:                                              ; preds = %407, %392
  %394 = load i32, i32* %8, align 4
  %395 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %17, i32 0, i32 1
  %396 = load i8*, i8** %395, align 8
  %397 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %17, i32 0, i32 0
  %398 = load i64, i64* %397, align 8
  %399 = call i32 @write(i32 %394, i8* %396, i64 %398)
  store i32 %399, i32* %24, align 4
  %400 = icmp eq i32 %399, -1
  br i1 %400, label %401, label %405

401:                                              ; preds = %393
  %402 = load i64, i64* @errno, align 8
  %403 = load i64, i64* @EINTR, align 8
  %404 = icmp eq i64 %402, %403
  br label %405

405:                                              ; preds = %401, %393
  %406 = phi i1 [ false, %393 ], [ %404, %401 ]
  br i1 %406, label %407, label %408

407:                                              ; preds = %405
  br label %393

408:                                              ; preds = %405
  %409 = load i32, i32* %24, align 4
  %410 = icmp eq i32 %409, -1
  br i1 %410, label %411, label %420

411:                                              ; preds = %408
  %412 = load i64, i64* @errno, align 8
  %413 = load i64, i64* @EWOULDBLOCK, align 8
  %414 = icmp eq i64 %412, %413
  br i1 %414, label %419, label %415

415:                                              ; preds = %411
  %416 = load i64, i64* @errno, align 8
  %417 = load i64, i64* @EAGAIN, align 8
  %418 = icmp eq i64 %416, %417
  br i1 %418, label %419, label %420

419:                                              ; preds = %415, %411
  br label %428

420:                                              ; preds = %415, %408
  %421 = load i32, i32* %24, align 4
  %422 = icmp sle i32 %421, 0
  br i1 %422, label %423, label %424

423:                                              ; preds = %420
  br label %468

424:                                              ; preds = %420
  %425 = load i32, i32* %24, align 4
  %426 = call i32 @shift_buffer(%struct.TYPE_16__* %17, i32 %425)
  br label %427

427:                                              ; preds = %424
  br label %428

428:                                              ; preds = %427, %419
  br label %429

429:                                              ; preds = %428, %388
  %430 = load i32, i32* %20, align 4
  %431 = icmp eq i32 %430, 1
  br i1 %431, label %432, label %467

432:                                              ; preds = %429
  %433 = load i32, i32* %21, align 4
  %434 = icmp eq i32 %433, -1
  br i1 %434, label %435, label %467

435:                                              ; preds = %432
  %436 = load i32, i32* %14, align 4
  %437 = icmp ne i32 %436, 0
  br i1 %437, label %466, label %438

438:                                              ; preds = %435
  %439 = getelementptr inbounds [32 x i8], [32 x i8]* %35, i64 0, i64 0
  %440 = call i32 @ptls_buffer_init(%struct.TYPE_16__* %34, i8* %439, i32 32)
  %441 = load i32*, i32** %15, align 8
  %442 = load i32, i32* @PTLS_ALERT_LEVEL_WARNING, align 4
  %443 = load i32, i32* @PTLS_ALERT_CLOSE_NOTIFY, align 4
  %444 = call i32 @ptls_send_alert(i32* %441, %struct.TYPE_16__* %34, i32 %442, i32 %443)
  store i32 %444, i32* %22, align 4
  %445 = icmp ne i32 %444, 0
  br i1 %445, label %446, label %450

446:                                              ; preds = %438
  %447 = load i32, i32* @stderr, align 4
  %448 = load i32, i32* %22, align 4
  %449 = call i32 (i32, i8*, ...) @fprintf(i32 %447, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.6, i64 0, i64 0), i32 %448)
  br label %450

450:                                              ; preds = %446, %438
  %451 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %34, i32 0, i32 0
  %452 = load i64, i64* %451, align 8
  %453 = icmp ne i64 %452, 0
  br i1 %453, label %454, label %461

454:                                              ; preds = %450
  %455 = load i32, i32* %8, align 4
  %456 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %34, i32 0, i32 1
  %457 = load i8*, i8** %456, align 8
  %458 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %34, i32 0, i32 0
  %459 = load i64, i64* %458, align 8
  %460 = call i32 @write(i32 %455, i8* %457, i64 %459)
  br label %461

461:                                              ; preds = %454, %450
  %462 = call i32 @ptls_buffer_dispose(%struct.TYPE_16__* %34)
  %463 = load i32, i32* %8, align 4
  %464 = load i32, i32* @SHUT_WR, align 4
  %465 = call i32 @shutdown(i32 %463, i32 %464)
  br label %466

466:                                              ; preds = %461, %435
  store i32 2, i32* %20, align 4
  br label %467

467:                                              ; preds = %466, %432, %429
  br label %80

468:                                              ; preds = %423, %373, %358, %277, %247, %224, %160, %74, %55
  %469 = load i32, i32* %8, align 4
  %470 = icmp ne i32 %469, -1
  br i1 %470, label %471, label %474

471:                                              ; preds = %468
  %472 = load i32, i32* %8, align 4
  %473 = call i32 @close(i32 %472)
  br label %474

474:                                              ; preds = %471, %468
  %475 = load i8*, i8** %11, align 8
  %476 = icmp ne i8* %475, null
  br i1 %476, label %477, label %483

477:                                              ; preds = %474
  %478 = load i32, i32* %21, align 4
  %479 = icmp ne i32 %478, -1
  br i1 %479, label %480, label %483

480:                                              ; preds = %477
  %481 = load i32, i32* %21, align 4
  %482 = call i32 @close(i32 %481)
  br label %483

483:                                              ; preds = %480, %477, %474
  %484 = call i32 @ptls_buffer_dispose(%struct.TYPE_16__* %16)
  %485 = call i32 @ptls_buffer_dispose(%struct.TYPE_16__* %17)
  %486 = call i32 @ptls_buffer_dispose(%struct.TYPE_16__* %18)
  %487 = load i32*, i32** %15, align 8
  %488 = call i32 @ptls_free(i32* %487)
  %489 = load i32, i32* %22, align 4
  %490 = icmp ne i32 %489, 0
  %491 = zext i1 %490 to i32
  ret i32 %491
}

declare dso_local i32* @ptls_new(i32*, i32) #1

declare dso_local i32 @ptls_buffer_init(%struct.TYPE_16__*, i8*, i32) #1

declare dso_local i32 @fcntl(i32, i32, i32) #1

declare dso_local i32 @open(i8*, i32) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i8* @strerror(i64) #1

declare dso_local i32 @ptls_set_server_name(i32*, i8*, i32) #1

declare dso_local i32 @ptls_handshake(i32*, %struct.TYPE_16__*, i8*, i64*, %struct.TYPE_15__*) #1

declare dso_local i32 @FD_ZERO(i32*) #1

declare dso_local i32 @FD_SET(i32, i32*) #1

declare dso_local i32 @select(i32, i32*, i32*, i32*, %struct.timeval*) #1

declare dso_local i64 @FD_ISSET(i32, i32*) #1

declare dso_local i32 @read(i32, i8*, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @ptls_is_server(i32*) #1

declare dso_local i32 @shift_buffer(%struct.TYPE_16__*, i32) #1

declare dso_local i32 @ptls_update_key(i32*, i32) #1

declare dso_local i32 @ptls_send(i32*, %struct.TYPE_16__*, i8*, i32) #1

declare dso_local i32 @write(i32, i8*, i64) #1

declare dso_local i32 @ptls_receive(i32*, %struct.TYPE_16__*, i8*, i64*) #1

declare dso_local i32 @ptls_buffer_pushv(%struct.TYPE_16__*, i8*, i32) #1

declare dso_local i32 @close(i32) #1

declare dso_local i32 @ptls_send_alert(i32*, %struct.TYPE_16__*, i32, i32) #1

declare dso_local i32 @ptls_buffer_dispose(%struct.TYPE_16__*) #1

declare dso_local i32 @shutdown(i32, i32) #1

declare dso_local i32 @ptls_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
