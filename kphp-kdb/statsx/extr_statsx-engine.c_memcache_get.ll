; ModuleID = '/home/carl/AnghaBench/kphp-kdb/statsx/extr_statsx-engine.c_memcache_get.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/statsx/extr_statsx-engine.c_memcache_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.connection = type { i32 }
%struct.counter = type opaque

@verbosity = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"memcache_get (key = \22\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"\22)\0A\00", align 1
@Q_raw = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [6 x i8] c"views\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"get\00", align 1
@.str.4 = private unnamed_addr constant [32 x i8] c"couldn't parse count_id&version\00", align 1
@stats_buff = common dso_local global i8* null, align 8
@.str.5 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"visitors\00", align 1
@.str.7 = private unnamed_addr constant [15 x i8] c"enable_counter\00", align 1
@.str.8 = private unnamed_addr constant [16 x i8] c"disable_counter\00", align 1
@.str.9 = private unnamed_addr constant [13 x i8] c"set_timezone\00", align 1
@.str.10 = private unnamed_addr constant [8 x i8] c"%lld#%d\00", align 1
@.str.11 = private unnamed_addr constant [9 x i8] c"timezone\00", align 1
@.str.12 = private unnamed_addr constant [5 x i8] c"%lld\00", align 1
@.str.13 = private unnamed_addr constant [8 x i8] c"counter\00", align 1
@.str.14 = private unnamed_addr constant [15 x i8] c"counter%lld@%d\00", align 1
@.str.15 = private unnamed_addr constant [25 x i8] c"cnt_id = %lld, ver = %d\0A\00", align 1
@.str.16 = private unnamed_addr constant [16 x i8] c"VALUE %s 1 %d\0D\0A\00", align 1
@.str.17 = private unnamed_addr constant [16 x i8] c"VALUE %s 0 %d\0D\0A\00", align 1
@.str.18 = private unnamed_addr constant [3 x i8] c"\0D\0A\00", align 1
@.str.19 = private unnamed_addr constant [17 x i8] c"monthly_visitors\00", align 1
@.str.20 = private unnamed_addr constant [21 x i8] c"monthly_visitors%lld\00", align 1
@.str.21 = private unnamed_addr constant [14 x i8] c"monthly_views\00", align 1
@.str.22 = private unnamed_addr constant [18 x i8] c"monthly_views%lld\00", align 1
@.str.23 = private unnamed_addr constant [13 x i8] c"counters_sum\00", align 1
@.str.24 = private unnamed_addr constant [21 x i8] c"counters_sum%d_%d_%d\00", align 1
@.str.25 = private unnamed_addr constant [9 x i8] c"versions\00", align 1
@.str.26 = private unnamed_addr constant [17 x i8] c"free_block_stats\00", align 1
@MAX_RECORD_WORDS = common dso_local global i32 0, align 4
@FreeCnt = common dso_local global i32 0, align 4
@.str.27 = private unnamed_addr constant [17 x i8] c"used_block_stats\00", align 1
@UsedCnt = common dso_local global i32 0, align 4
@.str.28 = private unnamed_addr constant [17 x i8] c"allocation_stats\00", align 1
@NewAllocations = common dso_local global i32* null, align 8
@.str.29 = private unnamed_addr constant [18 x i8] c"split_block_stats\00", align 1
@SplitBlocks = common dso_local global i32 0, align 4
@.str.30 = private unnamed_addr constant [6 x i8] c"stats\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @memcache_get(%struct.connection* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.connection*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca %struct.counter*, align 8
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  store %struct.connection* %0, %struct.connection** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %32 = load i32, i32* @verbosity, align 4
  %33 = icmp sge i32 %32, 4
  br i1 %33, label %34, label %42

34:                                               ; preds = %3
  %35 = load i32, i32* @stderr, align 4
  %36 = call i32 (i32, i8*, ...) @fprintf(i32 %35, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %37 = load i8*, i8** %6, align 8
  %38 = load i32, i32* %7, align 4
  %39 = call i32 @debug_key(i8* %37, i32 %38)
  %40 = load i32, i32* @stderr, align 4
  %41 = call i32 (i32, i8*, ...) @fprintf(i32 %40, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  br label %42

42:                                               ; preds = %34, %3
  %43 = load i8*, i8** %6, align 8
  %44 = load i32, i32* %7, align 4
  %45 = call i32 @get_at_prefix_length(i8* %43, i32 %44)
  store i32 %45, i32* %10, align 4
  %46 = load i32, i32* %10, align 4
  %47 = load i8*, i8** %6, align 8
  %48 = sext i32 %46 to i64
  %49 = getelementptr inbounds i8, i8* %47, i64 %48
  store i8* %49, i8** %6, align 8
  %50 = load i32, i32* %10, align 4
  %51 = load i32, i32* %7, align 4
  %52 = sub nsw i32 %51, %50
  store i32 %52, i32* %7, align 4
  store i32 0, i32* @Q_raw, align 4
  %53 = load i32, i32* %7, align 4
  %54 = icmp sgt i32 %53, 0
  br i1 %54, label %55, label %67

55:                                               ; preds = %42
  %56 = load i8*, i8** %6, align 8
  %57 = load i8, i8* %56, align 1
  %58 = sext i8 %57 to i32
  %59 = icmp eq i32 %58, 37
  br i1 %59, label %60, label %67

60:                                               ; preds = %55
  %61 = load i32, i32* %10, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %10, align 4
  %63 = load i8*, i8** %6, align 8
  %64 = getelementptr inbounds i8, i8* %63, i32 1
  store i8* %64, i8** %6, align 8
  %65 = load i32, i32* %7, align 4
  %66 = add nsw i32 %65, -1
  store i32 %66, i32* %7, align 4
  store i32 1, i32* @Q_raw, align 4
  br label %67

67:                                               ; preds = %60, %55, %42
  %68 = load i32, i32* %7, align 4
  %69 = icmp sgt i32 %68, 5
  br i1 %69, label %70, label %134

70:                                               ; preds = %67
  %71 = load i8*, i8** %6, align 8
  %72 = call i32 @strncmp(i8* %71, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i32 5)
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %134, label %74

74:                                               ; preds = %70
  %75 = load i8*, i8** %6, align 8
  %76 = getelementptr inbounds i8, i8* %75, i64 5
  %77 = call i32 @parse_countid_with_version(i8* %76, i64* %9, i32* %11)
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %85, label %79

79:                                               ; preds = %74
  %80 = load i8*, i8** %6, align 8
  %81 = load i32, i32* %7, align 4
  %82 = call i32 @debug_error(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i64 0, i64 0), i8* %80, i32 %81)
  %83 = load %struct.connection*, %struct.connection** %5, align 8
  %84 = call i32 @not_found(%struct.connection* %83)
  store i32 %84, i32* %4, align 4
  br label %830

85:                                               ; preds = %74
  %86 = load i32, i32* %11, align 4
  %87 = icmp eq i32 %86, -1
  br i1 %87, label %88, label %91

88:                                               ; preds = %85
  %89 = load i64, i64* %9, align 8
  %90 = call i32 @get_counter_views(i64 %89)
  br label %95

91:                                               ; preds = %85
  %92 = load i64, i64* %9, align 8
  %93 = load i32, i32* %11, align 4
  %94 = call i32 @get_counter_views_given_version(i64 %92, i32 %93)
  br label %95

95:                                               ; preds = %91, %88
  %96 = phi i32 [ %90, %88 ], [ %94, %91 ]
  store i32 %96, i32* %12, align 4
  %97 = load i32, i32* %12, align 4
  %98 = icmp eq i32 %97, -2
  br i1 %98, label %99, label %102

99:                                               ; preds = %95
  %100 = load %struct.connection*, %struct.connection** %5, align 8
  %101 = call i32 @memcache_wait(%struct.connection* %100)
  store i32 %101, i32* %4, align 4
  br label %830

102:                                              ; preds = %95
  %103 = load i32, i32* %12, align 4
  %104 = icmp sge i32 %103, 0
  br i1 %104, label %105, label %133

105:                                              ; preds = %102
  %106 = load i32, i32* @Q_raw, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %120, label %108

108:                                              ; preds = %105
  %109 = load %struct.connection*, %struct.connection** %5, align 8
  %110 = load i8*, i8** %6, align 8
  %111 = load i32, i32* %10, align 4
  %112 = sext i32 %111 to i64
  %113 = sub i64 0, %112
  %114 = getelementptr inbounds i8, i8* %110, i64 %113
  %115 = load i8*, i8** @stats_buff, align 8
  %116 = load i8*, i8** @stats_buff, align 8
  %117 = load i32, i32* %12, align 4
  %118 = call i32 (i8*, i8*, ...) @sprintf(i8* %116, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0), i32 %117)
  %119 = call i32 @return_one_key(%struct.connection* %109, i8* %114, i8* %115, i32 %118)
  br label %132

