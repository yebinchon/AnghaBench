; ModuleID = '/home/carl/AnghaBench/git/extr_pretty.c_format_and_pad_commit.c'
source_filename = "/home/carl/AnghaBench/git/extr_pretty.c_format_and_pad_commit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strbuf = type { i8*, i32 }
%struct.format_commit_context = type { i32, i64, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@STRBUF_INIT = common dso_local global %struct.strbuf zeroinitializer, align 8
@flush_left_and_steal = common dso_local global i64 0, align 8
@flush_left = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [3 x i8] c"..\00", align 1
@flush_both = common dso_local global i64 0, align 8
@no_flush = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.strbuf*, i8*, %struct.format_commit_context*)* @format_and_pad_commit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @format_and_pad_commit(%struct.strbuf* %0, i8* %1, %struct.format_commit_context* %2) #0 {
  %4 = alloca %struct.strbuf*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.format_commit_context*, align 8
  %7 = alloca %struct.strbuf, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.strbuf* %0, %struct.strbuf** %4, align 8
  store i8* %1, i8** %5, align 8
  store %struct.format_commit_context* %2, %struct.format_commit_context** %6, align 8
  %19 = bitcast %struct.strbuf* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %19, i8* align 8 bitcast (%struct.strbuf* @STRBUF_INIT to i8*), i64 16, i1 false)
  store i32 0, i32* %8, align 4
  %20 = load %struct.format_commit_context*, %struct.format_commit_context** %6, align 8
  %21 = getelementptr inbounds %struct.format_commit_context, %struct.format_commit_context* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  store i32 %22, i32* %10, align 4
  %23 = load i32, i32* %10, align 4
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %25, label %52

25:                                               ; preds = %3
  %26 = load %struct.strbuf*, %struct.strbuf** %4, align 8
  %27 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %26, i32 0, i32 0
  %28 = load i8*, i8** %27, align 8
  %29 = call i8* @strrchr(i8* %28, i8 signext 10)
  store i8* %29, i8** %11, align 8
  %30 = load i8*, i8** %11, align 8
  %31 = icmp ne i8* %30, null
  br i1 %31, label %36, label %32

32:                                               ; preds = %25
  %33 = load %struct.strbuf*, %struct.strbuf** %4, align 8
  %34 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %33, i32 0, i32 0
  %35 = load i8*, i8** %34, align 8
  store i8* %35, i8** %11, align 8
  br label %36

36:                                               ; preds = %32, %25
  %37 = load i8*, i8** %11, align 8
  %38 = call i32 @utf8_strnwidth(i8* %37, i32 -1, i32 1)
  store i32 %38, i32* %12, align 4
  %39 = load %struct.format_commit_context*, %struct.format_commit_context** %6, align 8
  %40 = getelementptr inbounds %struct.format_commit_context, %struct.format_commit_context* %39, i32 0, i32 3
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load i32, i32* %12, align 4
  %45 = sext i32 %44 to i64
  %46 = add nsw i64 %45, %43
  %47 = trunc i64 %46 to i32
  store i32 %47, i32* %12, align 4
  %48 = load i32, i32* %10, align 4
  %49 = sub nsw i32 0, %48
  %50 = load i32, i32* %12, align 4
  %51 = sub nsw i32 %49, %50
  store i32 %51, i32* %10, align 4
  br label %52

52:                                               ; preds = %36, %3
  br label %53

53:                                               ; preds = %52, %78
  %54 = load i8*, i8** %5, align 8
  %55 = load i8, i8* %54, align 1
  %56 = sext i8 %55 to i32
  %57 = icmp eq i32 %56, 67
  %58 = zext i1 %57 to i32
  store i32 %58, i32* %13, align 4
  %59 = load i8*, i8** %5, align 8
  %60 = load %struct.format_commit_context*, %struct.format_commit_context** %6, align 8
  %61 = call i32 @format_commit_one(%struct.strbuf* %7, i8* %59, %struct.format_commit_context* %60)
  store i32 %61, i32* %14, align 4
  %62 = load i32, i32* %14, align 4
  %63 = load i32, i32* %8, align 4
  %64 = add nsw i32 %63, %62
  store i32 %64, i32* %8, align 4
  %65 = load i32, i32* %13, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %68, label %67

67:                                               ; preds = %53
  br label %83

68:                                               ; preds = %53
  %69 = load i32, i32* %14, align 4
  %70 = load i8*, i8** %5, align 8
  %71 = sext i32 %69 to i64
  %72 = getelementptr inbounds i8, i8* %70, i64 %71
  store i8* %72, i8** %5, align 8
  %73 = load i8*, i8** %5, align 8
  %74 = load i8, i8* %73, align 1
  %75 = sext i8 %74 to i32
  %76 = icmp ne i32 %75, 37
  br i1 %76, label %77, label %78

