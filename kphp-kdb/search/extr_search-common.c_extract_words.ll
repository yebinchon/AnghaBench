; ModuleID = '/home/carl/AnghaBench/kphp-kdb/search/extr_search-common.c_extract_words.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/search/extr_search-common.c_extract_words.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i32 }

@extract_words.buff = internal global [512 x i8] zeroinitializer, align 16
@.str = private unnamed_addr constant [4 x i8] c"\1F@@\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"O\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"W\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"error at %.30s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @extract_words(i8* %0, i32 %1, i32 %2, %struct.TYPE_4__* %3, i32 %4, i32 %5, i64 %6) #0 {
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_4__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i8*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  store i8* %0, i8** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store %struct.TYPE_4__* %3, %struct.TYPE_4__** %11, align 8
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  store i64 %6, i64* %14, align 8
  store i32 1, i32* %16, align 4
  store i8* null, i8** %17, align 8
  store i32 0, i32* %18, align 4
  store i32 65536, i32* %19, align 4
  %26 = load i32, i32* %10, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %43

28:                                               ; preds = %7
  %29 = call i8* @word_hash(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 3)
  %30 = ptrtoint i8* %29 to i64
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %32 = load i32, i32* %18, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i64 %33
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  store i64 %30, i64* %35, align 8
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %37 = load i32, i32* %18, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i64 %38
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 1
  store i32 0, i32* %40, align 8
  %41 = load i32, i32* %18, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %18, align 4
  br label %43

43:                                               ; preds = %28, %7
  %44 = load i32, i32* %13, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %81

46:                                               ; preds = %43
  %47 = load i64, i64* %14, align 8
  %48 = ashr i64 %47, 32
  %49 = trunc i64 %48 to i32
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %81

51:                                               ; preds = %46
  %52 = load i64, i64* %14, align 8
  %53 = trunc i64 %52 to i32
  store i32 %53, i32* %20, align 4
  %54 = load i32, i32* %20, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %80

56:                                               ; preds = %51
  %57 = load i32, i32* %20, align 4
  %58 = icmp sgt i32 %57, 0
  br i1 %58, label %59, label %62

59:                                               ; preds = %56
  %60 = load i32, i32* %20, align 4
  %61 = call i64 @make_tag(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i32 1, i32 %60)
  br label %66

62:                                               ; preds = %56
  %63 = load i32, i32* %20, align 4
  %64 = sub nsw i32 0, %63
  %65 = call i64 @make_tag(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i32 1, i32 %64)
  br label %66

66:                                               ; preds = %62, %59
  %67 = phi i64 [ %61, %59 ], [ %65, %62 ]
  %68 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %69 = load i32, i32* %18, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i64 %70
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 0
  store i64 %67, i64* %72, align 8
  %73 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %74 = load i32, i32* %18, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i64 %75
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 1
  store i32 0, i32* %77, align 8
  %78 = load i32, i32* %18, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %18, align 4
  br label %80

80:                                               ; preds = %66, %51
  br label %81

81:                                               ; preds = %80, %46, %43
  br label %82

82:                                               ; preds = %220, %164, %81
  %83 = load i32, i32* %18, align 4
  %84 = load i32, i32* %12, align 4
  %85 = icmp slt i32 %83, %84
  br i1 %85, label %86, label %91

86:                                               ; preds = %82
  %87 = load i8*, i8** %8, align 8
  %88 = load i8, i8* %87, align 1
  %89 = sext i8 %88 to i32
  %90 = icmp ne i32 %89, 0
  br label %91

91:                                               ; preds = %86, %82
  %92 = phi i1 [ false, %82 ], [ %90, %86 ]
  br i1 %92, label %93, label %225

93:                                               ; preds = %91
  %94 = load i8*, i8** %8, align 8
  %95 = load i8*, i8** %17, align 8
  %96 = icmp eq i8* %94, %95
  br i1 %96, label %97, label %101