120:                                              ; preds = %105
  %121 = load i32, i32* %12, align 4
  %122 = load i8*, i8** @stats_buff, align 8
  %123 = bitcast i8* %122 to i32*
  store i32 %121, i32* %123, align 4
  %124 = load %struct.connection*, %struct.connection** %5, align 8
  %125 = load i8*, i8** %6, align 8
  %126 = load i32, i32* %10, align 4
  %127 = sext i32 %126 to i64
  %128 = sub i64 0, %127
  %129 = getelementptr inbounds i8, i8* %125, i64 %128
  %130 = load i8*, i8** @stats_buff, align 8
  %131 = call i32 @return_one_key(%struct.connection* %124, i8* %129, i8* %130, i32 4)
  br label %132

132:                                              ; preds = %120, %108
  br label %133

133:                                              ; preds = %132, %102
  store i32 0, i32* %4, align 4
  br label %830

134:                                              ; preds = %70, %67
  %135 = load i32, i32* %7, align 4
  %136 = icmp sgt i32 %135, 8
  br i1 %136, label %137, label %201

137:                                              ; preds = %134
  %138 = load i8*, i8** %6, align 8
  %139 = call i32 @strncmp(i8* %138, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0), i32 8)
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %201, label %141

141:                                              ; preds = %137
  %142 = load i8*, i8** %6, align 8
  %143 = getelementptr inbounds i8, i8* %142, i64 8
  %144 = call i32 @parse_countid_with_version(i8* %143, i64* %9, i32* %13)
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %152, label %146

146:                                              ; preds = %141
  %147 = load i8*, i8** %6, align 8
  %148 = load i32, i32* %7, align 4
  %149 = call i32 @debug_error(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i64 0, i64 0), i8* %147, i32 %148)
  %150 = load %struct.connection*, %struct.connection** %5, align 8
  %151 = call i32 @not_found(%struct.connection* %150)
  store i32 %151, i32* %4, align 4
  br label %830

152:                                              ; preds = %141
  %153 = load i32, i32* %13, align 4
  %154 = icmp eq i32 %153, -1
  br i1 %154, label %155, label %158

155:                                              ; preds = %152
  %156 = load i64, i64* %9, align 8
  %157 = call i32 @get_counter_visitors(i64 %156)
  br label %162

158:                                              ; preds = %152
  %159 = load i64, i64* %9, align 8
  %160 = load i32, i32* %13, align 4
  %161 = call i32 @get_counter_visitors_given_version(i64 %159, i32 %160)
  br label %162

162:                                              ; preds = %158, %155
  %163 = phi i32 [ %157, %155 ], [ %161, %158 ]
  store i32 %163, i32* %14, align 4
  %164 = load i32, i32* %14, align 4
  %165 = icmp eq i32 %164, -2
  br i1 %165, label %166, label %169

166:                                              ; preds = %162
  %167 = load %struct.connection*, %struct.connection** %5, align 8
  %168 = call i32 @memcache_wait(%struct.connection* %167)
  store i32 %168, i32* %4, align 4
  br label %830

169:                                              ; preds = %162
  %170 = load i32, i32* %14, align 4
  %171 = icmp sge i32 %170, 0
  br i1 %171, label %172, label %200

172:                                              ; preds = %169
  %173 = load i32, i32* @Q_raw, align 4
  %174 = icmp ne i32 %173, 0
  br i1 %174, label %187, label %175

175:                                              ; preds = %172
  %176 = load %struct.connection*, %struct.connection** %5, align 8
  %177 = load i8*, i8** %6, align 8
  %178 = load i32, i32* %10, align 4
  %179 = sext i32 %178 to i64
  %180 = sub i64 0, %179
  %181 = getelementptr inbounds i8, i8* %177, i64 %180
  %182 = load i8*, i8** @stats_buff, align 8
  %183 = load i8*, i8** @stats_buff, align 8
  %184 = load i32, i32* %14, align 4
  %185 = call i32 (i8*, i8*, ...) @sprintf(i8* %183, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0), i32 %184)
  %186 = call i32 @return_one_key(%struct.connection* %176, i8* %181, i8* %182, i32 %185)
  br label %199

187:                                              ; preds = %172
  %188 = load i32, i32* %14, align 4
  %189 = load i8*, i8** @stats_buff, align 8
  %190 = bitcast i8* %189 to i32*
  store i32 %188, i32* %190, align 4
  %191 = load %struct.connection*, %struct.connection** %5, align 8
  %192 = load i8*, i8** %6, align 8
  %193 = load i32, i32* %10, align 4
  %194 = sext i32 %193 to i64
  %195 = sub i64 0, %194
  %196 = getelementptr inbounds i8, i8* %192, i64 %195
  %197 = load i8*, i8** @stats_buff, align 8
  %198 = call i32 @return_one_key(%struct.connection* %191, i8* %196, i8* %197, i32 4)
  br label %199

199:                                              ; preds = %187, %175
  br label %200

200:                                              ; preds = %199, %169
  store i32 0, i32* %4, align 4
  br label %830

201:                                              ; preds = %137, %134
  %202 = load i32, i32* %7, align 4
  %203 = icmp sgt i32 %202, 14
  br i1 %203, label %204, label %255

204:                                              ; preds = %201
  %205 = load i8*, i8** %6, align 8
  %206 = call i32 @strncmp(i8* %205, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.7, i64 0, i64 0), i32 14)
  %207 = icmp ne i32 %206, 0
  br i1 %207, label %255, label %208

