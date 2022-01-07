; ModuleID = '/home/carl/AnghaBench/kphp-kdb/memcached/extr_memcached-data.c_write_stats.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/memcached/extr_memcached-data.c_write_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hash_entry = type { i32, i8*, i8*, i32, i32, i32, i32, i32 }
%struct.TYPE_3__ = type { i8*, i32, i64, i8*, i32, i32 }

@CLOCK_MONOTONIC = common dso_local global i32 0, align 4
@entry_buffer = common dso_local global %struct.hash_entry* null, align 8
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"Memcached is empty\0A\00", align 1
@hash_st = common dso_local global i32* null, align 8
@.str.1 = private unnamed_addr constant [6 x i8] c"OTHER\00", align 1
@buffer_stack = common dso_local global i32* null, align 8
@buffer_stack_size = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [97 x i8] c"   quantity\09tot_key_len\09tot_val_len\09 tot_memory\09mean_memory\09  mean_exp_time\09max_exp_time\09prefix\0A\00", align 1
@.str.3 = private unnamed_addr constant [45 x i8] c"%11d\09%11d\09%11d\09%11d\09%11.1lf\09%15.6lf\09%12d\09%s\0A\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"TOTAL\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @write_stats() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca %struct.hash_entry*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.TYPE_3__*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca [6 x i32], align 16
  %18 = alloca i32*, align 8
  %19 = alloca i32*, align 8
  %20 = alloca i32*, align 8
  %21 = load i32, i32* @CLOCK_MONOTONIC, align 4
  %22 = call i32 @get_utime(i32 %21)
  store i32 %22, i32* %1, align 4
  %23 = load %struct.hash_entry*, %struct.hash_entry** @entry_buffer, align 8
  %24 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %23, i64 0
  %25 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  store i32 %26, i32* %2, align 4
  %27 = load %struct.hash_entry*, %struct.hash_entry** @entry_buffer, align 8
  %28 = load i32, i32* %2, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %27, i64 %29
  store %struct.hash_entry* %30, %struct.hash_entry** %3, align 8
  %31 = load i32, i32* %2, align 4
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %0
  %34 = load i32, i32* @stderr, align 4
  %35 = call i32 (i32, i8*, ...) @fprintf(i32 %34, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  br label %722

36:                                               ; preds = %0
  %37 = call i8* @zzmalloc(i32 1027)
  store i8* %37, i8** %4, align 8
  %38 = load i8*, i8** %4, align 8
  %39 = getelementptr inbounds i8, i8* %38, i64 0
  store i8 32, i8* %39, align 1
  br label %40

40:                                               ; preds = %467, %36
  %41 = load i32, i32* %2, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %51

43:                                               ; preds = %40
  %44 = load %struct.hash_entry*, %struct.hash_entry** %3, align 8
  %45 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %44, i32 0, i32 1
  %46 = load i8*, i8** %45, align 8
  %47 = getelementptr inbounds i8, i8* %46, i64 0
  %48 = load i8, i8* %47, align 1
  %49 = sext i8 %48 to i32
  %50 = icmp ne i32 %49, 32
  br label %51

51:                                               ; preds = %43, %40
  %52 = phi i1 [ false, %40 ], [ %50, %43 ]
  br i1 %52, label %53, label %492

53:                                               ; preds = %51
  %54 = load i32, i32* %2, align 4
  %55 = call i32 @del_entry_used(i32 %54)
  %56 = load i32, i32* %2, align 4
  %57 = call i32 @del_entry_time(i32 %56)
  %58 = load %struct.hash_entry*, %struct.hash_entry** %3, align 8
  %59 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %58, i32 0, i32 2
  %60 = load i8*, i8** %59, align 8
  %61 = load %struct.hash_entry*, %struct.hash_entry** %3, align 8
  %62 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %61, i32 0, i32 3
  %63 = load i32, i32* %62, align 8
  %64 = add nsw i32 %63, 1
  %65 = call i32 @zzfree(i8* %60, i32 %64)
  %66 = load i32*, i32** @hash_st, align 8
  %67 = load %struct.hash_entry*, %struct.hash_entry** %3, align 8
  %68 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %67, i32 0, i32 7
  %69 = load i32, i32* %68, align 8
  %70 = call i64 @GET_ENTRY_ID(i32 %69)
  %71 = getelementptr inbounds i32, i32* %66, i64 %70
  store i32* %71, i32** %7, align 8
  br label %72

72:                                               ; preds = %83, %53
  %73 = load i32*, i32** %7, align 8
  %74 = load i32, i32* %73, align 4
  %75 = load i32, i32* %2, align 4
  %76 = icmp ne i32 %74, %75
  br i1 %76, label %77, label %81

77:                                               ; preds = %72
  %78 = load i32*, i32** %7, align 8
  %79 = load i32, i32* %78, align 4
  %80 = icmp ne i32 %79, -1
  br label %81

81:                                               ; preds = %77, %72
  %82 = phi i1 [ false, %72 ], [ %80, %77 ]
  br i1 %82, label %83, label %90

83:                                               ; preds = %81
  %84 = load %struct.hash_entry*, %struct.hash_entry** @entry_buffer, align 8
  %85 = load i32*, i32** %7, align 8
  %86 = load i32, i32* %85, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %84, i64 %87
  %89 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %88, i32 0, i32 4
  store i32* %89, i32** %7, align 8
  br label %72

90:                                               ; preds = %81
  %91 = load i32*, i32** %7, align 8
  %92 = load i32, i32* %91, align 4
  %93 = load i32, i32* %2, align 4
  %94 = icmp eq i32 %92, %93
  %95 = zext i1 %94 to i32
  %96 = call i32 @assert(i32 %95)
  %97 = load %struct.hash_entry*, %struct.hash_entry** %3, align 8
  %98 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %97, i32 0, i32 4
  %99 = load i32, i32* %98, align 4
  %100 = load i32*, i32** %7, align 8
  store i32 %99, i32* %100, align 4
  store i32 0, i32* %5, align 4
  br label %101

101:                                              ; preds = %150, %90
  %102 = load i32, i32* %5, align 4
  %103 = load %struct.hash_entry*, %struct.hash_entry** %3, align 8
  %104 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %103, i32 0, i32 5
  %105 = load i32, i32* %104, align 8
  %106 = icmp slt i32 %102, %105
  br i1 %106, label %107, label %147

107:                                              ; preds = %101
  %108 = load %struct.hash_entry*, %struct.hash_entry** %3, align 8
  %109 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %108, i32 0, i32 1
  %110 = load i8*, i8** %109, align 8
  %111 = load i32, i32* %5, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds i8, i8* %110, i64 %112
  %114 = load i8, i8* %113, align 1
  %115 = sext i8 %114 to i32
  %116 = icmp slt i32 %115, 48
  br i1 %116, label %127, label %117

117:                                              ; preds = %107
  %118 = load %struct.hash_entry*, %struct.hash_entry** %3, align 8
  %119 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %118, i32 0, i32 1
  %120 = load i8*, i8** %119, align 8
  %121 = load i32, i32* %5, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds i8, i8* %120, i64 %122
  %124 = load i8, i8* %123, align 1
  %125 = sext i8 %124 to i32
  %126 = icmp sgt i32 %125, 57
  br i1 %126, label %127, label %147

127:                                              ; preds = %117, %107
  %128 = load %struct.hash_entry*, %struct.hash_entry** %3, align 8
  %129 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %128, i32 0, i32 1
  %130 = load i8*, i8** %129, align 8
  %131 = load i32, i32* %5, align 4
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds i8, i8* %130, i64 %132
  %134 = load i8, i8* %133, align 1
  %135 = sext i8 %134 to i32
  %136 = icmp ne i32 %135, 45
  br i1 %136, label %137, label %147

137:                                              ; preds = %127
  %138 = load %struct.hash_entry*, %struct.hash_entry** %3, align 8
  %139 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %138, i32 0, i32 1
  %140 = load i8*, i8** %139, align 8
  %141 = load i32, i32* %5, align 4
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds i8, i8* %140, i64 %142
  %144 = load i8, i8* %143, align 1
  %145 = sext i8 %144 to i32
  %146 = icmp ne i32 %145, 58
  br label %147

147:                                              ; preds = %137, %127, %117, %101
  %148 = phi i1 [ false, %127 ], [ false, %117 ], [ false, %101 ], [ %146, %137 ]
  br i1 %148, label %149, label %153

149:                                              ; preds = %147
  br label %150

150:                                              ; preds = %149
  %151 = load i32, i32* %5, align 4
  %152 = add nsw i32 %151, 1
  store i32 %152, i32* %5, align 4
  br label %101

153:                                              ; preds = %147
  br label %154

154:                                              ; preds = %170, %153
  %155 = load i32, i32* %5, align 4
  %156 = icmp sgt i32 %155, 1
  br i1 %156, label %157, label %168

157:                                              ; preds = %154
  %158 = load %struct.hash_entry*, %struct.hash_entry** %3, align 8
  %159 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %158, i32 0, i32 1
  %160 = load i8*, i8** %159, align 8
  %161 = load i32, i32* %5, align 4
  %162 = sub nsw i32 %161, 1
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds i8, i8* %160, i64 %163
  %165 = load i8, i8* %164, align 1
  %166 = sext i8 %165 to i32
  %167 = icmp eq i32 %166, 95
  br label %168

168:                                              ; preds = %157, %154
  %169 = phi i1 [ false, %154 ], [ %167, %157 ]
  br i1 %169, label %170, label %173

170:                                              ; preds = %168
  %171 = load i32, i32* %5, align 4
  %172 = add nsw i32 %171, -1
  store i32 %172, i32* %5, align 4
  br label %154

173:                                              ; preds = %168
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %174 = load i32, i32* %5, align 4
  store i32 %174, i32* %6, align 4
  br label %175

175:                                              ; preds = %230, %173
  %176 = load i32, i32* %6, align 4
  %177 = load %struct.hash_entry*, %struct.hash_entry** %3, align 8
  %178 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %177, i32 0, i32 5
  %179 = load i32, i32* %178, align 8
  %180 = icmp slt i32 %176, %179
  br i1 %180, label %181, label %233

181:                                              ; preds = %175
  %182 = load %struct.hash_entry*, %struct.hash_entry** %3, align 8
  %183 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %182, i32 0, i32 1
  %184 = load i8*, i8** %183, align 8
  %185 = load i32, i32* %6, align 4
  %186 = sext i32 %185 to i64
  %187 = getelementptr inbounds i8, i8* %184, i64 %186
  %188 = load i8, i8* %187, align 1
  %189 = sext i8 %188 to i32
  %190 = icmp eq i32 %189, 95
  br i1 %190, label %191, label %205

191:                                              ; preds = %181
  %192 = load %struct.hash_entry*, %struct.hash_entry** %3, align 8
  %193 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %192, i32 0, i32 1
  %194 = load i8*, i8** %193, align 8
  %195 = load i32, i32* %6, align 4
  %196 = sub nsw i32 %195, 1
  %197 = sext i32 %196 to i64
  %198 = getelementptr inbounds i8, i8* %194, i64 %197
  %199 = load i8, i8* %198, align 1
  %200 = sext i8 %199 to i32
  %201 = icmp ne i32 %200, 95
  br i1 %201, label %202, label %205

202:                                              ; preds = %191
  %203 = load i32, i32* %8, align 4
  %204 = add nsw i32 %203, 1
  store i32 %204, i32* %8, align 4
  br label %205

205:                                              ; preds = %202, %191, %181
  %206 = load i32, i32* %8, align 4
  %207 = icmp eq i32 %206, 0
  br i1 %207, label %208, label %229

208:                                              ; preds = %205
  %209 = load %struct.hash_entry*, %struct.hash_entry** %3, align 8
  %210 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %209, i32 0, i32 1
  %211 = load i8*, i8** %210, align 8
  %212 = load i32, i32* %6, align 4
  %213 = sext i32 %212 to i64
  %214 = getelementptr inbounds i8, i8* %211, i64 %213
  %215 = load i8, i8* %214, align 1
  %216 = sext i8 %215 to i32
  %217 = icmp sge i32 %216, 97
  br i1 %217, label %218, label %229

218:                                              ; preds = %208
  %219 = load %struct.hash_entry*, %struct.hash_entry** %3, align 8
  %220 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %219, i32 0, i32 1
  %221 = load i8*, i8** %220, align 8
  %222 = load i32, i32* %6, align 4
  %223 = sext i32 %222 to i64
  %224 = getelementptr inbounds i8, i8* %221, i64 %223
  %225 = load i8, i8* %224, align 1
  %226 = sext i8 %225 to i32
  %227 = icmp sle i32 %226, 102
  br i1 %227, label %228, label %229

228:                                              ; preds = %218
  store i32 1, i32* %9, align 4
  br label %229

229:                                              ; preds = %228, %218, %208, %205
  br label %230

230:                                              ; preds = %229
  %231 = load i32, i32* %6, align 4
  %232 = add nsw i32 %231, 1
  store i32 %232, i32* %6, align 4
  br label %175

233:                                              ; preds = %175
  %234 = load i32, i32* %9, align 4
  %235 = icmp ne i32 %234, 0
  br i1 %235, label %236, label %268

236:                                              ; preds = %233
  br label %237

237:                                              ; preds = %264, %236
  %238 = load i32, i32* %5, align 4
  %239 = icmp sgt i32 %238, 2
  br i1 %239, label %240, label %262

240:                                              ; preds = %237
  %241 = load %struct.hash_entry*, %struct.hash_entry** %3, align 8
  %242 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %241, i32 0, i32 1
  %243 = load i8*, i8** %242, align 8
  %244 = load i32, i32* %5, align 4
  %245 = sub nsw i32 %244, 1
  %246 = sext i32 %245 to i64
  %247 = getelementptr inbounds i8, i8* %243, i64 %246
  %248 = load i8, i8* %247, align 1
  %249 = sext i8 %248 to i32
  %250 = icmp sge i32 %249, 97
  br i1 %250, label %251, label %262

251:                                              ; preds = %240
  %252 = load %struct.hash_entry*, %struct.hash_entry** %3, align 8
  %253 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %252, i32 0, i32 1
  %254 = load i8*, i8** %253, align 8
  %255 = load i32, i32* %5, align 4
  %256 = sub nsw i32 %255, 1
  %257 = sext i32 %256 to i64
  %258 = getelementptr inbounds i8, i8* %254, i64 %257
  %259 = load i8, i8* %258, align 1
  %260 = sext i8 %259 to i32
  %261 = icmp sle i32 %260, 102
  br label %262

262:                                              ; preds = %251, %240, %237
  %263 = phi i1 [ false, %240 ], [ false, %237 ], [ %261, %251 ]
  br i1 %263, label %264, label %267

264:                                              ; preds = %262
  %265 = load i32, i32* %5, align 4
  %266 = add nsw i32 %265, -1
  store i32 %266, i32* %5, align 4
  br label %237

267:                                              ; preds = %262
  br label %268

268:                                              ; preds = %267, %233
  %269 = load i32, i32* %5, align 4
  %270 = load %struct.hash_entry*, %struct.hash_entry** %3, align 8
  %271 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %270, i32 0, i32 5
  %272 = load i32, i32* %271, align 8
  %273 = icmp slt i32 %269, %272
  br i1 %273, label %274, label %336

274:                                              ; preds = %268
  %275 = load i32, i32* %5, align 4
  %276 = icmp slt i32 %275, 1024
  br i1 %276, label %277, label %336

277:                                              ; preds = %274
  %278 = load %struct.hash_entry*, %struct.hash_entry** %3, align 8
  %279 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %278, i32 0, i32 5
  %280 = load i32, i32* %279, align 8
  %281 = icmp sgt i32 %280, 0
  br i1 %281, label %282, label %336

282:                                              ; preds = %277
  %283 = load i32, i32* %5, align 4
  %284 = add nsw i32 %283, 3
  store i32 %284, i32* %10, align 4
  %285 = load i8*, i8** %4, align 8
  %286 = getelementptr inbounds i8, i8* %285, i64 1
  %287 = load %struct.hash_entry*, %struct.hash_entry** %3, align 8
  %288 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %287, i32 0, i32 1
  %289 = load i8*, i8** %288, align 8
  %290 = load i32, i32* %5, align 4
  %291 = call i32 @memcpy(i8* %286, i8* %289, i32 %290)
  %292 = load i32, i32* %8, align 4
  %293 = icmp sgt i32 %292, 9
  br i1 %293, label %294, label %295

294:                                              ; preds = %282
  store i32 9, i32* %8, align 4
  br label %295

295:                                              ; preds = %294, %282
  %296 = load i32, i32* %8, align 4
  %297 = add nsw i32 48, %296
  %298 = trunc i32 %297 to i8
  %299 = load i8*, i8** %4, align 8
  %300 = load i32, i32* %5, align 4
  %301 = add nsw i32 %300, 1
  %302 = sext i32 %301 to i64
  %303 = getelementptr inbounds i8, i8* %299, i64 %302
  store i8 %298, i8* %303, align 1
  %304 = load %struct.hash_entry*, %struct.hash_entry** %3, align 8
  %305 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %304, i32 0, i32 1
  %306 = load i8*, i8** %305, align 8
  %307 = load i32, i32* %5, align 4
  %308 = sext i32 %307 to i64
  %309 = getelementptr inbounds i8, i8* %306, i64 %308
  %310 = load i8, i8* %309, align 1
  %311 = sext i8 %310 to i32
  %312 = icmp ne i32 %311, 95
  %313 = zext i1 %312 to i32
  %314 = mul nsw i32 %313, 2
  %315 = load %struct.hash_entry*, %struct.hash_entry** %3, align 8
  %316 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %315, i32 0, i32 1
  %317 = load i8*, i8** %316, align 8
  %318 = load %struct.hash_entry*, %struct.hash_entry** %3, align 8
  %319 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %318, i32 0, i32 5
  %320 = load i32, i32* %319, align 8
  %321 = sub nsw i32 %320, 1
  %322 = sext i32 %321 to i64
  %323 = getelementptr inbounds i8, i8* %317, i64 %322
  %324 = load i8, i8* %323, align 1
  %325 = sext i8 %324 to i32
  %326 = icmp ne i32 %325, 95
  %327 = zext i1 %326 to i32
  %328 = add nsw i32 %314, %327
  %329 = add nsw i32 %328, 48
  %330 = trunc i32 %329 to i8
  %331 = load i8*, i8** %4, align 8
  %332 = load i32, i32* %5, align 4
  %333 = add nsw i32 %332, 2
  %334 = sext i32 %333 to i64
  %335 = getelementptr inbounds i8, i8* %331, i64 %334
  store i8 %330, i8* %335, align 1
  br label %340

336:                                              ; preds = %277, %274, %268
  store i32 6, i32* %10, align 4
  %337 = load i8*, i8** %4, align 8
  %338 = getelementptr inbounds i8, i8* %337, i64 1
  %339 = call i32 @memcpy(i8* %338, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 5)
  br label %340

340:                                              ; preds = %336, %295
  %341 = load i32, i32* %10, align 4
  %342 = sub nsw i32 %341, 1
  %343 = sext i32 %342 to i64
  %344 = add i64 %343, 24
  %345 = add i64 %344, 1
  %346 = trunc i64 %345 to i32
  store i32 %346, i32* %11, align 4
  %347 = load %struct.hash_entry*, %struct.hash_entry** %3, align 8
  %348 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %347, i32 0, i32 6
  %349 = load i32, i32* %348, align 4
  %350 = load i32, i32* %1, align 4
  %351 = sub nsw i32 %349, %350
  store i32 %351, i32* %12, align 4
  %352 = load i8*, i8** %4, align 8
  %353 = load i32, i32* %10, align 4
  %354 = call i64 @get_hash(i8* %352, i32 %353)
  store i64 %354, i64* %13, align 8
  %355 = load i8*, i8** %4, align 8
  %356 = load i32, i32* %10, align 4
  %357 = load i64, i64* %13, align 8
  %358 = call i32 @get_entry(i8* %355, i32 %356, i64 %357)
  store i32 %358, i32* %14, align 4
  %359 = load i32, i32* %14, align 4
  %360 = icmp ne i32 %359, -1
  br i1 %360, label %361, label %366

361:                                              ; preds = %340
  %362 = load i32, i32* %14, align 4
  %363 = call %struct.TYPE_3__* @get_entry_ptr(i32 %362)
  store %struct.TYPE_3__* %363, %struct.TYPE_3__** %15, align 8
  %364 = load i32, i32* %14, align 4
  %365 = call i32 @del_entry_used(i32 %364)
  br label %423

366:                                              ; preds = %340
  %367 = call i32 (...) @get_new_entry()
  store i32 %367, i32* %14, align 4
  %368 = load i32, i32* %14, align 4
  %369 = call %struct.TYPE_3__* @get_entry_ptr(i32 %368)
  store %struct.TYPE_3__* %369, %struct.TYPE_3__** %15, align 8
  %370 = load i32, i32* %10, align 4
  %371 = add nsw i32 %370, 1
  %372 = call i8* @zzmalloc(i32 %371)
  %373 = load %struct.TYPE_3__*, %struct.TYPE_3__** %15, align 8
  %374 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %373, i32 0, i32 0
  store i8* %372, i8** %374, align 8
  %375 = load %struct.TYPE_3__*, %struct.TYPE_3__** %15, align 8
  %376 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %375, i32 0, i32 0
  %377 = load i8*, i8** %376, align 8
  %378 = load i8*, i8** %4, align 8
  %379 = load i32, i32* %10, align 4
  %380 = call i32 @memcpy(i8* %377, i8* %378, i32 %379)
  %381 = load %struct.TYPE_3__*, %struct.TYPE_3__** %15, align 8
  %382 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %381, i32 0, i32 0
  %383 = load i8*, i8** %382, align 8
  %384 = load i32, i32* %10, align 4
  %385 = sext i32 %384 to i64
  %386 = getelementptr inbounds i8, i8* %383, i64 %385
  store i8 0, i8* %386, align 1
  %387 = load i32, i32* %10, align 4
  %388 = load %struct.TYPE_3__*, %struct.TYPE_3__** %15, align 8
  %389 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %388, i32 0, i32 1
  store i32 %387, i32* %389, align 8
  %390 = load i64, i64* %13, align 8
  %391 = load %struct.TYPE_3__*, %struct.TYPE_3__** %15, align 8
  %392 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %391, i32 0, i32 2
  store i64 %390, i64* %392, align 8
  %393 = load i32, i32* %14, align 4
  %394 = call i32 @add_entry(i32 %393)
  %395 = load i32, i32* %11, align 4
  %396 = call i8* @zzmalloc(i32 %395)
  %397 = load %struct.TYPE_3__*, %struct.TYPE_3__** %15, align 8
  %398 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %397, i32 0, i32 3
  store i8* %396, i8** %398, align 8
  %399 = load %struct.TYPE_3__*, %struct.TYPE_3__** %15, align 8
  %400 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %399, i32 0, i32 3
  %401 = load i8*, i8** %400, align 8
  %402 = call i32 @memset(i8* %401, i32 0, i32 24)
  %403 = load %struct.TYPE_3__*, %struct.TYPE_3__** %15, align 8
  %404 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %403, i32 0, i32 3
  %405 = load i8*, i8** %404, align 8
  %406 = getelementptr inbounds i8, i8* %405, i64 24
  %407 = load %struct.TYPE_3__*, %struct.TYPE_3__** %15, align 8
  %408 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %407, i32 0, i32 0
  %409 = load i8*, i8** %408, align 8
  %410 = getelementptr inbounds i8, i8* %409, i64 1
  %411 = load i32, i32* %10, align 4
  %412 = call i32 @memcpy(i8* %406, i8* %410, i32 %411)
  %413 = load i32, i32* %11, align 4
  %414 = sub nsw i32 %413, 1
  %415 = load %struct.TYPE_3__*, %struct.TYPE_3__** %15, align 8
  %416 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %415, i32 0, i32 4
  store i32 %414, i32* %416, align 8
  %417 = load i32, i32* %1, align 4
  %418 = add nsw i32 86400, %417
  %419 = load %struct.TYPE_3__*, %struct.TYPE_3__** %15, align 8
  %420 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %419, i32 0, i32 5
  store i32 %418, i32* %420, align 4
  %421 = load i32, i32* %14, align 4
  %422 = call i32 @add_entry_time(i32 %421)
  br label %423

423:                                              ; preds = %366, %361
  %424 = load %struct.TYPE_3__*, %struct.TYPE_3__** %15, align 8
  %425 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %424, i32 0, i32 3
  %426 = load i8*, i8** %425, align 8
  %427 = bitcast i8* %426 to i32*
  store i32* %427, i32** %16, align 8
  %428 = load i32*, i32** %16, align 8
  %429 = getelementptr inbounds i32, i32* %428, i64 0
  %430 = load i32, i32* %429, align 4
  %431 = add nsw i32 %430, 1
  store i32 %431, i32* %429, align 4
  %432 = load %struct.hash_entry*, %struct.hash_entry** %3, align 8
  %433 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %432, i32 0, i32 5
  %434 = load i32, i32* %433, align 8
  %435 = load i32*, i32** %16, align 8
  %436 = getelementptr inbounds i32, i32* %435, i64 1
  %437 = load i32, i32* %436, align 4
  %438 = add nsw i32 %437, %434
  store i32 %438, i32* %436, align 4
  %439 = load %struct.hash_entry*, %struct.hash_entry** %3, align 8
  %440 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %439, i32 0, i32 3
  %441 = load i32, i32* %440, align 8
  %442 = load i32*, i32** %16, align 8
  %443 = getelementptr inbounds i32, i32* %442, i64 2
  %444 = load i32, i32* %443, align 4
  %445 = add nsw i32 %444, %441
  store i32 %445, i32* %443, align 4
  %446 = load i32, i32* %12, align 4
  %447 = sdiv i32 %446, 500
  %448 = load i32*, i32** %16, align 8
  %449 = getelementptr inbounds i32, i32* %448, i64 3
  %450 = load i32, i32* %449, align 4
  %451 = add nsw i32 %450, %447
  store i32 %451, i32* %449, align 4
  %452 = load i32, i32* %12, align 4
  %453 = srem i32 %452, 500
  %454 = load i32*, i32** %16, align 8
  %455 = getelementptr inbounds i32, i32* %454, i64 4
  %456 = load i32, i32* %455, align 4
  %457 = add nsw i32 %456, %453
  store i32 %457, i32* %455, align 4
  %458 = load i32, i32* %12, align 4
  %459 = load i32*, i32** %16, align 8
  %460 = getelementptr inbounds i32, i32* %459, i64 5
  %461 = load i32, i32* %460, align 4
  %462 = icmp sgt i32 %458, %461
  br i1 %462, label %463, label %467

463:                                              ; preds = %423
  %464 = load i32, i32* %12, align 4
  %465 = load i32*, i32** %16, align 8
  %466 = getelementptr inbounds i32, i32* %465, i64 5
  store i32 %464, i32* %466, align 4
  br label %467

467:                                              ; preds = %463, %423
  %468 = load i32, i32* %14, align 4
  %469 = call i32 @add_entry_used(i32 %468)
  %470 = load %struct.hash_entry*, %struct.hash_entry** %3, align 8
  %471 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %470, i32 0, i32 1
  %472 = load i8*, i8** %471, align 8
  %473 = load %struct.hash_entry*, %struct.hash_entry** %3, align 8
  %474 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %473, i32 0, i32 5
  %475 = load i32, i32* %474, align 8
  %476 = add nsw i32 %475, 1
  %477 = call i32 @zzfree(i8* %472, i32 %476)
  %478 = load i32, i32* %2, align 4
  %479 = load i32*, i32** @buffer_stack, align 8
  %480 = load i32, i32* @buffer_stack_size, align 4
  %481 = add nsw i32 %480, 1
  store i32 %481, i32* @buffer_stack_size, align 4
  %482 = sext i32 %480 to i64
  %483 = getelementptr inbounds i32, i32* %479, i64 %482
  store i32 %478, i32* %483, align 4
  %484 = load %struct.hash_entry*, %struct.hash_entry** @entry_buffer, align 8
  %485 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %484, i64 0
  %486 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %485, i32 0, i32 0
  %487 = load i32, i32* %486, align 8
  store i32 %487, i32* %2, align 4
  %488 = load %struct.hash_entry*, %struct.hash_entry** @entry_buffer, align 8
  %489 = load i32, i32* %2, align 4
  %490 = sext i32 %489 to i64
  %491 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %488, i64 %490
  store %struct.hash_entry* %491, %struct.hash_entry** %3, align 8
  br label %40

492:                                              ; preds = %51
  %493 = load i8*, i8** %4, align 8
  %494 = call i32 @zzfree(i8* %493, i32 1027)
  %495 = load i32, i32* @stderr, align 4
  %496 = call i32 (i32, i8*, ...) @fprintf(i32 %495, i8* getelementptr inbounds ([97 x i8], [97 x i8]* @.str.2, i64 0, i64 0))
  %497 = bitcast [6 x i32]* %17 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %497, i8 0, i64 24, i1 false)
  br label %498

