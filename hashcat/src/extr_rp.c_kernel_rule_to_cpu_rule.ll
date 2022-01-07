; ModuleID = '/home/carl/AnghaBench/hashcat/src/extr_rp.c_kernel_rule_to_cpu_rule.c'
source_filename = "/home/carl/AnghaBench/hashcat/src/extr_rp.c_kernel_rule_to_cpu_rule.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@HCBUFSIZ_LARGE = common dso_local global i64 0, align 8
@MAX_KERNEL_RULES = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kernel_rule_to_cpu_rule(i8* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8, align 1
  store i8* %0, i8** %4, align 8
  store i32* %1, i32** %5, align 8
  %10 = load i64, i64* @HCBUFSIZ_LARGE, align 8
  %11 = sub nsw i64 %10, 1
  store i64 %11, i64* %8, align 8
  store i64 0, i64* %6, align 8
  store i64 0, i64* %7, align 8
  br label %12

12:                                               ; preds = %311, %2
  %13 = load i64, i64* %7, align 8
  %14 = load i64, i64* %8, align 8
  %15 = icmp slt i64 %13, %14
  br i1 %15, label %16, label %20

16:                                               ; preds = %12
  %17 = load i64, i64* %6, align 8
  %18 = load i64, i64* @MAX_KERNEL_RULES, align 8
  %19 = icmp slt i64 %17, %18
  br label %20

20:                                               ; preds = %16, %12
  %21 = phi i1 [ false, %12 ], [ %19, %16 ]
  br i1 %21, label %22, label %316

22:                                               ; preds = %20
  %23 = load i32*, i32** %5, align 8
  %24 = call i32 @GET_NAME(i32* %23)
  %25 = load i64, i64* %6, align 8
  %26 = icmp sgt i64 %25, 0
  br i1 %26, label %27, label %32

27:                                               ; preds = %22
  %28 = load i8*, i8** %4, align 8
  %29 = load i64, i64* %7, align 8
  %30 = add nsw i64 %29, 1
  store i64 %30, i64* %7, align 8
  %31 = getelementptr inbounds i8, i8* %28, i64 %29
  store i8 32, i8* %31, align 1
  br label %32

32:                                               ; preds = %27, %22
  %33 = load i8, i8* %9, align 1
  %34 = sext i8 %33 to i32
  switch i32 %34, label %309 [
    i32 150, label %35
    i32 152, label %40
    i32 129, label %45
    i32 151, label %50
    i32 128, label %55
    i32 131, label %60
    i32 132, label %65
    i32 141, label %72
    i32 156, label %77
    i32 155, label %82
    i32 145, label %89
    i32 140, label %94
    i32 139, label %99
    i32 169, label %104
    i32 147, label %111
    i32 163, label %118
    i32 162, label %123
    i32 164, label %128
    i32 154, label %135
    i32 149, label %144
    i32 153, label %153
    i32 148, label %162
    i32 130, label %171
    i32 144, label %178
    i32 146, label %187
    i32 133, label %194
    i32 158, label %195
    i32 157, label %202
    i32 159, label %209
    i32 137, label %214
    i32 136, label %219
    i32 138, label %224
    i32 166, label %233
    i32 165, label %240
    i32 167, label %247
    i32 168, label %254
    i32 142, label %261
    i32 143, label %268
    i32 161, label %275
    i32 160, label %282
    i32 135, label %289
    i32 134, label %294
    i32 0, label %301
  ]

35:                                               ; preds = %32
  %36 = load i8, i8* %9, align 1
  %37 = load i8*, i8** %4, align 8
  %38 = load i64, i64* %7, align 8
  %39 = getelementptr inbounds i8, i8* %37, i64 %38
  store i8 %36, i8* %39, align 1
  br label %310

40:                                               ; preds = %32
  %41 = load i8, i8* %9, align 1
  %42 = load i8*, i8** %4, align 8
  %43 = load i64, i64* %7, align 8
  %44 = getelementptr inbounds i8, i8* %42, i64 %43
  store i8 %41, i8* %44, align 1
  br label %310

45:                                               ; preds = %32
  %46 = load i8, i8* %9, align 1
  %47 = load i8*, i8** %4, align 8
  %48 = load i64, i64* %7, align 8
  %49 = getelementptr inbounds i8, i8* %47, i64 %48
  store i8 %46, i8* %49, align 1
  br label %310

50:                                               ; preds = %32
  %51 = load i8, i8* %9, align 1
  %52 = load i8*, i8** %4, align 8
  %53 = load i64, i64* %7, align 8
  %54 = getelementptr inbounds i8, i8* %52, i64 %53
  store i8 %51, i8* %54, align 1
  br label %310

55:                                               ; preds = %32
  %56 = load i8, i8* %9, align 1
  %57 = load i8*, i8** %4, align 8
  %58 = load i64, i64* %7, align 8
  %59 = getelementptr inbounds i8, i8* %57, i64 %58
  store i8 %56, i8* %59, align 1
  br label %310

60:                                               ; preds = %32
  %61 = load i8, i8* %9, align 1
  %62 = load i8*, i8** %4, align 8
  %63 = load i64, i64* %7, align 8
  %64 = getelementptr inbounds i8, i8* %62, i64 %63
  store i8 %61, i8* %64, align 1
  br label %310

65:                                               ; preds = %32
  %66 = load i8, i8* %9, align 1
  %67 = load i8*, i8** %4, align 8
  %68 = load i64, i64* %7, align 8
  %69 = getelementptr inbounds i8, i8* %67, i64 %68
  store i8 %66, i8* %69, align 1
  %70 = load i32*, i32** %5, align 8
  %71 = call i32 @GET_P0_CONV(i32* %70)
  br label %310

72:                                               ; preds = %32
  %73 = load i8, i8* %9, align 1
  %74 = load i8*, i8** %4, align 8
  %75 = load i64, i64* %7, align 8
  %76 = getelementptr inbounds i8, i8* %74, i64 %75
  store i8 %73, i8* %76, align 1
  br label %310

77:                                               ; preds = %32
  %78 = load i8, i8* %9, align 1
  %79 = load i8*, i8** %4, align 8
  %80 = load i64, i64* %7, align 8
  %81 = getelementptr inbounds i8, i8* %79, i64 %80
  store i8 %78, i8* %81, align 1
  br label %310

82:                                               ; preds = %32
  %83 = load i8, i8* %9, align 1
  %84 = load i8*, i8** %4, align 8
  %85 = load i64, i64* %7, align 8
  %86 = getelementptr inbounds i8, i8* %84, i64 %85
  store i8 %83, i8* %86, align 1
  %87 = load i32*, i32** %5, align 8
  %88 = call i32 @GET_P0_CONV(i32* %87)
  br label %310

89:                                               ; preds = %32
  %90 = load i8, i8* %9, align 1
  %91 = load i8*, i8** %4, align 8
  %92 = load i64, i64* %7, align 8
  %93 = getelementptr inbounds i8, i8* %91, i64 %92
  store i8 %90, i8* %93, align 1
  br label %310

94:                                               ; preds = %32
  %95 = load i8, i8* %9, align 1
  %96 = load i8*, i8** %4, align 8
  %97 = load i64, i64* %7, align 8
  %98 = getelementptr inbounds i8, i8* %96, i64 %97
  store i8 %95, i8* %98, align 1
  br label %310

99:                                               ; preds = %32
  %100 = load i8, i8* %9, align 1
  %101 = load i8*, i8** %4, align 8
  %102 = load i64, i64* %7, align 8
  %103 = getelementptr inbounds i8, i8* %101, i64 %102
  store i8 %100, i8* %103, align 1
  br label %310

104:                                              ; preds = %32
  %105 = load i8, i8* %9, align 1
  %106 = load i8*, i8** %4, align 8
  %107 = load i64, i64* %7, align 8
  %108 = getelementptr inbounds i8, i8* %106, i64 %107
  store i8 %105, i8* %108, align 1
  %109 = load i32*, i32** %5, align 8
  %110 = call i32 @GET_P0(i32* %109)
  br label %310

111:                                              ; preds = %32
  %112 = load i8, i8* %9, align 1
  %113 = load i8*, i8** %4, align 8
  %114 = load i64, i64* %7, align 8
  %115 = getelementptr inbounds i8, i8* %113, i64 %114
  store i8 %112, i8* %115, align 1
  %116 = load i32*, i32** %5, align 8
  %117 = call i32 @GET_P0(i32* %116)
  br label %310

118:                                              ; preds = %32
  %119 = load i8, i8* %9, align 1
  %120 = load i8*, i8** %4, align 8
  %121 = load i64, i64* %7, align 8
  %122 = getelementptr inbounds i8, i8* %120, i64 %121
  store i8 %119, i8* %122, align 1
  br label %310

123:                                              ; preds = %32
  %124 = load i8, i8* %9, align 1
  %125 = load i8*, i8** %4, align 8
  %126 = load i64, i64* %7, align 8
  %127 = getelementptr inbounds i8, i8* %125, i64 %126
  store i8 %124, i8* %127, align 1
  br label %310

128:                                              ; preds = %32
  %129 = load i8, i8* %9, align 1
  %130 = load i8*, i8** %4, align 8
  %131 = load i64, i64* %7, align 8
  %132 = getelementptr inbounds i8, i8* %130, i64 %131
  store i8 %129, i8* %132, align 1
  %133 = load i32*, i32** %5, align 8
  %134 = call i32 @GET_P0_CONV(i32* %133)
  br label %310

135:                                              ; preds = %32
  %136 = load i8, i8* %9, align 1
  %137 = load i8*, i8** %4, align 8
  %138 = load i64, i64* %7, align 8
  %139 = getelementptr inbounds i8, i8* %137, i64 %138
  store i8 %136, i8* %139, align 1
  %140 = load i32*, i32** %5, align 8
  %141 = call i32 @GET_P0_CONV(i32* %140)
  %142 = load i32*, i32** %5, align 8
  %143 = call i32 @GET_P1_CONV(i32* %142)
  br label %310

144:                                              ; preds = %32
  %145 = load i8, i8* %9, align 1
  %146 = load i8*, i8** %4, align 8
  %147 = load i64, i64* %7, align 8
  %148 = getelementptr inbounds i8, i8* %146, i64 %147
  store i8 %145, i8* %148, align 1
  %149 = load i32*, i32** %5, align 8
  %150 = call i32 @GET_P0_CONV(i32* %149)
  %151 = load i32*, i32** %5, align 8
  %152 = call i32 @GET_P1_CONV(i32* %151)
  br label %310

153:                                              ; preds = %32
  %154 = load i8, i8* %9, align 1
  %155 = load i8*, i8** %4, align 8
  %156 = load i64, i64* %7, align 8
  %157 = getelementptr inbounds i8, i8* %155, i64 %156
  store i8 %154, i8* %157, align 1
  %158 = load i32*, i32** %5, align 8
  %159 = call i32 @GET_P0_CONV(i32* %158)
  %160 = load i32*, i32** %5, align 8
  %161 = call i32 @GET_P1(i32* %160)
  br label %310

162:                                              ; preds = %32
  %163 = load i8, i8* %9, align 1
  %164 = load i8*, i8** %4, align 8
  %165 = load i64, i64* %7, align 8
  %166 = getelementptr inbounds i8, i8* %164, i64 %165
  store i8 %163, i8* %166, align 1
  %167 = load i32*, i32** %5, align 8
  %168 = call i32 @GET_P0_CONV(i32* %167)
  %169 = load i32*, i32** %5, align 8
  %170 = call i32 @GET_P1(i32* %169)
  br label %310

171:                                              ; preds = %32
  %172 = load i8, i8* %9, align 1
  %173 = load i8*, i8** %4, align 8
  %174 = load i64, i64* %7, align 8
  %175 = getelementptr inbounds i8, i8* %173, i64 %174
  store i8 %172, i8* %175, align 1
  %176 = load i32*, i32** %5, align 8
  %177 = call i32 @GET_P0_CONV(i32* %176)
  br label %310

178:                                              ; preds = %32
  %179 = load i8, i8* %9, align 1
  %180 = load i8*, i8** %4, align 8
  %181 = load i64, i64* %7, align 8
  %182 = getelementptr inbounds i8, i8* %180, i64 %181
  store i8 %179, i8* %182, align 1
  %183 = load i32*, i32** %5, align 8
  %184 = call i32 @GET_P0(i32* %183)
  %185 = load i32*, i32** %5, align 8
  %186 = call i32 @GET_P1(i32* %185)
  br label %310

187:                                              ; preds = %32
  %188 = load i8, i8* %9, align 1
  %189 = load i8*, i8** %4, align 8
  %190 = load i64, i64* %7, align 8
  %191 = getelementptr inbounds i8, i8* %189, i64 %190
  store i8 %188, i8* %191, align 1
  %192 = load i32*, i32** %5, align 8
  %193 = call i32 @GET_P0(i32* %192)
  br label %310

194:                                              ; preds = %32
  store i32 -1, i32* %3, align 4
  br label %319

195:                                              ; preds = %32
  %196 = load i8, i8* %9, align 1
  %197 = load i8*, i8** %4, align 8
  %198 = load i64, i64* %7, align 8
  %199 = getelementptr inbounds i8, i8* %197, i64 %198
  store i8 %196, i8* %199, align 1
  %200 = load i32*, i32** %5, align 8
  %201 = call i32 @GET_P0_CONV(i32* %200)
  br label %310

202:                                              ; preds = %32
  %203 = load i8, i8* %9, align 1
  %204 = load i8*, i8** %4, align 8
  %205 = load i64, i64* %7, align 8
  %206 = getelementptr inbounds i8, i8* %204, i64 %205
  store i8 %203, i8* %206, align 1
  %207 = load i32*, i32** %5, align 8
  %208 = call i32 @GET_P0_CONV(i32* %207)
  br label %310

209:                                              ; preds = %32
  %210 = load i8, i8* %9, align 1
  %211 = load i8*, i8** %4, align 8
  %212 = load i64, i64* %7, align 8
  %213 = getelementptr inbounds i8, i8* %211, i64 %212
  store i8 %210, i8* %213, align 1
  br label %310

214:                                              ; preds = %32
  %215 = load i8, i8* %9, align 1
  %216 = load i8*, i8** %4, align 8
  %217 = load i64, i64* %7, align 8
  %218 = getelementptr inbounds i8, i8* %216, i64 %217
  store i8 %215, i8* %218, align 1
  br label %310

219:                                              ; preds = %32
  %220 = load i8, i8* %9, align 1
  %221 = load i8*, i8** %4, align 8
  %222 = load i64, i64* %7, align 8
  %223 = getelementptr inbounds i8, i8* %221, i64 %222
  store i8 %220, i8* %223, align 1
  br label %310

224:                                              ; preds = %32
  %225 = load i8, i8* %9, align 1
  %226 = load i8*, i8** %4, align 8
  %227 = load i64, i64* %7, align 8
  %228 = getelementptr inbounds i8, i8* %226, i64 %227
  store i8 %225, i8* %228, align 1
  %229 = load i32*, i32** %5, align 8
  %230 = call i32 @GET_P0_CONV(i32* %229)
  %231 = load i32*, i32** %5, align 8
  %232 = call i32 @GET_P1_CONV(i32* %231)
  br label %310

233:                                              ; preds = %32
  %234 = load i8, i8* %9, align 1
  %235 = load i8*, i8** %4, align 8
  %236 = load i64, i64* %7, align 8
  %237 = getelementptr inbounds i8, i8* %235, i64 %236
  store i8 %234, i8* %237, align 1
  %238 = load i32*, i32** %5, align 8
  %239 = call i32 @GET_P0_CONV(i32* %238)
  br label %310

240:                                              ; preds = %32
  %241 = load i8, i8* %9, align 1
  %242 = load i8*, i8** %4, align 8
  %243 = load i64, i64* %7, align 8
  %244 = getelementptr inbounds i8, i8* %242, i64 %243
  store i8 %241, i8* %244, align 1
  %245 = load i32*, i32** %5, align 8
  %246 = call i32 @GET_P0_CONV(i32* %245)
  br label %310

247:                                              ; preds = %32
  %248 = load i8, i8* %9, align 1
  %249 = load i8*, i8** %4, align 8
  %250 = load i64, i64* %7, align 8
  %251 = getelementptr inbounds i8, i8* %249, i64 %250
  store i8 %248, i8* %251, align 1
  %252 = load i32*, i32** %5, align 8
  %253 = call i32 @GET_P0_CONV(i32* %252)
  br label %310

254:                                              ; preds = %32
  %255 = load i8, i8* %9, align 1
  %256 = load i8*, i8** %4, align 8
  %257 = load i64, i64* %7, align 8
  %258 = getelementptr inbounds i8, i8* %256, i64 %257
  store i8 %255, i8* %258, align 1
  %259 = load i32*, i32** %5, align 8
  %260 = call i32 @GET_P0_CONV(i32* %259)
  br label %310

261:                                              ; preds = %32
  %262 = load i8, i8* %9, align 1
  %263 = load i8*, i8** %4, align 8
  %264 = load i64, i64* %7, align 8
  %265 = getelementptr inbounds i8, i8* %263, i64 %264
  store i8 %262, i8* %265, align 1
  %266 = load i32*, i32** %5, align 8
  %267 = call i32 @GET_P0_CONV(i32* %266)
  br label %310

268:                                              ; preds = %32
  %269 = load i8, i8* %9, align 1
  %270 = load i8*, i8** %4, align 8
  %271 = load i64, i64* %7, align 8
  %272 = getelementptr inbounds i8, i8* %270, i64 %271
  store i8 %269, i8* %272, align 1
  %273 = load i32*, i32** %5, align 8
  %274 = call i32 @GET_P0_CONV(i32* %273)
  br label %310

275:                                              ; preds = %32
  %276 = load i8, i8* %9, align 1
  %277 = load i8*, i8** %4, align 8
  %278 = load i64, i64* %7, align 8
  %279 = getelementptr inbounds i8, i8* %277, i64 %278
  store i8 %276, i8* %279, align 1
  %280 = load i32*, i32** %5, align 8
  %281 = call i32 @GET_P0_CONV(i32* %280)
  br label %310

282:                                              ; preds = %32
  %283 = load i8, i8* %9, align 1
  %284 = load i8*, i8** %4, align 8
  %285 = load i64, i64* %7, align 8
  %286 = getelementptr inbounds i8, i8* %284, i64 %285
  store i8 %283, i8* %286, align 1
  %287 = load i32*, i32** %5, align 8
  %288 = call i32 @GET_P0_CONV(i32* %287)
  br label %310

289:                                              ; preds = %32
  %290 = load i8, i8* %9, align 1
  %291 = load i8*, i8** %4, align 8
  %292 = load i64, i64* %7, align 8
  %293 = getelementptr inbounds i8, i8* %291, i64 %292
  store i8 %290, i8* %293, align 1
  br label %310

294:                                              ; preds = %32
  %295 = load i8, i8* %9, align 1
  %296 = load i8*, i8** %4, align 8
  %297 = load i64, i64* %7, align 8
  %298 = getelementptr inbounds i8, i8* %296, i64 %297
  store i8 %295, i8* %298, align 1
  %299 = load i32*, i32** %5, align 8
  %300 = call i32 @GET_P0(i32* %299)
  br label %310

301:                                              ; preds = %32
  %302 = load i64, i64* %7, align 8
  %303 = icmp eq i64 %302, 0
  br i1 %303, label %304, label %305

304:                                              ; preds = %301
  store i32 -1, i32* %3, align 4
  br label %319

305:                                              ; preds = %301
  %306 = load i64, i64* %7, align 8
  %307 = sub nsw i64 %306, 1
  %308 = trunc i64 %307 to i32
  store i32 %308, i32* %3, align 4
  br label %319

309:                                              ; preds = %32
  store i32 -1, i32* %3, align 4
  br label %319

310:                                              ; preds = %294, %289, %282, %275, %268, %261, %254, %247, %240, %233, %224, %219, %214, %209, %202, %195, %187, %178, %171, %162, %153, %144, %135, %128, %123, %118, %111, %104, %99, %94, %89, %82, %77, %72, %65, %60, %55, %50, %45, %40, %35
  br label %311

311:                                              ; preds = %310
  %312 = load i64, i64* %7, align 8
  %313 = add nsw i64 %312, 1
  store i64 %313, i64* %7, align 8
  %314 = load i64, i64* %6, align 8
  %315 = add nsw i64 %314, 1
  store i64 %315, i64* %6, align 8
  br label %12

316:                                              ; preds = %20
  %317 = load i64, i64* %7, align 8
  %318 = trunc i64 %317 to i32
  store i32 %318, i32* %3, align 4
  br label %319

319:                                              ; preds = %316, %309, %305, %304, %194
  %320 = load i32, i32* %3, align 4
  ret i32 %320
}

declare dso_local i32 @GET_NAME(i32*) #1

declare dso_local i32 @GET_P0_CONV(i32*) #1

declare dso_local i32 @GET_P0(i32*) #1

declare dso_local i32 @GET_P1_CONV(i32*) #1

declare dso_local i32 @GET_P1(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
