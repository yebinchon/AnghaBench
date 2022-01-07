; ModuleID = '/home/carl/AnghaBench/git/extr_range-diff.c_get_correspondences.c'
source_filename = "/home/carl/AnghaBench/git/extr_range-diff.c_get_correspondences.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.string_list = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.patch_util* }
%struct.patch_util = type { i32, i32, i32 }

@COST_MAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.string_list*, %struct.string_list*, i32)* @get_correspondences to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @get_correspondences(%struct.string_list* %0, %struct.string_list* %1, i32 %2) #0 {
  %4 = alloca %struct.string_list*, align 8
  %5 = alloca %struct.string_list*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.patch_util*, align 8
  %15 = alloca %struct.patch_util*, align 8
  %16 = alloca %struct.patch_util*, align 8
  %17 = alloca %struct.patch_util*, align 8
  %18 = alloca %struct.patch_util*, align 8
  store %struct.string_list* %0, %struct.string_list** %4, align 8
  store %struct.string_list* %1, %struct.string_list** %5, align 8
  store i32 %2, i32* %6, align 4
  %19 = load %struct.string_list*, %struct.string_list** %4, align 8
  %20 = getelementptr inbounds %struct.string_list, %struct.string_list* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load %struct.string_list*, %struct.string_list** %5, align 8
  %23 = getelementptr inbounds %struct.string_list, %struct.string_list* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = add nsw i32 %21, %24
  store i32 %25, i32* %7, align 4
  %26 = load i32*, i32** %8, align 8
  %27 = load i32, i32* %7, align 4
  %28 = load i32, i32* %7, align 4
  %29 = call i32 @st_mult(i32 %27, i32 %28)
  %30 = call i32 @ALLOC_ARRAY(i32* %26, i32 %29)
  %31 = load i32*, i32** %10, align 8
  %32 = load i32, i32* %7, align 4
  %33 = call i32 @ALLOC_ARRAY(i32* %31, i32 %32)
  %34 = load i32*, i32** %11, align 8
  %35 = load i32, i32* %7, align 4
  %36 = call i32 @ALLOC_ARRAY(i32* %34, i32 %35)
  store i32 0, i32* %12, align 4
  br label %37

37:                                               ; preds = %144, %3
  %38 = load i32, i32* %12, align 4
  %39 = load %struct.string_list*, %struct.string_list** %4, align 8
  %40 = getelementptr inbounds %struct.string_list, %struct.string_list* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = icmp slt i32 %38, %41
  br i1 %42, label %43, label %147

43:                                               ; preds = %37
  %44 = load %struct.string_list*, %struct.string_list** %4, align 8
  %45 = getelementptr inbounds %struct.string_list, %struct.string_list* %44, i32 0, i32 1
  %46 = load %struct.TYPE_2__*, %struct.TYPE_2__** %45, align 8
  %47 = load i32, i32* %12, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i64 %48
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 0
  %51 = load %struct.patch_util*, %struct.patch_util** %50, align 8
  store %struct.patch_util* %51, %struct.patch_util** %14, align 8
  store i32 0, i32* %13, align 4
  br label %52

52:                                               ; preds = %104, %43
  %53 = load i32, i32* %13, align 4
  %54 = load %struct.string_list*, %struct.string_list** %5, align 8
  %55 = getelementptr inbounds %struct.string_list, %struct.string_list* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = icmp slt i32 %53, %56
  br i1 %57, label %58, label %107

58:                                               ; preds = %52
  %59 = load %struct.string_list*, %struct.string_list** %5, align 8
  %60 = getelementptr inbounds %struct.string_list, %struct.string_list* %59, i32 0, i32 1
  %61 = load %struct.TYPE_2__*, %struct.TYPE_2__** %60, align 8
  %62 = load i32, i32* %13, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i64 %63
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 0
  %66 = load %struct.patch_util*, %struct.patch_util** %65, align 8
  store %struct.patch_util* %66, %struct.patch_util** %15, align 8
  %67 = load %struct.patch_util*, %struct.patch_util** %14, align 8
  %68 = getelementptr inbounds %struct.patch_util, %struct.patch_util* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = load i32, i32* %13, align 4
  %71 = icmp eq i32 %69, %70
  br i1 %71, label %72, label %73

72:                                               ; preds = %58
  store i32 0, i32* %9, align 4
  br label %94

73:                                               ; preds = %58
  %74 = load %struct.patch_util*, %struct.patch_util** %14, align 8
  %75 = getelementptr inbounds %struct.patch_util, %struct.patch_util* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = icmp slt i32 %76, 0
  br i1 %77, label %78, label %91

78:                                               ; preds = %73
  %79 = load %struct.patch_util*, %struct.patch_util** %15, align 8
  %80 = getelementptr inbounds %struct.patch_util, %struct.patch_util* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = icmp slt i32 %81, 0
  br i1 %82, label %83, label %91

