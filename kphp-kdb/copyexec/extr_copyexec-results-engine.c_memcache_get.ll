; ModuleID = '/home/carl/AnghaBench/kphp-kdb/copyexec/extr_copyexec-results-engine.c_memcache_get.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/copyexec/extr_copyexec-results-engine.c_memcache_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.connection = type { i32 }

@cmd_get = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"stats\00", align 1
@stats_buff = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [7 x i8] c"rfreqs\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"%llu,%d\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"sfreqs\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"srfreqs\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"rhosts\00", align 1
@.str.6 = private unnamed_addr constant [14 x i8] c"%llu,%d,%u,%u\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"shosts\00", align 1
@.str.8 = private unnamed_addr constant [18 x i8] c"%llu,%d,%31[a-z_]\00", align 1
@.str.9 = private unnamed_addr constant [8 x i8] c"srhosts\00", align 1
@.str.10 = private unnamed_addr constant [23 x i8] c"%llu,%d,%31[a-z_]:0x%x\00", align 1
@.str.11 = private unnamed_addr constant [8 x i8] c"volumes\00", align 1
@.str.12 = private unnamed_addr constant [10 x i8] c"deadhosts\00", align 1
@.str.13 = private unnamed_addr constant [15 x i8] c"deadhosts_full\00", align 1
@.str.14 = private unnamed_addr constant [11 x i8] c"collisions\00", align 1
@.str.15 = private unnamed_addr constant [7 x i8] c"enable\00", align 1
@.str.16 = private unnamed_addr constant [7 x i8] c"0x%llx\00", align 1
@.str.17 = private unnamed_addr constant [2 x i8] c"1\00", align 1
@.str.18 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@.str.19 = private unnamed_addr constant [8 x i8] c"disable\00", align 1
@.str.20 = private unnamed_addr constant [14 x i8] c"list_disabled\00", align 1
@.str.21 = private unnamed_addr constant [5 x i8] c"%llu\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @memcache_get(%struct.connection* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.connection*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca [32 x i8], align 16
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i8*, align 8
  %20 = alloca i8*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i8*, align 8
  %23 = alloca i8*, align 8
  %24 = alloca i32, align 4
  %25 = alloca i8*, align 8
  %26 = alloca i32, align 4
  %27 = alloca i8*, align 8
  %28 = alloca i8*, align 8
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca i8*, align 8
  store %struct.connection* %0, %struct.connection** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %32 = load i32, i32* @cmd_get, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* @cmd_get, align 4
  store i64 0, i64* %8, align 8
  store i64 0, i64* %9, align 8
  store i32 0, i32* %10, align 4
  %34 = load i8*, i8** %6, align 8
  %35 = load i32, i32* %7, align 4
  %36 = call i32 @get_at_prefix_length(i8* %34, i32 %35)
  store i32 %36, i32* %12, align 4
  %37 = load i32, i32* %12, align 4
  %38 = load i8*, i8** %6, align 8
  %39 = sext i32 %37 to i64
  %40 = getelementptr inbounds i8, i8* %38, i64 %39
  store i8* %40, i8** %6, align 8
  %41 = load i32, i32* %12, align 4
  %42 = load i32, i32* %7, align 4
  %43 = sub nsw i32 %42, %41
  store i32 %43, i32* %7, align 4
  %44 = load i32, i32* %7, align 4
  %45 = icmp sge i32 %44, 5
  br i1 %45, label %46, label %62

46:                                               ; preds = %3
  %47 = load i8*, i8** %6, align 8
  %48 = call i32 @strncmp(i8* %47, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 5)
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %62, label %50

