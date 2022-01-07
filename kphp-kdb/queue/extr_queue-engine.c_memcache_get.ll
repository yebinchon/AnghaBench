; ModuleID = '/home/carl/AnghaBench/kphp-kdb/queue/extr_queue-engine.c_memcache_get.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/queue/extr_queue-engine.c_memcache_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.connection = type { i32 }
%struct.TYPE_4__ = type { i8*, i32, i32, i32, i32 }

@verbosity = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"memcache_get: key='%s', key_len=%d\0A\00", align 1
@LOG_HISTORY = common dso_local global i32 0, align 4
@query = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"key='%s', key_len=%d\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"stats\00", align 1
@stats_buff = common dso_local global i8* null, align 8
@STATS_BUFF_SIZE = common dso_local global i32 0, align 4
@GET_LOG = common dso_local global i32 0, align 4
@SET_LOG_VERBOSITY = common dso_local global i32 0, align 4
@cmd_get = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [14 x i8] c"timestamp_key\00", align 1
@.str.4 = private unnamed_addr constant [26 x i8] c"timestamp_key%d,%lld,%d%n\00", align 1
@.str.5 = private unnamed_addr constant [33 x i8] c"GET KEY (%s) id = %d, ip = %lld\0A\00", align 1
@Q_DEF = common dso_local global i32 0, align 4
@get = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [6 x i8] c"alias\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"_news\00", align 1
@.str.8 = private unnamed_addr constant [16 x i8] c"GET ALIAS (%s)\0A\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"%lld\00", align 1
@.str.10 = private unnamed_addr constant [15 x i8] c"qname_by_alias\00", align 1
@.str.11 = private unnamed_addr constant [21 x i8] c"qname_by_alias%lld%n\00", align 1
@buf = common dso_local global i8* null, align 8
@.str.12 = private unnamed_addr constant [65 x i8] c"%s : ref_cnt = %d, ev_first = %p, keys_cnt = %d, subscr_cnt = %d\00", align 1
@.str.13 = private unnamed_addr constant [11 x i8] c"queue_info\00", align 1
@.str.14 = private unnamed_addr constant [57 x i8] c"name\09%s\0Aref_cnt\09%d\0Akey_cnt\09%d\0Asubscr_cnt\09%d\0Aev_frist\09%p\0A\00", align 1
@.str.15 = private unnamed_addr constant [13 x i8] c"watchcat_key\00", align 1
@.str.16 = private unnamed_addr constant [25 x i8] c"watchcat_key%d,%lld,%d%n\00", align 1
@.str.17 = private unnamed_addr constant [9 x i8] c"news_key\00", align 1
@.str.18 = private unnamed_addr constant [25 x i8] c"news_key%d,%lld,%d(%lld)\00", align 1
@.str.19 = private unnamed_addr constant [40 x i8] c"GET NEWS KEY (%lld) id = %d, ip = %lld\0A\00", align 1
@.str.20 = private unnamed_addr constant [6 x i8] c"queue\00", align 1
@.str.21 = private unnamed_addr constant [18 x i8] c"queue%d,%lld,%d%n\00", align 1
@.str.22 = private unnamed_addr constant [13 x i8] c"{\22failed\22:2}\00", align 1
@KEY_LEN = common dso_local global i32 0, align 4
@.str.23 = private unnamed_addr constant [11 x i8] c"upd_secret\00", align 1
@.str.24 = private unnamed_addr constant [13 x i8] c"upd_secret%d\00", align 1
@.str.25 = private unnamed_addr constant [3 x i8] c"OK\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @memcache_get(%struct.connection* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.connection*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca double, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i8*, align 8
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca %struct.TYPE_4__*, align 8
  %28 = alloca i8*, align 8
  %29 = alloca %struct.TYPE_4__*, align 8
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  %32 = alloca i32, align 4
  %33 = alloca i64, align 8
  %34 = alloca i8*, align 8
  %35 = alloca i32, align 4
  %36 = alloca i8*, align 8
  %37 = alloca i32, align 4
  %38 = alloca i32, align 4
  %39 = alloca i64, align 8
  %40 = alloca i32, align 4
  %41 = alloca i8*, align 8
  %42 = alloca i32, align 4
  %43 = alloca i32, align 4
  %44 = alloca i32, align 4
  %45 = alloca i64, align 8
  %46 = alloca i8*, align 8
  %47 = alloca i8*, align 8
  %48 = alloca i32, align 4
  %49 = alloca i32*, align 8
  %50 = alloca i8, align 1
  %51 = alloca i32, align 4
  store %struct.connection* %0, %struct.connection** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %52 = load i32, i32* @verbosity, align 4
  %53 = icmp sgt i32 %52, 1
  br i1 %53, label %54, label %59

54:                                               ; preds = %3
  %55 = load i32, i32* @stderr, align 4
  %56 = load i8*, i8** %6, align 8
  %57 = load i32, i32* %7, align 4
  %58 = call i32 @fprintf(i32 %55, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i8* %56, i32 %57)
  br label %59

