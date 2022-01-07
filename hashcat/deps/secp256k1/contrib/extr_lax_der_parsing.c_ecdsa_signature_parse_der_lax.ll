; ModuleID = '/home/carl/AnghaBench/hashcat/deps/secp256k1/contrib/extr_lax_der_parsing.c_ecdsa_signature_parse_der_lax.c'
source_filename = "/home/carl/AnghaBench/hashcat/deps/secp256k1/contrib/extr_lax_der_parsing.c_ecdsa_signature_parse_der_lax.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ecdsa_signature_parse_der_lax(i32* %0, i32* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca [64 x i8], align 16
  %17 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i32* %1, i32** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  store i64 0, i64* %14, align 8
  %18 = bitcast [64 x i8]* %16 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %18, i8 0, i64 64, i1 false)
  store i32 0, i32* %17, align 4
  %19 = load i32*, i32** %6, align 8
  %20 = load i32*, i32** %7, align 8
  %21 = getelementptr inbounds [64 x i8], [64 x i8]* %16, i64 0, i64 0
  %22 = call i32 @secp256k1_ecdsa_signature_parse_compact(i32* %19, i32* %20, i8* %21)
  %23 = load i64, i64* %14, align 8
  %24 = load i64, i64* %9, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %33, label %26

26:                                               ; preds = %4
  %27 = load i8*, i8** %8, align 8
  %28 = load i64, i64* %14, align 8
  %29 = getelementptr inbounds i8, i8* %27, i64 %28
  %30 = load i8, i8* %29, align 1
  %31 = zext i8 %30 to i32
  %32 = icmp ne i32 %31, 48
  br i1 %32, label %33, label %34

33:                                               ; preds = %26, %4
  store i32 0, i32* %5, align 4
  br label %334

34:                                               ; preds = %26
  %35 = load i64, i64* %14, align 8
  %36 = add i64 %35, 1
  store i64 %36, i64* %14, align 8
  %37 = load i64, i64* %14, align 8
  %38 = load i64, i64* %9, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %41

40:                                               ; preds = %34
  store i32 0, i32* %5, align 4
  br label %334

41:                                               ; preds = %34
  %42 = load i8*, i8** %8, align 8
  %43 = load i64, i64* %14, align 8
  %44 = add i64 %43, 1
  store i64 %44, i64* %14, align 8
  %45 = getelementptr inbounds i8, i8* %42, i64 %43
  %46 = load i8, i8* %45, align 1
  %47 = zext i8 %46 to i64
  store i64 %47, i64* %15, align 8
  %48 = load i64, i64* %15, align 8
  %49 = and i64 %48, 128
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %64

51:                                               ; preds = %41
  %52 = load i64, i64* %15, align 8
  %53 = sub i64 %52, 128
  store i64 %53, i64* %15, align 8
  %54 = load i64, i64* %15, align 8
  %55 = load i64, i64* %9, align 8
  %56 = load i64, i64* %14, align 8
  %57 = sub i64 %55, %56
  %58 = icmp ugt i64 %54, %57
  br i1 %58, label %59, label %60

59:                                               ; preds = %51
  store i32 0, i32* %5, align 4
  br label %334

60:                                               ; preds = %51
  %61 = load i64, i64* %15, align 8
  %62 = load i64, i64* %14, align 8
  %63 = add i64 %62, %61
  store i64 %63, i64* %14, align 8
  br label %64

64:                                               ; preds = %60, %41
  %65 = load i64, i64* %14, align 8
  %66 = load i64, i64* %9, align 8
  %67 = icmp eq i64 %65, %66
  br i1 %67, label %75, label %68

68:                                               ; preds = %64
  %69 = load i8*, i8** %8, align 8
  %70 = load i64, i64* %14, align 8
  %71 = getelementptr inbounds i8, i8* %69, i64 %70
  %72 = load i8, i8* %71, align 1
  %73 = zext i8 %72 to i32
  %74 = icmp ne i32 %73, 2
  br i1 %74, label %75, label %76

