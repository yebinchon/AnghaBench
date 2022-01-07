; ModuleID = '/home/carl/AnghaBench/kphp-kdb/statsx/extr_statsx-data.c_counter_incr_ext.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/statsx/extr_statsx-data.c_counter_incr_ext.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.counter = type { i32, %struct.counter*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32*, i32, i32, i32 }
%struct.lev_stats_visitor_ext = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.lev_stats_visitor_ext64 = type { i64, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.lev_stats_visitor = type { i32 }
%struct.lev_stats_visitor64 = type { i64, i32 }

@verbosity = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"counter_incr_ext (%lld, %d, %d, %d, %d)\0A\00", align 1
@MAX_SUBCNT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"Unknown subcounter (%d). Skipping.\0A\00", align 1
@tot_views = common dso_local global i32 0, align 4
@tot_deletes = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [10 x i8] c"Starting\0A\00", align 1
@now = common dso_local global i64 0, align 8
@today_start = common dso_local global i64 0, align 8
@mode_ignore_user_id = common dso_local global i32 0, align 4
@monthly_stat = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [18 x i8] c"Inserted to tree\0A\00", align 1
@MAX_SEX = common dso_local global i32 0, align 4
@MAX_AGE = common dso_local global i32 0, align 4
@MAX_MSTATUS = common dso_local global i32 0, align 4
@MAX_POLIT = common dso_local global i32 0, align 4
@MAX_SECTION = common dso_local global i32 0, align 4
@MAX_SEX_AGE = common dso_local global i32 0, align 4
@MAX_SOURCE = common dso_local global i32 0, align 4
@MIN_CITIES = common dso_local global i32 0, align 4
@MAX_CITIES = common dso_local global i32 0, align 4
@MIN_COUNTRIES = common dso_local global i32 0, align 4
@MAX_COUNTRIES = common dso_local global i32 0, align 4
@MIN_GEOIP_COUNTRIES = common dso_local global i32 0, align 4
@MAX_GEOIP_COUNTRIES = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [19 x i8] c"Creating logevent\0A\00", align 1
@LEV_STATS_VISITOR_EXT = common dso_local global i64 0, align 8
@LEV_STATS_VISITOR_EXT_64 = common dso_local global i64 0, align 8
@LEV_STATS_VISITOR = common dso_local global i64 0, align 8
@LEV_STATS_VISITOR_64 = common dso_local global i64 0, align 8
@counters_commit_head = common dso_local global %struct.counter* null, align 8
@.str.5 = private unnamed_addr constant [11 x i8] c"Incr done\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @counter_incr_ext(i64 %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6, i32 %7, i32 %8, i32 %9, i32 %10, i32 %11, i32 %12, i32 %13) #0 {
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
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
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  %32 = alloca %struct.counter*, align 8
  %33 = alloca %struct.lev_stats_visitor_ext*, align 8
  %34 = alloca %struct.lev_stats_visitor_ext64*, align 8
  %35 = alloca %struct.lev_stats_visitor*, align 8
  %36 = alloca %struct.lev_stats_visitor64*, align 8
  store i64 %0, i64* %16, align 8
  store i32 %1, i32* %17, align 4
  store i32 %2, i32* %18, align 4
  store i32 %3, i32* %19, align 4
  store i32 %4, i32* %20, align 4
  store i32 %5, i32* %21, align 4
  store i32 %6, i32* %22, align 4
  store i32 %7, i32* %23, align 4
  store i32 %8, i32* %24, align 4
  store i32 %9, i32* %25, align 4
  store i32 %10, i32* %26, align 4
  store i32 %11, i32* %27, align 4
  store i32 %12, i32* %28, align 4
  store i32 %13, i32* %29, align 4
  store i32 0, i32* %30, align 4
  %37 = load i32, i32* @verbosity, align 4
  %38 = icmp sge i32 %37, 4
  br i1 %38, label %39, label %47

39:                                               ; preds = %14
  %40 = load i32, i32* @stderr, align 4
  %41 = load i64, i64* %16, align 8
  %42 = load i32, i32* %17, align 4
  %43 = load i32, i32* %18, align 4
  %44 = load i32, i32* %19, align 4
  %45 = load i32, i32* %20, align 4
  %46 = call i32 (i32, i8*, ...) @fprintf(i32 %40, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i64 %41, i32 %42, i32 %43, i32 %44, i32 %45)
  br label %47

47:                                               ; preds = %39, %14
  %48 = load i32, i32* %21, align 4
  %49 = mul nsw i32 16, %48
  %50 = load i32, i32* %22, align 4
  %51 = add nsw i32 %49, %50
  store i32 %51, i32* %31, align 4
  %52 = load i64, i64* %16, align 8
  %53 = load i32, i32* %18, align 4
  %54 = icmp ne i32 %53, 0
  %55 = zext i1 %54 to i64
  %56 = select i1 %54, i32 3, i32 1
  %57 = call %struct.counter* @get_counter_f(i64 %52, i32 %56)
  store %struct.counter* %57, %struct.counter** %32, align 8
  %58 = load %struct.counter*, %struct.counter** %32, align 8
  %59 = icmp ne %struct.counter* %58, null
  br i1 %59, label %61, label %60

60:                                               ; preds = %47
  store i32 -1, i32* %15, align 4
  br label %443

61:                                               ; preds = %47
  %62 = load %struct.counter*, %struct.counter** %32, align 8
  %63 = call i32 @set_perm(%struct.counter* %62)
  %64 = load i32, i32* %20, align 4
  %65 = icmp sgt i32 -1, %64
  br i1 %65, label %70, label %66

66:                                               ; preds = %61
  %67 = load i32, i32* %20, align 4
  %68 = load i32, i32* @MAX_SUBCNT, align 4
  %69 = icmp sge i32 %67, %68
  br i1 %69, label %70, label %78

70:                                               ; preds = %66, %61
  %71 = load i32, i32* @verbosity, align 4
  %72 = icmp sge i32 %71, 1
  br i1 %72, label %73, label %77

73:                                               ; preds = %70
  %74 = load i32, i32* @stderr, align 4
  %75 = load i32, i32* %20, align 4
  %76 = call i32 (i32, i8*, ...) @fprintf(i32 %74, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i32 %75)
  br label %77

77:                                               ; preds = %73, %70
  store i32 -1, i32* %20, align 4
  br label %78

78:                                               ; preds = %77, %66
  %79 = load i32, i32* %19, align 4
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %81, label %84

81:                                               ; preds = %78
  %82 = load i32, i32* @tot_views, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* @tot_views, align 4
  br label %87

84:                                               ; preds = %78
  %85 = load i32, i32* @tot_deletes, align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* @tot_deletes, align 4
  br label %87

87:                                               ; preds = %84, %81
  %88 = load i32, i32* %20, align 4
  %89 = icmp eq i32 %88, -1
  br i1 %89, label %90, label %104

90:                                               ; preds = %87
  %91 = load i32, i32* %19, align 4
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %93, label %98

93:                                               ; preds = %90
  %94 = load %struct.counter*, %struct.counter** %32, align 8
  %95 = getelementptr inbounds %struct.counter, %struct.counter* %94, i32 0, i32 15
  %96 = load i32, i32* %95, align 8
  %97 = add nsw i32 %96, 1
  store i32 %97, i32* %95, align 8
  br label %103

98:                                               ; preds = %90
  %99 = load %struct.counter*, %struct.counter** %32, align 8
  %100 = getelementptr inbounds %struct.counter, %struct.counter* %99, i32 0, i32 14
  %101 = load i32, i32* %100, align 4
  %102 = add nsw i32 %101, 1
  store i32 %102, i32* %100, align 4
  br label %103

103:                                              ; preds = %98, %93
  br label %112

104:                                              ; preds = %87
  %105 = load %struct.counter*, %struct.counter** %32, align 8
  %106 = load i32, i32* %20, align 4
  %107 = load i32, i32* %19, align 4
  %108 = icmp eq i32 %107, 0
  %109 = zext i1 %108 to i64
  %110 = select i1 %108, i32 1, i32 -1
  %111 = call i32 @packed_subcnt_increment(%struct.counter* %105, i32 %106, i32 %110)
  store i32 %111, i32* %30, align 4
  br label %112

112:                                              ; preds = %104, %103
  %113 = load i32, i32* @verbosity, align 4
  %114 = icmp sge i32 %113, 4
  br i1 %114, label %115, label %118

115:                                              ; preds = %112
  %116 = load i32, i32* @stderr, align 4
  %117 = call i32 (i32, i8*, ...) @fprintf(i32 %116, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0))
  br label %118