50:                                               ; preds = %46
  %51 = load %struct.connection*, %struct.connection** %5, align 8
  %52 = call i32 @copyexec_results_prepare_stats(%struct.connection* %51)
  store i32 %52, i32* %13, align 4
  %53 = load %struct.connection*, %struct.connection** %5, align 8
  %54 = load i8*, i8** %6, align 8
  %55 = load i32, i32* %12, align 4
  %56 = sext i32 %55 to i64
  %57 = sub i64 0, %56
  %58 = getelementptr inbounds i8, i8* %54, i64 %57
  %59 = load i8*, i8** @stats_buff, align 8
  %60 = load i32, i32* %13, align 4
  %61 = call i32 @return_one_key(%struct.connection* %53, i8* %58, i8* %59, i32 %60)
  store i32 %61, i32* %4, align 4
  br label %467

62:                                               ; preds = %46, %3
  %63 = load i32, i32* %7, align 4
  %64 = icmp sge i32 %63, 6
  br i1 %64, label %65, label %95

65:                                               ; preds = %62
  %66 = load i8*, i8** %6, align 8
  %67 = call i32 @memcmp(i8* %66, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 6)
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %95, label %69

69:                                               ; preds = %65
  %70 = load i8*, i8** %6, align 8
  %71 = getelementptr inbounds i8, i8* %70, i64 6
  %72 = call i32 (i8*, i8*, i64*, ...) @sscanf(i8* %71, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i64* %8, i32* %10)
  %73 = icmp eq i32 %72, 2
  br i1 %73, label %74, label %94

74:                                               ; preds = %69
  %75 = load i64, i64* %8, align 8
  %76 = load i32, i32* %10, align 4
  %77 = call i8* @get_results_freqs(i64 %75, i32 %76)
  store i8* %77, i8** %14, align 8
  %78 = load i8*, i8** %14, align 8
  %79 = icmp ne i8* %78, null
  br i1 %79, label %80, label %93

80:                                               ; preds = %74
  %81 = load %struct.connection*, %struct.connection** %5, align 8
  %82 = load i8*, i8** %6, align 8
  %83 = load i32, i32* %12, align 4
  %84 = sext i32 %83 to i64
  %85 = sub i64 0, %84
  %86 = getelementptr inbounds i8, i8* %82, i64 %85
  %87 = load i8*, i8** %14, align 8
  %88 = load i8*, i8** %14, align 8
  %89 = call i32 @strlen(i8* %88)
  %90 = call i32 @return_one_key(%struct.connection* %81, i8* %86, i8* %87, i32 %89)
  %91 = load i8*, i8** %14, align 8
  %92 = call i32 @free(i8* %91)
  store i32 0, i32* %4, align 4
  br label %467

93:                                               ; preds = %74
  br label %94

94:                                               ; preds = %93, %69
  br label %95

95:                                               ; preds = %94, %65, %62
  %96 = load i32, i32* %7, align 4
  %97 = icmp sge i32 %96, 6
  br i1 %97, label %98, label %128

98:                                               ; preds = %95
  %99 = load i8*, i8** %6, align 8
  %100 = call i32 @memcmp(i8* %99, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i32 6)
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %128, label %102

102:                                              ; preds = %98
  %103 = load i8*, i8** %6, align 8
  %104 = getelementptr inbounds i8, i8* %103, i64 6
  %105 = call i32 (i8*, i8*, i64*, ...) @sscanf(i8* %104, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i64* %8, i32* %10)
  %106 = icmp eq i32 %105, 2
  br i1 %106, label %107, label %127

107:                                              ; preds = %102
  %108 = load i64, i64* %8, align 8
  %109 = load i32, i32* %10, align 4
  %110 = call i8* @get_status_freqs(i64 %108, i32 %109)
  store i8* %110, i8** %15, align 8
  %111 = load i8*, i8** %15, align 8
  %112 = icmp ne i8* %111, null
  br i1 %112, label %113, label %126

113:                                              ; preds = %107
  %114 = load %struct.connection*, %struct.connection** %5, align 8
  %115 = load i8*, i8** %6, align 8
  %116 = load i32, i32* %12, align 4
  %117 = sext i32 %116 to i64
  %118 = sub i64 0, %117
  %119 = getelementptr inbounds i8, i8* %115, i64 %118
  %120 = load i8*, i8** %15, align 8
  %121 = load i8*, i8** %15, align 8
  %122 = call i32 @strlen(i8* %121)
  %123 = call i32 @return_one_key(%struct.connection* %114, i8* %119, i8* %120, i32 %122)
  %124 = load i8*, i8** %15, align 8
  %125 = call i32 @free(i8* %124)
  store i32 0, i32* %4, align 4
  br label %467

