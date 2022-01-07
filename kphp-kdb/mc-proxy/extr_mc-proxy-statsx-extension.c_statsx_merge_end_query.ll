; ModuleID = '/home/carl/AnghaBench/kphp-kdb/mc-proxy/extr_mc-proxy-statsx-extension.c_statsx_merge_end_query.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/mc-proxy/extr_mc-proxy-statsx-extension.c_statsx_merge_end_query.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.connection = type { i32 }
%struct.gather_entry = type { i32, i32, i64* }
%struct.statsx_gather_extra = type { i32, i64 }

@Q_raw = common dso_local global i64 0, align 8
@FLAG_ONE_INT = common dso_local global i32 0, align 4
@FLAG_UNION = common dso_local global i32 0, align 4
@FLAG_BAD_SERVERS = common dso_local global i32 0, align 4
@Q_bad_servers = common dso_local global i32 0, align 4
@FLAG_NO_SERIALIZE = common dso_local global i32 0, align 4
@FLAG_MONTHLY = common dso_local global i32 0, align 4
@FLAG_COUNTER = common dso_local global i32 0, align 4
@bad_servers = common dso_local global i32 0, align 4
@verbosity = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"one_int = %d, union_mode = %d\0A\00", align 1
@FLAG_DOUBLE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"Dropping result %d (num = %d)\0A\00", align 1
@buff = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"%lld\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"%d,%d\00", align 1
@.str.5 = private unnamed_addr constant [16 x i8] c"VALUE %s 1 %d\0D\0A\00", align 1
@.str.6 = private unnamed_addr constant [16 x i8] c"VALUE %s 0 %d\0D\0A\00", align 1
@.str.7 = private unnamed_addr constant [3 x i8] c"\0D\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @statsx_merge_end_query(%struct.connection* %0, i8* %1, i32 %2, i8* %3, %struct.gather_entry* %4, i32 %5) #0 {
  %7 = alloca %struct.connection*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca %struct.gather_entry*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.statsx_gather_extra*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i64, align 8
  %23 = alloca i32*, align 8
  store %struct.connection* %0, %struct.connection** %7, align 8
  store i8* %1, i8** %8, align 8
  store i32 %2, i32* %9, align 4
  store i8* %3, i8** %10, align 8
  store %struct.gather_entry* %4, %struct.gather_entry** %11, align 8
  store i32 %5, i32* %12, align 4
  %24 = load i8*, i8** %10, align 8
  %25 = bitcast i8* %24 to %struct.statsx_gather_extra*
  store %struct.statsx_gather_extra* %25, %struct.statsx_gather_extra** %13, align 8
  %26 = load %struct.statsx_gather_extra*, %struct.statsx_gather_extra** %13, align 8
  %27 = getelementptr inbounds %struct.statsx_gather_extra, %struct.statsx_gather_extra* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  store i64 %28, i64* @Q_raw, align 8
  %29 = load %struct.statsx_gather_extra*, %struct.statsx_gather_extra** %13, align 8
  %30 = getelementptr inbounds %struct.statsx_gather_extra, %struct.statsx_gather_extra* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = load i32, i32* @FLAG_ONE_INT, align 4
  %33 = and i32 %31, %32
  store i32 %33, i32* %15, align 4
  %34 = load %struct.statsx_gather_extra*, %struct.statsx_gather_extra** %13, align 8
  %35 = getelementptr inbounds %struct.statsx_gather_extra, %struct.statsx_gather_extra* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = load i32, i32* @FLAG_UNION, align 4
  %38 = and i32 %36, %37
  store i32 %38, i32* %16, align 4
  %39 = load %struct.statsx_gather_extra*, %struct.statsx_gather_extra** %13, align 8
  %40 = getelementptr inbounds %struct.statsx_gather_extra, %struct.statsx_gather_extra* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = load i32, i32* @FLAG_BAD_SERVERS, align 4
  %43 = and i32 %41, %42
  store i32 %43, i32* @Q_bad_servers, align 4
  %44 = load %struct.statsx_gather_extra*, %struct.statsx_gather_extra** %13, align 8
  %45 = getelementptr inbounds %struct.statsx_gather_extra, %struct.statsx_gather_extra* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = load i32, i32* @FLAG_NO_SERIALIZE, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  %50 = xor i1 %49, true
  %51 = zext i1 %50 to i32
  store i32 %51, i32* %17, align 4
  %52 = load %struct.statsx_gather_extra*, %struct.statsx_gather_extra** %13, align 8
  %53 = getelementptr inbounds %struct.statsx_gather_extra, %struct.statsx_gather_extra* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = load i32, i32* @FLAG_MONTHLY, align 4
  %56 = and i32 %54, %55
  store i32 %56, i32* %18, align 4
  %57 = load %struct.statsx_gather_extra*, %struct.statsx_gather_extra** %13, align 8
  %58 = getelementptr inbounds %struct.statsx_gather_extra, %struct.statsx_gather_extra* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = load i32, i32* @FLAG_COUNTER, align 4
  %61 = and i32 %59, %60
  store i32 %61, i32* %19, align 4
  store i32 0, i32* @bad_servers, align 4
  %62 = load i32, i32* @verbosity, align 4
  %63 = icmp sge i32 %62, 4
  br i1 %63, label %64, label %69

