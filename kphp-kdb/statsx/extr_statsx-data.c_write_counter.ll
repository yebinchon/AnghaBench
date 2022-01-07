; ModuleID = '/home/carl/AnghaBench/kphp-kdb/statsx/extr_statsx-data.c_write_counter.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/statsx/extr_statsx-data.c_write_counter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.counter = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32*, i64, i32, i32, i64, i64, i64, i64, i64, i64, i64, i64, i64, i32, i32 }

@COUNTER_TYPE_LAST = common dso_local global i32 0, align 4
@MAX_AGE = common dso_local global i32 0, align 4
@MAX_MSTATUS = common dso_local global i32 0, align 4
@MAX_POLIT = common dso_local global i32 0, align 4
@MAX_SECTION = common dso_local global i32 0, align 4
@MAX_SEX_AGE = common dso_local global i32 0, align 4
@MAX_SOURCE = common dso_local global i32 0, align 4
@now = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @write_counter(%struct.counter* %0) #0 {
  %2 = alloca %struct.counter*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.counter* %0, %struct.counter** %2, align 8
  store i32 0, i32* %5, align 4
  %7 = load %struct.counter*, %struct.counter** %2, align 8
  %8 = getelementptr inbounds %struct.counter, %struct.counter* %7, i32 0, i32 23
  %9 = load i32, i32* %8, align 4
  %10 = call i32 @writeout_long(i32 %9)
  %11 = load i32, i32* %5, align 4
  %12 = add nsw i32 %11, 8
  store i32 %12, i32* %5, align 4
  %13 = load %struct.counter*, %struct.counter** %2, align 8
  %14 = getelementptr inbounds %struct.counter, %struct.counter* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = call i32 @writeout_int(i32 %15)
  %17 = load i32, i32* %5, align 4
  %18 = sext i32 %17 to i64
  %19 = add i64 %18, 4
  %20 = trunc i64 %19 to i32
  store i32 %20, i32* %5, align 4
  %21 = load %struct.counter*, %struct.counter** %2, align 8
  %22 = getelementptr inbounds %struct.counter, %struct.counter* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @COUNTER_TYPE_LAST, align 4
  %25 = xor i32 %24, -1
  %26 = and i32 %23, %25
  %27 = call i32 @writeout_int(i32 %26)
  %28 = load i32, i32* %5, align 4
  %29 = sext i32 %28 to i64
  %30 = add i64 %29, 4
  %31 = trunc i64 %30 to i32
  store i32 %31, i32* %5, align 4
  %32 = load %struct.counter*, %struct.counter** %2, align 8
  %33 = getelementptr inbounds %struct.counter, %struct.counter* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 8
  %35 = call i32 @writeout_int(i32 %34)
  %36 = load i32, i32* %5, align 4
  %37 = sext i32 %36 to i64
  %38 = add i64 %37, 4
  %39 = trunc i64 %38 to i32
  store i32 %39, i32* %5, align 4
  %40 = load %struct.counter*, %struct.counter** %2, align 8
  %41 = getelementptr inbounds %struct.counter, %struct.counter* %40, i32 0, i32 3
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @writeout_int(i32 %42)
  %44 = load i32, i32* %5, align 4
  %45 = sext i32 %44 to i64
  %46 = add i64 %45, 4
  %47 = trunc i64 %46 to i32
  store i32 %47, i32* %5, align 4
  %48 = load %struct.counter*, %struct.counter** %2, align 8
  %49 = getelementptr inbounds %struct.counter, %struct.counter* %48, i32 0, i32 4
  %50 = load i32, i32* %49, align 8
  %51 = call i32 @writeout_int(i32 %50)
  %52 = load i32, i32* %5, align 4
  %53 = sext i32 %52 to i64
  %54 = add i64 %53, 4
  %55 = trunc i64 %54 to i32
  store i32 %55, i32* %5, align 4
  %56 = load %struct.counter*, %struct.counter** %2, align 8
  %57 = getelementptr inbounds %struct.counter, %struct.counter* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = call i32 @writeout_int(i32 %58)
  %60 = load i32, i32* %5, align 4
  %61 = sext i32 %60 to i64
  %62 = add i64 %61, 4
  %63 = trunc i64 %62 to i32
  store i32 %63, i32* %5, align 4
  %64 = load %struct.counter*, %struct.counter** %2, align 8
  %65 = getelementptr inbounds %struct.counter, %struct.counter* %64, i32 0, i32 5
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @writeout_int(i32 %66)
  %68 = load i32, i32* %5, align 4
  %69 = sext i32 %68 to i64
  %70 = add i64 %69, 4
  %71 = trunc i64 %70 to i32
  store i32 %71, i32* %5, align 4
  %72 = load %struct.counter*, %struct.counter** %2, align 8
  %73 = getelementptr inbounds %struct.counter, %struct.counter* %72, i32 0, i32 6
  %74 = load i32, i32* %73, align 8
  %75 = call i32 @writeout_int(i32 %74)
  %76 = load i32, i32* %5, align 4
  %77 = sext i32 %76 to i64
  %78 = add i64 %77, 4
  %79 = trunc i64 %78 to i32
  store i32 %79, i32* %5, align 4
  %80 = load %struct.counter*, %struct.counter** %2, align 8
  %81 = getelementptr inbounds %struct.counter, %struct.counter* %80, i32 0, i32 7
  %82 = load i32, i32* %81, align 4
  %83 = call i32 @writeout_int(i32 %82)
  %84 = load i32, i32* %5, align 4
  %85 = sext i32 %84 to i64
  %86 = add i64 %85, 4
  %87 = trunc i64 %86 to i32
  store i32 %87, i32* %5, align 4
  %88 = load %struct.counter*, %struct.counter** %2, align 8
  %89 = getelementptr inbounds %struct.counter, %struct.counter* %88, i32 0, i32 8
  %90 = load i32, i32* %89, align 8
  %91 = call i32 @writeout_int(i32 %90)
  %92 = load i32, i32* %5, align 4
  %93 = sext i32 %92 to i64
  %94 = add i64 %93, 4
  %95 = trunc i64 %94 to i32
  store i32 %95, i32* %5, align 4
  %96 = load %struct.counter*, %struct.counter** %2, align 8
  %97 = getelementptr inbounds %struct.counter, %struct.counter* %96, i32 0, i32 22
  %98 = load i32, i32* %97, align 8
  %99 = call i32 @writeout(i32 %98, i32 8)
  %100 = load i32, i32* %5, align 4
  %101 = sext i32 %100 to i64
  %102 = add i64 %101, 8
  %103 = trunc i64 %102 to i32
  store i32 %103, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %104 = load %struct.counter*, %struct.counter** %2, align 8
  %105 = getelementptr inbounds %struct.counter, %struct.counter* %104, i32 0, i32 21
  %106 = load i64, i64* %105, align 8
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %111

