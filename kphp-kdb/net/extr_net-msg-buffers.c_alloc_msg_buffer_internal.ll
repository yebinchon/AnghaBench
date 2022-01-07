; ModuleID = '/home/carl/AnghaBench/kphp-kdb/net/extr_net-msg-buffers.c_alloc_msg_buffer_internal.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/net/extr_net-msg-buffers.c_alloc_msg_buffer_internal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.msg_buffer = type { i32, i32, %struct.msg_buffers_chunk* }
%struct.msg_buffers_chunk = type { i64, i64*, i32, i32, i32, i32, i64, %struct.msg_buffers_chunk*, %struct.msg_buffers_chunk* }

@MSG_CHUNK_HEAD_MAGIC = common dso_local global i64 0, align 8
@verbosity = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [53 x i8] c"alloc_msg_buffer: allocating neighbor buffer for %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [59 x i8] c"alloc_msg_buffer(%d): tot_buffers = %d, free_buffers = %d\0A\00", align 1
@MSG_BUFFER_USED_MAGIC = common dso_local global i32 0, align 4
@total_used_buffers_size = common dso_local global i32 0, align 4
@total_used_buffers = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.msg_buffer* @alloc_msg_buffer_internal(%struct.msg_buffer* %0, %struct.msg_buffers_chunk* %1) #0 {
  %3 = alloca %struct.msg_buffer*, align 8
  %4 = alloca %struct.msg_buffer*, align 8
  %5 = alloca %struct.msg_buffers_chunk*, align 8
  %6 = alloca %struct.msg_buffers_chunk*, align 8
  %7 = alloca %struct.msg_buffers_chunk*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.msg_buffer*, align 8
  store %struct.msg_buffer* %0, %struct.msg_buffer** %4, align 8
  store %struct.msg_buffers_chunk* %1, %struct.msg_buffers_chunk** %5, align 8
  %18 = load %struct.msg_buffers_chunk*, %struct.msg_buffers_chunk** %5, align 8
  %19 = getelementptr inbounds %struct.msg_buffers_chunk, %struct.msg_buffers_chunk* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @MSG_CHUNK_HEAD_MAGIC, align 8
  %22 = icmp eq i64 %20, %21
  %23 = zext i1 %22 to i32
  %24 = call i32 @assert(i32 %23)
  %25 = load %struct.msg_buffers_chunk*, %struct.msg_buffers_chunk** %5, align 8
  %26 = getelementptr inbounds %struct.msg_buffers_chunk, %struct.msg_buffers_chunk* %25, i32 0, i32 7
  %27 = load %struct.msg_buffers_chunk*, %struct.msg_buffers_chunk** %26, align 8
  store %struct.msg_buffers_chunk* %27, %struct.msg_buffers_chunk** %6, align 8
  %28 = load %struct.msg_buffers_chunk*, %struct.msg_buffers_chunk** %6, align 8
  store %struct.msg_buffers_chunk* %28, %struct.msg_buffers_chunk** %7, align 8
  %29 = load %struct.msg_buffers_chunk*, %struct.msg_buffers_chunk** %7, align 8
  %30 = load %struct.msg_buffers_chunk*, %struct.msg_buffers_chunk** %5, align 8
  %31 = icmp eq %struct.msg_buffers_chunk* %29, %30
  br i1 %31, label %32, label %59

32:                                               ; preds = %2
  %33 = load %struct.msg_buffers_chunk*, %struct.msg_buffers_chunk** %5, align 8
  %34 = call %struct.msg_buffers_chunk* @alloc_new_msg_buffers_chunk(%struct.msg_buffers_chunk* %33)
  store %struct.msg_buffers_chunk* %34, %struct.msg_buffers_chunk** %7, align 8
  %35 = load %struct.msg_buffers_chunk*, %struct.msg_buffers_chunk** %7, align 8
  %36 = icmp ne %struct.msg_buffers_chunk* %35, null
  br i1 %36, label %38, label %37

37:                                               ; preds = %32
  store %struct.msg_buffer* null, %struct.msg_buffer** %3, align 8
  br label %431

38:                                               ; preds = %32
  %39 = load %struct.msg_buffers_chunk*, %struct.msg_buffers_chunk** %7, align 8
  %40 = load %struct.msg_buffers_chunk*, %struct.msg_buffers_chunk** %5, align 8
  %41 = getelementptr inbounds %struct.msg_buffers_chunk, %struct.msg_buffers_chunk* %40, i32 0, i32 7
  %42 = load %struct.msg_buffers_chunk*, %struct.msg_buffers_chunk** %41, align 8
  %43 = icmp eq %struct.msg_buffers_chunk* %39, %42
  br i1 %43, label %44, label %55

