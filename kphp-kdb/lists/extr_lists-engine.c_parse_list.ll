; ModuleID = '/home/carl/AnghaBench/kphp-kdb/lists/extr_lists-engine.c_parse_list.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/lists/extr_lists-engine.c_parse_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAX_INT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, i32*, i32, i32, i32*)* @parse_list to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_list(i32* %0, i32 %1, i32* %2, i32 %3, i32 %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i64, align 8
  store i32* %0, i32** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32* %2, i32** %10, align 8
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32* %5, i32** %13, align 8
  store i8* null, i8** %14, align 8
  store i8* null, i8** %15, align 8
  store i32 2147483647, i32* %16, align 4
  store i32 0, i32* %17, align 4
  store i32 0, i32* %18, align 4
  store i32 0, i32* %19, align 4
  %22 = load i32*, i32** %13, align 8
  store i32 -1, i32* %22, align 4
  %23 = load i32, i32* %11, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %6
  store i32 0, i32* %7, align 4
  br label %314

26:                                               ; preds = %6
  br label %27

27:                                               ; preds = %301, %26
  %28 = load i8*, i8** %14, align 8
  %29 = getelementptr inbounds i8, i8* %28, i64 16
  %30 = load i8*, i8** %15, align 8
  %31 = icmp uge i8* %29, %30
  br i1 %31, label %32, label %66

32:                                               ; preds = %27
  %33 = load i8*, i8** %15, align 8
  %34 = load i8*, i8** %14, align 8
  %35 = load i32, i32* %11, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i8, i8* %34, i64 %36
  %38 = icmp ult i8* %33, %37
  br i1 %38, label %39, label %66

39:                                               ; preds = %32
  %40 = load i32*, i32** %10, align 8
  %41 = load i32, i32* %17, align 4
  %42 = call i32 @advance_read_ptr(i32* %40, i32 %41)
  %43 = load i32*, i32** %10, align 8
  %44 = load i32, i32* %11, align 4
  %45 = icmp slt i32 %44, 16
  br i1 %45, label %46, label %48

46:                                               ; preds = %39
  %47 = load i32, i32* %11, align 4
  br label %49

48:                                               ; preds = %39
  br label %49

49:                                               ; preds = %48, %46
  %50 = phi i32 [ %47, %46 ], [ 16, %48 ]
  %51 = call i32 @force_ready_bytes(i32* %43, i32 %50)
  %52 = load i32*, i32** %10, align 8
  %53 = call i8* @get_read_ptr(i32* %52)
  store i8* %53, i8** %14, align 8
  %54 = load i32*, i32** %10, align 8
  %55 = call i32 @get_ready_bytes(i32* %54)
  store i32 %55, i32* %17, align 4
  %56 = load i32, i32* %17, align 4
  %57 = load i32, i32* %11, align 4
  %58 = icmp sgt i32 %56, %57
  br i1 %58, label %59, label %61

59:                                               ; preds = %49
  %60 = load i32, i32* %11, align 4
  store i32 %60, i32* %17, align 4
  br label %61

61:                                               ; preds = %59, %49
  %62 = load i8*, i8** %14, align 8
  %63 = load i32, i32* %17, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i8, i8* %62, i64 %64
  store i8* %65, i8** %15, align 8
  store i32 0, i32* %17, align 4
  br label %66

66:                                               ; preds = %61, %32, %27
  %67 = load i8*, i8** %14, align 8
  %68 = load i8*, i8** %15, align 8
  %69 = icmp ult i8* %67, %68
  %70 = zext i1 %69 to i32
  %71 = call i32 @assert(i32 %70)
  store i64 0, i64* %21, align 8
  store i32 2147483647, i32* %20, align 4
  %72 = load i8*, i8** %14, align 8
  %73 = load i8, i8* %72, align 1
  %74 = sext i8 %73 to i32
  %75 = icmp eq i32 %74, 45
  br i1 %75, label %76, label %90

76:                                               ; preds = %66
  %77 = load i8*, i8** %14, align 8
  %78 = getelementptr inbounds i8, i8* %77, i64 1
  %79 = load i8*, i8** %15, align 8
  %80 = icmp ult i8* %78, %79
  br i1 %80, label %81, label %90

81:                                               ; preds = %76
  %82 = load i8*, i8** %14, align 8
  %83 = getelementptr inbounds i8, i8* %82, i32 1
  store i8* %83, i8** %14, align 8
  %84 = load i32, i32* %20, align 4
  %85 = add i32 %84, 1
  store i32 %85, i32* %20, align 4
  %86 = load i32, i32* %17, align 4
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %17, align 4
  %88 = load i32, i32* %11, align 4
  %89 = add nsw i32 %88, -1
  store i32 %89, i32* %11, align 4
  br label %90