108:                                              ; preds = %1
  %109 = load i32, i32* %6, align 4
  %110 = or i32 %109, 1
  store i32 %110, i32* %6, align 4
  br label %111

111:                                              ; preds = %108, %1
  %112 = load %struct.counter*, %struct.counter** %2, align 8
  %113 = getelementptr inbounds %struct.counter, %struct.counter* %112, i32 0, i32 20
  %114 = load i64, i64* %113, align 8
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %119

116:                                              ; preds = %111
  %117 = load i32, i32* %6, align 4
  %118 = or i32 %117, 2
  store i32 %118, i32* %6, align 4
  br label %119

119:                                              ; preds = %116, %111
  %120 = load %struct.counter*, %struct.counter** %2, align 8
  %121 = getelementptr inbounds %struct.counter, %struct.counter* %120, i32 0, i32 19
  %122 = load i64, i64* %121, align 8
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %124, label %127

124:                                              ; preds = %119
  %125 = load i32, i32* %6, align 4
  %126 = or i32 %125, 4
  store i32 %126, i32* %6, align 4
  br label %127

127:                                              ; preds = %124, %119
  %128 = load %struct.counter*, %struct.counter** %2, align 8
  %129 = getelementptr inbounds %struct.counter, %struct.counter* %128, i32 0, i32 18
  %130 = load i64, i64* %129, align 8
  %131 = icmp ne i64 %130, 0
  br i1 %131, label %132, label %135