118:                                              ; preds = %115, %112
  %119 = load i32, i32* %20, align 4
  %120 = icmp ne i32 %119, -1
  br i1 %120, label %128, label %121

121:                                              ; preds = %118
  %122 = load %struct.counter*, %struct.counter** %32, align 8
  %123 = getelementptr inbounds %struct.counter, %struct.counter* %122, i32 0, i32 13
  %124 = load i32, i32* %123, align 8
  %125 = load i32, i32* %17, align 4
  %126 = call i32 @tree_lookup(i32 %124, i32 %125)
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %413, label %128

128:                                              ; preds = %121, %118
  %129 = load i32, i32* %20, align 4
  %130 = icmp eq i32 %129, -1
  br i1 %130, label %131, label %251

131:                                              ; preds = %128
  %132 = load i64, i64* @now, align 8
  %133 = load i64, i64* @today_start, align 8
  %134 = icmp sge i64 %132, %133
  br i1 %134, label %135, label %138

135:                                              ; preds = %131
  %136 = load i32, i32* @mode_ignore_user_id, align 4
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %141

138:                                              ; preds = %135, %131
  %139 = load i64, i64* @monthly_stat, align 8
  %140 = icmp ne i64 %139, 0
  br i1 %140, label %141, label %150

141:                                              ; preds = %138, %135
  %142 = load %struct.counter*, %struct.counter** %32, align 8
  %143 = getelementptr inbounds %struct.counter, %struct.counter* %142, i32 0, i32 13
  %144 = load i32, i32* %143, align 8
  %145 = load i32, i32* %17, align 4
  %146 = call i32 (...) @lrand48()
  %147 = call i32 @tree_insert(i32 %144, i32 %145, i32 %146)
  %148 = load %struct.counter*, %struct.counter** %32, align 8
  %149 = getelementptr inbounds %struct.counter, %struct.counter* %148, i32 0, i32 13
  store i32 %147, i32* %149, align 8
  br label %150