64:                                               ; preds = %6
  %65 = load i32, i32* @stderr, align 4
  %66 = load i32, i32* %15, align 4
  %67 = load i32, i32* %16, align 4
  %68 = call i32 @fprintf(i32 %65, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %66, i32 %67)
  br label %69

69:                                               ; preds = %64, %6
  store i32 0, i32* %20, align 4
  %70 = load %struct.statsx_gather_extra*, %struct.statsx_gather_extra** %13, align 8
  %71 = getelementptr inbounds %struct.statsx_gather_extra, %struct.statsx_gather_extra* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = load i32, i32* @FLAG_DOUBLE, align 4
  %74 = and i32 %72, %73
  %75 = call i32 @clear_gather_heap(i32 %74)
  store i32 0, i32* %14, align 4
  br label %76

76:                                               ; preds = %157, %69
  %77 = load i32, i32* %14, align 4
  %78 = load i32, i32* %12, align 4
  %79 = icmp slt i32 %77, %78
  br i1 %79, label %80, label %160

80:                                               ; preds = %76
  %81 = load %struct.gather_entry*, %struct.gather_entry** %11, align 8
  %82 = load i32, i32* %14, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds %struct.gather_entry, %struct.gather_entry* %81, i64 %83
  %85 = getelementptr inbounds %struct.gather_entry, %struct.gather_entry* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = icmp sgt i32 %86, 0
  br i1 %87, label %88, label %131

88:                                               ; preds = %80
  %89 = load i32, i32* %15, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %108, label %91

91:                                               ; preds = %88
  %92 = load i32, i32* %16, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %101, label %94

94:                                               ; preds = %91
  %95 = load %struct.gather_entry*, %struct.gather_entry** %11, align 8
  %96 = load i32, i32* %14, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds %struct.gather_entry, %struct.gather_entry* %95, i64 %97
  %99 = load %struct.statsx_gather_extra*, %struct.statsx_gather_extra** %13, align 8
  %100 = call i32 @gather_sum_res(%struct.gather_entry* %98, %struct.statsx_gather_extra* %99)
  br label %107

101:                                              ; preds = %91
  %102 = load %struct.gather_entry*, %struct.gather_entry** %11, align 8
  %103 = load i32, i32* %14, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds %struct.gather_entry, %struct.gather_entry* %102, i64 %104
  %106 = call i32 @gather_heap_insert(%struct.gather_entry* %105)
  br label %107

107:                                              ; preds = %101, %94
  br label %130

108:                                              ; preds = %88
  %109 = load %struct.gather_entry*, %struct.gather_entry** %11, align 8
  %110 = load i32, i32* %14, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds %struct.gather_entry, %struct.gather_entry* %109, i64 %111
  %113 = getelementptr inbounds %struct.gather_entry, %struct.gather_entry* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  %115 = icmp sge i32 %114, 4
  br i1 %115, label %116, label %129

116:                                              ; preds = %108
  %117 = load %struct.gather_entry*, %struct.gather_entry** %11, align 8
  %118 = load i32, i32* %14, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds %struct.gather_entry, %struct.gather_entry* %117, i64 %119
  %121 = getelementptr inbounds %struct.gather_entry, %struct.gather_entry* %120, i32 0, i32 2
  %122 = load i64*, i64** %121, align 8
  %123 = getelementptr inbounds i64, i64* %122, i64 0
  %124 = load i64, i64* %123, align 8
  %125 = load i32, i32* %20, align 4
  %126 = sext i32 %125 to i64
  %127 = add nsw i64 %126, %124
  %128 = trunc i64 %127 to i32
  store i32 %128, i32* %20, align 4
  br label %129

