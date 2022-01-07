; ModuleID = '/home/carl/AnghaBench/kphp-kdb/statsx/extr_statsx-engine.c_memcache_incr.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/statsx/extr_statsx-engine.c_memcache_incr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.connection = type { i32 }

@verbosity = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"memcache_incr (op = %d, key = \22\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"\22)\0A\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"counter\00", align 1
@errno = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [5 x i8] c"incr\00", align 1
@.str.4 = private unnamed_addr constant [25 x i8] c"fail to parse counter_id\00", align 1
@.str.5 = private unnamed_addr constant [22 x i8] c"fail to parse version\00", align 1
@.str.6 = private unnamed_addr constant [14 x i8] c"version = %d\0A\00", align 1
@.str.7 = private unnamed_addr constant [24 x i8] c"fail to parse subcnt_id\00", align 1
@.str.8 = private unnamed_addr constant [26 x i8] c"missed uid (expected '#')\00", align 1
@.str.9 = private unnamed_addr constant [18 x i8] c"fail to parse uid\00", align 1
@.str.10 = private unnamed_addr constant [23 x i8] c"expected '#' after uid\00", align 1
@.str.11 = private unnamed_addr constant [48 x i8] c"incr (cnt_id = %lld, subcnt_id = %d, uid = %d)\0A\00", align 1
@.str.12 = private unnamed_addr constant [20 x i8] c"%d;%3[^;];%3[^;];%c\00", align 1
@.str.13 = private unnamed_addr constant [31 x i8] c"optional_params_is_given = %d\0A\00", align 1
@.str.14 = private unnamed_addr constant [110 x i8] c"sex = %d, age = %d, status = %d, polit = %d, section = %d, city = %d, region = %d, country = %d, source = %d\0A\00", align 1
@incr_version = common dso_local global i32 0, align 4
@incr_counter_id = common dso_local global i64 0, align 8
@incr_version_read = common dso_local global i64 0, align 8
@custom_version_names = common dso_local global i64 0, align 8
@.str.15 = private unnamed_addr constant [20 x i8] c"fail due to version\00", align 1
@stats_buff = common dso_local global i32 0, align 4
@.str.16 = private unnamed_addr constant [5 x i8] c"%d\0D\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @memcache_incr(%struct.connection* %0, i32 %1, i8* %2, i32 %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.connection*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i8, align 1
  %20 = alloca i8, align 1
  %21 = alloca i8, align 1
  %22 = alloca i8, align 1
  %23 = alloca i8, align 1
  %24 = alloca [4 x i8], align 1
  %25 = alloca [4 x i8], align 1
  %26 = alloca i8, align 1
  %27 = alloca i8*, align 8
  %28 = alloca i8, align 1
  %29 = alloca i32, align 4
  store %struct.connection* %0, %struct.connection** %7, align 8
  store i32 %1, i32* %8, align 4
  store i8* %2, i8** %9, align 8
  store i32 %3, i32* %10, align 4
  store i64 %4, i64* %11, align 8
  %30 = load i32, i32* @verbosity, align 4
  %31 = icmp sge i32 %30, 4
  br i1 %31, label %32, label %41

