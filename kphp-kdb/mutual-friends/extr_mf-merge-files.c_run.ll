; ModuleID = '/home/carl/AnghaBench/kphp-kdb/mutual-friends/extr_mf-merge-files.c_run.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/mutual-friends/extr_mf-merge-files.c_run.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@un = common dso_local global i32 0, align 4
@engineN = common dso_local global i32 0, align 4
@this_mod = common dso_local global i32 0, align 4
@userN = common dso_local global i32 0, align 4
@an = common dso_local global i32 0, align 4
@fd = common dso_local global i64* null, align 8
@a = common dso_local global i32* null, align 8
@maxn = common dso_local global i32 0, align 4
@dn = common dso_local global i64 0, align 8
@d = common dso_local global i32* null, align 8
@A1 = common dso_local global i32 0, align 4
@B1 = common dso_local global i32 0, align 4
@A2 = common dso_local global i32 0, align 4
@B2 = common dso_local global i32 0, align 4
@h_val = common dso_local global i32* null, align 8
@h_key = common dso_local global i32* null, align 8
@b = common dso_local global i32* null, align 8
@cnt = common dso_local global i32* null, align 8
@c = common dso_local global i64* null, align 8
@MAX_ANS = common dso_local global i32 0, align 4
@test_mode = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [6 x i8] c"%d %d\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c" (%d;%d)\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @run() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 0, i32* %2, align 4
  br label %11

11:                                               ; preds = %368, %0
  %12 = load i32, i32* %2, align 4
  %13 = load i32, i32* @un, align 4
  %14 = icmp sle i32 %12, %13
  br i1 %14, label %15, label %23

15:                                               ; preds = %11
  %16 = load i32, i32* %2, align 4
  %17 = load i32, i32* @engineN, align 4
  %18 = mul nsw i32 %16, %17
  %19 = load i32, i32* @this_mod, align 4
  %20 = add nsw i32 %18, %19
  %21 = load i32, i32* @userN, align 4
  %22 = icmp sle i32 %20, %21
  br label %23

23:                                               ; preds = %15, %11
  %24 = phi i1 [ false, %11 ], [ %22, %15 ]
  br i1 %24, label %25, label %371

25:                                               ; preds = %23
  store i32 0, i32* @an, align 4
  store i32 0, i32* %1, align 4
  br label %26

26:                                               ; preds = %50, %25
  %27 = load i32, i32* %1, align 4
  %28 = load i32, i32* @engineN, align 4
  %29 = icmp slt i32 %27, %28
  br i1 %29, label %30, label %53

30:                                               ; preds = %26
  %31 = load i64*, i64** @fd, align 8
  %32 = load i32, i32* %1, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i64, i64* %31, i64 %33
  %35 = load i64, i64* %34, align 8
  %36 = icmp sge i64 %35, 0
  br i1 %36, label %37, label %49

37:                                               ; preds = %30
  %38 = load i32, i32* %1, align 4
  %39 = load i32, i32* %2, align 4
  %40 = load i32*, i32** @a, align 8
  %41 = load i32, i32* @an, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i32, i32* %40, i64 %42
  %44 = call i64 @load(i32 %38, i32 %39, i32* %43)
  %45 = load i32, i32* @an, align 4
  %46 = sext i32 %45 to i64
  %47 = add nsw i64 %46, %44
  %48 = trunc i64 %47 to i32
  store i32 %48, i32* @an, align 4
  br label %49

49:                                               ; preds = %37, %30
  br label %50

50:                                               ; preds = %49
  %51 = load i32, i32* %1, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %1, align 4
  br label %26

53:                                               ; preds = %26
  %54 = load i32, i32* @an, align 4
  %55 = load i32, i32* @maxn, align 4
  %56 = icmp slt i32 %54, %55
  %57 = zext i1 %56 to i32
  %58 = call i32 @assert(i32 %57)
  store i64 0, i64* @dn, align 8
  store i32 0, i32* %1, align 4
  br label %59

59:                                               ; preds = %97, %53
  %60 = load i32, i32* %1, align 4
  %61 = load i32, i32* @an, align 4
  %62 = icmp slt i32 %60, %61
  br i1 %62, label %63, label %100