44:                                               ; preds = %38
  %45 = load %struct.msg_buffers_chunk*, %struct.msg_buffers_chunk** %7, align 8
  %46 = load %struct.msg_buffers_chunk*, %struct.msg_buffers_chunk** %5, align 8
  %47 = icmp ne %struct.msg_buffers_chunk* %45, %46
  br i1 %47, label %48, label %55

48:                                               ; preds = %44
  %49 = load %struct.msg_buffers_chunk*, %struct.msg_buffers_chunk** %7, align 8
  %50 = getelementptr inbounds %struct.msg_buffers_chunk, %struct.msg_buffers_chunk* %49, i32 0, i32 1
  %51 = load i64*, i64** %50, align 8
  %52 = getelementptr inbounds i64, i64* %51, i64 1
  %53 = load i64, i64* %52, align 8
  %54 = icmp ne i64 %53, 0
  br label %55

55:                                               ; preds = %48, %44, %38
  %56 = phi i1 [ false, %44 ], [ false, %38 ], [ %54, %48 ]
  %57 = zext i1 %56 to i32
  %58 = call i32 @assert(i32 %57)
  br label %136

59:                                               ; preds = %2
  br label %60

60:                                               ; preds = %134, %59
  %61 = load %struct.msg_buffers_chunk*, %struct.msg_buffers_chunk** %7, align 8
  %62 = load %struct.msg_buffers_chunk*, %struct.msg_buffers_chunk** %5, align 8
  %63 = icmp ne %struct.msg_buffers_chunk* %61, %62
  br i1 %63, label %64, label %72

64:                                               ; preds = %60
  %65 = load %struct.msg_buffers_chunk*, %struct.msg_buffers_chunk** %7, align 8
  %66 = getelementptr inbounds %struct.msg_buffers_chunk, %struct.msg_buffers_chunk* %65, i32 0, i32 1
  %67 = load i64*, i64** %66, align 8
  %68 = getelementptr inbounds i64, i64* %67, i64 1
  %69 = load i64, i64* %68, align 8
  %70 = icmp ne i64 %69, 0
  %71 = xor i1 %70, true
  br label %72

72:                                               ; preds = %64, %60
  %73 = phi i1 [ false, %60 ], [ %71, %64 ]
  br i1 %73, label %74, label %135

