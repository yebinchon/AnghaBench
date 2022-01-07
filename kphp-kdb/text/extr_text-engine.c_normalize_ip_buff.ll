; ModuleID = '/home/carl/AnghaBench/kphp-kdb/text/extr_text-engine.c_normalize_ip_buff.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/text/extr_text-engine.c_normalize_ip_buff.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@normalize_ip_buff.aux_buff1 = internal global [64 x i8] zeroinitializer, align 16
@normalize_ip_buff.aux_buff2 = internal global [64 x i8] zeroinitializer, align 16
@ip_buff = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @normalize_ip_buff() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i8, align 1
  %16 = load i8*, i8** @ip_buff, align 8
  store i8* %16, i8** %2, align 8
  %17 = load i8*, i8** %2, align 8
  %18 = call i32 @strlen(i8* %17)
  store i32 %18, i32* %5, align 4
  store i32 0, i32* %6, align 4
  store i32 0, i32* %3, align 4
  br label %19

19:                                               ; preds = %35, %0
  %20 = load i32, i32* %3, align 4
  %21 = load i32, i32* %5, align 4
  %22 = icmp slt i32 %20, %21
  br i1 %22, label %23, label %38

23:                                               ; preds = %19
  %24 = load i8*, i8** %2, align 8
  %25 = load i32, i32* %3, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i8, i8* %24, i64 %26
  %28 = load i8, i8* %27, align 1
  %29 = sext i8 %28 to i32
  %30 = icmp eq i32 %29, 58
  br i1 %30, label %31, label %34

31:                                               ; preds = %23
  %32 = load i32, i32* %6, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %6, align 4
  br label %34

34:                                               ; preds = %31, %23
  br label %35

35:                                               ; preds = %34
  %36 = load i32, i32* %3, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %3, align 4
  br label %19

38:                                               ; preds = %19
  %39 = load i32, i32* %6, align 4
  %40 = icmp slt i32 %39, 2
  br i1 %40, label %44, label %41

41:                                               ; preds = %38
  %42 = load i32, i32* %6, align 4
  %43 = icmp sgt i32 %42, 7
  br i1 %43, label %44, label %80

44:                                               ; preds = %41, %38
  %45 = load i32, i32* %6, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %79, label %47

47:                                               ; preds = %44
  %48 = load i8*, i8** @ip_buff, align 8
  store i8* %48, i8** %7, align 8
  store i32 0, i32* %8, align 4
  br label %49

49:                                               ; preds = %65, %47
  %50 = load i8*, i8** %7, align 8
  %51 = load i8, i8* %50, align 1
  %52 = icmp ne i8 %51, 0
  br i1 %52, label %53, label %66

53:                                               ; preds = %49
  %54 = load i8*, i8** %7, align 8
  %55 = getelementptr inbounds i8, i8* %54, i32 1
  store i8* %55, i8** %7, align 8
  %56 = load i8, i8* %54, align 1
  %57 = sext i8 %56 to i32
  %58 = icmp eq i32 %57, 46
  br i1 %58, label %59, label %65

59:                                               ; preds = %53
  %60 = load i32, i32* %8, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %8, align 4
  %62 = icmp eq i32 %61, 3
  br i1 %62, label %63, label %64

63:                                               ; preds = %59
  br label %66

64:                                               ; preds = %59
  br label %65

65:                                               ; preds = %64, %53
  br label %49

66:                                               ; preds = %63, %49
  %67 = load i8*, i8** %7, align 8
  store i8 0, i8* %67, align 1
  %68 = load i32, i32* %8, align 4
  %69 = icmp slt i32 %68, 3
  br i1 %69, label %77, label %70

70:                                               ; preds = %66
  %71 = load i8*, i8** %7, align 8
  %72 = load i8*, i8** @ip_buff, align 8
  %73 = ptrtoint i8* %71 to i64
  %74 = ptrtoint i8* %72 to i64
  %75 = sub i64 %73, %74
  %76 = icmp sgt i64 %75, 12
  br i1 %76, label %77, label %78

77:                                               ; preds = %70, %66
  store i32 -1, i32* %1, align 4
  br label %284

78:                                               ; preds = %70
  store i32 0, i32* %1, align 4
  br label %284

79:                                               ; preds = %44
  store i32 -1, i32* %1, align 4
  br label %284

80:                                               ; preds = %41
  %81 = load i32, i32* %5, align 4
  %82 = icmp sge i32 %81, 2
  br i1 %82, label %83, label %101