90:                                               ; preds = %81, %76, %66
  %91 = load i8*, i8** %14, align 8
  %92 = load i8, i8* %91, align 1
  %93 = sext i8 %92 to i32
  %94 = icmp slt i32 %93, 48
  br i1 %94, label %100, label %95

95:                                               ; preds = %90
  %96 = load i8*, i8** %14, align 8
  %97 = load i8, i8* %96, align 1
  %98 = sext i8 %97 to i32
  %99 = icmp sgt i32 %98, 57
  br i1 %99, label %100, label %106

100:                                              ; preds = %95, %90
  %101 = load i32*, i32** %10, align 8
  %102 = load i32, i32* %17, align 4
  %103 = load i32, i32* %11, align 4
  %104 = add nsw i32 %102, %103
  %105 = call i32 @advance_skip_read_ptr(i32* %101, i32 %104)
  store i32 -1, i32* %7, align 4
  br label %314

106:                                              ; preds = %95
  br label %107

107:                                              ; preds = %143, %106
  %108 = load i8*, i8** %14, align 8
  %109 = load i8*, i8** %15, align 8
  %110 = icmp ult i8* %108, %109
  br i1 %110, label %111, label %121

111:                                              ; preds = %107
  %112 = load i8*, i8** %14, align 8
  %113 = load i8, i8* %112, align 1
  %114 = sext i8 %113 to i32
  %115 = icmp sge i32 %114, 48
  br i1 %115, label %116, label %121

116:                                              ; preds = %111
  %117 = load i8*, i8** %14, align 8
  %118 = load i8, i8* %117, align 1
  %119 = sext i8 %118 to i32
  %120 = icmp sle i32 %119, 57
  br label %121

121:                                              ; preds = %116, %111, %107
  %122 = phi i1 [ false, %111 ], [ false, %107 ], [ %120, %116 ]
  br i1 %122, label %123, label %148

123:                                              ; preds = %121
  %124 = load i64, i64* %21, align 8
  %125 = mul nsw i64 %124, 10
  %126 = load i8*, i8** %14, align 8
  %127 = getelementptr inbounds i8, i8* %126, i32 1
  store i8* %127, i8** %14, align 8
  %128 = load i8, i8* %126, align 1
  %129 = sext i8 %128 to i32
  %130 = sub nsw i32 %129, 48
  %131 = sext i32 %130 to i64
  %132 = add nsw i64 %125, %131
  store i64 %132, i64* %21, align 8
  %133 = load i64, i64* %21, align 8
  %134 = load i32, i32* %20, align 4
  %135 = zext i32 %134 to i64
  %136 = icmp sgt i64 %133, %135
  br i1 %136, label %137, label %143

137:                                              ; preds = %123
  %138 = load i32*, i32** %10, align 8
  %139 = load i32, i32* %17, align 4
  %140 = load i32, i32* %11, align 4
  %141 = add nsw i32 %139, %140
  %142 = call i32 @advance_skip_read_ptr(i32* %138, i32 %141)
  store i32 -1, i32* %7, align 4
  br label %314

143:                                              ; preds = %123
  %144 = load i32, i32* %17, align 4
  %145 = add nsw i32 %144, 1
  store i32 %145, i32* %17, align 4
  %146 = load i32, i32* %11, align 4
  %147 = add nsw i32 %146, -1
  store i32 %147, i32* %11, align 4
  br label %107

148:                                              ; preds = %121
  %149 = load i32, i32* %18, align 4
  %150 = load i32, i32* %9, align 4
  %151 = icmp sge i32 %149, %150
  br i1 %151, label %159, label %152

152:                                              ; preds = %148
  %153 = load i32, i32* %11, align 4
  %154 = icmp sgt i32 %153, 0
  br i1 %154, label %155, label %165

155:                                              ; preds = %152
  %156 = load i8*, i8** %14, align 8
  %157 = load i8*, i8** %15, align 8
  %158 = icmp eq i8* %156, %157
  br i1 %158, label %159, label %165

159:                                              ; preds = %155, %148
  %160 = load i32*, i32** %10, align 8
  %161 = load i32, i32* %17, align 4
  %162 = load i32, i32* %11, align 4
  %163 = add nsw i32 %161, %162
  %164 = call i32 @advance_skip_read_ptr(i32* %160, i32 %163)
  store i32 -1, i32* %7, align 4
  br label %314