132:                                              ; preds = %127
  %133 = load i32, i32* %6, align 4
  %134 = or i32 %133, 8
  store i32 %134, i32* %6, align 4
  br label %135

135:                                              ; preds = %132, %127
  %136 = load %struct.counter*, %struct.counter** %2, align 8
  %137 = getelementptr inbounds %struct.counter, %struct.counter* %136, i32 0, i32 17
  %138 = load i64, i64* %137, align 8
  %139 = icmp ne i64 %138, 0
  br i1 %139, label %140, label %143

140:                                              ; preds = %135
  %141 = load i32, i32* %6, align 4
  %142 = or i32 %141, 16
  store i32 %142, i32* %6, align 4
  br label %143

143:                                              ; preds = %140, %135
  %144 = load %struct.counter*, %struct.counter** %2, align 8
  %145 = getelementptr inbounds %struct.counter, %struct.counter* %144, i32 0, i32 16
  %146 = load i64, i64* %145, align 8
  %147 = icmp ne i64 %146, 0
  br i1 %147, label %148, label %151

148:                                              ; preds = %143
  %149 = load i32, i32* %6, align 4
  %150 = or i32 %149, 32
  store i32 %150, i32* %6, align 4
  br label %151

151:                                              ; preds = %148, %143
  %152 = load %struct.counter*, %struct.counter** %2, align 8
  %153 = getelementptr inbounds %struct.counter, %struct.counter* %152, i32 0, i32 15
  %154 = load i64, i64* %153, align 8
  %155 = icmp ne i64 %154, 0
  br i1 %155, label %156, label %159

156:                                              ; preds = %151
  %157 = load i32, i32* %6, align 4
  %158 = or i32 %157, 64
  store i32 %158, i32* %6, align 4
  br label %159

159:                                              ; preds = %156, %151
  %160 = load %struct.counter*, %struct.counter** %2, align 8
  %161 = getelementptr inbounds %struct.counter, %struct.counter* %160, i32 0, i32 14
  %162 = load i64, i64* %161, align 8
  %163 = icmp ne i64 %162, 0
  br i1 %163, label %164, label %167

164:                                              ; preds = %159
  %165 = load i32, i32* %6, align 4
  %166 = or i32 %165, 128
  store i32 %166, i32* %6, align 4
  br label %167

167:                                              ; preds = %164, %159
  %168 = load %struct.counter*, %struct.counter** %2, align 8
  %169 = getelementptr inbounds %struct.counter, %struct.counter* %168, i32 0, i32 13
  %170 = load i64, i64* %169, align 8
  %171 = icmp ne i64 %170, 0
  br i1 %171, label %172, label %175

172:                                              ; preds = %167
  %173 = load i32, i32* %6, align 4
  %174 = or i32 %173, 256
  store i32 %174, i32* %6, align 4
  br label %175

175:                                              ; preds = %172, %167
  %176 = load i32, i32* %6, align 4
  %177 = call i32 @writeout_int(i32 %176)
  %178 = load i32, i32* %5, align 4
  %179 = sext i32 %178 to i64
  %180 = add i64 %179, 4
  %181 = trunc i64 %180 to i32
  store i32 %181, i32* %5, align 4
  %182 = load %struct.counter*, %struct.counter** %2, align 8
  %183 = getelementptr inbounds %struct.counter, %struct.counter* %182, i32 0, i32 21
  %184 = load i64, i64* %183, align 8
  %185 = icmp ne i64 %184, 0
  br i1 %185, label %186, label %196

186:                                              ; preds = %175
  %187 = load %struct.counter*, %struct.counter** %2, align 8
  %188 = getelementptr inbounds %struct.counter, %struct.counter* %187, i32 0, i32 21
  %189 = load i64, i64* %188, align 8
  %190 = load i32, i32* @MAX_AGE, align 4
  %191 = call i64 @write_list(i64 %189, i32 %190)
  %192 = load i32, i32* %5, align 4
  %193 = sext i32 %192 to i64
  %194 = add nsw i64 %193, %191
  %195 = trunc i64 %194 to i32
  store i32 %195, i32* %5, align 4
  br label %196

