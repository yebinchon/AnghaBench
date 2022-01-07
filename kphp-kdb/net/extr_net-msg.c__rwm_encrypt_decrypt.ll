; ModuleID = '/home/carl/AnghaBench/kphp-kdb/net/extr_net-msg.c__rwm_encrypt_decrypt.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/net/extr_net-msg.c__rwm_encrypt_decrypt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.raw_message = type { i32, i32, i32, %struct.msg_part*, %struct.msg_part* }
%struct.msg_part = type { i32, i32, %struct.msg_part*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i8* }
%struct.vk_aes_ctx = type { i32 (%struct.vk_aes_ctx*, i8*, i8*, i32, i8*)*, i32 (%struct.vk_aes_ctx*, i8*, i8*, i32, i8*)* }

@_rwm_encrypt_decrypt.c = internal global [16 x i8] zeroinitializer, align 16

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @_rwm_encrypt_decrypt(%struct.raw_message* %0, i32 %1, %struct.vk_aes_ctx* %2, i32 %3, i8* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.raw_message*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.vk_aes_ctx*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.msg_part*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca %struct.msg_part*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  store %struct.raw_message* %0, %struct.raw_message** %7, align 8
  store i32 %1, i32* %8, align 4
  store %struct.vk_aes_ctx* %2, %struct.vk_aes_ctx** %9, align 8
  store i32 %3, i32* %10, align 4
  store i8* %4, i8** %11, align 8
  %23 = load i32, i32* %8, align 4
  %24 = icmp sge i32 %23, 0
  %25 = zext i1 %24 to i32
  %26 = call i32 @assert(i32 %25)
  %27 = load i32, i32* %8, align 4
  %28 = load %struct.raw_message*, %struct.raw_message** %7, align 8
  %29 = getelementptr inbounds %struct.raw_message, %struct.raw_message* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = icmp sgt i32 %27, %30
  br i1 %31, label %32, label %36

32:                                               ; preds = %5
  %33 = load %struct.raw_message*, %struct.raw_message** %7, align 8
  %34 = getelementptr inbounds %struct.raw_message, %struct.raw_message* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  store i32 %35, i32* %8, align 4
  br label %36

36:                                               ; preds = %32, %5
  %37 = load i32, i32* %8, align 4
  %38 = and i32 %37, -16
  store i32 %38, i32* %8, align 4
  %39 = load i32, i32* %8, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %42, label %41

41:                                               ; preds = %36
  store i32 0, i32* %6, align 4
  br label %382

42:                                               ; preds = %36
  %43 = load i32, i32* %8, align 4
  store i32 %43, i32* %12, align 4
  %44 = load %struct.raw_message*, %struct.raw_message** %7, align 8
  %45 = call i32 @rwm_fork_deep(%struct.raw_message* %44)
  %46 = load %struct.raw_message*, %struct.raw_message** %7, align 8
  %47 = getelementptr inbounds %struct.raw_message, %struct.raw_message* %46, i32 0, i32 4
  %48 = load %struct.msg_part*, %struct.msg_part** %47, align 8
  store %struct.msg_part* %48, %struct.msg_part** %13, align 8
  %49 = load %struct.msg_part*, %struct.msg_part** %13, align 8
  %50 = load %struct.raw_message*, %struct.raw_message** %7, align 8
  %51 = getelementptr inbounds %struct.raw_message, %struct.raw_message* %50, i32 0, i32 4
  %52 = load %struct.msg_part*, %struct.msg_part** %51, align 8
  %53 = icmp eq %struct.msg_part* %49, %52
  br i1 %53, label %54, label %58

54:                                               ; preds = %42
  %55 = load %struct.raw_message*, %struct.raw_message** %7, align 8
  %56 = getelementptr inbounds %struct.raw_message, %struct.raw_message* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  br label %62

58:                                               ; preds = %42
  %59 = load %struct.msg_part*, %struct.msg_part** %13, align 8
  %60 = getelementptr inbounds %struct.msg_part, %struct.msg_part* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  br label %62

62:                                               ; preds = %58, %54
  %63 = phi i32 [ %57, %54 ], [ %61, %58 ]
  store i32 %63, i32* %14, align 4
  %64 = load %struct.msg_part*, %struct.msg_part** %13, align 8
  %65 = load %struct.raw_message*, %struct.raw_message** %7, align 8
  %66 = getelementptr inbounds %struct.raw_message, %struct.raw_message* %65, i32 0, i32 3
  %67 = load %struct.msg_part*, %struct.msg_part** %66, align 8
  %68 = icmp eq %struct.msg_part* %64, %67
  br i1 %68, label %69, label %75

69:                                               ; preds = %62
  %70 = load %struct.raw_message*, %struct.raw_message** %7, align 8
  %71 = getelementptr inbounds %struct.raw_message, %struct.raw_message* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 8
  %73 = load i32, i32* %14, align 4
  %74 = sub nsw i32 %72, %73
  br label %85

75:                                               ; preds = %62
  %76 = load %struct.msg_part*, %struct.msg_part** %13, align 8
  %77 = getelementptr inbounds %struct.msg_part, %struct.msg_part* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.msg_part*, %struct.msg_part** %13, align 8
  %80 = getelementptr inbounds %struct.msg_part, %struct.msg_part* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = add nsw i32 %78, %81
  %83 = load i32, i32* %14, align 4
  %84 = sub nsw i32 %82, %83
  br label %85

85:                                               ; preds = %75, %69
  %86 = phi i32 [ %74, %69 ], [ %84, %75 ]
  store i32 %86, i32* %15, align 4
  br label %87

87:                                               ; preds = %379, %85
  %88 = load i32, i32* %8, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %380

90:                                               ; preds = %87
  %91 = load i32, i32* %14, align 4
  %92 = icmp sge i32 %91, 0
  %93 = zext i1 %92 to i32
  %94 = call i32 @assert(i32 %93)
  %95 = load i32, i32* %15, align 4
  %96 = icmp sge i32 %95, 0
  %97 = zext i1 %96 to i32
  %98 = call i32 @assert(i32 %97)
  br label %99

99:                                               ; preds = %163, %90
  %100 = load i32, i32* %15, align 4
  %101 = icmp sge i32 %100, 16
  br i1 %101, label %102, label %172

102:                                              ; preds = %99
  %103 = load i32, i32* %15, align 4
  %104 = load i32, i32* %8, align 4
  %105 = icmp slt i32 %103, %104
  br i1 %105, label %106, label %109

106:                                              ; preds = %102
  %107 = load i32, i32* %15, align 4
  %108 = and i32 %107, -16
  br label %111

109:                                              ; preds = %102
  %110 = load i32, i32* %8, align 4
  br label %111

111:                                              ; preds = %109, %106
  %112 = phi i32 [ %108, %106 ], [ %110, %109 ]
  store i32 %112, i32* %16, align 4
  %113 = load i32, i32* %10, align 4
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %139, label %115

115:                                              ; preds = %111
  %116 = load %struct.vk_aes_ctx*, %struct.vk_aes_ctx** %9, align 8
  %117 = getelementptr inbounds %struct.vk_aes_ctx, %struct.vk_aes_ctx* %116, i32 0, i32 1
  %118 = load i32 (%struct.vk_aes_ctx*, i8*, i8*, i32, i8*)*, i32 (%struct.vk_aes_ctx*, i8*, i8*, i32, i8*)** %117, align 8
  %119 = load %struct.vk_aes_ctx*, %struct.vk_aes_ctx** %9, align 8
  %120 = load %struct.msg_part*, %struct.msg_part** %13, align 8
  %121 = getelementptr inbounds %struct.msg_part, %struct.msg_part* %120, i32 0, i32 3
  %122 = load %struct.TYPE_2__*, %struct.TYPE_2__** %121, align 8
  %123 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %122, i32 0, i32 0
  %124 = load i8*, i8** %123, align 8
  %125 = load i32, i32* %14, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds i8, i8* %124, i64 %126
  %128 = load %struct.msg_part*, %struct.msg_part** %13, align 8
  %129 = getelementptr inbounds %struct.msg_part, %struct.msg_part* %128, i32 0, i32 3
  %130 = load %struct.TYPE_2__*, %struct.TYPE_2__** %129, align 8
  %131 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %130, i32 0, i32 0
  %132 = load i8*, i8** %131, align 8
  %133 = load i32, i32* %14, align 4
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds i8, i8* %132, i64 %134
  %136 = load i32, i32* %16, align 4
  %137 = load i8*, i8** %11, align 8
  %138 = call i32 %118(%struct.vk_aes_ctx* %119, i8* %127, i8* %135, i32 %136, i8* %137)
  br label %163

139:                                              ; preds = %111
  %140 = load %struct.vk_aes_ctx*, %struct.vk_aes_ctx** %9, align 8
  %141 = getelementptr inbounds %struct.vk_aes_ctx, %struct.vk_aes_ctx* %140, i32 0, i32 0
  %142 = load i32 (%struct.vk_aes_ctx*, i8*, i8*, i32, i8*)*, i32 (%struct.vk_aes_ctx*, i8*, i8*, i32, i8*)** %141, align 8
  %143 = load %struct.vk_aes_ctx*, %struct.vk_aes_ctx** %9, align 8
  %144 = load %struct.msg_part*, %struct.msg_part** %13, align 8
  %145 = getelementptr inbounds %struct.msg_part, %struct.msg_part* %144, i32 0, i32 3
  %146 = load %struct.TYPE_2__*, %struct.TYPE_2__** %145, align 8
  %147 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %146, i32 0, i32 0
  %148 = load i8*, i8** %147, align 8
  %149 = load i32, i32* %14, align 4
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds i8, i8* %148, i64 %150
  %152 = load %struct.msg_part*, %struct.msg_part** %13, align 8
  %153 = getelementptr inbounds %struct.msg_part, %struct.msg_part* %152, i32 0, i32 3
  %154 = load %struct.TYPE_2__*, %struct.TYPE_2__** %153, align 8
  %155 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %154, i32 0, i32 0
  %156 = load i8*, i8** %155, align 8
  %157 = load i32, i32* %14, align 4
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds i8, i8* %156, i64 %158
  %160 = load i32, i32* %16, align 4
  %161 = load i8*, i8** %11, align 8
  %162 = call i32 %142(%struct.vk_aes_ctx* %143, i8* %151, i8* %159, i32 %160, i8* %161)
  br label %163

163:                                              ; preds = %139, %115
  %164 = load i32, i32* %16, align 4
  %165 = load i32, i32* %14, align 4
  %166 = add nsw i32 %165, %164
  store i32 %166, i32* %14, align 4
  %167 = load i32, i32* %16, align 4
  %168 = load i32, i32* %8, align 4
  %169 = sub nsw i32 %168, %167
  store i32 %169, i32* %8, align 4
  %170 = load i32, i32* %15, align 4
  %171 = and i32 %170, 15
  store i32 %171, i32* %15, align 4
  br label %99

172:                                              ; preds = %99
  %173 = load i32, i32* %15, align 4
  %174 = icmp ne i32 %173, 0
  br i1 %174, label %175, label %350

175:                                              ; preds = %172
  %176 = load i32, i32* %8, align 4
  %177 = icmp ne i32 %176, 0
  br i1 %177, label %178, label %350

178:                                              ; preds = %175
  store i32 0, i32* %17, align 4
  %179 = load i32, i32* %15, align 4
  store i32 %179, i32* %18, align 4
  %180 = load i32, i32* %14, align 4
  store i32 %180, i32* %19, align 4
  %181 = load %struct.msg_part*, %struct.msg_part** %13, align 8
  store %struct.msg_part* %181, %struct.msg_part** %20, align 8
  br label %182

182:                                              ; preds = %250, %178
  %183 = load i32, i32* %17, align 4
  %184 = icmp slt i32 %183, 16
  br i1 %184, label %185, label %251

185:                                              ; preds = %182
  %186 = load i32, i32* %15, align 4
  %187 = load i32, i32* %17, align 4
  %188 = sub nsw i32 16, %187
  %189 = icmp sgt i32 %186, %188
  br i1 %189, label %190, label %193

190:                                              ; preds = %185
  %191 = load i32, i32* %17, align 4
  %192 = sub nsw i32 16, %191
  br label %195

193:                                              ; preds = %185
  %194 = load i32, i32* %15, align 4
  br label %195

195:                                              ; preds = %193, %190
  %196 = phi i32 [ %192, %190 ], [ %194, %193 ]
  store i32 %196, i32* %21, align 4
  %197 = load i32, i32* %17, align 4
  %198 = sext i32 %197 to i64
  %199 = getelementptr inbounds i8, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @_rwm_encrypt_decrypt.c, i64 0, i64 0), i64 %198
  %200 = load %struct.msg_part*, %struct.msg_part** %13, align 8
  %201 = getelementptr inbounds %struct.msg_part, %struct.msg_part* %200, i32 0, i32 3
  %202 = load %struct.TYPE_2__*, %struct.TYPE_2__** %201, align 8
  %203 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %202, i32 0, i32 0
  %204 = load i8*, i8** %203, align 8
  %205 = load i32, i32* %14, align 4
  %206 = sext i32 %205 to i64
  %207 = getelementptr inbounds i8, i8* %204, i64 %206
  %208 = load i32, i32* %21, align 4
  %209 = call i32 @memcpy(i8* %199, i8* %207, i32 %208)
  %210 = load i32, i32* %21, align 4
  %211 = load i32, i32* %17, align 4
  %212 = add nsw i32 %211, %210
  store i32 %212, i32* %17, align 4
  %213 = load i32, i32* %15, align 4
  %214 = load i32, i32* %21, align 4
  %215 = icmp eq i32 %213, %214
  br i1 %215, label %216, label %249