208:                                              ; preds = %204
  %209 = load i8*, i8** %6, align 8
  %210 = getelementptr inbounds i8, i8* %209, i64 14
  %211 = call i64 @strtoll(i8* %210, i8** %8, i32 10)
  store i64 %211, i64* %9, align 8
  %212 = load i8*, i8** %8, align 8
  %213 = load i8*, i8** %6, align 8
  %214 = getelementptr inbounds i8, i8* %213, i64 14
  %215 = icmp ugt i8* %212, %214
  br i1 %215, label %216, label %254

216:                                              ; preds = %208
  %217 = load i8*, i8** %8, align 8
  %218 = load i8, i8* %217, align 1
  %219 = icmp ne i8 %218, 0
  br i1 %219, label %254, label %220

220:                                              ; preds = %216
  %221 = load i64, i64* %9, align 8
  %222 = call i32 @enable_counter(i64 %221, i32 0)
  store i32 %222, i32* %15, align 4
  %223 = load i32, i32* %15, align 4
  %224 = icmp sge i32 %223, 0
  br i1 %224, label %225, label %253

225:                                              ; preds = %220
  %226 = load i32, i32* @Q_raw, align 4
  %227 = icmp ne i32 %226, 0
  br i1 %227, label %240, label %228

228:                                              ; preds = %225
  %229 = load %struct.connection*, %struct.connection** %5, align 8
  %230 = load i8*, i8** %6, align 8
  %231 = load i32, i32* %10, align 4
  %232 = sext i32 %231 to i64
  %233 = sub i64 0, %232
  %234 = getelementptr inbounds i8, i8* %230, i64 %233
  %235 = load i8*, i8** @stats_buff, align 8
  %236 = load i8*, i8** @stats_buff, align 8
  %237 = load i32, i32* %15, align 4
  %238 = call i32 (i8*, i8*, ...) @sprintf(i8* %236, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0), i32 %237)
  %239 = call i32 @return_one_key(%struct.connection* %229, i8* %234, i8* %235, i32 %238)
  br label %252

240:                                              ; preds = %225
  %241 = load i32, i32* %15, align 4
  %242 = load i8*, i8** @stats_buff, align 8
  %243 = bitcast i8* %242 to i32*
  store i32 %241, i32* %243, align 4
  %244 = load %struct.connection*, %struct.connection** %5, align 8
  %245 = load i8*, i8** %6, align 8
  %246 = load i32, i32* %10, align 4
  %247 = sext i32 %246 to i64
  %248 = sub i64 0, %247
  %249 = getelementptr inbounds i8, i8* %245, i64 %248
  %250 = load i8*, i8** @stats_buff, align 8
  %251 = call i32 @return_one_key(%struct.connection* %244, i8* %249, i8* %250, i32 4)
  br label %252

252:                                              ; preds = %240, %228
  br label %253

253:                                              ; preds = %252, %220
  store i32 0, i32* %4, align 4
  br label %830

254:                                              ; preds = %216, %208
  br label %255

255:                                              ; preds = %254, %204, %201
  %256 = load i32, i32* %7, align 4
  %257 = icmp sgt i32 %256, 15
  br i1 %257, label %258, label %305

258:                                              ; preds = %255
  %259 = load i8*, i8** %6, align 8
  %260 = call i32 @strncmp(i8* %259, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.8, i64 0, i64 0), i32 15)
  %261 = icmp ne i32 %260, 0
  br i1 %261, label %305, label %262

262:                                              ; preds = %258
  %263 = load i8*, i8** %6, align 8
  %264 = getelementptr inbounds i8, i8* %263, i64 15
  %265 = call i64 @strtoll(i8* %264, i8** %8, i32 10)
  store i64 %265, i64* %9, align 8
  %266 = load i8*, i8** %8, align 8
  %267 = load i8*, i8** %6, align 8
  %268 = getelementptr inbounds i8, i8* %267, i64 15
  %269 = icmp ugt i8* %266, %268
  br i1 %269, label %270, label %304

270:                                              ; preds = %262
  %271 = load i8*, i8** %8, align 8
  %272 = load i8, i8* %271, align 1
  %273 = icmp ne i8 %272, 0
  br i1 %273, label %304, label %274

274:                                              ; preds = %270
  %275 = load i64, i64* %9, align 8
  %276 = call i32 @disable_counter(i64 %275, i32 0)
  store i32 %276, i32* %16, align 4
  %277 = load i32, i32* @Q_raw, align 4
  %278 = icmp ne i32 %277, 0
  br i1 %278, label %291, label %279

279:                                              ; preds = %274
  %280 = load %struct.connection*, %struct.connection** %5, align 8
  %281 = load i8*, i8** %6, align 8
  %282 = load i32, i32* %10, align 4
  %283 = sext i32 %282 to i64
  %284 = sub i64 0, %283
  %285 = getelementptr inbounds i8, i8* %281, i64 %284
  %286 = load i8*, i8** @stats_buff, align 8
  %287 = load i8*, i8** @stats_buff, align 8
  %288 = load i32, i32* %16, align 4
  %289 = call i32 (i8*, i8*, ...) @sprintf(i8* %287, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0), i32 %288)
  %290 = call i32 @return_one_key(%struct.connection* %280, i8* %285, i8* %286, i32 %289)
  br label %303

291:                                              ; preds = %274
  %292 = load i32, i32* %16, align 4
  %293 = load i8*, i8** @stats_buff, align 8
  %294 = bitcast i8* %293 to i32*
  store i32 %292, i32* %294, align 4
  %295 = load %struct.connection*, %struct.connection** %5, align 8
  %296 = load i8*, i8** %6, align 8
  %297 = load i32, i32* %10, align 4
  %298 = sext i32 %297 to i64
  %299 = sub i64 0, %298
  %300 = getelementptr inbounds i8, i8* %296, i64 %299
  %301 = load i8*, i8** @stats_buff, align 8
  %302 = call i32 @return_one_key(%struct.connection* %295, i8* %300, i8* %301, i32 4)
  br label %303

303:                                              ; preds = %291, %279
  store i32 0, i32* %4, align 4
  br label %830

304:                                              ; preds = %270, %262
  br label %305

305:                                              ; preds = %304, %258, %255
  %306 = load i32, i32* %7, align 4
  %307 = icmp sgt i32 %306, 12
  br i1 %307, label %308, label %356

308:                                              ; preds = %305
  %309 = load i8*, i8** %6, align 8
  %310 = call i32 @strncmp(i8* %309, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.9, i64 0, i64 0), i32 12)
  %311 = icmp ne i32 %310, 0
  br i1 %311, label %356, label %312

312:                                              ; preds = %308
  store i32 0, i32* %17, align 4
  %313 = load i8*, i8** %6, align 8
  %314 = getelementptr inbounds i8, i8* %313, i64 12
  %315 = call i32 (i8*, i8*, ...) @sscanf(i8* %314, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.10, i64 0, i64 0), i64* %9, i32* %17)
  %316 = icmp eq i32 2, %315
  br i1 %316, label %317, label %355

