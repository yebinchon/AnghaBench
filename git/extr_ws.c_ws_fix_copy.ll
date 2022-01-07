; ModuleID = '/home/carl/AnghaBench/git/extr_ws.c_ws_fix_copy.c'
source_filename = "/home/carl/AnghaBench/git/extr_ws.c_ws_fix_copy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strbuf = type { i32 }

@WS_BLANK_AT_EOL = common dso_local global i32 0, align 4
@WS_CR_AT_EOL = common dso_local global i32 0, align 4
@WS_SPACE_BEFORE_TAB = common dso_local global i32 0, align 4
@WS_INDENT_WITH_NON_TAB = common dso_local global i32 0, align 4
@WS_TAB_IN_INDENT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ws_fix_copy(%struct.strbuf* %0, i8* %1, i32 %2, i32 %3, i32* %4) #0 {
  %6 = alloca %struct.strbuf*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i8, align 1
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i8, align 1
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  store %struct.strbuf* %0, %struct.strbuf** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32* %4, i32** %10, align 8
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  store i32 -1, i32* %15, align 4
  store i32 -1, i32* %16, align 4
  store i32 0, i32* %17, align 4
  %24 = load i32, i32* %9, align 4
  %25 = load i32, i32* @WS_BLANK_AT_EOL, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %97

28:                                               ; preds = %5
  %29 = load i32, i32* %8, align 4
  %30 = icmp slt i32 0, %29
  br i1 %30, label %31, label %65

31:                                               ; preds = %28
  %32 = load i8*, i8** %7, align 8
  %33 = load i32, i32* %8, align 4
  %34 = sub nsw i32 %33, 1
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i8, i8* %32, i64 %35
  %37 = load i8, i8* %36, align 1
  %38 = sext i8 %37 to i32
  %39 = icmp eq i32 %38, 10
  br i1 %39, label %40, label %65

40:                                               ; preds = %31
  store i32 1, i32* %12, align 4
  %41 = load i32, i32* %8, align 4
  %42 = add nsw i32 %41, -1
  store i32 %42, i32* %8, align 4
  %43 = load i32, i32* %8, align 4
  %44 = icmp slt i32 0, %43
  br i1 %44, label %45, label %64

45:                                               ; preds = %40
  %46 = load i8*, i8** %7, align 8
  %47 = load i32, i32* %8, align 4
  %48 = sub nsw i32 %47, 1
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i8, i8* %46, i64 %49
  %51 = load i8, i8* %50, align 1
  %52 = sext i8 %51 to i32
  %53 = icmp eq i32 %52, 13
  br i1 %53, label %54, label %64

54:                                               ; preds = %45
  %55 = load i32, i32* %9, align 4
  %56 = load i32, i32* @WS_CR_AT_EOL, align 4
  %57 = and i32 %55, %56
  %58 = icmp ne i32 %57, 0
  %59 = xor i1 %58, true
  %60 = xor i1 %59, true
  %61 = zext i1 %60 to i32
  store i32 %61, i32* %13, align 4
  %62 = load i32, i32* %8, align 4
  %63 = add nsw i32 %62, -1
  store i32 %63, i32* %8, align 4
  br label %64

64:                                               ; preds = %54, %45, %40
  br label %65

65:                                               ; preds = %64, %31, %28
  %66 = load i32, i32* %8, align 4
  %67 = icmp slt i32 0, %66
  br i1 %67, label %68, label %96

68:                                               ; preds = %65
  %69 = load i8*, i8** %7, align 8
  %70 = load i32, i32* %8, align 4
  %71 = sub nsw i32 %70, 1
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i8, i8* %69, i64 %72
  %74 = load i8, i8* %73, align 1
  %75 = call i64 @isspace(i8 signext %74)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %96

77:                                               ; preds = %68
  br label %78

78:                                               ; preds = %92, %77
  %79 = load i32, i32* %8, align 4
  %80 = icmp slt i32 0, %79
  br i1 %80, label %81, label %90

81:                                               ; preds = %78
  %82 = load i8*, i8** %7, align 8
  %83 = load i32, i32* %8, align 4
  %84 = sub nsw i32 %83, 1
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds i8, i8* %82, i64 %85
  %87 = load i8, i8* %86, align 1
  %88 = call i64 @isspace(i8 signext %87)
  %89 = icmp ne i64 %88, 0
  br label %90

90:                                               ; preds = %81, %78
  %91 = phi i1 [ false, %78 ], [ %89, %81 ]
  br i1 %91, label %92, label %95