83:                                               ; preds = %80
  %84 = load i8*, i8** %2, align 8
  %85 = load i8, i8* %84, align 1
  %86 = sext i8 %85 to i32
  %87 = icmp eq i32 %86, 58
  br i1 %87, label %88, label %101

88:                                               ; preds = %83
  %89 = load i8*, i8** %2, align 8
  %90 = getelementptr inbounds i8, i8* %89, i64 1
  %91 = load i8, i8* %90, align 1
  %92 = sext i8 %91 to i32
  %93 = icmp eq i32 %92, 58
  br i1 %93, label %94, label %101

94:                                               ; preds = %88
  %95 = load i8*, i8** %2, align 8
  %96 = getelementptr inbounds i8, i8* %95, i32 1
  store i8* %96, i8** %2, align 8
  %97 = load i32, i32* %5, align 4
  %98 = add nsw i32 %97, -1
  store i32 %98, i32* %5, align 4
  %99 = load i32, i32* %6, align 4
  %100 = add nsw i32 %99, -1
  store i32 %100, i32* %6, align 4
  br label %132

101:                                              ; preds = %88, %83, %80
  %102 = load i32, i32* %5, align 4
  %103 = icmp sge i32 %102, 2
  br i1 %103, label %104, label %131

104:                                              ; preds = %101
  %105 = load i8*, i8** %2, align 8
  %106 = load i32, i32* %5, align 4
  %107 = sub nsw i32 %106, 2
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds i8, i8* %105, i64 %108
  %110 = load i8, i8* %109, align 1
  %111 = sext i8 %110 to i32
  %112 = icmp eq i32 %111, 58
  br i1 %112, label %113, label %131

113:                                              ; preds = %104
  %114 = load i8*, i8** %2, align 8
  %115 = load i32, i32* %5, align 4
  %116 = sub nsw i32 %115, 1
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds i8, i8* %114, i64 %117
  %119 = load i8, i8* %118, align 1
  %120 = sext i8 %119 to i32
  %121 = icmp eq i32 %120, 58
  br i1 %121, label %122, label %131

122:                                              ; preds = %113
  %123 = load i32, i32* %5, align 4
  %124 = add nsw i32 %123, -1
  store i32 %124, i32* %5, align 4
  %125 = load i32, i32* %6, align 4
  %126 = add nsw i32 %125, -1
  store i32 %126, i32* %6, align 4
  %127 = load i8*, i8** %2, align 8
  %128 = load i32, i32* %5, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds i8, i8* %127, i64 %129
  store i8 0, i8* %130, align 1
  br label %131

131:                                              ; preds = %122, %113, %104, %101
  br label %132

132:                                              ; preds = %131, %94
  store i8* getelementptr inbounds ([64 x i8], [64 x i8]* @normalize_ip_buff.aux_buff1, i64 0, i64 0), i8** %9, align 8
  %133 = load i8*, i8** %2, align 8
  %134 = load i32, i32* %5, align 4
  %135 = add nsw i32 %134, 1
  %136 = call i32 @memcpy(i8* getelementptr inbounds ([64 x i8], [64 x i8]* @normalize_ip_buff.aux_buff2, i64 0, i64 0), i8* %133, i32 %135)
  store i8* null, i8** %10, align 8
  store i8* getelementptr inbounds ([64 x i8], [64 x i8]* @normalize_ip_buff.aux_buff2, i64 0, i64 0), i8** %11, align 8
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  br label %137

137:                                              ; preds = %270, %132
  %138 = load i8*, i8** %11, align 8
  %139 = icmp ne i8* %138, null
  br i1 %139, label %140, label %271

140:                                              ; preds = %137
  %141 = load i8*, i8** %11, align 8
  store i8* %141, i8** %10, align 8
  br label %142

142:                                              ; preds = %154, %140
  %143 = load i8*, i8** %11, align 8
  %144 = load i8, i8* %143, align 1
  %145 = sext i8 %144 to i32
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %147, label %152

147:                                              ; preds = %142
  %148 = load i8*, i8** %11, align 8
  %149 = load i8, i8* %148, align 1
  %150 = sext i8 %149 to i32
  %151 = icmp ne i32 %150, 58
  br label %152

152:                                              ; preds = %147, %142
  %153 = phi i1 [ false, %142 ], [ %151, %147 ]
  br i1 %153, label %154, label %157

