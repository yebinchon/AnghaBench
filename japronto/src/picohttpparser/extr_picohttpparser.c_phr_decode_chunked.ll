; ModuleID = '/home/carl/AnghaBench/japronto/src/picohttpparser/extr_picohttpparser.c_phr_decode_chunked.c'
source_filename = "/home/carl/AnghaBench/japronto/src/picohttpparser/extr_picohttpparser.c_phr_decode_chunked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.phr_chunked_decoder = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [19 x i8] c"decoder is corrupt\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @phr_decode_chunked(%struct.phr_chunked_decoder* %0, i8* %1, i64* %2) #0 {
  %4 = alloca %struct.phr_chunked_decoder*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  store %struct.phr_chunked_decoder* %0, %struct.phr_chunked_decoder** %4, align 8
  store i8* %1, i8** %5, align 8
  store i64* %2, i64** %6, align 8
  store i64 0, i64* %7, align 8
  store i64 0, i64* %8, align 8
  %13 = load i64*, i64** %6, align 8
  %14 = load i64, i64* %13, align 8
  store i64 %14, i64* %9, align 8
  store i32 -2, i32* %10, align 4
  br label %15

15:                                               ; preds = %3, %260
  %16 = load %struct.phr_chunked_decoder*, %struct.phr_chunked_decoder** %4, align 8
  %17 = getelementptr inbounds %struct.phr_chunked_decoder, %struct.phr_chunked_decoder* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  switch i32 %18, label %258 [
    i32 130, label %19
    i32 131, label %67
    i32 132, label %104
    i32 133, label %174
    i32 129, label %205
    i32 128, label %235
  ]

19:                                               ; preds = %15
  br label %20

20:                                               ; preds = %59, %19
  %21 = load i64, i64* %8, align 8
  %22 = load i64, i64* %9, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %20
  br label %266

25:                                               ; preds = %20
  %26 = load i8*, i8** %5, align 8
  %27 = load i64, i64* %8, align 8
  %28 = getelementptr inbounds i8, i8* %26, i64 %27
  %29 = load i8, i8* %28, align 1
  %30 = call i32 @decode_hex(i8 signext %29)
  store i32 %30, i32* %11, align 4
  %31 = icmp eq i32 %30, -1
  br i1 %31, label %32, label %39

32:                                               ; preds = %25
  %33 = load %struct.phr_chunked_decoder*, %struct.phr_chunked_decoder** %4, align 8
  %34 = getelementptr inbounds %struct.phr_chunked_decoder, %struct.phr_chunked_decoder* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %32
  store i32 -1, i32* %10, align 4
  br label %266

38:                                               ; preds = %32
  br label %62

39:                                               ; preds = %25
  %40 = load %struct.phr_chunked_decoder*, %struct.phr_chunked_decoder** %4, align 8
  %41 = getelementptr inbounds %struct.phr_chunked_decoder, %struct.phr_chunked_decoder* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = sext i32 %42 to i64
  %44 = icmp eq i64 %43, 16
  br i1 %44, label %45, label %46

45:                                               ; preds = %39
  store i32 -1, i32* %10, align 4
  br label %266

46:                                               ; preds = %39
  %47 = load %struct.phr_chunked_decoder*, %struct.phr_chunked_decoder** %4, align 8
  %48 = getelementptr inbounds %struct.phr_chunked_decoder, %struct.phr_chunked_decoder* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 4
  %50 = mul nsw i32 %49, 16
  %51 = load i32, i32* %11, align 4
  %52 = add nsw i32 %50, %51
  %53 = load %struct.phr_chunked_decoder*, %struct.phr_chunked_decoder** %4, align 8
  %54 = getelementptr inbounds %struct.phr_chunked_decoder, %struct.phr_chunked_decoder* %53, i32 0, i32 2
  store i32 %52, i32* %54, align 4
  %55 = load %struct.phr_chunked_decoder*, %struct.phr_chunked_decoder** %4, align 8
  %56 = getelementptr inbounds %struct.phr_chunked_decoder, %struct.phr_chunked_decoder* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %56, align 4
  br label %59