126:                                              ; preds = %107
  br label %127

127:                                              ; preds = %126, %102
  br label %128

128:                                              ; preds = %127, %98, %95
  %129 = load i32, i32* %7, align 4
  %130 = icmp sge i32 %129, 7
  br i1 %130, label %131, label %161

131:                                              ; preds = %128
  %132 = load i8*, i8** %6, align 8
  %133 = call i32 @memcmp(i8* %132, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), i32 7)
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %161, label %135

135:                                              ; preds = %131
  %136 = load i8*, i8** %6, align 8
  %137 = getelementptr inbounds i8, i8* %136, i64 7
  %138 = call i32 (i8*, i8*, i64*, ...) @sscanf(i8* %137, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i64* %8, i32* %10)
  %139 = icmp eq i32 %138, 2
  br i1 %139, label %140, label %160

140:                                              ; preds = %135
  %141 = load i64, i64* %8, align 8
  %142 = load i32, i32* %10, align 4
  %143 = call i8* @get_status_results_freqs(i64 %141, i32 %142)
  store i8* %143, i8** %16, align 8
  %144 = load i8*, i8** %16, align 8
  %145 = icmp ne i8* %144, null
  br i1 %145, label %146, label %159

146:                                              ; preds = %140
  %147 = load %struct.connection*, %struct.connection** %5, align 8
  %148 = load i8*, i8** %6, align 8
  %149 = load i32, i32* %12, align 4
  %150 = sext i32 %149 to i64
  %151 = sub i64 0, %150
  %152 = getelementptr inbounds i8, i8* %148, i64 %151
  %153 = load i8*, i8** %16, align 8
  %154 = load i8*, i8** %16, align 8
  %155 = call i32 @strlen(i8* %154)
  %156 = call i32 @return_one_key(%struct.connection* %147, i8* %152, i8* %153, i32 %155)
  %157 = load i8*, i8** %16, align 8
  %158 = call i32 @free(i8* %157)
  store i32 0, i32* %4, align 4
  br label %467

159:                                              ; preds = %140
  br label %160

160:                                              ; preds = %159, %135
  br label %161

161:                                              ; preds = %160, %131, %128
  %162 = load i32, i32* %7, align 4
  %163 = icmp sge i32 %162, 6
  br i1 %163, label %164, label %196

164:                                              ; preds = %161
  %165 = load i8*, i8** %6, align 8
  %166 = call i32 @memcmp(i8* %165, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), i32 6)
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %196, label %168

168:                                              ; preds = %164
  %169 = load i8*, i8** %6, align 8
  %170 = getelementptr inbounds i8, i8* %169, i64 5
  %171 = call i32 (i8*, i8*, i64*, ...) @sscanf(i8* %170, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i64 0, i64 0), i64* %8, i32* %10, i32* %17, i32* %18)
  %172 = icmp eq i32 %171, 4
  br i1 %172, label %173, label %195

173:                                              ; preds = %168
  %174 = load i64, i64* %8, align 8
  %175 = load i32, i32* %10, align 4
  %176 = load i32, i32* %17, align 4
  %177 = load i32, i32* %18, align 4
  %178 = call i8* @get_hosts_list(i64 %174, i32 %175, i32 %176, i32 %177)
  store i8* %178, i8** %19, align 8
  %179 = load i8*, i8** %19, align 8
  %180 = icmp ne i8* %179, null
  br i1 %180, label %181, label %194