92:                                               ; preds = %90
  %93 = load i32, i32* %8, align 4
  %94 = add nsw i32 %93, -1
  store i32 %94, i32* %8, align 4
  br label %78

95:                                               ; preds = %90
  store i32 1, i32* %14, align 4
  br label %96

96:                                               ; preds = %95, %68, %65
  br label %97

97:                                               ; preds = %96, %5
  store i32 0, i32* %11, align 4
  br label %98

98:                                               ; preds = %144, %97
  %99 = load i32, i32* %11, align 4
  %100 = load i32, i32* %8, align 4
  %101 = icmp slt i32 %99, %100
  br i1 %101, label %102, label %147

102:                                              ; preds = %98
  %103 = load i8*, i8** %7, align 8
  %104 = load i32, i32* %11, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds i8, i8* %103, i64 %105
  %107 = load i8, i8* %106, align 1
  store i8 %107, i8* %18, align 1
  %108 = load i8, i8* %18, align 1
  %109 = sext i8 %108 to i32
  %110 = icmp eq i32 %109, 9
  br i1 %110, label %111, label %122

111:                                              ; preds = %102
  %112 = load i32, i32* %11, align 4
  store i32 %112, i32* %15, align 4
  %113 = load i32, i32* %9, align 4
  %114 = load i32, i32* @WS_SPACE_BEFORE_TAB, align 4
  %115 = and i32 %113, %114
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %121

117:                                              ; preds = %111
  %118 = load i32, i32* %16, align 4
  %119 = icmp sle i32 0, %118
  br i1 %119, label %120, label %121

120:                                              ; preds = %117
  store i32 1, i32* %17, align 4
  br label %121

121:                                              ; preds = %120, %117, %111
  br label %143

122:                                              ; preds = %102
  %123 = load i8, i8* %18, align 1
  %124 = sext i8 %123 to i32
  %125 = icmp eq i32 %124, 32
  br i1 %125, label %126, label %141

126:                                              ; preds = %122
  %127 = load i32, i32* %11, align 4
  store i32 %127, i32* %16, align 4
  %128 = load i32, i32* %9, align 4
  %129 = load i32, i32* @WS_INDENT_WITH_NON_TAB, align 4
  %130 = and i32 %128, %129
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %140

132:                                              ; preds = %126
  %133 = load i32, i32* %9, align 4
  %134 = call i32 @ws_tab_width(i32 %133)
  %135 = load i32, i32* %11, align 4
  %136 = load i32, i32* %15, align 4
  %137 = sub nsw i32 %135, %136
  %138 = icmp sle i32 %134, %137
  br i1 %138, label %139, label %140

139:                                              ; preds = %132
  store i32 1, i32* %17, align 4
  br label %140

140:                                              ; preds = %139, %132, %126
  br label %142

141:                                              ; preds = %122
  br label %147

142:                                              ; preds = %140
  br label %143

143:                                              ; preds = %142, %121
  br label %144

144:                                              ; preds = %143
  %145 = load i32, i32* %11, align 4
  %146 = add nsw i32 %145, 1
  store i32 %146, i32* %11, align 4
  br label %98

147:                                              ; preds = %141, %98
  %148 = load i32, i32* %17, align 4
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %150, label %217

150:                                              ; preds = %147
  store i32 0, i32* %19, align 4
  %151 = load i32, i32* %15, align 4
  %152 = add nsw i32 %151, 1
  store i32 %152, i32* %20, align 4
  %153 = load i32, i32* %9, align 4
  %154 = load i32, i32* @WS_INDENT_WITH_NON_TAB, align 4
  %155 = and i32 %153, %154
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %157, label %168

157:                                              ; preds = %150
  %158 = load i32, i32* %15, align 4
  %159 = load i32, i32* %16, align 4
  %160 = icmp slt i32 %158, %159
  br i1 %160, label %161, label %164

161:                                              ; preds = %157
  %162 = load i32, i32* %16, align 4
  %163 = add nsw i32 %162, 1
  store i32 %163, i32* %20, align 4
  br label %167

164:                                              ; preds = %157
  %165 = load i32, i32* %15, align 4
  %166 = add nsw i32 %165, 1
  store i32 %166, i32* %20, align 4
  br label %167

167:                                              ; preds = %164, %161
  br label %168

168:                                              ; preds = %167, %150
  store i32 0, i32* %11, align 4
  br label %169