97:                                               ; preds = %93
  %98 = load i8*, i8** %8, align 8
  %99 = call i32 @kprintf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0), i8* %98)
  %100 = call i32 @exit(i32 2) #3
  unreachable

101:                                              ; preds = %93
  %102 = load i8*, i8** %8, align 8
  %103 = load i32, i32* %16, align 4
  %104 = sext i32 %103 to i64
  %105 = sub i64 0, %104
  %106 = getelementptr inbounds i8, i8* %102, i64 %105
  store i8* %106, i8** %17, align 8
  %107 = load i32, i32* %16, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %110

109:                                              ; preds = %101
  br label %113

110:                                              ; preds = %101
  %111 = load i8*, i8** %8, align 8
  %112 = call i32 @get_notword(i8* %111)
  br label %113

113:                                              ; preds = %110, %109
  %114 = phi i32 [ 0, %109 ], [ %112, %110 ]
  store i32 %114, i32* %21, align 4
  store i32 0, i32* %16, align 4
  %115 = load i32, i32* %21, align 4
  %116 = icmp slt i32 %115, 0
  br i1 %116, label %117, label %118

117:                                              ; preds = %113
  br label %225

118:                                              ; preds = %113
  br label %119

119:                                              ; preds = %135, %118
  %120 = load i32, i32* %21, align 4
  %121 = icmp sgt i32 %120, 0
  br i1 %121, label %122, label %127

122:                                              ; preds = %119
  %123 = load i8*, i8** %8, align 8
  %124 = load i8, i8* %123, align 1
  %125 = sext i8 %124 to i32
  %126 = icmp ne i32 %125, 31
  br label %127

127:                                              ; preds = %122, %119
  %128 = phi i1 [ false, %119 ], [ %126, %122 ]
  br i1 %128, label %129, label %140

129:                                              ; preds = %127
  %130 = load i8*, i8** %8, align 8
  %131 = load i8, i8* %130, align 1
  %132 = sext i8 %131 to i32
  %133 = icmp eq i32 %132, 9
  br i1 %133, label %134, label %135

134:                                              ; preds = %129
  store i32 1, i32* %19, align 4
  br label %135

135:                                              ; preds = %134, %129
  %136 = load i8*, i8** %8, align 8
  %137 = getelementptr inbounds i8, i8* %136, i32 1
  store i8* %137, i8** %8, align 8
  %138 = load i32, i32* %21, align 4
  %139 = add nsw i32 %138, -1
  store i32 %139, i32* %21, align 4
  br label %119

140:                                              ; preds = %127
  %141 = load i8*, i8** %8, align 8
  %142 = load i8, i8* %141, align 1
  %143 = sext i8 %142 to i32
  %144 = icmp eq i32 %143, 31
  br i1 %144, label %145, label %158

145:                                              ; preds = %140
  store i32 1, i32* %21, align 4
  br label %146

146:                                              ; preds = %154, %145
  %147 = load i8*, i8** %8, align 8
  %148 = load i32, i32* %21, align 4
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds i8, i8* %147, i64 %149
  %151 = load i8, i8* %150, align 1
  %152 = zext i8 %151 to i32
  %153 = icmp sge i32 %152, 64
  br i1 %153, label %154, label %157

154:                                              ; preds = %146
  %155 = load i32, i32* %21, align 4
  %156 = add nsw i32 %155, 1
  store i32 %156, i32* %21, align 4
  br label %146

157:                                              ; preds = %146
  store i32 1, i32* %16, align 4
  br label %161

158:                                              ; preds = %140
  %159 = load i8*, i8** %8, align 8
  %160 = call i32 @get_word(i8* %159)
  store i32 %160, i32* %21, align 4
  br label %161

161:                                              ; preds = %158, %157
  %162 = load i32, i32* %21, align 4
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %165, label %164

164:                                              ; preds = %161
  br label %82