129:                                              ; preds = %116, %108
  br label %130

130:                                              ; preds = %129, %107
  br label %156

131:                                              ; preds = %80
  %132 = load %struct.gather_entry*, %struct.gather_entry** %11, align 8
  %133 = load i32, i32* %14, align 4
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds %struct.gather_entry, %struct.gather_entry* %132, i64 %134
  %136 = getelementptr inbounds %struct.gather_entry, %struct.gather_entry* %135, i32 0, i32 1
  %137 = load i32, i32* %136, align 4
  %138 = icmp eq i32 %137, -1
  br i1 %138, label %139, label %142

139:                                              ; preds = %131
  %140 = load i32, i32* @bad_servers, align 4
  %141 = add nsw i32 %140, 1
  store i32 %141, i32* @bad_servers, align 4
  br label %142

142:                                              ; preds = %139, %131
  %143 = load i32, i32* @verbosity, align 4
  %144 = icmp sge i32 %143, 4
  br i1 %144, label %145, label %155

145:                                              ; preds = %142
  %146 = load i32, i32* @stderr, align 4
  %147 = load i32, i32* %14, align 4
  %148 = load %struct.gather_entry*, %struct.gather_entry** %11, align 8
  %149 = load i32, i32* %14, align 4
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds %struct.gather_entry, %struct.gather_entry* %148, i64 %150
  %152 = getelementptr inbounds %struct.gather_entry, %struct.gather_entry* %151, i32 0, i32 1
  %153 = load i32, i32* %152, align 4
  %154 = call i32 @fprintf(i32 %146, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i32 %147, i32 %153)
  br label %155

155:                                              ; preds = %145, %142
  br label %156

156:                                              ; preds = %155, %130
  br label %157

157:                                              ; preds = %156
  %158 = load i32, i32* %14, align 4
  %159 = add nsw i32 %158, 1
  store i32 %159, i32* %14, align 4
  br label %76

160:                                              ; preds = %76
  %161 = load i32, i32* %16, align 4
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %163, label %392

163:                                              ; preds = %160
  store i32 0, i32* %20, align 4
  store i32 -1, i32* %21, align 4
  store i64 0, i64* %22, align 8
  %164 = load i64, i64* @Q_raw, align 8
  %165 = icmp ne i64 %164, 0
  br i1 %165, label %187, label %166

166:                                              ; preds = %163
  %167 = load i32, i32* @Q_bad_servers, align 4
  %168 = icmp ne i32 %167, 0
  br i1 %168, label %169, label %187

169:                                              ; preds = %166
  %170 = load i32, i32* %20, align 4
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %172, label %178

172:                                              ; preds = %169
  %173 = load i8*, i8** @buff, align 8
  %174 = load i32, i32* %20, align 4
  %175 = add nsw i32 %174, 1
  store i32 %175, i32* %20, align 4
  %176 = sext i32 %174 to i64
  %177 = getelementptr inbounds i8, i8* %173, i64 %176
  store i8 44, i8* %177, align 1
  br label %178

178:                                              ; preds = %172, %169
  %179 = load i8*, i8** @buff, align 8
  %180 = load i32, i32* %20, align 4
  %181 = sext i32 %180 to i64
  %182 = getelementptr inbounds i8, i8* %179, i64 %181
  %183 = load i32, i32* @bad_servers, align 4
  %184 = call i32 (i8*, i8*, ...) @sprintf(i8* %182, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i32 %183)
  %185 = load i32, i32* %20, align 4
  %186 = add nsw i32 %185, %184
  store i32 %186, i32* %20, align 4
  br label %187

187:                                              ; preds = %178, %166, %163
  br label %188

188:                                              ; preds = %298, %211, %187
  %189 = load i32, i32* %20, align 4
  %190 = icmp slt i32 %189, 100000
  br i1 %190, label %191, label %306

191:                                              ; preds = %188
  %192 = call i32* (...) @get_gather_heap_head()
  store i32* %192, i32** %23, align 8
  %193 = load i32*, i32** %23, align 8
  %194 = icmp ne i32* %193, null
  br i1 %194, label %196, label %195

195:                                              ; preds = %191
  br label %306

196:                                              ; preds = %191
  %197 = load i32, i32* %21, align 4
  %198 = load i32*, i32** %23, align 8
  %199 = load i32, i32* %198, align 4
  %200 = icmp eq i32 %197, %199
  br i1 %200, label %201, label %213