59:                                               ; preds = %54, %3
  %60 = load i32, i32* @LOG_HISTORY, align 4
  %61 = load i8*, i8** %6, align 8
  %62 = load i32, i32* %7, align 4
  %63 = call i32 (i32, i32, i8*, ...) @dl_log_add(i32 %60, i32 1, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i8* %61, i32 %62)
  %64 = load i32, i32* @query, align 4
  %65 = sext i32 %64 to i64
  %66 = inttoptr i64 %65 to i8*
  %67 = load i8*, i8** %6, align 8
  %68 = load i32, i32* %7, align 4
  %69 = call i32 (i8*, i8*, ...) @sprintf(i8* %66, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i8* %67, i32 %68)
  %70 = load i8*, i8** %6, align 8
  %71 = load i32, i32* %7, align 4
  %72 = call i32 @eat_at(i8* %70, i32 %71, i8** %8, i32* %9)
  %73 = load i32, i32* %9, align 4
  %74 = icmp sge i32 %73, 5
  br i1 %74, label %75, label %98

75:                                               ; preds = %59
  %76 = load i8*, i8** %8, align 8
  %77 = call i32 @strncmp(i8* %76, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i32 5)
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %98, label %79

79:                                               ; preds = %75
  %80 = call i32 (...) @queue_prepare_stats()
  store i32 %80, i32* %10, align 4
  %81 = load %struct.connection*, %struct.connection** %5, align 8
  %82 = load i8*, i8** @stats_buff, align 8
  %83 = load i32, i32* %10, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds i8, i8* %82, i64 %84
  %86 = load i32, i32* @STATS_BUFF_SIZE, align 4
  %87 = load i32, i32* %10, align 4
  %88 = sub nsw i32 %86, %87
  %89 = call i32 @prepare_stats(%struct.connection* %81, i8* %85, i32 %88)
  store i32 %89, i32* %11, align 4
  %90 = load %struct.connection*, %struct.connection** %5, align 8
  %91 = load i8*, i8** %6, align 8
  %92 = load i8*, i8** @stats_buff, align 8
  %93 = load i32, i32* %10, align 4
  %94 = load i32, i32* %11, align 4
  %95 = add nsw i32 %93, %94
  %96 = sub nsw i32 %95, 1
  %97 = call i32 @return_one_key(%struct.connection* %90, i8* %91, i8* %92, i32 %96)
  store i32 0, i32* %4, align 4
  br label %614

98:                                               ; preds = %75, %59
  %99 = load i32, i32* @GET_LOG, align 4
  %100 = load i32, i32* @SET_LOG_VERBOSITY, align 4
  %101 = call double (...) @mytime()
  %102 = fneg double %101
  store double %102, double* %12, align 8
  %103 = load i32, i32* @cmd_get, align 4
  %104 = add nsw i32 %103, 1
  store i32 %104, i32* @cmd_get, align 4
  %105 = load i32, i32* %9, align 4
  %106 = icmp sge i32 %105, 13
  br i1 %106, label %107, label %177

107:                                              ; preds = %98
  %108 = load i8*, i8** %8, align 8
  %109 = call i32 @strncmp(i8* %108, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0), i32 13)
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %177, label %111

111:                                              ; preds = %107
  %112 = load i8*, i8** %8, align 8
  %113 = call i32 (i8*, i8*, i32*, ...) @sscanf(i8* %112, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0), i32* %13, i64* %16, i32* %14, i32* %15)
  %114 = icmp eq i32 %113, 3
  br i1 %114, label %115, label %174

115:                                              ; preds = %111
  %116 = load i8*, i8** %8, align 8
  %117 = load i32, i32* %15, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds i8, i8* %116, i64 %118
  %120 = load i8, i8* %119, align 1
  %121 = sext i8 %120 to i32
  %122 = icmp eq i32 %121, 40
  br i1 %122, label %123, label %174

123:                                              ; preds = %115
  %124 = load i8*, i8** %8, align 8
  %125 = load i32, i32* %9, align 4
  %126 = sub nsw i32 %125, 1
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds i8, i8* %124, i64 %127
  %129 = load i8, i8* %128, align 1
  %130 = sext i8 %129 to i32
  %131 = icmp eq i32 %130, 41
  br i1 %131, label %132, label %174

132:                                              ; preds = %123
  %133 = load i32, i32* %9, align 4
  %134 = load i32, i32* %15, align 4
  %135 = sub nsw i32 %133, %134
  %136 = sub nsw i32 %135, 2
  %137 = load i32, i32* @STATS_BUFF_SIZE, align 4
  %138 = icmp slt i32 %136, %137
  br i1 %138, label %139, label %174