169:                                              ; preds = %198, %168
  %170 = load i32, i32* %11, align 4
  %171 = load i32, i32* %20, align 4
  %172 = icmp slt i32 %170, %171
  br i1 %172, label %173, label %201

173:                                              ; preds = %169
  %174 = load i8*, i8** %7, align 8
  %175 = load i32, i32* %11, align 4
  %176 = sext i32 %175 to i64
  %177 = getelementptr inbounds i8, i8* %174, i64 %176
  %178 = load i8, i8* %177, align 1
  store i8 %178, i8* %21, align 1
  %179 = load i8, i8* %21, align 1
  %180 = sext i8 %179 to i32
  %181 = icmp ne i32 %180, 32
  br i1 %181, label %182, label %186

182:                                              ; preds = %173
  store i32 0, i32* %19, align 4
  %183 = load %struct.strbuf*, %struct.strbuf** %6, align 8
  %184 = load i8, i8* %21, align 1
  %185 = call i32 @strbuf_addch(%struct.strbuf* %183, i8 signext %184)
  br label %197

186:                                              ; preds = %173
  %187 = load i32, i32* %19, align 4
  %188 = add nsw i32 %187, 1
  store i32 %188, i32* %19, align 4
  %189 = load i32, i32* %19, align 4
  %190 = load i32, i32* %9, align 4
  %191 = call i32 @ws_tab_width(i32 %190)
  %192 = icmp eq i32 %189, %191
  br i1 %192, label %193, label %196

193:                                              ; preds = %186
  %194 = load %struct.strbuf*, %struct.strbuf** %6, align 8
  %195 = call i32 @strbuf_addch(%struct.strbuf* %194, i8 signext 9)
  store i32 0, i32* %19, align 4
  br label %196

196:                                              ; preds = %193, %186
  br label %197

197:                                              ; preds = %196, %182
  br label %198

198:                                              ; preds = %197
  %199 = load i32, i32* %11, align 4
  %200 = add nsw i32 %199, 1
  store i32 %200, i32* %11, align 4
  br label %169

201:                                              ; preds = %169
  br label %202

202:                                              ; preds = %206, %201
  %203 = load i32, i32* %19, align 4
  %204 = add nsw i32 %203, -1
  store i32 %204, i32* %19, align 4
  %205 = icmp slt i32 0, %203
  br i1 %205, label %206, label %209

206:                                              ; preds = %202
  %207 = load %struct.strbuf*, %struct.strbuf** %6, align 8
  %208 = call i32 @strbuf_addch(%struct.strbuf* %207, i8 signext 32)
  br label %202

209:                                              ; preds = %202
  %210 = load i32, i32* %20, align 4
  %211 = load i32, i32* %8, align 4
  %212 = sub nsw i32 %211, %210
  store i32 %212, i32* %8, align 4
  %213 = load i32, i32* %20, align 4
  %214 = load i8*, i8** %7, align 8
  %215 = sext i32 %213 to i64
  %216 = getelementptr inbounds i8, i8* %214, i64 %215
  store i8* %216, i8** %7, align 8
  store i32 1, i32* %14, align 4
  br label %279

217:                                              ; preds = %147
  %218 = load i32, i32* %9, align 4
  %219 = load i32, i32* @WS_TAB_IN_INDENT, align 4
  %220 = and i32 %218, %219
  %221 = icmp ne i32 %220, 0
  br i1 %221, label %222, label %278

222:                                              ; preds = %217
  %223 = load i32, i32* %15, align 4
  %224 = icmp sge i32 %223, 0
  br i1 %224, label %225, label %278

225:                                              ; preds = %222
  %226 = load %struct.strbuf*, %struct.strbuf** %6, align 8
  %227 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %226, i32 0, i32 0
  %228 = load i32, i32* %227, align 4
  store i32 %228, i32* %22, align 4
  %229 = load i32, i32* %15, align 4
  %230 = add nsw i32 %229, 1
  store i32 %230, i32* %23, align 4
  store i32 0, i32* %11, align 4
  br label %231

231:                                              ; preds = %267, %225
  %232 = load i32, i32* %11, align 4
  %233 = load i32, i32* %23, align 4
  %234 = icmp slt i32 %232, %233
  br i1 %234, label %235, label %270