498:                                              ; preds = %633, %492
  %499 = load i32, i32* %2, align 4
  %500 = icmp ne i32 %499, 0
  br i1 %500, label %501, label %664

501:                                              ; preds = %498
  %502 = load i32, i32* %2, align 4
  %503 = call i32 @del_entry_used(i32 %502)
  %504 = load i32, i32* %2, align 4
  %505 = call i32 @del_entry_time(i32 %504)
  %506 = load i32*, i32** @hash_st, align 8
  %507 = load %struct.hash_entry*, %struct.hash_entry** %3, align 8
  %508 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %507, i32 0, i32 7
  %509 = load i32, i32* %508, align 8
  %510 = call i64 @GET_ENTRY_ID(i32 %509)
  %511 = getelementptr inbounds i32, i32* %506, i64 %510
  store i32* %511, i32** %18, align 8
  br label %512

512:                                              ; preds = %523, %501
  %513 = load i32*, i32** %18, align 8
  %514 = load i32, i32* %513, align 4
  %515 = load i32, i32* %2, align 4
  %516 = icmp ne i32 %514, %515
  br i1 %516, label %517, label %521

517:                                              ; preds = %512
  %518 = load i32*, i32** %18, align 8
  %519 = load i32, i32* %518, align 4
  %520 = icmp ne i32 %519, -1
  br label %521