181:                                              ; preds = %173
  %182 = load %struct.connection*, %struct.connection** %5, align 8
  %183 = load i8*, i8** %6, align 8
  %184 = load i32, i32* %12, align 4
  %185 = sext i32 %184 to i64
  %186 = sub i64 0, %185
  %187 = getelementptr inbounds i8, i8* %183, i64 %186
  %188 = load i8*, i8** %19, align 8
  %189 = load i8*, i8** %19, align 8
  %190 = call i32 @strlen(i8* %189)
  %191 = call i32 @return_one_key(%struct.connection* %182, i8* %187, i8* %188, i32 %190)
  %192 = load i8*, i8** %19, align 8
  %193 = call i32 @free(i8* %192)
  store i32 0, i32* %4, align 4
  br label %467

194:                                              ; preds = %173
  br label %195

195:                                              ; preds = %194, %168
  br label %196

196:                                              ; preds = %195, %164, %161
  %197 = load i32, i32* %7, align 4
  %198 = icmp sge i32 %197, 6
  br i1 %198, label %199, label %231

199:                                              ; preds = %196
  %200 = load i8*, i8** %6, align 8
  %201 = call i32 @memcmp(i8* %200, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0), i32 6)
  %202 = icmp ne i32 %201, 0
  br i1 %202, label %231, label %203

203:                                              ; preds = %199
  %204 = load i8*, i8** %6, align 8
  %205 = getelementptr inbounds i8, i8* %204, i64 6
  %206 = getelementptr inbounds [32 x i8], [32 x i8]* %11, i64 0, i64 0
  %207 = call i32 (i8*, i8*, i64*, ...) @sscanf(i8* %205, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.8, i64 0, i64 0), i64* %8, i32* %10, i8* %206)
  %208 = icmp eq i32 %207, 3
  br i1 %208, label %209, label %230

209:                                              ; preds = %203
  %210 = load i64, i64* %8, align 8
  %211 = load i32, i32* %10, align 4
  %212 = getelementptr inbounds [32 x i8], [32 x i8]* %11, i64 0, i64 0
  %213 = call i8* @get_hosts_list_by_status(i64 %210, i32 %211, i8* %212)
  store i8* %213, i8** %20, align 8
  %214 = load i8*, i8** %20, align 8
  %215 = icmp ne i8* %214, null
  br i1 %215, label %216, label %229

216:                                              ; preds = %209
  %217 = load %struct.connection*, %struct.connection** %5, align 8
  %218 = load i8*, i8** %6, align 8
  %219 = load i32, i32* %12, align 4
  %220 = sext i32 %219 to i64
  %221 = sub i64 0, %220
  %222 = getelementptr inbounds i8, i8* %218, i64 %221
  %223 = load i8*, i8** %20, align 8
  %224 = load i8*, i8** %20, align 8
  %225 = call i32 @strlen(i8* %224)
  %226 = call i32 @return_one_key(%struct.connection* %217, i8* %222, i8* %223, i32 %225)
  %227 = load i8*, i8** %20, align 8
  %228 = call i32 @free(i8* %227)
  store i32 0, i32* %4, align 4
  br label %467

229:                                              ; preds = %209
  br label %230

230:                                              ; preds = %229, %203
  br label %231

231:                                              ; preds = %230, %199, %196
  %232 = load i32, i32* %7, align 4
  %233 = icmp sge i32 %232, 7
  br i1 %233, label %234, label %267

234:                                              ; preds = %231
  %235 = load i8*, i8** %6, align 8
  %236 = call i32 @memcmp(i8* %235, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i64 0, i64 0), i32 7)
  %237 = icmp ne i32 %236, 0
  br i1 %237, label %267, label %238

238:                                              ; preds = %234
  %239 = load i8*, i8** %6, align 8
  %240 = getelementptr inbounds i8, i8* %239, i64 7
  %241 = getelementptr inbounds [32 x i8], [32 x i8]* %11, i64 0, i64 0
  %242 = call i32 (i8*, i8*, i64*, ...) @sscanf(i8* %240, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.10, i64 0, i64 0), i64* %8, i32* %10, i8* %241, i32* %21)
  %243 = icmp eq i32 %242, 4
  br i1 %243, label %244, label %266