75:                                               ; preds = %68, %64
  store i32 0, i32* %5, align 4
  br label %334

76:                                               ; preds = %68
  %77 = load i64, i64* %14, align 8
  %78 = add i64 %77, 1
  store i64 %78, i64* %14, align 8
  %79 = load i64, i64* %14, align 8
  %80 = load i64, i64* %9, align 8
  %81 = icmp eq i64 %79, %80
  br i1 %81, label %82, label %83

82:                                               ; preds = %76
  store i32 0, i32* %5, align 4
  br label %334

83:                                               ; preds = %76
  %84 = load i8*, i8** %8, align 8
  %85 = load i64, i64* %14, align 8
  %86 = add i64 %85, 1
  store i64 %86, i64* %14, align 8
  %87 = getelementptr inbounds i8, i8* %84, i64 %85
  %88 = load i8, i8* %87, align 1
  %89 = zext i8 %88 to i64
  store i64 %89, i64* %15, align 8
  %90 = load i64, i64* %15, align 8
  %91 = and i64 %90, 128
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %142

93:                                               ; preds = %83
  %94 = load i64, i64* %15, align 8
  %95 = sub i64 %94, 128
  store i64 %95, i64* %15, align 8
  %96 = load i64, i64* %15, align 8
  %97 = load i64, i64* %9, align 8
  %98 = load i64, i64* %14, align 8
  %99 = sub i64 %97, %98
  %100 = icmp ugt i64 %96, %99
  br i1 %100, label %101, label %102

101:                                              ; preds = %93
  store i32 0, i32* %5, align 4
  br label %334

102:                                              ; preds = %93
  br label %103

103:                                              ; preds = %115, %102
  %104 = load i64, i64* %15, align 8
  %105 = icmp ugt i64 %104, 0
  br i1 %105, label %106, label %113

106:                                              ; preds = %103
  %107 = load i8*, i8** %8, align 8
  %108 = load i64, i64* %14, align 8
  %109 = getelementptr inbounds i8, i8* %107, i64 %108
  %110 = load i8, i8* %109, align 1
  %111 = zext i8 %110 to i32
  %112 = icmp eq i32 %111, 0
  br label %113

113:                                              ; preds = %106, %103
  %114 = phi i1 [ false, %103 ], [ %112, %106 ]
  br i1 %114, label %115, label %120

115:                                              ; preds = %113
  %116 = load i64, i64* %14, align 8
  %117 = add i64 %116, 1
  store i64 %117, i64* %14, align 8
  %118 = load i64, i64* %15, align 8
  %119 = add i64 %118, -1
  store i64 %119, i64* %15, align 8
  br label %103

120:                                              ; preds = %113
  %121 = load i64, i64* %15, align 8
  %122 = icmp uge i64 %121, 8
  br i1 %122, label %123, label %124

123:                                              ; preds = %120
  store i32 0, i32* %5, align 4
  br label %334

124:                                              ; preds = %120
  store i64 0, i64* %11, align 8
  br label %125

125:                                              ; preds = %128, %124
  %126 = load i64, i64* %15, align 8
  %127 = icmp ugt i64 %126, 0
  br i1 %127, label %128, label %141

128:                                              ; preds = %125
  %129 = load i64, i64* %11, align 8
  %130 = shl i64 %129, 8
  %131 = load i8*, i8** %8, align 8
  %132 = load i64, i64* %14, align 8
  %133 = getelementptr inbounds i8, i8* %131, i64 %132
  %134 = load i8, i8* %133, align 1
  %135 = zext i8 %134 to i64
  %136 = add i64 %130, %135
  store i64 %136, i64* %11, align 8
  %137 = load i64, i64* %14, align 8
  %138 = add i64 %137, 1
  store i64 %138, i64* %14, align 8
  %139 = load i64, i64* %15, align 8
  %140 = add i64 %139, -1
  store i64 %140, i64* %15, align 8
  br label %125

141:                                              ; preds = %125
  br label %144

142:                                              ; preds = %83
  %143 = load i64, i64* %15, align 8
  store i64 %143, i64* %11, align 8
  br label %144