32:                                               ; preds = %5
  %33 = load i32, i32* @stderr, align 4
  %34 = load i32, i32* %8, align 4
  %35 = call i32 (i32, i8*, ...) @fprintf(i32 %33, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %34)
  %36 = load i8*, i8** %9, align 8
  %37 = load i32, i32* %10, align 4
  %38 = call i32 @debug_key(i8* %36, i32 %37)
  %39 = load i32, i32* @stderr, align 4
  %40 = call i32 (i32, i8*, ...) @fprintf(i32 %39, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  br label %41

41:                                               ; preds = %32, %5
  %42 = load i8*, i8** %9, align 8
  %43 = load i32, i32* %10, align 4
  %44 = call i32 @get_at_prefix_length(i8* %42, i32 %43)
  store i32 %44, i32* %12, align 4
  %45 = load i32, i32* %12, align 4
  %46 = load i8*, i8** %9, align 8
  %47 = sext i32 %45 to i64
  %48 = getelementptr inbounds i8, i8* %46, i64 %47
  store i8* %48, i8** %9, align 8
  %49 = load i32, i32* %12, align 4
  %50 = load i32, i32* %10, align 4
  %51 = sub nsw i32 %50, %49
  store i32 %51, i32* %10, align 4
  %52 = load i32, i32* %10, align 4
  %53 = icmp sge i32 %52, 7
  br i1 %53, label %54, label %414

54:                                               ; preds = %41
  %55 = load i8*, i8** %9, align 8
  %56 = call i32 @memcmp(i8* %55, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i32 7)
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %414, label %58

58:                                               ; preds = %54
  store i32 -1, i32* %15, align 4
  store i32 0, i32* %17, align 4
  store i8 0, i8* %19, align 1
  store i8 0, i8* %20, align 1
  store i8 0, i8* %21, align 1
  store i8 0, i8* %22, align 1
  store i8 0, i8* %23, align 1
  store i8 0, i8* %26, align 1
  store i8 1, i8* %28, align 1
  store i32 -1, i32* %29, align 4
  %59 = getelementptr inbounds [4 x i8], [4 x i8]* %24, i64 0, i64 0
  %60 = call i32 @memset(i8* %59, i32 0, i32 4)
  %61 = getelementptr inbounds [4 x i8], [4 x i8]* %25, i64 0, i64 0
  %62 = call i32 @memset(i8* %61, i32 0, i32 4)
  store i64 0, i64* @errno, align 8
  %63 = load i8*, i8** %9, align 8
  %64 = getelementptr inbounds i8, i8* %63, i64 7
  %65 = call i64 @strtoll(i8* %64, i8** %27, i32 10)
  store i64 %65, i64* %14, align 8
  %66 = load i64, i64* @errno, align 8
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %74

68:                                               ; preds = %58
  %69 = load i8*, i8** %9, align 8
  %70 = load i32, i32* %10, align 4
  %71 = call i32 @debug_error(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0), i8* %69, i32 %70)
  %72 = load %struct.connection*, %struct.connection** %7, align 8
  %73 = call i32 @not_found(%struct.connection* %72)
  store i32 %73, i32* %6, align 4
  br label %417

74:                                               ; preds = %58
  %75 = load i64, i64* %14, align 8
  store i64 %75, i64* %13, align 8
  %76 = load i8*, i8** %27, align 8
  %77 = load i8, i8* %76, align 1
  %78 = sext i8 %77 to i32
  %79 = icmp eq i32 %78, 64
  br i1 %79, label %80, label %105

80:                                               ; preds = %74
  store i64 0, i64* @errno, align 8
  %81 = load i8*, i8** %27, align 8
  %82 = getelementptr inbounds i8, i8* %81, i64 1
  %83 = call i64 @strtol(i8* %82, i8** %27, i32 10)
  store i64 %83, i64* %14, align 8
  %84 = load i64, i64* @errno, align 8
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %89, label %86

86:                                               ; preds = %80
  %87 = load i64, i64* %14, align 8
  %88 = icmp slt i64 %87, 0
  br i1 %88, label %89, label %95

89:                                               ; preds = %86, %80
  %90 = load i8*, i8** %9, align 8
  %91 = load i32, i32* %10, align 4
  %92 = call i32 @debug_error(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i64 0, i64 0), i8* %90, i32 %91)
  %93 = load %struct.connection*, %struct.connection** %7, align 8
  %94 = call i32 @not_found(%struct.connection* %93)
  store i32 %94, i32* %6, align 4
  br label %417

95:                                               ; preds = %86
  %96 = load i32, i32* @verbosity, align 4
  %97 = icmp sge i32 %96, 3
  br i1 %97, label %98, label %102

98:                                               ; preds = %95
  %99 = load i32, i32* @stderr, align 4
  %100 = load i32, i32* %29, align 4
  %101 = call i32 (i32, i8*, ...) @fprintf(i32 %99, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i64 0, i64 0), i32 %100)
  br label %102

102:                                              ; preds = %98, %95
  %103 = load i64, i64* %14, align 8
  %104 = trunc i64 %103 to i32
  store i32 %104, i32* %29, align 4
  br label %105

105:                                              ; preds = %102, %74
  %106 = load i8*, i8** %27, align 8
  %107 = load i8, i8* %106, align 1
  %108 = sext i8 %107 to i32
  %109 = icmp eq i32 %108, 58
  br i1 %109, label %110, label %125