521:                                              ; preds = %517, %512
  %522 = phi i1 [ false, %512 ], [ %520, %517 ]
  br i1 %522, label %523, label %530

523:                                              ; preds = %521
  %524 = load %struct.hash_entry*, %struct.hash_entry** @entry_buffer, align 8
  %525 = load i32*, i32** %18, align 8
  %526 = load i32, i32* %525, align 4
  %527 = sext i32 %526 to i64
  %528 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %524, i64 %527
  %529 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %528, i32 0, i32 4
  store i32* %529, i32** %18, align 8
  br label %512

530:                                              ; preds = %521
  %531 = load i32*, i32** %18, align 8
  %532 = load i32, i32* %531, align 4
  %533 = load i32, i32* %2, align 4
  %534 = icmp eq i32 %532, %533
  %535 = zext i1 %534 to i32
  %536 = call i32 @assert(i32 %535)
  %537 = load %struct.hash_entry*, %struct.hash_entry** %3, align 8
  %538 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %537, i32 0, i32 4
  %539 = load i32, i32* %538, align 4
  %540 = load i32*, i32** %18, align 8
  store i32 %539, i32* %540, align 4
  %541 = load %struct.hash_entry*, %struct.hash_entry** %3, align 8
  %542 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %541, i32 0, i32 2
  %543 = load i8*, i8** %542, align 8
  %544 = bitcast i8* %543 to i32*
  store i32* %544, i32** %19, align 8
  %545 = load i32, i32* @stderr, align 4
  %546 = load i32*, i32** %19, align 8
  %547 = getelementptr inbounds i32, i32* %546, i64 0
  %548 = load i32, i32* %547, align 4
  %549 = load i32*, i32** %19, align 8
  %550 = getelementptr inbounds i32, i32* %549, i64 1
  %551 = load i32, i32* %550, align 4
  %552 = load i32*, i32** %19, align 8
  %553 = getelementptr inbounds i32, i32* %552, i64 2
  %554 = load i32, i32* %553, align 4
  %555 = load i32*, i32** %19, align 8
  %556 = getelementptr inbounds i32, i32* %555, i64 1
  %557 = load i32, i32* %556, align 4
  %558 = load i32*, i32** %19, align 8
  %559 = getelementptr inbounds i32, i32* %558, i64 2
  %560 = load i32, i32* %559, align 4
  %561 = add nsw i32 %557, %560
  %562 = load i32*, i32** %19, align 8
  %563 = getelementptr inbounds i32, i32* %562, i64 0
  %564 = load i32, i32* %563, align 4
  %565 = mul nsw i32 50, %564
  %566 = add nsw i32 %561, %565
  %567 = load i32*, i32** %19, align 8
  %568 = getelementptr inbounds i32, i32* %567, i64 1
  %569 = load i32, i32* %568, align 4
  %570 = load i32*, i32** %19, align 8
  %571 = getelementptr inbounds i32, i32* %570, i64 2
  %572 = load i32, i32* %571, align 4
  %573 = add nsw i32 %569, %572
  %574 = sitofp i32 %573 to double
  %575 = fmul double %574, 1.000000e+00
  %576 = load i32*, i32** %19, align 8
  %577 = getelementptr inbounds i32, i32* %576, i64 0
  %578 = load i32, i32* %577, align 4
  %579 = sitofp i32 %578 to double
  %580 = fdiv double %575, %579
  %581 = fadd double %580, 5.000000e+01
  %582 = load i32*, i32** %19, align 8
  %583 = getelementptr inbounds i32, i32* %582, i64 3
  %584 = load i32, i32* %583, align 4
  %585 = sitofp i32 %584 to double
  %586 = fmul double %585, 5.000000e+02
  %587 = load i32*, i32** %19, align 8
  %588 = getelementptr inbounds i32, i32* %587, i64 4
  %589 = load i32, i32* %588, align 4
  %590 = sitofp i32 %589 to double
  %591 = fadd double %586, %590
  %592 = load i32*, i32** %19, align 8
  %593 = getelementptr inbounds i32, i32* %592, i64 0
  %594 = load i32, i32* %593, align 4
  %595 = sitofp i32 %594 to double
  %596 = fdiv double %591, %595
  %597 = load i32*, i32** %19, align 8
  %598 = getelementptr inbounds i32, i32* %597, i64 5
  %599 = load i32, i32* %598, align 4
  %600 = load i32*, i32** %19, align 8
  %601 = getelementptr inbounds i32, i32* %600, i64 6
  %602 = bitcast i32* %601 to i8*
  %603 = call i32 (i32, i8*, ...) @fprintf(i32 %545, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.3, i64 0, i64 0), i32 %548, i32 %551, i32 %554, i32 %566, double %581, double %596, i32 %599, i8* %602)
  store i32 0, i32* %5, align 4
  br label %604

