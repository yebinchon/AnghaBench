; ModuleID = '/home/carl/AnghaBench/lede/tools/firmware-utils/src/extr_buffalo-lib.c_decrypt_buf.c'
source_filename = "/home/carl/AnghaBench/lede/tools/firmware-utils/src/extr_buffalo-lib.c_decrypt_buf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.enc_param = type { i8*, i8, i8*, i8*, i32, i32, i32, i32 }

@ENC_MAGIC_LEN = common dso_local global i32 0, align 4
@ENC_PRODUCT_LEN = common dso_local global i32 0, align 4
@ENC_VERSION_LEN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @decrypt_buf(%struct.enc_param* %0, i8* %1, i64 %2) #0 {
  %4 = alloca %struct.enc_param*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.enc_param* %0, %struct.enc_param** %4, align 8
  store i8* %1, i8** %5, align 8
  store i64 %2, i64* %6, align 8
  store i32 -1, i32* %14, align 4
  %15 = load i64, i64* %6, align 8
  store i64 %15, i64* %12, align 8
  %16 = load i8*, i8** %5, align 8
  store i8* %16, i8** %7, align 8
  br label %17

17:                                               ; preds = %3
  %18 = load i32, i32* @ENC_MAGIC_LEN, align 4
  store i32 %18, i32* %10, align 4
  %19 = load i64, i64* %12, align 8
  %20 = load i32, i32* %10, align 4
  %21 = sext i32 %20 to i64
  %22 = icmp ult i64 %19, %21
  br i1 %22, label %23, label %24

23:                                               ; preds = %17
  br label %319

24:                                               ; preds = %17
  br label %25

25:                                               ; preds = %24
  %26 = load i8*, i8** %7, align 8
  %27 = call i32 @check_magic(i8* %26)
  store i32 %27, i32* %13, align 4
  %28 = load i32, i32* %13, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %25
  br label %319

31:                                               ; preds = %25
  %32 = load %struct.enc_param*, %struct.enc_param** %4, align 8
  %33 = getelementptr inbounds %struct.enc_param, %struct.enc_param* %32, i32 0, i32 0
  %34 = load i8*, i8** %33, align 8
  %35 = load i8*, i8** %7, align 8
  %36 = load i32, i32* @ENC_MAGIC_LEN, align 4
  %37 = call i32 @memcpy(i8* %34, i8* %35, i32 %36)
  br label %38

38:                                               ; preds = %31
  %39 = load i32, i32* %10, align 4
  %40 = load i8*, i8** %7, align 8
  %41 = sext i32 %39 to i64
  %42 = getelementptr inbounds i8, i8* %40, i64 %41
  store i8* %42, i8** %7, align 8
  %43 = load i32, i32* %10, align 4
  %44 = sext i32 %43 to i64
  %45 = load i64, i64* %12, align 8
  %46 = sub i64 %45, %44
  store i64 %46, i64* %12, align 8
  br label %47

47:                                               ; preds = %38
  br label %48

48:                                               ; preds = %47
  store i32 1, i32* %10, align 4
  %49 = load i64, i64* %12, align 8
  %50 = load i32, i32* %10, align 4
  %51 = sext i32 %50 to i64
  %52 = icmp ult i64 %49, %51
  br i1 %52, label %53, label %54

53:                                               ; preds = %48
  br label %319

54:                                               ; preds = %48
  br label %55

55:                                               ; preds = %54
  %56 = load i8*, i8** %7, align 8
  %57 = load i8, i8* %56, align 1
  %58 = load %struct.enc_param*, %struct.enc_param** %4, align 8
  %59 = getelementptr inbounds %struct.enc_param, %struct.enc_param* %58, i32 0, i32 1
  store i8 %57, i8* %59, align 8
  br label %60

60:                                               ; preds = %55
  %61 = load i32, i32* %10, align 4
  %62 = load i8*, i8** %7, align 8
  %63 = sext i32 %61 to i64
  %64 = getelementptr inbounds i8, i8* %62, i64 %63
  store i8* %64, i8** %7, align 8
  %65 = load i32, i32* %10, align 4
  %66 = sext i32 %65 to i64
  %67 = load i64, i64* %12, align 8
  %68 = sub i64 %67, %66
  store i64 %68, i64* %12, align 8
  br label %69