150:                                              ; preds = %141, %138
  %151 = load i32, i32* @verbosity, align 4
  %152 = icmp sge i32 %151, 4
  br i1 %152, label %153, label %156

153:                                              ; preds = %150
  %154 = load i32, i32* @stderr, align 4
  %155 = call i32 (i32, i8*, ...) @fprintf(i32 %154, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0))
  br label %156

156:                                              ; preds = %153, %150
  %157 = load %struct.counter*, %struct.counter** %32, align 8
  %158 = getelementptr inbounds %struct.counter, %struct.counter* %157, i32 0, i32 0
  %159 = load i32, i32* %158, align 8
  %160 = add nsw i32 %159, 1
  store i32 %160, i32* %158, align 8
  %161 = load i32, i32* %21, align 4
  %162 = icmp sgt i32 %161, 0
  br i1 %162, label %163, label %177

163:                                              ; preds = %156
  %164 = load i32, i32* %21, align 4
  %165 = load i32, i32* @MAX_SEX, align 4
  %166 = icmp sle i32 %164, %165
  br i1 %166, label %167, label %177

167:                                              ; preds = %163
  %168 = load %struct.counter*, %struct.counter** %32, align 8
  %169 = getelementptr inbounds %struct.counter, %struct.counter* %168, i32 0, i32 12
  %170 = load i32*, i32** %169, align 8
  %171 = load i32, i32* %21, align 4
  %172 = sub nsw i32 %171, 1
  %173 = sext i32 %172 to i64
  %174 = getelementptr inbounds i32, i32* %170, i64 %173
  %175 = load i32, i32* %174, align 4
  %176 = add nsw i32 %175, 1
  store i32 %176, i32* %174, align 4
  br label %178

177:                                              ; preds = %163, %156
  store i32 0, i32* %21, align 4
  br label %178

