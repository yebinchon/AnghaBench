; ModuleID = '/home/carl/AnghaBench/kphp-kdb/isearch/extr_isearch-engine.c_memcache_get.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/isearch/extr_isearch-engine.c_memcache_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.connection = type { i32 }

@INIT = common dso_local global i32 0, align 4
@verbosity = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"memcache_get: key='%s', key_len=%d\0A\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"hints\00", align 1
@get = common dso_local global i32 0, align 4
@buf = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [24 x i8] c"run get_hints (%s, %d)\0A\00", align 1
@MAX_VALUE_LEN = common dso_local global i32 0, align 4
@cmd_time = common dso_local global double 0.000000e+00, align 8
@.str.3 = private unnamed_addr constant [47 x i8] c"Warning!!! Search query (%s) was %lf seconds.\0A\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"suggestion\00", align 1
@.str.5 = private unnamed_addr constant [25 x i8] c"run get_suggestion (%s)\0A\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"stats\00", align 1
@stats_buff = common dso_local global i8* null, align 8
@STATS_BUFF_SIZE = common dso_local global i64 0, align 8
@.str.7 = private unnamed_addr constant [4 x i8] c"top\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c"top%d\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"best\00", align 1
@.str.10 = private unnamed_addr constant [7 x i8] c"best%d\00", align 1
@.str.11 = private unnamed_addr constant [11 x i8] c"black_list\00", align 1
@.str.12 = private unnamed_addr constant [17 x i8] c"black_list_force\00", align 1

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
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i8*, align 8
  %19 = alloca i32, align 4
  store %struct.connection* %0, %struct.connection** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %20 = load i32, i32* @INIT, align 4
  %21 = load i32, i32* @verbosity, align 4
  %22 = icmp sgt i32 %21, 1
  br i1 %22, label %23, label %28

23:                                               ; preds = %3
  %24 = load i32, i32* @stderr, align 4
  %25 = load i8*, i8** %6, align 8
  %26 = load i32, i32* %7, align 4
  %27 = call i32 (i32, i8*, i8*, ...) @fprintf(i32 %24, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i8* %25, i32 %26)
  br label %28

28:                                               ; preds = %23, %3
  %29 = load i8*, i8** %6, align 8
  %30 = load i32, i32* %7, align 4
  %31 = call i32 @eat_at(i8* %29, i32 %30, i8** %8, i32* %9)
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %32 = load i32, i32* %9, align 4
  %33 = icmp sge i32 %32, 5
  br i1 %33, label %34, label %39

34:                                               ; preds = %28
  %35 = load i8*, i8** %8, align 8
  %36 = call i32 @strncmp(i8* %35, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 5)
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %39, label %38

38:                                               ; preds = %34
  store i32 1, i32* %10, align 4
  store i32 5, i32* %11, align 4
  br label %39

39:                                               ; preds = %38, %34, %28
  %40 = load i32, i32* %10, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %118

42:                                               ; preds = %39
  %43 = load i8*, i8** %8, align 8
  %44 = load i32, i32* %11, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i8, i8* %43, i64 %45
  %47 = load i8, i8* %46, align 1
  %48 = sext i8 %47 to i32
  %49 = icmp ne i32 %48, 40
  br i1 %49, label %59, label %50

50:                                               ; preds = %42
  %51 = load i8*, i8** %8, align 8
  %52 = load i32, i32* %9, align 4
  %53 = sub nsw i32 %52, 1
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i8, i8* %51, i64 %54
  %56 = load i8, i8* %55, align 1
  %57 = sext i8 %56 to i32
  %58 = icmp ne i32 %57, 41
  br i1 %58, label %59, label %62

59:                                               ; preds = %50, %42
  %60 = load i32, i32* @get, align 4
  %61 = call i32 @RETURN(i32 %60, i32 0)
  br label %62

62:                                               ; preds = %59, %50
  %63 = load i32, i32* %9, align 4
  %64 = load i32, i32* %11, align 4
  %65 = sub nsw i32 %63, %64
  %66 = sub nsw i32 %65, 2
  store i32 %66, i32* %12, align 4
  %67 = load i8*, i8** @buf, align 8
  %68 = load i8*, i8** %8, align 8
  %69 = load i32, i32* %11, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i8, i8* %68, i64 %70
  %72 = getelementptr inbounds i8, i8* %71, i64 1
  %73 = load i32, i32* %12, align 4
  %74 = sext i32 %73 to i64
  %75 = mul i64 1, %74
  %76 = trunc i64 %75 to i32
  %77 = call i32 @memcpy(i8* %67, i8* %72, i32 %76)
  %78 = load i8*, i8** @buf, align 8
  %79 = load i32, i32* %12, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i8, i8* %78, i64 %80
  store i8 0, i8* %81, align 1
  %82 = load i32, i32* @verbosity, align 4
  %83 = icmp sge i32 %82, 2
  br i1 %83, label %84, label %89

