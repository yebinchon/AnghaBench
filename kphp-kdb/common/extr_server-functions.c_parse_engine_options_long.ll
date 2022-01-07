; ModuleID = '/home/carl/AnghaBench/kphp-kdb/common/extr_server-functions.c_parse_engine_options_long.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/common/extr_server-functions.c_parse_engine_options_long.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.option = type { i32, i64, i64 }

@global_longopts = common dso_local global %struct.option* null, align 8
@global_optstring = common dso_local global i8* null, align 8
@required_argument = common dso_local global i64 0, align 8
@global_longopts_help = common dso_local global i8** null, align 8
@removed_options = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [23 x i8] c"Unknown option c = %d\0A\00", align 1
@optarg = common dso_local global i8* null, align 8
@verbosity = common dso_local global i8* null, align 8
@backlog = common dso_local global i8* null, align 8
@BACKLOG = common dso_local global i8* null, align 8
@maxconn = common dso_local global i8* null, align 8
@MAX_CONNECTIONS = common dso_local global i8* null, align 8
@port = common dso_local global i8* null, align 8
@username = common dso_local global i8* null, align 8
@logname = common dso_local global i8* null, align 8
@daemonize = common dso_local global i32 0, align 4
@binlog_disabled = common dso_local global i8* null, align 8
@binlogname = common dso_local global i8* null, align 8
@max_binlog_size = common dso_local global i64 0, align 8
@SM_IPV6 = common dso_local global i32 0, align 4
@enable_ipv6 = common dso_local global i32 0, align 4
@aes_pwd_file = common dso_local global i8* null, align 8
@udp_enabled = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"nice\00", align 1
@memcache_auto_answer_mode = common dso_local global i32 0, align 4
@dynamic_data_buffer_size = common dso_local global i64 0, align 8
@udp_drop_probability = common dso_local global i32 0, align 4
@keyring_enabled = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @parse_engine_options_long(i32 %0, i8** %1, i32 (i32)* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32 (i32)*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.option, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i32 (i32)* %2, i32 (i32)** %6, align 8
  store i32 0, i32* %7, align 4
  br label %16

16:                                               ; preds = %34, %3
  %17 = load %struct.option*, %struct.option** @global_longopts, align 8
  %18 = load i32, i32* %7, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds %struct.option, %struct.option* %17, i64 %19
  %21 = getelementptr inbounds %struct.option, %struct.option* %20, i32 0, i32 2
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %32, label %24

24:                                               ; preds = %16
  %25 = load %struct.option*, %struct.option** @global_longopts, align 8
  %26 = load i32, i32* %7, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.option, %struct.option* %25, i64 %27
  %29 = getelementptr inbounds %struct.option, %struct.option* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = icmp ne i32 %30, 0
  br label %32

32:                                               ; preds = %24, %16
  %33 = phi i1 [ true, %16 ], [ %31, %24 ]
  br i1 %33, label %34, label %37

34:                                               ; preds = %32
  %35 = load i32, i32* %7, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %7, align 4
  br label %16

37:                                               ; preds = %32
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  br label %38

38:                                               ; preds = %87, %37
  %39 = load i32, i32* %9, align 4
  %40 = load i32, i32* %7, align 4
  %41 = icmp slt i32 %39, %40
  br i1 %41, label %42, label %90

42:                                               ; preds = %38
  %43 = load %struct.option*, %struct.option** @global_longopts, align 8
  %44 = load i32, i32* %9, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.option, %struct.option* %43, i64 %45
  %47 = getelementptr inbounds %struct.option, %struct.option* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = icmp sge i32 %48, 33
  br i1 %49, label %50, label %86

50:                                               ; preds = %42
  %51 = load %struct.option*, %struct.option** @global_longopts, align 8
  %52 = load i32, i32* %9, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds %struct.option, %struct.option* %51, i64 %53
  %55 = getelementptr inbounds %struct.option, %struct.option* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = icmp sle i32 %56, 127
  br i1 %57, label %58, label %86

58:                                               ; preds = %50
  %59 = load %struct.option*, %struct.option** @global_longopts, align 8
  %60 = load i32, i32* %9, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds %struct.option, %struct.option* %59, i64 %61
  %63 = getelementptr inbounds %struct.option, %struct.option* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = trunc i32 %64 to i8
  %66 = load i8*, i8** @global_optstring, align 8
  %67 = load i32, i32* %8, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %8, align 4
  %69 = sext i32 %67 to i64
  %70 = getelementptr inbounds i8, i8* %66, i64 %69
  store i8 %65, i8* %70, align 1
  %71 = load %struct.option*, %struct.option** @global_longopts, align 8
  %72 = load i32, i32* %9, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds %struct.option, %struct.option* %71, i64 %73
  %75 = getelementptr inbounds %struct.option, %struct.option* %74, i32 0, i32 1
  %76 = load i64, i64* %75, align 8
  %77 = load i64, i64* @required_argument, align 8
  %78 = icmp eq i64 %76, %77
  br i1 %78, label %79, label %85

79:                                               ; preds = %58
  %80 = load i8*, i8** @global_optstring, align 8
  %81 = load i32, i32* %8, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %8, align 4
  %83 = sext i32 %81 to i64
  %84 = getelementptr inbounds i8, i8* %80, i64 %83
  store i8 58, i8* %84, align 1
  br label %85

85:                                               ; preds = %79, %58
  br label %86

86:                                               ; preds = %85, %50, %42
  br label %87

87:                                               ; preds = %86
  %88 = load i32, i32* %9, align 4
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %9, align 4
  br label %38

90:                                               ; preds = %38
  %91 = load i32, i32* %7, align 4
  store i32 %91, i32* %10, align 4
  store i32 0, i32* %9, align 4
  br label %92

92:                                               ; preds = %153, %90
  %93 = load i32, i32* %9, align 4
  %94 = load i32, i32* %7, align 4
  %95 = icmp slt i32 %93, %94
  br i1 %95, label %96, label %156

96:                                               ; preds = %92
  %97 = load %struct.option*, %struct.option** @global_longopts, align 8
  %98 = load i32, i32* %9, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds %struct.option, %struct.option* %97, i64 %99
  %101 = getelementptr inbounds %struct.option, %struct.option* %100, i32 0, i32 2
  %102 = load i64, i64* %101, align 8
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %152, label %104

104:                                              ; preds = %96
  %105 = load %struct.option*, %struct.option** @global_longopts, align 8
  %106 = load i32, i32* %7, align 4
  %107 = sub nsw i32 %106, 1
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds %struct.option, %struct.option* %105, i64 %108
  %110 = bitcast %struct.option* %11 to i8*
  %111 = bitcast %struct.option* %109 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %110, i8* align 8 %111, i64 24, i1 false)
  %112 = load %struct.option*, %struct.option** @global_longopts, align 8
  %113 = load i32, i32* %7, align 4
  %114 = sub nsw i32 %113, 1
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds %struct.option, %struct.option* %112, i64 %115
  %117 = load %struct.option*, %struct.option** @global_longopts, align 8
  %118 = load i32, i32* %9, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds %struct.option, %struct.option* %117, i64 %119
  %121 = bitcast %struct.option* %116 to i8*
  %122 = bitcast %struct.option* %120 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %121, i8* align 8 %122, i64 24, i1 false)
  %123 = load %struct.option*, %struct.option** @global_longopts, align 8
  %124 = load i32, i32* %9, align 4
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds %struct.option, %struct.option* %123, i64 %125
  %127 = bitcast %struct.option* %126 to i8*
  %128 = bitcast %struct.option* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %127, i8* align 8 %128, i64 24, i1 false)
  %129 = load i8**, i8*** @global_longopts_help, align 8
  %130 = load i32, i32* %9, align 4
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds i8*, i8** %129, i64 %131
  %133 = load i8*, i8** %132, align 8
  store i8* %133, i8** %12, align 8
  %134 = load i8**, i8*** @global_longopts_help, align 8
  %135 = load i32, i32* %7, align 4
  %136 = sub nsw i32 %135, 1
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds i8*, i8** %134, i64 %137
  %139 = load i8*, i8** %138, align 8
  %140 = load i8**, i8*** @global_longopts_help, align 8
  %141 = load i32, i32* %9, align 4
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds i8*, i8** %140, i64 %142
  store i8* %139, i8** %143, align 8
  %144 = load i8*, i8** %12, align 8
  %145 = load i8**, i8*** @global_longopts_help, align 8
  %146 = load i32, i32* %7, align 4
  %147 = sub nsw i32 %146, 1
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds i8*, i8** %145, i64 %148
  store i8* %144, i8** %149, align 8
  %150 = load i32, i32* %7, align 4
  %151 = add nsw i32 %150, -1
  store i32 %151, i32* %7, align 4
  br label %152