178:                                              ; preds = %177, %167
  %179 = load %struct.counter*, %struct.counter** %32, align 8
  %180 = getelementptr inbounds %struct.counter, %struct.counter* %179, i32 0, i32 11
  %181 = load i32, i32* %22, align 4
  %182 = load i32, i32* @MAX_AGE, align 4
  %183 = call i32 @cnt_incr(i32* %180, i32 %181, i32 %182)
  store i32 %183, i32* %22, align 4
  %184 = load %struct.counter*, %struct.counter** %32, align 8
  %185 = getelementptr inbounds %struct.counter, %struct.counter* %184, i32 0, i32 10
  %186 = load i32, i32* %23, align 4
  %187 = load i32, i32* @MAX_MSTATUS, align 4
  %188 = call i32 @cnt_incr(i32* %185, i32 %186, i32 %187)
  store i32 %188, i32* %23, align 4
  %189 = load %struct.counter*, %struct.counter** %32, align 8
  %190 = getelementptr inbounds %struct.counter, %struct.counter* %189, i32 0, i32 9
  %191 = load i32, i32* %24, align 4
  %192 = load i32, i32* @MAX_POLIT, align 4
  %193 = call i32 @cnt_incr(i32* %190, i32 %191, i32 %192)
  store i32 %193, i32* %24, align 4
  %194 = load %struct.counter*, %struct.counter** %32, align 8
  %195 = getelementptr inbounds %struct.counter, %struct.counter* %194, i32 0, i32 8
  %196 = load i32, i32* %25, align 4
  %197 = load i32, i32* @MAX_SECTION, align 4
  %198 = call i32 @cnt_incr(i32* %195, i32 %196, i32 %197)
  store i32 %198, i32* %25, align 4
  %199 = load i32, i32* %22, align 4
  %200 = icmp sgt i32 %199, 0
  br i1 %200, label %201, label %215

201:                                              ; preds = %178
  %202 = load i32, i32* %21, align 4
  %203 = icmp sgt i32 %202, 0
  br i1 %203, label %204, label %215

204:                                              ; preds = %201
  %205 = load %struct.counter*, %struct.counter** %32, align 8
  %206 = getelementptr inbounds %struct.counter, %struct.counter* %205, i32 0, i32 7
  %207 = load i32, i32* %21, align 4
  %208 = sub nsw i32 %207, 1
  %209 = load i32, i32* @MAX_AGE, align 4
  %210 = mul nsw i32 %208, %209
  %211 = load i32, i32* %22, align 4
  %212 = add nsw i32 %210, %211
  %213 = load i32, i32* @MAX_SEX_AGE, align 4
  %214 = call i32 @cnt_incr(i32* %206, i32 %212, i32 %213)
  br label %215

215:                                              ; preds = %204, %201, %178
  %216 = load %struct.counter*, %struct.counter** %32, align 8
  %217 = getelementptr inbounds %struct.counter, %struct.counter* %216, i32 0, i32 6
  %218 = load i32, i32* %29, align 4
  %219 = load i32, i32* @MAX_SOURCE, align 4
  %220 = call i32 @cnt_incr(i32* %217, i32 %218, i32 %219)
  store i32 %220, i32* %29, align 4
  %221 = load i32, i32* %26, align 4
  %222 = icmp sgt i32 %221, 0
  br i1 %222, label %223, label %230

223:                                              ; preds = %215
  %224 = load %struct.counter*, %struct.counter** %32, align 8
  %225 = getelementptr inbounds %struct.counter, %struct.counter* %224, i32 0, i32 5
  %226 = load i32, i32* %26, align 4
  %227 = load i32, i32* @MIN_CITIES, align 4
  %228 = load i32, i32* @MAX_CITIES, align 4
  %229 = call i32 @add_list(i32* %225, i32 %226, i32 %227, i32 %228)
  br label %230

230:                                              ; preds = %223, %215
  %231 = load i32, i32* %28, align 4
  %232 = icmp sgt i32 %231, 0
  br i1 %232, label %233, label %240

233:                                              ; preds = %230
  %234 = load %struct.counter*, %struct.counter** %32, align 8
  %235 = getelementptr inbounds %struct.counter, %struct.counter* %234, i32 0, i32 4
  %236 = load i32, i32* %28, align 4
  %237 = load i32, i32* @MIN_COUNTRIES, align 4
  %238 = load i32, i32* @MAX_COUNTRIES, align 4
  %239 = call i32 @add_list(i32* %235, i32 %236, i32 %237, i32 %238)
  br label %240

240:                                              ; preds = %233, %230
  %241 = load i32, i32* %27, align 4
  %242 = icmp sgt i32 %241, 0
  br i1 %242, label %243, label %250