59:                                               ; preds = %46
  %60 = load i64, i64* %8, align 8
  %61 = add i64 %60, 1
  store i64 %61, i64* %8, align 8
  br label %20

62:                                               ; preds = %38
  %63 = load %struct.phr_chunked_decoder*, %struct.phr_chunked_decoder** %4, align 8
  %64 = getelementptr inbounds %struct.phr_chunked_decoder, %struct.phr_chunked_decoder* %63, i32 0, i32 1
  store i32 0, i32* %64, align 4
  %65 = load %struct.phr_chunked_decoder*, %struct.phr_chunked_decoder** %4, align 8
  %66 = getelementptr inbounds %struct.phr_chunked_decoder, %struct.phr_chunked_decoder* %65, i32 0, i32 0
  store i32 131, i32* %66, align 4
  br label %67

67:                                               ; preds = %15, %62
  br label %68

68:                                               ; preds = %82, %67
  %69 = load i64, i64* %8, align 8
  %70 = load i64, i64* %9, align 8
  %71 = icmp eq i64 %69, %70
  br i1 %71, label %72, label %73

72:                                               ; preds = %68
  br label %266

73:                                               ; preds = %68
  %74 = load i8*, i8** %5, align 8
  %75 = load i64, i64* %8, align 8
  %76 = getelementptr inbounds i8, i8* %74, i64 %75
  %77 = load i8, i8* %76, align 1
  %78 = sext i8 %77 to i32
  %79 = icmp eq i32 %78, 10
  br i1 %79, label %80, label %81

80:                                               ; preds = %73
  br label %85

81:                                               ; preds = %73
  br label %82

82:                                               ; preds = %81
  %83 = load i64, i64* %8, align 8
  %84 = add i64 %83, 1
  store i64 %84, i64* %8, align 8
  br label %68

85:                                               ; preds = %80
  %86 = load i64, i64* %8, align 8
  %87 = add i64 %86, 1
  store i64 %87, i64* %8, align 8
  %88 = load %struct.phr_chunked_decoder*, %struct.phr_chunked_decoder** %4, align 8
  %89 = getelementptr inbounds %struct.phr_chunked_decoder, %struct.phr_chunked_decoder* %88, i32 0, i32 2
  %90 = load i32, i32* %89, align 4
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %92, label %101

92:                                               ; preds = %85
  %93 = load %struct.phr_chunked_decoder*, %struct.phr_chunked_decoder** %4, align 8
  %94 = getelementptr inbounds %struct.phr_chunked_decoder, %struct.phr_chunked_decoder* %93, i32 0, i32 3
  %95 = load i32, i32* %94, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %100

97:                                               ; preds = %92
  %98 = load %struct.phr_chunked_decoder*, %struct.phr_chunked_decoder** %4, align 8
  %99 = getelementptr inbounds %struct.phr_chunked_decoder, %struct.phr_chunked_decoder* %98, i32 0, i32 0
  store i32 129, i32* %99, align 4
  br label %260

100:                                              ; preds = %92
  br label %261

101:                                              ; preds = %85
  %102 = load %struct.phr_chunked_decoder*, %struct.phr_chunked_decoder** %4, align 8
  %103 = getelementptr inbounds %struct.phr_chunked_decoder, %struct.phr_chunked_decoder* %102, i32 0, i32 0
  store i32 132, i32* %103, align 4
  br label %104