196:                                              ; preds = %186, %175
  %197 = load %struct.counter*, %struct.counter** %2, align 8
  %198 = getelementptr inbounds %struct.counter, %struct.counter* %197, i32 0, i32 20
  %199 = load i64, i64* %198, align 8
  %200 = icmp ne i64 %199, 0
  br i1 %200, label %201, label %211

201:                                              ; preds = %196
  %202 = load %struct.counter*, %struct.counter** %2, align 8
  %203 = getelementptr inbounds %struct.counter, %struct.counter* %202, i32 0, i32 20
  %204 = load i64, i64* %203, align 8
  %205 = load i32, i32* @MAX_MSTATUS, align 4
  %206 = call i64 @write_list(i64 %204, i32 %205)
  %207 = load i32, i32* %5, align 4
  %208 = sext i32 %207 to i64
  %209 = add nsw i64 %208, %206
  %210 = trunc i64 %209 to i32
  store i32 %210, i32* %5, align 4
  br label %211

211:                                              ; preds = %201, %196
  %212 = load %struct.counter*, %struct.counter** %2, align 8
  %213 = getelementptr inbounds %struct.counter, %struct.counter* %212, i32 0, i32 19
  %214 = load i64, i64* %213, align 8
  %215 = icmp ne i64 %214, 0
  br i1 %215, label %216, label %226

216:                                              ; preds = %211
  %217 = load %struct.counter*, %struct.counter** %2, align 8
  %218 = getelementptr inbounds %struct.counter, %struct.counter* %217, i32 0, i32 19
  %219 = load i64, i64* %218, align 8
  %220 = load i32, i32* @MAX_POLIT, align 4
  %221 = call i64 @write_list(i64 %219, i32 %220)
  %222 = load i32, i32* %5, align 4
  %223 = sext i32 %222 to i64
  %224 = add nsw i64 %223, %221
  %225 = trunc i64 %224 to i32
  store i32 %225, i32* %5, align 4
  br label %226

226:                                              ; preds = %216, %211
  %227 = load %struct.counter*, %struct.counter** %2, align 8
  %228 = getelementptr inbounds %struct.counter, %struct.counter* %227, i32 0, i32 18
  %229 = load i64, i64* %228, align 8
  %230 = icmp ne i64 %229, 0
  br i1 %230, label %231, label %241

231:                                              ; preds = %226
  %232 = load %struct.counter*, %struct.counter** %2, align 8
  %233 = getelementptr inbounds %struct.counter, %struct.counter* %232, i32 0, i32 18
  %234 = load i64, i64* %233, align 8
  %235 = load i32, i32* @MAX_SECTION, align 4
  %236 = call i64 @write_list(i64 %234, i32 %235)
  %237 = load i32, i32* %5, align 4
  %238 = sext i32 %237 to i64
  %239 = add nsw i64 %238, %236
  %240 = trunc i64 %239 to i32
  store i32 %240, i32* %5, align 4
  br label %241

241:                                              ; preds = %231, %226
  %242 = load %struct.counter*, %struct.counter** %2, align 8
  %243 = getelementptr inbounds %struct.counter, %struct.counter* %242, i32 0, i32 17
  %244 = load i64, i64* %243, align 8
  %245 = icmp ne i64 %244, 0
  br i1 %245, label %246, label %255

246:                                              ; preds = %241
  %247 = load %struct.counter*, %struct.counter** %2, align 8
  %248 = getelementptr inbounds %struct.counter, %struct.counter* %247, i32 0, i32 17
  %249 = load i64, i64* %248, align 8
  %250 = call i64 @write_list2(i64 %249)
  %251 = load i32, i32* %5, align 4
  %252 = sext i32 %251 to i64
  %253 = add nsw i64 %252, %250
  %254 = trunc i64 %253 to i32
  store i32 %254, i32* %5, align 4
  br label %255