74:                                               ; preds = %72
  %75 = load %struct.msg_buffers_chunk*, %struct.msg_buffers_chunk** %7, align 8
  %76 = getelementptr inbounds %struct.msg_buffers_chunk, %struct.msg_buffers_chunk* %75, i32 0, i32 7
  %77 = load %struct.msg_buffers_chunk*, %struct.msg_buffers_chunk** %76, align 8
  %78 = load %struct.msg_buffers_chunk*, %struct.msg_buffers_chunk** %5, align 8
  %79 = getelementptr inbounds %struct.msg_buffers_chunk, %struct.msg_buffers_chunk* %78, i32 0, i32 7
  store %struct.msg_buffers_chunk* %77, %struct.msg_buffers_chunk** %79, align 8
  %80 = load %struct.msg_buffers_chunk*, %struct.msg_buffers_chunk** %5, align 8
  %81 = load %struct.msg_buffers_chunk*, %struct.msg_buffers_chunk** %7, align 8
  %82 = getelementptr inbounds %struct.msg_buffers_chunk, %struct.msg_buffers_chunk* %81, i32 0, i32 7
  %83 = load %struct.msg_buffers_chunk*, %struct.msg_buffers_chunk** %82, align 8
  %84 = getelementptr inbounds %struct.msg_buffers_chunk, %struct.msg_buffers_chunk* %83, i32 0, i32 8
  store %struct.msg_buffers_chunk* %80, %struct.msg_buffers_chunk** %84, align 8
  %85 = load %struct.msg_buffers_chunk*, %struct.msg_buffers_chunk** %5, align 8
  %86 = load %struct.msg_buffers_chunk*, %struct.msg_buffers_chunk** %7, align 8
  %87 = getelementptr inbounds %struct.msg_buffers_chunk, %struct.msg_buffers_chunk* %86, i32 0, i32 7
  store %struct.msg_buffers_chunk* %85, %struct.msg_buffers_chunk** %87, align 8
  %88 = load %struct.msg_buffers_chunk*, %struct.msg_buffers_chunk** %5, align 8
  %89 = getelementptr inbounds %struct.msg_buffers_chunk, %struct.msg_buffers_chunk* %88, i32 0, i32 8
  %90 = load %struct.msg_buffers_chunk*, %struct.msg_buffers_chunk** %89, align 8
  %91 = load %struct.msg_buffers_chunk*, %struct.msg_buffers_chunk** %7, align 8
  %92 = getelementptr inbounds %struct.msg_buffers_chunk, %struct.msg_buffers_chunk* %91, i32 0, i32 8
  store %struct.msg_buffers_chunk* %90, %struct.msg_buffers_chunk** %92, align 8
  %93 = load %struct.msg_buffers_chunk*, %struct.msg_buffers_chunk** %7, align 8
  %94 = load %struct.msg_buffers_chunk*, %struct.msg_buffers_chunk** %7, align 8
  %95 = getelementptr inbounds %struct.msg_buffers_chunk, %struct.msg_buffers_chunk* %94, i32 0, i32 8
  %96 = load %struct.msg_buffers_chunk*, %struct.msg_buffers_chunk** %95, align 8
  %97 = getelementptr inbounds %struct.msg_buffers_chunk, %struct.msg_buffers_chunk* %96, i32 0, i32 7
  store %struct.msg_buffers_chunk* %93, %struct.msg_buffers_chunk** %97, align 8
  %98 = load %struct.msg_buffers_chunk*, %struct.msg_buffers_chunk** %7, align 8
  %99 = load %struct.msg_buffers_chunk*, %struct.msg_buffers_chunk** %5, align 8
  %100 = getelementptr inbounds %struct.msg_buffers_chunk, %struct.msg_buffers_chunk* %99, i32 0, i32 8
  store %struct.msg_buffers_chunk* %98, %struct.msg_buffers_chunk** %100, align 8
  %101 = load %struct.msg_buffers_chunk*, %struct.msg_buffers_chunk** %5, align 8
  %102 = getelementptr inbounds %struct.msg_buffers_chunk, %struct.msg_buffers_chunk* %101, i32 0, i32 7
  %103 = load %struct.msg_buffers_chunk*, %struct.msg_buffers_chunk** %102, align 8
  store %struct.msg_buffers_chunk* %103, %struct.msg_buffers_chunk** %7, align 8
  %104 = load %struct.msg_buffers_chunk*, %struct.msg_buffers_chunk** %7, align 8
  %105 = load %struct.msg_buffers_chunk*, %struct.msg_buffers_chunk** %6, align 8
  %106 = icmp eq %struct.msg_buffers_chunk* %104, %105
  br i1 %106, label %107, label %134

107:                                              ; preds = %74
  %108 = load %struct.msg_buffers_chunk*, %struct.msg_buffers_chunk** %5, align 8
  %109 = call %struct.msg_buffers_chunk* @alloc_new_msg_buffers_chunk(%struct.msg_buffers_chunk* %108)
  store %struct.msg_buffers_chunk* %109, %struct.msg_buffers_chunk** %7, align 8
  %110 = load %struct.msg_buffers_chunk*, %struct.msg_buffers_chunk** %7, align 8
  %111 = icmp ne %struct.msg_buffers_chunk* %110, null
  br i1 %111, label %113, label %112

112:                                              ; preds = %107
  store %struct.msg_buffer* null, %struct.msg_buffer** %3, align 8
  br label %431

113:                                              ; preds = %107
  %114 = load %struct.msg_buffers_chunk*, %struct.msg_buffers_chunk** %7, align 8
  %115 = load %struct.msg_buffers_chunk*, %struct.msg_buffers_chunk** %5, align 8
  %116 = getelementptr inbounds %struct.msg_buffers_chunk, %struct.msg_buffers_chunk* %115, i32 0, i32 7
  %117 = load %struct.msg_buffers_chunk*, %struct.msg_buffers_chunk** %116, align 8
  %118 = icmp eq %struct.msg_buffers_chunk* %114, %117
  br i1 %118, label %119, label %130

119:                                              ; preds = %113
  %120 = load %struct.msg_buffers_chunk*, %struct.msg_buffers_chunk** %7, align 8
  %121 = load %struct.msg_buffers_chunk*, %struct.msg_buffers_chunk** %5, align 8
  %122 = icmp ne %struct.msg_buffers_chunk* %120, %121
  br i1 %122, label %123, label %130