139:                                              ; preds = %132
  %140 = load i8*, i8** @stats_buff, align 8
  store i8* %140, i8** %17, align 8
  %141 = load i32, i32* %9, align 4
  %142 = load i32, i32* %15, align 4
  %143 = sub nsw i32 %141, %142
  %144 = sub nsw i32 %143, 2
  store i32 %144, i32* %18, align 4
  %145 = load i8*, i8** %17, align 8
  %146 = load i8*, i8** %8, align 8
  %147 = load i32, i32* %15, align 4
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds i8, i8* %146, i64 %148
  %150 = getelementptr inbounds i8, i8* %149, i64 1
  %151 = load i32, i32* %18, align 4
  %152 = call i32 @memcpy(i8* %145, i8* %150, i32 %151)
  %153 = load i8*, i8** %17, align 8
  %154 = load i32, i32* %18, align 4
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds i8, i8* %153, i64 %155
  store i8 0, i8* %156, align 1
  %157 = load i32, i32* @LOG_HISTORY, align 4
  %158 = load i8*, i8** %17, align 8
  %159 = load i32, i32* %13, align 4
  %160 = load i64, i64* %16, align 8
  %161 = call i32 (i32, i32, i8*, ...) @dl_log_add(i32 %157, i32 1, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.5, i64 0, i64 0), i8* %158, i32 %159, i64 %160)
  %162 = load i8*, i8** %17, align 8
  %163 = load i32, i32* %13, align 4
  %164 = load i64, i64* %16, align 8
  %165 = load i32, i32* %14, align 4
  %166 = load i32, i32* @Q_DEF, align 4
  %167 = call i8* @get_timestamp_key(i8* %162, i32 %163, i64 %164, i32 %165, i32* null, i32 %166)
  store i8* %167, i8** %17, align 8
  %168 = load %struct.connection*, %struct.connection** %5, align 8
  %169 = load i8*, i8** %6, align 8
  %170 = load i8*, i8** %17, align 8
  %171 = load i8*, i8** %17, align 8
  %172 = call i32 @strlen(i8* %171)
  %173 = call i32 @return_one_key(%struct.connection* %168, i8* %169, i8* %170, i32 %172)
  br label %174

174:                                              ; preds = %139, %132, %123, %115, %111
  %175 = load i32, i32* @get, align 4
  %176 = call i32 @QRETURN(i32 %175, i32 0)
  br label %177

177:                                              ; preds = %174, %107, %98
  %178 = load i32, i32* %9, align 4
  %179 = icmp sge i32 %178, 5
  br i1 %179, label %180, label %278

180:                                              ; preds = %177
  %181 = load i8*, i8** %8, align 8
  %182 = call i32 @strncmp(i8* %181, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0), i32 5)
  %183 = icmp ne i32 %182, 0
  br i1 %183, label %278, label %184

184:                                              ; preds = %180
  store i32 5, i32* %19, align 4
  store i32 0, i32* %20, align 4
  %185 = load i32, i32* %9, align 4
  %186 = icmp sge i32 %185, 10
  br i1 %186, label %187, label %195

187:                                              ; preds = %184
  %188 = load i8*, i8** %8, align 8
  %189 = getelementptr inbounds i8, i8* %188, i64 5
  %190 = call i32 @strncmp(i8* %189, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0), i32 5)
  %191 = icmp ne i32 %190, 0
  br i1 %191, label %195, label %192

192:                                              ; preds = %187
  %193 = load i32, i32* %19, align 4
  %194 = add nsw i32 %193, 5
  store i32 %194, i32* %19, align 4
  store i32 1, i32* %20, align 4
  br label %195

195:                                              ; preds = %192, %187, %184
  %196 = load i8*, i8** %8, align 8
  %197 = load i32, i32* %19, align 4
  %198 = sext i32 %197 to i64
  %199 = getelementptr inbounds i8, i8* %196, i64 %198
  %200 = load i8, i8* %199, align 1
  %201 = sext i8 %200 to i32
  %202 = icmp eq i32 %201, 40
  br i1 %202, label %203, label %275

203:                                              ; preds = %195
  %204 = load i8*, i8** %8, align 8
  %205 = load i32, i32* %9, align 4
  %206 = sub nsw i32 %205, 1
  %207 = sext i32 %206 to i64
  %208 = getelementptr inbounds i8, i8* %204, i64 %207
  %209 = load i8, i8* %208, align 1
  %210 = sext i8 %209 to i32
  %211 = icmp eq i32 %210, 41
  br i1 %211, label %212, label %275

212:                                              ; preds = %203
  %213 = load i32, i32* %9, align 4
  %214 = load i32, i32* %19, align 4
  %215 = sub nsw i32 %213, %214
  %216 = sub nsw i32 %215, 2
  %217 = load i32, i32* @STATS_BUFF_SIZE, align 4
  %218 = icmp slt i32 %216, %217
  br i1 %218, label %219, label %275

219:                                              ; preds = %212
  %220 = load i8*, i8** @stats_buff, align 8
  store i8* %220, i8** %21, align 8
  %221 = load i32, i32* %9, align 4
  %222 = load i32, i32* %19, align 4
  %223 = sub nsw i32 %221, %222
  %224 = sub nsw i32 %223, 2
  store i32 %224, i32* %22, align 4
  %225 = load i8*, i8** %21, align 8
  %226 = load i8*, i8** %8, align 8
  %227 = load i32, i32* %19, align 4
  %228 = sext i32 %227 to i64
  %229 = getelementptr inbounds i8, i8* %226, i64 %228
  %230 = getelementptr inbounds i8, i8* %229, i64 1
  %231 = load i32, i32* %22, align 4
  %232 = call i32 @memcpy(i8* %225, i8* %230, i32 %231)
  %233 = load i8*, i8** %21, align 8
  %234 = load i32, i32* %22, align 4
  %235 = sext i32 %234 to i64
  %236 = getelementptr inbounds i8, i8* %233, i64 %235
  store i8 0, i8* %236, align 1
  %237 = load i32, i32* @LOG_HISTORY, align 4
  %238 = load i8*, i8** %21, align 8
  %239 = call i32 (i32, i32, i8*, ...) @dl_log_add(i32 %237, i32 1, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.8, i64 0, i64 0), i8* %238)
  %240 = load i32, i32* %20, align 4
  %241 = icmp ne i32 %240, 0
  br i1 %241, label %242, label %254