317:                                              ; preds = %312
  %318 = load i32, i32* %17, align 4
  %319 = add nsw i32 %318, 12
  %320 = add nsw i32 %319, 4
  store i32 %320, i32* %17, align 4
  %321 = load i32, i32* %17, align 4
  %322 = icmp slt i32 %321, 0
  br i1 %322, label %323, label %324

323:                                              ; preds = %317
  store i32 0, i32* %4, align 4
  br label %830

324:                                              ; preds = %317
  %325 = load i64, i64* %9, align 8
  %326 = load i32, i32* %17, align 4
  %327 = call i32 @set_timezone(i64 %325, i32 %326, i32 0)
  store i32 %327, i32* %18, align 4
  %328 = load i32, i32* @Q_raw, align 4
  %329 = icmp ne i32 %328, 0
  br i1 %329, label %342, label %330

330:                                              ; preds = %324
  %331 = load %struct.connection*, %struct.connection** %5, align 8
  %332 = load i8*, i8** %6, align 8
  %333 = load i32, i32* %10, align 4
  %334 = sext i32 %333 to i64
  %335 = sub i64 0, %334
  %336 = getelementptr inbounds i8, i8* %332, i64 %335
  %337 = load i8*, i8** @stats_buff, align 8
  %338 = load i8*, i8** @stats_buff, align 8
  %339 = load i32, i32* %18, align 4
  %340 = call i32 (i8*, i8*, ...) @sprintf(i8* %338, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0), i32 %339)
  %341 = call i32 @return_one_key(%struct.connection* %331, i8* %336, i8* %337, i32 %340)
  br label %354

342:                                              ; preds = %324
  %343 = load i32, i32* %18, align 4
  %344 = load i8*, i8** @stats_buff, align 8
  %345 = bitcast i8* %344 to i32*
  store i32 %343, i32* %345, align 4
  %346 = load %struct.connection*, %struct.connection** %5, align 8
  %347 = load i8*, i8** %6, align 8
  %348 = load i32, i32* %10, align 4
  %349 = sext i32 %348 to i64
  %350 = sub i64 0, %349
  %351 = getelementptr inbounds i8, i8* %347, i64 %350
  %352 = load i8*, i8** @stats_buff, align 8
  %353 = call i32 @return_one_key(%struct.connection* %346, i8* %351, i8* %352, i32 4)
  br label %354

354:                                              ; preds = %342, %330
  store i32 0, i32* %4, align 4
  br label %830

355:                                              ; preds = %312
  br label %356

356:                                              ; preds = %355, %308, %305
  %357 = load i32, i32* %7, align 4
  %358 = icmp sgt i32 %357, 8
  br i1 %358, label %359, label %399

359:                                              ; preds = %356
  %360 = load i8*, i8** %6, align 8
  %361 = call i32 @strncmp(i8* %360, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.11, i64 0, i64 0), i32 8)
  %362 = icmp ne i32 %361, 0
  br i1 %362, label %399, label %363

363:                                              ; preds = %359
  %364 = load i8*, i8** %6, align 8
  %365 = getelementptr inbounds i8, i8* %364, i64 8
  %366 = call i32 (i8*, i8*, ...) @sscanf(i8* %365, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i64 0, i64 0), i64* %9)
  %367 = icmp eq i32 1, %366
  br i1 %367, label %368, label %398

368:                                              ; preds = %363
  %369 = load i64, i64* %9, align 8
  %370 = call i32 @get_timezone(i64 %369)
  store i32 %370, i32* %19, align 4
  %371 = load i32, i32* @Q_raw, align 4
  %372 = icmp ne i32 %371, 0
  br i1 %372, label %385, label %373

373:                                              ; preds = %368
  %374 = load %struct.connection*, %struct.connection** %5, align 8
  %375 = load i8*, i8** %6, align 8
  %376 = load i32, i32* %10, align 4
  %377 = sext i32 %376 to i64
  %378 = sub i64 0, %377
  %379 = getelementptr inbounds i8, i8* %375, i64 %378
  %380 = load i8*, i8** @stats_buff, align 8
  %381 = load i8*, i8** @stats_buff, align 8
  %382 = load i32, i32* %19, align 4
  %383 = call i32 (i8*, i8*, ...) @sprintf(i8* %381, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0), i32 %382)
  %384 = call i32 @return_one_key(%struct.connection* %374, i8* %379, i8* %380, i32 %383)
  br label %397

385:                                              ; preds = %368
  %386 = load i32, i32* %19, align 4
  %387 = load i8*, i8** @stats_buff, align 8
  %388 = bitcast i8* %387 to i32*
  store i32 %386, i32* %388, align 4
  %389 = load %struct.connection*, %struct.connection** %5, align 8
  %390 = load i8*, i8** %6, align 8
  %391 = load i32, i32* %10, align 4
  %392 = sext i32 %391 to i64
  %393 = sub i64 0, %392
  %394 = getelementptr inbounds i8, i8* %390, i64 %393
  %395 = load i8*, i8** @stats_buff, align 8
  %396 = call i32 @return_one_key(%struct.connection* %389, i8* %394, i8* %395, i32 4)
  br label %397

397:                                              ; preds = %385, %373
  store i32 0, i32* %4, align 4
  br label %830

398:                                              ; preds = %363
  br label %399

399:                                              ; preds = %398, %359, %356
  %400 = load i32, i32* %7, align 4
  %401 = icmp sgt i32 %400, 7
  br i1 %401, label %402, label %496

402:                                              ; preds = %399
  %403 = load i8*, i8** %6, align 8
  %404 = call i32 @strncmp(i8* %403, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.13, i64 0, i64 0), i32 7)
  %405 = icmp ne i32 %404, 0
  br i1 %405, label %496, label %406

406:                                              ; preds = %402
  store i32 0, i32* %20, align 4
  %407 = load i8*, i8** %6, align 8
  %408 = call i32 (i8*, i8*, ...) @sscanf(i8* %407, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.14, i64 0, i64 0), i64* %9, i32* %20)
  %409 = icmp sge i32 %408, 1
  br i1 %409, label %410, label %495

410:                                              ; preds = %406
  %411 = load i8*, i8** %6, align 8
  %412 = load i8*, i8** %6, align 8
  %413 = call i32 @strlen(i8* %412)
  %414 = sub nsw i32 %413, 1
  %415 = sext i32 %414 to i64
  %416 = getelementptr inbounds i8, i8* %411, i64 %415
  %417 = load i8, i8* %416, align 1
  %418 = sext i8 %417 to i32
  %419 = icmp ne i32 %418, 63
  %420 = zext i1 %419 to i32
  store i32 %420, i32* %21, align 4
  %421 = load i32, i32* @verbosity, align 4
  %422 = icmp sge i32 %421, 4
  br i1 %422, label %423, label %428

423:                                              ; preds = %410
  %424 = load i32, i32* @stderr, align 4
  %425 = load i64, i64* %9, align 8
  %426 = load i32, i32* %20, align 4
  %427 = call i32 (i32, i8*, ...) @fprintf(i32 %424, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.15, i64 0, i64 0), i64 %425, i32 %426)
  br label %428

