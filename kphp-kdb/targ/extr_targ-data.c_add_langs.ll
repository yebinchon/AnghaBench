; ModuleID = '/home/carl/AnghaBench/kphp-kdb/targ/extr_targ-data.c_add_langs.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/targ/extr_targ-data.c_add_langs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, %struct.user_langs* }
%struct.user_langs = type { i32, i32, i32* }

@MAX_USER_LANGS = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"add_langs: user_id=%d, len=%d,\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c" %d\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c".\0A\00", align 1
@MIN_USER_LANGS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_4__*, i32*, i32)* @add_langs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @add_langs(%struct.TYPE_4__* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_4__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.user_langs*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.user_langs*, align 8
  %16 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 1
  %19 = load %struct.user_langs*, %struct.user_langs** %18, align 8
  store %struct.user_langs* %19, %struct.user_langs** %8, align 8
  %20 = load i32, i32* %7, align 4
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %26, label %22

22:                                               ; preds = %3
  %23 = load i32, i32* %7, align 4
  %24 = load i32, i32* @MAX_USER_LANGS, align 4
  %25 = icmp sgt i32 %23, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %22, %3
  store i32 -1, i32* %4, align 4
  br label %441

27:                                               ; preds = %22
  %28 = load i32, i32* %7, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %39

30:                                               ; preds = %27
  %31 = load %struct.user_langs*, %struct.user_langs** %8, align 8
  %32 = icmp ne %struct.user_langs* %31, null
  br i1 %32, label %33, label %40

33:                                               ; preds = %30
  %34 = load %struct.user_langs*, %struct.user_langs** %8, align 8
  %35 = getelementptr inbounds %struct.user_langs, %struct.user_langs* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = load i32, i32* @MAX_USER_LANGS, align 4
  %38 = icmp sge i32 %36, %37
  br i1 %38, label %39, label %40

39:                                               ; preds = %33, %27
  store i32 0, i32* %4, align 4
  br label %441

40:                                               ; preds = %33, %30
  store i32 0, i32* %11, align 4
  %41 = load i32*, i32** %6, align 8
  %42 = getelementptr inbounds i32, i32* %41, i64 0
  %43 = load i32, i32* %42, align 4
  %44 = icmp sge i32 %43, 0
  %45 = zext i1 %44 to i32
  %46 = call i32 @assert(i32 %45)
  store i32 1, i32* %9, align 4
  br label %47

47:                                               ; preds = %104, %40
  %48 = load i32, i32* %9, align 4
  %49 = load i32, i32* %7, align 4
  %50 = icmp slt i32 %48, %49
  br i1 %50, label %51, label %107

51:                                               ; preds = %47
  %52 = load i32*, i32** %6, align 8
  %53 = load i32, i32* %9, align 4
  %54 = sub nsw i32 %53, 1
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i32, i32* %52, i64 %55
  %57 = load i32, i32* %56, align 4
  %58 = load i32*, i32** %6, align 8
  %59 = load i32, i32* %9, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i32, i32* %58, i64 %60
  %62 = load i32, i32* %61, align 4
  %63 = icmp sge i32 %57, %62
  br i1 %63, label %64, label %89

64:                                               ; preds = %51
  %65 = load i32, i32* @stderr, align 4
  %66 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = load i32, i32* %7, align 4
  %70 = call i32 (i32, i8*, ...) @fprintf(i32 %65, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %68, i32 %69)
  store i32 0, i32* %12, align 4
  br label %71

71:                                               ; preds = %83, %64
  %72 = load i32, i32* %12, align 4
  %73 = load i32, i32* %7, align 4
  %74 = icmp slt i32 %72, %73
  br i1 %74, label %75, label %86

75:                                               ; preds = %71
  %76 = load i32, i32* @stderr, align 4
  %77 = load i32*, i32** %6, align 8
  %78 = load i32, i32* %12, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i32, i32* %77, i64 %79
  %81 = load i32, i32* %80, align 4
  %82 = call i32 (i32, i8*, ...) @fprintf(i32 %76, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 %81)
  br label %83

83:                                               ; preds = %75
  %84 = load i32, i32* %12, align 4
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %12, align 4
  br label %71

86:                                               ; preds = %71
  %87 = load i32, i32* @stderr, align 4
  %88 = call i32 (i32, i8*, ...) @fprintf(i32 %87, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  br label %89

89:                                               ; preds = %86, %51
  %90 = load i32*, i32** %6, align 8
  %91 = load i32, i32* %9, align 4
  %92 = sub nsw i32 %91, 1
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds i32, i32* %90, i64 %93
  %95 = load i32, i32* %94, align 4
  %96 = load i32*, i32** %6, align 8
  %97 = load i32, i32* %9, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds i32, i32* %96, i64 %98
  %100 = load i32, i32* %99, align 4
  %101 = icmp slt i32 %95, %100
  %102 = zext i1 %101 to i32
  %103 = call i32 @assert(i32 %102)
  br label %104

104:                                              ; preds = %89
  %105 = load i32, i32* %9, align 4
  %106 = add nsw i32 %105, 1
  store i32 %106, i32* %9, align 4
  br label %47

107:                                              ; preds = %47
  %108 = load %struct.user_langs*, %struct.user_langs** %8, align 8
  %109 = icmp ne %struct.user_langs* %108, null
  br i1 %109, label %110, label %389

110:                                              ; preds = %107
  %111 = load %struct.user_langs*, %struct.user_langs** %8, align 8
  %112 = getelementptr inbounds %struct.user_langs, %struct.user_langs* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  %114 = icmp sge i32 %113, 0
  br i1 %114, label %115, label %123

115:                                              ; preds = %110
  %116 = load %struct.user_langs*, %struct.user_langs** %8, align 8
  %117 = getelementptr inbounds %struct.user_langs, %struct.user_langs* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 8
  %119 = load %struct.user_langs*, %struct.user_langs** %8, align 8
  %120 = getelementptr inbounds %struct.user_langs, %struct.user_langs* %119, i32 0, i32 1
  %121 = load i32, i32* %120, align 4
  %122 = icmp sle i32 %118, %121
  br label %123

123:                                              ; preds = %115, %110
  %124 = phi i1 [ false, %110 ], [ %122, %115 ]
  %125 = zext i1 %124 to i32
  %126 = call i32 @assert(i32 %125)
  store i32 0, i32* %10, align 4
  store i32 0, i32* %9, align 4
  br label %127

127:                                              ; preds = %181, %123
  %128 = load i32, i32* %9, align 4
  %129 = load i32, i32* %7, align 4
  %130 = icmp slt i32 %128, %129
  br i1 %130, label %131, label %137

131:                                              ; preds = %127
  %132 = load i32, i32* %10, align 4
  %133 = load %struct.user_langs*, %struct.user_langs** %8, align 8
  %134 = getelementptr inbounds %struct.user_langs, %struct.user_langs* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 8
  %136 = icmp slt i32 %132, %135
  br label %137

137:                                              ; preds = %131, %127
  %138 = phi i1 [ false, %127 ], [ %136, %131 ]
  br i1 %138, label %139, label %182

139:                                              ; preds = %137
  %140 = load i32*, i32** %6, align 8
  %141 = load i32, i32* %9, align 4
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds i32, i32* %140, i64 %142
  %144 = load i32, i32* %143, align 4
  %145 = load %struct.user_langs*, %struct.user_langs** %8, align 8
  %146 = getelementptr inbounds %struct.user_langs, %struct.user_langs* %145, i32 0, i32 2
  %147 = load i32*, i32** %146, align 8
  %148 = load i32, i32* %10, align 4
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds i32, i32* %147, i64 %149
  %151 = load i32, i32* %150, align 4
  %152 = icmp slt i32 %144, %151
  br i1 %152, label %153, label %156

153:                                              ; preds = %139
  %154 = load i32, i32* %9, align 4
  %155 = add nsw i32 %154, 1
  store i32 %155, i32* %9, align 4
  br label %181

156:                                              ; preds = %139
  %157 = load i32*, i32** %6, align 8
  %158 = load i32, i32* %9, align 4
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds i32, i32* %157, i64 %159
  %161 = load i32, i32* %160, align 4
  %162 = load %struct.user_langs*, %struct.user_langs** %8, align 8
  %163 = getelementptr inbounds %struct.user_langs, %struct.user_langs* %162, i32 0, i32 2
  %164 = load i32*, i32** %163, align 8
  %165 = load i32, i32* %10, align 4
  %166 = sext i32 %165 to i64
  %167 = getelementptr inbounds i32, i32* %164, i64 %166
  %168 = load i32, i32* %167, align 4
  %169 = icmp sgt i32 %161, %168
  br i1 %169, label %170, label %173

170:                                              ; preds = %156
  %171 = load i32, i32* %10, align 4
  %172 = add nsw i32 %171, 1
  store i32 %172, i32* %10, align 4
  br label %180

173:                                              ; preds = %156
  %174 = load i32, i32* %11, align 4
  %175 = add nsw i32 %174, 1
  store i32 %175, i32* %11, align 4
  %176 = load i32, i32* %9, align 4
  %177 = add nsw i32 %176, 1
  store i32 %177, i32* %9, align 4
  %178 = load i32, i32* %10, align 4
  %179 = add nsw i32 %178, 1
  store i32 %179, i32* %10, align 4
  br label %180

180:                                              ; preds = %173, %170
  br label %181

181:                                              ; preds = %180, %153
  br label %127

182:                                              ; preds = %137
  %183 = load %struct.user_langs*, %struct.user_langs** %8, align 8
  %184 = getelementptr inbounds %struct.user_langs, %struct.user_langs* %183, i32 0, i32 0
  %185 = load i32, i32* %184, align 8
  %186 = load i32, i32* %7, align 4
  %187 = add nsw i32 %185, %186
  %188 = load i32, i32* %11, align 4
  %189 = sub nsw i32 %187, %188
  store i32 %189, i32* %13, align 4
  %190 = load %struct.user_langs*, %struct.user_langs** %8, align 8
  %191 = getelementptr inbounds %struct.user_langs, %struct.user_langs* %190, i32 0, i32 1
  %192 = load i32, i32* %191, align 4
  store i32 %192, i32* %14, align 4
  %193 = load i32, i32* %13, align 4
  %194 = load i32, i32* %14, align 4
  %195 = icmp sgt i32 %193, %194
  br i1 %195, label %196, label %236

196:                                              ; preds = %182
  br label %197

197:                                              ; preds = %201, %196
  %198 = load i32, i32* %13, align 4
  %199 = load i32, i32* %14, align 4
  %200 = icmp sgt i32 %198, %199
  br i1 %200, label %201, label %204

201:                                              ; preds = %197
  %202 = load i32, i32* %14, align 4
  %203 = shl i32 %202, 1
  store i32 %203, i32* %14, align 4
  br label %197

204:                                              ; preds = %197
  %205 = load i32, i32* %14, align 4
  %206 = mul nsw i32 2, %205
  %207 = sext i32 %206 to i64
  %208 = add i64 16, %207
  %209 = trunc i64 %208 to i32
  %210 = call %struct.user_langs* @zmalloc(i32 %209)
  store %struct.user_langs* %210, %struct.user_langs** %15, align 8
  %211 = load %struct.user_langs*, %struct.user_langs** %15, align 8
  %212 = load %struct.user_langs*, %struct.user_langs** %8, align 8
  %213 = load %struct.user_langs*, %struct.user_langs** %8, align 8
  %214 = getelementptr inbounds %struct.user_langs, %struct.user_langs* %213, i32 0, i32 0
  %215 = load i32, i32* %214, align 8
  %216 = mul nsw i32 2, %215
  %217 = sext i32 %216 to i64
  %218 = add i64 16, %217
  %219 = trunc i64 %218 to i32
  %220 = call i32 @memcpy(%struct.user_langs* %211, %struct.user_langs* %212, i32 %219)
  %221 = load %struct.user_langs*, %struct.user_langs** %8, align 8
  %222 = load %struct.user_langs*, %struct.user_langs** %8, align 8
  %223 = getelementptr inbounds %struct.user_langs, %struct.user_langs* %222, i32 0, i32 1
  %224 = load i32, i32* %223, align 4
  %225 = mul nsw i32 2, %224
  %226 = sext i32 %225 to i64
  %227 = add i64 16, %226
  %228 = trunc i64 %227 to i32
  %229 = call i32 @zfree(%struct.user_langs* %221, i32 %228)
  %230 = load %struct.user_langs*, %struct.user_langs** %15, align 8
  store %struct.user_langs* %230, %struct.user_langs** %8, align 8
  %231 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %232 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %231, i32 0, i32 1
  store %struct.user_langs* %230, %struct.user_langs** %232, align 8
  %233 = load i32, i32* %14, align 4
  %234 = load %struct.user_langs*, %struct.user_langs** %8, align 8
  %235 = getelementptr inbounds %struct.user_langs, %struct.user_langs* %234, i32 0, i32 1
  store i32 %233, i32* %235, align 4
  br label %236

236:                                              ; preds = %204, %182
  %237 = load i32, i32* %7, align 4
  %238 = sub nsw i32 %237, 1
  store i32 %238, i32* %9, align 4
  %239 = load %struct.user_langs*, %struct.user_langs** %8, align 8
  %240 = getelementptr inbounds %struct.user_langs, %struct.user_langs* %239, i32 0, i32 0
  %241 = load i32, i32* %240, align 8
  %242 = sub nsw i32 %241, 1
  store i32 %242, i32* %10, align 4
  %243 = load i32, i32* %13, align 4
  %244 = load %struct.user_langs*, %struct.user_langs** %8, align 8
  %245 = getelementptr inbounds %struct.user_langs, %struct.user_langs* %244, i32 0, i32 0
  store i32 %243, i32* %245, align 8
  br label %246

246:                                              ; preds = %326, %236
  %247 = load i32, i32* %9, align 4
  %248 = icmp sge i32 %247, 0
  br i1 %248, label %249, label %252

249:                                              ; preds = %246
  %250 = load i32, i32* %10, align 4
  %251 = icmp sge i32 %250, 0
  br label %252

252:                                              ; preds = %249, %246
  %253 = phi i1 [ false, %246 ], [ %251, %249 ]
  br i1 %253, label %254, label %327

254:                                              ; preds = %252
  %255 = load i32, i32* %13, align 4
  %256 = icmp sgt i32 %255, 0
  %257 = zext i1 %256 to i32
  %258 = call i32 @assert(i32 %257)
  %259 = load i32*, i32** %6, align 8
  %260 = load i32, i32* %9, align 4
  %261 = sext i32 %260 to i64
  %262 = getelementptr inbounds i32, i32* %259, i64 %261
  %263 = load i32, i32* %262, align 4
  %264 = load %struct.user_langs*, %struct.user_langs** %8, align 8
  %265 = getelementptr inbounds %struct.user_langs, %struct.user_langs* %264, i32 0, i32 2
  %266 = load i32*, i32** %265, align 8
  %267 = load i32, i32* %10, align 4
  %268 = sext i32 %267 to i64
  %269 = getelementptr inbounds i32, i32* %266, i64 %268
  %270 = load i32, i32* %269, align 4
  %271 = icmp sgt i32 %263, %270
  br i1 %271, label %272, label %293

272:                                              ; preds = %254
  %273 = load i32*, i32** %6, align 8
  %274 = load i32, i32* %9, align 4
  %275 = sext i32 %274 to i64
  %276 = getelementptr inbounds i32, i32* %273, i64 %275
  %277 = load i32, i32* %276, align 4
  %278 = load %struct.user_langs*, %struct.user_langs** %8, align 8
  %279 = getelementptr inbounds %struct.user_langs, %struct.user_langs* %278, i32 0, i32 2
  %280 = load i32*, i32** %279, align 8
  %281 = load i32, i32* %13, align 4
  %282 = add nsw i32 %281, -1
  store i32 %282, i32* %13, align 4
  %283 = sext i32 %282 to i64
  %284 = getelementptr inbounds i32, i32* %280, i64 %283
  store i32 %277, i32* %284, align 4
  %285 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %286 = load i32*, i32** %6, align 8
  %287 = load i32, i32* %9, align 4
  %288 = add nsw i32 %287, -1
  store i32 %288, i32* %9, align 4
  %289 = sext i32 %287 to i64
  %290 = getelementptr inbounds i32, i32* %286, i64 %289
  %291 = load i32, i32* %290, align 4
  %292 = call i32 @add_user_lang(%struct.TYPE_4__* %285, i32 %291)
  br label %326

293:                                              ; preds = %254
  %294 = load i32*, i32** %6, align 8
  %295 = load i32, i32* %9, align 4
  %296 = sext i32 %295 to i64
  %297 = getelementptr inbounds i32, i32* %294, i64 %296
  %298 = load i32, i32* %297, align 4
  %299 = load %struct.user_langs*, %struct.user_langs** %8, align 8
  %300 = getelementptr inbounds %struct.user_langs, %struct.user_langs* %299, i32 0, i32 2
  %301 = load i32*, i32** %300, align 8
  %302 = load i32, i32* %10, align 4
  %303 = sext i32 %302 to i64
  %304 = getelementptr inbounds i32, i32* %301, i64 %303
  %305 = load i32, i32* %304, align 4
  %306 = icmp eq i32 %298, %305
  br i1 %306, label %307, label %310

307:                                              ; preds = %293
  %308 = load i32, i32* %9, align 4
  %309 = add nsw i32 %308, -1
  store i32 %309, i32* %9, align 4
  br label %310

310:                                              ; preds = %307, %293
  %311 = load %struct.user_langs*, %struct.user_langs** %8, align 8
  %312 = getelementptr inbounds %struct.user_langs, %struct.user_langs* %311, i32 0, i32 2
  %313 = load i32*, i32** %312, align 8
  %314 = load i32, i32* %10, align 4
  %315 = add nsw i32 %314, -1
  store i32 %315, i32* %10, align 4
  %316 = sext i32 %314 to i64
  %317 = getelementptr inbounds i32, i32* %313, i64 %316
  %318 = load i32, i32* %317, align 4
  %319 = load %struct.user_langs*, %struct.user_langs** %8, align 8
  %320 = getelementptr inbounds %struct.user_langs, %struct.user_langs* %319, i32 0, i32 2
  %321 = load i32*, i32** %320, align 8
  %322 = load i32, i32* %13, align 4
  %323 = add nsw i32 %322, -1
  store i32 %323, i32* %13, align 4
  %324 = sext i32 %323 to i64
  %325 = getelementptr inbounds i32, i32* %321, i64 %324
  store i32 %318, i32* %325, align 4
  br label %326

326:                                              ; preds = %310, %272
  br label %246

327:                                              ; preds = %252
  br label %328

328:                                              ; preds = %331, %327
  %329 = load i32, i32* %9, align 4
  %330 = icmp sge i32 %329, 0
  br i1 %330, label %331, label %356

331:                                              ; preds = %328
  %332 = load i32, i32* %13, align 4
  %333 = icmp sgt i32 %332, 0
  %334 = zext i1 %333 to i32
  %335 = call i32 @assert(i32 %334)
  %336 = load i32*, i32** %6, align 8
  %337 = load i32, i32* %9, align 4
  %338 = sext i32 %337 to i64
  %339 = getelementptr inbounds i32, i32* %336, i64 %338
  %340 = load i32, i32* %339, align 4
  %341 = load %struct.user_langs*, %struct.user_langs** %8, align 8
  %342 = getelementptr inbounds %struct.user_langs, %struct.user_langs* %341, i32 0, i32 2
  %343 = load i32*, i32** %342, align 8
  %344 = load i32, i32* %13, align 4
  %345 = add nsw i32 %344, -1
  store i32 %345, i32* %13, align 4
  %346 = sext i32 %345 to i64
  %347 = getelementptr inbounds i32, i32* %343, i64 %346
  store i32 %340, i32* %347, align 4
  %348 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %349 = load i32*, i32** %6, align 8
  %350 = load i32, i32* %9, align 4
  %351 = add nsw i32 %350, -1
  store i32 %351, i32* %9, align 4
  %352 = sext i32 %350 to i64
  %353 = getelementptr inbounds i32, i32* %349, i64 %352
  %354 = load i32, i32* %353, align 4
  %355 = call i32 @add_user_lang(%struct.TYPE_4__* %348, i32 %354)
  br label %328

356:                                              ; preds = %328
  br label %357

357:                                              ; preds = %360, %356
  %358 = load i32, i32* %10, align 4
  %359 = icmp sge i32 %358, 0
  br i1 %359, label %360, label %380

360:                                              ; preds = %357
  %361 = load i32, i32* %13, align 4
  %362 = icmp sgt i32 %361, 0
  %363 = zext i1 %362 to i32
  %364 = call i32 @assert(i32 %363)
  %365 = load %struct.user_langs*, %struct.user_langs** %8, align 8
  %366 = getelementptr inbounds %struct.user_langs, %struct.user_langs* %365, i32 0, i32 2
  %367 = load i32*, i32** %366, align 8
  %368 = load i32, i32* %10, align 4
  %369 = add nsw i32 %368, -1
  store i32 %369, i32* %10, align 4
  %370 = sext i32 %368 to i64
  %371 = getelementptr inbounds i32, i32* %367, i64 %370
  %372 = load i32, i32* %371, align 4
  %373 = load %struct.user_langs*, %struct.user_langs** %8, align 8
  %374 = getelementptr inbounds %struct.user_langs, %struct.user_langs* %373, i32 0, i32 2
  %375 = load i32*, i32** %374, align 8
  %376 = load i32, i32* %13, align 4
  %377 = add nsw i32 %376, -1
  store i32 %377, i32* %13, align 4
  %378 = sext i32 %377 to i64
  %379 = getelementptr inbounds i32, i32* %375, i64 %378
  store i32 %372, i32* %379, align 4
  br label %357

380:                                              ; preds = %357
  %381 = load i32, i32* %13, align 4
  %382 = icmp ne i32 %381, 0
  %383 = xor i1 %382, true
  %384 = zext i1 %383 to i32
  %385 = call i32 @assert(i32 %384)
  %386 = load i32, i32* %7, align 4
  %387 = load i32, i32* %11, align 4
  %388 = sub nsw i32 %386, %387
  store i32 %388, i32* %4, align 4
  br label %441

389:                                              ; preds = %107
  %390 = load i32, i32* @MIN_USER_LANGS, align 4
  store i32 %390, i32* %16, align 4
  br label %391

391:                                              ; preds = %395, %389
  %392 = load i32, i32* %16, align 4
  %393 = load i32, i32* %7, align 4
  %394 = icmp slt i32 %392, %393
  br i1 %394, label %395, label %398

395:                                              ; preds = %391
  %396 = load i32, i32* %16, align 4
  %397 = shl i32 %396, 1
  store i32 %397, i32* %16, align 4
  br label %391

398:                                              ; preds = %391
  %399 = load i32, i32* %16, align 4
  %400 = mul nsw i32 2, %399
  %401 = sext i32 %400 to i64
  %402 = add i64 16, %401
  %403 = trunc i64 %402 to i32
  %404 = call %struct.user_langs* @zmalloc(i32 %403)
  store %struct.user_langs* %404, %struct.user_langs** %8, align 8
  %405 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %406 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %405, i32 0, i32 1
  store %struct.user_langs* %404, %struct.user_langs** %406, align 8
  %407 = load i32, i32* %7, align 4
  %408 = load %struct.user_langs*, %struct.user_langs** %8, align 8
  %409 = getelementptr inbounds %struct.user_langs, %struct.user_langs* %408, i32 0, i32 0
  store i32 %407, i32* %409, align 8
  %410 = load i32, i32* %16, align 4
  %411 = load %struct.user_langs*, %struct.user_langs** %8, align 8
  %412 = getelementptr inbounds %struct.user_langs, %struct.user_langs* %411, i32 0, i32 1
  store i32 %410, i32* %412, align 4
  store i32 0, i32* %9, align 4
  br label %413

413:                                              ; preds = %436, %398
  %414 = load i32, i32* %9, align 4
  %415 = load i32, i32* %7, align 4
  %416 = icmp slt i32 %414, %415
  br i1 %416, label %417, label %439

417:                                              ; preds = %413
  %418 = load i32*, i32** %6, align 8
  %419 = load i32, i32* %9, align 4
  %420 = sext i32 %419 to i64
  %421 = getelementptr inbounds i32, i32* %418, i64 %420
  %422 = load i32, i32* %421, align 4
  %423 = load %struct.user_langs*, %struct.user_langs** %8, align 8
  %424 = getelementptr inbounds %struct.user_langs, %struct.user_langs* %423, i32 0, i32 2
  %425 = load i32*, i32** %424, align 8
  %426 = load i32, i32* %9, align 4
  %427 = sext i32 %426 to i64
  %428 = getelementptr inbounds i32, i32* %425, i64 %427
  store i32 %422, i32* %428, align 4
  %429 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %430 = load i32*, i32** %6, align 8
  %431 = load i32, i32* %9, align 4
  %432 = sext i32 %431 to i64
  %433 = getelementptr inbounds i32, i32* %430, i64 %432
  %434 = load i32, i32* %433, align 4
  %435 = call i32 @add_user_lang(%struct.TYPE_4__* %429, i32 %434)
  br label %436

436:                                              ; preds = %417
  %437 = load i32, i32* %9, align 4
  %438 = add nsw i32 %437, 1
  store i32 %438, i32* %9, align 4
  br label %413

439:                                              ; preds = %413
  %440 = load i32, i32* %7, align 4
  store i32 %440, i32* %4, align 4
  br label %441

441:                                              ; preds = %439, %380, %39, %26
  %442 = load i32, i32* %4, align 4
  ret i32 %442
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local %struct.user_langs* @zmalloc(i32) #1

declare dso_local i32 @memcpy(%struct.user_langs*, %struct.user_langs*, i32) #1

declare dso_local i32 @zfree(%struct.user_langs*, i32) #1

declare dso_local i32 @add_user_lang(%struct.TYPE_4__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