242:                                              ; preds = %219
  %243 = load i8*, i8** %21, align 8
  %244 = call i32 (i8*, i8*, i32*, ...) @sscanf(i8* %243, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i64 0, i64 0), i32* %24)
  %245 = icmp ne i32 %244, 1
  br i1 %245, label %250, label %246

246:                                              ; preds = %242
  %247 = load i32, i32* %24, align 4
  %248 = call i32 @get_queue_news_alias(i32 %247, i32* %23)
  %249 = icmp ne i32 %248, 0
  br i1 %249, label %253, label %250

250:                                              ; preds = %246, %242
  %251 = load i32, i32* @get, align 4
  %252 = call i32 @QRETURN(i32 %251, i32 0)
  br label %253

253:                                              ; preds = %250, %246
  br label %265

254:                                              ; preds = %219
  %255 = load i32, i32* %20, align 4
  %256 = icmp ne i32 %255, 0
  br i1 %256, label %264, label %257

257:                                              ; preds = %254
  %258 = load i8*, i8** %21, align 8
  %259 = call i32 @get_queue_alias(i8* %258, i32* %23)
  %260 = icmp ne i32 %259, 0
  br i1 %260, label %264, label %261

261:                                              ; preds = %257
  %262 = load i32, i32* @get, align 4
  %263 = call i32 @QRETURN(i32 %262, i32 0)
  br label %264

264:                                              ; preds = %261, %257, %254
  br label %265

265:                                              ; preds = %264, %253
  %266 = load i8*, i8** %21, align 8
  %267 = load i32, i32* %23, align 4
  %268 = call i32 (i8*, i8*, ...) @sprintf(i8* %266, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i64 0, i64 0), i32 %267)
  %269 = load %struct.connection*, %struct.connection** %5, align 8
  %270 = load i8*, i8** %6, align 8
  %271 = load i8*, i8** %21, align 8
  %272 = load i8*, i8** %21, align 8
  %273 = call i32 @strlen(i8* %272)
  %274 = call i32 @return_one_key(%struct.connection* %269, i8* %270, i8* %271, i32 %273)
  br label %275

275:                                              ; preds = %265, %212, %203, %195
  %276 = load i32, i32* @get, align 4
  %277 = call i32 @QRETURN(i32 %276, i32 0)
  br label %278

278:                                              ; preds = %275, %180, %177
  %279 = load i32, i32* %9, align 4
  %280 = icmp sge i32 %279, 14
  br i1 %280, label %281, label %330

281:                                              ; preds = %278
  %282 = load i8*, i8** %8, align 8
  %283 = call i32 @strncmp(i8* %282, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.10, i64 0, i64 0), i32 14)
  %284 = icmp ne i32 %283, 0
  br i1 %284, label %330, label %285

285:                                              ; preds = %281
  %286 = load i8*, i8** %8, align 8
  %287 = call i32 (i8*, i8*, i32*, ...) @sscanf(i8* %286, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.11, i64 0, i64 0), i32* %25, i32* %26)
  %288 = icmp eq i32 %287, 1
  br i1 %288, label %289, label %327

289:                                              ; preds = %285
  %290 = load i8*, i8** %8, align 8
  %291 = load i32, i32* %26, align 4
  %292 = sext i32 %291 to i64
  %293 = getelementptr inbounds i8, i8* %290, i64 %292
  %294 = load i8, i8* %293, align 1
  %295 = sext i8 %294 to i32
  %296 = icmp eq i32 %295, 0
  br i1 %296, label %297, label %327

297:                                              ; preds = %289
  %298 = load i32, i32* %25, align 4
  %299 = call %struct.TYPE_4__* @get_queue_by_alias(i32 %298)
  store %struct.TYPE_4__* %299, %struct.TYPE_4__** %27, align 8
  %300 = load %struct.TYPE_4__*, %struct.TYPE_4__** %27, align 8
  %301 = icmp ne %struct.TYPE_4__* %300, null
  br i1 %301, label %302, label %326

302:                                              ; preds = %297
  %303 = load i8*, i8** @buf, align 8
  %304 = load %struct.TYPE_4__*, %struct.TYPE_4__** %27, align 8
  %305 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %304, i32 0, i32 0
  %306 = load i8*, i8** %305, align 8
  %307 = load %struct.TYPE_4__*, %struct.TYPE_4__** %27, align 8
  %308 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %307, i32 0, i32 1
  %309 = load i32, i32* %308, align 8
  %310 = load %struct.TYPE_4__*, %struct.TYPE_4__** %27, align 8
  %311 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %310, i32 0, i32 2
  %312 = load i32, i32* %311, align 4
  %313 = load %struct.TYPE_4__*, %struct.TYPE_4__** %27, align 8
  %314 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %313, i32 0, i32 3
  %315 = load i32, i32* %314, align 8
  %316 = load %struct.TYPE_4__*, %struct.TYPE_4__** %27, align 8
  %317 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %316, i32 0, i32 4
  %318 = load i32, i32* %317, align 4
  %319 = call i32 (i8*, i8*, ...) @sprintf(i8* %303, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.12, i64 0, i64 0), i8* %306, i32 %309, i32 %312, i32 %315, i32 %318)
  %320 = load %struct.connection*, %struct.connection** %5, align 8
  %321 = load i8*, i8** %6, align 8
  %322 = load i8*, i8** @buf, align 8
  %323 = load i8*, i8** @buf, align 8
  %324 = call i32 @strlen(i8* %323)
  %325 = call i32 @return_one_key(%struct.connection* %320, i8* %321, i8* %322, i32 %324)
  br label %326