255:                                              ; preds = %246, %241
  %256 = load %struct.counter*, %struct.counter** %2, align 8
  %257 = getelementptr inbounds %struct.counter, %struct.counter* %256, i32 0, i32 16
  %258 = load i64, i64* %257, align 8
  %259 = icmp ne i64 %258, 0
  br i1 %259, label %260, label %270

260:                                              ; preds = %255
  %261 = load %struct.counter*, %struct.counter** %2, align 8
  %262 = getelementptr inbounds %struct.counter, %struct.counter* %261, i32 0, i32 16
  %263 = load i64, i64* %262, align 8
  %264 = load i32, i32* @MAX_SEX_AGE, align 4
  %265 = call i64 @write_list(i64 %263, i32 %264)
  %266 = load i32, i32* %5, align 4
  %267 = sext i32 %266 to i64
  %268 = add nsw i64 %267, %265
  %269 = trunc i64 %268 to i32
  store i32 %269, i32* %5, align 4
  br label %270

270:                                              ; preds = %260, %255
  %271 = load %struct.counter*, %struct.counter** %2, align 8
  %272 = getelementptr inbounds %struct.counter, %struct.counter* %271, i32 0, i32 15
  %273 = load i64, i64* %272, align 8
  %274 = icmp ne i64 %273, 0
  br i1 %274, label %275, label %284

275:                                              ; preds = %270
  %276 = load %struct.counter*, %struct.counter** %2, align 8
  %277 = getelementptr inbounds %struct.counter, %struct.counter* %276, i32 0, i32 15
  %278 = load i64, i64* %277, align 8
  %279 = call i64 @write_list2(i64 %278)
  %280 = load i32, i32* %5, align 4
  %281 = sext i32 %280 to i64
  %282 = add nsw i64 %281, %279
  %283 = trunc i64 %282 to i32
  store i32 %283, i32* %5, align 4
  br label %284

284:                                              ; preds = %275, %270
  %285 = load %struct.counter*, %struct.counter** %2, align 8
  %286 = getelementptr inbounds %struct.counter, %struct.counter* %285, i32 0, i32 14
  %287 = load i64, i64* %286, align 8
  %288 = icmp ne i64 %287, 0
  br i1 %288, label %289, label %298

289:                                              ; preds = %284
  %290 = load %struct.counter*, %struct.counter** %2, align 8
  %291 = getelementptr inbounds %struct.counter, %struct.counter* %290, i32 0, i32 14
  %292 = load i64, i64* %291, align 8
  %293 = call i64 @write_list2(i64 %292)
  %294 = load i32, i32* %5, align 4
  %295 = sext i32 %294 to i64
  %296 = add nsw i64 %295, %293
  %297 = trunc i64 %296 to i32
  store i32 %297, i32* %5, align 4
  br label %298

298:                                              ; preds = %289, %284
  %299 = load %struct.counter*, %struct.counter** %2, align 8
  %300 = getelementptr inbounds %struct.counter, %struct.counter* %299, i32 0, i32 13
  %301 = load i64, i64* %300, align 8
  %302 = icmp ne i64 %301, 0
  br i1 %302, label %303, label %313

303:                                              ; preds = %298
  %304 = load %struct.counter*, %struct.counter** %2, align 8
  %305 = getelementptr inbounds %struct.counter, %struct.counter* %304, i32 0, i32 13
  %306 = load i64, i64* %305, align 8
  %307 = load i32, i32* @MAX_SOURCE, align 4
  %308 = call i64 @write_list(i64 %306, i32 %307)
  %309 = load i32, i32* %5, align 4
  %310 = sext i32 %309 to i64
  %311 = add nsw i64 %310, %308
  %312 = trunc i64 %311 to i32
  store i32 %312, i32* %5, align 4
  br label %313