216:                                              ; preds = %195
  %217 = load %struct.msg_part*, %struct.msg_part** %13, align 8
  %218 = getelementptr inbounds %struct.msg_part, %struct.msg_part* %217, i32 0, i32 2
  %219 = load %struct.msg_part*, %struct.msg_part** %218, align 8
  store %struct.msg_part* %219, %struct.msg_part** %13, align 8
  %220 = load %struct.msg_part*, %struct.msg_part** %13, align 8
  %221 = icmp ne %struct.msg_part* %220, null
  br i1 %221, label %222, label %243

222:                                              ; preds = %216
  %223 = load %struct.msg_part*, %struct.msg_part** %13, align 8
  %224 = getelementptr inbounds %struct.msg_part, %struct.msg_part* %223, i32 0, i32 0
  %225 = load i32, i32* %224, align 8
  store i32 %225, i32* %14, align 4
  %226 = load %struct.msg_part*, %struct.msg_part** %13, align 8
  %227 = load %struct.raw_message*, %struct.raw_message** %7, align 8
  %228 = getelementptr inbounds %struct.raw_message, %struct.raw_message* %227, i32 0, i32 3
  %229 = load %struct.msg_part*, %struct.msg_part** %228, align 8
  %230 = icmp eq %struct.msg_part* %226, %229
  br i1 %230, label %231, label %237