326:                                              ; preds = %302, %297
  br label %327

327:                                              ; preds = %326, %289, %285
  %328 = load i32, i32* @get, align 4
  %329 = call i32 @QRETURN(i32 %328, i32 0)
  br label %330

330:                                              ; preds = %327, %281, %278
  %331 = load i32, i32* %9, align 4
  %332 = icmp sge i32 %331, 10
  br i1 %332, label %333, label %392

333:                                              ; preds = %330
  %334 = load i8*, i8** %8, align 8
  %335 = call i32 @strncmp(i8* %334, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.13, i64 0, i64 0), i32 10)
  %336 = icmp ne i32 %335, 0
  br i1 %336, label %392, label %337

337:                                              ; preds = %333
  %338 = load i8*, i8** %8, align 8
  %339 = getelementptr inbounds i8, i8* %338, i64 10
  %340 = load i8, i8* %339, align 1
  %341 = sext i8 %340 to i32
  %342 = icmp eq i32 %341, 40
  br i1 %342, label %343, label %389

343:                                              ; preds = %337
  %344 = load i8*, i8** %8, align 8
  %345 = load i32, i32* %9, align 4
  %346 = sub nsw i32 %345, 1
  %347 = sext i32 %346 to i64
  %348 = getelementptr inbounds i8, i8* %344, i64 %347
  %349 = load i8, i8* %348, align 1
  %350 = sext i8 %349 to i32
  %351 = icmp eq i32 %350, 41
  br i1 %351, label %352, label %389

352:                                              ; preds = %343
  %353 = load i8*, i8** %8, align 8
  %354 = load i32, i32* %9, align 4
  %355 = sub nsw i32 %354, 1
  %356 = sext i32 %355 to i64
  %357 = getelementptr inbounds i8, i8* %353, i64 %356
  store i8 0, i8* %357, align 1
  %358 = load i8*, i8** %8, align 8
  %359 = getelementptr inbounds i8, i8* %358, i64 11
  store i8* %359, i8** %28, align 8
  %360 = load i8*, i8** %28, align 8
  %361 = call %struct.TYPE_4__* @get_queue(i8* %360, i32 0)
  store %struct.TYPE_4__* %361, %struct.TYPE_4__** %29, align 8
  %362 = load %struct.TYPE_4__*, %struct.TYPE_4__** %29, align 8
  %363 = icmp ne %struct.TYPE_4__* %362, null
  br i1 %363, label %364, label %388

364:                                              ; preds = %352
  %365 = load i8*, i8** @buf, align 8
  %366 = load %struct.TYPE_4__*, %struct.TYPE_4__** %29, align 8
  %367 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %366, i32 0, i32 0
  %368 = load i8*, i8** %367, align 8
  %369 = load %struct.TYPE_4__*, %struct.TYPE_4__** %29, align 8
  %370 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %369, i32 0, i32 1
  %371 = load i32, i32* %370, align 8
  %372 = load %struct.TYPE_4__*, %struct.TYPE_4__** %29, align 8
  %373 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %372, i32 0, i32 3
  %374 = load i32, i32* %373, align 8
  %375 = load %struct.TYPE_4__*, %struct.TYPE_4__** %29, align 8
  %376 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %375, i32 0, i32 4
  %377 = load i32, i32* %376, align 4
  %378 = load %struct.TYPE_4__*, %struct.TYPE_4__** %29, align 8
  %379 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %378, i32 0, i32 2
  %380 = load i32, i32* %379, align 4
  %381 = call i32 (i8*, i8*, ...) @sprintf(i8* %365, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.14, i64 0, i64 0), i8* %368, i32 %371, i32 %374, i32 %377, i32 %380)
  %382 = load %struct.connection*, %struct.connection** %5, align 8
  %383 = load i8*, i8** %6, align 8
  %384 = load i8*, i8** @buf, align 8
  %385 = load i8*, i8** @buf, align 8
  %386 = call i32 @strlen(i8* %385)
  %387 = call i32 @return_one_key(%struct.connection* %382, i8* %383, i8* %384, i32 %386)
  br label %388

388:                                              ; preds = %364, %352
  br label %389

389:                                              ; preds = %388, %343, %337
  %390 = load i32, i32* @get, align 4
  %391 = call i32 @QRETURN(i32 %390, i32 0)
  br label %392

392:                                              ; preds = %389, %333, %330
  %393 = load i32, i32* %9, align 4
  %394 = icmp sge i32 %393, 12
  br i1 %394, label %395, label %479

