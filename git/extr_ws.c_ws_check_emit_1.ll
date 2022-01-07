; ModuleID = '/home/carl/AnghaBench/git/extr_ws.c_ws_check_emit_1.c'
source_filename = "/home/carl/AnghaBench/git/extr_ws.c_ws_check_emit_1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@WS_CR_AT_EOL = common dso_local global i32 0, align 4
@WS_BLANK_AT_EOL = common dso_local global i32 0, align 4
@WS_SPACE_BEFORE_TAB = common dso_local global i32 0, align 4
@WS_TAB_IN_INDENT = common dso_local global i32 0, align 4
@WS_INDENT_WITH_NON_TAB = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, i32, i32*, i8*, i8*, i8*)* @ws_check_emit_1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ws_check_emit_1(i8* %0, i32 %1, i32 %2, i32* %3, i8* %4, i8* %5, i8* %6) #0 {
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store i8* %0, i8** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32* %3, i32** %11, align 8
  store i8* %4, i8** %12, align 8
  store i8* %5, i8** %13, align 8
  store i8* %6, i8** %14, align 8
  store i32 0, i32* %15, align 4
  store i32 0, i32* %16, align 4
  store i32 -1, i32* %17, align 4
  store i32 0, i32* %18, align 4
  store i32 0, i32* %19, align 4
  %21 = load i32, i32* %9, align 4
  %22 = icmp sgt i32 %21, 0
  br i1 %22, label %23, label %35

23:                                               ; preds = %7
  %24 = load i8*, i8** %8, align 8
  %25 = load i32, i32* %9, align 4
  %26 = sub nsw i32 %25, 1
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i8, i8* %24, i64 %27
  %29 = load i8, i8* %28, align 1
  %30 = sext i8 %29 to i32
  %31 = icmp eq i32 %30, 10
  br i1 %31, label %32, label %35

32:                                               ; preds = %23
  store i32 1, i32* %18, align 4
  %33 = load i32, i32* %9, align 4
  %34 = add nsw i32 %33, -1
  store i32 %34, i32* %9, align 4
  br label %35

35:                                               ; preds = %32, %23, %7
  %36 = load i32, i32* %10, align 4
  %37 = load i32, i32* @WS_CR_AT_EOL, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %55

40:                                               ; preds = %35
  %41 = load i32, i32* %9, align 4
  %42 = icmp sgt i32 %41, 0
  br i1 %42, label %43, label %55

43:                                               ; preds = %40
  %44 = load i8*, i8** %8, align 8
  %45 = load i32, i32* %9, align 4
  %46 = sub nsw i32 %45, 1
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i8, i8* %44, i64 %47
  %49 = load i8, i8* %48, align 1
  %50 = sext i8 %49 to i32
  %51 = icmp eq i32 %50, 13
  br i1 %51, label %52, label %55

52:                                               ; preds = %43
  store i32 1, i32* %19, align 4
  %53 = load i32, i32* %9, align 4
  %54 = add nsw i32 %53, -1
  store i32 %54, i32* %9, align 4
  br label %55

55:                                               ; preds = %52, %43, %40, %35
  %56 = load i32, i32* %10, align 4
  %57 = load i32, i32* @WS_BLANK_AT_EOL, align 4
  %58 = and i32 %56, %57
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %85

60:                                               ; preds = %55
  %61 = load i32, i32* %9, align 4
  %62 = sub nsw i32 %61, 1
  store i32 %62, i32* %20, align 4
  br label %63

63:                                               ; preds = %81, %60
  %64 = load i32, i32* %20, align 4
  %65 = icmp sge i32 %64, 0
  br i1 %65, label %66, label %84