231:                                              ; preds = %222
  %232 = load %struct.raw_message*, %struct.raw_message** %7, align 8
  %233 = getelementptr inbounds %struct.raw_message, %struct.raw_message* %232, i32 0, i32 2
  %234 = load i32, i32* %233, align 8
  %235 = load i32, i32* %14, align 4
  %236 = sub nsw i32 %234, %235
  br label %241

237:                                              ; preds = %222
  %238 = load %struct.msg_part*, %struct.msg_part** %13, align 8
  %239 = getelementptr inbounds %struct.msg_part, %struct.msg_part* %238, i32 0, i32 1
  %240 = load i32, i32* %239, align 4
  br label %241

241:                                              ; preds = %237, %231
  %242 = phi i32 [ %236, %231 ], [ %240, %237 ]
  store i32 %242, i32* %15, align 4
  br label %248

243:                                              ; preds = %216
  store i32 -1, i32* %14, align 4
  store i32 -1, i32* %15, align 4
  %244 = load i32, i32* %17, align 4
  %245 = icmp eq i32 %244, 16
  %246 = zext i1 %245 to i32
  %247 = call i32 @assert(i32 %246)
  br label %248

248:                                              ; preds = %243, %241
  br label %250

249:                                              ; preds = %195
  br label %251

250:                                              ; preds = %248
  br label %182