201:                                              ; preds = %196
  %202 = load i32, i32* %18, align 4
  %203 = icmp ne i32 %202, 0
  br i1 %203, label %204, label %211

204:                                              ; preds = %201
  %205 = load i32*, i32** %23, align 8
  %206 = getelementptr inbounds i32, i32* %205, i64 1
  %207 = load i32, i32* %206, align 4
  %208 = sext i32 %207 to i64
  %209 = load i64, i64* %22, align 8
  %210 = add nsw i64 %209, %208
  store i64 %210, i64* %22, align 8
  br label %211

211:                                              ; preds = %204, %201
  %212 = call i32 (...) @gather_heap_advance()
  br label %188

213:                                              ; preds = %196
  %214 = load i32, i32* %21, align 4
  %215 = icmp ne i32 %214, -1
  br i1 %215, label %216, label %298

216:                                              ; preds = %213
  %217 = load i32, i32* %18, align 4
  %218 = icmp ne i32 %217, 0
  br i1 %218, label %219, label %251

219:                                              ; preds = %216
  %220 = load i64, i64* @Q_raw, align 8
  %221 = icmp ne i64 %220, 0
  br i1 %221, label %222, label %232

222:                                              ; preds = %219
  %223 = load i64, i64* %22, align 8
  %224 = trunc i64 %223 to i32
  %225 = load i8*, i8** @buff, align 8
  %226 = load i32, i32* %20, align 4
  %227 = sext i32 %226 to i64
  %228 = getelementptr inbounds i8, i8* %225, i64 %227
  %229 = bitcast i8* %228 to i32*
  store i32 %224, i32* %229, align 4
  %230 = load i32, i32* %20, align 4
  %231 = add nsw i32 %230, 4
  store i32 %231, i32* %20, align 4
  br label %250

232:                                              ; preds = %219
  %233 = load i32, i32* %20, align 4
  %234 = icmp ne i32 %233, 0
  br i1 %234, label %235, label %241

235:                                              ; preds = %232
  %236 = load i8*, i8** @buff, align 8
  %237 = load i32, i32* %20, align 4
  %238 = add nsw i32 %237, 1
  store i32 %238, i32* %20, align 4
  %239 = sext i32 %237 to i64
  %240 = getelementptr inbounds i8, i8* %236, i64 %239
  store i8 44, i8* %240, align 1
  br label %241

241:                                              ; preds = %235, %232
  %242 = load i8*, i8** @buff, align 8
  %243 = load i32, i32* %20, align 4
  %244 = sext i32 %243 to i64
  %245 = getelementptr inbounds i8, i8* %242, i64 %244
  %246 = load i64, i64* %22, align 8
  %247 = call i32 (i8*, i8*, ...) @sprintf(i8* %245, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i64 %246)
  %248 = load i32, i32* %20, align 4
  %249 = add nsw i32 %248, %247
  store i32 %249, i32* %20, align 4
  br label %250

250:                                              ; preds = %241, %222
  br label %251

251:                                              ; preds = %250, %216
  %252 = load i64, i64* @Q_raw, align 8
  %253 = icmp ne i64 %252, 0
  br i1 %253, label %254, label %263

254:                                              ; preds = %251
  %255 = load i32, i32* %21, align 4
  %256 = load i8*, i8** @buff, align 8
  %257 = load i32, i32* %20, align 4
  %258 = sext i32 %257 to i64
  %259 = getelementptr inbounds i8, i8* %256, i64 %258
  %260 = bitcast i8* %259 to i32*
  store i32 %255, i32* %260, align 4
  %261 = load i32, i32* %20, align 4
  %262 = add nsw i32 %261, 4
  store i32 %262, i32* %20, align 4
  br label %297

263:                                              ; preds = %251
  %264 = load i32, i32* %20, align 4
  %265 = icmp ne i32 %264, 0
  br i1 %265, label %266, label %272

266:                                              ; preds = %263
  %267 = load i8*, i8** @buff, align 8
  %268 = load i32, i32* %20, align 4
  %269 = add nsw i32 %268, 1
  store i32 %269, i32* %20, align 4
  %270 = sext i32 %268 to i64
  %271 = getelementptr inbounds i8, i8* %267, i64 %270
  store i8 44, i8* %271, align 1
  br label %272

