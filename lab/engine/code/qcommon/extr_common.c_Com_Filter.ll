; ModuleID = '/home/carl/AnghaBench/lab/engine/code/qcommon/extr_common.c_Com_Filter.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/qcommon/extr_common.c_Com_Filter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAX_TOKEN_CHARS = common dso_local global i32 0, align 4
@qfalse = common dso_local global i32 0, align 4
@qtrue = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @Com_Filter(i8* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %14 = load i32, i32* @MAX_TOKEN_CHARS, align 4
  %15 = zext i32 %14 to i64
  %16 = call i8* @llvm.stacksave()
  store i8* %16, i8** %8, align 8
  %17 = alloca i8, i64 %15, align 16
  store i64 %15, i64* %9, align 8
  br label %18

18:                                               ; preds = %294, %3
  %19 = load i8*, i8** %5, align 8
  %20 = load i8, i8* %19, align 1
  %21 = icmp ne i8 %20, 0
  br i1 %21, label %22, label %295

22:                                               ; preds = %18
  %23 = load i8*, i8** %5, align 8
  %24 = load i8, i8* %23, align 1
  %25 = sext i8 %24 to i32
  %26 = icmp eq i32 %25, 42
  br i1 %26, label %27, label %76

27:                                               ; preds = %22
  %28 = load i8*, i8** %5, align 8
  %29 = getelementptr inbounds i8, i8* %28, i32 1
  store i8* %29, i8** %5, align 8
  store i32 0, i32* %11, align 4
  br label %30

30:                                               ; preds = %53, %27
  %31 = load i8*, i8** %5, align 8
  %32 = load i8, i8* %31, align 1
  %33 = icmp ne i8 %32, 0
  br i1 %33, label %34, label %56

34:                                               ; preds = %30
  %35 = load i8*, i8** %5, align 8
  %36 = load i8, i8* %35, align 1
  %37 = sext i8 %36 to i32
  %38 = icmp eq i32 %37, 42
  br i1 %38, label %44, label %39

39:                                               ; preds = %34
  %40 = load i8*, i8** %5, align 8
  %41 = load i8, i8* %40, align 1
  %42 = sext i8 %41 to i32
  %43 = icmp eq i32 %42, 63
  br i1 %43, label %44, label %45

44:                                               ; preds = %39, %34
  br label %56

45:                                               ; preds = %39
  %46 = load i8*, i8** %5, align 8
  %47 = load i8, i8* %46, align 1
  %48 = load i32, i32* %11, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i8, i8* %17, i64 %49
  store i8 %47, i8* %50, align 1
  %51 = load i8*, i8** %5, align 8
  %52 = getelementptr inbounds i8, i8* %51, i32 1
  store i8* %52, i8** %5, align 8
  br label %53

53:                                               ; preds = %45
  %54 = load i32, i32* %11, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %11, align 4
  br label %30

56:                                               ; preds = %44, %30
  %57 = load i32, i32* %11, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i8, i8* %17, i64 %58
  store i8 0, i8* %59, align 1
  %60 = call i32 @strlen(i8* %17)
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %75

62:                                               ; preds = %56
  %63 = load i8*, i8** %6, align 8
  %64 = load i32, i32* %7, align 4
  %65 = call i8* @Com_StringContains(i8* %63, i8* %17, i32 %64)
  store i8* %65, i8** %10, align 8
  %66 = load i8*, i8** %10, align 8
  %67 = icmp ne i8* %66, null
  br i1 %67, label %70, label %68

68:                                               ; preds = %62
  %69 = load i32, i32* @qfalse, align 4
  store i32 %69, i32* %4, align 4
  store i32 1, i32* %13, align 4
  br label %297

70:                                               ; preds = %62
  %71 = load i8*, i8** %10, align 8
  %72 = call i32 @strlen(i8* %17)
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i8, i8* %71, i64 %73
  store i8* %74, i8** %6, align 8
  br label %75

75:                                               ; preds = %70, %56
  br label %294

76:                                               ; preds = %22
  %77 = load i8*, i8** %5, align 8
  %78 = load i8, i8* %77, align 1
  %79 = sext i8 %78 to i32
  %80 = icmp eq i32 %79, 63
  br i1 %80, label %81, label %86

81:                                               ; preds = %76
  %82 = load i8*, i8** %5, align 8
  %83 = getelementptr inbounds i8, i8* %82, i32 1
  store i8* %83, i8** %5, align 8
  %84 = load i8*, i8** %6, align 8
  %85 = getelementptr inbounds i8, i8* %84, i32 1
  store i8* %85, i8** %6, align 8
  br label %293

86:                                               ; preds = %76
  %87 = load i8*, i8** %5, align 8
  %88 = load i8, i8* %87, align 1
  %89 = sext i8 %88 to i32
  %90 = icmp eq i32 %89, 91
  br i1 %90, label %91, label %100

91:                                               ; preds = %86
  %92 = load i8*, i8** %5, align 8
  %93 = getelementptr inbounds i8, i8* %92, i64 1
  %94 = load i8, i8* %93, align 1
  %95 = sext i8 %94 to i32
  %96 = icmp eq i32 %95, 91
  br i1 %96, label %97, label %100

97:                                               ; preds = %91
  %98 = load i8*, i8** %5, align 8
  %99 = getelementptr inbounds i8, i8* %98, i32 1
  store i8* %99, i8** %5, align 8
  br label %292

100:                                              ; preds = %91, %86
  %101 = load i8*, i8** %5, align 8
  %102 = load i8, i8* %101, align 1
  %103 = sext i8 %102 to i32
  %104 = icmp eq i32 %103, 91
  br i1 %104, label %105, label %261

105:                                              ; preds = %100
  %106 = load i8*, i8** %5, align 8
  %107 = getelementptr inbounds i8, i8* %106, i32 1
  store i8* %107, i8** %5, align 8
  %108 = load i32, i32* @qfalse, align 4
  store i32 %108, i32* %12, align 4
  br label %109

109:                                              ; preds = %230, %105
  %110 = load i8*, i8** %5, align 8
  %111 = load i8, i8* %110, align 1
  %112 = sext i8 %111 to i32
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %118

114:                                              ; preds = %109
  %115 = load i32, i32* %12, align 4
  %116 = icmp ne i32 %115, 0
  %117 = xor i1 %116, true
  br label %118

118:                                              ; preds = %114, %109
  %119 = phi i1 [ false, %109 ], [ %117, %114 ]
  br i1 %119, label %120, label %231

120:                                              ; preds = %118
  %121 = load i8*, i8** %5, align 8
  %122 = load i8, i8* %121, align 1
  %123 = sext i8 %122 to i32
  %124 = icmp eq i32 %123, 93
  br i1 %124, label %125, label %132

125:                                              ; preds = %120
  %126 = load i8*, i8** %5, align 8
  %127 = getelementptr inbounds i8, i8* %126, i64 1
  %128 = load i8, i8* %127, align 1
  %129 = sext i8 %128 to i32
  %130 = icmp ne i32 %129, 93
  br i1 %130, label %131, label %132

131:                                              ; preds = %125
  br label %231

132:                                              ; preds = %125, %120
  %133 = load i8*, i8** %5, align 8
  %134 = getelementptr inbounds i8, i8* %133, i64 1
  %135 = load i8, i8* %134, align 1
  %136 = sext i8 %135 to i32
  %137 = icmp eq i32 %136, 45
  br i1 %137, label %138, label %202

138:                                              ; preds = %132
  %139 = load i8*, i8** %5, align 8
  %140 = getelementptr inbounds i8, i8* %139, i64 2
  %141 = load i8, i8* %140, align 1
  %142 = sext i8 %141 to i32
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %144, label %202

144:                                              ; preds = %138
  %145 = load i8*, i8** %5, align 8
  %146 = getelementptr inbounds i8, i8* %145, i64 2
  %147 = load i8, i8* %146, align 1
  %148 = sext i8 %147 to i32
  %149 = icmp ne i32 %148, 93
  br i1 %149, label %156, label %150

150:                                              ; preds = %144
  %151 = load i8*, i8** %5, align 8
  %152 = getelementptr inbounds i8, i8* %151, i64 3
  %153 = load i8, i8* %152, align 1
  %154 = sext i8 %153 to i32
  %155 = icmp eq i32 %154, 93
  br i1 %155, label %156, label %202

156:                                              ; preds = %150, %144
  %157 = load i32, i32* %7, align 4
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %159, label %179

159:                                              ; preds = %156
  %160 = load i8*, i8** %6, align 8
  %161 = load i8, i8* %160, align 1
  %162 = sext i8 %161 to i32
  %163 = load i8*, i8** %5, align 8
  %164 = load i8, i8* %163, align 1
  %165 = sext i8 %164 to i32
  %166 = icmp sge i32 %162, %165
  br i1 %166, label %167, label %178

167:                                              ; preds = %159
  %168 = load i8*, i8** %6, align 8
  %169 = load i8, i8* %168, align 1
  %170 = sext i8 %169 to i32
  %171 = load i8*, i8** %5, align 8
  %172 = getelementptr inbounds i8, i8* %171, i64 2
  %173 = load i8, i8* %172, align 1
  %174 = sext i8 %173 to i32
  %175 = icmp sle i32 %170, %174
  br i1 %175, label %176, label %178

176:                                              ; preds = %167
  %177 = load i32, i32* @qtrue, align 4
  store i32 %177, i32* %12, align 4
  br label %178

178:                                              ; preds = %176, %167, %159
  br label %199

179:                                              ; preds = %156
  %180 = load i8*, i8** %6, align 8
  %181 = load i8, i8* %180, align 1
  %182 = call i64 @toupper(i8 signext %181)
  %183 = load i8*, i8** %5, align 8
  %184 = load i8, i8* %183, align 1
  %185 = call i64 @toupper(i8 signext %184)
  %186 = icmp sge i64 %182, %185
  br i1 %186, label %187, label %198

187:                                              ; preds = %179
  %188 = load i8*, i8** %6, align 8
  %189 = load i8, i8* %188, align 1
  %190 = call i64 @toupper(i8 signext %189)
  %191 = load i8*, i8** %5, align 8
  %192 = getelementptr inbounds i8, i8* %191, i64 2
  %193 = load i8, i8* %192, align 1
  %194 = call i64 @toupper(i8 signext %193)
  %195 = icmp sle i64 %190, %194
  br i1 %195, label %196, label %198

196:                                              ; preds = %187
  %197 = load i32, i32* @qtrue, align 4
  store i32 %197, i32* %12, align 4
  br label %198

198:                                              ; preds = %196, %187, %179
  br label %199

199:                                              ; preds = %198, %178
  %200 = load i8*, i8** %5, align 8
  %201 = getelementptr inbounds i8, i8* %200, i64 3
  store i8* %201, i8** %5, align 8
  br label %230

202:                                              ; preds = %150, %138, %132
  %203 = load i32, i32* %7, align 4
  %204 = icmp ne i32 %203, 0
  br i1 %204, label %205, label %216

205:                                              ; preds = %202
  %206 = load i8*, i8** %5, align 8
  %207 = load i8, i8* %206, align 1
  %208 = sext i8 %207 to i32
  %209 = load i8*, i8** %6, align 8
  %210 = load i8, i8* %209, align 1
  %211 = sext i8 %210 to i32
  %212 = icmp eq i32 %208, %211
  br i1 %212, label %213, label %215

213:                                              ; preds = %205
  %214 = load i32, i32* @qtrue, align 4
  store i32 %214, i32* %12, align 4
  br label %215

215:                                              ; preds = %213, %205
  br label %227

216:                                              ; preds = %202
  %217 = load i8*, i8** %5, align 8
  %218 = load i8, i8* %217, align 1
  %219 = call i64 @toupper(i8 signext %218)
  %220 = load i8*, i8** %6, align 8
  %221 = load i8, i8* %220, align 1
  %222 = call i64 @toupper(i8 signext %221)
  %223 = icmp eq i64 %219, %222
  br i1 %223, label %224, label %226

224:                                              ; preds = %216
  %225 = load i32, i32* @qtrue, align 4
  store i32 %225, i32* %12, align 4
  br label %226

226:                                              ; preds = %224, %216
  br label %227

227:                                              ; preds = %226, %215
  %228 = load i8*, i8** %5, align 8
  %229 = getelementptr inbounds i8, i8* %228, i32 1
  store i8* %229, i8** %5, align 8
  br label %230

230:                                              ; preds = %227, %199
  br label %109

231:                                              ; preds = %131, %118
  %232 = load i32, i32* %12, align 4
  %233 = icmp ne i32 %232, 0
  br i1 %233, label %236, label %234

234:                                              ; preds = %231
  %235 = load i32, i32* @qfalse, align 4
  store i32 %235, i32* %4, align 4
  store i32 1, i32* %13, align 4
  br label %297

236:                                              ; preds = %231
  br label %237

237:                                              ; preds = %253, %236
  %238 = load i8*, i8** %5, align 8
  %239 = load i8, i8* %238, align 1
  %240 = icmp ne i8 %239, 0
  br i1 %240, label %241, label %256

241:                                              ; preds = %237
  %242 = load i8*, i8** %5, align 8
  %243 = load i8, i8* %242, align 1
  %244 = sext i8 %243 to i32
  %245 = icmp eq i32 %244, 93
  br i1 %245, label %246, label %253

246:                                              ; preds = %241
  %247 = load i8*, i8** %5, align 8
  %248 = getelementptr inbounds i8, i8* %247, i64 1
  %249 = load i8, i8* %248, align 1
  %250 = sext i8 %249 to i32
  %251 = icmp ne i32 %250, 93
  br i1 %251, label %252, label %253

252:                                              ; preds = %246
  br label %256

253:                                              ; preds = %246, %241
  %254 = load i8*, i8** %5, align 8
  %255 = getelementptr inbounds i8, i8* %254, i32 1
  store i8* %255, i8** %5, align 8
  br label %237

256:                                              ; preds = %252, %237
  %257 = load i8*, i8** %5, align 8
  %258 = getelementptr inbounds i8, i8* %257, i32 1
  store i8* %258, i8** %5, align 8
  %259 = load i8*, i8** %6, align 8
  %260 = getelementptr inbounds i8, i8* %259, i32 1
  store i8* %260, i8** %6, align 8
  br label %291

261:                                              ; preds = %100
  %262 = load i32, i32* %7, align 4
  %263 = icmp ne i32 %262, 0
  br i1 %263, label %264, label %275

264:                                              ; preds = %261
  %265 = load i8*, i8** %5, align 8
  %266 = load i8, i8* %265, align 1
  %267 = sext i8 %266 to i32
  %268 = load i8*, i8** %6, align 8
  %269 = load i8, i8* %268, align 1
  %270 = sext i8 %269 to i32
  %271 = icmp ne i32 %267, %270
  br i1 %271, label %272, label %274

272:                                              ; preds = %264
  %273 = load i32, i32* @qfalse, align 4
  store i32 %273, i32* %4, align 4
  store i32 1, i32* %13, align 4
  br label %297

274:                                              ; preds = %264
  br label %286

275:                                              ; preds = %261
  %276 = load i8*, i8** %5, align 8
  %277 = load i8, i8* %276, align 1
  %278 = call i64 @toupper(i8 signext %277)
  %279 = load i8*, i8** %6, align 8
  %280 = load i8, i8* %279, align 1
  %281 = call i64 @toupper(i8 signext %280)
  %282 = icmp ne i64 %278, %281
  br i1 %282, label %283, label %285

283:                                              ; preds = %275
  %284 = load i32, i32* @qfalse, align 4
  store i32 %284, i32* %4, align 4
  store i32 1, i32* %13, align 4
  br label %297

285:                                              ; preds = %275
  br label %286

286:                                              ; preds = %285, %274
  %287 = load i8*, i8** %5, align 8
  %288 = getelementptr inbounds i8, i8* %287, i32 1
  store i8* %288, i8** %5, align 8
  %289 = load i8*, i8** %6, align 8
  %290 = getelementptr inbounds i8, i8* %289, i32 1
  store i8* %290, i8** %6, align 8
  br label %291

291:                                              ; preds = %286, %256
  br label %292

292:                                              ; preds = %291, %97
  br label %293

293:                                              ; preds = %292, %81
  br label %294

294:                                              ; preds = %293, %75
  br label %18

295:                                              ; preds = %18
  %296 = load i32, i32* @qtrue, align 4
  store i32 %296, i32* %4, align 4
  store i32 1, i32* %13, align 4
  br label %297

297:                                              ; preds = %295, %283, %272, %234, %68
  %298 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %298)
  %299 = load i32, i32* %4, align 4
  ret i32 %299
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @strlen(i8*) #2

declare dso_local i8* @Com_StringContains(i8*, i8*, i32) #2

declare dso_local i64 @toupper(i8 signext) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