395:                                              ; preds = %392
  %396 = load i8*, i8** %8, align 8
  %397 = call i32 @strncmp(i8* %396, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.15, i64 0, i64 0), i32 12)
  %398 = icmp ne i32 %397, 0
  br i1 %398, label %479, label %399

399:                                              ; preds = %395
  %400 = load i8*, i8** %8, align 8
  %401 = call i32 (i8*, i8*, i32*, ...) @sscanf(i8* %400, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.16, i64 0, i64 0), i32* %30, i64* %33, i32* %31, i32* %32)
  %402 = icmp eq i32 %401, 3
  br i1 %402, label %403, label %476

403:                                              ; preds = %399
  %404 = load i8*, i8** %8, align 8
  %405 = load i32, i32* %32, align 4
  %406 = sext i32 %405 to i64
  %407 = getelementptr inbounds i8, i8* %404, i64 %406
  %408 = load i8, i8* %407, align 1
  %409 = sext i8 %408 to i32
  %410 = icmp eq i32 %409, 40
  br i1 %410, label %411, label %476

411:                                              ; preds = %403
  %412 = load i8*, i8** %8, align 8
  %413 = load i32, i32* %9, align 4
  %414 = sub nsw i32 %413, 1
  %415 = sext i32 %414 to i64
  %416 = getelementptr inbounds i8, i8* %412, i64 %415
  %417 = load i8, i8* %416, align 1
  %418 = sext i8 %417 to i32
  %419 = icmp eq i32 %418, 41
  br i1 %419, label %420, label %476

420:                                              ; preds = %411
  %421 = load i32, i32* %9, align 4
  %422 = load i32, i32* %32, align 4
  %423 = sub nsw i32 %421, %422
  %424 = sub nsw i32 %423, 2
  %425 = load i32, i32* @STATS_BUFF_SIZE, align 4
  %426 = icmp slt i32 %424, %425
  br i1 %426, label %427, label %476

427:                                              ; preds = %420
  %428 = load i8*, i8** @stats_buff, align 8
  store i8* %428, i8** %34, align 8
  %429 = load i32, i32* %9, align 4
  %430 = load i32, i32* %32, align 4
  %431 = sub nsw i32 %429, %430
  %432 = sub nsw i32 %431, 2
  store i32 %432, i32* %35, align 4
  %433 = load i8*, i8** %34, align 8
  %434 = load i8*, i8** %8, align 8
  %435 = load i32, i32* %32, align 4
  %436 = sext i32 %435 to i64
  %437 = getelementptr inbounds i8, i8* %434, i64 %436
  %438 = getelementptr inbounds i8, i8* %437, i64 1
  %439 = load i32, i32* %35, align 4
  %440 = call i32 @memcpy(i8* %433, i8* %438, i32 %439)
  %441 = load i8*, i8** %34, align 8
  %442 = load i32, i32* %35, align 4
  %443 = sext i32 %442 to i64
  %444 = getelementptr inbounds i8, i8* %441, i64 %443
  store i8 0, i8* %444, align 1
  %445 = load i8*, i8** %34, align 8
  store i8* %445, i8** %36, align 8
  br label %446

446:                                              ; preds = %457, %427
  %447 = load i8*, i8** %36, align 8
  %448 = load i8, i8* %447, align 1
  %449 = icmp ne i8 %448, 0
  br i1 %449, label %450, label %460

450:                                              ; preds = %446
  %451 = load i8*, i8** %36, align 8
  %452 = load i8, i8* %451, align 1
  %453 = sext i8 %452 to i32
  %454 = icmp eq i32 %453, 63
  br i1 %454, label %455, label %457

455:                                              ; preds = %450
  %456 = load i8*, i8** %36, align 8
  store i8 31, i8* %456, align 1
  br label %457

457:                                              ; preds = %455, %450
  %458 = load i8*, i8** %36, align 8
  %459 = getelementptr inbounds i8, i8* %458, i32 1
  store i8* %459, i8** %36, align 8
  br label %446

460:                                              ; preds = %446
  %461 = load i8*, i8** %34, align 8
  %462 = load i32, i32* %30, align 4
  %463 = load i64, i64* %33, align 8
  %464 = load i32, i32* %31, align 4
  %465 = call i8* @get_watchcat_key(i8* %461, i32 %462, i64 %463, i32 %464)
  store i8* %465, i8** %34, align 8
  %466 = load i8*, i8** %34, align 8
  %467 = icmp ne i8* %466, null
  br i1 %467, label %468, label %475

468:                                              ; preds = %460
  %469 = load %struct.connection*, %struct.connection** %5, align 8
  %470 = load i8*, i8** %6, align 8
  %471 = load i8*, i8** %34, align 8
  %472 = load i8*, i8** %34, align 8
  %473 = call i32 @strlen(i8* %472)
  %474 = call i32 @return_one_key(%struct.connection* %469, i8* %470, i8* %471, i32 %473)
  br label %475

475:                                              ; preds = %468, %460
  br label %476

476:                                              ; preds = %475, %420, %411, %403, %399
  %477 = load i32, i32* @get, align 4
  %478 = call i32 @QRETURN(i32 %477, i32 0)
  br label %479