110:                                              ; preds = %105
  store i64 0, i64* @errno, align 8
  %111 = load i8*, i8** %27, align 8
  %112 = getelementptr inbounds i8, i8* %111, i64 1
  %113 = call i64 @strtol(i8* %112, i8** %27, i32 10)
  store i64 %113, i64* %14, align 8
  %114 = load i64, i64* @errno, align 8
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %122

116:                                              ; preds = %110
  %117 = load i8*, i8** %9, align 8
  %118 = load i32, i32* %10, align 4
  %119 = call i32 @debug_error(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.7, i64 0, i64 0), i8* %117, i32 %118)
  %120 = load %struct.connection*, %struct.connection** %7, align 8
  %121 = call i32 @not_found(%struct.connection* %120)
  store i32 %121, i32* %6, align 4
  br label %417

122:                                              ; preds = %110
  %123 = load i64, i64* %14, align 8
  %124 = trunc i64 %123 to i32
  store i32 %124, i32* %15, align 4
  br label %125

125:                                              ; preds = %122, %105
  %126 = load i8*, i8** %27, align 8
  %127 = load i8, i8* %126, align 1
  %128 = sext i8 %127 to i32
  %129 = icmp ne i32 %128, 35
  br i1 %129, label %130, label %136

130:                                              ; preds = %125
  %131 = load i8*, i8** %9, align 8
  %132 = load i32, i32* %10, align 4
  %133 = call i32 @debug_error(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.8, i64 0, i64 0), i8* %131, i32 %132)
  %134 = load %struct.connection*, %struct.connection** %7, align 8
  %135 = call i32 @not_found(%struct.connection* %134)
  store i32 %135, i32* %6, align 4
  br label %417

136:                                              ; preds = %125
  store i64 0, i64* @errno, align 8
  %137 = load i8*, i8** %27, align 8
  %138 = getelementptr inbounds i8, i8* %137, i64 1
  %139 = call i64 @strtol(i8* %138, i8** %27, i32 10)
  store i64 %139, i64* %14, align 8
  %140 = load i64, i64* @errno, align 8
  %141 = icmp ne i64 %140, 0
  br i1 %141, label %142, label %148

142:                                              ; preds = %136
  %143 = load i8*, i8** %9, align 8
  %144 = load i32, i32* %10, align 4
  %145 = call i32 @debug_error(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.9, i64 0, i64 0), i8* %143, i32 %144)
  %146 = load %struct.connection*, %struct.connection** %7, align 8
  %147 = call i32 @not_found(%struct.connection* %146)
  store i32 %147, i32* %6, align 4
  br label %417

148:                                              ; preds = %136
  %149 = load i64, i64* %14, align 8
  %150 = trunc i64 %149 to i32
  store i32 %150, i32* %16, align 4
  %151 = load i8*, i8** %27, align 8
  %152 = load i8, i8* %151, align 1
  %153 = sext i8 %152 to i32
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %155, label %166

155:                                              ; preds = %148
  %156 = load i8*, i8** %27, align 8
  %157 = load i8, i8* %156, align 1
  %158 = sext i8 %157 to i32
  %159 = icmp ne i32 %158, 35
  br i1 %159, label %160, label %166

160:                                              ; preds = %155
  %161 = load i8*, i8** %9, align 8
  %162 = load i32, i32* %10, align 4
  %163 = call i32 @debug_error(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.10, i64 0, i64 0), i8* %161, i32 %162)
  %164 = load %struct.connection*, %struct.connection** %7, align 8
  %165 = call i32 @not_found(%struct.connection* %164)
  store i32 %165, i32* %6, align 4
  br label %417

166:                                              ; preds = %155, %148
  %167 = load i32, i32* @verbosity, align 4
  %168 = icmp sge i32 %167, 4
  br i1 %168, label %169, label %175

169:                                              ; preds = %166
  %170 = load i32, i32* @stderr, align 4
  %171 = load i64, i64* %13, align 8
  %172 = load i32, i32* %15, align 4
  %173 = load i32, i32* %16, align 4
  %174 = call i32 (i32, i8*, ...) @fprintf(i32 %170, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.11, i64 0, i64 0), i64 %171, i32 %172, i32 %173)
  br label %175