165:                                              ; preds = %161
  %166 = load i32, i32* %21, align 4
  %167 = icmp sgt i32 %166, 0
  br i1 %167, label %168, label %171

168:                                              ; preds = %165
  %169 = load i32, i32* %21, align 4
  %170 = icmp slt i32 %169, 511
  br label %171

171:                                              ; preds = %168, %165
  %172 = phi i1 [ false, %165 ], [ %170, %168 ]
  %173 = zext i1 %172 to i32
  %174 = call i32 @assert(i32 %173)
  %175 = load i8*, i8** %8, align 8
  %176 = load i8, i8* %175, align 1
  %177 = sext i8 %176 to i32
  %178 = icmp eq i32 %177, 31
  br i1 %178, label %179, label %196

179:                                              ; preds = %171
  %180 = load i8*, i8** %8, align 8
  %181 = load i32, i32* %21, align 4
  %182 = call i8* @word_hash(i8* %180, i32 %181)
  %183 = ptrtoint i8* %182 to i64
  %184 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %185 = load i32, i32* %18, align 4
  %186 = sext i32 %185 to i64
  %187 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %184, i64 %186
  %188 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %187, i32 0, i32 0
  store i64 %183, i64* %188, align 8
  %189 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %190 = load i32, i32* %18, align 4
  %191 = sext i32 %190 to i64
  %192 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %189, i64 %191
  %193 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %192, i32 0, i32 1
  store i32 0, i32* %193, align 8
  %194 = load i32, i32* %18, align 4
  %195 = add nsw i32 %194, 1
  store i32 %195, i32* %18, align 4
  br label %220

196:                                              ; preds = %171
  %197 = load i8*, i8** %8, align 8
  %198 = load i32, i32* %21, align 4
  %199 = call i32 @my_lc_str(i8* getelementptr inbounds ([512 x i8], [512 x i8]* @extract_words.buff, i64 0, i64 0), i8* %197, i32 %198)
  store i32 %199, i32* %22, align 4
  %200 = load i32, i32* %22, align 4
  %201 = icmp sle i32 %200, 510
  %202 = zext i1 %201 to i32
  %203 = call i32 @assert(i32 %202)
  %204 = load i32, i32* %22, align 4
  %205 = call i8* @word_hash(i8* getelementptr inbounds ([512 x i8], [512 x i8]* @extract_words.buff, i64 0, i64 0), i32 %204)
  %206 = ptrtoint i8* %205 to i64
  %207 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %208 = load i32, i32* %18, align 4
  %209 = sext i32 %208 to i64
  %210 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %207, i64 %209
  %211 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %210, i32 0, i32 0
  store i64 %206, i64* %211, align 8
  %212 = load i32, i32* %19, align 4
  %213 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %214 = load i32, i32* %18, align 4
  %215 = sext i32 %214 to i64
  %216 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %213, i64 %215
  %217 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %216, i32 0, i32 1
  store i32 %212, i32* %217, align 8
  %218 = load i32, i32* %18, align 4
  %219 = add nsw i32 %218, 1
  store i32 %219, i32* %18, align 4
  br label %220

220:                                              ; preds = %196, %179
  %221 = load i32, i32* %21, align 4
  %222 = load i8*, i8** %8, align 8
  %223 = sext i32 %221 to i64
  %224 = getelementptr inbounds i8, i8* %222, i64 %223
  store i8* %224, i8** %8, align 8
  br label %82

225:                                              ; preds = %117, %91
  store i32 0, i32* %23, align 4
  %226 = load i32, i32* %18, align 4
  %227 = icmp sgt i32 %226, 0
  br i1 %227, label %228, label %301

228:                                              ; preds = %225
  %229 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %230 = load i32, i32* %18, align 4
  %231 = sub nsw i32 %230, 1
  %232 = call i32 @qsort_q(%struct.TYPE_4__* %229, i32 0, i32 %231)
  store i32 0, i32* %15, align 4
  br label %233