69:                                               ; preds = %60
  br label %70

70:                                               ; preds = %69
  store i32 4, i32* %10, align 4
  %71 = load i64, i64* %12, align 8
  %72 = load i32, i32* %10, align 4
  %73 = sext i32 %72 to i64
  %74 = icmp ult i64 %71, %73
  br i1 %74, label %75, label %76

75:                                               ; preds = %70
  br label %319

76:                                               ; preds = %70
  br label %77

77:                                               ; preds = %76
  %78 = load i8*, i8** %7, align 8
  %79 = call i8* @get_be32(i8* %78)
  %80 = ptrtoint i8* %79 to i32
  store i32 %80, i32* %8, align 4
  %81 = load i32, i32* %8, align 4
  %82 = load i32, i32* @ENC_PRODUCT_LEN, align 4
  %83 = icmp sgt i32 %81, %82
  br i1 %83, label %84, label %85

84:                                               ; preds = %77
  br label %319

85:                                               ; preds = %77
  br label %86

86:                                               ; preds = %85
  %87 = load i32, i32* %10, align 4
  %88 = load i8*, i8** %7, align 8
  %89 = sext i32 %87 to i64
  %90 = getelementptr inbounds i8, i8* %88, i64 %89
  store i8* %90, i8** %7, align 8
  %91 = load i32, i32* %10, align 4
  %92 = sext i32 %91 to i64
  %93 = load i64, i64* %12, align 8
  %94 = sub i64 %93, %92
  store i64 %94, i64* %12, align 8
  br label %95

95:                                               ; preds = %86
  br label %96

96:                                               ; preds = %95
  %97 = load i32, i32* %8, align 4
  store i32 %97, i32* %10, align 4
  %98 = load i64, i64* %12, align 8
  %99 = load i32, i32* %10, align 4
  %100 = sext i32 %99 to i64
  %101 = icmp ult i64 %98, %100
  br i1 %101, label %102, label %103

102:                                              ; preds = %96
  br label %319

103:                                              ; preds = %96
  br label %104

104:                                              ; preds = %103
  %105 = load %struct.enc_param*, %struct.enc_param** %4, align 8
  %106 = getelementptr inbounds %struct.enc_param, %struct.enc_param* %105, i32 0, i32 2
  %107 = load i8*, i8** %106, align 8
  %108 = load i8*, i8** %7, align 8
  %109 = load i32, i32* %8, align 4
  %110 = call i32 @memcpy(i8* %107, i8* %108, i32 %109)
  br label %111

111:                                              ; preds = %104
  %112 = load i32, i32* %10, align 4
  %113 = load i8*, i8** %7, align 8
  %114 = sext i32 %112 to i64
  %115 = getelementptr inbounds i8, i8* %113, i64 %114
  store i8* %115, i8** %7, align 8
  %116 = load i32, i32* %10, align 4
  %117 = sext i32 %116 to i64
  %118 = load i64, i64* %12, align 8
  %119 = sub i64 %118, %117
  store i64 %119, i64* %12, align 8
  br label %120

120:                                              ; preds = %111
  br label %121

121:                                              ; preds = %120
  store i32 4, i32* %10, align 4
  %122 = load i64, i64* %12, align 8
  %123 = load i32, i32* %10, align 4
  %124 = sext i32 %123 to i64
  %125 = icmp ult i64 %122, %124
  br i1 %125, label %126, label %127

126:                                              ; preds = %121
  br label %319

127:                                              ; preds = %121
  br label %128

128:                                              ; preds = %127
  %129 = load i8*, i8** %7, align 8
  %130 = call i8* @get_be32(i8* %129)
  %131 = ptrtoint i8* %130 to i32
  store i32 %131, i32* %9, align 4
  %132 = load i32, i32* %9, align 4
  %133 = load i32, i32* @ENC_VERSION_LEN, align 4
  %134 = icmp sgt i32 %132, %133
  br i1 %134, label %135, label %136

135:                                              ; preds = %128
  br label %319

136:                                              ; preds = %128
  br label %137