63:                                               ; preds = %59
  %64 = load i32*, i32** @a, align 8
  %65 = load i32, i32* %1, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i32, i32* %64, i64 %66
  %68 = load i32, i32* %67, align 4
  %69 = and i32 %68, 1
  %70 = mul nsw i32 %69, 3
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %3, align 4
  %72 = load i32*, i32** @a, align 8
  %73 = load i32, i32* %1, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i32, i32* %72, i64 %74
  %76 = load i32, i32* %75, align 4
  %77 = sdiv i32 %76, 2
  store i32 %77, i32* %75, align 4
  %78 = load i32*, i32** @a, align 8
  %79 = load i32, i32* %1, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i32, i32* %78, i64 %80
  %82 = load i32, i32* %81, align 4
  %83 = load i32, i32* %3, align 4
  %84 = call i32 @h_add(i32 %82, i32 %83)
  %85 = load i32*, i32** @d, align 8
  %86 = load i64, i64* @dn, align 8
  %87 = getelementptr inbounds i32, i32* %85, i64 %86
  store i32 %84, i32* %87, align 4
  %88 = load i32*, i32** @d, align 8
  %89 = load i64, i64* @dn, align 8
  %90 = getelementptr inbounds i32, i32* %88, i64 %89
  %91 = load i32, i32* %90, align 4
  %92 = icmp ne i32 %91, -1
  br i1 %92, label %93, label %96

93:                                               ; preds = %63
  %94 = load i64, i64* @dn, align 8
  %95 = add i64 %94, 1
  store i64 %95, i64* @dn, align 8
  br label %96

96:                                               ; preds = %93, %63
  br label %97

97:                                               ; preds = %96
  %98 = load i32, i32* %1, align 4
  %99 = add nsw i32 %98, 1
  store i32 %99, i32* %1, align 4
  br label %59

100:                                              ; preds = %59
  %101 = load i32, i32* %2, align 4
  %102 = load i32, i32* @engineN, align 4
  %103 = mul nsw i32 %101, %102
  %104 = load i32, i32* @this_mod, align 4
  %105 = add nsw i32 %103, %104
  store i32 %105, i32* %4, align 4
  br label %106

106:                                              ; preds = %126, %100
  %107 = load i32, i32* @A1, align 4
  %108 = load i32, i32* %4, align 4
  %109 = icmp sle i32 %107, %108
  br i1 %109, label %110, label %127

110:                                              ; preds = %106
  %111 = load i32, i32* @A1, align 4
  %112 = load i32, i32* %4, align 4
  %113 = icmp eq i32 %111, %112
  br i1 %113, label %114, label %122

114:                                              ; preds = %110
  %115 = load i32, i32* @B1, align 4
  %116 = icmp sge i32 %115, 0
  br i1 %116, label %117, label %121

117:                                              ; preds = %114
  %118 = load i32, i32* @B1, align 4
  %119 = and i32 %118, 1073741823
  %120 = call i32 @h_rem(i32 %119)
  br label %121

121:                                              ; preds = %117, %114
  br label %122

122:                                              ; preds = %121, %110
  %123 = call i32 (...) @my_read1()
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %126, label %125

125:                                              ; preds = %122
  br label %127

126:                                              ; preds = %122
  br label %106

127:                                              ; preds = %125, %106
  br label %128

128:                                              ; preds = %148, %127
  %129 = load i32, i32* @A2, align 4
  %130 = load i32, i32* %4, align 4
  %131 = icmp sle i32 %129, %130
  br i1 %131, label %132, label %149

132:                                              ; preds = %128
  %133 = load i32, i32* @A2, align 4
  %134 = load i32, i32* %4, align 4
  %135 = icmp eq i32 %133, %134
  br i1 %135, label %136, label %144

136:                                              ; preds = %132
  %137 = load i32, i32* @B2, align 4
  %138 = icmp sge i32 %137, 0
  br i1 %138, label %139, label %143

139:                                              ; preds = %136
  %140 = load i32, i32* @B2, align 4
  %141 = and i32 %140, 1073741823
  %142 = call i32 @h_rem(i32 %141)
  br label %143

143:                                              ; preds = %139, %136
  br label %144

144:                                              ; preds = %143, %132
  %145 = call i32 (...) @my_read2()
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %148, label %147

147:                                              ; preds = %144
  br label %149

148:                                              ; preds = %144
  br label %128

149:                                              ; preds = %147, %128
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  store i32 0, i32* %1, align 4
  br label %150

