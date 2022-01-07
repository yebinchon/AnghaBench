; ModuleID = '/home/carl/AnghaBench/kphp-kdb/common/extr_word-split.c_get_notword.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/common/extr_word-split.c_get_notword.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@word_split_utf8 = common dso_local global i64 0, align 8
@is_letter = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @get_notword(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %12 = load i64, i64* @word_split_utf8, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %1
  %15 = load i8*, i8** %3, align 8
  %16 = call i32 @get_notword_utf8(i8* %15)
  store i32 %16, i32* %2, align 4
  br label %293

17:                                               ; preds = %1
  store i32 0, i32* %4, align 4
  store i32 0, i32* %5, align 4
  br label %18

18:                                               ; preds = %284, %269, %221, %107, %88, %17
  %19 = load i32, i32* %4, align 4
  %20 = icmp sle i32 %19, 30
  br i1 %20, label %21, label %24

21:                                               ; preds = %18
  %22 = load i32, i32* %5, align 4
  %23 = icmp sle i32 %22, 4
  br label %24

24:                                               ; preds = %21, %18
  %25 = phi i1 [ false, %18 ], [ %23, %21 ]
  br i1 %25, label %26, label %291

26:                                               ; preds = %24
  %27 = load i8*, i8** %3, align 8
  %28 = load i8, i8* %27, align 1
  %29 = zext i8 %28 to i32
  store i32 %29, i32* %6, align 4
  %30 = load i32, i32* %6, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %40

32:                                               ; preds = %26
  %33 = load i32*, i32** @is_letter, align 8
  %34 = load i32, i32* %6, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i32, i32* %33, i64 %35
  %37 = load i32, i32* %36, align 4
  %38 = and i32 %37, 63
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %32, %26
  br label %291

41:                                               ; preds = %32
  %42 = load i32*, i32** @is_letter, align 8
  %43 = load i32, i32* %6, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i32, i32* %42, i64 %44
  %46 = load i32, i32* %45, align 4
  %47 = and i32 %46, 64
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %61

49:                                               ; preds = %41
  %50 = load i32, i32* %6, align 4
  %51 = load i8*, i8** %3, align 8
  %52 = getelementptr inbounds i8, i8* %51, i64 1
  %53 = call i32 @sigil_word_detect(i32 %50, i8* %52)
  store i32 %53, i32* %7, align 4
  %54 = load i32, i32* %7, align 4
  %55 = icmp sgt i32 %54, 0
  br i1 %55, label %56, label %60

56:                                               ; preds = %49
  %57 = load i32, i32* %7, align 4
  %58 = icmp slt i32 %57, 127
  br i1 %58, label %59, label %60

59:                                               ; preds = %56
  br label %291

60:                                               ; preds = %56, %49
  br label %61

61:                                               ; preds = %60, %41
  %62 = load i32, i32* %6, align 4
  %63 = icmp eq i32 %62, 60
  br i1 %63, label %64, label %118

64:                                               ; preds = %61
  %65 = load i8*, i8** %3, align 8
  %66 = getelementptr inbounds i8, i8* %65, i64 1
  %67 = load i8, i8* %66, align 1
  %68 = sext i8 %67 to i32
  %69 = icmp eq i32 %68, 98
  br i1 %69, label %70, label %118

70:                                               ; preds = %64
  %71 = load i8*, i8** %3, align 8
  %72 = getelementptr inbounds i8, i8* %71, i64 2
  %73 = load i8, i8* %72, align 1
  %74 = icmp ne i8 %73, 0
  br i1 %74, label %76, label %75

75:                                               ; preds = %70
  store i32 -1, i32* %2, align 4
  br label %293

76:                                               ; preds = %70
  %77 = load i8*, i8** %3, align 8
  %78 = getelementptr inbounds i8, i8* %77, i64 2
  %79 = load i8, i8* %78, align 1
  %80 = sext i8 %79 to i32
  %81 = icmp eq i32 %80, 114
  br i1 %81, label %82, label %116

82:                                               ; preds = %76
  %83 = load i8*, i8** %3, align 8
  %84 = getelementptr inbounds i8, i8* %83, i64 3
  %85 = load i8, i8* %84, align 1
  %86 = sext i8 %85 to i32
  %87 = icmp eq i32 %86, 62
  br i1 %87, label %88, label %95

88:                                               ; preds = %82
  %89 = load i8*, i8** %3, align 8
  %90 = getelementptr inbounds i8, i8* %89, i64 4
  store i8* %90, i8** %3, align 8
  %91 = load i32, i32* %4, align 4
  %92 = add nsw i32 %91, 4
  store i32 %92, i32* %4, align 4
  %93 = load i32, i32* %5, align 4
  %94 = add nsw i32 %93, 1
  store i32 %94, i32* %5, align 4
  br label %18

95:                                               ; preds = %82
  %96 = load i8*, i8** %3, align 8
  %97 = getelementptr inbounds i8, i8* %96, i64 3
  %98 = load i8, i8* %97, align 1
  %99 = sext i8 %98 to i32
  %100 = icmp eq i32 %99, 47
  br i1 %100, label %101, label %114

101:                                              ; preds = %95
  %102 = load i8*, i8** %3, align 8
  %103 = getelementptr inbounds i8, i8* %102, i64 4
  %104 = load i8, i8* %103, align 1
  %105 = sext i8 %104 to i32
  %106 = icmp eq i32 %105, 62
  br i1 %106, label %107, label %114

107:                                              ; preds = %101
  %108 = load i8*, i8** %3, align 8
  %109 = getelementptr inbounds i8, i8* %108, i64 5
  store i8* %109, i8** %3, align 8
  %110 = load i32, i32* %4, align 4
  %111 = add nsw i32 %110, 5
  store i32 %111, i32* %4, align 4
  %112 = load i32, i32* %5, align 4
  %113 = add nsw i32 %112, 1
  store i32 %113, i32* %5, align 4
  br label %18

114:                                              ; preds = %101, %95
  br label %115

115:                                              ; preds = %114
  br label %116

116:                                              ; preds = %115, %76
  br label %117

117:                                              ; preds = %116
  br label %284

118:                                              ; preds = %64, %61
  %119 = load i32, i32* %6, align 4
  %120 = icmp eq i32 %119, 38
  br i1 %120, label %121, label %283

121:                                              ; preds = %118
  %122 = load i8*, i8** %3, align 8
  %123 = getelementptr inbounds i8, i8* %122, i64 1
  %124 = load i8, i8* %123, align 1
  %125 = sext i8 %124 to i32
  %126 = icmp eq i32 %125, 35
  br i1 %126, label %127, label %232

127:                                              ; preds = %121
  store i32 0, i32* %9, align 4
  store i32 2, i32* %8, align 4
  br label %128

128:                                              ; preds = %161, %127
  %129 = load i32, i32* %8, align 4
  %130 = icmp sle i32 %129, 7
  br i1 %130, label %131, label %147

131:                                              ; preds = %128
  %132 = load i8*, i8** %3, align 8
  %133 = load i32, i32* %8, align 4
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds i8, i8* %132, i64 %134
  %136 = load i8, i8* %135, align 1
  %137 = sext i8 %136 to i32
  %138 = icmp sle i32 %137, 57
  br i1 %138, label %139, label %147

139:                                              ; preds = %131
  %140 = load i8*, i8** %3, align 8
  %141 = load i32, i32* %8, align 4
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds i8, i8* %140, i64 %142
  %144 = load i8, i8* %143, align 1
  %145 = sext i8 %144 to i32
  %146 = icmp sge i32 %145, 48
  br label %147

147:                                              ; preds = %139, %131, %128
  %148 = phi i1 [ false, %131 ], [ false, %128 ], [ %146, %139 ]
  br i1 %148, label %149, label %164

149:                                              ; preds = %147
  %150 = load i32, i32* %9, align 4
  %151 = mul nsw i32 %150, 10
  store i32 %151, i32* %9, align 4
  %152 = load i8*, i8** %3, align 8
  %153 = load i32, i32* %8, align 4
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds i8, i8* %152, i64 %154
  %156 = load i8, i8* %155, align 1
  %157 = sext i8 %156 to i32
  %158 = sub nsw i32 %157, 48
  %159 = load i32, i32* %9, align 4
  %160 = add nsw i32 %159, %158
  store i32 %160, i32* %9, align 4
  br label %161

161:                                              ; preds = %149
  %162 = load i32, i32* %8, align 4
  %163 = add nsw i32 %162, 1
  store i32 %163, i32* %8, align 4
  br label %128

164:                                              ; preds = %147
  %165 = load i8*, i8** %3, align 8
  %166 = load i32, i32* %8, align 4
  %167 = sext i32 %166 to i64
  %168 = getelementptr inbounds i8, i8* %165, i64 %167
  %169 = load i8, i8* %168, align 1
  %170 = sext i8 %169 to i32
  %171 = icmp eq i32 %170, 59
  br i1 %171, label %172, label %231

172:                                              ; preds = %164
  %173 = load i32, i32* %9, align 4
  %174 = icmp ne i32 %173, 0
  br i1 %174, label %175, label %231

175:                                              ; preds = %172
  %176 = load i32, i32* %9, align 4
  %177 = icmp slt i32 %176, 4096
  br i1 %177, label %178, label %231

178:                                              ; preds = %175
  %179 = load i32, i32* %8, align 4
  %180 = add nsw i32 %179, 1
  store i32 %180, i32* %8, align 4
  %181 = load i32, i32* %9, align 4
  %182 = icmp slt i32 %181, 128
  br i1 %182, label %183, label %208

183:                                              ; preds = %178
  %184 = load i32*, i32** @is_letter, align 8
  %185 = load i32, i32* %9, align 4
  %186 = sext i32 %185 to i64
  %187 = getelementptr inbounds i32, i32* %184, i64 %186
  %188 = load i32, i32* %187, align 4
  %189 = and i32 %188, 64
  %190 = icmp ne i32 %189, 0
  br i1 %190, label %191, label %208

191:                                              ; preds = %183
  %192 = load i32, i32* %4, align 4
  %193 = icmp ne i32 %192, 0
  br i1 %193, label %194, label %208

194:                                              ; preds = %191
  %195 = load i32, i32* %6, align 4
  %196 = load i8*, i8** %3, align 8
  %197 = load i32, i32* %8, align 4
  %198 = sext i32 %197 to i64
  %199 = getelementptr inbounds i8, i8* %196, i64 %198
  %200 = call i32 @sigil_word_detect(i32 %195, i8* %199)
  store i32 %200, i32* %10, align 4
  %201 = load i32, i32* %10, align 4
  %202 = icmp sge i32 %201, 0
  br i1 %202, label %203, label %207

203:                                              ; preds = %194
  %204 = load i32, i32* %10, align 4
  %205 = icmp slt i32 %204, 127
  br i1 %205, label %206, label %207

206:                                              ; preds = %203
  br label %291

207:                                              ; preds = %203, %194
  br label %208

208:                                              ; preds = %207, %191, %183, %178
  %209 = load i32, i32* %9, align 4
  %210 = icmp sge i32 %209, 192
  br i1 %210, label %211, label %221

211:                                              ; preds = %208
  %212 = load i32, i32* %9, align 4
  %213 = icmp sle i32 %212, 255
  br i1 %213, label %214, label %221

214:                                              ; preds = %211
  %215 = load i32, i32* %9, align 4
  %216 = icmp ne i32 %215, 215
  br i1 %216, label %217, label %221

217:                                              ; preds = %214
  %218 = load i32, i32* %9, align 4
  %219 = icmp ne i32 %218, 247
  br i1 %219, label %220, label %221

220:                                              ; preds = %217
  br label %291

221:                                              ; preds = %217, %214, %211, %208
  %222 = load i32, i32* %8, align 4
  %223 = load i32, i32* %4, align 4
  %224 = add nsw i32 %223, %222
  store i32 %224, i32* %4, align 4
  %225 = load i32, i32* %8, align 4
  %226 = load i8*, i8** %3, align 8
  %227 = sext i32 %225 to i64
  %228 = getelementptr inbounds i8, i8* %226, i64 %227
  store i8* %228, i8** %3, align 8
  %229 = load i32, i32* %5, align 4
  %230 = add nsw i32 %229, 1
  store i32 %230, i32* %5, align 4
  br label %18

231:                                              ; preds = %175, %172, %164
  br label %282

232:                                              ; preds = %121
  store i32 1, i32* %11, align 4
  br label %233

233:                                              ; preds = %255, %232
  %234 = load i32, i32* %11, align 4
  %235 = icmp sle i32 %234, 10
  br i1 %235, label %236, label %252

236:                                              ; preds = %233
  %237 = load i8*, i8** %3, align 8
  %238 = load i32, i32* %11, align 4
  %239 = sext i32 %238 to i64
  %240 = getelementptr inbounds i8, i8* %237, i64 %239
  %241 = load i8, i8* %240, align 1
  %242 = sext i8 %241 to i32
  %243 = icmp sge i32 %242, 97
  br i1 %243, label %244, label %252

244:                                              ; preds = %236
  %245 = load i8*, i8** %3, align 8
  %246 = load i32, i32* %11, align 4
  %247 = sext i32 %246 to i64
  %248 = getelementptr inbounds i8, i8* %245, i64 %247
  %249 = load i8, i8* %248, align 1
  %250 = sext i8 %249 to i32
  %251 = icmp sle i32 %250, 122
  br label %252

252:                                              ; preds = %244, %236, %233
  %253 = phi i1 [ false, %236 ], [ false, %233 ], [ %251, %244 ]
  br i1 %253, label %254, label %258

254:                                              ; preds = %252
  br label %255

255:                                              ; preds = %254
  %256 = load i32, i32* %11, align 4
  %257 = add nsw i32 %256, 1
  store i32 %257, i32* %11, align 4
  br label %233

258:                                              ; preds = %252
  %259 = load i32, i32* %11, align 4
  %260 = icmp sgt i32 %259, 1
  br i1 %260, label %261, label %281

261:                                              ; preds = %258
  %262 = load i8*, i8** %3, align 8
  %263 = load i32, i32* %11, align 4
  %264 = sext i32 %263 to i64
  %265 = getelementptr inbounds i8, i8* %262, i64 %264
  %266 = load i8, i8* %265, align 1
  %267 = sext i8 %266 to i32
  %268 = icmp eq i32 %267, 59
  br i1 %268, label %269, label %281

269:                                              ; preds = %261
  %270 = load i32, i32* %11, align 4
  %271 = add nsw i32 %270, 1
  store i32 %271, i32* %11, align 4
  %272 = load i32, i32* %11, align 4
  %273 = load i32, i32* %4, align 4
  %274 = add nsw i32 %273, %272
  store i32 %274, i32* %4, align 4
  %275 = load i32, i32* %11, align 4
  %276 = load i8*, i8** %3, align 8
  %277 = sext i32 %275 to i64
  %278 = getelementptr inbounds i8, i8* %276, i64 %277
  store i8* %278, i8** %3, align 8
  %279 = load i32, i32* %5, align 4
  %280 = add nsw i32 %279, 1
  store i32 %280, i32* %5, align 4
  br label %18

281:                                              ; preds = %261, %258
  br label %282

282:                                              ; preds = %281, %231
  br label %283

283:                                              ; preds = %282, %118
  br label %284

284:                                              ; preds = %283, %117
  %285 = load i8*, i8** %3, align 8
  %286 = getelementptr inbounds i8, i8* %285, i32 1
  store i8* %286, i8** %3, align 8
  %287 = load i32, i32* %4, align 4
  %288 = add nsw i32 %287, 1
  store i32 %288, i32* %4, align 4
  %289 = load i32, i32* %5, align 4
  %290 = add nsw i32 %289, 1
  store i32 %290, i32* %5, align 4
  br label %18

291:                                              ; preds = %220, %206, %59, %40, %24
  %292 = load i32, i32* %4, align 4
  store i32 %292, i32* %2, align 4
  br label %293

293:                                              ; preds = %291, %75, %14
  %294 = load i32, i32* %2, align 4
  ret i32 %294
}

declare dso_local i32 @get_notword_utf8(i8*) #1

declare dso_local i32 @sigil_word_detect(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