144:                                              ; preds = %142, %141
  %145 = load i64, i64* %11, align 8
  %146 = load i64, i64* %9, align 8
  %147 = load i64, i64* %14, align 8
  %148 = sub i64 %146, %147
  %149 = icmp ugt i64 %145, %148
  br i1 %149, label %150, label %151

150:                                              ; preds = %144
  store i32 0, i32* %5, align 4
  br label %334

151:                                              ; preds = %144
  %152 = load i64, i64* %14, align 8
  store i64 %152, i64* %10, align 8
  %153 = load i64, i64* %11, align 8
  %154 = load i64, i64* %14, align 8
  %155 = add i64 %154, %153
  store i64 %155, i64* %14, align 8
  %156 = load i64, i64* %14, align 8
  %157 = load i64, i64* %9, align 8
  %158 = icmp eq i64 %156, %157
  br i1 %158, label %166, label %159

159:                                              ; preds = %151
  %160 = load i8*, i8** %8, align 8
  %161 = load i64, i64* %14, align 8
  %162 = getelementptr inbounds i8, i8* %160, i64 %161
  %163 = load i8, i8* %162, align 1
  %164 = zext i8 %163 to i32
  %165 = icmp ne i32 %164, 2
  br i1 %165, label %166, label %167

166:                                              ; preds = %159, %151
  store i32 0, i32* %5, align 4
  br label %334

167:                                              ; preds = %159
  %168 = load i64, i64* %14, align 8
  %169 = add i64 %168, 1
  store i64 %169, i64* %14, align 8
  %170 = load i64, i64* %14, align 8
  %171 = load i64, i64* %9, align 8
  %172 = icmp eq i64 %170, %171
  br i1 %172, label %173, label %174

173:                                              ; preds = %167
  store i32 0, i32* %5, align 4
  br label %334

174:                                              ; preds = %167
  %175 = load i8*, i8** %8, align 8
  %176 = load i64, i64* %14, align 8
  %177 = add i64 %176, 1
  store i64 %177, i64* %14, align 8
  %178 = getelementptr inbounds i8, i8* %175, i64 %176
  %179 = load i8, i8* %178, align 1
  %180 = zext i8 %179 to i64
  store i64 %180, i64* %15, align 8
  %181 = load i64, i64* %15, align 8
  %182 = and i64 %181, 128
  %183 = icmp ne i64 %182, 0
  br i1 %183, label %184, label %233

184:                                              ; preds = %174
  %185 = load i64, i64* %15, align 8
  %186 = sub i64 %185, 128
  store i64 %186, i64* %15, align 8
  %187 = load i64, i64* %15, align 8
  %188 = load i64, i64* %9, align 8
  %189 = load i64, i64* %14, align 8
  %190 = sub i64 %188, %189
  %191 = icmp ugt i64 %187, %190
  br i1 %191, label %192, label %193

192:                                              ; preds = %184
  store i32 0, i32* %5, align 4
  br label %334

193:                                              ; preds = %184
  br label %194

194:                                              ; preds = %206, %193
  %195 = load i64, i64* %15, align 8
  %196 = icmp ugt i64 %195, 0
  br i1 %196, label %197, label %204

197:                                              ; preds = %194
  %198 = load i8*, i8** %8, align 8
  %199 = load i64, i64* %14, align 8
  %200 = getelementptr inbounds i8, i8* %198, i64 %199
  %201 = load i8, i8* %200, align 1
  %202 = zext i8 %201 to i32
  %203 = icmp eq i32 %202, 0
  br label %204

204:                                              ; preds = %197, %194
  %205 = phi i1 [ false, %194 ], [ %203, %197 ]
  br i1 %205, label %206, label %211

206:                                              ; preds = %204
  %207 = load i64, i64* %14, align 8
  %208 = add i64 %207, 1
  store i64 %208, i64* %14, align 8
  %209 = load i64, i64* %15, align 8
  %210 = add i64 %209, -1
  store i64 %210, i64* %15, align 8
  br label %194