272:                                              ; preds = %266, %263
  %273 = load i32, i32* %18, align 4
  %274 = icmp ne i32 %273, 0
  br i1 %274, label %284, label %275

275:                                              ; preds = %272
  %276 = load i8*, i8** @buff, align 8
  %277 = load i32, i32* %20, align 4
  %278 = sext i32 %277 to i64
  %279 = getelementptr inbounds i8, i8* %276, i64 %278
  %280 = load i32, i32* %21, align 4
  %281 = call i32 (i8*, i8*, ...) @sprintf(i8* %279, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i32 %280)
  %282 = load i32, i32* %20, align 4
  %283 = add nsw i32 %282, %281
  store i32 %283, i32* %20, align 4
  br label %296

284:                                              ; preds = %272
  %285 = load i8*, i8** @buff, align 8
  %286 = load i32, i32* %20, align 4
  %287 = sext i32 %286 to i64
  %288 = getelementptr inbounds i8, i8* %285, i64 %287
  %289 = load i32, i32* %21, align 4
  %290 = srem i32 %289, 100
  %291 = load i32, i32* %21, align 4
  %292 = sdiv i32 %291, 100
  %293 = call i32 (i8*, i8*, ...) @sprintf(i8* %288, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i32 %290, i32 %292)
  %294 = load i32, i32* %20, align 4
  %295 = add nsw i32 %294, %293
  store i32 %295, i32* %20, align 4
  br label %296

296:                                              ; preds = %284, %275
  br label %297

297:                                              ; preds = %296, %254
  br label %298

298:                                              ; preds = %297, %213
  %299 = load i32*, i32** %23, align 8
  %300 = load i32, i32* %299, align 4
  store i32 %300, i32* %21, align 4
  %301 = load i32*, i32** %23, align 8
  %302 = getelementptr inbounds i32, i32* %301, i64 1
  %303 = load i32, i32* %302, align 4
  %304 = sext i32 %303 to i64
  store i64 %304, i64* %22, align 8
  %305 = call i32 (...) @gather_heap_advance()
  br label %188

306:                                              ; preds = %195, %188
  %307 = load i32, i32* %21, align 4
  %308 = icmp ne i32 %307, -1
  br i1 %308, label %309, label %391

309:                                              ; preds = %306
  %310 = load i32, i32* %18, align 4
  %311 = icmp ne i32 %310, 0
  br i1 %311, label %312, label %344

312:                                              ; preds = %309
  %313 = load i64, i64* @Q_raw, align 8
  %314 = icmp ne i64 %313, 0
  br i1 %314, label %315, label %325

315:                                              ; preds = %312
  %316 = load i64, i64* %22, align 8
  %317 = trunc i64 %316 to i32
  %318 = load i8*, i8** @buff, align 8
  %319 = load i32, i32* %20, align 4
  %320 = sext i32 %319 to i64
  %321 = getelementptr inbounds i8, i8* %318, i64 %320
  %322 = bitcast i8* %321 to i32*
  store i32 %317, i32* %322, align 4
  %323 = load i32, i32* %20, align 4
  %324 = add nsw i32 %323, 4
  store i32 %324, i32* %20, align 4
  br label %343

325:                                              ; preds = %312
  %326 = load i32, i32* %20, align 4
  %327 = icmp ne i32 %326, 0
  br i1 %327, label %328, label %334

328:                                              ; preds = %325
  %329 = load i8*, i8** @buff, align 8
  %330 = load i32, i32* %20, align 4
  %331 = add nsw i32 %330, 1
  store i32 %331, i32* %20, align 4
  %332 = sext i32 %330 to i64
  %333 = getelementptr inbounds i8, i8* %329, i64 %332
  store i8 44, i8* %333, align 1
  br label %334

334:                                              ; preds = %328, %325
  %335 = load i8*, i8** @buff, align 8
  %336 = load i32, i32* %20, align 4
  %337 = sext i32 %336 to i64
  %338 = getelementptr inbounds i8, i8* %335, i64 %337
  %339 = load i64, i64* %22, align 8
  %340 = call i32 (i8*, i8*, ...) @sprintf(i8* %338, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i64 %339)
  %341 = load i32, i32* %20, align 4
  %342 = add nsw i32 %341, %340
  store i32 %342, i32* %20, align 4
  br label %343

343:                                              ; preds = %334, %315
  br label %344