428:                                              ; preds = %423, %410
  %429 = load i8*, i8** @stats_buff, align 8
  %430 = load i64, i64* %9, align 8
  %431 = load i32, i32* %20, align 4
  %432 = call i32 @get_counter_serialized(i8* %429, i64 %430, i32 %431)
  store i32 %432, i32* %22, align 4
  %433 = load i32, i32* %22, align 4
  %434 = icmp eq i32 %433, -2
  br i1 %434, label %435, label %438

435:                                              ; preds = %428
  %436 = load %struct.connection*, %struct.connection** %5, align 8
  %437 = call i32 @memcache_wait(%struct.connection* %436)
  store i32 %437, i32* %4, align 4
  br label %830

438:                                              ; preds = %428
  %439 = load i32, i32* %22, align 4
  %440 = icmp sgt i32 %439, 0
  br i1 %440, label %441, label %494

441:                                              ; preds = %438
  %442 = load i32, i32* %21, align 4
  %443 = icmp ne i32 %442, 0
  br i1 %443, label %444, label %466

444:                                              ; preds = %441
  %445 = load i32, i32* @Q_raw, align 4
  %446 = icmp ne i32 %445, 0
  br i1 %446, label %466, label %447

447:                                              ; preds = %444
  %448 = load %struct.connection*, %struct.connection** %5, align 8
  %449 = getelementptr inbounds %struct.connection, %struct.connection* %448, i32 0, i32 0
  %450 = load i8*, i8** @stats_buff, align 8
  %451 = load i32, i32* %22, align 4
  %452 = sext i32 %451 to i64
  %453 = getelementptr inbounds i8, i8* %450, i64 %452
  %454 = load i8*, i8** @stats_buff, align 8
  %455 = load i32, i32* %22, align 4
  %456 = sext i32 %455 to i64
  %457 = getelementptr inbounds i8, i8* %454, i64 %456
  %458 = load i8*, i8** %6, align 8
  %459 = load i32, i32* %10, align 4
  %460 = sext i32 %459 to i64
  %461 = sub i64 0, %460
  %462 = getelementptr inbounds i8, i8* %458, i64 %461
  %463 = load i32, i32* %22, align 4
  %464 = call i32 (i8*, i8*, ...) @sprintf(i8* %457, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.16, i64 0, i64 0), i8* %462, i32 %463)
  %465 = call i32 @write_out(i32* %449, i8* %453, i32 %464)
  br label %485

466:                                              ; preds = %444, %441
  %467 = load %struct.connection*, %struct.connection** %5, align 8
  %468 = getelementptr inbounds %struct.connection, %struct.connection* %467, i32 0, i32 0
  %469 = load i8*, i8** @stats_buff, align 8
  %470 = load i32, i32* %22, align 4
  %471 = sext i32 %470 to i64
  %472 = getelementptr inbounds i8, i8* %469, i64 %471
  %473 = load i8*, i8** @stats_buff, align 8
  %474 = load i32, i32* %22, align 4
  %475 = sext i32 %474 to i64
  %476 = getelementptr inbounds i8, i8* %473, i64 %475
  %477 = load i8*, i8** %6, align 8
  %478 = load i32, i32* %10, align 4
  %479 = sext i32 %478 to i64
  %480 = sub i64 0, %479
  %481 = getelementptr inbounds i8, i8* %477, i64 %480
  %482 = load i32, i32* %22, align 4
  %483 = call i32 (i8*, i8*, ...) @sprintf(i8* %476, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.17, i64 0, i64 0), i8* %481, i32 %482)
  %484 = call i32 @write_out(i32* %468, i8* %472, i32 %483)
  br label %485

485:                                              ; preds = %466, %447
  %486 = load %struct.connection*, %struct.connection** %5, align 8
  %487 = getelementptr inbounds %struct.connection, %struct.connection* %486, i32 0, i32 0
  %488 = load i8*, i8** @stats_buff, align 8
  %489 = load i32, i32* %22, align 4
  %490 = call i32 @write_out(i32* %487, i8* %488, i32 %489)
  %491 = load %struct.connection*, %struct.connection** %5, align 8
  %492 = getelementptr inbounds %struct.connection, %struct.connection* %491, i32 0, i32 0
  %493 = call i32 @write_out(i32* %492, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.18, i64 0, i64 0), i32 2)
  br label %494

494:                                              ; preds = %485, %438
  store i32 0, i32* %4, align 4
  br label %830

495:                                              ; preds = %406
  br label %496

496:                                              ; preds = %495, %402, %399
  %497 = load i32, i32* %7, align 4
  %498 = icmp sgt i32 %497, 16
  br i1 %498, label %499, label %531

499:                                              ; preds = %496
  %500 = load i8*, i8** %6, align 8
  %501 = call i32 @strncmp(i8* %500, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.19, i64 0, i64 0), i32 16)
  %502 = icmp ne i32 %501, 0
  br i1 %502, label %531, label %503

503:                                              ; preds = %499
  store i64 0, i64* %9, align 8
  %504 = load i8*, i8** %6, align 8
  %505 = call i32 (i8*, i8*, ...) @sscanf(i8* %504, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.20, i64 0, i64 0), i64* %9)
  %506 = icmp sge i32 %505, 1
  br i1 %506, label %507, label %530

507:                                              ; preds = %503
  %508 = load i8*, i8** @stats_buff, align 8
  %509 = load i64, i64* %9, align 8
  %510 = call i32 @get_monthly_visitors_serialized(i8* %508, i64 %509)
  store i32 %510, i32* %23, align 4
  %511 = load i32, i32* %23, align 4
  %512 = icmp eq i32 %511, -2
  br i1 %512, label %513, label %516

513:                                              ; preds = %507
  %514 = load %struct.connection*, %struct.connection** %5, align 8
  %515 = call i32 @memcache_wait(%struct.connection* %514)
  store i32 %515, i32* %4, align 4
  br label %830

516:                                              ; preds = %507
  %517 = load i32, i32* %23, align 4
  %518 = icmp sge i32 %517, 0
  br i1 %518, label %519, label %529

519:                                              ; preds = %516
  %520 = load %struct.connection*, %struct.connection** %5, align 8
  %521 = load i8*, i8** %6, align 8
  %522 = load i32, i32* %10, align 4
  %523 = sext i32 %522 to i64
  %524 = sub i64 0, %523
  %525 = getelementptr inbounds i8, i8* %521, i64 %524
  %526 = load i8*, i8** @stats_buff, align 8
  %527 = load i32, i32* %23, align 4
  %528 = call i32 @return_one_key(%struct.connection* %520, i8* %525, i8* %526, i32 %527)
  br label %529

529:                                              ; preds = %519, %516
  store i32 0, i32* %4, align 4
  br label %830

530:                                              ; preds = %503
  br label %531

531:                                              ; preds = %530, %499, %496
  %532 = load i32, i32* %7, align 4
  %533 = icmp sgt i32 %532, 13
  br i1 %533, label %534, label %566

534:                                              ; preds = %531
  %535 = load i8*, i8** %6, align 8
  %536 = call i32 @strncmp(i8* %535, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.21, i64 0, i64 0), i32 13)
  %537 = icmp ne i32 %536, 0
  br i1 %537, label %566, label %538