84:                                               ; preds = %62
  %85 = load i32, i32* @stderr, align 4
  %86 = load i8*, i8** @buf, align 8
  %87 = load i32, i32* %10, align 4
  %88 = call i32 (i32, i8*, i8*, ...) @fprintf(i32 %85, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0), i8* %86, i32 %87)
  br label %89

89:                                               ; preds = %84, %62
  %90 = load i8*, i8** @buf, align 8
  %91 = load i32, i32* %10, align 4
  %92 = load i32, i32* @MAX_VALUE_LEN, align 4
  %93 = call i32 @get_hints(i8* %90, i32 %91, i32 %92)
  %94 = load %struct.connection*, %struct.connection** %5, align 8
  %95 = load i8*, i8** %6, align 8
  %96 = load i8*, i8** @buf, align 8
  %97 = load i8*, i8** @buf, align 8
  %98 = call i32 @strlen(i8* %97)
  %99 = call i32 @return_one_key(%struct.connection* %94, i8* %95, i8* %96, i32 %98)
  %100 = load i32, i32* @verbosity, align 4
  %101 = icmp sgt i32 %100, 0
  br i1 %101, label %102, label %115

102:                                              ; preds = %89
  %103 = call double (...) @mytime()
  %104 = load double, double* @cmd_time, align 8
  %105 = fadd double %103, %104
  %106 = fcmp ogt double %105, 5.000000e-03
  br i1 %106, label %107, label %114

107:                                              ; preds = %102
  %108 = load i32, i32* @stderr, align 4
  %109 = load i8*, i8** %8, align 8
  %110 = call double (...) @mytime()
  %111 = load double, double* @cmd_time, align 8
  %112 = fadd double %110, %111
  %113 = call i32 (i32, i8*, i8*, ...) @fprintf(i32 %108, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.3, i64 0, i64 0), i8* %109, double %112)
  br label %114

114:                                              ; preds = %107, %102
  br label %115

115:                                              ; preds = %114, %89
  %116 = load i32, i32* @get, align 4
  %117 = call i32 @RETURN(i32 %116, i32 0)
  br label %118

118:                                              ; preds = %115, %39
  %119 = load i32, i32* %9, align 4
  %120 = icmp sge i32 %119, 10
  br i1 %120, label %121, label %192

121:                                              ; preds = %118
  %122 = load i8*, i8** %8, align 8
  %123 = call i32 @strncmp(i8* %122, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0), i32 10)
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %192, label %125

125:                                              ; preds = %121
  %126 = load i8*, i8** %8, align 8
  %127 = getelementptr inbounds i8, i8* %126, i64 10
  %128 = load i8, i8* %127, align 1
  %129 = sext i8 %128 to i32
  %130 = icmp ne i32 %129, 40
  br i1 %130, label %140, label %131

131:                                              ; preds = %125
  %132 = load i8*, i8** %8, align 8
  %133 = load i32, i32* %9, align 4
  %134 = sub nsw i32 %133, 1
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds i8, i8* %132, i64 %135
  %137 = load i8, i8* %136, align 1
  %138 = sext i8 %137 to i32
  %139 = icmp ne i32 %138, 41
  br i1 %139, label %140, label %143

140:                                              ; preds = %131, %125
  %141 = load i32, i32* @get, align 4
  %142 = call i32 @RETURN(i32 %141, i32 0)
  br label %143

143:                                              ; preds = %140, %131
  %144 = load i32, i32* %9, align 4
  %145 = sub nsw i32 %144, 12
  store i32 %145, i32* %13, align 4
  %146 = load i8*, i8** @buf, align 8
  %147 = load i8*, i8** %8, align 8
  %148 = getelementptr inbounds i8, i8* %147, i64 11
  %149 = load i32, i32* %13, align 4
  %150 = sext i32 %149 to i64
  %151 = mul i64 1, %150
  %152 = trunc i64 %151 to i32
  %153 = call i32 @memcpy(i8* %146, i8* %148, i32 %152)
  %154 = load i8*, i8** @buf, align 8
  %155 = load i32, i32* %13, align 4
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds i8, i8* %154, i64 %156
  store i8 0, i8* %157, align 1
  %158 = load i32, i32* @verbosity, align 4
  %159 = icmp sge i32 %158, 2
  br i1 %159, label %160, label %164

160:                                              ; preds = %143
  %161 = load i32, i32* @stderr, align 4
  %162 = load i8*, i8** @buf, align 8
  %163 = call i32 (i32, i8*, i8*, ...) @fprintf(i32 %161, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.5, i64 0, i64 0), i8* %162)
  br label %164

