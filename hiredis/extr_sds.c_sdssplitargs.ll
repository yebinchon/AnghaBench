; ModuleID = '/home/carl/AnghaBench/hiredis/extr_sds.c_sdssplitargs.c'
source_filename = "/home/carl/AnghaBench/hiredis/extr_sds.c_sdssplitargs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [2 x i8] c"'\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8** @sdssplitargs(i8* %0, i32* %1) #0 {
  %3 = alloca i8**, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8**, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8, align 1
  %13 = alloca i8, align 1
  %14 = alloca i8**, align 8
  store i8* %0, i8** %4, align 8
  store i32* %1, i32** %5, align 8
  %15 = load i8*, i8** %4, align 8
  store i8* %15, i8** %6, align 8
  store i8* null, i8** %7, align 8
  store i8** null, i8*** %8, align 8
  %16 = load i32*, i32** %5, align 8
  store i32 0, i32* %16, align 4
  br label %17

17:                                               ; preds = %2, %252
  br label %18

18:                                               ; preds = %30, %17
  %19 = load i8*, i8** %6, align 8
  %20 = load i8, i8* %19, align 1
  %21 = sext i8 %20 to i32
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %28

23:                                               ; preds = %18
  %24 = load i8*, i8** %6, align 8
  %25 = load i8, i8* %24, align 1
  %26 = call i64 @isspace(i8 signext %25)
  %27 = icmp ne i64 %26, 0
  br label %28

28:                                               ; preds = %23, %18
  %29 = phi i1 [ false, %18 ], [ %27, %23 ]
  br i1 %29, label %30, label %33

30:                                               ; preds = %28
  %31 = load i8*, i8** %6, align 8
  %32 = getelementptr inbounds i8, i8* %31, i32 1
  store i8* %32, i8** %6, align 8
  br label %18

33:                                               ; preds = %28
  %34 = load i8*, i8** %6, align 8
  %35 = load i8, i8* %34, align 1
  %36 = icmp ne i8 %35, 0
  br i1 %36, label %37, label %245

37:                                               ; preds = %33
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %38 = load i8*, i8** %7, align 8
  %39 = icmp eq i8* %38, null
  br i1 %39, label %40, label %42

40:                                               ; preds = %37
  %41 = call i8* (...) @sdsempty()
  store i8* %41, i8** %7, align 8
  br label %42

42:                                               ; preds = %40, %37
  br label %43

43:                                               ; preds = %219, %42
  %44 = load i32, i32* %11, align 4
  %45 = icmp ne i32 %44, 0
  %46 = xor i1 %45, true
  br i1 %46, label %47, label %220

47:                                               ; preds = %43
  %48 = load i32, i32* %9, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %149

50:                                               ; preds = %47
  %51 = load i8*, i8** %6, align 8
  %52 = load i8, i8* %51, align 1
  %53 = sext i8 %52 to i32
  %54 = icmp eq i32 %53, 92
  br i1 %54, label %55, label %89

55:                                               ; preds = %50
  %56 = load i8*, i8** %6, align 8
  %57 = getelementptr inbounds i8, i8* %56, i64 1
  %58 = load i8, i8* %57, align 1
  %59 = sext i8 %58 to i32
  %60 = icmp eq i32 %59, 120
  br i1 %60, label %61, label %89