123:                                              ; preds = %119
  %124 = load %struct.msg_buffers_chunk*, %struct.msg_buffers_chunk** %7, align 8
  %125 = getelementptr inbounds %struct.msg_buffers_chunk, %struct.msg_buffers_chunk* %124, i32 0, i32 1
  %126 = load i64*, i64** %125, align 8
  %127 = getelementptr inbounds i64, i64* %126, i64 1
  %128 = load i64, i64* %127, align 8
  %129 = icmp ne i64 %128, 0
  br label %130

130:                                              ; preds = %123, %119, %113
  %131 = phi i1 [ false, %119 ], [ false, %113 ], [ %129, %123 ]
  %132 = zext i1 %131 to i32
  %133 = call i32 @assert(i32 %132)
  br label %135

134:                                              ; preds = %74
  br label %60

135:                                              ; preds = %130, %72
  br label %136

136:                                              ; preds = %135, %55
  %137 = load %struct.msg_buffers_chunk*, %struct.msg_buffers_chunk** %7, align 8
  %138 = getelementptr inbounds %struct.msg_buffers_chunk, %struct.msg_buffers_chunk* %137, i32 0, i32 2
  %139 = load i32, i32* %138, align 8
  store i32 %139, i32* %8, align 4
  store i32 1, i32* %9, align 4
  %140 = load %struct.msg_buffer*, %struct.msg_buffer** %4, align 8
  %141 = icmp ne %struct.msg_buffer* %140, null
  br i1 %141, label %142, label %276

142:                                              ; preds = %136
  %143 = load %struct.msg_buffer*, %struct.msg_buffer** %4, align 8
  %144 = getelementptr inbounds %struct.msg_buffer, %struct.msg_buffer* %143, i32 0, i32 2
  %145 = load %struct.msg_buffers_chunk*, %struct.msg_buffers_chunk** %144, align 8
  %146 = load %struct.msg_buffers_chunk*, %struct.msg_buffers_chunk** %7, align 8
  %147 = icmp eq %struct.msg_buffers_chunk* %145, %146
  br i1 %147, label %148, label %276

148:                                              ; preds = %142
  %149 = load %struct.msg_buffers_chunk*, %struct.msg_buffers_chunk** %7, align 8
  %150 = load %struct.msg_buffer*, %struct.msg_buffer** %4, align 8
  %151 = call i32 @get_buffer_no(%struct.msg_buffers_chunk* %149, %struct.msg_buffer* %150)
  store i32 %151, i32* %10, align 4
  %152 = load i32, i32* @verbosity, align 4
  %153 = icmp sgt i32 %152, 2
  br i1 %153, label %154, label %158

154:                                              ; preds = %148
  %155 = load i32, i32* @stderr, align 4
  %156 = load i32, i32* %10, align 4
  %157 = call i32 (i32, i8*, i32, ...) @fprintf(i32 %155, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0), i32 %156)
  br label %158

158:                                              ; preds = %154, %148
  store i32 1, i32* %11, align 4
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  %159 = load i32, i32* %8, align 4
  store i32 %159, i32* %14, align 4
  br label %160

160:                                              ; preds = %251, %158
  %161 = load i32, i32* %9, align 4
  %162 = load i32, i32* %8, align 4
  %163 = icmp slt i32 %161, %162
  br i1 %163, label %164, label %252

164:                                              ; preds = %160
  %165 = load i32, i32* %9, align 4
  %166 = shl i32 %165, 1
  store i32 %166, i32* %9, align 4
  %167 = load i32, i32* %13, align 4
  %168 = load i32, i32* %14, align 4
  %169 = add nsw i32 %167, %168
  %170 = ashr i32 %169, 1
  store i32 %170, i32* %15, align 4
  %171 = load i32, i32* %10, align 4
  %172 = load i32, i32* %15, align 4
  %173 = icmp slt i32 %171, %172
  br i1 %173, label %174, label %203

174:                                              ; preds = %164
  %175 = load %struct.msg_buffers_chunk*, %struct.msg_buffers_chunk** %7, align 8
  %176 = getelementptr inbounds %struct.msg_buffers_chunk, %struct.msg_buffers_chunk* %175, i32 0, i32 1
  %177 = load i64*, i64** %176, align 8
  %178 = load i32, i32* %9, align 4
  %179 = sext i32 %178 to i64
  %180 = getelementptr inbounds i64, i64* %177, i64 %179
  %181 = load i64, i64* %180, align 8
  %182 = icmp sgt i64 %181, 0
  br i1 %182, label %183, label %198