479:                                              ; preds = %476, %395, %392
  %480 = load i32, i32* %9, align 4
  %481 = icmp sge i32 %480, 8
  br i1 %481, label %482, label %514

482:                                              ; preds = %479
  %483 = load i8*, i8** %8, align 8
  %484 = call i32 @strncmp(i8* %483, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.17, i64 0, i64 0), i32 8)
  %485 = icmp ne i32 %484, 0
  br i1 %485, label %514, label %486

486:                                              ; preds = %482
  %487 = load i8*, i8** %8, align 8
  %488 = call i32 (i8*, i8*, i32*, ...) @sscanf(i8* %487, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.18, i64 0, i64 0), i32* %37, i64* %39, i32* %38, i32* %40)
  %489 = icmp eq i32 %488, 4
  br i1 %489, label %490, label %511

490:                                              ; preds = %486
  %491 = load i32, i32* @LOG_HISTORY, align 4
  %492 = load i32, i32* %40, align 4
  %493 = load i32, i32* %37, align 4
  %494 = load i64, i64* %39, align 8
  %495 = call i32 (i32, i32, i8*, ...) @dl_log_add(i32 %491, i32 1, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.19, i64 0, i64 0), i32 %492, i32 %493, i64 %494)
  %496 = load i32, i32* %37, align 4
  %497 = load i64, i64* %39, align 8
  %498 = load i32, i32* %38, align 4
  %499 = load i32, i32* %40, align 4
  %500 = call i8* @get_news_key(i32 %496, i64 %497, i32 %498, i32 %499)
  store i8* %500, i8** %41, align 8
  %501 = load i8*, i8** %41, align 8
  %502 = icmp ne i8* %501, null
  br i1 %502, label %503, label %510

503:                                              ; preds = %490
  %504 = load %struct.connection*, %struct.connection** %5, align 8
  %505 = load i8*, i8** %6, align 8
  %506 = load i8*, i8** %41, align 8
  %507 = load i8*, i8** %41, align 8
  %508 = call i32 @strlen(i8* %507)
  %509 = call i32 @return_one_key(%struct.connection* %504, i8* %505, i8* %506, i32 %508)
  br label %510

510:                                              ; preds = %503, %490
  br label %511

511:                                              ; preds = %510, %486
  %512 = load i32, i32* @get, align 4
  %513 = call i32 @QRETURN(i32 %512, i32 0)
  br label %514

514:                                              ; preds = %511, %482, %479
  %515 = load i32, i32* %9, align 4
  %516 = icmp sge i32 %515, 5
  br i1 %516, label %517, label %591

517:                                              ; preds = %514
  %518 = load i8*, i8** %8, align 8
  %519 = call i32 @strncmp(i8* %518, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.20, i64 0, i64 0), i32 5)
  %520 = icmp ne i32 %519, 0
  br i1 %520, label %591, label %521

521:                                              ; preds = %517
  %522 = load i8*, i8** %8, align 8
  %523 = call i32 (i8*, i8*, i32*, ...) @sscanf(i8* %522, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.21, i64 0, i64 0), i32* %42, i64* %45, i32* %43, i32* %44)
  %524 = icmp eq i32 %523, 3
  br i1 %524, label %525, label %588

525:                                              ; preds = %521
  %526 = load i8*, i8** %8, align 8
  %527 = load i32, i32* %44, align 4
  %528 = sext i32 %527 to i64
  %529 = getelementptr inbounds i8, i8* %526, i64 %528
  %530 = load i8, i8* %529, align 1
  %531 = sext i8 %530 to i32
  %532 = icmp eq i32 %531, 40
  br i1 %532, label %533, label %588

533:                                              ; preds = %525
  %534 = load i8*, i8** %8, align 8
  %535 = load i32, i32* %9, align 4
  %536 = sub nsw i32 %535, 1
  %537 = sext i32 %536 to i64
  %538 = getelementptr inbounds i8, i8* %534, i64 %537
  %539 = load i8, i8* %538, align 1
  %540 = sext i8 %539 to i32
  %541 = icmp eq i32 %540, 41
  br i1 %541, label %542, label %588

542:                                              ; preds = %533
  %543 = load i32, i32* %9, align 4
  %544 = load i32, i32* %44, align 4
  %545 = sub nsw i32 %543, %544
  %546 = sub nsw i32 %545, 2
  %547 = load i32, i32* @STATS_BUFF_SIZE, align 4
  %548 = icmp slt i32 %546, %547
  br i1 %548, label %549, label %588

549:                                              ; preds = %542
  %550 = load i8*, i8** @stats_buff, align 8
  store i8* %550, i8** %46, align 8
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.22, i64 0, i64 0), i8** %47, align 8
  %551 = load i32, i32* %9, align 4
  %552 = load i32, i32* %44, align 4
  %553 = sub nsw i32 %551, %552
  %554 = sub nsw i32 %553, 2
  store i32 %554, i32* %48, align 4
  %555 = load i32, i32* %48, align 4
  %556 = load i32, i32* @KEY_LEN, align 4
  %557 = icmp eq i32 %555, %556
  br i1 %557, label %558, label %581