164:                                              ; preds = %160, %143
  %165 = load i8*, i8** @buf, align 8
  %166 = load i32, i32* @MAX_VALUE_LEN, align 4
  %167 = call i32 @get_suggestion(i8* %165, i32 %166)
  %168 = load %struct.connection*, %struct.connection** %5, align 8
  %169 = load i8*, i8** %6, align 8
  %170 = load i8*, i8** @buf, align 8
  %171 = load i8*, i8** @buf, align 8
  %172 = call i32 @strlen(i8* %171)
  %173 = call i32 @return_one_key(%struct.connection* %168, i8* %169, i8* %170, i32 %172)
  %174 = load i32, i32* @verbosity, align 4
  %175 = icmp sgt i32 %174, 0
  br i1 %175, label %176, label %189

176:                                              ; preds = %164
  %177 = call double (...) @mytime()
  %178 = load double, double* @cmd_time, align 8
  %179 = fadd double %177, %178
  %180 = fcmp ogt double %179, 5.000000e-03
  br i1 %180, label %181, label %188

181:                                              ; preds = %176
  %182 = load i32, i32* @stderr, align 4
  %183 = load i8*, i8** %8, align 8
  %184 = call double (...) @mytime()
  %185 = load double, double* @cmd_time, align 8
  %186 = fadd double %184, %185
  %187 = call i32 (i32, i8*, i8*, ...) @fprintf(i32 %182, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.3, i64 0, i64 0), i8* %183, double %186)
  br label %188

188:                                              ; preds = %181, %176
  br label %189

189:                                              ; preds = %188, %164
  %190 = load i32, i32* @get, align 4
  %191 = call i32 @RETURN(i32 %190, i32 0)
  br label %192

192:                                              ; preds = %189, %121, %118
  %193 = load i32, i32* %9, align 4
  %194 = icmp sge i32 %193, 5
  br i1 %194, label %195, label %219

195:                                              ; preds = %192
  %196 = load i8*, i8** %8, align 8
  %197 = call i32 @strncmp(i8* %196, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0), i32 5)
  %198 = icmp ne i32 %197, 0
  br i1 %198, label %219, label %199

199:                                              ; preds = %195
  %200 = call i32 (...) @isearch_prepare_stats()
  store i32 %200, i32* %14, align 4
  %201 = load %struct.connection*, %struct.connection** %5, align 8
  %202 = load i8*, i8** @stats_buff, align 8
  %203 = load i32, i32* %14, align 4
  %204 = sext i32 %203 to i64
  %205 = getelementptr inbounds i8, i8* %202, i64 %204
  %206 = load i64, i64* @STATS_BUFF_SIZE, align 8
  %207 = load i32, i32* %14, align 4
  %208 = sext i32 %207 to i64
  %209 = sub nsw i64 %206, %208
  %210 = call i32 @prepare_stats(%struct.connection* %201, i8* %205, i64 %209)
  store i32 %210, i32* %15, align 4
  %211 = load %struct.connection*, %struct.connection** %5, align 8
  %212 = load i8*, i8** %6, align 8
  %213 = load i8*, i8** @stats_buff, align 8
  %214 = load i32, i32* %14, align 4
  %215 = load i32, i32* %15, align 4
  %216 = add nsw i32 %214, %215
  %217 = sub nsw i32 %216, 1
  %218 = call i32 @return_one_key(%struct.connection* %211, i8* %212, i8* %213, i32 %217)
  store i32 0, i32* %4, align 4
  br label %300

219:                                              ; preds = %195, %192
  %220 = load i32, i32* %9, align 4
  %221 = icmp sge i32 %220, 3
  br i1 %221, label %222, label %244

222:                                              ; preds = %219
  %223 = load i8*, i8** %8, align 8
  %224 = call i32 @strncmp(i8* %223, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0), i32 3)
  %225 = icmp ne i32 %224, 0
  br i1 %225, label %244, label %226

226:                                              ; preds = %222
  %227 = load i8*, i8** %8, align 8
  %228 = call i32 @sscanf(i8* %227, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i64 0, i64 0), i32* %16)
  %229 = icmp eq i32 %228, 1
  br i1 %229, label %230, label %241

230:                                              ; preds = %226
  %231 = load i8*, i8** @buf, align 8
  %232 = load i32, i32* %16, align 4
  %233 = load i32, i32* @MAX_VALUE_LEN, align 4
  %234 = call i32 @get_top(i8* %231, i32 %232, i32 %233)
  %235 = load %struct.connection*, %struct.connection** %5, align 8
  %236 = load i8*, i8** %6, align 8
  %237 = load i8*, i8** @buf, align 8
  %238 = load i8*, i8** @buf, align 8
  %239 = call i32 @strlen(i8* %238)
  %240 = call i32 @return_one_key(%struct.connection* %235, i8* %236, i8* %237, i32 %239)
  br label %241