183:                                              ; preds = %174
  %184 = load i32, i32* %15, align 4
  store i32 %184, i32* %14, align 4
  %185 = load %struct.msg_buffers_chunk*, %struct.msg_buffers_chunk** %7, align 8
  %186 = getelementptr inbounds %struct.msg_buffers_chunk, %struct.msg_buffers_chunk* %185, i32 0, i32 1
  %187 = load i64*, i64** %186, align 8
  %188 = load i32, i32* %9, align 4
  %189 = add nsw i32 %188, 1
  %190 = sext i32 %189 to i64
  %191 = getelementptr inbounds i64, i64* %187, i64 %190
  %192 = load i64, i64* %191, align 8
  %193 = icmp sgt i64 %192, 0
  br i1 %193, label %194, label %197

194:                                              ; preds = %183
  %195 = load i32, i32* %9, align 4
  %196 = add nsw i32 %195, 1
  store i32 %196, i32* %11, align 4
  br label %197

197:                                              ; preds = %194, %183
  br label %202

198:                                              ; preds = %174
  %199 = load i32, i32* %15, align 4
  store i32 %199, i32* %13, align 4
  %200 = load i32, i32* %9, align 4
  %201 = add nsw i32 %200, 1
  store i32 %201, i32* %9, align 4
  br label %202

202:                                              ; preds = %198, %197
  br label %251

203:                                              ; preds = %164
  %204 = load %struct.msg_buffers_chunk*, %struct.msg_buffers_chunk** %7, align 8
  %205 = getelementptr inbounds %struct.msg_buffers_chunk, %struct.msg_buffers_chunk* %204, i32 0, i32 1
  %206 = load i64*, i64** %205, align 8
  %207 = load i32, i32* %9, align 4
  %208 = add nsw i32 %207, 1
  %209 = sext i32 %208 to i64
  %210 = getelementptr inbounds i64, i64* %206, i64 %209
  %211 = load i64, i64* %210, align 8
  %212 = icmp sgt i64 %211, 0
  br i1 %212, label %213, label %217

213:                                              ; preds = %203
  %214 = load i32, i32* %15, align 4
  store i32 %214, i32* %13, align 4
  %215 = load i32, i32* %9, align 4
  %216 = add nsw i32 %215, 1
  store i32 %216, i32* %9, align 4
  br label %250

217:                                              ; preds = %203
  %218 = load i32, i32* %11, align 4
  store i32 %218, i32* %9, align 4
  store i32 %218, i32* %12, align 4
  br label %219

219:                                              ; preds = %237, %217
  %220 = load i32, i32* %9, align 4
  %221 = load i32, i32* %8, align 4
  %222 = icmp slt i32 %220, %221
  br i1 %222, label %223, label %249

223:                                              ; preds = %219
  %224 = load i32, i32* %9, align 4
  %225 = shl i32 %224, 1
  store i32 %225, i32* %9, align 4
  %226 = load %struct.msg_buffers_chunk*, %struct.msg_buffers_chunk** %7, align 8
  %227 = getelementptr inbounds %struct.msg_buffers_chunk, %struct.msg_buffers_chunk* %226, i32 0, i32 1
  %228 = load i64*, i64** %227, align 8
  %229 = load i32, i32* %9, align 4
  %230 = sext i32 %229 to i64
  %231 = getelementptr inbounds i64, i64* %228, i64 %230
  %232 = load i64, i64* %231, align 8
  %233 = icmp ne i64 %232, 0
  br i1 %233, label %237, label %234

234:                                              ; preds = %223
  %235 = load i32, i32* %9, align 4
  %236 = add nsw i32 %235, 1
  store i32 %236, i32* %9, align 4
  br label %237

237:                                              ; preds = %234, %223
  %238 = load %struct.msg_buffers_chunk*, %struct.msg_buffers_chunk** %7, align 8
  %239 = getelementptr inbounds %struct.msg_buffers_chunk, %struct.msg_buffers_chunk* %238, i32 0, i32 1
  %240 = load i64*, i64** %239, align 8
  %241 = load i32, i32* %9, align 4
  %242 = sext i32 %241 to i64
  %243 = getelementptr inbounds i64, i64* %240, i64 %242
  %244 = load i64, i64* %243, align 8
  %245 = add nsw i64 %244, -1
  store i64 %245, i64* %243, align 8
  %246 = icmp sge i64 %245, 0
  %247 = zext i1 %246 to i32
  %248 = call i32 @assert(i32 %247)
  br label %219

249:                                              ; preds = %219
  br label %252

250:                                              ; preds = %213
  br label %251

251:                                              ; preds = %250, %202
  br label %160

252:                                              ; preds = %249, %160
  %253 = load i32, i32* %12, align 4
  %254 = icmp ne i32 %253, 0
  br i1 %254, label %257, label %255