150:                                              ; preds = %211, %149
  %151 = load i32, i32* %1, align 4
  %152 = sext i32 %151 to i64
  %153 = load i64, i64* @dn, align 8
  %154 = icmp ult i64 %152, %153
  br i1 %154, label %155, label %214

155:                                              ; preds = %150
  %156 = load i32*, i32** @d, align 8
  %157 = load i32, i32* %1, align 4
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds i32, i32* %156, i64 %158
  %160 = load i32, i32* %159, align 4
  store i32 %160, i32* %7, align 4
  %161 = load i32*, i32** @h_val, align 8
  %162 = load i32, i32* %7, align 4
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds i32, i32* %161, i64 %163
  %165 = load i32, i32* %164, align 4
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %167, label %202

167:                                              ; preds = %155
  %168 = load i32*, i32** @h_key, align 8
  %169 = load i32, i32* %7, align 4
  %170 = sext i32 %169 to i64
  %171 = getelementptr inbounds i32, i32* %168, i64 %170
  %172 = load i32, i32* %171, align 4
  %173 = load i32*, i32** @a, align 8
  %174 = load i32, i32* %5, align 4
  %175 = sext i32 %174 to i64
  %176 = getelementptr inbounds i32, i32* %173, i64 %175
  store i32 %172, i32* %176, align 4
  %177 = load i32*, i32** @h_val, align 8
  %178 = load i32, i32* %7, align 4
  %179 = sext i32 %178 to i64
  %180 = getelementptr inbounds i32, i32* %177, i64 %179
  %181 = load i32, i32* %180, align 4
  %182 = load i32*, i32** @b, align 8
  %183 = load i32, i32* %5, align 4
  %184 = sext i32 %183 to i64
  %185 = getelementptr inbounds i32, i32* %182, i64 %184
  store i32 %181, i32* %185, align 4
  %186 = load i32, i32* %6, align 4
  %187 = load i32*, i32** @b, align 8
  %188 = load i32, i32* %5, align 4
  %189 = sext i32 %188 to i64
  %190 = getelementptr inbounds i32, i32* %187, i64 %189
  %191 = load i32, i32* %190, align 4
  %192 = icmp slt i32 %186, %191
  br i1 %192, label %193, label %199

193:                                              ; preds = %167
  %194 = load i32*, i32** @b, align 8
  %195 = load i32, i32* %5, align 4
  %196 = sext i32 %195 to i64
  %197 = getelementptr inbounds i32, i32* %194, i64 %196
  %198 = load i32, i32* %197, align 4
  store i32 %198, i32* %6, align 4
  br label %199

199:                                              ; preds = %193, %167
  %200 = load i32, i32* %5, align 4
  %201 = add nsw i32 %200, 1
  store i32 %201, i32* %5, align 4
  br label %202

202:                                              ; preds = %199, %155
  %203 = load i32*, i32** @h_key, align 8
  %204 = load i32, i32* %7, align 4
  %205 = sext i32 %204 to i64
  %206 = getelementptr inbounds i32, i32* %203, i64 %205
  store i32 0, i32* %206, align 4
  %207 = load i32*, i32** @h_val, align 8
  %208 = load i32, i32* %7, align 4
  %209 = sext i32 %208 to i64
  %210 = getelementptr inbounds i32, i32* %207, i64 %209
  store i32 0, i32* %210, align 4
  br label %211

211:                                              ; preds = %202
  %212 = load i32, i32* %1, align 4
  %213 = add nsw i32 %212, 1
  store i32 %213, i32* %1, align 4
  br label %150

214:                                              ; preds = %150
  %215 = load i32*, i32** @cnt, align 8
  %216 = load i32, i32* %6, align 4
  %217 = add nsw i32 %216, 1
  %218 = sext i32 %217 to i64
  %219 = mul i64 4, %218
  %220 = trunc i64 %219 to i32
  %221 = call i32 @memset(i32* %215, i32 0, i32 %220)
  store i32 0, i32* %1, align 4
  br label %222

222:                                              ; preds = %237, %214
  %223 = load i32, i32* %1, align 4
  %224 = load i32, i32* %5, align 4
  %225 = icmp slt i32 %223, %224
  br i1 %225, label %226, label %240