104:                                              ; preds = %15, %101
  %105 = load i64, i64* %9, align 8
  %106 = load i64, i64* %8, align 8
  %107 = sub i64 %105, %106
  store i64 %107, i64* %12, align 8
  %108 = load i64, i64* %12, align 8
  %109 = load %struct.phr_chunked_decoder*, %struct.phr_chunked_decoder** %4, align 8
  %110 = getelementptr inbounds %struct.phr_chunked_decoder, %struct.phr_chunked_decoder* %109, i32 0, i32 2
  %111 = load i32, i32* %110, align 4
  %112 = sext i32 %111 to i64
  %113 = icmp ult i64 %108, %112
  br i1 %113, label %114, label %141

114:                                              ; preds = %104
  %115 = load i64, i64* %7, align 8
  %116 = load i64, i64* %8, align 8
  %117 = icmp ne i64 %115, %116
  br i1 %117, label %118, label %127

118:                                              ; preds = %114
  %119 = load i8*, i8** %5, align 8
  %120 = load i64, i64* %7, align 8
  %121 = getelementptr inbounds i8, i8* %119, i64 %120
  %122 = load i8*, i8** %5, align 8
  %123 = load i64, i64* %8, align 8
  %124 = getelementptr inbounds i8, i8* %122, i64 %123
  %125 = load i64, i64* %12, align 8
  %126 = call i32 @memmove(i8* %121, i8* %124, i64 %125)
  br label %127

127:                                              ; preds = %118, %114
  %128 = load i64, i64* %12, align 8
  %129 = load i64, i64* %8, align 8
  %130 = add i64 %129, %128
  store i64 %130, i64* %8, align 8
  %131 = load i64, i64* %12, align 8
  %132 = load i64, i64* %7, align 8
  %133 = add i64 %132, %131
  store i64 %133, i64* %7, align 8
  %134 = load i64, i64* %12, align 8
  %135 = load %struct.phr_chunked_decoder*, %struct.phr_chunked_decoder** %4, align 8
  %136 = getelementptr inbounds %struct.phr_chunked_decoder, %struct.phr_chunked_decoder* %135, i32 0, i32 2
  %137 = load i32, i32* %136, align 4
  %138 = sext i32 %137 to i64
  %139 = sub i64 %138, %134
  %140 = trunc i64 %139 to i32
  store i32 %140, i32* %136, align 4
  br label %266

141:                                              ; preds = %104
  %142 = load i64, i64* %7, align 8
  %143 = load i64, i64* %8, align 8
  %144 = icmp ne i64 %142, %143
  br i1 %144, label %145, label %157

145:                                              ; preds = %141
  %146 = load i8*, i8** %5, align 8
  %147 = load i64, i64* %7, align 8
  %148 = getelementptr inbounds i8, i8* %146, i64 %147
  %149 = load i8*, i8** %5, align 8
  %150 = load i64, i64* %8, align 8
  %151 = getelementptr inbounds i8, i8* %149, i64 %150
  %152 = load %struct.phr_chunked_decoder*, %struct.phr_chunked_decoder** %4, align 8
  %153 = getelementptr inbounds %struct.phr_chunked_decoder, %struct.phr_chunked_decoder* %152, i32 0, i32 2
  %154 = load i32, i32* %153, align 4
  %155 = sext i32 %154 to i64
  %156 = call i32 @memmove(i8* %148, i8* %151, i64 %155)
  br label %157