243:                                              ; preds = %240
  %244 = load %struct.counter*, %struct.counter** %32, align 8
  %245 = getelementptr inbounds %struct.counter, %struct.counter* %244, i32 0, i32 3
  %246 = load i32, i32* %27, align 4
  %247 = load i32, i32* @MIN_GEOIP_COUNTRIES, align 4
  %248 = load i32, i32* @MAX_GEOIP_COUNTRIES, align 4
  %249 = call i32 @add_list(i32* %245, i32 %246, i32 %247, i32 %248)
  br label %250

250:                                              ; preds = %243, %240
  br label %251

251:                                              ; preds = %250, %128
  %252 = load i32, i32* @verbosity, align 4
  %253 = icmp sge i32 %252, 4
  br i1 %253, label %254, label %257

254:                                              ; preds = %251
  %255 = load i32, i32* @stderr, align 4
  %256 = call i32 (i32, i8*, ...) @fprintf(i32 %255, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i64 0, i64 0))
  br label %257

257:                                              ; preds = %254, %251
  %258 = load i32, i32* %18, align 4
  %259 = icmp ne i32 %258, 0
  br i1 %259, label %412, label %260

260:                                              ; preds = %257
  %261 = load i32, i32* %21, align 4
  %262 = load i32, i32* %22, align 4
  %263 = or i32 %261, %262
  %264 = load i32, i32* %23, align 4
  %265 = or i32 %263, %264
  %266 = load i32, i32* %24, align 4
  %267 = or i32 %265, %266
  %268 = load i32, i32* %25, align 4
  %269 = or i32 %267, %268
  %270 = load i32, i32* %26, align 4
  %271 = or i32 %269, %270
  %272 = load i32, i32* %28, align 4
  %273 = or i32 %271, %272
  %274 = load i32, i32* %27, align 4
  %275 = or i32 %273, %274
  %276 = load i32, i32* %29, align 4
  %277 = or i32 %275, %276
  %278 = icmp ne i32 %277, 0
  br i1 %278, label %279, label %369

279:                                              ; preds = %260
  %280 = load i64, i64* %16, align 8
  %281 = load i64, i64* %16, align 8
  %282 = trunc i64 %281 to i32
  %283 = sext i32 %282 to i64
  %284 = icmp eq i64 %280, %283
  br i1 %284, label %285, label %325