344:                                              ; preds = %343, %309
  %345 = load i64, i64* @Q_raw, align 8
  %346 = icmp ne i64 %345, 0
  br i1 %346, label %347, label %356

347:                                              ; preds = %344
  %348 = load i32, i32* %21, align 4
  %349 = load i8*, i8** @buff, align 8
  %350 = load i32, i32* %20, align 4
  %351 = sext i32 %350 to i64
  %352 = getelementptr inbounds i8, i8* %349, i64 %351
  %353 = bitcast i8* %352 to i32*
  store i32 %348, i32* %353, align 4
  %354 = load i32, i32* %20, align 4
  %355 = add nsw i32 %354, 4
  store i32 %355, i32* %20, align 4
  br label %390

356:                                              ; preds = %344
  %357 = load i32, i32* %20, align 4
  %358 = icmp ne i32 %357, 0
  br i1 %358, label %359, label %365

359:                                              ; preds = %356
  %360 = load i8*, i8** @buff, align 8
  %361 = load i32, i32* %20, align 4
  %362 = add nsw i32 %361, 1
  store i32 %362, i32* %20, align 4
  %363 = sext i32 %361 to i64
  %364 = getelementptr inbounds i8, i8* %360, i64 %363
  store i8 44, i8* %364, align 1
  br label %365

365:                                              ; preds = %359, %356
  %366 = load i32, i32* %18, align 4
  %367 = icmp ne i32 %366, 0
  br i1 %367, label %377, label %368

368:                                              ; preds = %365
  %369 = load i8*, i8** @buff, align 8
  %370 = load i32, i32* %20, align 4
  %371 = sext i32 %370 to i64
  %372 = getelementptr inbounds i8, i8* %369, i64 %371
  %373 = load i32, i32* %21, align 4
  %374 = call i32 (i8*, i8*, ...) @sprintf(i8* %372, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i32 %373)
  %375 = load i32, i32* %20, align 4
  %376 = add nsw i32 %375, %374
  store i32 %376, i32* %20, align 4
  br label %389

377:                                              ; preds = %365
  %378 = load i8*, i8** @buff, align 8
  %379 = load i32, i32* %20, align 4
  %380 = sext i32 %379 to i64
  %381 = getelementptr inbounds i8, i8* %378, i64 %380
  %382 = load i32, i32* %21, align 4
  %383 = srem i32 %382, 100
  %384 = load i32, i32* %21, align 4
  %385 = sdiv i32 %384, 100
  %386 = call i32 (i8*, i8*, ...) @sprintf(i8* %381, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i32 %383, i32 %385)
  %387 = load i32, i32* %20, align 4
  %388 = add nsw i32 %387, %386
  store i32 %388, i32* %20, align 4
  br label %389

389:                                              ; preds = %377, %368
  br label %390

390:                                              ; preds = %389, %347
  br label %391

391:                                              ; preds = %390, %306
  br label %392

392:                                              ; preds = %391, %160
  %393 = load i32, i32* %19, align 4
  %394 = icmp ne i32 %393, 0
  br i1 %394, label %395, label %399

395:                                              ; preds = %392
  %396 = load i8*, i8** @buff, align 8
  %397 = load %struct.statsx_gather_extra*, %struct.statsx_gather_extra** %13, align 8
  %398 = call i32 @get_counter_serialized(i8* %396, %struct.statsx_gather_extra* %397)
  store i32 %398, i32* %20, align 4
  br label %399

399:                                              ; preds = %395, %392
  %400 = load i32, i32* %15, align 4
  %401 = icmp ne i32 %400, 0
  br i1 %401, label %402, label %423

402:                                              ; preds = %399
  store i32 0, i32* %17, align 4
  %403 = load i64, i64* @Q_raw, align 8
  %404 = icmp ne i64 %403, 0
  br i1 %404, label %418, label %405

405:                                              ; preds = %402
  %406 = load i32, i32* @Q_bad_servers, align 4
  %407 = icmp ne i32 %406, 0
  br i1 %407, label %412, label %408

408:                                              ; preds = %405
  %409 = load i8*, i8** @buff, align 8
  %410 = load i32, i32* %20, align 4
  %411 = call i32 (i8*, i8*, ...) @sprintf(i8* %409, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i32 %410)
  store i32 %411, i32* %20, align 4
  br label %417

412:                                              ; preds = %405
  %413 = load i8*, i8** @buff, align 8
  %414 = load i32, i32* @bad_servers, align 4
  %415 = load i32, i32* %20, align 4
  %416 = call i32 (i8*, i8*, ...) @sprintf(i8* %413, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i32 %414, i32 %415)
  store i32 %416, i32* %20, align 4
  br label %417