235:                                              ; preds = %231
  %236 = load i8*, i8** %7, align 8
  %237 = load i32, i32* %11, align 4
  %238 = sext i32 %237 to i64
  %239 = getelementptr inbounds i8, i8* %236, i64 %238
  %240 = load i8, i8* %239, align 1
  %241 = sext i8 %240 to i32
  %242 = icmp eq i32 %241, 9
  br i1 %242, label %243, label %258

243:                                              ; preds = %235
  br label %244

244:                                              ; preds = %247, %243
  %245 = load %struct.strbuf*, %struct.strbuf** %6, align 8
  %246 = call i32 @strbuf_addch(%struct.strbuf* %245, i8 signext 32)
  br label %247

247:                                              ; preds = %244
  %248 = load %struct.strbuf*, %struct.strbuf** %6, align 8
  %249 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %248, i32 0, i32 0
  %250 = load i32, i32* %249, align 4
  %251 = load i32, i32* %22, align 4
  %252 = sub nsw i32 %250, %251
  %253 = load i32, i32* %9, align 4
  %254 = call i32 @ws_tab_width(i32 %253)
  %255 = srem i32 %252, %254
  %256 = icmp ne i32 %255, 0
  br i1 %256, label %244, label %257

257:                                              ; preds = %247
  br label %266

258:                                              ; preds = %235
  %259 = load %struct.strbuf*, %struct.strbuf** %6, align 8
  %260 = load i8*, i8** %7, align 8
  %261 = load i32, i32* %11, align 4
  %262 = sext i32 %261 to i64
  %263 = getelementptr inbounds i8, i8* %260, i64 %262
  %264 = load i8, i8* %263, align 1
  %265 = call i32 @strbuf_addch(%struct.strbuf* %259, i8 signext %264)
  br label %266

266:                                              ; preds = %258, %257
  br label %267

267:                                              ; preds = %266
  %268 = load i32, i32* %11, align 4
  %269 = add nsw i32 %268, 1
  store i32 %269, i32* %11, align 4
  br label %231

270:                                              ; preds = %231
  %271 = load i32, i32* %23, align 4
  %272 = load i32, i32* %8, align 4
  %273 = sub nsw i32 %272, %271
  store i32 %273, i32* %8, align 4
  %274 = load i32, i32* %23, align 4
  %275 = load i8*, i8** %7, align 8
  %276 = sext i32 %274 to i64
  %277 = getelementptr inbounds i8, i8* %275, i64 %276
  store i8* %277, i8** %7, align 8
  store i32 1, i32* %14, align 4
  br label %278

278:                                              ; preds = %270, %222, %217
  br label %279

279:                                              ; preds = %278, %209
  %280 = load %struct.strbuf*, %struct.strbuf** %6, align 8
  %281 = load i8*, i8** %7, align 8
  %282 = load i32, i32* %8, align 4
  %283 = call i32 @strbuf_add(%struct.strbuf* %280, i8* %281, i32 %282)
  %284 = load i32, i32* %13, align 4
  %285 = icmp ne i32 %284, 0
  br i1 %285, label %286, label %289

286:                                              ; preds = %279
  %287 = load %struct.strbuf*, %struct.strbuf** %6, align 8
  %288 = call i32 @strbuf_addch(%struct.strbuf* %287, i8 signext 13)
  br label %289

289:                                              ; preds = %286, %279
  %290 = load i32, i32* %12, align 4
  %291 = icmp ne i32 %290, 0
  br i1 %291, label %292, label %295

292:                                              ; preds = %289
  %293 = load %struct.strbuf*, %struct.strbuf** %6, align 8
  %294 = call i32 @strbuf_addch(%struct.strbuf* %293, i8 signext 10)
  br label %295

295:                                              ; preds = %292, %289
  %296 = load i32, i32* %14, align 4
  %297 = icmp ne i32 %296, 0
  br i1 %297, label %298, label %305

298:                                              ; preds = %295
  %299 = load i32*, i32** %10, align 8
  %300 = icmp ne i32* %299, null
  br i1 %300, label %301, label %305

301:                                              ; preds = %298
  %302 = load i32*, i32** %10, align 8
  %303 = load i32, i32* %302, align 4
  %304 = add nsw i32 %303, 1
  store i32 %304, i32* %302, align 4
  br label %305

305:                                              ; preds = %301, %298, %295
  ret void
}

declare dso_local i64 @isspace(i8 signext) #1

declare dso_local i32 @ws_tab_width(i32) #1

declare dso_local i32 @strbuf_addch(%struct.strbuf*, i8 signext) #1

declare dso_local i32 @strbuf_add(%struct.strbuf*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