77:                                               ; preds = %68
  br label %83

78:                                               ; preds = %68
  %79 = load i8*, i8** %5, align 8
  %80 = getelementptr inbounds i8, i8* %79, i32 1
  store i8* %80, i8** %5, align 8
  %81 = load i32, i32* %8, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %8, align 4
  br label %53

83:                                               ; preds = %77, %67
  %84 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %7, i32 0, i32 0
  %85 = load i8*, i8** %84, align 8
  %86 = call i32 @utf8_strnwidth(i8* %85, i32 -1, i32 1)
  store i32 %86, i32* %9, align 4
  %87 = load %struct.format_commit_context*, %struct.format_commit_context** %6, align 8
  %88 = getelementptr inbounds %struct.format_commit_context, %struct.format_commit_context* %87, i32 0, i32 1
  %89 = load i64, i64* %88, align 8
  %90 = load i64, i64* @flush_left_and_steal, align 8
  %91 = icmp eq i64 %89, %90
  br i1 %91, label %92, label %194

92:                                               ; preds = %83
  %93 = load %struct.strbuf*, %struct.strbuf** %4, align 8
  %94 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %93, i32 0, i32 0
  %95 = load i8*, i8** %94, align 8
  %96 = load %struct.strbuf*, %struct.strbuf** %4, align 8
  %97 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 8
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds i8, i8* %95, i64 %99
  %101 = getelementptr inbounds i8, i8* %100, i64 -1
  store i8* %101, i8** %15, align 8
  br label %102

102:                                              ; preds = %167, %119, %92
  %103 = load i32, i32* %9, align 4
  %104 = load i32, i32* %10, align 4
  %105 = icmp sgt i32 %103, %104
  br i1 %105, label %106, label %112

106:                                              ; preds = %102
  %107 = load i8*, i8** %15, align 8
  %108 = load %struct.strbuf*, %struct.strbuf** %4, align 8
  %109 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %108, i32 0, i32 0
  %110 = load i8*, i8** %109, align 8
  %111 = icmp ugt i8* %107, %110
  br label %112

112:                                              ; preds = %106, %102
  %113 = phi i1 [ false, %102 ], [ %111, %106 ]
  br i1 %113, label %114, label %179

114:                                              ; preds = %112
  %115 = load i8*, i8** %15, align 8
  %116 = load i8, i8* %115, align 1
  %117 = sext i8 %116 to i32
  %118 = icmp eq i32 %117, 32
  br i1 %118, label %119, label %124

119:                                              ; preds = %114
  %120 = load i8*, i8** %15, align 8
  %121 = getelementptr inbounds i8, i8* %120, i32 -1
  store i8* %121, i8** %15, align 8
  %122 = load i32, i32* %10, align 4
  %123 = add nsw i32 %122, 1
  store i32 %123, i32* %10, align 4
  br label %102

124:                                              ; preds = %114
  %125 = load i8*, i8** %15, align 8
  %126 = load i8, i8* %125, align 1
  %127 = sext i8 %126 to i32
  %128 = icmp ne i32 %127, 109
  br i1 %128, label %129, label %130

129:                                              ; preds = %124
  br label %179

130:                                              ; preds = %124
  %131 = load i8*, i8** %15, align 8
  %132 = getelementptr inbounds i8, i8* %131, i64 -1
  store i8* %132, i8** %16, align 8
  br label %133

133:                                              ; preds = %147, %130
  %134 = load i8*, i8** %15, align 8
  %135 = load i8*, i8** %16, align 8
  %136 = ptrtoint i8* %134 to i64
  %137 = ptrtoint i8* %135 to i64
  %138 = sub i64 %136, %137
  %139 = icmp slt i64 %138, 10
  br i1 %139, label %140, label %145

140:                                              ; preds = %133
  %141 = load i8*, i8** %16, align 8
  %142 = load i8, i8* %141, align 1
  %143 = sext i8 %142 to i32
  %144 = icmp ne i32 %143, 27
  br label %145

145:                                              ; preds = %140, %133
  %146 = phi i1 [ false, %133 ], [ %144, %140 ]
  br i1 %146, label %147, label %150

147:                                              ; preds = %145
  %148 = load i8*, i8** %16, align 8
  %149 = getelementptr inbounds i8, i8* %148, i32 -1
  store i8* %149, i8** %16, align 8
  br label %133

150:                                              ; preds = %145
  %151 = load i8*, i8** %16, align 8
  %152 = load i8, i8* %151, align 1
  %153 = sext i8 %152 to i32
  %154 = icmp ne i32 %153, 27
  br i1 %154, label %166, label %155