233:                                              ; preds = %298, %228
  %234 = load i32, i32* %15, align 4
  %235 = load i32, i32* %18, align 4
  %236 = icmp slt i32 %234, %235
  br i1 %236, label %237, label %300

237:                                              ; preds = %233
  %238 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %239 = load i32, i32* %15, align 4
  %240 = sext i32 %239 to i64
  %241 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %238, i64 %240
  %242 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %241, i32 0, i32 1
  %243 = load i32, i32* %242, align 8
  store i32 %243, i32* %25, align 4
  %244 = load i32, i32* %15, align 4
  %245 = add nsw i32 %244, 1
  store i32 %245, i32* %24, align 4
  br label %246

246:                                              ; preds = %275, %237
  %247 = load i32, i32* %24, align 4
  %248 = load i32, i32* %18, align 4
  %249 = icmp slt i32 %247, %248
  br i1 %249, label %250, label %264

250:                                              ; preds = %246
  %251 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %252 = load i32, i32* %24, align 4
  %253 = sext i32 %252 to i64
  %254 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %251, i64 %253
  %255 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %254, i32 0, i32 0
  %256 = load i64, i64* %255, align 8
  %257 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %258 = load i32, i32* %15, align 4
  %259 = sext i32 %258 to i64
  %260 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %257, i64 %259
  %261 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %260, i32 0, i32 0
  %262 = load i64, i64* %261, align 8
  %263 = icmp eq i64 %256, %262
  br label %264

264:                                              ; preds = %250, %246
  %265 = phi i1 [ false, %246 ], [ %263, %250 ]
  br i1 %265, label %266, label %278

266:                                              ; preds = %264
  %267 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %268 = load i32, i32* %24, align 4
  %269 = sext i32 %268 to i64
  %270 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %267, i64 %269
  %271 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %270, i32 0, i32 1
  %272 = load i32, i32* %271, align 8
  %273 = load i32, i32* %25, align 4
  %274 = add i32 %273, %272
  store i32 %274, i32* %25, align 4
  br label %275

275:                                              ; preds = %266
  %276 = load i32, i32* %24, align 4
  %277 = add nsw i32 %276, 1
  store i32 %277, i32* %24, align 4
  br label %246

278:                                              ; preds = %264
  %279 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %280 = load i32, i32* %15, align 4
  %281 = sext i32 %280 to i64
  %282 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %279, i64 %281
  %283 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %282, i32 0, i32 0
  %284 = load i64, i64* %283, align 8
  %285 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %286 = load i32, i32* %23, align 4
  %287 = sext i32 %286 to i64
  %288 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %285, i64 %287
  %289 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %288, i32 0, i32 0
  store i64 %284, i64* %289, align 8
  %290 = load i32, i32* %25, align 4
  %291 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %292 = load i32, i32* %23, align 4
  %293 = sext i32 %292 to i64
  %294 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %291, i64 %293
  %295 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %294, i32 0, i32 1
  store i32 %290, i32* %295, align 8
  %296 = load i32, i32* %23, align 4
  %297 = add nsw i32 %296, 1
  store i32 %297, i32* %23, align 4
  br label %298

298:                                              ; preds = %278
  %299 = load i32, i32* %24, align 4
  store i32 %299, i32* %15, align 4
  br label %233

300:                                              ; preds = %233
  br label %301

301:                                              ; preds = %300, %225
  %302 = load i32, i32* %23, align 4
  ret i32 %302
}

declare dso_local i8* @word_hash(i8*, i32) #1

declare dso_local i64 @make_tag(i8*, i32, i32) #1

declare dso_local i32 @kprintf(i8*, i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @get_notword(i8*) #1

declare dso_local i32 @get_word(i8*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @my_lc_str(i8*, i8*, i32) #1

declare dso_local i32 @qsort_q(%struct.TYPE_4__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