175:                                              ; preds = %169, %166
  %176 = load i8*, i8** %27, align 8
  %177 = load i8, i8* %176, align 1
  %178 = icmp ne i8 %177, 0
  br i1 %178, label %180, label %179

179:                                              ; preds = %175
  store i8 0, i8* %28, align 1
  br label %180

180:                                              ; preds = %179, %175
  %181 = load i8*, i8** %27, align 8
  %182 = load i8, i8* %181, align 1
  %183 = icmp ne i8 %182, 0
  br i1 %183, label %184, label %187

184:                                              ; preds = %180
  %185 = load i8*, i8** %27, align 8
  %186 = getelementptr inbounds i8, i8* %185, i32 1
  store i8* %186, i8** %27, align 8
  br label %187

187:                                              ; preds = %184, %180
  %188 = load i8*, i8** %27, align 8
  %189 = load i8, i8* %188, align 1
  %190 = icmp ne i8 %189, 0
  br i1 %190, label %191, label %195

191:                                              ; preds = %187
  %192 = load i8*, i8** %27, align 8
  %193 = getelementptr inbounds i8, i8* %192, i32 1
  store i8* %193, i8** %27, align 8
  %194 = load i8, i8* %192, align 1
  store i8 %194, i8* %19, align 1
  br label %195

195:                                              ; preds = %191, %187
  %196 = load i8*, i8** %27, align 8
  %197 = load i8, i8* %196, align 1
  %198 = icmp ne i8 %197, 0
  br i1 %198, label %199, label %203

199:                                              ; preds = %195
  %200 = load i8*, i8** %27, align 8
  %201 = getelementptr inbounds i8, i8* %200, i32 1
  store i8* %201, i8** %27, align 8
  %202 = load i8, i8* %200, align 1
  store i8 %202, i8* %20, align 1
  br label %203

203:                                              ; preds = %199, %195
  %204 = load i8*, i8** %27, align 8
  %205 = load i8, i8* %204, align 1
  %206 = icmp ne i8 %205, 0
  br i1 %206, label %207, label %211

207:                                              ; preds = %203
  %208 = load i8*, i8** %27, align 8
  %209 = getelementptr inbounds i8, i8* %208, i32 1
  store i8* %209, i8** %27, align 8
  %210 = load i8, i8* %208, align 1
  store i8 %210, i8* %21, align 1
  br label %211

211:                                              ; preds = %207, %203
  %212 = load i8*, i8** %27, align 8
  %213 = load i8, i8* %212, align 1
  %214 = icmp ne i8 %213, 0
  br i1 %214, label %215, label %219

215:                                              ; preds = %211
  %216 = load i8*, i8** %27, align 8
  %217 = getelementptr inbounds i8, i8* %216, i32 1
  store i8* %217, i8** %27, align 8
  %218 = load i8, i8* %216, align 1
  store i8 %218, i8* %22, align 1
  br label %219

219:                                              ; preds = %215, %211
  %220 = load i8*, i8** %27, align 8
  %221 = load i8, i8* %220, align 1
  %222 = icmp ne i8 %221, 0
  br i1 %222, label %223, label %227

223:                                              ; preds = %219
  %224 = load i8*, i8** %27, align 8
  %225 = getelementptr inbounds i8, i8* %224, i32 1
  store i8* %225, i8** %27, align 8
  %226 = load i8, i8* %224, align 1
  store i8 %226, i8* %23, align 1
  br label %227

227:                                              ; preds = %223, %219
  %228 = load i8*, i8** %27, align 8
  %229 = load i8, i8* %228, align 1
  %230 = sext i8 %229 to i32
  %231 = icmp eq i32 %230, 59
  br i1 %231, label %232, label %238

232:                                              ; preds = %227
  %233 = load i8*, i8** %27, align 8
  %234 = getelementptr inbounds i8, i8* %233, i64 1
  %235 = getelementptr inbounds [4 x i8], [4 x i8]* %24, i64 0, i64 0
  %236 = getelementptr inbounds [4 x i8], [4 x i8]* %25, i64 0, i64 0
  %237 = call i32 @sscanf(i8* %234, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.12, i64 0, i64 0), i32* %17, i8* %235, i8* %236, i8* %26)
  br label %238