155:                                              ; preds = %150
  %156 = load i8*, i8** %15, align 8
  %157 = getelementptr inbounds i8, i8* %156, i64 1
  %158 = load i8*, i8** %16, align 8
  %159 = ptrtoint i8* %157 to i64
  %160 = ptrtoint i8* %158 to i64
  %161 = sub i64 %159, %160
  %162 = load i8*, i8** %16, align 8
  %163 = call i32 @display_mode_esc_sequence_len(i8* %162)
  %164 = sext i32 %163 to i64
  %165 = icmp ne i64 %161, %164
  br i1 %165, label %166, label %167

166:                                              ; preds = %155, %150
  br label %179

167:                                              ; preds = %155
  %168 = load i8*, i8** %16, align 8
  %169 = load i8*, i8** %15, align 8
  %170 = getelementptr inbounds i8, i8* %169, i64 1
  %171 = load i8*, i8** %16, align 8
  %172 = ptrtoint i8* %170 to i64
  %173 = ptrtoint i8* %171 to i64
  %174 = sub i64 %172, %173
  %175 = trunc i64 %174 to i32
  %176 = call i32 @strbuf_insert(%struct.strbuf* %7, i32 0, i8* %168, i32 %175)
  %177 = load i8*, i8** %16, align 8
  %178 = getelementptr inbounds i8, i8* %177, i64 -1
  store i8* %178, i8** %15, align 8
  br label %102

179:                                              ; preds = %166, %129, %112
  %180 = load %struct.strbuf*, %struct.strbuf** %4, align 8
  %181 = load i8*, i8** %15, align 8
  %182 = getelementptr inbounds i8, i8* %181, i64 1
  %183 = load %struct.strbuf*, %struct.strbuf** %4, align 8
  %184 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %183, i32 0, i32 0
  %185 = load i8*, i8** %184, align 8
  %186 = ptrtoint i8* %182 to i64
  %187 = ptrtoint i8* %185 to i64
  %188 = sub i64 %186, %187
  %189 = trunc i64 %188 to i32
  %190 = call i32 @strbuf_setlen(%struct.strbuf* %180, i32 %189)
  %191 = load i64, i64* @flush_left, align 8
  %192 = load %struct.format_commit_context*, %struct.format_commit_context** %6, align 8
  %193 = getelementptr inbounds %struct.format_commit_context, %struct.format_commit_context* %192, i32 0, i32 1
  store i64 %191, i64* %193, align 8
  br label %194

194:                                              ; preds = %179, %83
  %195 = load i32, i32* %9, align 4
  %196 = load i32, i32* %10, align 4
  %197 = icmp sgt i32 %195, %196
  br i1 %197, label %198, label %229

198:                                              ; preds = %194
  %199 = load %struct.format_commit_context*, %struct.format_commit_context** %6, align 8
  %200 = getelementptr inbounds %struct.format_commit_context, %struct.format_commit_context* %199, i32 0, i32 2
  %201 = load i32, i32* %200, align 8
  switch i32 %201, label %226 [
    i32 131, label %202
    i32 130, label %208
    i32 128, label %217
    i32 129, label %225
  ]