255:                                              ; preds = %252
  %256 = load i32, i32* %9, align 4
  store i32 %256, i32* %12, align 4
  br label %257

257:                                              ; preds = %255, %252
  br label %258

258:                                              ; preds = %261, %257
  %259 = load i32, i32* %12, align 4
  %260 = icmp sgt i32 %259, 0
  br i1 %260, label %261, label %275

261:                                              ; preds = %258
  %262 = load %struct.msg_buffers_chunk*, %struct.msg_buffers_chunk** %7, align 8
  %263 = getelementptr inbounds %struct.msg_buffers_chunk, %struct.msg_buffers_chunk* %262, i32 0, i32 1
  %264 = load i64*, i64** %263, align 8
  %265 = load i32, i32* %12, align 4
  %266 = sext i32 %265 to i64
  %267 = getelementptr inbounds i64, i64* %264, i64 %266
  %268 = load i64, i64* %267, align 8
  %269 = add nsw i64 %268, -1
  store i64 %269, i64* %267, align 8
  %270 = icmp sge i64 %269, 0
  %271 = zext i1 %270 to i32
  %272 = call i32 @assert(i32 %271)
  %273 = load i32, i32* %12, align 4
  %274 = ashr i32 %273, 1
  store i32 %274, i32* %12, align 4
  br label %258

275:                                              ; preds = %258
  br label %369

276:                                              ; preds = %142, %136
  %277 = load %struct.msg_buffers_chunk*, %struct.msg_buffers_chunk** %7, align 8
  %278 = getelementptr inbounds %struct.msg_buffers_chunk, %struct.msg_buffers_chunk* %277, i32 0, i32 1
  %279 = load i64*, i64** %278, align 8
  %280 = getelementptr inbounds i64, i64* %279, i64 1
  %281 = load i64, i64* %280, align 8
  %282 = icmp slt i64 %281, 16
  br i1 %282, label %283, label %289

283:                                              ; preds = %276
  %284 = load %struct.msg_buffers_chunk*, %struct.msg_buffers_chunk** %7, align 8
  %285 = getelementptr inbounds %struct.msg_buffers_chunk, %struct.msg_buffers_chunk* %284, i32 0, i32 1
  %286 = load i64*, i64** %285, align 8
  %287 = getelementptr inbounds i64, i64* %286, i64 1
  %288 = load i64, i64* %287, align 8
  br label %290

289:                                              ; preds = %276
  br label %290

290:                                              ; preds = %289, %283
  %291 = phi i64 [ %288, %283 ], [ 16, %289 ]
  %292 = trunc i64 %291 to i32
  store i32 %292, i32* %16, align 4
  %293 = call i64 (...) @lrand48()
  %294 = load i32, i32* %16, align 4
  %295 = sext i32 %294 to i64
  %296 = mul nsw i64 %293, %295
  %297 = ashr i64 %296, 31
  %298 = trunc i64 %297 to i32
  store i32 %298, i32* %16, align 4
  %299 = load i32, i32* %16, align 4
  %300 = icmp sge i32 %299, 0
  br i1 %300, label %301, label %310

301:                                              ; preds = %290
  %302 = load i32, i32* %16, align 4
  %303 = sext i32 %302 to i64
  %304 = load %struct.msg_buffers_chunk*, %struct.msg_buffers_chunk** %7, align 8
  %305 = getelementptr inbounds %struct.msg_buffers_chunk, %struct.msg_buffers_chunk* %304, i32 0, i32 1
  %306 = load i64*, i64** %305, align 8
  %307 = getelementptr inbounds i64, i64* %306, i64 1
  %308 = load i64, i64* %307, align 8
  %309 = icmp slt i64 %303, %308
  br label %310

310:                                              ; preds = %301, %290
  %311 = phi i1 [ false, %290 ], [ %309, %301 ]
  %312 = zext i1 %311 to i32
  %313 = call i32 @assert(i32 %312)
  br label %314

314:                                              ; preds = %356, %310
  %315 = load i32, i32* %9, align 4
  %316 = load i32, i32* %8, align 4
  %317 = icmp slt i32 %315, %316
  br i1 %317, label %318, label %357