244:                                              ; preds = %238
  %245 = load i64, i64* %8, align 8
  %246 = load i32, i32* %10, align 4
  %247 = getelementptr inbounds [32 x i8], [32 x i8]* %11, i64 0, i64 0
  %248 = load i32, i32* %21, align 4
  %249 = call i8* @get_hosts_list_by_status_and_result(i64 %245, i32 %246, i8* %247, i32 %248)
  store i8* %249, i8** %22, align 8
  %250 = load i8*, i8** %22, align 8
  %251 = icmp ne i8* %250, null
  br i1 %251, label %252, label %265

252:                                              ; preds = %244
  %253 = load %struct.connection*, %struct.connection** %5, align 8
  %254 = load i8*, i8** %6, align 8
  %255 = load i32, i32* %12, align 4
  %256 = sext i32 %255 to i64
  %257 = sub i64 0, %256
  %258 = getelementptr inbounds i8, i8* %254, i64 %257
  %259 = load i8*, i8** %22, align 8
  %260 = load i8*, i8** %22, align 8
  %261 = call i32 @strlen(i8* %260)
  %262 = call i32 @return_one_key(%struct.connection* %253, i8* %258, i8* %259, i32 %261)
  %263 = load i8*, i8** %22, align 8
  %264 = call i32 @free(i8* %263)
  store i32 0, i32* %4, align 4
  br label %467

265:                                              ; preds = %244
  br label %266

266:                                              ; preds = %265, %238
  br label %267

267:                                              ; preds = %266, %234, %231
  %268 = load i32, i32* %7, align 4
  %269 = icmp eq i32 %268, 7
  br i1 %269, label %270, label %292

270:                                              ; preds = %267
  %271 = load i8*, i8** %6, align 8
  %272 = call i32 @memcmp(i8* %271, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.11, i64 0, i64 0), i32 7)
  %273 = icmp ne i32 %272, 0
  br i1 %273, label %292, label %274

274:                                              ; preds = %270
  %275 = call i8* (...) @get_volumes()
  store i8* %275, i8** %23, align 8
  %276 = load i8*, i8** %23, align 8
  %277 = icmp ne i8* %276, null
  br i1 %277, label %278, label %291

278:                                              ; preds = %274
  %279 = load %struct.connection*, %struct.connection** %5, align 8
  %280 = load i8*, i8** %6, align 8
  %281 = load i32, i32* %12, align 4
  %282 = sext i32 %281 to i64
  %283 = sub i64 0, %282
  %284 = getelementptr inbounds i8, i8* %280, i64 %283
  %285 = load i8*, i8** %23, align 8
  %286 = load i8*, i8** %23, align 8
  %287 = call i32 @strlen(i8* %286)
  %288 = call i32 @return_one_key(%struct.connection* %279, i8* %284, i8* %285, i32 %287)
  %289 = load i8*, i8** %23, align 8
  %290 = call i32 @free(i8* %289)
  store i32 0, i32* %4, align 4
  br label %467

291:                                              ; preds = %274
  br label %292

292:                                              ; preds = %291, %270, %267
  %293 = load i32, i32* %7, align 4
  %294 = icmp sge i32 %293, 9
  br i1 %294, label %295, label %325

295:                                              ; preds = %292
  %296 = load i8*, i8** %6, align 8
  %297 = call i32 @memcmp(i8* %296, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.12, i64 0, i64 0), i32 9)
  %298 = icmp ne i32 %297, 0
  br i1 %298, label %325, label %299

299:                                              ; preds = %295
  %300 = load i8*, i8** %6, align 8
  %301 = getelementptr inbounds i8, i8* %300, i64 9
  %302 = call i32 (i8*, i8*, i64*, ...) @sscanf(i8* %301, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i64* %8, i32* %24)
  %303 = icmp eq i32 %302, 2
  br i1 %303, label %304, label %324