211:                                              ; preds = %204
  %212 = load i64, i64* %15, align 8
  %213 = icmp uge i64 %212, 8
  br i1 %213, label %214, label %215

214:                                              ; preds = %211
  store i32 0, i32* %5, align 4
  br label %334

215:                                              ; preds = %211
  store i64 0, i64* %13, align 8
  br label %216

216:                                              ; preds = %219, %215
  %217 = load i64, i64* %15, align 8
  %218 = icmp ugt i64 %217, 0
  br i1 %218, label %219, label %232

219:                                              ; preds = %216
  %220 = load i64, i64* %13, align 8
  %221 = shl i64 %220, 8
  %222 = load i8*, i8** %8, align 8
  %223 = load i64, i64* %14, align 8
  %224 = getelementptr inbounds i8, i8* %222, i64 %223
  %225 = load i8, i8* %224, align 1
  %226 = zext i8 %225 to i64
  %227 = add i64 %221, %226
  store i64 %227, i64* %13, align 8
  %228 = load i64, i64* %14, align 8
  %229 = add i64 %228, 1
  store i64 %229, i64* %14, align 8
  %230 = load i64, i64* %15, align 8
  %231 = add i64 %230, -1
  store i64 %231, i64* %15, align 8
  br label %216

232:                                              ; preds = %216
  br label %235

233:                                              ; preds = %174
  %234 = load i64, i64* %15, align 8
  store i64 %234, i64* %13, align 8
  br label %235

235:                                              ; preds = %233, %232
  %236 = load i64, i64* %13, align 8
  %237 = load i64, i64* %9, align 8
  %238 = load i64, i64* %14, align 8
  %239 = sub i64 %237, %238
  %240 = icmp ugt i64 %236, %239
  br i1 %240, label %241, label %242

241:                                              ; preds = %235
  store i32 0, i32* %5, align 4
  br label %334

242:                                              ; preds = %235
  %243 = load i64, i64* %14, align 8
  store i64 %243, i64* %12, align 8
  %244 = load i64, i64* %13, align 8
  %245 = load i64, i64* %14, align 8
  %246 = add i64 %245, %244
  store i64 %246, i64* %14, align 8
  br label %247

247:                                              ; preds = %259, %242
  %248 = load i64, i64* %11, align 8
  %249 = icmp ugt i64 %248, 0
  br i1 %249, label %250, label %257

250:                                              ; preds = %247
  %251 = load i8*, i8** %8, align 8
  %252 = load i64, i64* %10, align 8
  %253 = getelementptr inbounds i8, i8* %251, i64 %252
  %254 = load i8, i8* %253, align 1
  %255 = zext i8 %254 to i32
  %256 = icmp eq i32 %255, 0
  br label %257

257:                                              ; preds = %250, %247
  %258 = phi i1 [ false, %247 ], [ %256, %250 ]
  br i1 %258, label %259, label %264

259:                                              ; preds = %257
  %260 = load i64, i64* %11, align 8
  %261 = add i64 %260, -1
  store i64 %261, i64* %11, align 8
  %262 = load i64, i64* %10, align 8
  %263 = add i64 %262, 1
  store i64 %263, i64* %10, align 8
  br label %247

264:                                              ; preds = %257
  %265 = load i64, i64* %11, align 8
  %266 = icmp ugt i64 %265, 32
  br i1 %266, label %267, label %268

267:                                              ; preds = %264
  store i32 1, i32* %17, align 4
  br label %279

268:                                              ; preds = %264
  %269 = getelementptr inbounds [64 x i8], [64 x i8]* %16, i64 0, i64 0
  %270 = getelementptr inbounds i8, i8* %269, i64 32
  %271 = load i64, i64* %11, align 8
  %272 = sub i64 0, %271
  %273 = getelementptr inbounds i8, i8* %270, i64 %272
  %274 = load i8*, i8** %8, align 8
  %275 = load i64, i64* %10, align 8
  %276 = getelementptr inbounds i8, i8* %274, i64 %275
  %277 = load i64, i64* %11, align 8
  %278 = call i32 @memcpy(i8* %273, i8* %276, i64 %277)
  br label %279