165:                                              ; preds = %155, %152
  %166 = load i32, i32* %11, align 4
  %167 = icmp sgt i32 %166, 0
  br i1 %167, label %168, label %225

168:                                              ; preds = %165
  %169 = load i32, i32* %19, align 4
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %171, label %195

171:                                              ; preds = %168
  %172 = load i8*, i8** %14, align 8
  %173 = load i8, i8* %172, align 1
  %174 = sext i8 %173 to i32
  %175 = load i32, i32* %16, align 4
  %176 = icmp eq i32 %175, 1
  br i1 %176, label %177, label %178

177:                                              ; preds = %171
  br label %185

178:                                              ; preds = %171
  %179 = load i32, i32* %16, align 4
  %180 = load i32, i32* %12, align 4
  %181 = add nsw i32 %180, 1
  %182 = icmp eq i32 %179, %181
  %183 = zext i1 %182 to i64
  %184 = select i1 %182, i32 35, i32 58
  br label %185

185:                                              ; preds = %178, %177
  %186 = phi i32 [ 44, %177 ], [ %184, %178 ]
  %187 = icmp ne i32 %174, %186
  br i1 %187, label %188, label %194

188:                                              ; preds = %185
  %189 = load i32*, i32** %10, align 8
  %190 = load i32, i32* %17, align 4
  %191 = load i32, i32* %11, align 4
  %192 = add nsw i32 %190, %191
  %193 = call i32 @advance_skip_read_ptr(i32* %189, i32 %192)
  store i32 -1, i32* %7, align 4
  br label %314

194:                                              ; preds = %185
  br label %224

195:                                              ; preds = %168
  %196 = load i8*, i8** %14, align 8
  %197 = load i8, i8* %196, align 1
  %198 = sext i8 %197 to i32
  %199 = load i32, i32* %12, align 4
  %200 = icmp ne i32 %199, 0
  %201 = zext i1 %200 to i64
  %202 = select i1 %200, i32 35, i32 44
  %203 = icmp eq i32 %198, %202
  br i1 %203, label %204, label %211

204:                                              ; preds = %195
  store i32 1, i32* %19, align 4
  %205 = load i32, i32* %16, align 4
  %206 = sub nsw i32 2147483647, %205
  %207 = add nsw i32 %206, 1
  %208 = load i32*, i32** %13, align 8
  store i32 %207, i32* %208, align 4
  %209 = load i32, i32* %12, align 4
  %210 = add nsw i32 %209, 1
  store i32 %210, i32* %16, align 4
  br label %223

211:                                              ; preds = %195
  %212 = load i8*, i8** %14, align 8
  %213 = load i8, i8* %212, align 1
  %214 = sext i8 %213 to i32
  %215 = icmp ne i32 %214, 58
  br i1 %215, label %216, label %222

216:                                              ; preds = %211
  %217 = load i32*, i32** %10, align 8
  %218 = load i32, i32* %17, align 4
  %219 = load i32, i32* %11, align 4
  %220 = add nsw i32 %218, %219
  %221 = call i32 @advance_skip_read_ptr(i32* %217, i32 %220)
  store i32 -1, i32* %7, align 4
  br label %314

222:                                              ; preds = %211
  br label %223

223:                                              ; preds = %222, %204
  br label %224

224:                                              ; preds = %223, %194
  br label %239

225:                                              ; preds = %165
  %226 = load i32, i32* %19, align 4
  %227 = icmp ne i32 %226, 0
  br i1 %227, label %238, label %228

228:                                              ; preds = %225
  %229 = load i32, i32* %12, align 4
  %230 = icmp ne i32 %229, 0
  br i1 %230, label %238, label %231

231:                                              ; preds = %228
  store i32 1, i32* %19, align 4
  %232 = load i32, i32* %16, align 4
  %233 = sub nsw i32 2147483647, %232
  %234 = add nsw i32 %233, 1
  %235 = load i32*, i32** %13, align 8
  store i32 %234, i32* %235, align 4
  %236 = load i32, i32* %12, align 4
  %237 = add nsw i32 %236, 1
  store i32 %237, i32* %16, align 4
  br label %238

238:                                              ; preds = %231, %228, %225
  br label %239

239:                                              ; preds = %238, %224
  %240 = load i32, i32* %20, align 4
  %241 = and i32 %240, 1
  %242 = icmp ne i32 %241, 0
  br i1 %242, label %243, label %245

243:                                              ; preds = %239
  %244 = load i64, i64* %21, align 8
  br label %248