313:                                              ; preds = %303, %298
  %314 = load %struct.counter*, %struct.counter** %2, align 8
  %315 = getelementptr inbounds %struct.counter, %struct.counter* %314, i32 0, i32 12
  %316 = load i32, i32* %315, align 4
  %317 = call i32 @writeout_long(i32 %316)
  %318 = load i32, i32* %5, align 4
  %319 = sext i32 %318 to i64
  %320 = add i64 %319, 8
  %321 = trunc i64 %320 to i32
  store i32 %321, i32* %5, align 4
  %322 = load %struct.counter*, %struct.counter** %2, align 8
  %323 = getelementptr inbounds %struct.counter, %struct.counter* %322, i32 0, i32 12
  %324 = load i32, i32* %323, align 4
  %325 = call i32 @ipopcount(i32 %324)
  store i32 %325, i32* %4, align 4
  store i32 0, i32* %3, align 4
  br label %326

326:                                              ; preds = %343, %313
  %327 = load i32, i32* %3, align 4
  %328 = load i32, i32* %4, align 4
  %329 = icmp slt i32 %327, %328
  br i1 %329, label %330, label %346

330:                                              ; preds = %326
  %331 = load %struct.counter*, %struct.counter** %2, align 8
  %332 = getelementptr inbounds %struct.counter, %struct.counter* %331, i32 0, i32 9
  %333 = load i32*, i32** %332, align 8
  %334 = load i32, i32* %3, align 4
  %335 = sext i32 %334 to i64
  %336 = getelementptr inbounds i32, i32* %333, i64 %335
  %337 = load i32, i32* %336, align 4
  %338 = call i32 @writeout_int(i32 %337)
  %339 = load i32, i32* %5, align 4
  %340 = sext i32 %339 to i64
  %341 = add i64 %340, 4
  %342 = trunc i64 %341 to i32
  store i32 %342, i32* %5, align 4
  br label %343

343:                                              ; preds = %330
  %344 = load i32, i32* %3, align 4
  %345 = add nsw i32 %344, 1
  store i32 %345, i32* %3, align 4
  br label %326

346:                                              ; preds = %326
  %347 = load %struct.counter*, %struct.counter** %2, align 8
  %348 = getelementptr inbounds %struct.counter, %struct.counter* %347, i32 0, i32 11
  %349 = load i32, i32* %348, align 8
  %350 = call i32 @writeout_char(i32 %349)
  %351 = load i32, i32* %5, align 4
  %352 = sext i32 %351 to i64
  %353 = add i64 %352, 1
  %354 = trunc i64 %353 to i32
  store i32 %354, i32* %5, align 4
  %355 = load %struct.counter*, %struct.counter** %2, align 8
  %356 = getelementptr inbounds %struct.counter, %struct.counter* %355, i32 0, i32 5
  %357 = load i32, i32* %356, align 4
  %358 = load i32, i32* @now, align 4
  %359 = icmp slt i32 %357, %358
  br i1 %359, label %360, label %363

360:                                              ; preds = %346
  %361 = load %struct.counter*, %struct.counter** %2, align 8
  %362 = getelementptr inbounds %struct.counter, %struct.counter* %361, i32 0, i32 10
  store i64 0, i64* %362, align 8
  br label %363

363:                                              ; preds = %360, %346
  %364 = load %struct.counter*, %struct.counter** %2, align 8
  %365 = getelementptr inbounds %struct.counter, %struct.counter* %364, i32 0, i32 10
  %366 = load i64, i64* %365, align 8
  %367 = call i64 @write_tree(i64 %366)
  %368 = load i32, i32* %5, align 4
  %369 = sext i32 %368 to i64
  %370 = add nsw i64 %369, %367
  %371 = trunc i64 %370 to i32
  store i32 %371, i32* %5, align 4
  %372 = load i32, i32* %5, align 4
  ret i32 %372
}

declare dso_local i32 @writeout_long(i32) #1

declare dso_local i32 @writeout_int(i32) #1

declare dso_local i32 @writeout(i32, i32) #1

declare dso_local i64 @write_list(i64, i32) #1

declare dso_local i64 @write_list2(i64) #1

declare dso_local i32 @ipopcount(i32) #1

declare dso_local i32 @writeout_char(i32) #1

declare dso_local i64 @write_tree(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