538:                                              ; preds = %534
  store i64 0, i64* %9, align 8
  %539 = load i8*, i8** %6, align 8
  %540 = call i32 (i8*, i8*, ...) @sscanf(i8* %539, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.22, i64 0, i64 0), i64* %9)
  %541 = icmp sge i32 %540, 1
  br i1 %541, label %542, label %565

542:                                              ; preds = %538
  %543 = load i8*, i8** @stats_buff, align 8
  %544 = load i64, i64* %9, align 8
  %545 = call i32 @get_monthly_views_serialized(i8* %543, i64 %544)
  store i32 %545, i32* %24, align 4
  %546 = load i32, i32* %24, align 4
  %547 = icmp eq i32 %546, -2
  br i1 %547, label %548, label %551

548:                                              ; preds = %542
  %549 = load %struct.connection*, %struct.connection** %5, align 8
  %550 = call i32 @memcache_wait(%struct.connection* %549)
  store i32 %550, i32* %4, align 4
  br label %830

551:                                              ; preds = %542
  %552 = load i32, i32* %24, align 4
  %553 = icmp sge i32 %552, 0
  br i1 %553, label %554, label %564

554:                                              ; preds = %551
  %555 = load %struct.connection*, %struct.connection** %5, align 8
  %556 = load i8*, i8** %6, align 8
  %557 = load i32, i32* %10, align 4
  %558 = sext i32 %557 to i64
  %559 = sub i64 0, %558
  %560 = getelementptr inbounds i8, i8* %556, i64 %559
  %561 = load i8*, i8** @stats_buff, align 8
  %562 = load i32, i32* %24, align 4
  %563 = call i32 @return_one_key(%struct.connection* %555, i8* %560, i8* %561, i32 %562)
  br label %564

564:                                              ; preds = %554, %551
  store i32 0, i32* %4, align 4
  br label %830

565:                                              ; preds = %538
  br label %566

566:                                              ; preds = %565, %534, %531
  %567 = load i32, i32* %7, align 4
  %568 = icmp sgt i32 %567, 12
  br i1 %568, label %569, label %664

569:                                              ; preds = %566
  %570 = load i8*, i8** %6, align 8
  %571 = call i32 @strncmp(i8* %570, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.23, i64 0, i64 0), i32 12)
  %572 = icmp ne i32 %571, 0
  br i1 %572, label %664, label %573

573:                                              ; preds = %569
  store i32 0, i32* %25, align 4
  store i32 0, i32* %26, align 4
  store i32 0, i32* %27, align 4
  %574 = load i8*, i8** %6, align 8
  %575 = load i8*, i8** %6, align 8
  %576 = call i32 @strlen(i8* %575)
  %577 = sub nsw i32 %576, 1
  %578 = sext i32 %577 to i64
  %579 = getelementptr inbounds i8, i8* %574, i64 %578
  %580 = load i8, i8* %579, align 1
  %581 = sext i8 %580 to i32
  %582 = icmp ne i32 %581, 63
  %583 = zext i1 %582 to i32
  store i32 %583, i32* %28, align 4
  %584 = load i8*, i8** %6, align 8
  %585 = call i32 (i8*, i8*, ...) @sscanf(i8* %584, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.24, i64 0, i64 0), i32* %27, i32* %25, i32* %26)
  %586 = icmp ne i32 %585, 0
  br i1 %586, label %587, label %663

587:                                              ; preds = %573
  %588 = load i32, i32* %27, align 4
  %589 = load i32, i32* %25, align 4
  %590 = load i32, i32* %26, align 4
  %591 = call i8* @get_counters_sum(i32 %588, i32 %589, i32 %590)
  %592 = bitcast i8* %591 to %struct.counter*
  store %struct.counter* %592, %struct.counter** %29, align 8
  %593 = load %struct.counter*, %struct.counter** %29, align 8
  %594 = icmp eq %struct.counter* %593, inttoptr (i64 -2 to %struct.counter*)
  br i1 %594, label %595, label %598

595:                                              ; preds = %587
  %596 = load %struct.connection*, %struct.connection** %5, align 8
  %597 = call i32 @memcache_wait(%struct.connection* %596)
  store i32 %597, i32* %4, align 4
  br label %830

598:                                              ; preds = %587
  %599 = load %struct.counter*, %struct.counter** %29, align 8
  %600 = icmp ne %struct.counter* %599, null
  br i1 %600, label %601, label %662

601:                                              ; preds = %598
  %602 = load %struct.counter*, %struct.counter** %29, align 8
  %603 = bitcast %struct.counter* %602 to i8*
  %604 = load i8*, i8** @stats_buff, align 8
  %605 = call i32 @counter_serialize(i8* %603, i8* %604)
  store i32 %605, i32* %30, align 4
  %606 = load i32, i32* %30, align 4
  %607 = icmp sge i32 %606, 0
  %608 = zext i1 %607 to i32
  %609 = call i32 @assert(i32 %608)
  %610 = load i32, i32* %28, align 4
  %611 = icmp ne i32 %610, 0
  br i1 %611, label %612, label %634

612:                                              ; preds = %601
  %613 = load i32, i32* @Q_raw, align 4
  %614 = icmp ne i32 %613, 0
  br i1 %614, label %634, label %615

615:                                              ; preds = %612
  %616 = load %struct.connection*, %struct.connection** %5, align 8
  %617 = getelementptr inbounds %struct.connection, %struct.connection* %616, i32 0, i32 0
  %618 = load i8*, i8** @stats_buff, align 8
  %619 = load i32, i32* %30, align 4
  %620 = sext i32 %619 to i64
  %621 = getelementptr inbounds i8, i8* %618, i64 %620
  %622 = load i8*, i8** @stats_buff, align 8
  %623 = load i32, i32* %30, align 4
  %624 = sext i32 %623 to i64
  %625 = getelementptr inbounds i8, i8* %622, i64 %624
  %626 = load i8*, i8** %6, align 8
  %627 = load i32, i32* %10, align 4
  %628 = sext i32 %627 to i64
  %629 = sub i64 0, %628
  %630 = getelementptr inbounds i8, i8* %626, i64 %629
  %631 = load i32, i32* %30, align 4
  %632 = call i32 (i8*, i8*, ...) @sprintf(i8* %625, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.16, i64 0, i64 0), i8* %630, i32 %631)
  %633 = call i32 @write_out(i32* %617, i8* %621, i32 %632)
  br label %653

634:                                              ; preds = %612, %601
  %635 = load %struct.connection*, %struct.connection** %5, align 8
  %636 = getelementptr inbounds %struct.connection, %struct.connection* %635, i32 0, i32 0
  %637 = load i8*, i8** @stats_buff, align 8
  %638 = load i32, i32* %30, align 4
  %639 = sext i32 %638 to i64
  %640 = getelementptr inbounds i8, i8* %637, i64 %639
  %641 = load i8*, i8** @stats_buff, align 8
  %642 = load i32, i32* %30, align 4
  %643 = sext i32 %642 to i64
  %644 = getelementptr inbounds i8, i8* %641, i64 %643
  %645 = load i8*, i8** %6, align 8
  %646 = load i32, i32* %10, align 4
  %647 = sext i32 %646 to i64
  %648 = sub i64 0, %647
  %649 = getelementptr inbounds i8, i8* %645, i64 %648
  %650 = load i32, i32* %30, align 4
  %651 = call i32 (i8*, i8*, ...) @sprintf(i8* %644, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.17, i64 0, i64 0), i8* %649, i32 %650)
  %652 = call i32 @write_out(i32* %636, i8* %640, i32 %651)
  br label %653