83:                                               ; preds = %78
  %84 = load %struct.patch_util*, %struct.patch_util** %14, align 8
  %85 = getelementptr inbounds %struct.patch_util, %struct.patch_util* %84, i32 0, i32 2
  %86 = load i32, i32* %85, align 4
  %87 = load %struct.patch_util*, %struct.patch_util** %15, align 8
  %88 = getelementptr inbounds %struct.patch_util, %struct.patch_util* %87, i32 0, i32 2
  %89 = load i32, i32* %88, align 4
  %90 = call i32 @diffsize(i32 %86, i32 %89)
  store i32 %90, i32* %9, align 4
  br label %93

91:                                               ; preds = %78, %73
  %92 = load i32, i32* @COST_MAX, align 4
  store i32 %92, i32* %9, align 4
  br label %93

93:                                               ; preds = %91, %83
  br label %94

94:                                               ; preds = %93, %72
  %95 = load i32, i32* %9, align 4
  %96 = load i32*, i32** %8, align 8
  %97 = load i32, i32* %12, align 4
  %98 = load i32, i32* %7, align 4
  %99 = load i32, i32* %13, align 4
  %100 = mul nsw i32 %98, %99
  %101 = add nsw i32 %97, %100
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds i32, i32* %96, i64 %102
  store i32 %95, i32* %103, align 4
  br label %104

104:                                              ; preds = %94
  %105 = load i32, i32* %13, align 4
  %106 = add nsw i32 %105, 1
  store i32 %106, i32* %13, align 4
  br label %52

107:                                              ; preds = %52
  %108 = load %struct.patch_util*, %struct.patch_util** %14, align 8
  %109 = getelementptr inbounds %struct.patch_util, %struct.patch_util* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = icmp slt i32 %110, 0
  br i1 %111, label %112, label %119

112:                                              ; preds = %107
  %113 = load %struct.patch_util*, %struct.patch_util** %14, align 8
  %114 = getelementptr inbounds %struct.patch_util, %struct.patch_util* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 4
  %116 = load i32, i32* %6, align 4
  %117 = mul nsw i32 %115, %116
  %118 = sdiv i32 %117, 100
  br label %121

119:                                              ; preds = %107
  %120 = load i32, i32* @COST_MAX, align 4
  br label %121

121:                                              ; preds = %119, %112
  %122 = phi i32 [ %118, %112 ], [ %120, %119 ]
  store i32 %122, i32* %9, align 4
  %123 = load %struct.string_list*, %struct.string_list** %5, align 8
  %124 = getelementptr inbounds %struct.string_list, %struct.string_list* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 8
  store i32 %125, i32* %13, align 4
  br label %126

126:                                              ; preds = %140, %121
  %127 = load i32, i32* %13, align 4
  %128 = load i32, i32* %7, align 4
  %129 = icmp slt i32 %127, %128
  br i1 %129, label %130, label %143

130:                                              ; preds = %126
  %131 = load i32, i32* %9, align 4
  %132 = load i32*, i32** %8, align 8
  %133 = load i32, i32* %12, align 4
  %134 = load i32, i32* %7, align 4
  %135 = load i32, i32* %13, align 4
  %136 = mul nsw i32 %134, %135
  %137 = add nsw i32 %133, %136
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds i32, i32* %132, i64 %138
  store i32 %131, i32* %139, align 4
  br label %140

140:                                              ; preds = %130
  %141 = load i32, i32* %13, align 4
  %142 = add nsw i32 %141, 1
  store i32 %142, i32* %13, align 4
  br label %126

143:                                              ; preds = %126
  br label %144

144:                                              ; preds = %143
  %145 = load i32, i32* %12, align 4
  %146 = add nsw i32 %145, 1
  store i32 %146, i32* %12, align 4
  br label %37

147:                                              ; preds = %37
  store i32 0, i32* %13, align 4
  br label %148

148:                                              ; preds = %199, %147
  %149 = load i32, i32* %13, align 4
  %150 = load %struct.string_list*, %struct.string_list** %5, align 8
  %151 = getelementptr inbounds %struct.string_list, %struct.string_list* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 8
  %153 = icmp slt i32 %149, %152
  br i1 %153, label %154, label %202

154:                                              ; preds = %148
  %155 = load %struct.string_list*, %struct.string_list** %5, align 8
  %156 = getelementptr inbounds %struct.string_list, %struct.string_list* %155, i32 0, i32 1
  %157 = load %struct.TYPE_2__*, %struct.TYPE_2__** %156, align 8
  %158 = load i32, i32* %13, align 4
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %157, i64 %159
  %161 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %160, i32 0, i32 0
  %162 = load %struct.patch_util*, %struct.patch_util** %161, align 8
  store %struct.patch_util* %162, %struct.patch_util** %16, align 8
  %163 = load %struct.patch_util*, %struct.patch_util** %16, align 8
  %164 = getelementptr inbounds %struct.patch_util, %struct.patch_util* %163, i32 0, i32 0
  %165 = load i32, i32* %164, align 4
  %166 = icmp slt i32 %165, 0
  br i1 %166, label %167, label %174