152:                                              ; preds = %104, %96
  br label %153

153:                                              ; preds = %152
  %154 = load i32, i32* %9, align 4
  %155 = add nsw i32 %154, 1
  store i32 %155, i32* %9, align 4
  br label %92

156:                                              ; preds = %92
  %157 = load i32, i32* %10, align 4
  store i32 %157, i32* %7, align 4
  br label %158

158:                                              ; preds = %156, %320
  store i32 0, i32* %14, align 4
  %159 = load i32, i32* %4, align 4
  %160 = load i8**, i8*** %5, align 8
  %161 = load i8*, i8** @global_optstring, align 8
  %162 = load %struct.option*, %struct.option** @global_longopts, align 8
  %163 = call i32 @getopt_long(i32 %159, i8** %160, i8* %161, %struct.option* %162, i32* %14)
  store i32 %163, i32* %15, align 4
  %164 = load i32, i32* %15, align 4
  %165 = icmp eq i32 %164, -1
  br i1 %165, label %166, label %167

166:                                              ; preds = %158
  br label %321

167:                                              ; preds = %158
  %168 = load i32, i32* %15, align 4
  %169 = icmp sgt i32 %168, 0
  br i1 %169, label %170, label %196

170:                                              ; preds = %167
  %171 = load i32, i32* %15, align 4
  %172 = icmp slt i32 %171, 128
  br i1 %172, label %173, label %196