417:                                              ; preds = %412, %408
  br label %422

418:                                              ; preds = %402
  %419 = load i32, i32* %20, align 4
  %420 = load i8*, i8** @buff, align 8
  %421 = bitcast i8* %420 to i32*
  store i32 %419, i32* %421, align 4
  store i32 4, i32* %20, align 4
  br label %422

422:                                              ; preds = %418, %417
  br label %423

423:                                              ; preds = %422, %399
  %424 = load i32, i32* %17, align 4
  %425 = icmp ne i32 %424, 0
  br i1 %425, label %426, label %447

426:                                              ; preds = %423
  %427 = load i64, i64* @Q_raw, align 8
  %428 = icmp ne i64 %427, 0
  br i1 %428, label %447, label %429

429:                                              ; preds = %426
  %430 = load i32, i32* %16, align 4
  %431 = icmp ne i32 %430, 0
  br i1 %431, label %447, label %432

432:                                              ; preds = %429
  %433 = load %struct.connection*, %struct.connection** %7, align 8
  %434 = getelementptr inbounds %struct.connection, %struct.connection* %433, i32 0, i32 0
  %435 = load i8*, i8** @buff, align 8
  %436 = load i32, i32* %20, align 4
  %437 = sext i32 %436 to i64
  %438 = getelementptr inbounds i8, i8* %435, i64 %437
  %439 = load i8*, i8** @buff, align 8
  %440 = load i32, i32* %20, align 4
  %441 = sext i32 %440 to i64
  %442 = getelementptr inbounds i8, i8* %439, i64 %441
  %443 = load i8*, i8** %8, align 8
  %444 = load i32, i32* %20, align 4
  %445 = call i32 (i8*, i8*, ...) @sprintf(i8* %442, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0), i8* %443, i32 %444)
  %446 = call i32 @write_out(i32* %434, i8* %438, i32 %445)
  br label %462

447:                                              ; preds = %429, %426, %423
  %448 = load %struct.connection*, %struct.connection** %7, align 8
  %449 = getelementptr inbounds %struct.connection, %struct.connection* %448, i32 0, i32 0
  %450 = load i8*, i8** @buff, align 8
  %451 = load i32, i32* %20, align 4
  %452 = sext i32 %451 to i64
  %453 = getelementptr inbounds i8, i8* %450, i64 %452
  %454 = load i8*, i8** @buff, align 8
  %455 = load i32, i32* %20, align 4
  %456 = sext i32 %455 to i64
  %457 = getelementptr inbounds i8, i8* %454, i64 %456
  %458 = load i8*, i8** %8, align 8
  %459 = load i32, i32* %20, align 4
  %460 = call i32 (i8*, i8*, ...) @sprintf(i8* %457, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6, i64 0, i64 0), i8* %458, i32 %459)
  %461 = call i32 @write_out(i32* %449, i8* %453, i32 %460)
  br label %462

462:                                              ; preds = %447, %432
  %463 = load %struct.connection*, %struct.connection** %7, align 8
  %464 = getelementptr inbounds %struct.connection, %struct.connection* %463, i32 0, i32 0
  %465 = load i8*, i8** @buff, align 8
  %466 = load i32, i32* %20, align 4
  %467 = call i32 @write_out(i32* %464, i8* %465, i32 %466)
  %468 = load %struct.connection*, %struct.connection** %7, align 8
  %469 = getelementptr inbounds %struct.connection, %struct.connection* %468, i32 0, i32 0
  %470 = call i32 @write_out(i32* %469, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0), i32 2)
  ret i32 0
}

declare dso_local i32 @fprintf(i32, i8*, i32, i32) #1

declare dso_local i32 @clear_gather_heap(i32) #1

declare dso_local i32 @gather_sum_res(%struct.gather_entry*, %struct.statsx_gather_extra*) #1

declare dso_local i32 @gather_heap_insert(%struct.gather_entry*) #1

declare dso_local i32 @sprintf(i8*, i8*, ...) #1

declare dso_local i32* @get_gather_heap_head(...) #1

declare dso_local i32 @gather_heap_advance(...) #1

declare dso_local i32 @get_counter_serialized(i8*, %struct.statsx_gather_extra*) #1

declare dso_local i32 @write_out(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