251:                                              ; preds = %249, %182
  %252 = load i32, i32* %10, align 4
  %253 = icmp ne i32 %252, 0
  br i1 %253, label %261, label %254

254:                                              ; preds = %251
  %255 = load %struct.vk_aes_ctx*, %struct.vk_aes_ctx** %9, align 8
  %256 = getelementptr inbounds %struct.vk_aes_ctx, %struct.vk_aes_ctx* %255, i32 0, i32 1
  %257 = load i32 (%struct.vk_aes_ctx*, i8*, i8*, i32, i8*)*, i32 (%struct.vk_aes_ctx*, i8*, i8*, i32, i8*)** %256, align 8
  %258 = load %struct.vk_aes_ctx*, %struct.vk_aes_ctx** %9, align 8
  %259 = load i8*, i8** %11, align 8
  %260 = call i32 %257(%struct.vk_aes_ctx* %258, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @_rwm_encrypt_decrypt.c, i64 0, i64 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @_rwm_encrypt_decrypt.c, i64 0, i64 0), i32 16, i8* %259)
  br label %268

261:                                              ; preds = %251
  %262 = load %struct.vk_aes_ctx*, %struct.vk_aes_ctx** %9, align 8
  %263 = getelementptr inbounds %struct.vk_aes_ctx, %struct.vk_aes_ctx* %262, i32 0, i32 0
  %264 = load i32 (%struct.vk_aes_ctx*, i8*, i8*, i32, i8*)*, i32 (%struct.vk_aes_ctx*, i8*, i8*, i32, i8*)** %263, align 8
  %265 = load %struct.vk_aes_ctx*, %struct.vk_aes_ctx** %9, align 8
  %266 = load i8*, i8** %11, align 8
  %267 = call i32 %264(%struct.vk_aes_ctx* %265, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @_rwm_encrypt_decrypt.c, i64 0, i64 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @_rwm_encrypt_decrypt.c, i64 0, i64 0), i32 16, i8* %266)
  br label %268