604:                                              ; preds = %618, %530
  %605 = load i32, i32* %5, align 4
  %606 = icmp slt i32 %605, 5
  br i1 %606, label %607, label %621

607:                                              ; preds = %604
  %608 = load i32*, i32** %19, align 8
  %609 = load i32, i32* %5, align 4
  %610 = sext i32 %609 to i64
  %611 = getelementptr inbounds i32, i32* %608, i64 %610
  %612 = load i32, i32* %611, align 4
  %613 = load i32, i32* %5, align 4
  %614 = sext i32 %613 to i64
  %615 = getelementptr inbounds [6 x i32], [6 x i32]* %17, i64 0, i64 %614
  %616 = load i32, i32* %615, align 4
  %617 = add nsw i32 %616, %612
  store i32 %617, i32* %615, align 4
  br label %618

618:                                              ; preds = %607
  %619 = load i32, i32* %5, align 4
  %620 = add nsw i32 %619, 1
  store i32 %620, i32* %5, align 4
  br label %604

621:                                              ; preds = %604
  %622 = load i32*, i32** %19, align 8
  %623 = getelementptr inbounds i32, i32* %622, i64 5
  %624 = load i32, i32* %623, align 4
  %625 = getelementptr inbounds [6 x i32], [6 x i32]* %17, i64 0, i64 5
  %626 = load i32, i32* %625, align 4
  %627 = icmp sgt i32 %624, %626
  br i1 %627, label %628, label %633