245:                                              ; preds = %239
  %246 = load i64, i64* %21, align 8
  %247 = sub nsw i64 0, %246
  br label %248

248:                                              ; preds = %245, %243
  %249 = phi i64 [ %244, %243 ], [ %247, %245 ]
  %250 = trunc i64 %249 to i32
  %251 = load i32*, i32** %8, align 8
  %252 = load i32, i32* %18, align 4
  %253 = add nsw i32 %252, 1
  store i32 %253, i32* %18, align 4
  %254 = sext i32 %252 to i64
  %255 = getelementptr inbounds i32, i32* %251, i64 %254
  store i32 %250, i32* %255, align 4
  %256 = load i32, i32* %11, align 4
  %257 = icmp ne i32 %256, 0
  br i1 %257, label %269, label %258

258:                                              ; preds = %248
  %259 = load i32*, i32** %10, align 8
  %260 = load i32, i32* %17, align 4
  %261 = call i32 @advance_read_ptr(i32* %259, i32 %260)
  %262 = load i32, i32* %16, align 4
  %263 = icmp eq i32 %262, 1
  br i1 %263, label %264, label %266

264:                                              ; preds = %258
  %265 = load i32, i32* %18, align 4
  br label %267

266:                                              ; preds = %258
  br label %267

267:                                              ; preds = %266, %264
  %268 = phi i32 [ %265, %264 ], [ -1, %266 ]
  store i32 %268, i32* %7, align 4
  br label %314

269:                                              ; preds = %248
  %270 = load i8*, i8** %14, align 8
  %271 = load i8, i8* %270, align 1
  %272 = sext i8 %271 to i32
  %273 = load i32, i32* %16, align 4
  %274 = icmp eq i32 %273, 1
  br i1 %274, label %275, label %276

275:                                              ; preds = %269
  br label %283

276:                                              ; preds = %269
  %277 = load i32, i32* %16, align 4
  %278 = load i32, i32* %12, align 4
  %279 = add nsw i32 %278, 1
  %280 = icmp eq i32 %277, %279
  %281 = zext i1 %280 to i64
  %282 = select i1 %280, i32 35, i32 58
  br label %283

283:                                              ; preds = %276, %275
  %284 = phi i32 [ 44, %275 ], [ %282, %276 ]
  %285 = icmp eq i32 %272, %284
  %286 = zext i1 %285 to i32
  %287 = call i32 @assert(i32 %286)
  %288 = load i8*, i8** %14, align 8
  %289 = getelementptr inbounds i8, i8* %288, i32 1
  store i8* %289, i8** %14, align 8
  %290 = load i32, i32* %17, align 4
  %291 = add nsw i32 %290, 1
  store i32 %291, i32* %17, align 4
  %292 = load i32, i32* %16, align 4
  %293 = add nsw i32 %292, -1
  store i32 %293, i32* %16, align 4
  %294 = icmp ne i32 %293, 0
  br i1 %294, label %300, label %295

295:                                              ; preds = %283
  %296 = load i32*, i32** %13, align 8
  %297 = load i32, i32* %296, align 4
  %298 = load i32, i32* %12, align 4
  %299 = add nsw i32 %297, %298
  store i32 %299, i32* %16, align 4
  br label %300

300:                                              ; preds = %295, %283
  br label %301

301:                                              ; preds = %300
  %302 = load i32, i32* %11, align 4
  %303 = add nsw i32 %302, -1
  store i32 %303, i32* %11, align 4
  %304 = icmp sgt i32 %303, 0
  br i1 %304, label %27, label %305

305:                                              ; preds = %301
  %306 = load i32, i32* %11, align 4
  %307 = icmp ne i32 %306, 0
  %308 = xor i1 %307, true
  %309 = zext i1 %308 to i32
  %310 = call i32 @assert(i32 %309)
  %311 = load i32*, i32** %10, align 8
  %312 = load i32, i32* %17, align 4
  %313 = call i32 @advance_read_ptr(i32* %311, i32 %312)
  store i32 -1, i32* %7, align 4
  br label %314

314:                                              ; preds = %305, %267, %216, %188, %159, %137, %100, %25
  %315 = load i32, i32* %7, align 4
  ret i32 %315
}

declare dso_local i32 @advance_read_ptr(i32*, i32) #1

declare dso_local i32 @force_ready_bytes(i32*, i32) #1

declare dso_local i8* @get_read_ptr(i32*) #1

declare dso_local i32 @get_ready_bytes(i32*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @advance_skip_read_ptr(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