61:                                               ; preds = %55
  %62 = load i8*, i8** %6, align 8
  %63 = getelementptr inbounds i8, i8* %62, i64 2
  %64 = load i8, i8* %63, align 1
  %65 = call i64 @is_hex_digit(i8 signext %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %89

67:                                               ; preds = %61
  %68 = load i8*, i8** %6, align 8
  %69 = getelementptr inbounds i8, i8* %68, i64 3
  %70 = load i8, i8* %69, align 1
  %71 = call i64 @is_hex_digit(i8 signext %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %89

73:                                               ; preds = %67
  %74 = load i8*, i8** %6, align 8
  %75 = getelementptr inbounds i8, i8* %74, i64 2
  %76 = load i8, i8* %75, align 1
  %77 = call i32 @hex_digit_to_int(i8 signext %76)
  %78 = mul nsw i32 %77, 16
  %79 = load i8*, i8** %6, align 8
  %80 = getelementptr inbounds i8, i8* %79, i64 3
  %81 = load i8, i8* %80, align 1
  %82 = call i32 @hex_digit_to_int(i8 signext %81)
  %83 = add nsw i32 %78, %82
  %84 = trunc i32 %83 to i8
  store i8 %84, i8* %12, align 1
  %85 = load i8*, i8** %7, align 8
  %86 = call i8* @sdscatlen(i8* %85, i8* %12, i32 1)
  store i8* %86, i8** %7, align 8
  %87 = load i8*, i8** %6, align 8
  %88 = getelementptr inbounds i8, i8* %87, i64 3
  store i8* %88, i8** %6, align 8
  br label %148

89:                                               ; preds = %67, %61, %55, %50
  %90 = load i8*, i8** %6, align 8
  %91 = load i8, i8* %90, align 1
  %92 = sext i8 %91 to i32
  %93 = icmp eq i32 %92, 92
  br i1 %93, label %94, label %117

94:                                               ; preds = %89
  %95 = load i8*, i8** %6, align 8
  %96 = getelementptr inbounds i8, i8* %95, i64 1
  %97 = load i8, i8* %96, align 1
  %98 = sext i8 %97 to i32
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %117

100:                                              ; preds = %94
  %101 = load i8*, i8** %6, align 8
  %102 = getelementptr inbounds i8, i8* %101, i32 1
  store i8* %102, i8** %6, align 8
  %103 = load i8*, i8** %6, align 8
  %104 = load i8, i8* %103, align 1
  %105 = sext i8 %104 to i32
  switch i32 %105, label %111 [
    i32 110, label %106
    i32 114, label %107
    i32 116, label %108
    i32 98, label %109
    i32 97, label %110
  ]

106:                                              ; preds = %100
  store i8 10, i8* %13, align 1
  br label %114

107:                                              ; preds = %100
  store i8 13, i8* %13, align 1
  br label %114

108:                                              ; preds = %100
  store i8 9, i8* %13, align 1
  br label %114

109:                                              ; preds = %100
  store i8 8, i8* %13, align 1
  br label %114

110:                                              ; preds = %100
  store i8 7, i8* %13, align 1
  br label %114

111:                                              ; preds = %100
  %112 = load i8*, i8** %6, align 8
  %113 = load i8, i8* %112, align 1
  store i8 %113, i8* %13, align 1
  br label %114

114:                                              ; preds = %111, %110, %109, %108, %107, %106
  %115 = load i8*, i8** %7, align 8
  %116 = call i8* @sdscatlen(i8* %115, i8* %13, i32 1)
  store i8* %116, i8** %7, align 8
  br label %147

117:                                              ; preds = %94, %89
  %118 = load i8*, i8** %6, align 8
  %119 = load i8, i8* %118, align 1
  %120 = sext i8 %119 to i32
  %121 = icmp eq i32 %120, 34
  br i1 %121, label %122, label %136

122:                                              ; preds = %117
  %123 = load i8*, i8** %6, align 8
  %124 = getelementptr inbounds i8, i8* %123, i64 1
  %125 = load i8, i8* %124, align 1
  %126 = sext i8 %125 to i32
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %135

128:                                              ; preds = %122
  %129 = load i8*, i8** %6, align 8
  %130 = getelementptr inbounds i8, i8* %129, i64 1
  %131 = load i8, i8* %130, align 1
  %132 = call i64 @isspace(i8 signext %131)
  %133 = icmp ne i64 %132, 0
  br i1 %133, label %135, label %134

134:                                              ; preds = %128
  br label %253

135:                                              ; preds = %128, %122
  store i32 1, i32* %11, align 4
  br label %146

136:                                              ; preds = %117
  %137 = load i8*, i8** %6, align 8
  %138 = load i8, i8* %137, align 1
  %139 = icmp ne i8 %138, 0
  br i1 %139, label %141, label %140

140:                                              ; preds = %136
  br label %253

141:                                              ; preds = %136
  %142 = load i8*, i8** %7, align 8
  %143 = load i8*, i8** %6, align 8
  %144 = call i8* @sdscatlen(i8* %142, i8* %143, i32 1)
  store i8* %144, i8** %7, align 8
  br label %145

145:                                              ; preds = %141
  br label %146

146:                                              ; preds = %145, %135
  br label %147

147:                                              ; preds = %146, %114
  br label %148

148:                                              ; preds = %147, %73
  br label %212

149:                                              ; preds = %47
  %150 = load i32, i32* %10, align 4
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %152, label %199

152:                                              ; preds = %149
  %153 = load i8*, i8** %6, align 8
  %154 = load i8, i8* %153, align 1
  %155 = sext i8 %154 to i32
  %156 = icmp eq i32 %155, 92
  br i1 %156, label %157, label %168

157:                                              ; preds = %152
  %158 = load i8*, i8** %6, align 8
  %159 = getelementptr inbounds i8, i8* %158, i64 1
  %160 = load i8, i8* %159, align 1
  %161 = sext i8 %160 to i32
  %162 = icmp eq i32 %161, 39
  br i1 %162, label %163, label %168

163:                                              ; preds = %157
  %164 = load i8*, i8** %6, align 8
  %165 = getelementptr inbounds i8, i8* %164, i32 1
  store i8* %165, i8** %6, align 8
  %166 = load i8*, i8** %7, align 8
  %167 = call i8* @sdscatlen(i8* %166, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i32 1)
  store i8* %167, i8** %7, align 8
  br label %198

168:                                              ; preds = %157, %152
  %169 = load i8*, i8** %6, align 8
  %170 = load i8, i8* %169, align 1
  %171 = sext i8 %170 to i32
  %172 = icmp eq i32 %171, 39
  br i1 %172, label %173, label %187

173:                                              ; preds = %168
  %174 = load i8*, i8** %6, align 8
  %175 = getelementptr inbounds i8, i8* %174, i64 1
  %176 = load i8, i8* %175, align 1
  %177 = sext i8 %176 to i32
  %178 = icmp ne i32 %177, 0
  br i1 %178, label %179, label %186

179:                                              ; preds = %173
  %180 = load i8*, i8** %6, align 8
  %181 = getelementptr inbounds i8, i8* %180, i64 1
  %182 = load i8, i8* %181, align 1
  %183 = call i64 @isspace(i8 signext %182)
  %184 = icmp ne i64 %183, 0
  br i1 %184, label %186, label %185

185:                                              ; preds = %179
  br label %253

186:                                              ; preds = %179, %173
  store i32 1, i32* %11, align 4
  br label %197

187:                                              ; preds = %168
  %188 = load i8*, i8** %6, align 8
  %189 = load i8, i8* %188, align 1
  %190 = icmp ne i8 %189, 0
  br i1 %190, label %192, label %191

191:                                              ; preds = %187
  br label %253

192:                                              ; preds = %187
  %193 = load i8*, i8** %7, align 8
  %194 = load i8*, i8** %6, align 8
  %195 = call i8* @sdscatlen(i8* %193, i8* %194, i32 1)
  store i8* %195, i8** %7, align 8
  br label %196

196:                                              ; preds = %192
  br label %197

197:                                              ; preds = %196, %186
  br label %198

198:                                              ; preds = %197, %163
  br label %211

199:                                              ; preds = %149
  %200 = load i8*, i8** %6, align 8
  %201 = load i8, i8* %200, align 1
  %202 = sext i8 %201 to i32
  switch i32 %202, label %206 [
    i32 32, label %203
    i32 10, label %203
    i32 13, label %203
    i32 9, label %203
    i32 0, label %203
    i32 34, label %204
    i32 39, label %205
  ]

203:                                              ; preds = %199, %199, %199, %199, %199
  store i32 1, i32* %11, align 4
  br label %210

204:                                              ; preds = %199
  store i32 1, i32* %9, align 4
  br label %210

205:                                              ; preds = %199
  store i32 1, i32* %10, align 4
  br label %210

206:                                              ; preds = %199
  %207 = load i8*, i8** %7, align 8
  %208 = load i8*, i8** %6, align 8
  %209 = call i8* @sdscatlen(i8* %207, i8* %208, i32 1)
  store i8* %209, i8** %7, align 8
  br label %210

210:                                              ; preds = %206, %205, %204, %203
  br label %211

211:                                              ; preds = %210, %198
  br label %212

212:                                              ; preds = %211, %148
  %213 = load i8*, i8** %6, align 8
  %214 = load i8, i8* %213, align 1
  %215 = icmp ne i8 %214, 0
  br i1 %215, label %216, label %219

216:                                              ; preds = %212
  %217 = load i8*, i8** %6, align 8
  %218 = getelementptr inbounds i8, i8* %217, i32 1
  store i8* %218, i8** %6, align 8
  br label %219

219:                                              ; preds = %216, %212
  br label %43

220:                                              ; preds = %43
  %221 = load i8**, i8*** %8, align 8
  %222 = load i32*, i32** %5, align 8
  %223 = load i32, i32* %222, align 4
  %224 = add nsw i32 %223, 1
  %225 = sext i32 %224 to i64
  %226 = mul i64 %225, 8
  %227 = trunc i64 %226 to i32
  %228 = call i8** @s_realloc(i8** %221, i32 %227)
  store i8** %228, i8*** %14, align 8
  %229 = load i8**, i8*** %14, align 8
  %230 = icmp eq i8** %229, null
  br i1 %230, label %231, label %234

231:                                              ; preds = %220
  %232 = load i8**, i8*** %8, align 8
  %233 = call i32 @s_free(i8** %232)
  store i8** null, i8*** %3, align 8
  br label %277

234:                                              ; preds = %220
  %235 = load i8**, i8*** %14, align 8
  store i8** %235, i8*** %8, align 8
  %236 = load i8*, i8** %7, align 8
  %237 = load i8**, i8*** %8, align 8
  %238 = load i32*, i32** %5, align 8
  %239 = load i32, i32* %238, align 4
  %240 = sext i32 %239 to i64
  %241 = getelementptr inbounds i8*, i8** %237, i64 %240
  store i8* %236, i8** %241, align 8
  %242 = load i32*, i32** %5, align 8
  %243 = load i32, i32* %242, align 4
  %244 = add nsw i32 %243, 1
  store i32 %244, i32* %242, align 4
  store i8* null, i8** %7, align 8
  br label %252

245:                                              ; preds = %33
  %246 = load i8**, i8*** %8, align 8
  %247 = icmp eq i8** %246, null
  br i1 %247, label %248, label %250

248:                                              ; preds = %245
  %249 = call i8** @s_malloc(i32 8)
  store i8** %249, i8*** %8, align 8
  br label %250

250:                                              ; preds = %248, %245
  %251 = load i8**, i8*** %8, align 8
  store i8** %251, i8*** %3, align 8
  br label %277

252:                                              ; preds = %234
  br label %17

253:                                              ; preds = %191, %185, %140, %134
  br label %254

254:                                              ; preds = %259, %253
  %255 = load i32*, i32** %5, align 8
  %256 = load i32, i32* %255, align 4
  %257 = add nsw i32 %256, -1
  store i32 %257, i32* %255, align 4
  %258 = icmp ne i32 %256, 0
  br i1 %258, label %259, label %267

259:                                              ; preds = %254
  %260 = load i8**, i8*** %8, align 8
  %261 = load i32*, i32** %5, align 8
  %262 = load i32, i32* %261, align 4
  %263 = sext i32 %262 to i64
  %264 = getelementptr inbounds i8*, i8** %260, i64 %263
  %265 = load i8*, i8** %264, align 8
  %266 = call i32 @sdsfree(i8* %265)
  br label %254

267:                                              ; preds = %254
  %268 = load i8**, i8*** %8, align 8
  %269 = call i32 @s_free(i8** %268)
  %270 = load i8*, i8** %7, align 8
  %271 = icmp ne i8* %270, null
  br i1 %271, label %272, label %275

272:                                              ; preds = %267
  %273 = load i8*, i8** %7, align 8
  %274 = call i32 @sdsfree(i8* %273)
  br label %275

275:                                              ; preds = %272, %267
  %276 = load i32*, i32** %5, align 8
  store i32 0, i32* %276, align 4
  store i8** null, i8*** %3, align 8
  br label %277

277:                                              ; preds = %275, %250, %231
  %278 = load i8**, i8*** %3, align 8
  ret i8** %278
}

declare dso_local i64 @isspace(i8 signext) #1

declare dso_local i8* @sdsempty(...) #1

declare dso_local i64 @is_hex_digit(i8 signext) #1

declare dso_local i32 @hex_digit_to_int(i8 signext) #1

declare dso_local i8* @sdscatlen(i8*, i8*, i32) #1

declare dso_local i8** @s_realloc(i8**, i32) #1

declare dso_local i32 @s_free(i8**) #1

declare dso_local i8** @s_malloc(i32) #1

declare dso_local i32 @sdsfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