285:                                              ; preds = %279
  %286 = load i64, i64* @LEV_STATS_VISITOR_EXT, align 8
  %287 = load i32, i32* %19, align 4
  %288 = shl i32 %287, 7
  %289 = sext i32 %288 to i64
  %290 = add nsw i64 %286, %289
  %291 = load i32, i32* %20, align 4
  %292 = sext i32 %291 to i64
  %293 = add nsw i64 %290, %292
  %294 = add nsw i64 %293, 1
  %295 = load i64, i64* %16, align 8
  %296 = call i8* @alloc_log_event(i64 %294, i32 36, i64 %295)
  %297 = bitcast i8* %296 to %struct.lev_stats_visitor_ext*
  store %struct.lev_stats_visitor_ext* %297, %struct.lev_stats_visitor_ext** %33, align 8
  %298 = load i32, i32* %17, align 4
  %299 = load %struct.lev_stats_visitor_ext*, %struct.lev_stats_visitor_ext** %33, align 8
  %300 = getelementptr inbounds %struct.lev_stats_visitor_ext, %struct.lev_stats_visitor_ext* %299, i32 0, i32 0
  store i32 %298, i32* %300, align 4
  %301 = load i32, i32* %31, align 4
  %302 = load %struct.lev_stats_visitor_ext*, %struct.lev_stats_visitor_ext** %33, align 8
  %303 = getelementptr inbounds %struct.lev_stats_visitor_ext, %struct.lev_stats_visitor_ext* %302, i32 0, i32 1
  store i32 %301, i32* %303, align 4
  %304 = load i32, i32* %23, align 4
  %305 = load %struct.lev_stats_visitor_ext*, %struct.lev_stats_visitor_ext** %33, align 8
  %306 = getelementptr inbounds %struct.lev_stats_visitor_ext, %struct.lev_stats_visitor_ext* %305, i32 0, i32 2
  store i32 %304, i32* %306, align 4
  %307 = load i32, i32* %24, align 4
  %308 = load %struct.lev_stats_visitor_ext*, %struct.lev_stats_visitor_ext** %33, align 8
  %309 = getelementptr inbounds %struct.lev_stats_visitor_ext, %struct.lev_stats_visitor_ext* %308, i32 0, i32 3
  store i32 %307, i32* %309, align 4
  %310 = load i32, i32* %25, align 4
  %311 = load %struct.lev_stats_visitor_ext*, %struct.lev_stats_visitor_ext** %33, align 8
  %312 = getelementptr inbounds %struct.lev_stats_visitor_ext, %struct.lev_stats_visitor_ext* %311, i32 0, i32 4
  store i32 %310, i32* %312, align 4
  %313 = load i32, i32* %26, align 4
  %314 = load %struct.lev_stats_visitor_ext*, %struct.lev_stats_visitor_ext** %33, align 8
  %315 = getelementptr inbounds %struct.lev_stats_visitor_ext, %struct.lev_stats_visitor_ext* %314, i32 0, i32 5
  store i32 %313, i32* %315, align 4
  %316 = load i32, i32* %28, align 4
  %317 = load %struct.lev_stats_visitor_ext*, %struct.lev_stats_visitor_ext** %33, align 8
  %318 = getelementptr inbounds %struct.lev_stats_visitor_ext, %struct.lev_stats_visitor_ext* %317, i32 0, i32 6
  store i32 %316, i32* %318, align 4
  %319 = load i32, i32* %27, align 4
  %320 = load %struct.lev_stats_visitor_ext*, %struct.lev_stats_visitor_ext** %33, align 8
  %321 = getelementptr inbounds %struct.lev_stats_visitor_ext, %struct.lev_stats_visitor_ext* %320, i32 0, i32 7
  store i32 %319, i32* %321, align 4
  %322 = load i32, i32* %29, align 4
  %323 = load %struct.lev_stats_visitor_ext*, %struct.lev_stats_visitor_ext** %33, align 8
  %324 = getelementptr inbounds %struct.lev_stats_visitor_ext, %struct.lev_stats_visitor_ext* %323, i32 0, i32 8
  store i32 %322, i32* %324, align 4
  br label %368