304:                                              ; preds = %299
  %305 = load i64, i64* %8, align 8
  %306 = load i32, i32* %24, align 4
  %307 = call i8* @get_dead_hosts_list(i64 %305, i32 %306)
  store i8* %307, i8** %25, align 8
  %308 = load i8*, i8** %25, align 8
  %309 = icmp ne i8* %308, null
  br i1 %309, label %310, label %323

310:                                              ; preds = %304
  %311 = load %struct.connection*, %struct.connection** %5, align 8
  %312 = load i8*, i8** %6, align 8
  %313 = load i32, i32* %12, align 4
  %314 = sext i32 %313 to i64
  %315 = sub i64 0, %314
  %316 = getelementptr inbounds i8, i8* %312, i64 %315
  %317 = load i8*, i8** %25, align 8
  %318 = load i8*, i8** %25, align 8
  %319 = call i32 @strlen(i8* %318)
  %320 = call i32 @return_one_key(%struct.connection* %311, i8* %316, i8* %317, i32 %319)
  %321 = load i8*, i8** %25, align 8
  %322 = call i32 @free(i8* %321)
  store i32 0, i32* %4, align 4
  br label %467

323:                                              ; preds = %304
  br label %324

324:                                              ; preds = %323, %299
  br label %325

325:                                              ; preds = %324, %295, %292
  %326 = load i32, i32* %7, align 4
  %327 = icmp sge i32 %326, 14
  br i1 %327, label %328, label %358

328:                                              ; preds = %325
  %329 = load i8*, i8** %6, align 8
  %330 = call i32 @memcmp(i8* %329, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.13, i64 0, i64 0), i32 14)
  %331 = icmp ne i32 %330, 0
  br i1 %331, label %358, label %332

332:                                              ; preds = %328
  %333 = load i8*, i8** %6, align 8
  %334 = getelementptr inbounds i8, i8* %333, i64 14
  %335 = call i32 (i8*, i8*, i64*, ...) @sscanf(i8* %334, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i64* %8, i32* %26)
  %336 = icmp eq i32 %335, 2
  br i1 %336, label %337, label %357

337:                                              ; preds = %332
  %338 = load i64, i64* %8, align 8
  %339 = load i32, i32* %26, align 4
  %340 = call i8* @get_dead_hosts_list_full(i64 %338, i32 %339)
  store i8* %340, i8** %27, align 8
  %341 = load i8*, i8** %27, align 8
  %342 = icmp ne i8* %341, null
  br i1 %342, label %343, label %356

343:                                              ; preds = %337
  %344 = load %struct.connection*, %struct.connection** %5, align 8
  %345 = load i8*, i8** %6, align 8
  %346 = load i32, i32* %12, align 4
  %347 = sext i32 %346 to i64
  %348 = sub i64 0, %347
  %349 = getelementptr inbounds i8, i8* %345, i64 %348
  %350 = load i8*, i8** %27, align 8
  %351 = load i8*, i8** %27, align 8
  %352 = call i32 @strlen(i8* %351)
  %353 = call i32 @return_one_key(%struct.connection* %344, i8* %349, i8* %350, i32 %352)
  %354 = load i8*, i8** %27, align 8
  %355 = call i32 @free(i8* %354)
  store i32 0, i32* %4, align 4
  br label %467

356:                                              ; preds = %337
  br label %357

357:                                              ; preds = %356, %332
  br label %358

358:                                              ; preds = %357, %328, %325
  %359 = load i32, i32* %7, align 4
  %360 = icmp eq i32 %359, 10
  br i1 %360, label %361, label %383

361:                                              ; preds = %358
  %362 = load i8*, i8** %6, align 8
  %363 = call i32 @memcmp(i8* %362, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.14, i64 0, i64 0), i32 10)
  %364 = icmp ne i32 %363, 0
  br i1 %364, label %383, label %365

365:                                              ; preds = %361
  %366 = call i8* (...) @get_collisions_list()
  store i8* %366, i8** %28, align 8
  %367 = load i8*, i8** %28, align 8
  %368 = icmp ne i8* %367, null
  br i1 %368, label %369, label %382