173:                                              ; preds = %170
  %174 = load i32*, i32** @removed_options, align 8
  %175 = load i32, i32* %15, align 4
  %176 = sdiv i32 %175, 32
  %177 = sext i32 %176 to i64
  %178 = getelementptr inbounds i32, i32* %174, i64 %177
  %179 = load i32, i32* %178, align 4
  %180 = load i32, i32* %15, align 4
  %181 = and i32 %180, 31
  %182 = shl i32 1, %181
  %183 = and i32 %179, %182
  %184 = icmp ne i32 %183, 0
  br i1 %184, label %185, label %196

185:                                              ; preds = %173
  %186 = load i32 (i32)*, i32 (i32)** %6, align 8
  %187 = load i32, i32* %15, align 4
  %188 = call i32 %186(i32 %187)
  %189 = icmp slt i32 %188, 0
  br i1 %189, label %190, label %195

190:                                              ; preds = %185
  %191 = load i32, i32* %15, align 4
  %192 = call i32 @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %191)
  %193 = call i32 (...) @usage()
  %194 = call i32 @exit(i32 2) #4
  unreachable

195:                                              ; preds = %185
  br label %320

196:                                              ; preds = %173, %170, %167
  %197 = load i32, i32* %15, align 4
  switch i32 %197, label %308 [
    i32 0, label %198
    i32 118, label %199
    i32 104, label %209
    i32 98, label %212
    i32 99, label %220
    i32 112, label %232
    i32 117, label %235
    i32 108, label %237
    i32 100, label %239
    i32 114, label %251
    i32 97, label %261
    i32 66, label %263
    i32 54, label %274
    i32 200, label %276
    i32 201, label %278
    i32 202, label %281
    i32 203, label %290
    i32 204, label %293
    i32 205, label %304
    i32 206, label %307
  ]

198:                                              ; preds = %196
  br label %319

199:                                              ; preds = %196
  %200 = load i8*, i8** @optarg, align 8
  %201 = icmp ne i8* %200, null
  br i1 %201, label %205, label %202

202:                                              ; preds = %199
  %203 = load i8*, i8** @verbosity, align 8
  %204 = getelementptr inbounds i8, i8* %203, i32 1
  store i8* %204, i8** @verbosity, align 8
  br label %208

