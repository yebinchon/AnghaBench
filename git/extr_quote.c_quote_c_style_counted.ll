; ModuleID = '/home/carl/AnghaBench/git/extr_quote.c_quote_c_style_counted.c'
source_filename = "/home/carl/AnghaBench/git/extr_quote.c_quote_c_style_counted.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strbuf = type { i32 }

@sq_lookup = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i8*, i64, %struct.strbuf*, i32*, i32)* @quote_c_style_counted to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @quote_c_style_counted(i8* %0, i64 %1, %struct.strbuf* %2, i32* %3, i32 %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.strbuf*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  store i8* %0, i8** %7, align 8
  store i64 %1, i64* %8, align 8
  store %struct.strbuf* %2, %struct.strbuf** %9, align 8
  store i32* %3, i32** %10, align 8
  store i32 %4, i32* %11, align 4
  store i64 0, i64* %13, align 8
  %16 = load i8*, i8** %7, align 8
  store i8* %16, i8** %14, align 8
  br label %17

17:                                               ; preds = %220, %5
  %18 = load i8*, i8** %14, align 8
  %19 = load i64, i64* %8, align 8
  %20 = call i64 @next_quote_pos(i8* %18, i64 %19)
  store i64 %20, i64* %12, align 8
  %21 = load i64, i64* %12, align 8
  %22 = load i64, i64* %8, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %33, label %24

24:                                               ; preds = %17
  %25 = load i64, i64* %8, align 8
  %26 = icmp ult i64 %25, 0
  br i1 %26, label %27, label %34

27:                                               ; preds = %24
  %28 = load i8*, i8** %14, align 8
  %29 = load i64, i64* %12, align 8
  %30 = getelementptr inbounds i8, i8* %28, i64 %29
  %31 = load i8, i8* %30, align 1
  %32 = icmp ne i8 %31, 0
  br i1 %32, label %34, label %33

33:                                               ; preds = %27, %17
  br label %221

34:                                               ; preds = %27, %24
  %35 = load i32, i32* %11, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %58, label %37

37:                                               ; preds = %34
  %38 = load i8*, i8** %14, align 8
  %39 = load i8*, i8** %7, align 8
  %40 = icmp eq i8* %38, %39
  br i1 %40, label %41, label %58

41:                                               ; preds = %37
  br label %42

42:                                               ; preds = %41
  %43 = load %struct.strbuf*, %struct.strbuf** %9, align 8
  %44 = icmp ne %struct.strbuf* %43, null
  br i1 %44, label %45, label %48

45:                                               ; preds = %42
  %46 = load %struct.strbuf*, %struct.strbuf** %9, align 8
  %47 = call i32 (%struct.strbuf*, i32, ...) bitcast (i32 (...)* @strbuf_addch to i32 (%struct.strbuf*, i32, ...)*)(%struct.strbuf* %46, i32 34)
  br label %48

48:                                               ; preds = %45, %42
  %49 = load i32*, i32** %10, align 8
  %50 = icmp ne i32* %49, null
  br i1 %50, label %51, label %54

51:                                               ; preds = %48
  %52 = load i32*, i32** %10, align 8
  %53 = call i32 (i32, i32*, ...) bitcast (i32 (...)* @fputc to i32 (i32, i32*, ...)*)(i32 34, i32* %52)
  br label %54

54:                                               ; preds = %51, %48
  %55 = load i64, i64* %13, align 8
  %56 = add i64 %55, 1
  store i64 %56, i64* %13, align 8
  br label %57

57:                                               ; preds = %54
  br label %58

58:                                               ; preds = %57, %37, %34
  br label %59

59:                                               ; preds = %58
  %60 = load %struct.strbuf*, %struct.strbuf** %9, align 8
  %61 = icmp ne %struct.strbuf* %60, null
  br i1 %61, label %62, label %67

62:                                               ; preds = %59
  %63 = load %struct.strbuf*, %struct.strbuf** %9, align 8
  %64 = load i8*, i8** %14, align 8
  %65 = load i64, i64* %12, align 8
  %66 = call i32 (%struct.strbuf*, i8*, i64, ...) bitcast (i32 (...)* @strbuf_add to i32 (%struct.strbuf*, i8*, i64, ...)*)(%struct.strbuf* %63, i8* %64, i64 %65)
  br label %67

67:                                               ; preds = %62, %59
  %68 = load i32*, i32** %10, align 8
  %69 = icmp ne i32* %68, null
  br i1 %69, label %70, label %75

70:                                               ; preds = %67
  %71 = load i8*, i8** %14, align 8
  %72 = load i64, i64* %12, align 8
  %73 = load i32*, i32** %10, align 8
  %74 = call i64 @fwrite(i8* %71, i64 %72, i64 1, i32* %73)
  br label %75

75:                                               ; preds = %70, %67
  %76 = load i64, i64* %12, align 8
  %77 = load i64, i64* %13, align 8
  %78 = add i64 %77, %76
  store i64 %78, i64* %13, align 8
  br label %79

79:                                               ; preds = %75
  br label %80

80:                                               ; preds = %79
  %81 = load %struct.strbuf*, %struct.strbuf** %9, align 8
  %82 = icmp ne %struct.strbuf* %81, null
  br i1 %82, label %83, label %86

83:                                               ; preds = %80
  %84 = load %struct.strbuf*, %struct.strbuf** %9, align 8
  %85 = call i32 (%struct.strbuf*, i32, ...) bitcast (i32 (...)* @strbuf_addch to i32 (%struct.strbuf*, i32, ...)*)(%struct.strbuf* %84, i32 92)
  br label %86

86:                                               ; preds = %83, %80
  %87 = load i32*, i32** %10, align 8
  %88 = icmp ne i32* %87, null
  br i1 %88, label %89, label %92

89:                                               ; preds = %86
  %90 = load i32*, i32** %10, align 8
  %91 = call i32 (i32, i32*, ...) bitcast (i32 (...)* @fputc to i32 (i32, i32*, ...)*)(i32 92, i32* %90)
  br label %92

92:                                               ; preds = %89, %86
  %93 = load i64, i64* %13, align 8
  %94 = add i64 %93, 1
  store i64 %94, i64* %13, align 8
  br label %95

95:                                               ; preds = %92
  %96 = load i64, i64* %12, align 8
  %97 = load i8*, i8** %14, align 8
  %98 = getelementptr inbounds i8, i8* %97, i64 %96
  store i8* %98, i8** %14, align 8
  %99 = load i8*, i8** %14, align 8
  %100 = getelementptr inbounds i8, i8* %99, i32 1
  store i8* %100, i8** %14, align 8
  %101 = load i8, i8* %99, align 1
  %102 = zext i8 %101 to i32
  store i32 %102, i32* %15, align 4
  %103 = load i64, i64* %8, align 8
  %104 = icmp uge i64 %103, 0
  br i1 %104, label %105, label %110

105:                                              ; preds = %95
  %106 = load i64, i64* %12, align 8
  %107 = add i64 %106, 1
  %108 = load i64, i64* %8, align 8
  %109 = sub i64 %108, %107
  store i64 %109, i64* %8, align 8
  br label %110

110:                                              ; preds = %105, %95
  %111 = load i8*, i8** @sq_lookup, align 8
  %112 = load i32, i32* %15, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds i8, i8* %111, i64 %113
  %115 = load i8, i8* %114, align 1
  %116 = sext i8 %115 to i32
  %117 = icmp sge i32 %116, 32
  br i1 %117, label %118, label %147

118:                                              ; preds = %110
  br label %119

119:                                              ; preds = %118
  %120 = load %struct.strbuf*, %struct.strbuf** %9, align 8
  %121 = icmp ne %struct.strbuf* %120, null
  br i1 %121, label %122, label %131

122:                                              ; preds = %119
  %123 = load %struct.strbuf*, %struct.strbuf** %9, align 8
  %124 = load i8*, i8** @sq_lookup, align 8
  %125 = load i32, i32* %15, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds i8, i8* %124, i64 %126
  %128 = load i8, i8* %127, align 1
  %129 = sext i8 %128 to i32
  %130 = call i32 (%struct.strbuf*, i32, ...) bitcast (i32 (...)* @strbuf_addch to i32 (%struct.strbuf*, i32, ...)*)(%struct.strbuf* %123, i32 %129)
  br label %131

131:                                              ; preds = %122, %119
  %132 = load i32*, i32** %10, align 8
  %133 = icmp ne i32* %132, null
  br i1 %133, label %134, label %143

134:                                              ; preds = %131
  %135 = load i8*, i8** @sq_lookup, align 8
  %136 = load i32, i32* %15, align 4
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds i8, i8* %135, i64 %137
  %139 = load i8, i8* %138, align 1
  %140 = sext i8 %139 to i32
  %141 = load i32*, i32** %10, align 8
  %142 = call i32 (i32, i32*, ...) bitcast (i32 (...)* @fputc to i32 (i32, i32*, ...)*)(i32 %140, i32* %141)
  br label %143

143:                                              ; preds = %134, %131
  %144 = load i64, i64* %13, align 8
  %145 = add i64 %144, 1
  store i64 %145, i64* %13, align 8
  br label %146

146:                                              ; preds = %143
  br label %220

147:                                              ; preds = %110
  br label %148

148:                                              ; preds = %147
  %149 = load %struct.strbuf*, %struct.strbuf** %9, align 8
  %150 = icmp ne %struct.strbuf* %149, null
  br i1 %150, label %151, label %158

151:                                              ; preds = %148
  %152 = load %struct.strbuf*, %struct.strbuf** %9, align 8
  %153 = load i32, i32* %15, align 4
  %154 = ashr i32 %153, 6
  %155 = and i32 %154, 3
  %156 = add nsw i32 %155, 48
  %157 = call i32 (%struct.strbuf*, i32, ...) bitcast (i32 (...)* @strbuf_addch to i32 (%struct.strbuf*, i32, ...)*)(%struct.strbuf* %152, i32 %156)
  br label %158

158:                                              ; preds = %151, %148
  %159 = load i32*, i32** %10, align 8
  %160 = icmp ne i32* %159, null
  br i1 %160, label %161, label %168

161:                                              ; preds = %158
  %162 = load i32, i32* %15, align 4
  %163 = ashr i32 %162, 6
  %164 = and i32 %163, 3
  %165 = add nsw i32 %164, 48
  %166 = load i32*, i32** %10, align 8
  %167 = call i32 (i32, i32*, ...) bitcast (i32 (...)* @fputc to i32 (i32, i32*, ...)*)(i32 %165, i32* %166)
  br label %168

168:                                              ; preds = %161, %158
  %169 = load i64, i64* %13, align 8
  %170 = add i64 %169, 1
  store i64 %170, i64* %13, align 8
  br label %171

171:                                              ; preds = %168
  br label %172

172:                                              ; preds = %171
  %173 = load %struct.strbuf*, %struct.strbuf** %9, align 8
  %174 = icmp ne %struct.strbuf* %173, null
  br i1 %174, label %175, label %182

175:                                              ; preds = %172
  %176 = load %struct.strbuf*, %struct.strbuf** %9, align 8
  %177 = load i32, i32* %15, align 4
  %178 = ashr i32 %177, 3
  %179 = and i32 %178, 7
  %180 = add nsw i32 %179, 48
  %181 = call i32 (%struct.strbuf*, i32, ...) bitcast (i32 (...)* @strbuf_addch to i32 (%struct.strbuf*, i32, ...)*)(%struct.strbuf* %176, i32 %180)
  br label %182

182:                                              ; preds = %175, %172
  %183 = load i32*, i32** %10, align 8
  %184 = icmp ne i32* %183, null
  br i1 %184, label %185, label %192

185:                                              ; preds = %182
  %186 = load i32, i32* %15, align 4
  %187 = ashr i32 %186, 3
  %188 = and i32 %187, 7
  %189 = add nsw i32 %188, 48
  %190 = load i32*, i32** %10, align 8
  %191 = call i32 (i32, i32*, ...) bitcast (i32 (...)* @fputc to i32 (i32, i32*, ...)*)(i32 %189, i32* %190)
  br label %192

192:                                              ; preds = %185, %182
  %193 = load i64, i64* %13, align 8
  %194 = add i64 %193, 1
  store i64 %194, i64* %13, align 8
  br label %195

195:                                              ; preds = %192
  br label %196

196:                                              ; preds = %195
  %197 = load %struct.strbuf*, %struct.strbuf** %9, align 8
  %198 = icmp ne %struct.strbuf* %197, null
  br i1 %198, label %199, label %206

199:                                              ; preds = %196
  %200 = load %struct.strbuf*, %struct.strbuf** %9, align 8
  %201 = load i32, i32* %15, align 4
  %202 = ashr i32 %201, 0
  %203 = and i32 %202, 7
  %204 = add nsw i32 %203, 48
  %205 = call i32 (%struct.strbuf*, i32, ...) bitcast (i32 (...)* @strbuf_addch to i32 (%struct.strbuf*, i32, ...)*)(%struct.strbuf* %200, i32 %204)
  br label %206

206:                                              ; preds = %199, %196
  %207 = load i32*, i32** %10, align 8
  %208 = icmp ne i32* %207, null
  br i1 %208, label %209, label %216

209:                                              ; preds = %206
  %210 = load i32, i32* %15, align 4
  %211 = ashr i32 %210, 0
  %212 = and i32 %211, 7
  %213 = add nsw i32 %212, 48
  %214 = load i32*, i32** %10, align 8
  %215 = call i32 (i32, i32*, ...) bitcast (i32 (...)* @fputc to i32 (i32, i32*, ...)*)(i32 %213, i32* %214)
  br label %216

216:                                              ; preds = %209, %206
  %217 = load i64, i64* %13, align 8
  %218 = add i64 %217, 1
  store i64 %218, i64* %13, align 8
  br label %219

219:                                              ; preds = %216
  br label %220

220:                                              ; preds = %219, %146
  br label %17

221:                                              ; preds = %33
  br label %222

222:                                              ; preds = %221
  %223 = load %struct.strbuf*, %struct.strbuf** %9, align 8
  %224 = icmp ne %struct.strbuf* %223, null
  br i1 %224, label %225, label %230

225:                                              ; preds = %222
  %226 = load %struct.strbuf*, %struct.strbuf** %9, align 8
  %227 = load i8*, i8** %14, align 8
  %228 = load i64, i64* %12, align 8
  %229 = call i32 (%struct.strbuf*, i8*, i64, ...) bitcast (i32 (...)* @strbuf_add to i32 (%struct.strbuf*, i8*, i64, ...)*)(%struct.strbuf* %226, i8* %227, i64 %228)
  br label %230

230:                                              ; preds = %225, %222
  %231 = load i32*, i32** %10, align 8
  %232 = icmp ne i32* %231, null
  br i1 %232, label %233, label %238

233:                                              ; preds = %230
  %234 = load i8*, i8** %14, align 8
  %235 = load i64, i64* %12, align 8
  %236 = load i32*, i32** %10, align 8
  %237 = call i64 @fwrite(i8* %234, i64 %235, i64 1, i32* %236)
  br label %238

238:                                              ; preds = %233, %230
  %239 = load i64, i64* %12, align 8
  %240 = load i64, i64* %13, align 8
  %241 = add i64 %240, %239
  store i64 %241, i64* %13, align 8
  br label %242

242:                                              ; preds = %238
  %243 = load i8*, i8** %14, align 8
  %244 = load i8*, i8** %7, align 8
  %245 = icmp eq i8* %243, %244
  br i1 %245, label %246, label %247

246:                                              ; preds = %242
  store i64 0, i64* %6, align 8
  br label %269

247:                                              ; preds = %242
  %248 = load i32, i32* %11, align 4
  %249 = icmp ne i32 %248, 0
  br i1 %249, label %267, label %250

250:                                              ; preds = %247
  br label %251

251:                                              ; preds = %250
  %252 = load %struct.strbuf*, %struct.strbuf** %9, align 8
  %253 = icmp ne %struct.strbuf* %252, null
  br i1 %253, label %254, label %257

254:                                              ; preds = %251
  %255 = load %struct.strbuf*, %struct.strbuf** %9, align 8
  %256 = call i32 (%struct.strbuf*, i32, ...) bitcast (i32 (...)* @strbuf_addch to i32 (%struct.strbuf*, i32, ...)*)(%struct.strbuf* %255, i32 34)
  br label %257

257:                                              ; preds = %254, %251
  %258 = load i32*, i32** %10, align 8
  %259 = icmp ne i32* %258, null
  br i1 %259, label %260, label %263

260:                                              ; preds = %257
  %261 = load i32*, i32** %10, align 8
  %262 = call i32 (i32, i32*, ...) bitcast (i32 (...)* @fputc to i32 (i32, i32*, ...)*)(i32 34, i32* %261)
  br label %263

263:                                              ; preds = %260, %257
  %264 = load i64, i64* %13, align 8
  %265 = add i64 %264, 1
  store i64 %265, i64* %13, align 8
  br label %266

266:                                              ; preds = %263
  br label %267

267:                                              ; preds = %266, %247
  %268 = load i64, i64* %13, align 8
  store i64 %268, i64* %6, align 8
  br label %269

269:                                              ; preds = %267, %246
  %270 = load i64, i64* %6, align 8
  ret i64 %270
}

declare dso_local i64 @next_quote_pos(i8*, i64) #1

declare dso_local i32 @strbuf_addch(...) #1

declare dso_local i32 @fputc(...) #1

declare dso_local i32 @strbuf_add(...) #1

declare dso_local i64 @fwrite(i8*, i64, i64, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