154:                                              ; preds = %152
  %155 = load i8*, i8** %11, align 8
  %156 = getelementptr inbounds i8, i8* %155, i32 1
  store i8* %156, i8** %11, align 8
  br label %142

157:                                              ; preds = %152
  %158 = load i8*, i8** %11, align 8
  %159 = load i8*, i8** %10, align 8
  %160 = ptrtoint i8* %158 to i64
  %161 = ptrtoint i8* %159 to i64
  %162 = sub i64 %160, %161
  %163 = trunc i64 %162 to i32
  store i32 %163, i32* %14, align 4
  %164 = load i8*, i8** %11, align 8
  %165 = load i8, i8* %164, align 1
  %166 = icmp ne i8 %165, 0
  br i1 %166, label %167, label %171

167:                                              ; preds = %157
  %168 = load i8*, i8** %11, align 8
  store i8 0, i8* %168, align 1
  %169 = load i8*, i8** %11, align 8
  %170 = getelementptr inbounds i8, i8* %169, i32 1
  store i8* %170, i8** %11, align 8
  br label %172

171:                                              ; preds = %157
  store i8* null, i8** %11, align 8
  br label %172

172:                                              ; preds = %171, %167
  %173 = load i32, i32* %14, align 4
  %174 = icmp sgt i32 %173, 4
  br i1 %174, label %175, label %176

175:                                              ; preds = %172
  store i32 -1, i32* %1, align 4
  br label %284

176:                                              ; preds = %172
  %177 = load i32, i32* %14, align 4
  %178 = icmp ne i32 %177, 0
  br i1 %178, label %214, label %179

179:                                              ; preds = %176
  %180 = load i32, i32* %13, align 4
  %181 = icmp ne i32 %180, 0
  br i1 %181, label %182, label %183

182:                                              ; preds = %179
  store i32 -1, i32* %1, align 4
  br label %284

183:                                              ; preds = %179
  %184 = load i32, i32* %13, align 4
  %185 = add nsw i32 %184, 1
  store i32 %185, i32* %13, align 4
  store i32 0, i32* %3, align 4
  br label %186

186:                                              ; preds = %210, %183
  %187 = load i32, i32* %3, align 4
  %188 = load i32, i32* %6, align 4
  %189 = sub nsw i32 8, %188
  %190 = icmp slt i32 %187, %189
  br i1 %190, label %191, label %213

191:                                              ; preds = %186
  store i32 0, i32* %4, align 4
  br label %192

192:                                              ; preds = %198, %191
  %193 = load i32, i32* %4, align 4
  %194 = icmp slt i32 %193, 4
  br i1 %194, label %195, label %201

195:                                              ; preds = %192
  %196 = load i8*, i8** %9, align 8
  %197 = getelementptr inbounds i8, i8* %196, i32 1
  store i8* %197, i8** %9, align 8
  store i8 48, i8* %196, align 1
  br label %198

198:                                              ; preds = %195
  %199 = load i32, i32* %4, align 4
  %200 = add nsw i32 %199, 1
  store i32 %200, i32* %4, align 4
  br label %192

201:                                              ; preds = %192
  %202 = load i32, i32* %12, align 4
  %203 = add nsw i32 %202, 1
  store i32 %203, i32* %12, align 4
  %204 = load i32, i32* %12, align 4
  %205 = icmp slt i32 %204, 8
  br i1 %205, label %206, label %209

206:                                              ; preds = %201
  %207 = load i8*, i8** %9, align 8
  %208 = getelementptr inbounds i8, i8* %207, i32 1
  store i8* %208, i8** %9, align 8
  store i8 58, i8* %207, align 1
  br label %209

209:                                              ; preds = %206, %201
  br label %210

210:                                              ; preds = %209
  %211 = load i32, i32* %3, align 4
  %212 = add nsw i32 %211, 1
  store i32 %212, i32* %3, align 4
  br label %186

213:                                              ; preds = %186
  br label %270

214:                                              ; preds = %176
  store i32 0, i32* %4, align 4
  br label %215

215:                                              ; preds = %223, %214
  %216 = load i32, i32* %4, align 4
  %217 = load i32, i32* %14, align 4
  %218 = sub nsw i32 4, %217
  %219 = icmp slt i32 %216, %218
  br i1 %219, label %220, label %226