628:                                              ; preds = %621
  %629 = load i32*, i32** %19, align 8
  %630 = getelementptr inbounds i32, i32* %629, i64 5
  %631 = load i32, i32* %630, align 4
  %632 = getelementptr inbounds [6 x i32], [6 x i32]* %17, i64 0, i64 5
  store i32 %631, i32* %632, align 4
  br label %633

633:                                              ; preds = %628, %621
  %634 = load %struct.hash_entry*, %struct.hash_entry** %3, align 8
  %635 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %634, i32 0, i32 1
  %636 = load i8*, i8** %635, align 8
  %637 = load %struct.hash_entry*, %struct.hash_entry** %3, align 8
  %638 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %637, i32 0, i32 5
  %639 = load i32, i32* %638, align 8
  %640 = add nsw i32 %639, 1
  %641 = call i32 @zzfree(i8* %636, i32 %640)
  %642 = load %struct.hash_entry*, %struct.hash_entry** %3, align 8
  %643 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %642, i32 0, i32 2
  %644 = load i8*, i8** %643, align 8
  %645 = load %struct.hash_entry*, %struct.hash_entry** %3, align 8
  %646 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %645, i32 0, i32 3
  %647 = load i32, i32* %646, align 8
  %648 = add nsw i32 %647, 1
  %649 = call i32 @zzfree(i8* %644, i32 %648)
  %650 = load i32, i32* %2, align 4
  %651 = load i32*, i32** @buffer_stack, align 8
  %652 = load i32, i32* @buffer_stack_size, align 4
  %653 = add nsw i32 %652, 1
  store i32 %653, i32* @buffer_stack_size, align 4
  %654 = sext i32 %652 to i64
  %655 = getelementptr inbounds i32, i32* %651, i64 %654
  store i32 %650, i32* %655, align 4
  %656 = load %struct.hash_entry*, %struct.hash_entry** @entry_buffer, align 8
  %657 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %656, i64 0
  %658 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %657, i32 0, i32 0
  %659 = load i32, i32* %658, align 8
  store i32 %659, i32* %2, align 4
  %660 = load %struct.hash_entry*, %struct.hash_entry** @entry_buffer, align 8
  %661 = load i32, i32* %2, align 4
  %662 = sext i32 %661 to i64
  %663 = getelementptr inbounds %struct.hash_entry, %struct.hash_entry* %660, i64 %662
  store %struct.hash_entry* %663, %struct.hash_entry** %3, align 8
  br label %498