558:                                              ; preds = %549
  %559 = load i8*, i8** %46, align 8
  %560 = load i8*, i8** %8, align 8
  %561 = load i32, i32* %44, align 4
  %562 = sext i32 %561 to i64
  %563 = getelementptr inbounds i8, i8* %560, i64 %562
  %564 = getelementptr inbounds i8, i8* %563, i64 1
  %565 = load i32, i32* %48, align 4
  %566 = call i32 @memcpy(i8* %559, i8* %564, i32 %565)
  %567 = load i8*, i8** %46, align 8
  %568 = load i32, i32* %48, align 4
  %569 = sext i32 %568 to i64
  %570 = getelementptr inbounds i8, i8* %567, i64 %569
  store i8 0, i8* %570, align 1
  %571 = load i8*, i8** %46, align 8
  %572 = load i32, i32* %42, align 4
  %573 = load i64, i64* %45, align 8
  %574 = load i32, i32* %43, align 4
  %575 = call i32* @validate_key(i8* %571, i32 %572, i64 %573, i32 %574, i32 0, i8* %50)
  store i32* %575, i32** %49, align 8
  %576 = icmp ne i32* %575, null
  br i1 %576, label %577, label %580

577:                                              ; preds = %558
  %578 = load i32*, i32** %49, align 8
  %579 = call i8* @get_events_http(i32* %578)
  store i8* %579, i8** %47, align 8
  br label %580

580:                                              ; preds = %577, %558
  br label %581

581:                                              ; preds = %580, %549
  %582 = load %struct.connection*, %struct.connection** %5, align 8
  %583 = load i8*, i8** %6, align 8
  %584 = load i8*, i8** %47, align 8
  %585 = load i8*, i8** %47, align 8
  %586 = call i32 @strlen(i8* %585)
  %587 = call i32 @return_one_key(%struct.connection* %582, i8* %583, i8* %584, i32 %586)
  br label %588

588:                                              ; preds = %581, %542, %533, %525, %521
  %589 = load i32, i32* @get, align 4
  %590 = call i32 @QRETURN(i32 %589, i32 0)
  br label %591

591:                                              ; preds = %588, %517, %514
  %592 = load i32, i32* %9, align 4
  %593 = icmp sge i32 %592, 10
  br i1 %593, label %594, label %611

594:                                              ; preds = %591
  %595 = load i8*, i8** %8, align 8
  %596 = call i32 @strncmp(i8* %595, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.23, i64 0, i64 0), i32 10)
  %597 = icmp ne i32 %596, 0
  br i1 %597, label %611, label %598

598:                                              ; preds = %594
  %599 = load i8*, i8** %8, align 8
  %600 = call i32 (i8*, i8*, i32*, ...) @sscanf(i8* %599, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.24, i64 0, i64 0), i32* %51)
  %601 = icmp eq i32 %600, 1
  br i1 %601, label %602, label %605

602:                                              ; preds = %598
  %603 = load i32, i32* %51, align 4
  %604 = call i32 @upd_secret(i32 %603)
  br label %605

605:                                              ; preds = %602, %598
  %606 = load %struct.connection*, %struct.connection** %5, align 8
  %607 = load i8*, i8** %6, align 8
  %608 = call i32 @return_one_key(%struct.connection* %606, i8* %607, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.25, i64 0, i64 0), i32 2)
  %609 = load i32, i32* @get, align 4
  %610 = call i32 @QRETURN(i32 %609, i32 0)
  br label %611

611:                                              ; preds = %605, %594, %591
  %612 = load i32, i32* @get, align 4
  %613 = call i32 @QRETURN(i32 %612, i32 0)
  br label %614

614:                                              ; preds = %611, %79
  %615 = load i32, i32* %4, align 4
  ret i32 %615
}

declare dso_local i32 @fprintf(i32, i8*, i8*, i32) #1

declare dso_local i32 @dl_log_add(i32, i32, i8*, ...) #1

declare dso_local i32 @sprintf(i8*, i8*, ...) #1

declare dso_local i32 @eat_at(i8*, i32, i8**, i32*) #1

declare dso_local i32 @strncmp(i8*, i8*, i32) #1

declare dso_local i32 @queue_prepare_stats(...) #1

declare dso_local i32 @prepare_stats(%struct.connection*, i8*, i32) #1

declare dso_local i32 @return_one_key(%struct.connection*, i8*, i8*, i32) #1

declare dso_local double @mytime(...) #1

declare dso_local i32 @sscanf(i8*, i8*, i32*, ...) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i8* @get_timestamp_key(i8*, i32, i64, i32, i32*, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @QRETURN(i32, i32) #1

declare dso_local i32 @get_queue_news_alias(i32, i32*) #1

declare dso_local i32 @get_queue_alias(i8*, i32*) #1

declare dso_local %struct.TYPE_4__* @get_queue_by_alias(i32) #1

declare dso_local %struct.TYPE_4__* @get_queue(i8*, i32) #1

declare dso_local i8* @get_watchcat_key(i8*, i32, i64, i32) #1

declare dso_local i8* @get_news_key(i32, i64, i32, i32) #1

declare dso_local i32* @validate_key(i8*, i32, i64, i32, i32, i8*) #1

declare dso_local i8* @get_events_http(i32*) #1

declare dso_local i32 @upd_secret(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