202:                                              ; preds = %198
  %203 = load i32, i32* %9, align 4
  %204 = load i32, i32* %10, align 4
  %205 = sub nsw i32 %204, 2
  %206 = sub nsw i32 %203, %205
  %207 = call i32 @strbuf_utf8_replace(%struct.strbuf* %7, i32 0, i32 %206, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  br label %226

208:                                              ; preds = %198
  %209 = load i32, i32* %10, align 4
  %210 = sdiv i32 %209, 2
  %211 = sub nsw i32 %210, 1
  %212 = load i32, i32* %9, align 4
  %213 = load i32, i32* %10, align 4
  %214 = sub nsw i32 %213, 2
  %215 = sub nsw i32 %212, %214
  %216 = call i32 @strbuf_utf8_replace(%struct.strbuf* %7, i32 %211, i32 %215, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  br label %226

217:                                              ; preds = %198
  %218 = load i32, i32* %10, align 4
  %219 = sub nsw i32 %218, 2
  %220 = load i32, i32* %9, align 4
  %221 = load i32, i32* %10, align 4
  %222 = sub nsw i32 %221, 2
  %223 = sub nsw i32 %220, %222
  %224 = call i32 @strbuf_utf8_replace(%struct.strbuf* %7, i32 %219, i32 %223, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  br label %226

225:                                              ; preds = %198
  br label %226

226:                                              ; preds = %198, %225, %217, %208, %202
  %227 = load %struct.strbuf*, %struct.strbuf** %4, align 8
  %228 = call i32 @strbuf_addbuf(%struct.strbuf* %227, %struct.strbuf* %7)
  br label %278

229:                                              ; preds = %194
  %230 = load %struct.strbuf*, %struct.strbuf** %4, align 8
  %231 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %230, i32 0, i32 1
  %232 = load i32, i32* %231, align 8
  store i32 %232, i32* %17, align 4
  store i32 0, i32* %18, align 4
  %233 = load %struct.format_commit_context*, %struct.format_commit_context** %6, align 8
  %234 = getelementptr inbounds %struct.format_commit_context, %struct.format_commit_context* %233, i32 0, i32 1
  %235 = load i64, i64* %234, align 8
  %236 = load i64, i64* @flush_left, align 8
  %237 = icmp eq i64 %235, %236
  br i1 %237, label %238, label %242

238:                                              ; preds = %229
  %239 = load i32, i32* %10, align 4
  %240 = load i32, i32* %9, align 4
  %241 = sub nsw i32 %239, %240
  store i32 %241, i32* %18, align 4
  br label %254

242:                                              ; preds = %229
  %243 = load %struct.format_commit_context*, %struct.format_commit_context** %6, align 8
  %244 = getelementptr inbounds %struct.format_commit_context, %struct.format_commit_context* %243, i32 0, i32 1
  %245 = load i64, i64* %244, align 8
  %246 = load i64, i64* @flush_both, align 8
  %247 = icmp eq i64 %245, %246
  br i1 %247, label %248, label %253

248:                                              ; preds = %242
  %249 = load i32, i32* %10, align 4
  %250 = load i32, i32* %9, align 4
  %251 = sub nsw i32 %249, %250
  %252 = sdiv i32 %251, 2
  store i32 %252, i32* %18, align 4
  br label %253

253:                                              ; preds = %248, %242
  br label %254

254:                                              ; preds = %253, %238
  %255 = load i32, i32* %10, align 4
  %256 = load i32, i32* %9, align 4
  %257 = sub nsw i32 %255, %256
  %258 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %7, i32 0, i32 1
  %259 = load i32, i32* %258, align 8
  %260 = add nsw i32 %257, %259
  store i32 %260, i32* %10, align 4
  %261 = load %struct.strbuf*, %struct.strbuf** %4, align 8
  %262 = load i32, i32* %10, align 4
  %263 = call i32 @strbuf_addchars(%struct.strbuf* %261, i8 signext 32, i32 %262)
  %264 = load %struct.strbuf*, %struct.strbuf** %4, align 8
  %265 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %264, i32 0, i32 0
  %266 = load i8*, i8** %265, align 8
  %267 = load i32, i32* %17, align 4
  %268 = sext i32 %267 to i64
  %269 = getelementptr inbounds i8, i8* %266, i64 %268
  %270 = load i32, i32* %18, align 4
  %271 = sext i32 %270 to i64
  %272 = getelementptr inbounds i8, i8* %269, i64 %271
  %273 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %7, i32 0, i32 0
  %274 = load i8*, i8** %273, align 8
  %275 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %7, i32 0, i32 1
  %276 = load i32, i32* %275, align 8
  %277 = call i32 @memcpy(i8* %272, i8* %274, i32 %276)
  br label %278

278:                                              ; preds = %254, %226
  %279 = call i32 @strbuf_release(%struct.strbuf* %7)
  %280 = load i64, i64* @no_flush, align 8
  %281 = load %struct.format_commit_context*, %struct.format_commit_context** %6, align 8
  %282 = getelementptr inbounds %struct.format_commit_context, %struct.format_commit_context* %281, i32 0, i32 1
  store i64 %280, i64* %282, align 8
  %283 = load i32, i32* %8, align 4
  %284 = sext i32 %283 to i64
  ret i64 %284
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i8* @strrchr(i8*, i8 signext) #2

declare dso_local i32 @utf8_strnwidth(i8*, i32, i32) #2

declare dso_local i32 @format_commit_one(%struct.strbuf*, i8*, %struct.format_commit_context*) #2

declare dso_local i32 @display_mode_esc_sequence_len(i8*) #2

declare dso_local i32 @strbuf_insert(%struct.strbuf*, i32, i8*, i32) #2

declare dso_local i32 @strbuf_setlen(%struct.strbuf*, i32) #2

declare dso_local i32 @strbuf_utf8_replace(%struct.strbuf*, i32, i32, i8*) #2

declare dso_local i32 @strbuf_addbuf(%struct.strbuf*, %struct.strbuf*) #2

declare dso_local i32 @strbuf_addchars(%struct.strbuf*, i8 signext, i32) #2

declare dso_local i32 @memcpy(i8*, i8*, i32) #2

declare dso_local i32 @strbuf_release(%struct.strbuf*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