664:                                              ; preds = %498
  %665 = getelementptr inbounds [6 x i32], [6 x i32]* %17, i64 0, i64 0
  store i32* %665, i32** %20, align 8
  %666 = load i32, i32* @stderr, align 4
  %667 = load i32*, i32** %20, align 8
  %668 = getelementptr inbounds i32, i32* %667, i64 0
  %669 = load i32, i32* %668, align 4
  %670 = load i32*, i32** %20, align 8
  %671 = getelementptr inbounds i32, i32* %670, i64 1
  %672 = load i32, i32* %671, align 4
  %673 = load i32*, i32** %20, align 8
  %674 = getelementptr inbounds i32, i32* %673, i64 2
  %675 = load i32, i32* %674, align 4
  %676 = load i32*, i32** %20, align 8
  %677 = getelementptr inbounds i32, i32* %676, i64 1
  %678 = load i32, i32* %677, align 4
  %679 = load i32*, i32** %20, align 8
  %680 = getelementptr inbounds i32, i32* %679, i64 2
  %681 = load i32, i32* %680, align 4
  %682 = add nsw i32 %678, %681
  %683 = load i32*, i32** %20, align 8
  %684 = getelementptr inbounds i32, i32* %683, i64 0
  %685 = load i32, i32* %684, align 4
  %686 = mul nsw i32 50, %685
  %687 = add nsw i32 %682, %686
  %688 = load i32*, i32** %20, align 8
  %689 = getelementptr inbounds i32, i32* %688, i64 1
  %690 = load i32, i32* %689, align 4
  %691 = load i32*, i32** %20, align 8
  %692 = getelementptr inbounds i32, i32* %691, i64 2
  %693 = load i32, i32* %692, align 4
  %694 = add nsw i32 %690, %693
  %695 = sitofp i32 %694 to double
  %696 = fmul double %695, 1.000000e+00
  %697 = load i32*, i32** %20, align 8
  %698 = getelementptr inbounds i32, i32* %697, i64 0
  %699 = load i32, i32* %698, align 4
  %700 = sitofp i32 %699 to double
  %701 = fdiv double %696, %700
  %702 = fadd double %701, 5.000000e+01
  %703 = load i32*, i32** %20, align 8
  %704 = getelementptr inbounds i32, i32* %703, i64 3
  %705 = load i32, i32* %704, align 4
  %706 = sitofp i32 %705 to double
  %707 = fmul double %706, 5.000000e+02
  %708 = load i32*, i32** %20, align 8
  %709 = getelementptr inbounds i32, i32* %708, i64 4
  %710 = load i32, i32* %709, align 4
  %711 = sitofp i32 %710 to double
  %712 = fadd double %707, %711
  %713 = load i32*, i32** %20, align 8
  %714 = getelementptr inbounds i32, i32* %713, i64 0
  %715 = load i32, i32* %714, align 4
  %716 = sitofp i32 %715 to double
  %717 = fdiv double %712, %716
  %718 = load i32*, i32** %20, align 8
  %719 = getelementptr inbounds i32, i32* %718, i64 5
  %720 = load i32, i32* %719, align 4
  %721 = call i32 (i32, i8*, ...) @fprintf(i32 %666, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.3, i64 0, i64 0), i32 %669, i32 %672, i32 %675, i32 %687, double %702, double %717, i32 %720, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0))
  br label %722

722:                                              ; preds = %664, %33
  ret void
}

declare dso_local i32 @get_utime(i32) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i8* @zzmalloc(i32) #1

declare dso_local i32 @del_entry_used(i32) #1

declare dso_local i32 @del_entry_time(i32) #1

declare dso_local i32 @zzfree(i8*, i32) #1

declare dso_local i64 @GET_ENTRY_ID(i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i64 @get_hash(i8*, i32) #1

declare dso_local i32 @get_entry(i8*, i32, i64) #1

declare dso_local %struct.TYPE_3__* @get_entry_ptr(i32) #1

declare dso_local i32 @get_new_entry(...) #1

declare dso_local i32 @add_entry(i32) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @add_entry_time(i32) #1

declare dso_local i32 @add_entry_used(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