325:                                              ; preds = %279
  %326 = load i64, i64* @LEV_STATS_VISITOR_EXT_64, align 8
  %327 = load i32, i32* %19, align 4
  %328 = shl i32 %327, 7
  %329 = sext i32 %328 to i64
  %330 = add nsw i64 %326, %329
  %331 = load i32, i32* %20, align 4
  %332 = sext i32 %331 to i64
  %333 = add nsw i64 %330, %332
  %334 = add nsw i64 %333, 1
  %335 = load i64, i64* %16, align 8
  %336 = call i8* @alloc_log_event(i64 %334, i32 48, i64 %335)
  %337 = bitcast i8* %336 to %struct.lev_stats_visitor_ext64*
  store %struct.lev_stats_visitor_ext64* %337, %struct.lev_stats_visitor_ext64** %34, align 8
  %338 = load i64, i64* %16, align 8
  %339 = load %struct.lev_stats_visitor_ext64*, %struct.lev_stats_visitor_ext64** %34, align 8
  %340 = getelementptr inbounds %struct.lev_stats_visitor_ext64, %struct.lev_stats_visitor_ext64* %339, i32 0, i32 0
  store i64 %338, i64* %340, align 8
  %341 = load i32, i32* %17, align 4
  %342 = load %struct.lev_stats_visitor_ext64*, %struct.lev_stats_visitor_ext64** %34, align 8
  %343 = getelementptr inbounds %struct.lev_stats_visitor_ext64, %struct.lev_stats_visitor_ext64* %342, i32 0, i32 1
  store i32 %341, i32* %343, align 8
  %344 = load i32, i32* %31, align 4
  %345 = load %struct.lev_stats_visitor_ext64*, %struct.lev_stats_visitor_ext64** %34, align 8
  %346 = getelementptr inbounds %struct.lev_stats_visitor_ext64, %struct.lev_stats_visitor_ext64* %345, i32 0, i32 2
  store i32 %344, i32* %346, align 4
  %347 = load i32, i32* %23, align 4
  %348 = load %struct.lev_stats_visitor_ext64*, %struct.lev_stats_visitor_ext64** %34, align 8
  %349 = getelementptr inbounds %struct.lev_stats_visitor_ext64, %struct.lev_stats_visitor_ext64* %348, i32 0, i32 3
  store i32 %347, i32* %349, align 8
  %350 = load i32, i32* %24, align 4
  %351 = load %struct.lev_stats_visitor_ext64*, %struct.lev_stats_visitor_ext64** %34, align 8
  %352 = getelementptr inbounds %struct.lev_stats_visitor_ext64, %struct.lev_stats_visitor_ext64* %351, i32 0, i32 4
  store i32 %350, i32* %352, align 4
  %353 = load i32, i32* %25, align 4
  %354 = load %struct.lev_stats_visitor_ext64*, %struct.lev_stats_visitor_ext64** %34, align 8
  %355 = getelementptr inbounds %struct.lev_stats_visitor_ext64, %struct.lev_stats_visitor_ext64* %354, i32 0, i32 5
  store i32 %353, i32* %355, align 8
  %356 = load i32, i32* %26, align 4
  %357 = load %struct.lev_stats_visitor_ext64*, %struct.lev_stats_visitor_ext64** %34, align 8
  %358 = getelementptr inbounds %struct.lev_stats_visitor_ext64, %struct.lev_stats_visitor_ext64* %357, i32 0, i32 6
  store i32 %356, i32* %358, align 4
  %359 = load i32, i32* %28, align 4
  %360 = load %struct.lev_stats_visitor_ext64*, %struct.lev_stats_visitor_ext64** %34, align 8
  %361 = getelementptr inbounds %struct.lev_stats_visitor_ext64, %struct.lev_stats_visitor_ext64* %360, i32 0, i32 7
  store i32 %359, i32* %361, align 8
  %362 = load i32, i32* %27, align 4
  %363 = load %struct.lev_stats_visitor_ext64*, %struct.lev_stats_visitor_ext64** %34, align 8
  %364 = getelementptr inbounds %struct.lev_stats_visitor_ext64, %struct.lev_stats_visitor_ext64* %363, i32 0, i32 8
  store i32 %362, i32* %364, align 4
  %365 = load i32, i32* %29, align 4
  %366 = load %struct.lev_stats_visitor_ext64*, %struct.lev_stats_visitor_ext64** %34, align 8
  %367 = getelementptr inbounds %struct.lev_stats_visitor_ext64, %struct.lev_stats_visitor_ext64* %366, i32 0, i32 9
  store i32 %365, i32* %367, align 8
  br label %368

368:                                              ; preds = %325, %285
  br label %411

369:                                              ; preds = %260
  %370 = load i64, i64* %16, align 8
  %371 = load i64, i64* %16, align 8
  %372 = trunc i64 %371 to i32
  %373 = sext i32 %372 to i64
  %374 = icmp eq i64 %370, %373
  br i1 %374, label %375, label %391

375:                                              ; preds = %369
  %376 = load i64, i64* @LEV_STATS_VISITOR, align 8
  %377 = load i32, i32* %19, align 4
  %378 = shl i32 %377, 7
  %379 = sext i32 %378 to i64
  %380 = add nsw i64 %376, %379
  %381 = load i32, i32* %20, align 4
  %382 = sext i32 %381 to i64
  %383 = add nsw i64 %380, %382
  %384 = add nsw i64 %383, 1
  %385 = load i64, i64* %16, align 8
  %386 = call i8* @alloc_log_event(i64 %384, i32 4, i64 %385)
  %387 = bitcast i8* %386 to %struct.lev_stats_visitor*
  store %struct.lev_stats_visitor* %387, %struct.lev_stats_visitor** %35, align 8
  %388 = load i32, i32* %17, align 4
  %389 = load %struct.lev_stats_visitor*, %struct.lev_stats_visitor** %35, align 8
  %390 = getelementptr inbounds %struct.lev_stats_visitor, %struct.lev_stats_visitor* %389, i32 0, i32 0
  store i32 %388, i32* %390, align 4
  br label %410