318:                                              ; preds = %314
  %319 = load %struct.msg_buffers_chunk*, %struct.msg_buffers_chunk** %7, align 8
  %320 = getelementptr inbounds %struct.msg_buffers_chunk, %struct.msg_buffers_chunk* %319, i32 0, i32 1
  %321 = load i64*, i64** %320, align 8
  %322 = load i32, i32* %9, align 4
  %323 = sext i32 %322 to i64
  %324 = getelementptr inbounds i64, i64* %321, i64 %323
  %325 = load i64, i64* %324, align 8
  %326 = add nsw i64 %325, -1
  store i64 %326, i64* %324, align 8
  %327 = icmp sge i64 %326, 0
  %328 = zext i1 %327 to i32
  %329 = call i32 @assert(i32 %328)
  %330 = load i32, i32* %9, align 4
  %331 = shl i32 %330, 1
  store i32 %331, i32* %9, align 4
  %332 = load %struct.msg_buffers_chunk*, %struct.msg_buffers_chunk** %7, align 8
  %333 = getelementptr inbounds %struct.msg_buffers_chunk, %struct.msg_buffers_chunk* %332, i32 0, i32 1
  %334 = load i64*, i64** %333, align 8
  %335 = load i32, i32* %9, align 4
  %336 = sext i32 %335 to i64
  %337 = getelementptr inbounds i64, i64* %334, i64 %336
  %338 = load i64, i64* %337, align 8
  %339 = load i32, i32* %16, align 4
  %340 = sext i32 %339 to i64
  %341 = icmp sle i64 %338, %340
  br i1 %341, label %342, label %356

342:                                              ; preds = %318
  %343 = load %struct.msg_buffers_chunk*, %struct.msg_buffers_chunk** %7, align 8
  %344 = getelementptr inbounds %struct.msg_buffers_chunk, %struct.msg_buffers_chunk* %343, i32 0, i32 1
  %345 = load i64*, i64** %344, align 8
  %346 = load i32, i32* %9, align 4
  %347 = sext i32 %346 to i64
  %348 = getelementptr inbounds i64, i64* %345, i64 %347
  %349 = load i64, i64* %348, align 8
  %350 = load i32, i32* %16, align 4
  %351 = sext i32 %350 to i64
  %352 = sub nsw i64 %351, %349
  %353 = trunc i64 %352 to i32
  store i32 %353, i32* %16, align 4
  %354 = load i32, i32* %9, align 4
  %355 = add nsw i32 %354, 1
  store i32 %355, i32* %9, align 4
  br label %356

356:                                              ; preds = %342, %318
  br label %314

357:                                              ; preds = %314
  %358 = load %struct.msg_buffers_chunk*, %struct.msg_buffers_chunk** %7, align 8
  %359 = getelementptr inbounds %struct.msg_buffers_chunk, %struct.msg_buffers_chunk* %358, i32 0, i32 1
  %360 = load i64*, i64** %359, align 8
  %361 = load i32, i32* %9, align 4
  %362 = sext i32 %361 to i64
  %363 = getelementptr inbounds i64, i64* %360, i64 %362
  %364 = load i64, i64* %363, align 8
  %365 = add nsw i64 %364, -1
  store i64 %365, i64* %363, align 8
  %366 = icmp eq i64 %365, 0
  %367 = zext i1 %366 to i32
  %368 = call i32 @assert(i32 %367)
  br label %369

369:                                              ; preds = %357, %275
  %370 = load %struct.msg_buffers_chunk*, %struct.msg_buffers_chunk** %5, align 8
  %371 = getelementptr inbounds %struct.msg_buffers_chunk, %struct.msg_buffers_chunk* %370, i32 0, i32 3
  %372 = load i32, i32* %371, align 4
  %373 = add nsw i32 %372, -1
  store i32 %373, i32* %371, align 4
  %374 = load i32, i32* %8, align 4
  %375 = load i32, i32* %9, align 4
  %376 = sub nsw i32 %375, %374
  store i32 %376, i32* %9, align 4
  %377 = load i32, i32* @verbosity, align 4
  %378 = icmp sgt i32 %377, 2
  br i1 %378, label %379, label %389

379:                                              ; preds = %369
  %380 = load i32, i32* @stderr, align 4
  %381 = load i32, i32* %9, align 4
  %382 = load %struct.msg_buffers_chunk*, %struct.msg_buffers_chunk** %7, align 8
  %383 = getelementptr inbounds %struct.msg_buffers_chunk, %struct.msg_buffers_chunk* %382, i32 0, i32 4
  %384 = load i32, i32* %383, align 8
  %385 = load %struct.msg_buffers_chunk*, %struct.msg_buffers_chunk** %7, align 8
  %386 = getelementptr inbounds %struct.msg_buffers_chunk, %struct.msg_buffers_chunk* %385, i32 0, i32 3
  %387 = load i32, i32* %386, align 4
  %388 = call i32 (i32, i8*, i32, ...) @fprintf(i32 %380, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.1, i64 0, i64 0), i32 %381, i32 %384, i32 %387)
  br label %389