238:                                              ; preds = %232, %227
  %239 = load i8, i8* %19, align 1
  %240 = sext i8 %239 to i32
  %241 = icmp sgt i32 %240, 48
  br i1 %241, label %242, label %251

242:                                              ; preds = %238
  %243 = load i8, i8* %19, align 1
  %244 = sext i8 %243 to i32
  %245 = icmp sle i32 %244, 50
  br i1 %245, label %246, label %251

246:                                              ; preds = %242
  %247 = load i8, i8* %19, align 1
  %248 = sext i8 %247 to i32
  %249 = sub nsw i32 %248, 48
  %250 = trunc i32 %249 to i8
  store i8 %250, i8* %19, align 1
  br label %252

251:                                              ; preds = %242, %238
  store i8 0, i8* %19, align 1
  br label %252

252:                                              ; preds = %251, %246
  %253 = load i8, i8* %20, align 1
  %254 = sext i8 %253 to i32
  %255 = icmp sgt i32 %254, 48
  br i1 %255, label %256, label %265

256:                                              ; preds = %252
  %257 = load i8, i8* %20, align 1
  %258 = sext i8 %257 to i32
  %259 = icmp sle i32 %258, 56
  br i1 %259, label %260, label %265

260:                                              ; preds = %256
  %261 = load i8, i8* %20, align 1
  %262 = sext i8 %261 to i32
  %263 = sub nsw i32 %262, 48
  %264 = trunc i32 %263 to i8
  store i8 %264, i8* %20, align 1
  br label %266

265:                                              ; preds = %256, %252
  store i8 0, i8* %20, align 1
  br label %266

266:                                              ; preds = %265, %260
  %267 = load i8, i8* %21, align 1
  %268 = sext i8 %267 to i32
  %269 = icmp sgt i32 %268, 48
  br i1 %269, label %270, label %279

270:                                              ; preds = %266
  %271 = load i8, i8* %21, align 1
  %272 = sext i8 %271 to i32
  %273 = icmp sle i32 %272, 56
  br i1 %273, label %274, label %279

274:                                              ; preds = %270
  %275 = load i8, i8* %21, align 1
  %276 = sext i8 %275 to i32
  %277 = sub nsw i32 %276, 48
  %278 = trunc i32 %277 to i8
  store i8 %278, i8* %21, align 1
  br label %280

279:                                              ; preds = %270, %266
  store i8 0, i8* %21, align 1
  br label %280

280:                                              ; preds = %279, %274
  %281 = load i8, i8* %22, align 1
  %282 = sext i8 %281 to i32
  %283 = icmp sgt i32 %282, 48
  br i1 %283, label %284, label %293

284:                                              ; preds = %280
  %285 = load i8, i8* %22, align 1
  %286 = sext i8 %285 to i32
  %287 = icmp sle i32 %286, 56
  br i1 %287, label %288, label %293

288:                                              ; preds = %284
  %289 = load i8, i8* %22, align 1
  %290 = sext i8 %289 to i32
  %291 = sub nsw i32 %290, 48
  %292 = trunc i32 %291 to i8
  store i8 %292, i8* %22, align 1
  br label %294

293:                                              ; preds = %284, %280
  store i8 0, i8* %22, align 1
  br label %294

294:                                              ; preds = %293, %288
  %295 = load i8, i8* %23, align 1
  %296 = sext i8 %295 to i32
  %297 = icmp sge i32 %296, 65
  br i1 %297, label %298, label %307

298:                                              ; preds = %294
  %299 = load i8, i8* %23, align 1
  %300 = sext i8 %299 to i32
  %301 = icmp sle i32 %300, 80
  br i1 %301, label %302, label %307

302:                                              ; preds = %298
  %303 = load i8, i8* %23, align 1
  %304 = sext i8 %303 to i32
  %305 = sub nsw i32 %304, 64
  %306 = trunc i32 %305 to i8
  store i8 %306, i8* %23, align 1
  br label %308

307:                                              ; preds = %298, %294
  store i8 0, i8* %23, align 1
  br label %308

308:                                              ; preds = %307, %302
  %309 = load i8, i8* %26, align 1
  %310 = sext i8 %309 to i32
  %311 = icmp sge i32 %310, 65
  br i1 %311, label %312, label %321