391:                                              ; preds = %369
  %392 = load i64, i64* @LEV_STATS_VISITOR_64, align 8
  %393 = load i32, i32* %19, align 4
  %394 = shl i32 %393, 7
  %395 = sext i32 %394 to i64
  %396 = add nsw i64 %392, %395
  %397 = load i32, i32* %20, align 4
  %398 = sext i32 %397 to i64
  %399 = add nsw i64 %396, %398
  %400 = add nsw i64 %399, 1
  %401 = load i64, i64* %16, align 8
  %402 = call i8* @alloc_log_event(i64 %400, i32 16, i64 %401)
  %403 = bitcast i8* %402 to %struct.lev_stats_visitor64*
  store %struct.lev_stats_visitor64* %403, %struct.lev_stats_visitor64** %36, align 8
  %404 = load i64, i64* %16, align 8
  %405 = load %struct.lev_stats_visitor64*, %struct.lev_stats_visitor64** %36, align 8
  %406 = getelementptr inbounds %struct.lev_stats_visitor64, %struct.lev_stats_visitor64* %405, i32 0, i32 0
  store i64 %404, i64* %406, align 8
  %407 = load i32, i32* %17, align 4
  %408 = load %struct.lev_stats_visitor64*, %struct.lev_stats_visitor64** %36, align 8
  %409 = getelementptr inbounds %struct.lev_stats_visitor64, %struct.lev_stats_visitor64* %408, i32 0, i32 1
  store i32 %407, i32* %409, align 8
  br label %410

410:                                              ; preds = %391, %375
  br label %411

411:                                              ; preds = %410, %368
  br label %412

412:                                              ; preds = %411, %257
  br label %428

413:                                              ; preds = %121
  %414 = load i32, i32* %18, align 4
  %415 = icmp ne i32 %414, 0
  br i1 %415, label %427, label %416

416:                                              ; preds = %413
  %417 = load %struct.counter*, %struct.counter** %32, align 8
  %418 = getelementptr inbounds %struct.counter, %struct.counter* %417, i32 0, i32 2
  %419 = load i32, i32* %418, align 8
  %420 = add nsw i32 %419, 1
  store i32 %420, i32* %418, align 8
  %421 = icmp ne i32 %419, 0
  br i1 %421, label %427, label %422

422:                                              ; preds = %416
  %423 = load %struct.counter*, %struct.counter** @counters_commit_head, align 8
  %424 = load %struct.counter*, %struct.counter** %32, align 8
  %425 = getelementptr inbounds %struct.counter, %struct.counter* %424, i32 0, i32 1
  store %struct.counter* %423, %struct.counter** %425, align 8
  %426 = load %struct.counter*, %struct.counter** %32, align 8
  store %struct.counter* %426, %struct.counter** @counters_commit_head, align 8
  br label %427

427:                                              ; preds = %422, %416, %413
  br label %428

428:                                              ; preds = %427, %412
  %429 = load i32, i32* @verbosity, align 4
  %430 = icmp sge i32 %429, 4
  br i1 %430, label %431, label %434

431:                                              ; preds = %428
  %432 = load i32, i32* @stderr, align 4
  %433 = call i32 (i32, i8*, ...) @fprintf(i32 %432, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0))
  br label %434

434:                                              ; preds = %431, %428
  %435 = load i32, i32* %20, align 4
  %436 = icmp eq i32 %435, -1
  br i1 %436, label %437, label %441

437:                                              ; preds = %434
  %438 = load %struct.counter*, %struct.counter** %32, align 8
  %439 = getelementptr inbounds %struct.counter, %struct.counter* %438, i32 0, i32 0
  %440 = load i32, i32* %439, align 8
  store i32 %440, i32* %15, align 4
  br label %443

441:                                              ; preds = %434
  %442 = load i32, i32* %30, align 4
  store i32 %442, i32* %15, align 4
  br label %443

443:                                              ; preds = %441, %437, %60
  %444 = load i32, i32* %15, align 4
  ret i32 %444
}

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local %struct.counter* @get_counter_f(i64, i32) #1

declare dso_local i32 @set_perm(%struct.counter*) #1

declare dso_local i32 @packed_subcnt_increment(%struct.counter*, i32, i32) #1

declare dso_local i32 @tree_lookup(i32, i32) #1

declare dso_local i32 @tree_insert(i32, i32, i32) #1

declare dso_local i32 @lrand48(...) #1

declare dso_local i32 @cnt_incr(i32*, i32, i32) #1

declare dso_local i32 @add_list(i32*, i32, i32, i32) #1

declare dso_local i8* @alloc_log_event(i64, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