241:                                              ; preds = %230, %226
  %242 = load i32, i32* @get, align 4
  %243 = call i32 @RETURN(i32 %242, i32 0)
  br label %244

244:                                              ; preds = %241, %222, %219
  %245 = load i32, i32* %9, align 4
  %246 = icmp sge i32 %245, 4
  br i1 %246, label %247, label %269

247:                                              ; preds = %244
  %248 = load i8*, i8** %8, align 8
  %249 = call i32 @strncmp(i8* %248, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i64 0, i64 0), i32 4)
  %250 = icmp ne i32 %249, 0
  br i1 %250, label %269, label %251

251:                                              ; preds = %247
  %252 = load i8*, i8** %8, align 8
  %253 = call i32 @sscanf(i8* %252, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i64 0, i64 0), i32* %17)
  %254 = icmp eq i32 %253, 1
  br i1 %254, label %255, label %266

255:                                              ; preds = %251
  %256 = load i8*, i8** @buf, align 8
  %257 = load i32, i32* %17, align 4
  %258 = load i32, i32* @MAX_VALUE_LEN, align 4
  %259 = call i32 @get_best(i8* %256, i32 %257, i32 %258)
  %260 = load %struct.connection*, %struct.connection** %5, align 8
  %261 = load i8*, i8** %6, align 8
  %262 = load i8*, i8** @buf, align 8
  %263 = load i8*, i8** @buf, align 8
  %264 = call i32 @strlen(i8* %263)
  %265 = call i32 @return_one_key(%struct.connection* %260, i8* %261, i8* %262, i32 %264)
  br label %266

266:                                              ; preds = %255, %251
  %267 = load i32, i32* @get, align 4
  %268 = call i32 @RETURN(i32 %267, i32 0)
  br label %269

269:                                              ; preds = %266, %247, %244
  %270 = load i32, i32* %9, align 4
  %271 = icmp sge i32 %270, 10
  br i1 %271, label %272, label %297

272:                                              ; preds = %269
  %273 = load i8*, i8** %8, align 8
  %274 = call i32 @strncmp(i8* %273, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.11, i64 0, i64 0), i32 10)
  %275 = icmp ne i32 %274, 0
  br i1 %275, label %297, label %276

276:                                              ; preds = %272
  %277 = load i32, i32* %9, align 4
  %278 = icmp sge i32 %277, 16
  br i1 %278, label %279, label %285

279:                                              ; preds = %276
  %280 = load i8*, i8** %8, align 8
  %281 = call i32 @strncmp(i8* %280, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.12, i64 0, i64 0), i32 16)
  %282 = icmp ne i32 %281, 0
  br i1 %282, label %285, label %283

283:                                              ; preds = %279
  %284 = call i32 (...) @black_list_force()
  br label %294

285:                                              ; preds = %279, %276
  %286 = call i8* (...) @black_list_get()
  store i8* %286, i8** %18, align 8
  %287 = load i8*, i8** %18, align 8
  %288 = call i32 @strlen(i8* %287)
  store i32 %288, i32* %19, align 4
  %289 = load %struct.connection*, %struct.connection** %5, align 8
  %290 = load i8*, i8** %6, align 8
  %291 = load i8*, i8** %18, align 8
  %292 = load i32, i32* %19, align 4
  %293 = call i32 @return_one_key(%struct.connection* %289, i8* %290, i8* %291, i32 %292)
  br label %294

294:                                              ; preds = %285, %283
  %295 = load i32, i32* @get, align 4
  %296 = call i32 @RETURN(i32 %295, i32 0)
  br label %297

297:                                              ; preds = %294, %272, %269
  %298 = load i32, i32* @get, align 4
  %299 = call i32 @RETURN(i32 %298, i32 0)
  br label %300

300:                                              ; preds = %297, %199
  %301 = load i32, i32* %4, align 4
  ret i32 %301
}

declare dso_local i32 @fprintf(i32, i8*, i8*, ...) #1

declare dso_local i32 @eat_at(i8*, i32, i8**, i32*) #1

declare dso_local i32 @strncmp(i8*, i8*, i32) #1

declare dso_local i32 @RETURN(i32, i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @get_hints(i8*, i32, i32) #1

declare dso_local i32 @return_one_key(%struct.connection*, i8*, i8*, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local double @mytime(...) #1

declare dso_local i32 @get_suggestion(i8*, i32) #1

declare dso_local i32 @isearch_prepare_stats(...) #1

declare dso_local i32 @prepare_stats(%struct.connection*, i8*, i64) #1

declare dso_local i32 @sscanf(i8*, i8*, i32*) #1

declare dso_local i32 @get_top(i8*, i32, i32) #1

declare dso_local i32 @get_best(i8*, i32, i32) #1

declare dso_local i32 @black_list_force(...) #1

declare dso_local i8* @black_list_get(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