157:                                              ; preds = %145, %141
  %158 = load %struct.phr_chunked_decoder*, %struct.phr_chunked_decoder** %4, align 8
  %159 = getelementptr inbounds %struct.phr_chunked_decoder, %struct.phr_chunked_decoder* %158, i32 0, i32 2
  %160 = load i32, i32* %159, align 4
  %161 = sext i32 %160 to i64
  %162 = load i64, i64* %8, align 8
  %163 = add i64 %162, %161
  store i64 %163, i64* %8, align 8
  %164 = load %struct.phr_chunked_decoder*, %struct.phr_chunked_decoder** %4, align 8
  %165 = getelementptr inbounds %struct.phr_chunked_decoder, %struct.phr_chunked_decoder* %164, i32 0, i32 2
  %166 = load i32, i32* %165, align 4
  %167 = sext i32 %166 to i64
  %168 = load i64, i64* %7, align 8
  %169 = add i64 %168, %167
  store i64 %169, i64* %7, align 8
  %170 = load %struct.phr_chunked_decoder*, %struct.phr_chunked_decoder** %4, align 8
  %171 = getelementptr inbounds %struct.phr_chunked_decoder, %struct.phr_chunked_decoder* %170, i32 0, i32 2
  store i32 0, i32* %171, align 4
  %172 = load %struct.phr_chunked_decoder*, %struct.phr_chunked_decoder** %4, align 8
  %173 = getelementptr inbounds %struct.phr_chunked_decoder, %struct.phr_chunked_decoder* %172, i32 0, i32 0
  store i32 133, i32* %173, align 4
  br label %174

174:                                              ; preds = %15, %157
  br label %175

175:                                              ; preds = %189, %174
  %176 = load i64, i64* %8, align 8
  %177 = load i64, i64* %9, align 8
  %178 = icmp eq i64 %176, %177
  br i1 %178, label %179, label %180

179:                                              ; preds = %175
  br label %266

180:                                              ; preds = %175
  %181 = load i8*, i8** %5, align 8
  %182 = load i64, i64* %8, align 8
  %183 = getelementptr inbounds i8, i8* %181, i64 %182
  %184 = load i8, i8* %183, align 1
  %185 = sext i8 %184 to i32
  %186 = icmp ne i32 %185, 13
  br i1 %186, label %187, label %188

187:                                              ; preds = %180
  br label %192

188:                                              ; preds = %180
  br label %189

189:                                              ; preds = %188
  %190 = load i64, i64* %8, align 8
  %191 = add i64 %190, 1
  store i64 %191, i64* %8, align 8
  br label %175

192:                                              ; preds = %187
  %193 = load i8*, i8** %5, align 8
  %194 = load i64, i64* %8, align 8
  %195 = getelementptr inbounds i8, i8* %193, i64 %194
  %196 = load i8, i8* %195, align 1
  %197 = sext i8 %196 to i32
  %198 = icmp ne i32 %197, 10
  br i1 %198, label %199, label %200

199:                                              ; preds = %192
  store i32 -1, i32* %10, align 4
  br label %266

200:                                              ; preds = %192
  %201 = load i64, i64* %8, align 8
  %202 = add i64 %201, 1
  store i64 %202, i64* %8, align 8
  %203 = load %struct.phr_chunked_decoder*, %struct.phr_chunked_decoder** %4, align 8
  %204 = getelementptr inbounds %struct.phr_chunked_decoder, %struct.phr_chunked_decoder* %203, i32 0, i32 0
  store i32 130, i32* %204, align 4
  br label %260

205:                                              ; preds = %15
  br label %206

206:                                              ; preds = %220, %205
  %207 = load i64, i64* %8, align 8
  %208 = load i64, i64* %9, align 8
  %209 = icmp eq i64 %207, %208
  br i1 %209, label %210, label %211

210:                                              ; preds = %206
  br label %266

211:                                              ; preds = %206
  %212 = load i8*, i8** %5, align 8
  %213 = load i64, i64* %8, align 8
  %214 = getelementptr inbounds i8, i8* %212, i64 %213
  %215 = load i8, i8* %214, align 1
  %216 = sext i8 %215 to i32
  %217 = icmp ne i32 %216, 13
  br i1 %217, label %218, label %219

218:                                              ; preds = %211
  br label %223

219:                                              ; preds = %211
  br label %220

220:                                              ; preds = %219
  %221 = load i64, i64* %8, align 8
  %222 = add i64 %221, 1
  store i64 %222, i64* %8, align 8
  br label %206