226:                                              ; preds = %222
  %227 = load i32*, i32** @cnt, align 8
  %228 = load i32*, i32** @b, align 8
  %229 = load i32, i32* %1, align 4
  %230 = sext i32 %229 to i64
  %231 = getelementptr inbounds i32, i32* %228, i64 %230
  %232 = load i32, i32* %231, align 4
  %233 = sext i32 %232 to i64
  %234 = getelementptr inbounds i32, i32* %227, i64 %233
  %235 = load i32, i32* %234, align 4
  %236 = add nsw i32 %235, 1
  store i32 %236, i32* %234, align 4
  br label %237

237:                                              ; preds = %226
  %238 = load i32, i32* %1, align 4
  %239 = add nsw i32 %238, 1
  store i32 %239, i32* %1, align 4
  br label %222

240:                                              ; preds = %222
  store i32 0, i32* %8, align 4
  store i32 1, i32* %1, align 4
  br label %241

241:                                              ; preds = %264, %240
  %242 = load i32, i32* %1, align 4
  %243 = load i32, i32* %6, align 4
  %244 = icmp sle i32 %242, %243
  br i1 %244, label %245, label %267

245:                                              ; preds = %241
  %246 = load i32*, i32** @cnt, align 8
  %247 = load i32, i32* %1, align 4
  %248 = sext i32 %247 to i64
  %249 = getelementptr inbounds i32, i32* %246, i64 %248
  %250 = load i32, i32* %249, align 4
  store i32 %250, i32* %9, align 4
  %251 = load i32*, i32** @cnt, align 8
  %252 = load i32, i32* %1, align 4
  %253 = sub nsw i32 %252, 1
  %254 = sext i32 %253 to i64
  %255 = getelementptr inbounds i32, i32* %251, i64 %254
  %256 = load i32, i32* %255, align 4
  %257 = load i32, i32* %8, align 4
  %258 = add nsw i32 %256, %257
  %259 = load i32*, i32** @cnt, align 8
  %260 = load i32, i32* %1, align 4
  %261 = sext i32 %260 to i64
  %262 = getelementptr inbounds i32, i32* %259, i64 %261
  store i32 %258, i32* %262, align 4
  %263 = load i32, i32* %9, align 4
  store i32 %263, i32* %8, align 4
  br label %264

264:                                              ; preds = %245
  %265 = load i32, i32* %1, align 4
  %266 = add nsw i32 %265, 1
  store i32 %266, i32* %1, align 4
  br label %241

267:                                              ; preds = %241
  store i32 0, i32* %1, align 4
  br label %268

268:                                              ; preds = %288, %267
  %269 = load i32, i32* %1, align 4
  %270 = load i32, i32* %5, align 4
  %271 = icmp slt i32 %269, %270
  br i1 %271, label %272, label %291

272:                                              ; preds = %268
  %273 = load i32, i32* %1, align 4
  %274 = sext i32 %273 to i64
  %275 = load i64*, i64** @c, align 8
  %276 = load i32*, i32** @cnt, align 8
  %277 = load i32*, i32** @b, align 8
  %278 = load i32, i32* %1, align 4
  %279 = sext i32 %278 to i64
  %280 = getelementptr inbounds i32, i32* %277, i64 %279
  %281 = load i32, i32* %280, align 4
  %282 = sext i32 %281 to i64
  %283 = getelementptr inbounds i32, i32* %276, i64 %282
  %284 = load i32, i32* %283, align 4
  %285 = add nsw i32 %284, 1
  store i32 %285, i32* %283, align 4
  %286 = sext i32 %284 to i64
  %287 = getelementptr inbounds i64, i64* %275, i64 %286
  store i64 %274, i64* %287, align 8
  br label %288

288:                                              ; preds = %272
  %289 = load i32, i32* %1, align 4
  %290 = add nsw i32 %289, 1
  store i32 %290, i32* %1, align 4
  br label %268

291:                                              ; preds = %268
  %292 = load i32, i32* %5, align 4
  store i32 %292, i32* %10, align 4
  %293 = load i32, i32* %10, align 4
  %294 = load i32, i32* @MAX_ANS, align 4
  %295 = icmp sgt i32 %293, %294
  br i1 %295, label %296, label %298

296:                                              ; preds = %291
  %297 = load i32, i32* @MAX_ANS, align 4
  store i32 %297, i32* %10, align 4
  br label %298