653:                                              ; preds = %634, %615
  %654 = load %struct.connection*, %struct.connection** %5, align 8
  %655 = getelementptr inbounds %struct.connection, %struct.connection* %654, i32 0, i32 0
  %656 = load i8*, i8** @stats_buff, align 8
  %657 = load i32, i32* %30, align 4
  %658 = call i32 @write_out(i32* %655, i8* %656, i32 %657)
  %659 = load %struct.connection*, %struct.connection** %5, align 8
  %660 = getelementptr inbounds %struct.connection, %struct.connection* %659, i32 0, i32 0
  %661 = call i32 @write_out(i32* %660, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.18, i64 0, i64 0), i32 2)
  br label %662

662:                                              ; preds = %653, %598
  br label %663

663:                                              ; preds = %662, %573
  br label %664

664:                                              ; preds = %663, %569, %566
  %665 = load i32, i32* %7, align 4
  %666 = icmp sgt i32 %665, 8
  br i1 %666, label %667, label %724

667:                                              ; preds = %664
  %668 = load i8*, i8** %6, align 8
  %669 = call i32 @strncmp(i8* %668, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.25, i64 0, i64 0), i32 8)
  %670 = icmp ne i32 %669, 0
  br i1 %670, label %724, label %671

671:                                              ; preds = %667
  %672 = load i8*, i8** %6, align 8
  %673 = getelementptr inbounds i8, i8* %672, i64 8
  %674 = call i64 @strtoll(i8* %673, i8** %8, i32 10)
  store i64 %674, i64* %9, align 8
  %675 = load i8*, i8** %8, align 8
  %676 = load i8*, i8** %6, align 8
  %677 = getelementptr inbounds i8, i8* %676, i64 8
  %678 = icmp ugt i8* %675, %677
  br i1 %678, label %679, label %723

679:                                              ; preds = %671
  %680 = load i8*, i8** %8, align 8
  %681 = load i8, i8* %680, align 1
  %682 = icmp ne i8 %681, 0
  br i1 %682, label %723, label %683

683:                                              ; preds = %679
  %684 = load i8*, i8** @stats_buff, align 8
  %685 = load i64, i64* %9, align 8
  %686 = call i32 @get_counter_versions(i8* %684, i64 %685)
  store i32 %686, i32* %31, align 4
  %687 = load i32, i32* %31, align 4
  %688 = icmp eq i32 %687, -2
  br i1 %688, label %689, label %692

689:                                              ; preds = %683
  %690 = load %struct.connection*, %struct.connection** %5, align 8
  %691 = call i32 @memcache_wait(%struct.connection* %690)
  store i32 %691, i32* %4, align 4
  br label %830

692:                                              ; preds = %683
  %693 = load i32, i32* %31, align 4
  %694 = icmp sgt i32 %693, 0
  br i1 %694, label %695, label %722

695:                                              ; preds = %692
  %696 = load %struct.connection*, %struct.connection** %5, align 8
  %697 = getelementptr inbounds %struct.connection, %struct.connection* %696, i32 0, i32 0
  %698 = load i8*, i8** @stats_buff, align 8
  %699 = load i32, i32* %31, align 4
  %700 = sext i32 %699 to i64
  %701 = getelementptr inbounds i8, i8* %698, i64 %700
  %702 = load i8*, i8** @stats_buff, align 8
  %703 = load i32, i32* %31, align 4
  %704 = sext i32 %703 to i64
  %705 = getelementptr inbounds i8, i8* %702, i64 %704
  %706 = load i8*, i8** %6, align 8
  %707 = load i32, i32* %10, align 4
  %708 = sext i32 %707 to i64
  %709 = sub i64 0, %708
  %710 = getelementptr inbounds i8, i8* %706, i64 %709
  %711 = load i32, i32* %31, align 4
  %712 = call i32 (i8*, i8*, ...) @sprintf(i8* %705, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.17, i64 0, i64 0), i8* %710, i32 %711)
  %713 = call i32 @write_out(i32* %697, i8* %701, i32 %712)
  %714 = load %struct.connection*, %struct.connection** %5, align 8
  %715 = getelementptr inbounds %struct.connection, %struct.connection* %714, i32 0, i32 0
  %716 = load i8*, i8** @stats_buff, align 8
  %717 = load i32, i32* %31, align 4
  %718 = call i32 @write_out(i32* %715, i8* %716, i32 %717)
  %719 = load %struct.connection*, %struct.connection** %5, align 8
  %720 = getelementptr inbounds %struct.connection, %struct.connection* %719, i32 0, i32 0
  %721 = call i32 @write_out(i32* %720, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.18, i64 0, i64 0), i32 2)
  br label %722

722:                                              ; preds = %695, %692
  store i32 0, i32* %4, align 4
  br label %830

723:                                              ; preds = %679, %671
  br label %724

724:                                              ; preds = %723, %667, %664
  %725 = load i32, i32* %7, align 4
  %726 = icmp sge i32 %725, 16
  br i1 %726, label %727, label %745

727:                                              ; preds = %724
  %728 = load i8*, i8** %6, align 8
  %729 = call i32 @strncmp(i8* %728, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.26, i64 0, i64 0), i32 16)
  %730 = icmp ne i32 %729, 0
  br i1 %730, label %745, label %731

731:                                              ; preds = %727
  %732 = load %struct.connection*, %struct.connection** %5, align 8
  %733 = load i8*, i8** %6, align 8
  %734 = load i32, i32* %10, align 4
  %735 = sext i32 %734 to i64
  %736 = sub i64 0, %735
  %737 = getelementptr inbounds i8, i8* %733, i64 %736
  %738 = load i32, i32* %7, align 4
  %739 = load i32, i32* %10, align 4
  %740 = add nsw i32 %738, %739
  %741 = load i32, i32* @MAX_RECORD_WORDS, align 4
  %742 = load i32, i32* @FreeCnt, align 4
  %743 = load i32, i32* @MAX_RECORD_WORDS, align 4
  %744 = call i32 @return_one_key_list(%struct.connection* %732, i8* %737, i32 %740, i32 %741, i32 0, i32 %742, i32 %743)
  store i32 0, i32* %4, align 4
  br label %830

745:                                              ; preds = %727, %724
  %746 = load i32, i32* %7, align 4
  %747 = icmp sge i32 %746, 16
  br i1 %747, label %748, label %766

748:                                              ; preds = %745
  %749 = load i8*, i8** %6, align 8
  %750 = call i32 @strncmp(i8* %749, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.27, i64 0, i64 0), i32 16)
  %751 = icmp ne i32 %750, 0
  br i1 %751, label %766, label %752