223:                                              ; preds = %218
  %224 = load i8*, i8** %5, align 8
  %225 = load i64, i64* %8, align 8
  %226 = add i64 %225, 1
  store i64 %226, i64* %8, align 8
  %227 = getelementptr inbounds i8, i8* %224, i64 %225
  %228 = load i8, i8* %227, align 1
  %229 = sext i8 %228 to i32
  %230 = icmp eq i32 %229, 10
  br i1 %230, label %231, label %232

231:                                              ; preds = %223
  br label %261

232:                                              ; preds = %223
  %233 = load %struct.phr_chunked_decoder*, %struct.phr_chunked_decoder** %4, align 8
  %234 = getelementptr inbounds %struct.phr_chunked_decoder, %struct.phr_chunked_decoder* %233, i32 0, i32 0
  store i32 128, i32* %234, align 4
  br label %235

235:                                              ; preds = %15, %232
  br label %236

236:                                              ; preds = %250, %235
  %237 = load i64, i64* %8, align 8
  %238 = load i64, i64* %9, align 8
  %239 = icmp eq i64 %237, %238
  br i1 %239, label %240, label %241

240:                                              ; preds = %236
  br label %266

241:                                              ; preds = %236
  %242 = load i8*, i8** %5, align 8
  %243 = load i64, i64* %8, align 8
  %244 = getelementptr inbounds i8, i8* %242, i64 %243
  %245 = load i8, i8* %244, align 1
  %246 = sext i8 %245 to i32
  %247 = icmp eq i32 %246, 10
  br i1 %247, label %248, label %249

248:                                              ; preds = %241
  br label %253

249:                                              ; preds = %241
  br label %250

250:                                              ; preds = %249
  %251 = load i64, i64* %8, align 8
  %252 = add i64 %251, 1
  store i64 %252, i64* %8, align 8
  br label %236

253:                                              ; preds = %248
  %254 = load i64, i64* %8, align 8
  %255 = add i64 %254, 1
  store i64 %255, i64* %8, align 8
  %256 = load %struct.phr_chunked_decoder*, %struct.phr_chunked_decoder** %4, align 8
  %257 = getelementptr inbounds %struct.phr_chunked_decoder, %struct.phr_chunked_decoder* %256, i32 0, i32 0
  store i32 129, i32* %257, align 4
  br label %260

258:                                              ; preds = %15
  %259 = call i32 @assert(i32 0)
  br label %260

260:                                              ; preds = %258, %253, %200, %97
  br label %15

261:                                              ; preds = %231, %100
  %262 = load i64, i64* %9, align 8
  %263 = load i64, i64* %8, align 8
  %264 = sub i64 %262, %263
  %265 = trunc i64 %264 to i32
  store i32 %265, i32* %10, align 4
  br label %266

266:                                              ; preds = %261, %240, %210, %199, %179, %127, %72, %45, %37, %24
  %267 = load i64, i64* %7, align 8
  %268 = load i64, i64* %8, align 8
  %269 = icmp ne i64 %267, %268
  br i1 %269, label %270, label %281

270:                                              ; preds = %266
  %271 = load i8*, i8** %5, align 8
  %272 = load i64, i64* %7, align 8
  %273 = getelementptr inbounds i8, i8* %271, i64 %272
  %274 = load i8*, i8** %5, align 8
  %275 = load i64, i64* %8, align 8
  %276 = getelementptr inbounds i8, i8* %274, i64 %275
  %277 = load i64, i64* %9, align 8
  %278 = load i64, i64* %8, align 8
  %279 = sub i64 %277, %278
  %280 = call i32 @memmove(i8* %273, i8* %276, i64 %279)
  br label %281

281:                                              ; preds = %270, %266
  %282 = load i64, i64* %7, align 8
  %283 = load i64*, i64** %6, align 8
  store i64 %282, i64* %283, align 8
  %284 = load i32, i32* %10, align 4
  ret i32 %284
}

declare dso_local i32 @decode_hex(i8 signext) #1

declare dso_local i32 @memmove(i8*, i8*, i64) #1

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