369:                                              ; preds = %365
  %370 = load %struct.connection*, %struct.connection** %5, align 8
  %371 = load i8*, i8** %6, align 8
  %372 = load i32, i32* %12, align 4
  %373 = sext i32 %372 to i64
  %374 = sub i64 0, %373
  %375 = getelementptr inbounds i8, i8* %371, i64 %374
  %376 = load i8*, i8** %28, align 8
  %377 = load i8*, i8** %28, align 8
  %378 = call i32 @strlen(i8* %377)
  %379 = call i32 @return_one_key(%struct.connection* %370, i8* %375, i8* %376, i32 %378)
  %380 = load i8*, i8** %28, align 8
  %381 = call i32 @free(i8* %380)
  store i32 0, i32* %4, align 4
  br label %467

382:                                              ; preds = %365
  br label %383

383:                                              ; preds = %382, %361, %358
  %384 = load i32, i32* %7, align 4
  %385 = icmp sge i32 %384, 6
  br i1 %385, label %386, label %409

386:                                              ; preds = %383
  %387 = load i8*, i8** %6, align 8
  %388 = call i32 @memcmp(i8* %387, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.15, i64 0, i64 0), i32 6)
  %389 = icmp ne i32 %388, 0
  br i1 %389, label %409, label %390

390:                                              ; preds = %386
  %391 = load i8*, i8** %6, align 8
  %392 = getelementptr inbounds i8, i8* %391, i64 6
  %393 = call i32 (i8*, i8*, i64*, ...) @sscanf(i8* %392, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.16, i64 0, i64 0), i64* %9)
  %394 = icmp eq i32 %393, 1
  br i1 %394, label %395, label %409

395:                                              ; preds = %390
  %396 = load i64, i64* %9, align 8
  %397 = call i32 @do_set_enable(i64 %396, i32 1)
  store i32 %397, i32* %29, align 4
  %398 = load %struct.connection*, %struct.connection** %5, align 8
  %399 = load i8*, i8** %6, align 8
  %400 = load i32, i32* %12, align 4
  %401 = sext i32 %400 to i64
  %402 = sub i64 0, %401
  %403 = getelementptr inbounds i8, i8* %399, i64 %402
  %404 = load i32, i32* %29, align 4
  %405 = icmp sge i32 %404, 0
  %406 = zext i1 %405 to i64
  %407 = select i1 %405, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.17, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.18, i64 0, i64 0)
  %408 = call i32 @return_one_key(%struct.connection* %398, i8* %403, i8* %407, i32 1)
  store i32 %408, i32* %4, align 4
  br label %467

409:                                              ; preds = %390, %386, %383
  %410 = load i32, i32* %7, align 4
  %411 = icmp sge i32 %410, 7
  br i1 %411, label %412, label %435

412:                                              ; preds = %409
  %413 = load i8*, i8** %6, align 8
  %414 = call i32 @memcmp(i8* %413, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.19, i64 0, i64 0), i32 7)
  %415 = icmp ne i32 %414, 0
  br i1 %415, label %435, label %416

416:                                              ; preds = %412
  %417 = load i8*, i8** %6, align 8
  %418 = getelementptr inbounds i8, i8* %417, i64 7
  %419 = call i32 (i8*, i8*, i64*, ...) @sscanf(i8* %418, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.16, i64 0, i64 0), i64* %9)
  %420 = icmp eq i32 %419, 1
  br i1 %420, label %421, label %435

421:                                              ; preds = %416
  %422 = load i64, i64* %9, align 8
  %423 = call i32 @do_set_enable(i64 %422, i32 0)
  store i32 %423, i32* %30, align 4
  %424 = load %struct.connection*, %struct.connection** %5, align 8
  %425 = load i8*, i8** %6, align 8
  %426 = load i32, i32* %12, align 4
  %427 = sext i32 %426 to i64
  %428 = sub i64 0, %427
  %429 = getelementptr inbounds i8, i8* %425, i64 %428
  %430 = load i32, i32* %30, align 4
  %431 = icmp sge i32 %430, 0
  %432 = zext i1 %431 to i64
  %433 = select i1 %431, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.17, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.18, i64 0, i64 0)
  %434 = call i32 @return_one_key(%struct.connection* %424, i8* %429, i8* %433, i32 1)
  store i32 %434, i32* %4, align 4
  br label %467

