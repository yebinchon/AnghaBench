; ModuleID = '/home/carl/AnghaBench/kphp-kdb/hints/extr_hints-data.c_sort_user_objects.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/hints/extr_hints-data.c_sort_user_objects.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@bad_requests = common dso_local global i32 0, align 4
@NOAIO = common dso_local global i32 0, align 4
@MAX_CNT = common dso_local global i32 0, align 4
@objects_to_sort = common dso_local global i32* null, align 8
@heap = common dso_local global i32* null, align 8
@weight = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sort_user_objects(i32 %0, i32 %1, i64* %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  store i32 %0, i32* %8, align 4
  store i32 %1, i32* %9, align 4
  store i64* %2, i64** %10, align 8
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  %23 = load i32, i32* %8, align 4
  %24 = call i32 @check_user_id(i32 %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %6
  %27 = load i32, i32* %12, align 4
  %28 = call i32 @check_rating_num(i32 %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %33, label %30

30:                                               ; preds = %26, %6
  %31 = load i32, i32* @bad_requests, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* @bad_requests, align 4
  store i32 -1, i32* %7, align 4
  br label %299

33:                                               ; preds = %26
  %34 = load i32, i32* %8, align 4
  %35 = call i32 @get_local_user_id(i32 %34)
  store i32 %35, i32* %14, align 4
  %36 = load i32, i32* %14, align 4
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %33
  store i32 0, i32* %7, align 4
  br label %299

39:                                               ; preds = %33
  %40 = load i32, i32* %14, align 4
  %41 = icmp sgt i32 %40, 0
  %42 = zext i1 %41 to i32
  %43 = call i32 @assert(i32 %42)
  %44 = load i32, i32* %8, align 4
  %45 = call i32* @conv_user_id(i32 %44)
  store i32* %45, i32** %15, align 8
  %46 = load i32*, i32** %15, align 8
  %47 = icmp ne i32* %46, null
  %48 = zext i1 %47 to i32
  %49 = call i32 @assert(i32 %48)
  %50 = load i32*, i32** %15, align 8
  %51 = load i32, i32* %14, align 4
  %52 = load i32, i32* @NOAIO, align 4
  %53 = call i32* @load_user_metafile(i32* %50, i32 %51, i32 %52)
  %54 = icmp eq i32* %53, null
  br i1 %54, label %55, label %56

55:                                               ; preds = %39
  store i32 -2, i32* %7, align 4
  br label %299

56:                                               ; preds = %39
  %57 = load i64*, i64** %10, align 8
  %58 = icmp ne i64* %57, null
  %59 = zext i1 %58 to i32
  %60 = call i32 @assert(i32 %59)
  %61 = load i32, i32* %9, align 4
  %62 = load i32, i32* @MAX_CNT, align 4
  %63 = icmp sgt i32 %61, %62
  br i1 %63, label %64, label %66

64:                                               ; preds = %56
  %65 = load i32, i32* @MAX_CNT, align 4
  store i32 %65, i32* %9, align 4
  br label %66

66:                                               ; preds = %64, %56
  %67 = load i32, i32* %11, align 4
  %68 = load i32, i32* @MAX_CNT, align 4
  %69 = icmp sgt i32 %67, %68
  br i1 %69, label %70, label %72

70:                                               ; preds = %66
  %71 = load i32, i32* @MAX_CNT, align 4
  store i32 %71, i32* %11, align 4
  br label %72

72:                                               ; preds = %70, %66
  %73 = load i32, i32* %11, align 4
  %74 = icmp slt i32 %73, 0
  br i1 %74, label %75, label %76

75:                                               ; preds = %72
  store i32 0, i32* %11, align 4
  br label %76

76:                                               ; preds = %75, %72
  store i32 0, i32* %20, align 4
  store i32 0, i32* %16, align 4
  br label %77

77:                                               ; preds = %99, %76
  %78 = load i32, i32* %16, align 4
  %79 = load i32, i32* %9, align 4
  %80 = icmp slt i32 %78, %79
  br i1 %80, label %81, label %102

81:                                               ; preds = %77
  %82 = load i32*, i32** %15, align 8
  %83 = load i64*, i64** %10, align 8
  %84 = load i32, i32* %16, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds i64, i64* %83, i64 %85
  %87 = load i64, i64* %86, align 8
  %88 = call i32 @user_get_object_local_id_type_id(i32* %82, i64 %87)
  store i32 %88, i32* %21, align 4
  %89 = load i32, i32* %21, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %98

91:                                               ; preds = %81
  %92 = load i32, i32* %21, align 4
  %93 = load i32*, i32** @objects_to_sort, align 8
  %94 = load i32, i32* %20, align 4
  %95 = add nsw i32 %94, 1
  store i32 %95, i32* %20, align 4
  %96 = sext i32 %94 to i64
  %97 = getelementptr inbounds i32, i32* %93, i64 %96
  store i32 %92, i32* %97, align 4
  br label %98

98:                                               ; preds = %91, %81
  br label %99

99:                                               ; preds = %98
  %100 = load i32, i32* %16, align 4
  %101 = add nsw i32 %100, 1
  store i32 %101, i32* %16, align 4
  br label %77

102:                                              ; preds = %77
  store i32 0, i32* %22, align 4
  %103 = load i32, i32* %11, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %216

105:                                              ; preds = %102
  store i32 0, i32* %16, align 4
  br label %106

106:                                              ; preds = %212, %105
  %107 = load i32, i32* %16, align 4
  %108 = load i32, i32* %20, align 4
  %109 = icmp slt i32 %107, %108
  br i1 %109, label %110, label %215

110:                                              ; preds = %106
  %111 = load i32, i32* %13, align 4
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %124

113:                                              ; preds = %110
  %114 = load i32*, i32** @objects_to_sort, align 8
  %115 = load i32, i32* %16, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds i32, i32* %114, i64 %116
  %118 = load i32, i32* %117, align 4
  %119 = load i32*, i32** @heap, align 8
  %120 = load i32, i32* %22, align 4
  %121 = add nsw i32 %120, 1
  store i32 %121, i32* %22, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds i32, i32* %119, i64 %122
  store i32 %118, i32* %123, align 4
  br label %211

124:                                              ; preds = %110
  %125 = load i32, i32* %22, align 4
  %126 = load i32, i32* %11, align 4
  %127 = icmp slt i32 %125, %126
  br i1 %127, label %128, label %183

128:                                              ; preds = %124
  %129 = load i32*, i32** @objects_to_sort, align 8
  %130 = load i32, i32* %16, align 4
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds i32, i32* %129, i64 %131
  %133 = load i32, i32* %132, align 4
  %134 = load i32*, i32** @heap, align 8
  %135 = load i32, i32* %22, align 4
  %136 = add nsw i32 %135, 1
  store i32 %136, i32* %22, align 4
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds i32, i32* %134, i64 %137
  store i32 %133, i32* %138, align 4
  %139 = load i32, i32* %22, align 4
  store i32 %139, i32* %17, align 4
  br label %140

140:                                              ; preds = %161, %128
  %141 = load i32, i32* %17, align 4
  %142 = icmp sgt i32 %141, 1
  br i1 %142, label %143, label %159

143:                                              ; preds = %140
  %144 = load i32*, i32** %15, align 8
  %145 = load i32*, i32** @heap, align 8
  %146 = load i32, i32* %17, align 4
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds i32, i32* %145, i64 %147
  %149 = load i32, i32* %148, align 4
  %150 = load i32*, i32** @heap, align 8
  %151 = load i32, i32* %17, align 4
  %152 = sdiv i32 %151, 2
  store i32 %152, i32* %18, align 4
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds i32, i32* %150, i64 %153
  %155 = load i32, i32* %154, align 4
  %156 = load i32, i32* %12, align 4
  %157 = call i64 @object_cmp(i32* %144, i32 %149, i32 %155, i32 %156)
  %158 = icmp slt i64 %157, 0
  br label %159

159:                                              ; preds = %143, %140
  %160 = phi i1 [ false, %140 ], [ %158, %143 ]
  br i1 %160, label %161, label %182

161:                                              ; preds = %159
  %162 = load i32*, i32** @heap, align 8
  %163 = load i32, i32* %17, align 4
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds i32, i32* %162, i64 %164
  %166 = load i32, i32* %165, align 4
  store i32 %166, i32* %19, align 4
  %167 = load i32*, i32** @heap, align 8
  %168 = load i32, i32* %18, align 4
  %169 = sext i32 %168 to i64
  %170 = getelementptr inbounds i32, i32* %167, i64 %169
  %171 = load i32, i32* %170, align 4
  %172 = load i32*, i32** @heap, align 8
  %173 = load i32, i32* %17, align 4
  %174 = sext i32 %173 to i64
  %175 = getelementptr inbounds i32, i32* %172, i64 %174
  store i32 %171, i32* %175, align 4
  %176 = load i32, i32* %19, align 4
  %177 = load i32*, i32** @heap, align 8
  %178 = load i32, i32* %18, align 4
  %179 = sext i32 %178 to i64
  %180 = getelementptr inbounds i32, i32* %177, i64 %179
  store i32 %176, i32* %180, align 4
  %181 = load i32, i32* %18, align 4
  store i32 %181, i32* %17, align 4
  br label %140

182:                                              ; preds = %159
  br label %210

183:                                              ; preds = %124
  %184 = load i32*, i32** %15, align 8
  %185 = load i32*, i32** @heap, align 8
  %186 = getelementptr inbounds i32, i32* %185, i64 1
  %187 = load i32, i32* %186, align 4
  %188 = load i32*, i32** @objects_to_sort, align 8
  %189 = load i32, i32* %16, align 4
  %190 = sext i32 %189 to i64
  %191 = getelementptr inbounds i32, i32* %188, i64 %190
  %192 = load i32, i32* %191, align 4
  %193 = load i32, i32* %12, align 4
  %194 = call i64 @object_cmp(i32* %184, i32 %187, i32 %192, i32 %193)
  %195 = icmp slt i64 %194, 0
  br i1 %195, label %196, label %209

196:                                              ; preds = %183
  %197 = load i32*, i32** @objects_to_sort, align 8
  %198 = load i32, i32* %16, align 4
  %199 = sext i32 %198 to i64
  %200 = getelementptr inbounds i32, i32* %197, i64 %199
  %201 = load i32, i32* %200, align 4
  %202 = load i32*, i32** @heap, align 8
  %203 = getelementptr inbounds i32, i32* %202, i64 1
  store i32 %201, i32* %203, align 4
  %204 = load i32*, i32** %15, align 8
  %205 = load i32*, i32** @heap, align 8
  %206 = load i32, i32* %22, align 4
  %207 = load i32, i32* %12, align 4
  %208 = call i32 @fix_down(i32* %204, i32* %205, i32 %206, i32 %207)
  br label %209

209:                                              ; preds = %196, %183
  br label %210

210:                                              ; preds = %209, %182
  br label %211

211:                                              ; preds = %210, %113
  br label %212

212:                                              ; preds = %211
  %213 = load i32, i32* %16, align 4
  %214 = add nsw i32 %213, 1
  store i32 %214, i32* %16, align 4
  br label %106

215:                                              ; preds = %106
  br label %216

216:                                              ; preds = %215, %102
  %217 = load i32, i32* %13, align 4
  %218 = icmp ne i32 %217, 0
  br i1 %218, label %219, label %249

219:                                              ; preds = %216
  store i32 1, i32* %16, align 4
  br label %220

220:                                              ; preds = %238, %219
  %221 = load i32, i32* %16, align 4
  %222 = load i32, i32* %22, align 4
  %223 = icmp sle i32 %221, %222
  br i1 %223, label %224, label %241

224:                                              ; preds = %220
  %225 = load i32*, i32** %15, align 8
  %226 = load i32*, i32** @heap, align 8
  %227 = load i32, i32* %16, align 4
  %228 = sext i32 %227 to i64
  %229 = getelementptr inbounds i32, i32* %226, i64 %228
  %230 = load i32, i32* %229, align 4
  %231 = load i32, i32* %12, align 4
  %232 = call i32 @user_get_object_weight(i32* %225, i32 %230, i32 %231)
  %233 = load i32*, i32** @weight, align 8
  %234 = load i32, i32* %16, align 4
  %235 = sub nsw i32 %234, 1
  %236 = sext i32 %235 to i64
  %237 = getelementptr inbounds i32, i32* %233, i64 %236
  store i32 %232, i32* %237, align 4
  br label %238

238:                                              ; preds = %224
  %239 = load i32, i32* %16, align 4
  %240 = add nsw i32 %239, 1
  store i32 %240, i32* %16, align 4
  br label %220

241:                                              ; preds = %220
  %242 = load i32, i32* %11, align 4
  %243 = load i32, i32* %22, align 4
  %244 = load i32*, i32** @heap, align 8
  %245 = getelementptr inbounds i32, i32* %244, i64 1
  %246 = load i32*, i32** @weight, align 8
  %247 = load i32*, i32** @objects_to_sort, align 8
  %248 = call i32 @get_random(i32 %242, i32 %243, i32* %245, i32* %246, i32* %247)
  store i32 %248, i32* %20, align 4
  br label %277

249:                                              ; preds = %216
  %250 = load i32, i32* %22, align 4
  store i32 %250, i32* %20, align 4
  br label %251

251:                                              ; preds = %254, %249
  %252 = load i32, i32* %22, align 4
  %253 = icmp ne i32 %252, 0
  br i1 %253, label %254, label %276

254:                                              ; preds = %251
  %255 = load i32*, i32** @heap, align 8
  %256 = getelementptr inbounds i32, i32* %255, i64 1
  %257 = load i32, i32* %256, align 4
  %258 = load i32*, i32** @objects_to_sort, align 8
  %259 = load i32, i32* %22, align 4
  %260 = sub nsw i32 %259, 1
  %261 = sext i32 %260 to i64
  %262 = getelementptr inbounds i32, i32* %258, i64 %261
  store i32 %257, i32* %262, align 4
  %263 = load i32*, i32** @heap, align 8
  %264 = load i32, i32* %22, align 4
  %265 = add nsw i32 %264, -1
  store i32 %265, i32* %22, align 4
  %266 = sext i32 %264 to i64
  %267 = getelementptr inbounds i32, i32* %263, i64 %266
  %268 = load i32, i32* %267, align 4
  %269 = load i32*, i32** @heap, align 8
  %270 = getelementptr inbounds i32, i32* %269, i64 1
  store i32 %268, i32* %270, align 4
  %271 = load i32*, i32** %15, align 8
  %272 = load i32*, i32** @heap, align 8
  %273 = load i32, i32* %22, align 4
  %274 = load i32, i32* %12, align 4
  %275 = call i32 @fix_down(i32* %271, i32* %272, i32 %273, i32 %274)
  br label %251

276:                                              ; preds = %251
  br label %277

277:                                              ; preds = %276, %241
  store i32 0, i32* %16, align 4
  br label %278

278:                                              ; preds = %294, %277
  %279 = load i32, i32* %16, align 4
  %280 = load i32, i32* %20, align 4
  %281 = icmp slt i32 %279, %280
  br i1 %281, label %282, label %297

282:                                              ; preds = %278
  %283 = load i32*, i32** %15, align 8
  %284 = load i32*, i32** @objects_to_sort, align 8
  %285 = load i32, i32* %16, align 4
  %286 = sext i32 %285 to i64
  %287 = getelementptr inbounds i32, i32* %284, i64 %286
  %288 = load i32, i32* %287, align 4
  %289 = call i64 @user_get_object_type_id(i32* %283, i32 %288)
  %290 = load i64*, i64** %10, align 8
  %291 = load i32, i32* %16, align 4
  %292 = sext i32 %291 to i64
  %293 = getelementptr inbounds i64, i64* %290, i64 %292
  store i64 %289, i64* %293, align 8
  br label %294

294:                                              ; preds = %282
  %295 = load i32, i32* %16, align 4
  %296 = add nsw i32 %295, 1
  store i32 %296, i32* %16, align 4
  br label %278

297:                                              ; preds = %278
  %298 = load i32, i32* %20, align 4
  store i32 %298, i32* %7, align 4
  br label %299

299:                                              ; preds = %297, %55, %38, %30
  %300 = load i32, i32* %7, align 4
  ret i32 %300
}

declare dso_local i32 @check_user_id(i32) #1

declare dso_local i32 @check_rating_num(i32) #1

declare dso_local i32 @get_local_user_id(i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32* @conv_user_id(i32) #1

declare dso_local i32* @load_user_metafile(i32*, i32, i32) #1

declare dso_local i32 @user_get_object_local_id_type_id(i32*, i64) #1

declare dso_local i64 @object_cmp(i32*, i32, i32, i32) #1

declare dso_local i32 @fix_down(i32*, i32*, i32, i32) #1

declare dso_local i32 @user_get_object_weight(i32*, i32, i32) #1

declare dso_local i32 @get_random(i32, i32, i32*, i32*, i32*) #1

declare dso_local i64 @user_get_object_type_id(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