167:                                              ; preds = %154
  %168 = load %struct.patch_util*, %struct.patch_util** %16, align 8
  %169 = getelementptr inbounds %struct.patch_util, %struct.patch_util* %168, i32 0, i32 1
  %170 = load i32, i32* %169, align 4
  %171 = load i32, i32* %6, align 4
  %172 = mul nsw i32 %170, %171
  %173 = sdiv i32 %172, 100
  br label %176

174:                                              ; preds = %154
  %175 = load i32, i32* @COST_MAX, align 4
  br label %176

176:                                              ; preds = %174, %167
  %177 = phi i32 [ %173, %167 ], [ %175, %174 ]
  store i32 %177, i32* %9, align 4
  %178 = load %struct.string_list*, %struct.string_list** %4, align 8
  %179 = getelementptr inbounds %struct.string_list, %struct.string_list* %178, i32 0, i32 0
  %180 = load i32, i32* %179, align 8
  store i32 %180, i32* %12, align 4
  br label %181

181:                                              ; preds = %195, %176
  %182 = load i32, i32* %12, align 4
  %183 = load i32, i32* %7, align 4
  %184 = icmp slt i32 %182, %183
  br i1 %184, label %185, label %198

185:                                              ; preds = %181
  %186 = load i32, i32* %9, align 4
  %187 = load i32*, i32** %8, align 8
  %188 = load i32, i32* %12, align 4
  %189 = load i32, i32* %7, align 4
  %190 = load i32, i32* %13, align 4
  %191 = mul nsw i32 %189, %190
  %192 = add nsw i32 %188, %191
  %193 = sext i32 %192 to i64
  %194 = getelementptr inbounds i32, i32* %187, i64 %193
  store i32 %186, i32* %194, align 4
  br label %195

195:                                              ; preds = %185
  %196 = load i32, i32* %12, align 4
  %197 = add nsw i32 %196, 1
  store i32 %197, i32* %12, align 4
  br label %181

198:                                              ; preds = %181
  br label %199

199:                                              ; preds = %198
  %200 = load i32, i32* %13, align 4
  %201 = add nsw i32 %200, 1
  store i32 %201, i32* %13, align 4
  br label %148

202:                                              ; preds = %148
  %203 = load %struct.string_list*, %struct.string_list** %4, align 8
  %204 = getelementptr inbounds %struct.string_list, %struct.string_list* %203, i32 0, i32 0
  %205 = load i32, i32* %204, align 8
  store i32 %205, i32* %12, align 4
  br label %206

206:                                              ; preds = %231, %202
  %207 = load i32, i32* %12, align 4
  %208 = load i32, i32* %7, align 4
  %209 = icmp slt i32 %207, %208
  br i1 %209, label %210, label %234

210:                                              ; preds = %206
  %211 = load %struct.string_list*, %struct.string_list** %5, align 8
  %212 = getelementptr inbounds %struct.string_list, %struct.string_list* %211, i32 0, i32 0
  %213 = load i32, i32* %212, align 8
  store i32 %213, i32* %13, align 4
  br label %214

214:                                              ; preds = %227, %210
  %215 = load i32, i32* %13, align 4
  %216 = load i32, i32* %7, align 4
  %217 = icmp slt i32 %215, %216
  br i1 %217, label %218, label %230

218:                                              ; preds = %214
  %219 = load i32*, i32** %8, align 8
  %220 = load i32, i32* %12, align 4
  %221 = load i32, i32* %7, align 4
  %222 = load i32, i32* %13, align 4
  %223 = mul nsw i32 %221, %222
  %224 = add nsw i32 %220, %223
  %225 = sext i32 %224 to i64
  %226 = getelementptr inbounds i32, i32* %219, i64 %225
  store i32 0, i32* %226, align 4
  br label %227

227:                                              ; preds = %218
  %228 = load i32, i32* %13, align 4
  %229 = add nsw i32 %228, 1
  store i32 %229, i32* %13, align 4
  br label %214

230:                                              ; preds = %214
  br label %231

231:                                              ; preds = %230
  %232 = load i32, i32* %12, align 4
  %233 = add nsw i32 %232, 1
  store i32 %233, i32* %12, align 4
  br label %206

234:                                              ; preds = %206
  %235 = load i32, i32* %7, align 4
  %236 = load i32, i32* %7, align 4
  %237 = load i32*, i32** %8, align 8
  %238 = load i32*, i32** %10, align 8
  %239 = load i32*, i32** %11, align 8
  %240 = call i32 @compute_assignment(i32 %235, i32 %236, i32* %237, i32* %238, i32* %239)
  store i32 0, i32* %12, align 4
  br label %241