137:                                              ; preds = %136
  %138 = load i32, i32* %10, align 4
  %139 = load i8*, i8** %7, align 8
  %140 = sext i32 %138 to i64
  %141 = getelementptr inbounds i8, i8* %139, i64 %140
  store i8* %141, i8** %7, align 8
  %142 = load i32, i32* %10, align 4
  %143 = sext i32 %142 to i64
  %144 = load i64, i64* %12, align 8
  %145 = sub i64 %144, %143
  store i64 %145, i64* %12, align 8
  br label %146

146:                                              ; preds = %137
  br label %147

147:                                              ; preds = %146
  %148 = load i32, i32* %9, align 4
  store i32 %148, i32* %10, align 4
  %149 = load i64, i64* %12, align 8
  %150 = load i32, i32* %10, align 4
  %151 = sext i32 %150 to i64
  %152 = icmp ult i64 %149, %151
  br i1 %152, label %153, label %154

153:                                              ; preds = %147
  br label %319

154:                                              ; preds = %147
  br label %155

155:                                              ; preds = %154
  %156 = load %struct.enc_param*, %struct.enc_param** %4, align 8
  %157 = getelementptr inbounds %struct.enc_param, %struct.enc_param* %156, i32 0, i32 3
  %158 = load i8*, i8** %157, align 8
  %159 = load i8*, i8** %7, align 8
  %160 = load i32, i32* %9, align 4
  %161 = call i32 @memcpy(i8* %158, i8* %159, i32 %160)
  br label %162

162:                                              ; preds = %155
  %163 = load i32, i32* %10, align 4
  %164 = load i8*, i8** %7, align 8
  %165 = sext i32 %163 to i64
  %166 = getelementptr inbounds i8, i8* %164, i64 %165
  store i8* %166, i8** %7, align 8
  %167 = load i32, i32* %10, align 4
  %168 = sext i32 %167 to i64
  %169 = load i64, i64* %12, align 8
  %170 = sub i64 %169, %168
  store i64 %170, i64* %12, align 8
  br label %171

171:                                              ; preds = %162
  br label %172

172:                                              ; preds = %171
  store i32 4, i32* %10, align 4
  %173 = load i64, i64* %12, align 8
  %174 = load i32, i32* %10, align 4
  %175 = sext i32 %174 to i64
  %176 = icmp ult i64 %173, %175
  br i1 %176, label %177, label %178

177:                                              ; preds = %172
  br label %319

178:                                              ; preds = %172
  br label %179

179:                                              ; preds = %178
  %180 = load i8*, i8** %7, align 8
  %181 = call i8* @get_be32(i8* %180)
  %182 = ptrtoint i8* %181 to i32
  %183 = load %struct.enc_param*, %struct.enc_param** %4, align 8
  %184 = getelementptr inbounds %struct.enc_param, %struct.enc_param* %183, i32 0, i32 4
  store i32 %182, i32* %184, align 8
  br label %185

185:                                              ; preds = %179
  %186 = load i32, i32* %10, align 4
  %187 = load i8*, i8** %7, align 8
  %188 = sext i32 %186 to i64
  %189 = getelementptr inbounds i8, i8* %187, i64 %188
  store i8* %189, i8** %7, align 8
  %190 = load i32, i32* %10, align 4
  %191 = sext i32 %190 to i64
  %192 = load i64, i64* %12, align 8
  %193 = sub i64 %192, %191
  store i64 %193, i64* %12, align 8
  br label %194

194:                                              ; preds = %185
  br label %195

195:                                              ; preds = %194
  %196 = load %struct.enc_param*, %struct.enc_param** %4, align 8
  %197 = getelementptr inbounds %struct.enc_param, %struct.enc_param* %196, i32 0, i32 4
  %198 = load i32, i32* %197, align 8
  store i32 %198, i32* %10, align 4
  %199 = load i64, i64* %12, align 8
  %200 = load i32, i32* %10, align 4
  %201 = sext i32 %200 to i64
  %202 = icmp ult i64 %199, %201
  br i1 %202, label %203, label %204

203:                                              ; preds = %195
  br label %319

204:                                              ; preds = %195
  br label %205

