; ModuleID = '/home/carl/AnghaBench/kphp-kdb/targ/extr_targ-search.c_store_res_std.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/targ/extr_targ-search.c_store_res_std.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@R_tot = common dso_local global i32 0, align 4
@R_position = common dso_local global i32 0, align 4
@Q_limit = common dso_local global i32 0, align 4
@R = common dso_local global i64* null, align 8
@Q_order = common dso_local global i32 0, align 4
@R_cnt = common dso_local global i32 0, align 4
@UserRate = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @store_res_std(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %6 = load i32, i32* @R_tot, align 4
  %7 = add nsw i32 %6, 1
  store i32 %7, i32* @R_tot, align 4
  %8 = load i32, i32* @R_position, align 4
  %9 = icmp sgt i32 %8, 0
  br i1 %9, label %10, label %32

10:                                               ; preds = %1
  %11 = load i32, i32* %2, align 4
  %12 = load i32, i32* @R_position, align 4
  %13 = call i32 @user_ad_price(i32 %11, i32 %12)
  store i32 %13, i32* %5, align 4
  %14 = load i32, i32* %5, align 4
  %15 = load i32, i32* @Q_limit, align 4
  %16 = icmp sge i32 %14, %15
  br i1 %16, label %17, label %20

17:                                               ; preds = %10
  %18 = load i32, i32* @Q_limit, align 4
  %19 = sub nsw i32 %18, 1
  store i32 %19, i32* %5, align 4
  br label %25

20:                                               ; preds = %10
  %21 = load i32, i32* %5, align 4
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %20
  store i32 0, i32* %5, align 4
  br label %24

24:                                               ; preds = %23, %20
  br label %25

25:                                               ; preds = %24, %17
  %26 = load i64*, i64** @R, align 8
  %27 = load i32, i32* %5, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i64, i64* %26, i64 %28
  %30 = load i64, i64* %29, align 8
  %31 = add i64 %30, 1
  store i64 %31, i64* %29, align 8
  br label %314

32:                                               ; preds = %1
  %33 = load i32, i32* @R_position, align 4
  %34 = icmp eq i32 %33, -2147483648
  br i1 %34, label %35, label %36

35:                                               ; preds = %32
  br label %314

36:                                               ; preds = %32
  br label %37

37:                                               ; preds = %36
  %38 = load i32, i32* @Q_limit, align 4
  %39 = icmp sle i32 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %37
  br label %314

41:                                               ; preds = %37
  %42 = load i32, i32* @Q_order, align 4
  switch i32 %42, label %44 [
    i32 0, label %43
    i32 1, label %43
    i32 -1, label %57
    i32 -2, label %70
    i32 2, label %192
  ]

43:                                               ; preds = %41, %41
  br label %44

44:                                               ; preds = %41, %43
  %45 = load i32, i32* @R_cnt, align 4
  %46 = load i32, i32* @Q_limit, align 4
  %47 = icmp slt i32 %45, %46
  br i1 %47, label %48, label %56

48:                                               ; preds = %44
  %49 = load i32, i32* %2, align 4
  %50 = sext i32 %49 to i64
  %51 = load i64*, i64** @R, align 8
  %52 = load i32, i32* @R_cnt, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* @R_cnt, align 4
  %54 = sext i32 %52 to i64
  %55 = getelementptr inbounds i64, i64* %51, i64 %54
  store i64 %50, i64* %55, align 8
  br label %56

56:                                               ; preds = %48, %44
  br label %314

57:                                               ; preds = %41
  %58 = load i32, i32* @R_cnt, align 4
  %59 = load i32, i32* @Q_limit, align 4
  %60 = icmp eq i32 %58, %59
  br i1 %60, label %61, label %62

61:                                               ; preds = %57
  store i32 0, i32* @R_cnt, align 4
  br label %62

62:                                               ; preds = %61, %57
  %63 = load i32, i32* %2, align 4
  %64 = sext i32 %63 to i64
  %65 = load i64*, i64** @R, align 8
  %66 = load i32, i32* @R_cnt, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* @R_cnt, align 4
  %68 = sext i32 %66 to i64
  %69 = getelementptr inbounds i64, i64* %65, i64 %68
  store i64 %64, i64* %69, align 8
  br label %314

70:                                               ; preds = %41
  %71 = load i32*, i32** @UserRate, align 8
  %72 = load i32, i32* %2, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i32, i32* %71, i64 %73
  %75 = load i32, i32* %74, align 4
  store i32 %75, i32* %5, align 4
  %76 = load i32, i32* @R_cnt, align 4
  %77 = load i32, i32* @Q_limit, align 4
  %78 = icmp eq i32 %76, %77
  br i1 %78, label %79, label %153

79:                                               ; preds = %70
  %80 = load i32*, i32** @UserRate, align 8
  %81 = load i64*, i64** @R, align 8
  %82 = getelementptr inbounds i64, i64* %81, i64 1
  %83 = load i64, i64* %82, align 8
  %84 = getelementptr inbounds i32, i32* %80, i64 %83
  %85 = load i32, i32* %84, align 4
  %86 = load i32, i32* %5, align 4
  %87 = icmp sge i32 %85, %86
  br i1 %87, label %88, label %89

88:                                               ; preds = %79
  br label %314

89:                                               ; preds = %79
  store i32 1, i32* %3, align 4
  br label %90

90:                                               ; preds = %89, %135
  %91 = load i32, i32* %3, align 4
  %92 = mul nsw i32 %91, 2
  store i32 %92, i32* %4, align 4
  %93 = load i32, i32* %4, align 4
  %94 = load i32, i32* @R_cnt, align 4
  %95 = icmp sgt i32 %93, %94
  br i1 %95, label %96, label %97

96:                                               ; preds = %90
  br label %146

97:                                               ; preds = %90
  %98 = load i32, i32* %4, align 4
  %99 = load i32, i32* @R_cnt, align 4
  %100 = icmp slt i32 %98, %99
  br i1 %100, label %101, label %123

101:                                              ; preds = %97
  %102 = load i32*, i32** @UserRate, align 8
  %103 = load i64*, i64** @R, align 8
  %104 = load i32, i32* %4, align 4
  %105 = add nsw i32 %104, 1
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds i64, i64* %103, i64 %106
  %108 = load i64, i64* %107, align 8
  %109 = getelementptr inbounds i32, i32* %102, i64 %108
  %110 = load i32, i32* %109, align 4
  %111 = load i32*, i32** @UserRate, align 8
  %112 = load i64*, i64** @R, align 8
  %113 = load i32, i32* %4, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds i64, i64* %112, i64 %114
  %116 = load i64, i64* %115, align 8
  %117 = getelementptr inbounds i32, i32* %111, i64 %116
  %118 = load i32, i32* %117, align 4
  %119 = icmp slt i32 %110, %118
  br i1 %119, label %120, label %123

120:                                              ; preds = %101
  %121 = load i32, i32* %4, align 4
  %122 = add nsw i32 %121, 1
  store i32 %122, i32* %4, align 4
  br label %123

123:                                              ; preds = %120, %101, %97
  %124 = load i32*, i32** @UserRate, align 8
  %125 = load i64*, i64** @R, align 8
  %126 = load i32, i32* %4, align 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds i64, i64* %125, i64 %127
  %129 = load i64, i64* %128, align 8
  %130 = getelementptr inbounds i32, i32* %124, i64 %129
  %131 = load i32, i32* %130, align 4
  %132 = load i32, i32* %5, align 4
  %133 = icmp sge i32 %131, %132
  br i1 %133, label %134, label %135

134:                                              ; preds = %123
  br label %146

135:                                              ; preds = %123
  %136 = load i64*, i64** @R, align 8
  %137 = load i32, i32* %4, align 4
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds i64, i64* %136, i64 %138
  %140 = load i64, i64* %139, align 8
  %141 = load i64*, i64** @R, align 8
  %142 = load i32, i32* %3, align 4
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds i64, i64* %141, i64 %143
  store i64 %140, i64* %144, align 8
  %145 = load i32, i32* %4, align 4
  store i32 %145, i32* %3, align 4
  br label %90

146:                                              ; preds = %134, %96
  %147 = load i32, i32* %2, align 4
  %148 = sext i32 %147 to i64
  %149 = load i64*, i64** @R, align 8
  %150 = load i32, i32* %3, align 4
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds i64, i64* %149, i64 %151
  store i64 %148, i64* %152, align 8
  br label %191

153:                                              ; preds = %70
  %154 = load i32, i32* @R_cnt, align 4
  %155 = add nsw i32 %154, 1
  store i32 %155, i32* @R_cnt, align 4
  store i32 %155, i32* %3, align 4
  br label %156

156:                                              ; preds = %173, %153
  %157 = load i32, i32* %3, align 4
  %158 = icmp sgt i32 %157, 1
  br i1 %158, label %159, label %184

159:                                              ; preds = %156
  %160 = load i32, i32* %3, align 4
  %161 = ashr i32 %160, 1
  store i32 %161, i32* %4, align 4
  %162 = load i32*, i32** @UserRate, align 8
  %163 = load i64*, i64** @R, align 8
  %164 = load i32, i32* %4, align 4
  %165 = sext i32 %164 to i64
  %166 = getelementptr inbounds i64, i64* %163, i64 %165
  %167 = load i64, i64* %166, align 8
  %168 = getelementptr inbounds i32, i32* %162, i64 %167
  %169 = load i32, i32* %168, align 4
  %170 = load i32, i32* %5, align 4
  %171 = icmp sle i32 %169, %170
  br i1 %171, label %172, label %173

172:                                              ; preds = %159
  br label %184

173:                                              ; preds = %159
  %174 = load i64*, i64** @R, align 8
  %175 = load i32, i32* %4, align 4
  %176 = sext i32 %175 to i64
  %177 = getelementptr inbounds i64, i64* %174, i64 %176
  %178 = load i64, i64* %177, align 8
  %179 = load i64*, i64** @R, align 8
  %180 = load i32, i32* %3, align 4
  %181 = sext i32 %180 to i64
  %182 = getelementptr inbounds i64, i64* %179, i64 %181
  store i64 %178, i64* %182, align 8
  %183 = load i32, i32* %4, align 4
  store i32 %183, i32* %3, align 4
  br label %156

184:                                              ; preds = %172, %156
  %185 = load i32, i32* %2, align 4
  %186 = sext i32 %185 to i64
  %187 = load i64*, i64** @R, align 8
  %188 = load i32, i32* %3, align 4
  %189 = sext i32 %188 to i64
  %190 = getelementptr inbounds i64, i64* %187, i64 %189
  store i64 %186, i64* %190, align 8
  br label %191

191:                                              ; preds = %184, %146
  br label %314

192:                                              ; preds = %41
  %193 = load i32*, i32** @UserRate, align 8
  %194 = load i32, i32* %2, align 4
  %195 = sext i32 %194 to i64
  %196 = getelementptr inbounds i32, i32* %193, i64 %195
  %197 = load i32, i32* %196, align 4
  store i32 %197, i32* %5, align 4
  %198 = load i32, i32* @R_cnt, align 4
  %199 = load i32, i32* @Q_limit, align 4
  %200 = icmp eq i32 %198, %199
  br i1 %200, label %201, label %275

201:                                              ; preds = %192
  %202 = load i32*, i32** @UserRate, align 8
  %203 = load i64*, i64** @R, align 8
  %204 = getelementptr inbounds i64, i64* %203, i64 1
  %205 = load i64, i64* %204, align 8
  %206 = getelementptr inbounds i32, i32* %202, i64 %205
  %207 = load i32, i32* %206, align 4
  %208 = load i32, i32* %5, align 4
  %209 = icmp sle i32 %207, %208
  br i1 %209, label %210, label %211

210:                                              ; preds = %201
  br label %314

211:                                              ; preds = %201
  store i32 1, i32* %3, align 4
  br label %212

212:                                              ; preds = %211, %257
  %213 = load i32, i32* %3, align 4
  %214 = mul nsw i32 %213, 2
  store i32 %214, i32* %4, align 4
  %215 = load i32, i32* %4, align 4
  %216 = load i32, i32* @R_cnt, align 4
  %217 = icmp sgt i32 %215, %216
  br i1 %217, label %218, label %219

218:                                              ; preds = %212
  br label %268

219:                                              ; preds = %212
  %220 = load i32, i32* %4, align 4
  %221 = load i32, i32* @R_cnt, align 4
  %222 = icmp slt i32 %220, %221
  br i1 %222, label %223, label %245

223:                                              ; preds = %219
  %224 = load i32*, i32** @UserRate, align 8
  %225 = load i64*, i64** @R, align 8
  %226 = load i32, i32* %4, align 4
  %227 = add nsw i32 %226, 1
  %228 = sext i32 %227 to i64
  %229 = getelementptr inbounds i64, i64* %225, i64 %228
  %230 = load i64, i64* %229, align 8
  %231 = getelementptr inbounds i32, i32* %224, i64 %230
  %232 = load i32, i32* %231, align 4
  %233 = load i32*, i32** @UserRate, align 8
  %234 = load i64*, i64** @R, align 8
  %235 = load i32, i32* %4, align 4
  %236 = sext i32 %235 to i64
  %237 = getelementptr inbounds i64, i64* %234, i64 %236
  %238 = load i64, i64* %237, align 8
  %239 = getelementptr inbounds i32, i32* %233, i64 %238
  %240 = load i32, i32* %239, align 4
  %241 = icmp sgt i32 %232, %240
  br i1 %241, label %242, label %245

242:                                              ; preds = %223
  %243 = load i32, i32* %4, align 4
  %244 = add nsw i32 %243, 1
  store i32 %244, i32* %4, align 4
  br label %245

245:                                              ; preds = %242, %223, %219
  %246 = load i32*, i32** @UserRate, align 8
  %247 = load i64*, i64** @R, align 8
  %248 = load i32, i32* %4, align 4
  %249 = sext i32 %248 to i64
  %250 = getelementptr inbounds i64, i64* %247, i64 %249
  %251 = load i64, i64* %250, align 8
  %252 = getelementptr inbounds i32, i32* %246, i64 %251
  %253 = load i32, i32* %252, align 4
  %254 = load i32, i32* %5, align 4
  %255 = icmp sle i32 %253, %254
  br i1 %255, label %256, label %257

256:                                              ; preds = %245
  br label %268

257:                                              ; preds = %245
  %258 = load i64*, i64** @R, align 8
  %259 = load i32, i32* %4, align 4
  %260 = sext i32 %259 to i64
  %261 = getelementptr inbounds i64, i64* %258, i64 %260
  %262 = load i64, i64* %261, align 8
  %263 = load i64*, i64** @R, align 8
  %264 = load i32, i32* %3, align 4
  %265 = sext i32 %264 to i64
  %266 = getelementptr inbounds i64, i64* %263, i64 %265
  store i64 %262, i64* %266, align 8
  %267 = load i32, i32* %4, align 4
  store i32 %267, i32* %3, align 4
  br label %212

268:                                              ; preds = %256, %218
  %269 = load i32, i32* %2, align 4
  %270 = sext i32 %269 to i64
  %271 = load i64*, i64** @R, align 8
  %272 = load i32, i32* %3, align 4
  %273 = sext i32 %272 to i64
  %274 = getelementptr inbounds i64, i64* %271, i64 %273
  store i64 %270, i64* %274, align 8
  br label %313

275:                                              ; preds = %192
  %276 = load i32, i32* @R_cnt, align 4
  %277 = add nsw i32 %276, 1
  store i32 %277, i32* @R_cnt, align 4
  store i32 %277, i32* %3, align 4
  br label %278

278:                                              ; preds = %295, %275
  %279 = load i32, i32* %3, align 4
  %280 = icmp sgt i32 %279, 1
  br i1 %280, label %281, label %306

281:                                              ; preds = %278
  %282 = load i32, i32* %3, align 4
  %283 = ashr i32 %282, 1
  store i32 %283, i32* %4, align 4
  %284 = load i32*, i32** @UserRate, align 8
  %285 = load i64*, i64** @R, align 8
  %286 = load i32, i32* %4, align 4
  %287 = sext i32 %286 to i64
  %288 = getelementptr inbounds i64, i64* %285, i64 %287
  %289 = load i64, i64* %288, align 8
  %290 = getelementptr inbounds i32, i32* %284, i64 %289
  %291 = load i32, i32* %290, align 4
  %292 = load i32, i32* %5, align 4
  %293 = icmp sge i32 %291, %292
  br i1 %293, label %294, label %295

294:                                              ; preds = %281
  br label %306

295:                                              ; preds = %281
  %296 = load i64*, i64** @R, align 8
  %297 = load i32, i32* %4, align 4
  %298 = sext i32 %297 to i64
  %299 = getelementptr inbounds i64, i64* %296, i64 %298
  %300 = load i64, i64* %299, align 8
  %301 = load i64*, i64** @R, align 8
  %302 = load i32, i32* %3, align 4
  %303 = sext i32 %302 to i64
  %304 = getelementptr inbounds i64, i64* %301, i64 %303
  store i64 %300, i64* %304, align 8
  %305 = load i32, i32* %4, align 4
  store i32 %305, i32* %3, align 4
  br label %278

306:                                              ; preds = %294, %278
  %307 = load i32, i32* %2, align 4
  %308 = sext i32 %307 to i64
  %309 = load i64*, i64** @R, align 8
  %310 = load i32, i32* %3, align 4
  %311 = sext i32 %310 to i64
  %312 = getelementptr inbounds i64, i64* %309, i64 %311
  store i64 %308, i64* %312, align 8
  br label %313

313:                                              ; preds = %306, %268
  br label %314

314:                                              ; preds = %25, %35, %40, %88, %210, %313, %191, %62, %56
  ret void
}

declare dso_local i32 @user_ad_price(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