220:                                              ; preds = %215
  %221 = load i8*, i8** %9, align 8
  %222 = getelementptr inbounds i8, i8* %221, i32 1
  store i8* %222, i8** %9, align 8
  store i8 48, i8* %221, align 1
  br label %223

223:                                              ; preds = %220
  %224 = load i32, i32* %4, align 4
  %225 = add nsw i32 %224, 1
  store i32 %225, i32* %4, align 4
  br label %215

226:                                              ; preds = %215
  store i32 0, i32* %4, align 4
  br label %227

227:                                              ; preds = %258, %226
  %228 = load i32, i32* %4, align 4
  %229 = load i32, i32* %14, align 4
  %230 = icmp slt i32 %228, %229
  br i1 %230, label %231, label %261

231:                                              ; preds = %227
  %232 = load i8*, i8** %10, align 8
  %233 = load i32, i32* %4, align 4
  %234 = sext i32 %233 to i64
  %235 = getelementptr inbounds i8, i8* %232, i64 %234
  %236 = load i8, i8* %235, align 1
  %237 = call signext i8 @tolower(i8 signext %236)
  store i8 %237, i8* %15, align 1
  %238 = load i8, i8* %15, align 1
  %239 = sext i8 %238 to i32
  %240 = icmp sge i32 %239, 48
  br i1 %240, label %241, label %245

241:                                              ; preds = %231
  %242 = load i8, i8* %15, align 1
  %243 = sext i8 %242 to i32
  %244 = icmp sle i32 %243, 57
  br i1 %244, label %254, label %245

245:                                              ; preds = %241, %231
  %246 = load i8, i8* %15, align 1
  %247 = sext i8 %246 to i32
  %248 = icmp sge i32 %247, 97
  br i1 %248, label %249, label %253

249:                                              ; preds = %245
  %250 = load i8, i8* %15, align 1
  %251 = sext i8 %250 to i32
  %252 = icmp sle i32 %251, 102
  br i1 %252, label %254, label %253

253:                                              ; preds = %249, %245
  store i32 -1, i32* %1, align 4
  br label %284

254:                                              ; preds = %249, %241
  %255 = load i8, i8* %15, align 1
  %256 = load i8*, i8** %9, align 8
  %257 = getelementptr inbounds i8, i8* %256, i32 1
  store i8* %257, i8** %9, align 8
  store i8 %255, i8* %256, align 1
  br label %258

258:                                              ; preds = %254
  %259 = load i32, i32* %4, align 4
  %260 = add nsw i32 %259, 1
  store i32 %260, i32* %4, align 4
  br label %227

261:                                              ; preds = %227
  %262 = load i32, i32* %12, align 4
  %263 = add nsw i32 %262, 1
  store i32 %263, i32* %12, align 4
  %264 = load i32, i32* %12, align 4
  %265 = icmp slt i32 %264, 8
  br i1 %265, label %266, label %269

266:                                              ; preds = %261
  %267 = load i8*, i8** %9, align 8
  %268 = getelementptr inbounds i8, i8* %267, i32 1
  store i8* %268, i8** %9, align 8
  store i8 58, i8* %267, align 1
  br label %269

269:                                              ; preds = %266, %261
  br label %270

270:                                              ; preds = %269, %213
  br label %137

271:                                              ; preds = %137
  %272 = load i8*, i8** %9, align 8
  store i8 0, i8* %272, align 1
  %273 = load i32, i32* %12, align 4
  %274 = icmp eq i32 %273, 8
  br i1 %274, label %275, label %278

275:                                              ; preds = %271
  %276 = load i8*, i8** %9, align 8
  %277 = icmp eq i8* %276, getelementptr inbounds ([64 x i8], [64 x i8]* @normalize_ip_buff.aux_buff1, i64 0, i64 39)
  br label %278

278:                                              ; preds = %275, %271
  %279 = phi i1 [ false, %271 ], [ %277, %275 ]
  %280 = zext i1 %279 to i32
  %281 = call i32 @assert(i32 %280)
  %282 = load i8*, i8** @ip_buff, align 8
  %283 = call i32 @memcpy(i8* %282, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @normalize_ip_buff.aux_buff1, i64 0, i64 0), i32 40)
  store i32 0, i32* %1, align 4
  br label %284

284:                                              ; preds = %278, %253, %182, %175, %79, %78, %77
  %285 = load i32, i32* %1, align 4
  ret i32 %285
}

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local signext i8 @tolower(i8 signext) #1

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