389:                                              ; preds = %379, %369
  %390 = load i32, i32* %9, align 4
  %391 = icmp sge i32 %390, 0
  br i1 %391, label %392, label %398

392:                                              ; preds = %389
  %393 = load i32, i32* %9, align 4
  %394 = load %struct.msg_buffers_chunk*, %struct.msg_buffers_chunk** %7, align 8
  %395 = getelementptr inbounds %struct.msg_buffers_chunk, %struct.msg_buffers_chunk* %394, i32 0, i32 4
  %396 = load i32, i32* %395, align 8
  %397 = icmp slt i32 %393, %396
  br label %398

398:                                              ; preds = %392, %389
  %399 = phi i1 [ false, %389 ], [ %397, %392 ]
  %400 = zext i1 %399 to i32
  %401 = call i32 @assert(i32 %400)
  %402 = load %struct.msg_buffers_chunk*, %struct.msg_buffers_chunk** %7, align 8
  %403 = getelementptr inbounds %struct.msg_buffers_chunk, %struct.msg_buffers_chunk* %402, i32 0, i32 6
  %404 = load i64, i64* %403, align 8
  %405 = inttoptr i64 %404 to i8*
  %406 = load i32, i32* %9, align 4
  %407 = load %struct.msg_buffers_chunk*, %struct.msg_buffers_chunk** %7, align 8
  %408 = getelementptr inbounds %struct.msg_buffers_chunk, %struct.msg_buffers_chunk* %407, i32 0, i32 5
  %409 = load i32, i32* %408, align 4
  %410 = add nsw i32 %409, 16
  %411 = mul nsw i32 %406, %410
  %412 = sext i32 %411 to i64
  %413 = getelementptr inbounds i8, i8* %405, i64 %412
  %414 = bitcast i8* %413 to %struct.msg_buffer*
  store %struct.msg_buffer* %414, %struct.msg_buffer** %17, align 8
  %415 = load %struct.msg_buffers_chunk*, %struct.msg_buffers_chunk** %7, align 8
  %416 = load %struct.msg_buffer*, %struct.msg_buffer** %17, align 8
  %417 = getelementptr inbounds %struct.msg_buffer, %struct.msg_buffer* %416, i32 0, i32 2
  store %struct.msg_buffers_chunk* %415, %struct.msg_buffers_chunk** %417, align 8
  %418 = load %struct.msg_buffer*, %struct.msg_buffer** %17, align 8
  %419 = getelementptr inbounds %struct.msg_buffer, %struct.msg_buffer* %418, i32 0, i32 0
  store i32 1, i32* %419, align 8
  %420 = load i32, i32* @MSG_BUFFER_USED_MAGIC, align 4
  %421 = load %struct.msg_buffer*, %struct.msg_buffer** %17, align 8
  %422 = getelementptr inbounds %struct.msg_buffer, %struct.msg_buffer* %421, i32 0, i32 1
  store i32 %420, i32* %422, align 4
  %423 = load %struct.msg_buffers_chunk*, %struct.msg_buffers_chunk** %7, align 8
  %424 = getelementptr inbounds %struct.msg_buffers_chunk, %struct.msg_buffers_chunk* %423, i32 0, i32 5
  %425 = load i32, i32* %424, align 4
  %426 = load i32, i32* @total_used_buffers_size, align 4
  %427 = add nsw i32 %426, %425
  store i32 %427, i32* @total_used_buffers_size, align 4
  %428 = load i32, i32* @total_used_buffers, align 4
  %429 = add nsw i32 %428, 1
  store i32 %429, i32* @total_used_buffers, align 4
  %430 = load %struct.msg_buffer*, %struct.msg_buffer** %17, align 8
  store %struct.msg_buffer* %430, %struct.msg_buffer** %3, align 8
  br label %431

431:                                              ; preds = %398, %112, %37
  %432 = load %struct.msg_buffer*, %struct.msg_buffer** %3, align 8
  ret %struct.msg_buffer* %432
}

declare dso_local i32 @assert(i32) #1

declare dso_local %struct.msg_buffers_chunk* @alloc_new_msg_buffers_chunk(%struct.msg_buffers_chunk*) #1

declare dso_local i32 @get_buffer_no(%struct.msg_buffers_chunk*, %struct.msg_buffer*) #1

declare dso_local i32 @fprintf(i32, i8*, i32, ...) #1

declare dso_local i64 @lrand48(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