298:                                              ; preds = %296, %291
  %299 = call i32 @my_write(i32* %4, i32 4)
  %300 = call i32 @my_write(i32* %10, i32 4)
  store i32 1, i32* %1, align 4
  br label %301

301:                                              ; preds = %326, %298
  %302 = load i32, i32* %1, align 4
  %303 = load i32, i32* %10, align 4
  %304 = icmp sle i32 %302, %303
  br i1 %304, label %305, label %329

305:                                              ; preds = %301
  %306 = load i32*, i32** @b, align 8
  %307 = load i64*, i64** @c, align 8
  %308 = load i32, i32* %5, align 4
  %309 = load i32, i32* %1, align 4
  %310 = sub nsw i32 %308, %309
  %311 = sext i32 %310 to i64
  %312 = getelementptr inbounds i64, i64* %307, i64 %311
  %313 = load i64, i64* %312, align 8
  %314 = getelementptr inbounds i32, i32* %306, i64 %313
  %315 = call i32 @my_write(i32* %314, i32 4)
  %316 = load i32*, i32** @a, align 8
  %317 = load i64*, i64** @c, align 8
  %318 = load i32, i32* %5, align 4
  %319 = load i32, i32* %1, align 4
  %320 = sub nsw i32 %318, %319
  %321 = sext i32 %320 to i64
  %322 = getelementptr inbounds i64, i64* %317, i64 %321
  %323 = load i64, i64* %322, align 8
  %324 = getelementptr inbounds i32, i32* %316, i64 %323
  %325 = call i32 @my_write(i32* %324, i32 4)
  br label %326

326:                                              ; preds = %305
  %327 = load i32, i32* %1, align 4
  %328 = add nsw i32 %327, 1
  store i32 %328, i32* %1, align 4
  br label %301

329:                                              ; preds = %301
  %330 = load i64, i64* @test_mode, align 8
  %331 = icmp ne i64 %330, 0
  br i1 %331, label %332, label %367

332:                                              ; preds = %329
  %333 = load i32, i32* %4, align 4
  %334 = load i32, i32* %10, align 4
  %335 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %333, i32 %334)
  store i32 1, i32* %1, align 4
  br label %336

336:                                              ; preds = %362, %332
  %337 = load i32, i32* %1, align 4
  %338 = load i32, i32* %10, align 4
  %339 = icmp sle i32 %337, %338
  br i1 %339, label %340, label %365

340:                                              ; preds = %336
  %341 = load i32*, i32** @b, align 8
  %342 = load i64*, i64** @c, align 8
  %343 = load i32, i32* %5, align 4
  %344 = load i32, i32* %1, align 4
  %345 = sub nsw i32 %343, %344
  %346 = sext i32 %345 to i64
  %347 = getelementptr inbounds i64, i64* %342, i64 %346
  %348 = load i64, i64* %347, align 8
  %349 = getelementptr inbounds i32, i32* %341, i64 %348
  %350 = load i32, i32* %349, align 4
  %351 = load i32*, i32** @a, align 8
  %352 = load i64*, i64** @c, align 8
  %353 = load i32, i32* %5, align 4
  %354 = load i32, i32* %1, align 4
  %355 = sub nsw i32 %353, %354
  %356 = sext i32 %355 to i64
  %357 = getelementptr inbounds i64, i64* %352, i64 %356
  %358 = load i64, i64* %357, align 8
  %359 = getelementptr inbounds i32, i32* %351, i64 %358
  %360 = load i32, i32* %359, align 4
  %361 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32 %350, i32 %360)
  br label %362

362:                                              ; preds = %340
  %363 = load i32, i32* %1, align 4
  %364 = add nsw i32 %363, 1
  store i32 %364, i32* %1, align 4
  br label %336

365:                                              ; preds = %336
  %366 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  br label %367

367:                                              ; preds = %365, %329
  br label %368

368:                                              ; preds = %367
  %369 = load i32, i32* %2, align 4
  %370 = add nsw i32 %369, 1
  store i32 %370, i32* %2, align 4
  br label %11

371:                                              ; preds = %23
  ret void
}

declare dso_local i64 @load(i32, i32, i32*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @h_add(i32, i32) #1

declare dso_local i32 @h_rem(i32) #1

declare dso_local i32 @my_read1(...) #1

declare dso_local i32 @my_read2(...) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @my_write(i32*, i32) #1

declare dso_local i32 @printf(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