312:                                              ; preds = %308
  %313 = load i8, i8* %26, align 1
  %314 = sext i8 %313 to i32
  %315 = icmp sle i32 %314, 80
  br i1 %315, label %316, label %321

316:                                              ; preds = %312
  %317 = load i8, i8* %26, align 1
  %318 = sext i8 %317 to i32
  %319 = sub nsw i32 %318, 64
  %320 = trunc i32 %319 to i8
  store i8 %320, i8* %26, align 1
  br label %322

321:                                              ; preds = %312, %308
  store i8 0, i8* %26, align 1
  br label %322

322:                                              ; preds = %321, %316
  %323 = load i32, i32* @verbosity, align 4
  %324 = icmp sge i32 %323, 4
  br i1 %324, label %325, label %349

325:                                              ; preds = %322
  %326 = load i32, i32* @stderr, align 4
  %327 = load i8, i8* %28, align 1
  %328 = sext i8 %327 to i32
  %329 = call i32 (i32, i8*, ...) @fprintf(i32 %326, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.13, i64 0, i64 0), i32 %328)
  %330 = load i32, i32* @stderr, align 4
  %331 = load i8, i8* %19, align 1
  %332 = sext i8 %331 to i32
  %333 = load i8, i8* %20, align 1
  %334 = sext i8 %333 to i32
  %335 = load i8, i8* %21, align 1
  %336 = sext i8 %335 to i32
  %337 = load i8, i8* %22, align 1
  %338 = sext i8 %337 to i32
  %339 = load i8, i8* %23, align 1
  %340 = sext i8 %339 to i32
  %341 = load i32, i32* %17, align 4
  %342 = getelementptr inbounds [4 x i8], [4 x i8]* %24, i64 0, i64 0
  %343 = call i32 @char3_to_int(i8* %342)
  %344 = getelementptr inbounds [4 x i8], [4 x i8]* %25, i64 0, i64 0
  %345 = call i32 @char3_to_int(i8* %344)
  %346 = load i8, i8* %26, align 1
  %347 = sext i8 %346 to i32
  %348 = call i32 (i32, i8*, ...) @fprintf(i32 %330, i8* getelementptr inbounds ([110 x i8], [110 x i8]* @.str.14, i64 0, i64 0), i32 %332, i32 %334, i32 %336, i32 %338, i32 %340, i32 %341, i32 %343, i32 %345, i32 %347)
  br label %349

349:                                              ; preds = %325, %322
  %350 = load i32, i32* %29, align 4
  store i32 %350, i32* @incr_version, align 4
  %351 = load i64, i64* %13, align 8
  store i64 %351, i64* @incr_counter_id, align 8
  store i64 0, i64* @incr_version_read, align 8
  %352 = load i32, i32* %29, align 4
  %353 = icmp sge i32 %352, 0
  br i1 %353, label %354, label %357

354:                                              ; preds = %349
  %355 = load i64, i64* @custom_version_names, align 8
  %356 = icmp ne i64 %355, 0
  br i1 %356, label %357, label %363

357:                                              ; preds = %354, %349
  %358 = load i32, i32* %29, align 4
  %359 = icmp slt i32 %358, 0
  br i1 %359, label %360, label %369

360:                                              ; preds = %357
  %361 = load i64, i64* @custom_version_names, align 8
  %362 = icmp ne i64 %361, 0
  br i1 %362, label %363, label %369

363:                                              ; preds = %360, %354
  %364 = load i8*, i8** %9, align 8
  %365 = load i32, i32* %10, align 4
  %366 = call i32 @debug_error(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.15, i64 0, i64 0), i8* %364, i32 %365)
  %367 = load %struct.connection*, %struct.connection** %7, align 8
  %368 = call i32 @not_found(%struct.connection* %367)
  store i32 %368, i32* %6, align 4
  br label %417

369:                                              ; preds = %360, %357
  %370 = load i8, i8* %28, align 1
  %371 = sext i8 %370 to i32
  %372 = icmp ne i32 %371, 0
  br i1 %372, label %373, label %393

373:                                              ; preds = %369
  %374 = load i32, i32* %15, align 4
  %375 = icmp eq i32 %374, -1
  br i1 %375, label %376, label %393