205:                                              ; preds = %199
  %206 = load i8*, i8** @optarg, align 8
  %207 = call i8* @atoi(i8* %206)
  store i8* %207, i8** @verbosity, align 8
  br label %208

208:                                              ; preds = %205, %202
  br label %319

209:                                              ; preds = %196
  %210 = call i32 (...) @usage()
  %211 = call i32 @exit(i32 2) #4
  unreachable

212:                                              ; preds = %196
  %213 = load i8*, i8** @optarg, align 8
  %214 = call i8* @atoi(i8* %213)
  store i8* %214, i8** @backlog, align 8
  %215 = load i8*, i8** @backlog, align 8
  %216 = icmp ule i8* %215, null
  br i1 %216, label %217, label %219

217:                                              ; preds = %212
  %218 = load i8*, i8** @BACKLOG, align 8
  store i8* %218, i8** @backlog, align 8
  br label %219

219:                                              ; preds = %217, %212
  br label %319

220:                                              ; preds = %196
  %221 = load i8*, i8** @optarg, align 8
  %222 = call i8* @atoi(i8* %221)
  store i8* %222, i8** @maxconn, align 8
  %223 = load i8*, i8** @maxconn, align 8
  %224 = icmp ule i8* %223, null
  br i1 %224, label %229, label %225

225:                                              ; preds = %220
  %226 = load i8*, i8** @maxconn, align 8
  %227 = load i8*, i8** @MAX_CONNECTIONS, align 8
  %228 = icmp ugt i8* %226, %227
  br i1 %228, label %229, label %231

229:                                              ; preds = %225, %220
  %230 = load i8*, i8** @MAX_CONNECTIONS, align 8
  store i8* %230, i8** @maxconn, align 8
  br label %231

231:                                              ; preds = %229, %225
  br label %319

232:                                              ; preds = %196
  %233 = load i8*, i8** @optarg, align 8
  %234 = call i8* @atoi(i8* %233)
  store i8* %234, i8** @port, align 8
  br label %319

235:                                              ; preds = %196
  %236 = load i8*, i8** @optarg, align 8
  store i8* %236, i8** @username, align 8
  br label %319

237:                                              ; preds = %196
  %238 = load i8*, i8** @optarg, align 8
  store i8* %238, i8** @logname, align 8
  br label %319

239:                                              ; preds = %196
  %240 = load i8*, i8** @optarg, align 8
  %241 = icmp ne i8* %240, null
  br i1 %241, label %245, label %242

242:                                              ; preds = %239
  %243 = load i32, i32* @daemonize, align 4
  %244 = xor i32 %243, 1
  store i32 %244, i32* @daemonize, align 4
  br label %250

245:                                              ; preds = %239
  %246 = load i8*, i8** @optarg, align 8
  %247 = call i8* @atoi(i8* %246)
  %248 = icmp ne i8* %247, null
  %249 = zext i1 %248 to i32
  store i32 %249, i32* @daemonize, align 4
  br label %250

250:                                              ; preds = %245, %242
  br label %319

251:                                              ; preds = %196
  %252 = load i8*, i8** @optarg, align 8
  %253 = icmp ne i8* %252, null
  br i1 %253, label %257, label %254

254:                                              ; preds = %251
  %255 = load i8*, i8** @binlog_disabled, align 8
  %256 = getelementptr inbounds i8, i8* %255, i32 1
  store i8* %256, i8** @binlog_disabled, align 8
  br label %260

257:                                              ; preds = %251
  %258 = load i8*, i8** @optarg, align 8
  %259 = call i8* @atoi(i8* %258)
  store i8* %259, i8** @binlog_disabled, align 8
  br label %260

260:                                              ; preds = %257, %254
  br label %319

261:                                              ; preds = %196
  %262 = load i8*, i8** @optarg, align 8
  store i8* %262, i8** @binlogname, align 8
  br label %319

263:                                              ; preds = %196
  %264 = load i8*, i8** @optarg, align 8
  %265 = call i64 @parse_memory_limit(i8* %264)
  store i64 %265, i64* %13, align 8
  %266 = load i64, i64* %13, align 8
  %267 = icmp sge i64 %266, 1024
  br i1 %267, label %268, label %273