205:                                              ; preds = %204
  %206 = load %struct.enc_param*, %struct.enc_param** %4, align 8
  %207 = getelementptr inbounds %struct.enc_param, %struct.enc_param* %206, i32 0, i32 3
  %208 = load i8*, i8** %207, align 8
  %209 = getelementptr inbounds i8, i8* %208, i64 0
  %210 = load i8, i8* %209, align 1
  %211 = load %struct.enc_param*, %struct.enc_param** %4, align 8
  %212 = getelementptr inbounds %struct.enc_param, %struct.enc_param* %211, i32 0, i32 7
  %213 = load i32, i32* %212, align 4
  %214 = load i8*, i8** %7, align 8
  %215 = load i8*, i8** %5, align 8
  %216 = load %struct.enc_param*, %struct.enc_param** %4, align 8
  %217 = getelementptr inbounds %struct.enc_param, %struct.enc_param* %216, i32 0, i32 4
  %218 = load i32, i32* %217, align 8
  %219 = load %struct.enc_param*, %struct.enc_param** %4, align 8
  %220 = getelementptr inbounds %struct.enc_param, %struct.enc_param* %219, i32 0, i32 6
  %221 = load i32, i32* %220, align 8
  %222 = call i32 @bcrypt_buf(i8 zeroext %210, i32 %213, i8* %214, i8* %215, i32 %218, i32 %221)
  store i32 %222, i32* %13, align 4
  %223 = load i32, i32* %13, align 4
  %224 = icmp ne i32 %223, 0
  br i1 %224, label %225, label %226

225:                                              ; preds = %205
  br label %319

226:                                              ; preds = %205
  br label %227

227:                                              ; preds = %226
  %228 = load i32, i32* %10, align 4
  %229 = load i8*, i8** %7, align 8
  %230 = sext i32 %228 to i64
  %231 = getelementptr inbounds i8, i8* %229, i64 %230
  store i8* %231, i8** %7, align 8
  %232 = load i32, i32* %10, align 4
  %233 = sext i32 %232 to i64
  %234 = load i64, i64* %12, align 8
  %235 = sub i64 %234, %233
  store i64 %235, i64* %12, align 8
  br label %236

236:                                              ; preds = %227
  br label %237

237:                                              ; preds = %236
  store i32 4, i32* %10, align 4
  %238 = load i64, i64* %12, align 8
  %239 = load i32, i32* %10, align 4
  %240 = sext i32 %239 to i64
  %241 = icmp ult i64 %238, %240
  br i1 %241, label %242, label %243

242:                                              ; preds = %237
  br label %319

243:                                              ; preds = %237
  br label %244

244:                                              ; preds = %243
  %245 = load i8*, i8** %7, align 8
  %246 = call i8* @get_be32(i8* %245)
  %247 = ptrtoint i8* %246 to i32
  %248 = load %struct.enc_param*, %struct.enc_param** %4, align 8
  %249 = getelementptr inbounds %struct.enc_param, %struct.enc_param* %248, i32 0, i32 5
  store i32 %247, i32* %249, align 4
  br label %250

250:                                              ; preds = %244
  %251 = load i32, i32* %10, align 4
  %252 = load i8*, i8** %7, align 8
  %253 = sext i32 %251 to i64
  %254 = getelementptr inbounds i8, i8* %252, i64 %253
  store i8* %254, i8** %7, align 8
  %255 = load i32, i32* %10, align 4
  %256 = sext i32 %255 to i64
  %257 = load i64, i64* %12, align 8
  %258 = sub i64 %257, %256
  store i64 %258, i64* %12, align 8
  br label %259

259:                                              ; preds = %250
  %260 = load %struct.enc_param*, %struct.enc_param** %4, align 8
  %261 = getelementptr inbounds %struct.enc_param, %struct.enc_param* %260, i32 0, i32 4
  %262 = load i32, i32* %261, align 8
  %263 = load i8*, i8** %5, align 8
  %264 = load %struct.enc_param*, %struct.enc_param** %4, align 8
  %265 = getelementptr inbounds %struct.enc_param, %struct.enc_param* %264, i32 0, i32 4
  %266 = load i32, i32* %265, align 8
  %267 = call i32 @buffalo_csum(i32 %262, i8* %263, i32 %266)
  store i32 %267, i32* %11, align 4
  %268 = load i32, i32* %11, align 4
  %269 = load %struct.enc_param*, %struct.enc_param** %4, align 8
  %270 = getelementptr inbounds %struct.enc_param, %struct.enc_param* %269, i32 0, i32 5
  %271 = load i32, i32* %270, align 4
  %272 = icmp ne i32 %268, %271
  br i1 %272, label %273, label %274