376:                                              ; preds = %373
  %377 = load i64, i64* %13, align 8
  %378 = load i32, i32* %16, align 4
  %379 = load i32, i32* %8, align 4
  %380 = load i32, i32* %15, align 4
  %381 = load i8, i8* %19, align 1
  %382 = load i8, i8* %20, align 1
  %383 = load i8, i8* %21, align 1
  %384 = load i8, i8* %22, align 1
  %385 = load i8, i8* %23, align 1
  %386 = load i32, i32* %17, align 4
  %387 = getelementptr inbounds [4 x i8], [4 x i8]* %24, i64 0, i64 0
  %388 = call i32 @char3_to_int(i8* %387)
  %389 = getelementptr inbounds [4 x i8], [4 x i8]* %25, i64 0, i64 0
  %390 = call i32 @char3_to_int(i8* %389)
  %391 = load i8, i8* %26, align 1
  %392 = call i32 @counter_incr_ext(i64 %377, i32 %378, i32 0, i32 %379, i32 %380, i8 signext %381, i8 signext %382, i8 signext %383, i8 signext %384, i8 signext %385, i32 %386, i32 %388, i32 %390, i8 signext %391)
  br label %399

393:                                              ; preds = %373, %369
  %394 = load i64, i64* %13, align 8
  %395 = load i32, i32* %16, align 4
  %396 = load i32, i32* %8, align 4
  %397 = load i32, i32* %15, align 4
  %398 = call i32 @counter_incr(i64 %394, i32 %395, i32 0, i32 %396, i32 %397)
  br label %399

399:                                              ; preds = %393, %376
  %400 = phi i32 [ %392, %376 ], [ %398, %393 ]
  store i32 %400, i32* %18, align 4
  %401 = load i32, i32* %18, align 4
  %402 = icmp slt i32 %401, 0
  br i1 %402, label %403, label %406

403:                                              ; preds = %399
  %404 = load %struct.connection*, %struct.connection** %7, align 8
  %405 = call i32 @not_found(%struct.connection* %404)
  store i32 %405, i32* %6, align 4
  br label %417

406:                                              ; preds = %399
  %407 = load %struct.connection*, %struct.connection** %7, align 8
  %408 = getelementptr inbounds %struct.connection, %struct.connection* %407, i32 0, i32 0
  %409 = load i32, i32* @stats_buff, align 4
  %410 = load i32, i32* @stats_buff, align 4
  %411 = load i32, i32* %18, align 4
  %412 = call i32 @sprintf(i32 %410, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.16, i64 0, i64 0), i32 %411)
  %413 = call i32 @write_out(i32* %408, i32 %409, i32 %412)
  store i32 0, i32* %6, align 4
  br label %417

414:                                              ; preds = %54, %41
  %415 = load %struct.connection*, %struct.connection** %7, align 8
  %416 = call i32 @not_found(%struct.connection* %415)
  store i32 %416, i32* %6, align 4
  br label %417

417:                                              ; preds = %414, %406, %403, %363, %160, %142, %130, %116, %89, %68
  %418 = load i32, i32* %6, align 4
  ret i32 %418
}

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i32 @debug_key(i8*, i32) #1

declare dso_local i32 @get_at_prefix_length(i8*, i32) #1

declare dso_local i32 @memcmp(i8*, i8*, i32) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i64 @strtoll(i8*, i8**, i32) #1

declare dso_local i32 @debug_error(i8*, i8*, i8*, i32) #1

declare dso_local i32 @not_found(%struct.connection*) #1

declare dso_local i64 @strtol(i8*, i8**, i32) #1

declare dso_local i32 @sscanf(i8*, i8*, i32*, i8*, i8*, i8*) #1

declare dso_local i32 @char3_to_int(i8*) #1

declare dso_local i32 @counter_incr_ext(i64, i32, i32, i32, i32, i8 signext, i8 signext, i8 signext, i8 signext, i8 signext, i32, i32, i32, i8 signext) #1

declare dso_local i32 @counter_incr(i64, i32, i32, i32, i32) #1

declare dso_local i32 @write_out(i32*, i32, i32) #1

declare dso_local i32 @sprintf(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
