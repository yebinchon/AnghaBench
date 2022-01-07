; ModuleID = '/home/carl/AnghaBench/git/extr_grep.c_match_one_pattern.c'
source_filename = "/home/carl/AnghaBench/git/extr_grep.c_match_one_pattern.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i8*, i64 }
%struct.grep_pat = type { i64, i64, i64 }
%struct.TYPE_6__ = type { i32, i32 }

@GREP_PATTERN = common dso_local global i64 0, align 8
@GREP_PATTERN_HEAD = common dso_local global i64 0, align 8
@GREP_CONTEXT_HEAD = common dso_local global i32 0, align 4
@header_field = common dso_local global %struct.TYPE_7__* null, align 8
@.str = private unnamed_addr constant [25 x i8] c"regexp returned nonsense\00", align 1
@REG_NOTBOL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.grep_pat*, i8*, i8*, i32, %struct.TYPE_6__*, i32)* @match_one_pattern to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @match_one_pattern(%struct.grep_pat* %0, i8* %1, i8* %2, i32 %3, %struct.TYPE_6__* %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.grep_pat*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_6__*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i64, align 8
  store %struct.grep_pat* %0, %struct.grep_pat** %8, align 8
  store i8* %1, i8** %9, align 8
  store i8* %2, i8** %10, align 8
  store i32 %3, i32* %11, align 4
  store %struct.TYPE_6__* %4, %struct.TYPE_6__** %12, align 8
  store i32 %5, i32* %13, align 4
  store i32 0, i32* %14, align 4
  store i32 0, i32* %15, align 4
  %19 = load i8*, i8** %9, align 8
  store i8* %19, i8** %16, align 8
  %20 = load %struct.grep_pat*, %struct.grep_pat** %8, align 8
  %21 = getelementptr inbounds %struct.grep_pat, %struct.grep_pat* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @GREP_PATTERN, align 8
  %24 = icmp ne i64 %22, %23
  br i1 %24, label %25, label %38

25:                                               ; preds = %6
  %26 = load %struct.grep_pat*, %struct.grep_pat** %8, align 8
  %27 = getelementptr inbounds %struct.grep_pat, %struct.grep_pat* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @GREP_PATTERN_HEAD, align 8
  %30 = icmp eq i64 %28, %29
  %31 = zext i1 %30 to i32
  %32 = load i32, i32* %11, align 4
  %33 = load i32, i32* @GREP_CONTEXT_HEAD, align 4
  %34 = icmp eq i32 %32, %33
  %35 = zext i1 %34 to i32
  %36 = icmp ne i32 %31, %35
  br i1 %36, label %37, label %38

37:                                               ; preds = %25
  store i32 0, i32* %7, align 4
  br label %281

38:                                               ; preds = %25, %6
  %39 = load %struct.grep_pat*, %struct.grep_pat** %8, align 8
  %40 = getelementptr inbounds %struct.grep_pat, %struct.grep_pat* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @GREP_PATTERN_HEAD, align 8
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %44, label %85

44:                                               ; preds = %38
  %45 = load %struct.grep_pat*, %struct.grep_pat** %8, align 8
  %46 = getelementptr inbounds %struct.grep_pat, %struct.grep_pat* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = load %struct.TYPE_7__*, %struct.TYPE_7__** @header_field, align 8
  %49 = call i64 @ARRAY_SIZE(%struct.TYPE_7__* %48)
  %50 = icmp ult i64 %47, %49
  %51 = zext i1 %50 to i32
  %52 = call i32 @assert(i32 %51)
  %53 = load %struct.TYPE_7__*, %struct.TYPE_7__** @header_field, align 8
  %54 = load %struct.grep_pat*, %struct.grep_pat** %8, align 8
  %55 = getelementptr inbounds %struct.grep_pat, %struct.grep_pat* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %53, i64 %56
  %58 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %57, i32 0, i32 0
  %59 = load i8*, i8** %58, align 8
  store i8* %59, i8** %17, align 8
  %60 = load %struct.TYPE_7__*, %struct.TYPE_7__** @header_field, align 8
  %61 = load %struct.grep_pat*, %struct.grep_pat** %8, align 8
  %62 = getelementptr inbounds %struct.grep_pat, %struct.grep_pat* %61, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %60, i64 %63
  %65 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %64, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  store i64 %66, i64* %18, align 8
  %67 = load i8*, i8** %9, align 8
  %68 = load i8*, i8** %17, align 8
  %69 = load i64, i64* %18, align 8
  %70 = call i64 @strncmp(i8* %67, i8* %68, i64 %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %73

72:                                               ; preds = %44
  store i32 0, i32* %7, align 4
  br label %281

73:                                               ; preds = %44
  %74 = load i64, i64* %18, align 8
  %75 = load i8*, i8** %9, align 8
  %76 = getelementptr inbounds i8, i8* %75, i64 %74
  store i8* %76, i8** %9, align 8
  %77 = load %struct.grep_pat*, %struct.grep_pat** %8, align 8
  %78 = getelementptr inbounds %struct.grep_pat, %struct.grep_pat* %77, i32 0, i32 1
  %79 = load i64, i64* %78, align 8
  switch i64 %79, label %83 [
    i64 129, label %80
    i64 128, label %80
  ]

80:                                               ; preds = %73, %73
  %81 = load i8*, i8** %9, align 8
  %82 = call i32 @strip_timestamp(i8* %81, i8** %10)
  store i32 %82, i32* %15, align 4
  br label %84

83:                                               ; preds = %73
  br label %84

84:                                               ; preds = %83, %80
  br label %85

85:                                               ; preds = %84, %38
  br label %86

86:                                               ; preds = %235, %85
  %87 = load %struct.grep_pat*, %struct.grep_pat** %8, align 8
  %88 = load i8*, i8** %9, align 8
  %89 = load i8*, i8** %10, align 8
  %90 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %91 = load i32, i32* %13, align 4
  %92 = call i32 @patmatch(%struct.grep_pat* %87, i8* %88, i8* %89, %struct.TYPE_6__* %90, i32 %91)
  store i32 %92, i32* %14, align 4
  %93 = load i32, i32* %14, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %238

95:                                               ; preds = %86
  %96 = load %struct.grep_pat*, %struct.grep_pat** %8, align 8
  %97 = getelementptr inbounds %struct.grep_pat, %struct.grep_pat* %96, i32 0, i32 2
  %98 = load i64, i64* %97, align 8
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %238

100:                                              ; preds = %95
  %101 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %102 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %101, i64 0
  %103 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = icmp slt i32 %104, 0
  br i1 %105, label %136, label %106

106:                                              ; preds = %100
  %107 = load i8*, i8** %10, align 8
  %108 = load i8*, i8** %9, align 8
  %109 = ptrtoint i8* %107 to i64
  %110 = ptrtoint i8* %108 to i64
  %111 = sub i64 %109, %110
  %112 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %113 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %112, i64 0
  %114 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  %116 = sext i32 %115 to i64
  %117 = icmp slt i64 %111, %116
  br i1 %117, label %136, label %118

118:                                              ; preds = %106
  %119 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %120 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %119, i64 0
  %121 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %120, i32 0, i32 1
  %122 = load i32, i32* %121, align 4
  %123 = icmp slt i32 %122, 0
  br i1 %123, label %136, label %124

124:                                              ; preds = %118
  %125 = load i8*, i8** %10, align 8
  %126 = load i8*, i8** %9, align 8
  %127 = ptrtoint i8* %125 to i64
  %128 = ptrtoint i8* %126 to i64
  %129 = sub i64 %127, %128
  %130 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %131 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %130, i64 0
  %132 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %131, i32 0, i32 1
  %133 = load i32, i32* %132, align 4
  %134 = sext i32 %133 to i64
  %135 = icmp slt i64 %129, %134
  br i1 %135, label %136, label %138

136:                                              ; preds = %124, %118, %106, %100
  %137 = call i32 @die(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  br label %138

138:                                              ; preds = %136, %124
  %139 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %140 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %139, i64 0
  %141 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 4
  %143 = icmp eq i32 %142, 0
  br i1 %143, label %156, label %144

144:                                              ; preds = %138
  %145 = load i8*, i8** %9, align 8
  %146 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %147 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %146, i64 0
  %148 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 4
  %150 = sub nsw i32 %149, 1
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds i8, i8* %145, i64 %151
  %153 = load i8, i8* %152, align 1
  %154 = call i64 @word_char(i8 signext %153)
  %155 = icmp ne i64 %154, 0
  br i1 %155, label %180, label %156

156:                                              ; preds = %144, %138
  %157 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %158 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %157, i64 0
  %159 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %158, i32 0, i32 1
  %160 = load i32, i32* %159, align 4
  %161 = sext i32 %160 to i64
  %162 = load i8*, i8** %10, align 8
  %163 = load i8*, i8** %9, align 8
  %164 = ptrtoint i8* %162 to i64
  %165 = ptrtoint i8* %163 to i64
  %166 = sub i64 %164, %165
  %167 = icmp eq i64 %161, %166
  br i1 %167, label %179, label %168

168:                                              ; preds = %156
  %169 = load i8*, i8** %9, align 8
  %170 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %171 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %170, i64 0
  %172 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %171, i32 0, i32 1
  %173 = load i32, i32* %172, align 4
  %174 = sext i32 %173 to i64
  %175 = getelementptr inbounds i8, i8* %169, i64 %174
  %176 = load i8, i8* %175, align 1
  %177 = call i64 @word_char(i8 signext %176)
  %178 = icmp ne i64 %177, 0
  br i1 %178, label %180, label %179

179:                                              ; preds = %168, %156
  br label %181

180:                                              ; preds = %168, %144
  store i32 0, i32* %14, align 4
  br label %181

181:                                              ; preds = %180, %179
  %182 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %183 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %182, i32 0, i32 0
  %184 = load i32, i32* %183, align 4
  %185 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %186 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %185, i32 0, i32 1
  %187 = load i32, i32* %186, align 4
  %188 = icmp eq i32 %184, %187
  br i1 %188, label %189, label %190

189:                                              ; preds = %181
  store i32 0, i32* %14, align 4
  br label %190

190:                                              ; preds = %189, %181
  %191 = load i32, i32* %14, align 4
  %192 = icmp ne i32 %191, 0
  br i1 %192, label %237, label %193

193:                                              ; preds = %190
  %194 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %195 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %194, i64 0
  %196 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %195, i32 0, i32 0
  %197 = load i32, i32* %196, align 4
  %198 = load i8*, i8** %9, align 8
  %199 = sext i32 %197 to i64
  %200 = getelementptr inbounds i8, i8* %198, i64 %199
  %201 = getelementptr inbounds i8, i8* %200, i64 1
  %202 = load i8*, i8** %10, align 8
  %203 = icmp ult i8* %201, %202
  br i1 %203, label %204, label %237

204:                                              ; preds = %193
  %205 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %206 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %205, i64 0
  %207 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %206, i32 0, i32 0
  %208 = load i32, i32* %207, align 4
  %209 = load i8*, i8** %9, align 8
  %210 = sext i32 %208 to i64
  %211 = getelementptr inbounds i8, i8* %209, i64 %210
  %212 = getelementptr inbounds i8, i8* %211, i64 1
  store i8* %212, i8** %9, align 8
  br label %213

213:                                              ; preds = %225, %204
  %214 = load i8*, i8** %9, align 8
  %215 = getelementptr inbounds i8, i8* %214, i64 -1
  %216 = load i8, i8* %215, align 1
  %217 = call i64 @word_char(i8 signext %216)
  %218 = icmp ne i64 %217, 0
  br i1 %218, label %219, label %223

219:                                              ; preds = %213
  %220 = load i8*, i8** %9, align 8
  %221 = load i8*, i8** %10, align 8
  %222 = icmp ult i8* %220, %221
  br label %223

223:                                              ; preds = %219, %213
  %224 = phi i1 [ false, %213 ], [ %222, %219 ]
  br i1 %224, label %225, label %228

225:                                              ; preds = %223
  %226 = load i8*, i8** %9, align 8
  %227 = getelementptr inbounds i8, i8* %226, i32 1
  store i8* %227, i8** %9, align 8
  br label %213

228:                                              ; preds = %223
  %229 = load i32, i32* @REG_NOTBOL, align 4
  %230 = load i32, i32* %13, align 4
  %231 = or i32 %230, %229
  store i32 %231, i32* %13, align 4
  %232 = load i8*, i8** %9, align 8
  %233 = load i8*, i8** %10, align 8
  %234 = icmp ult i8* %232, %233
  br i1 %234, label %235, label %236

235:                                              ; preds = %228
  br label %86

236:                                              ; preds = %228
  br label %237

237:                                              ; preds = %236, %193, %190
  br label %238

238:                                              ; preds = %237, %95, %86
  %239 = load %struct.grep_pat*, %struct.grep_pat** %8, align 8
  %240 = getelementptr inbounds %struct.grep_pat, %struct.grep_pat* %239, i32 0, i32 0
  %241 = load i64, i64* %240, align 8
  %242 = load i64, i64* @GREP_PATTERN_HEAD, align 8
  %243 = icmp eq i64 %241, %242
  br i1 %243, label %244, label %251

244:                                              ; preds = %238
  %245 = load i32, i32* %15, align 4
  %246 = icmp ne i32 %245, 0
  br i1 %246, label %247, label %251

247:                                              ; preds = %244
  %248 = load i32, i32* %15, align 4
  %249 = trunc i32 %248 to i8
  %250 = load i8*, i8** %10, align 8
  store i8 %249, i8* %250, align 1
  br label %251

251:                                              ; preds = %247, %244, %238
  %252 = load i32, i32* %14, align 4
  %253 = icmp ne i32 %252, 0
  br i1 %253, label %254, label %279

254:                                              ; preds = %251
  %255 = load i8*, i8** %9, align 8
  %256 = load i8*, i8** %16, align 8
  %257 = ptrtoint i8* %255 to i64
  %258 = ptrtoint i8* %256 to i64
  %259 = sub i64 %257, %258
  %260 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %261 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %260, i64 0
  %262 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %261, i32 0, i32 0
  %263 = load i32, i32* %262, align 4
  %264 = sext i32 %263 to i64
  %265 = add nsw i64 %264, %259
  %266 = trunc i64 %265 to i32
  store i32 %266, i32* %262, align 4
  %267 = load i8*, i8** %9, align 8
  %268 = load i8*, i8** %16, align 8
  %269 = ptrtoint i8* %267 to i64
  %270 = ptrtoint i8* %268 to i64
  %271 = sub i64 %269, %270
  %272 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %273 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %272, i64 0
  %274 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %273, i32 0, i32 1
  %275 = load i32, i32* %274, align 4
  %276 = sext i32 %275 to i64
  %277 = add nsw i64 %276, %271
  %278 = trunc i64 %277 to i32
  store i32 %278, i32* %274, align 4
  br label %279

279:                                              ; preds = %254, %251
  %280 = load i32, i32* %14, align 4
  store i32 %280, i32* %7, align 4
  br label %281

281:                                              ; preds = %279, %72, %37
  %282 = load i32, i32* %7, align 4
  ret i32 %282
}

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @ARRAY_SIZE(%struct.TYPE_7__*) #1

declare dso_local i64 @strncmp(i8*, i8*, i64) #1

declare dso_local i32 @strip_timestamp(i8*, i8**) #1

declare dso_local i32 @patmatch(%struct.grep_pat*, i8*, i8*, %struct.TYPE_6__*, i32) #1

declare dso_local i32 @die(i8*) #1

declare dso_local i64 @word_char(i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