279:                                              ; preds = %268, %267
  br label %280

280:                                              ; preds = %292, %279
  %281 = load i64, i64* %13, align 8
  %282 = icmp ugt i64 %281, 0
  br i1 %282, label %283, label %290

283:                                              ; preds = %280
  %284 = load i8*, i8** %8, align 8
  %285 = load i64, i64* %12, align 8
  %286 = getelementptr inbounds i8, i8* %284, i64 %285
  %287 = load i8, i8* %286, align 1
  %288 = zext i8 %287 to i32
  %289 = icmp eq i32 %288, 0
  br label %290

290:                                              ; preds = %283, %280
  %291 = phi i1 [ false, %280 ], [ %289, %283 ]
  br i1 %291, label %292, label %297

292:                                              ; preds = %290
  %293 = load i64, i64* %13, align 8
  %294 = add i64 %293, -1
  store i64 %294, i64* %13, align 8
  %295 = load i64, i64* %12, align 8
  %296 = add i64 %295, 1
  store i64 %296, i64* %12, align 8
  br label %280

297:                                              ; preds = %290
  %298 = load i64, i64* %13, align 8
  %299 = icmp ugt i64 %298, 32
  br i1 %299, label %300, label %301

300:                                              ; preds = %297
  store i32 1, i32* %17, align 4
  br label %312

301:                                              ; preds = %297
  %302 = getelementptr inbounds [64 x i8], [64 x i8]* %16, i64 0, i64 0
  %303 = getelementptr inbounds i8, i8* %302, i64 64
  %304 = load i64, i64* %13, align 8
  %305 = sub i64 0, %304
  %306 = getelementptr inbounds i8, i8* %303, i64 %305
  %307 = load i8*, i8** %8, align 8
  %308 = load i64, i64* %12, align 8
  %309 = getelementptr inbounds i8, i8* %307, i64 %308
  %310 = load i64, i64* %13, align 8
  %311 = call i32 @memcpy(i8* %306, i8* %309, i64 %310)
  br label %312

312:                                              ; preds = %301, %300
  %313 = load i32, i32* %17, align 4
  %314 = icmp ne i32 %313, 0
  br i1 %314, label %323, label %315

315:                                              ; preds = %312
  %316 = load i32*, i32** %6, align 8
  %317 = load i32*, i32** %7, align 8
  %318 = getelementptr inbounds [64 x i8], [64 x i8]* %16, i64 0, i64 0
  %319 = call i32 @secp256k1_ecdsa_signature_parse_compact(i32* %316, i32* %317, i8* %318)
  %320 = icmp ne i32 %319, 0
  %321 = xor i1 %320, true
  %322 = zext i1 %321 to i32
  store i32 %322, i32* %17, align 4
  br label %323

323:                                              ; preds = %315, %312
  %324 = load i32, i32* %17, align 4
  %325 = icmp ne i32 %324, 0
  br i1 %325, label %326, label %333

326:                                              ; preds = %323
  %327 = getelementptr inbounds [64 x i8], [64 x i8]* %16, i64 0, i64 0
  %328 = call i32 @memset(i8* %327, i32 0, i32 64)
  %329 = load i32*, i32** %6, align 8
  %330 = load i32*, i32** %7, align 8
  %331 = getelementptr inbounds [64 x i8], [64 x i8]* %16, i64 0, i64 0
  %332 = call i32 @secp256k1_ecdsa_signature_parse_compact(i32* %329, i32* %330, i8* %331)
  br label %333

333:                                              ; preds = %326, %323
  store i32 1, i32* %5, align 4
  br label %334

334:                                              ; preds = %333, %241, %214, %192, %173, %166, %150, %123, %101, %82, %75, %59, %40, %33
  %335 = load i32, i32* %5, align 4
  ret i32 %335
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @secp256k1_ecdsa_signature_parse_compact(i32*, i32*, i8*) #2

declare dso_local i32 @memcpy(i8*, i8*, i64) #2

declare dso_local i32 @memset(i8*, i32, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