66:                                               ; preds = %63
  %67 = load i8*, i8** %8, align 8
  %68 = load i32, i32* %20, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i8, i8* %67, i64 %69
  %71 = load i8, i8* %70, align 1
  %72 = call i64 @isspace(i8 signext %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %79

74:                                               ; preds = %66
  %75 = load i32, i32* %20, align 4
  store i32 %75, i32* %17, align 4
  %76 = load i32, i32* @WS_BLANK_AT_EOL, align 4
  %77 = load i32, i32* %15, align 4
  %78 = or i32 %77, %76
  store i32 %78, i32* %15, align 4
  br label %80

79:                                               ; preds = %66
  br label %84

80:                                               ; preds = %74
  br label %81

81:                                               ; preds = %80
  %82 = load i32, i32* %20, align 4
  %83 = add nsw i32 %82, -1
  store i32 %83, i32* %20, align 4
  br label %63

84:                                               ; preds = %79, %63
  br label %85

85:                                               ; preds = %84, %55
  %86 = load i32, i32* %17, align 4
  %87 = icmp eq i32 %86, -1
  br i1 %87, label %88, label %90

88:                                               ; preds = %85
  %89 = load i32, i32* %9, align 4
  store i32 %89, i32* %17, align 4
  br label %90

90:                                               ; preds = %88, %85
  store i32 0, i32* %20, align 4
  br label %91

91:                                               ; preds = %204, %90
  %92 = load i32, i32* %20, align 4
  %93 = load i32, i32* %17, align 4
  %94 = icmp slt i32 %92, %93
  br i1 %94, label %95, label %207

95:                                               ; preds = %91
  %96 = load i8*, i8** %8, align 8
  %97 = load i32, i32* %20, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds i8, i8* %96, i64 %98
  %100 = load i8, i8* %99, align 1
  %101 = sext i8 %100 to i32
  %102 = icmp eq i32 %101, 32
  br i1 %102, label %103, label %104

103:                                              ; preds = %95
  br label %204

104:                                              ; preds = %95
  %105 = load i8*, i8** %8, align 8
  %106 = load i32, i32* %20, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds i8, i8* %105, i64 %107
  %109 = load i8, i8* %108, align 1
  %110 = sext i8 %109 to i32
  %111 = icmp ne i32 %110, 9
  br i1 %111, label %112, label %113

112:                                              ; preds = %104
  br label %207

113:                                              ; preds = %104
  %114 = load i32, i32* %10, align 4
  %115 = load i32, i32* @WS_SPACE_BEFORE_TAB, align 4
  %116 = and i32 %114, %115
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %151

118:                                              ; preds = %113
  %119 = load i32, i32* %16, align 4
  %120 = load i32, i32* %20, align 4
  %121 = icmp slt i32 %119, %120
  br i1 %121, label %122, label %151

122:                                              ; preds = %118
  %123 = load i32, i32* @WS_SPACE_BEFORE_TAB, align 4
  %124 = load i32, i32* %15, align 4
  %125 = or i32 %124, %123
  store i32 %125, i32* %15, align 4
  %126 = load i32*, i32** %11, align 8
  %127 = icmp ne i32* %126, null
  br i1 %127, label %128, label %150

128:                                              ; preds = %122
  %129 = load i8*, i8** %14, align 8
  %130 = load i32*, i32** %11, align 8
  %131 = call i32 @fputs(i8* %129, i32* %130)
  %132 = load i8*, i8** %8, align 8
  %133 = load i32, i32* %16, align 4
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds i8, i8* %132, i64 %134
  %136 = load i32, i32* %20, align 4
  %137 = load i32, i32* %16, align 4
  %138 = sub nsw i32 %136, %137
  %139 = load i32*, i32** %11, align 8
  %140 = call i32 @fwrite(i8* %135, i32 %138, i32 1, i32* %139)
  %141 = load i8*, i8** %13, align 8
  %142 = load i32*, i32** %11, align 8
  %143 = call i32 @fputs(i8* %141, i32* %142)
  %144 = load i8*, i8** %8, align 8
  %145 = load i32, i32* %20, align 4
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds i8, i8* %144, i64 %146
  %148 = load i32*, i32** %11, align 8
  %149 = call i32 @fwrite(i8* %147, i32 1, i32 1, i32* %148)
  br label %150

150:                                              ; preds = %128, %122
  br label %201

151:                                              ; preds = %118, %113
  %152 = load i32, i32* %10, align 4
  %153 = load i32, i32* @WS_TAB_IN_INDENT, align 4
  %154 = and i32 %152, %153
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %156, label %185

156:                                              ; preds = %151
  %157 = load i32, i32* @WS_TAB_IN_INDENT, align 4
  %158 = load i32, i32* %15, align 4
  %159 = or i32 %158, %157
  store i32 %159, i32* %15, align 4
  %160 = load i32*, i32** %11, align 8
  %161 = icmp ne i32* %160, null
  br i1 %161, label %162, label %184

162:                                              ; preds = %156
  %163 = load i8*, i8** %8, align 8
  %164 = load i32, i32* %16, align 4
  %165 = sext i32 %164 to i64
  %166 = getelementptr inbounds i8, i8* %163, i64 %165
  %167 = load i32, i32* %20, align 4
  %168 = load i32, i32* %16, align 4
  %169 = sub nsw i32 %167, %168
  %170 = load i32*, i32** %11, align 8
  %171 = call i32 @fwrite(i8* %166, i32 %169, i32 1, i32* %170)
  %172 = load i8*, i8** %14, align 8
  %173 = load i32*, i32** %11, align 8
  %174 = call i32 @fputs(i8* %172, i32* %173)
  %175 = load i8*, i8** %8, align 8
  %176 = load i32, i32* %20, align 4
  %177 = sext i32 %176 to i64
  %178 = getelementptr inbounds i8, i8* %175, i64 %177
  %179 = load i32*, i32** %11, align 8
  %180 = call i32 @fwrite(i8* %178, i32 1, i32 1, i32* %179)
  %181 = load i8*, i8** %13, align 8
  %182 = load i32*, i32** %11, align 8
  %183 = call i32 @fputs(i8* %181, i32* %182)
  br label %184

184:                                              ; preds = %162, %156
  br label %200

185:                                              ; preds = %151
  %186 = load i32*, i32** %11, align 8
  %187 = icmp ne i32* %186, null
  br i1 %187, label %188, label %199

188:                                              ; preds = %185
  %189 = load i8*, i8** %8, align 8
  %190 = load i32, i32* %16, align 4
  %191 = sext i32 %190 to i64
  %192 = getelementptr inbounds i8, i8* %189, i64 %191
  %193 = load i32, i32* %20, align 4
  %194 = load i32, i32* %16, align 4
  %195 = sub nsw i32 %193, %194
  %196 = add nsw i32 %195, 1
  %197 = load i32*, i32** %11, align 8
  %198 = call i32 @fwrite(i8* %192, i32 %196, i32 1, i32* %197)
  br label %199

199:                                              ; preds = %188, %185
  br label %200

200:                                              ; preds = %199, %184
  br label %201

201:                                              ; preds = %200, %150
  %202 = load i32, i32* %20, align 4
  %203 = add nsw i32 %202, 1
  store i32 %203, i32* %16, align 4
  br label %204

204:                                              ; preds = %201, %103
  %205 = load i32, i32* %20, align 4
  %206 = add nsw i32 %205, 1
  store i32 %206, i32* %20, align 4
  br label %91

207:                                              ; preds = %112, %91
  %208 = load i32, i32* %10, align 4
  %209 = load i32, i32* @WS_INDENT_WITH_NON_TAB, align 4
  %210 = and i32 %208, %209
  %211 = icmp ne i32 %210, 0
  br i1 %211, label %212, label %243

212:                                              ; preds = %207
  %213 = load i32, i32* %20, align 4
  %214 = load i32, i32* %16, align 4
  %215 = sub nsw i32 %213, %214
  %216 = load i32, i32* %10, align 4
  %217 = call i32 @ws_tab_width(i32 %216)
  %218 = icmp sge i32 %215, %217
  br i1 %218, label %219, label %243

219:                                              ; preds = %212
  %220 = load i32, i32* @WS_INDENT_WITH_NON_TAB, align 4
  %221 = load i32, i32* %15, align 4
  %222 = or i32 %221, %220
  store i32 %222, i32* %15, align 4
  %223 = load i32*, i32** %11, align 8
  %224 = icmp ne i32* %223, null
  br i1 %224, label %225, label %241

225:                                              ; preds = %219
  %226 = load i8*, i8** %14, align 8
  %227 = load i32*, i32** %11, align 8
  %228 = call i32 @fputs(i8* %226, i32* %227)
  %229 = load i8*, i8** %8, align 8
  %230 = load i32, i32* %16, align 4
  %231 = sext i32 %230 to i64
  %232 = getelementptr inbounds i8, i8* %229, i64 %231
  %233 = load i32, i32* %20, align 4
  %234 = load i32, i32* %16, align 4
  %235 = sub nsw i32 %233, %234
  %236 = load i32*, i32** %11, align 8
  %237 = call i32 @fwrite(i8* %232, i32 %235, i32 1, i32* %236)
  %238 = load i8*, i8** %13, align 8
  %239 = load i32*, i32** %11, align 8
  %240 = call i32 @fputs(i8* %238, i32* %239)
  br label %241

241:                                              ; preds = %225, %219
  %242 = load i32, i32* %20, align 4
  store i32 %242, i32* %16, align 4
  br label %243

243:                                              ; preds = %241, %212, %207
  %244 = load i32*, i32** %11, align 8
  %245 = icmp ne i32* %244, null
  br i1 %245, label %246, label %300

246:                                              ; preds = %243
  %247 = load i32, i32* %17, align 4
  %248 = load i32, i32* %16, align 4
  %249 = sub nsw i32 %247, %248
  %250 = icmp sgt i32 %249, 0
  br i1 %250, label %251, label %267

251:                                              ; preds = %246
  %252 = load i8*, i8** %12, align 8
  %253 = load i32*, i32** %11, align 8
  %254 = call i32 @fputs(i8* %252, i32* %253)
  %255 = load i8*, i8** %8, align 8
  %256 = load i32, i32* %16, align 4
  %257 = sext i32 %256 to i64
  %258 = getelementptr inbounds i8, i8* %255, i64 %257
  %259 = load i32, i32* %17, align 4
  %260 = load i32, i32* %16, align 4
  %261 = sub nsw i32 %259, %260
  %262 = load i32*, i32** %11, align 8
  %263 = call i32 @fwrite(i8* %258, i32 %261, i32 1, i32* %262)
  %264 = load i8*, i8** %13, align 8
  %265 = load i32*, i32** %11, align 8
  %266 = call i32 @fputs(i8* %264, i32* %265)
  br label %267

267:                                              ; preds = %251, %246
  %268 = load i32, i32* %17, align 4
  %269 = load i32, i32* %9, align 4
  %270 = icmp ne i32 %268, %269
  br i1 %270, label %271, label %287

271:                                              ; preds = %267
  %272 = load i8*, i8** %14, align 8
  %273 = load i32*, i32** %11, align 8
  %274 = call i32 @fputs(i8* %272, i32* %273)
  %275 = load i8*, i8** %8, align 8
  %276 = load i32, i32* %17, align 4
  %277 = sext i32 %276 to i64
  %278 = getelementptr inbounds i8, i8* %275, i64 %277
  %279 = load i32, i32* %9, align 4
  %280 = load i32, i32* %17, align 4
  %281 = sub nsw i32 %279, %280
  %282 = load i32*, i32** %11, align 8
  %283 = call i32 @fwrite(i8* %278, i32 %281, i32 1, i32* %282)
  %284 = load i8*, i8** %13, align 8
  %285 = load i32*, i32** %11, align 8
  %286 = call i32 @fputs(i8* %284, i32* %285)
  br label %287

287:                                              ; preds = %271, %267
  %288 = load i32, i32* %19, align 4
  %289 = icmp ne i32 %288, 0
  br i1 %289, label %290, label %293

290:                                              ; preds = %287
  %291 = load i32*, i32** %11, align 8
  %292 = call i32 @fputc(i8 signext 13, i32* %291)
  br label %293

293:                                              ; preds = %290, %287
  %294 = load i32, i32* %18, align 4
  %295 = icmp ne i32 %294, 0
  br i1 %295, label %296, label %299

296:                                              ; preds = %293
  %297 = load i32*, i32** %11, align 8
  %298 = call i32 @fputc(i8 signext 10, i32* %297)
  br label %299

299:                                              ; preds = %296, %293
  br label %300

300:                                              ; preds = %299, %243
  %301 = load i32, i32* %15, align 4
  ret i32 %301
}

declare dso_local i64 @isspace(i8 signext) #1

declare dso_local i32 @fputs(i8*, i32*) #1

declare dso_local i32 @fwrite(i8*, i32, i32, i32*) #1

declare dso_local i32 @ws_tab_width(i32) #1

declare dso_local i32 @fputc(i8 signext, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