435:                                              ; preds = %416, %412, %409
  %436 = load i32, i32* %7, align 4
  %437 = icmp sge i32 %436, 13
  br i1 %437, label %438, label %466

438:                                              ; preds = %435
  %439 = load i8*, i8** %6, align 8
  %440 = call i32 @memcmp(i8* %439, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.20, i64 0, i64 0), i32 13)
  %441 = icmp ne i32 %440, 0
  br i1 %441, label %466, label %442

442:                                              ; preds = %438
  %443 = load i8*, i8** %6, align 8
  %444 = getelementptr inbounds i8, i8* %443, i64 13
  %445 = call i32 (i8*, i8*, i64*, ...) @sscanf(i8* %444, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.21, i64 0, i64 0), i64* %8)
  %446 = icmp eq i32 %445, 1
  br i1 %446, label %447, label %466

447:                                              ; preds = %442
  %448 = load i64, i64* %8, align 8
  %449 = call i8* @get_disabled(i64 %448)
  store i8* %449, i8** %31, align 8
  %450 = load i8*, i8** %31, align 8
  %451 = icmp ne i8* %450, null
  br i1 %451, label %452, label %465

452:                                              ; preds = %447
  %453 = load %struct.connection*, %struct.connection** %5, align 8
  %454 = load i8*, i8** %6, align 8
  %455 = load i32, i32* %12, align 4
  %456 = sext i32 %455 to i64
  %457 = sub i64 0, %456
  %458 = getelementptr inbounds i8, i8* %454, i64 %457
  %459 = load i8*, i8** %31, align 8
  %460 = load i8*, i8** %31, align 8
  %461 = call i32 @strlen(i8* %460)
  %462 = call i32 @return_one_key(%struct.connection* %453, i8* %458, i8* %459, i32 %461)
  %463 = load i8*, i8** %31, align 8
  %464 = call i32 @free(i8* %463)
  store i32 0, i32* %4, align 4
  br label %467

465:                                              ; preds = %447
  br label %466

466:                                              ; preds = %465, %442, %438, %435
  store i32 0, i32* %4, align 4
  br label %467

467:                                              ; preds = %466, %452, %421, %395, %369, %343, %310, %278, %252, %216, %181, %146, %113, %80, %50
  %468 = load i32, i32* %4, align 4
  ret i32 %468
}

declare dso_local i32 @get_at_prefix_length(i8*, i32) #1

declare dso_local i32 @strncmp(i8*, i8*, i32) #1

declare dso_local i32 @copyexec_results_prepare_stats(%struct.connection*) #1

declare dso_local i32 @return_one_key(%struct.connection*, i8*, i8*, i32) #1

declare dso_local i32 @memcmp(i8*, i8*, i32) #1

declare dso_local i32 @sscanf(i8*, i8*, i64*, ...) #1

declare dso_local i8* @get_results_freqs(i64, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i8* @get_status_freqs(i64, i32) #1

declare dso_local i8* @get_status_results_freqs(i64, i32) #1

declare dso_local i8* @get_hosts_list(i64, i32, i32, i32) #1

declare dso_local i8* @get_hosts_list_by_status(i64, i32, i8*) #1

declare dso_local i8* @get_hosts_list_by_status_and_result(i64, i32, i8*, i32) #1

declare dso_local i8* @get_volumes(...) #1

declare dso_local i8* @get_dead_hosts_list(i64, i32) #1

declare dso_local i8* @get_dead_hosts_list_full(i64, i32) #1

declare dso_local i8* @get_collisions_list(...) #1

declare dso_local i32 @do_set_enable(i64, i32) #1

declare dso_local i8* @get_disabled(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