241:                                              ; preds = %296, %234
  %242 = load i32, i32* %12, align 4
  %243 = load %struct.string_list*, %struct.string_list** %4, align 8
  %244 = getelementptr inbounds %struct.string_list, %struct.string_list* %243, i32 0, i32 0
  %245 = load i32, i32* %244, align 8
  %246 = icmp slt i32 %242, %245
  br i1 %246, label %247, label %299

247:                                              ; preds = %241
  %248 = load i32*, i32** %10, align 8
  %249 = load i32, i32* %12, align 4
  %250 = sext i32 %249 to i64
  %251 = getelementptr inbounds i32, i32* %248, i64 %250
  %252 = load i32, i32* %251, align 4
  %253 = icmp sge i32 %252, 0
  br i1 %253, label %254, label %295

254:                                              ; preds = %247
  %255 = load i32*, i32** %10, align 8
  %256 = load i32, i32* %12, align 4
  %257 = sext i32 %256 to i64
  %258 = getelementptr inbounds i32, i32* %255, i64 %257
  %259 = load i32, i32* %258, align 4
  %260 = load %struct.string_list*, %struct.string_list** %5, align 8
  %261 = getelementptr inbounds %struct.string_list, %struct.string_list* %260, i32 0, i32 0
  %262 = load i32, i32* %261, align 8
  %263 = icmp slt i32 %259, %262
  br i1 %263, label %264, label %295

264:                                              ; preds = %254
  %265 = load %struct.string_list*, %struct.string_list** %4, align 8
  %266 = getelementptr inbounds %struct.string_list, %struct.string_list* %265, i32 0, i32 1
  %267 = load %struct.TYPE_2__*, %struct.TYPE_2__** %266, align 8
  %268 = load i32, i32* %12, align 4
  %269 = sext i32 %268 to i64
  %270 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %267, i64 %269
  %271 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %270, i32 0, i32 0
  %272 = load %struct.patch_util*, %struct.patch_util** %271, align 8
  store %struct.patch_util* %272, %struct.patch_util** %17, align 8
  %273 = load %struct.string_list*, %struct.string_list** %5, align 8
  %274 = getelementptr inbounds %struct.string_list, %struct.string_list* %273, i32 0, i32 1
  %275 = load %struct.TYPE_2__*, %struct.TYPE_2__** %274, align 8
  %276 = load i32*, i32** %10, align 8
  %277 = load i32, i32* %12, align 4
  %278 = sext i32 %277 to i64
  %279 = getelementptr inbounds i32, i32* %276, i64 %278
  %280 = load i32, i32* %279, align 4
  %281 = sext i32 %280 to i64
  %282 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %275, i64 %281
  %283 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %282, i32 0, i32 0
  %284 = load %struct.patch_util*, %struct.patch_util** %283, align 8
  store %struct.patch_util* %284, %struct.patch_util** %18, align 8
  %285 = load i32*, i32** %10, align 8
  %286 = load i32, i32* %12, align 4
  %287 = sext i32 %286 to i64
  %288 = getelementptr inbounds i32, i32* %285, i64 %287
  %289 = load i32, i32* %288, align 4
  %290 = load %struct.patch_util*, %struct.patch_util** %17, align 8
  %291 = getelementptr inbounds %struct.patch_util, %struct.patch_util* %290, i32 0, i32 0
  store i32 %289, i32* %291, align 4
  %292 = load i32, i32* %12, align 4
  %293 = load %struct.patch_util*, %struct.patch_util** %18, align 8
  %294 = getelementptr inbounds %struct.patch_util, %struct.patch_util* %293, i32 0, i32 0
  store i32 %292, i32* %294, align 4
  br label %295

295:                                              ; preds = %264, %254, %247
  br label %296

296:                                              ; preds = %295
  %297 = load i32, i32* %12, align 4
  %298 = add nsw i32 %297, 1
  store i32 %298, i32* %12, align 4
  br label %241

299:                                              ; preds = %241
  %300 = load i32*, i32** %8, align 8
  %301 = call i32 @free(i32* %300)
  %302 = load i32*, i32** %10, align 8
  %303 = call i32 @free(i32* %302)
  %304 = load i32*, i32** %11, align 8
  %305 = call i32 @free(i32* %304)
  ret void
}

declare dso_local i32 @ALLOC_ARRAY(i32*, i32) #1

declare dso_local i32 @st_mult(i32, i32) #1

declare dso_local i32 @diffsize(i32, i32) #1

declare dso_local i32 @compute_assignment(i32, i32, i32*, i32*, i32*) #1

declare dso_local i32 @free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