268:                                              ; preds = %261, %254
  %269 = load i32, i32* %18, align 4
  store i32 %269, i32* %15, align 4
  %270 = load i32, i32* %19, align 4
  store i32 %270, i32* %14, align 4
  %271 = load %struct.msg_part*, %struct.msg_part** %20, align 8
  store %struct.msg_part* %271, %struct.msg_part** %13, align 8
  store i32 0, i32* %17, align 4
  br label %272

272:                                              ; preds = %346, %268
  %273 = load i32, i32* %17, align 4
  %274 = icmp slt i32 %273, 16
  br i1 %274, label %275, label %347

275:                                              ; preds = %272
  %276 = load i32, i32* %15, align 4
  %277 = load i32, i32* %17, align 4
  %278 = sub nsw i32 16, %277
  %279 = icmp sgt i32 %276, %278
  br i1 %279, label %280, label %283

280:                                              ; preds = %275
  %281 = load i32, i32* %17, align 4
  %282 = sub nsw i32 16, %281
  br label %285

283:                                              ; preds = %275
  %284 = load i32, i32* %15, align 4
  br label %285

285:                                              ; preds = %283, %280
  %286 = phi i32 [ %282, %280 ], [ %284, %283 ]
  store i32 %286, i32* %22, align 4
  %287 = load %struct.msg_part*, %struct.msg_part** %13, align 8
  %288 = getelementptr inbounds %struct.msg_part, %struct.msg_part* %287, i32 0, i32 3
  %289 = load %struct.TYPE_2__*, %struct.TYPE_2__** %288, align 8
  %290 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %289, i32 0, i32 0
  %291 = load i8*, i8** %290, align 8
  %292 = load i32, i32* %14, align 4
  %293 = sext i32 %292 to i64
  %294 = getelementptr inbounds i8, i8* %291, i64 %293
  %295 = load i32, i32* %17, align 4
  %296 = sext i32 %295 to i64
  %297 = getelementptr inbounds i8, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @_rwm_encrypt_decrypt.c, i64 0, i64 0), i64 %296
  %298 = load i32, i32* %22, align 4
  %299 = call i32 @memcpy(i8* %294, i8* %297, i32 %298)
  %300 = load i32, i32* %22, align 4
  %301 = load i32, i32* %17, align 4
  %302 = add nsw i32 %301, %300
  store i32 %302, i32* %17, align 4
  %303 = load i32, i32* %15, align 4
  %304 = load i32, i32* %22, align 4
  %305 = icmp eq i32 %303, %304
  br i1 %305, label %306, label %339