752:                                              ; preds = %748
  %753 = load %struct.connection*, %struct.connection** %5, align 8
  %754 = load i8*, i8** %6, align 8
  %755 = load i32, i32* %10, align 4
  %756 = sext i32 %755 to i64
  %757 = sub i64 0, %756
  %758 = getelementptr inbounds i8, i8* %754, i64 %757
  %759 = load i32, i32* %7, align 4
  %760 = load i32, i32* %10, align 4
  %761 = add nsw i32 %759, %760
  %762 = load i32, i32* @MAX_RECORD_WORDS, align 4
  %763 = load i32, i32* @UsedCnt, align 4
  %764 = load i32, i32* @MAX_RECORD_WORDS, align 4
  %765 = call i32 @return_one_key_list(%struct.connection* %753, i8* %758, i32 %761, i32 %762, i32 0, i32 %763, i32 %764)
  store i32 0, i32* %4, align 4
  br label %830

766:                                              ; preds = %748, %745
  %767 = load i32, i32* %7, align 4
  %768 = icmp sge i32 %767, 16
  br i1 %768, label %769, label %790

769:                                              ; preds = %766
  %770 = load i8*, i8** %6, align 8
  %771 = call i32 @strncmp(i8* %770, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.28, i64 0, i64 0), i32 16)
  %772 = icmp ne i32 %771, 0
  br i1 %772, label %790, label %773

773:                                              ; preds = %769
  %774 = load %struct.connection*, %struct.connection** %5, align 8
  %775 = load i8*, i8** %6, align 8
  %776 = load i32, i32* %10, align 4
  %777 = sext i32 %776 to i64
  %778 = sub i64 0, %777
  %779 = getelementptr inbounds i8, i8* %775, i64 %778
  %780 = load i32, i32* %7, align 4
  %781 = load i32, i32* %10, align 4
  %782 = add nsw i32 %780, %781
  %783 = load i32, i32* @MAX_RECORD_WORDS, align 4
  %784 = load i32*, i32** @NewAllocations, align 8
  %785 = getelementptr inbounds i32, i32* %784, i64 0
  %786 = load i32, i32* %785, align 4
  %787 = load i32, i32* @MAX_RECORD_WORDS, align 4
  %788 = mul nsw i32 %787, 4
  %789 = call i32 @return_one_key_list(%struct.connection* %774, i8* %779, i32 %782, i32 %783, i32 0, i32 %786, i32 %788)
  store i32 0, i32* %4, align 4
  br label %830

790:                                              ; preds = %769, %766
  %791 = load i32, i32* %7, align 4
  %792 = icmp sge i32 %791, 17
  br i1 %792, label %793, label %811

793:                                              ; preds = %790
  %794 = load i8*, i8** %6, align 8
  %795 = call i32 @strncmp(i8* %794, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.29, i64 0, i64 0), i32 17)
  %796 = icmp ne i32 %795, 0
  br i1 %796, label %811, label %797

797:                                              ; preds = %793
  %798 = load %struct.connection*, %struct.connection** %5, align 8
  %799 = load i8*, i8** %6, align 8
  %800 = load i32, i32* %10, align 4
  %801 = sext i32 %800 to i64
  %802 = sub i64 0, %801
  %803 = getelementptr inbounds i8, i8* %799, i64 %802
  %804 = load i32, i32* %7, align 4
  %805 = load i32, i32* %10, align 4
  %806 = add nsw i32 %804, %805
  %807 = load i32, i32* @MAX_RECORD_WORDS, align 4
  %808 = load i32, i32* @SplitBlocks, align 4
  %809 = load i32, i32* @MAX_RECORD_WORDS, align 4
  %810 = call i32 @return_one_key_list(%struct.connection* %798, i8* %803, i32 %806, i32 %807, i32 0, i32 %808, i32 %809)
  store i32 0, i32* %4, align 4
  br label %830

811:                                              ; preds = %793, %790
  %812 = load i32, i32* %7, align 4
  %813 = icmp sge i32 %812, 5
  br i1 %813, label %814, label %829

814:                                              ; preds = %811
  %815 = load i8*, i8** %6, align 8
  %816 = call i32 @strncmp(i8* %815, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.30, i64 0, i64 0), i32 5)
  %817 = icmp ne i32 %816, 0
  br i1 %817, label %829, label %818

818:                                              ; preds = %814
  %819 = load %struct.connection*, %struct.connection** %5, align 8
  %820 = load i8*, i8** %6, align 8
  %821 = load i32, i32* %10, align 4
  %822 = sext i32 %821 to i64
  %823 = sub i64 0, %822
  %824 = getelementptr inbounds i8, i8* %820, i64 %823
  %825 = load i8*, i8** @stats_buff, align 8
  %826 = load %struct.connection*, %struct.connection** %5, align 8
  %827 = call i32 @stats_prepare_stats(%struct.connection* %826)
  %828 = call i32 @return_one_key(%struct.connection* %819, i8* %824, i8* %825, i32 %827)
  store i32 0, i32* %4, align 4
  br label %830

829:                                              ; preds = %814, %811
  store i32 0, i32* %4, align 4
  br label %830

830:                                              ; preds = %829, %818, %797, %773, %752, %731, %722, %689, %595, %564, %548, %529, %513, %494, %435, %397, %354, %323, %303, %253, %200, %166, %146, %133, %99, %79
  %831 = load i32, i32* %4, align 4
  ret i32 %831
}

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i32 @debug_key(i8*, i32) #1

declare dso_local i32 @get_at_prefix_length(i8*, i32) #1

declare dso_local i32 @strncmp(i8*, i8*, i32) #1

declare dso_local i32 @parse_countid_with_version(i8*, i64*, i32*) #1

declare dso_local i32 @debug_error(i8*, i8*, i8*, i32) #1

declare dso_local i32 @not_found(%struct.connection*) #1

declare dso_local i32 @get_counter_views(i64) #1

declare dso_local i32 @get_counter_views_given_version(i64, i32) #1

declare dso_local i32 @memcache_wait(%struct.connection*) #1

declare dso_local i32 @return_one_key(%struct.connection*, i8*, i8*, i32) #1

declare dso_local i32 @sprintf(i8*, i8*, ...) #1

declare dso_local i32 @get_counter_visitors(i64) #1

declare dso_local i32 @get_counter_visitors_given_version(i64, i32) #1

declare dso_local i64 @strtoll(i8*, i8**, i32) #1

declare dso_local i32 @enable_counter(i64, i32) #1

declare dso_local i32 @disable_counter(i64, i32) #1

declare dso_local i32 @sscanf(i8*, i8*, ...) #1

declare dso_local i32 @set_timezone(i64, i32, i32) #1

declare dso_local i32 @get_timezone(i64) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @get_counter_serialized(i8*, i64, i32) #1

declare dso_local i32 @write_out(i32*, i8*, i32) #1

declare dso_local i32 @get_monthly_visitors_serialized(i8*, i64) #1

declare dso_local i32 @get_monthly_views_serialized(i8*, i64) #1

declare dso_local i8* @get_counters_sum(i32, i32, i32) #1

declare dso_local i32 @counter_serialize(i8*, i8*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @get_counter_versions(i8*, i64) #1

declare dso_local i32 @return_one_key_list(%struct.connection*, i8*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @stats_prepare_stats(%struct.connection*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