268:                                              ; preds = %263
  %269 = load i64, i64* %13, align 8
  %270 = icmp slt i64 %269, 1152921504606846976
  br i1 %270, label %271, label %273

271:                                              ; preds = %268
  %272 = load i64, i64* %13, align 8
  store i64 %272, i64* @max_binlog_size, align 8
  br label %273

273:                                              ; preds = %271, %268, %263
  br label %319

274:                                              ; preds = %196
  %275 = load i32, i32* @SM_IPV6, align 4
  store i32 %275, i32* @enable_ipv6, align 4
  br label %319

276:                                              ; preds = %196
  %277 = load i8*, i8** @optarg, align 8
  store i8* %277, i8** @aes_pwd_file, align 8
  br label %319

278:                                              ; preds = %196
  %279 = load i32, i32* @udp_enabled, align 4
  %280 = add nsw i32 %279, 1
  store i32 %280, i32* @udp_enabled, align 4
  br label %319

281:                                              ; preds = %196
  store i32 0, i32* @errno, align 4
  %282 = load i8*, i8** @optarg, align 8
  %283 = call i8* @atoi(i8* %282)
  %284 = call i32 @nice(i8* %283)
  %285 = load i32, i32* @errno, align 4
  %286 = icmp ne i32 %285, 0
  br i1 %286, label %287, label %289

287:                                              ; preds = %281
  %288 = call i32 @perror(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  br label %289

289:                                              ; preds = %287, %281
  br label %319

290:                                              ; preds = %196
  %291 = load i32, i32* @memcache_auto_answer_mode, align 4
  %292 = add nsw i32 %291, 1
  store i32 %292, i32* @memcache_auto_answer_mode, align 4
  br label %319

293:                                              ; preds = %196
  %294 = load i8*, i8** @optarg, align 8
  %295 = call i64 @parse_memory_limit(i8* %294)
  store i64 %295, i64* %13, align 8
  %296 = load i64, i64* %13, align 8
  %297 = icmp sge i64 %296, 1048576
  br i1 %297, label %298, label %303

298:                                              ; preds = %293
  %299 = load i64, i64* %13, align 8
  %300 = icmp sle i64 %299, 107374182400
  br i1 %300, label %301, label %303

301:                                              ; preds = %298
  %302 = load i64, i64* %13, align 8
  store i64 %302, i64* @dynamic_data_buffer_size, align 8
  br label %303

303:                                              ; preds = %301, %298, %293
  br label %319

304:                                              ; preds = %196
  %305 = load i8*, i8** @optarg, align 8
  %306 = call i32 @atof(i8* %305)
  store i32 %306, i32* @udp_drop_probability, align 4
  br label %319

307:                                              ; preds = %196
  store i32 1, i32* @keyring_enabled, align 4
  br label %319

308:                                              ; preds = %196
  %309 = load i32 (i32)*, i32 (i32)** %6, align 8
  %310 = load i32, i32* %15, align 4
  %311 = call i32 %309(i32 %310)
  %312 = icmp slt i32 %311, 0
  br i1 %312, label %313, label %318

313:                                              ; preds = %308
  %314 = load i32, i32* %15, align 4
  %315 = call i32 @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %314)
  %316 = call i32 (...) @usage()
  %317 = call i32 @exit(i32 2) #4
  unreachable

318:                                              ; preds = %308
  br label %319

319:                                              ; preds = %318, %307, %304, %303, %290, %289, %278, %276, %274, %273, %261, %260, %250, %237, %235, %232, %231, %219, %208, %198
  br label %320

320:                                              ; preds = %319, %195
  br label %158

321:                                              ; preds = %166
  ret i32 0
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @getopt_long(i32, i8**, i8*, %struct.option*, i32*) #2

declare dso_local i32 @printf(i8*, i32) #2

declare dso_local i32 @usage(...) #2

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #3

declare dso_local i8* @atoi(i8*) #2

declare dso_local i64 @parse_memory_limit(i8*) #2

declare dso_local i32 @nice(i8*) #2

declare dso_local i32 @perror(i8*) #2

declare dso_local i32 @atof(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