306:                                              ; preds = %285
  %307 = load %struct.msg_part*, %struct.msg_part** %13, align 8
  %308 = getelementptr inbounds %struct.msg_part, %struct.msg_part* %307, i32 0, i32 2
  %309 = load %struct.msg_part*, %struct.msg_part** %308, align 8
  store %struct.msg_part* %309, %struct.msg_part** %13, align 8
  %310 = load %struct.msg_part*, %struct.msg_part** %13, align 8
  %311 = icmp ne %struct.msg_part* %310, null
  br i1 %311, label %312, label %333

312:                                              ; preds = %306
  %313 = load %struct.msg_part*, %struct.msg_part** %13, align 8
  %314 = getelementptr inbounds %struct.msg_part, %struct.msg_part* %313, i32 0, i32 0
  %315 = load i32, i32* %314, align 8
  store i32 %315, i32* %14, align 4
  %316 = load %struct.msg_part*, %struct.msg_part** %13, align 8
  %317 = load %struct.raw_message*, %struct.raw_message** %7, align 8
  %318 = getelementptr inbounds %struct.raw_message, %struct.raw_message* %317, i32 0, i32 3
  %319 = load %struct.msg_part*, %struct.msg_part** %318, align 8
  %320 = icmp eq %struct.msg_part* %316, %319
  br i1 %320, label %321, label %327

321:                                              ; preds = %312
  %322 = load %struct.raw_message*, %struct.raw_message** %7, align 8
  %323 = getelementptr inbounds %struct.raw_message, %struct.raw_message* %322, i32 0, i32 2
  %324 = load i32, i32* %323, align 8
  %325 = load i32, i32* %14, align 4
  %326 = sub nsw i32 %324, %325
  br label %331

327:                                              ; preds = %312
  %328 = load %struct.msg_part*, %struct.msg_part** %13, align 8
  %329 = getelementptr inbounds %struct.msg_part, %struct.msg_part* %328, i32 0, i32 1
  %330 = load i32, i32* %329, align 4
  br label %331

331:                                              ; preds = %327, %321
  %332 = phi i32 [ %326, %321 ], [ %330, %327 ]
  store i32 %332, i32* %15, align 4
  br label %338