273:                                              ; preds = %259
  br label %319

274:                                              ; preds = %259
  %275 = load %struct.enc_param*, %struct.enc_param** %4, align 8
  %276 = getelementptr inbounds %struct.enc_param, %struct.enc_param* %275, i32 0, i32 2
  %277 = load i8*, i8** %276, align 8
  %278 = getelementptr inbounds i8, i8* %277, i64 0
  %279 = load i8, i8* %278, align 1
  %280 = load %struct.enc_param*, %struct.enc_param** %4, align 8
  %281 = getelementptr inbounds %struct.enc_param, %struct.enc_param* %280, i32 0, i32 7
  %282 = load i32, i32* %281, align 4
  %283 = load %struct.enc_param*, %struct.enc_param** %4, align 8
  %284 = getelementptr inbounds %struct.enc_param, %struct.enc_param* %283, i32 0, i32 3
  %285 = load i8*, i8** %284, align 8
  %286 = load %struct.enc_param*, %struct.enc_param** %4, align 8
  %287 = getelementptr inbounds %struct.enc_param, %struct.enc_param* %286, i32 0, i32 3
  %288 = load i8*, i8** %287, align 8
  %289 = load i32, i32* %9, align 4
  %290 = load %struct.enc_param*, %struct.enc_param** %4, align 8
  %291 = getelementptr inbounds %struct.enc_param, %struct.enc_param* %290, i32 0, i32 6
  %292 = load i32, i32* %291, align 8
  %293 = call i32 @bcrypt_buf(i8 zeroext %279, i32 %282, i8* %285, i8* %288, i32 %289, i32 %292)
  store i32 %293, i32* %13, align 4
  %294 = load i32, i32* %13, align 4
  %295 = icmp ne i32 %294, 0
  br i1 %295, label %296, label %297

296:                                              ; preds = %274
  br label %319

297:                                              ; preds = %274
  %298 = load %struct.enc_param*, %struct.enc_param** %4, align 8
  %299 = getelementptr inbounds %struct.enc_param, %struct.enc_param* %298, i32 0, i32 1
  %300 = load i8, i8* %299, align 8
  %301 = load %struct.enc_param*, %struct.enc_param** %4, align 8
  %302 = getelementptr inbounds %struct.enc_param, %struct.enc_param* %301, i32 0, i32 7
  %303 = load i32, i32* %302, align 4
  %304 = load %struct.enc_param*, %struct.enc_param** %4, align 8
  %305 = getelementptr inbounds %struct.enc_param, %struct.enc_param* %304, i32 0, i32 2
  %306 = load i8*, i8** %305, align 8
  %307 = load %struct.enc_param*, %struct.enc_param** %4, align 8
  %308 = getelementptr inbounds %struct.enc_param, %struct.enc_param* %307, i32 0, i32 2
  %309 = load i8*, i8** %308, align 8
  %310 = load i32, i32* %8, align 4
  %311 = load %struct.enc_param*, %struct.enc_param** %4, align 8
  %312 = getelementptr inbounds %struct.enc_param, %struct.enc_param* %311, i32 0, i32 6
  %313 = load i32, i32* %312, align 8
  %314 = call i32 @bcrypt_buf(i8 zeroext %300, i32 %303, i8* %306, i8* %309, i32 %310, i32 %313)
  store i32 %314, i32* %13, align 4
  %315 = load i32, i32* %13, align 4
  %316 = icmp ne i32 %315, 0
  br i1 %316, label %317, label %318

317:                                              ; preds = %297
  br label %319

318:                                              ; preds = %297
  store i32 0, i32* %14, align 4
  br label %319

319:                                              ; preds = %318, %317, %296, %273, %242, %225, %203, %177, %153, %135, %126, %102, %84, %75, %53, %30, %23
  %320 = load i32, i32* %14, align 4
  ret i32 %320
}

declare dso_local i32 @check_magic(i8*) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i8* @get_be32(i8*) #1

declare dso_local i32 @bcrypt_buf(i8 zeroext, i32, i8*, i8*, i32, i32) #1

declare dso_local i32 @buffalo_csum(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