333:                                              ; preds = %306
  store i32 -1, i32* %14, align 4
  store i32 -1, i32* %15, align 4
  %334 = load i32, i32* %17, align 4
  %335 = icmp eq i32 %334, 16
  %336 = zext i1 %335 to i32
  %337 = call i32 @assert(i32 %336)
  br label %338

338:                                              ; preds = %333, %331
  br label %346

339:                                              ; preds = %285
  %340 = load i32, i32* %22, align 4
  %341 = load i32, i32* %14, align 4
  %342 = add nsw i32 %341, %340
  store i32 %342, i32* %14, align 4
  %343 = load i32, i32* %22, align 4
  %344 = load i32, i32* %15, align 4
  %345 = sub nsw i32 %344, %343
  store i32 %345, i32* %15, align 4
  br label %347

346:                                              ; preds = %338
  br label %272

347:                                              ; preds = %339, %272
  %348 = load i32, i32* %8, align 4
  %349 = sub nsw i32 %348, 16
  store i32 %349, i32* %8, align 4
  br label %379

350:                                              ; preds = %175, %172
  %351 = load %struct.msg_part*, %struct.msg_part** %13, align 8
  %352 = getelementptr inbounds %struct.msg_part, %struct.msg_part* %351, i32 0, i32 2
  %353 = load %struct.msg_part*, %struct.msg_part** %352, align 8
  store %struct.msg_part* %353, %struct.msg_part** %13, align 8
  %354 = load %struct.msg_part*, %struct.msg_part** %13, align 8
  %355 = icmp ne %struct.msg_part* %354, null
  br i1 %355, label %356, label %377

356:                                              ; preds = %350
  %357 = load %struct.msg_part*, %struct.msg_part** %13, align 8
  %358 = getelementptr inbounds %struct.msg_part, %struct.msg_part* %357, i32 0, i32 0
  %359 = load i32, i32* %358, align 8
  store i32 %359, i32* %14, align 4
  %360 = load %struct.msg_part*, %struct.msg_part** %13, align 8
  %361 = load %struct.raw_message*, %struct.raw_message** %7, align 8
  %362 = getelementptr inbounds %struct.raw_message, %struct.raw_message* %361, i32 0, i32 3
  %363 = load %struct.msg_part*, %struct.msg_part** %362, align 8
  %364 = icmp eq %struct.msg_part* %360, %363
  br i1 %364, label %365, label %371

365:                                              ; preds = %356
  %366 = load %struct.raw_message*, %struct.raw_message** %7, align 8
  %367 = getelementptr inbounds %struct.raw_message, %struct.raw_message* %366, i32 0, i32 2
  %368 = load i32, i32* %367, align 8
  %369 = load i32, i32* %14, align 4
  %370 = sub nsw i32 %368, %369
  br label %375

371:                                              ; preds = %356
  %372 = load %struct.msg_part*, %struct.msg_part** %13, align 8
  %373 = getelementptr inbounds %struct.msg_part, %struct.msg_part* %372, i32 0, i32 1
  %374 = load i32, i32* %373, align 4
  br label %375

375:                                              ; preds = %371, %365
  %376 = phi i32 [ %370, %365 ], [ %374, %371 ]
  store i32 %376, i32* %15, align 4
  br label %378

377:                                              ; preds = %350
  store i32 -1, i32* %14, align 4
  store i32 -1, i32* %15, align 4
  br label %378

378:                                              ; preds = %377, %375
  br label %379

379:                                              ; preds = %378, %347
  br label %87

380:                                              ; preds = %87
  %381 = load i32, i32* %12, align 4
  store i32 %381, i32* %6, align 4
  br label %382

382:                                              ; preds = %380, %41
  %383 = load i32, i32* %6, align 4
  ret i32 %383
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @rwm_fork_deep(%struct.raw_message*) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
