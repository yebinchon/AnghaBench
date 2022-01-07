; ModuleID = '/home/carl/AnghaBench/h2o/deps/mruby-onig-regexp/src/extr_mruby_onig_regexp.c_string_scan.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/mruby-onig-regexp/src/extr_mruby_onig_regexp.c_string_scan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32*, i32* }

@.str = private unnamed_addr constant [3 x i8] c"&o\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"string_scan\00", align 1
@mrb_onig_regexp_type = common dso_local global i32 0, align 4
@ONIG_MISMATCH = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32)* @string_scan to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @string_scan(i32* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_2__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  %19 = load i32*, i32** %4, align 8
  %20 = call i32 @mrb_get_args(i32* %19, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32* %6, i32* %7)
  %21 = load i32, i32* %7, align 4
  %22 = call i32 @ONIG_REGEXP_P(i32 %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %31, label %24

24:                                               ; preds = %2
  %25 = load i32*, i32** %4, align 8
  %26 = load i32, i32* %5, align 4
  %27 = load i32*, i32** %4, align 8
  %28 = call i32 @mrb_intern_lit(i32* %27, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0))
  %29 = load i32, i32* %6, align 4
  %30 = call i32 @mrb_funcall_with_block(i32* %25, i32 %26, i32 %28, i32 1, i32* %7, i32 %29)
  store i32 %30, i32* %3, align 4
  br label %290

31:                                               ; preds = %2
  %32 = load i32*, i32** %4, align 8
  %33 = load i32, i32* %7, align 4
  %34 = load i32, i32* %8, align 4
  %35 = call i32 @Data_Get_Struct(i32* %32, i32 %33, i32* @mrb_onig_regexp_type, i32 %34)
  %36 = load i32, i32* %6, align 4
  %37 = call i64 @mrb_nil_p(i32 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %31
  %40 = load i32*, i32** %4, align 8
  %41 = call i32 @mrb_ary_new(i32* %40)
  br label %44

42:                                               ; preds = %31
  %43 = load i32, i32* %5, align 4
  br label %44

44:                                               ; preds = %42, %39
  %45 = phi i32 [ %41, %39 ], [ %43, %42 ]
  store i32 %45, i32* %9, align 4
  %46 = load i32*, i32** %4, align 8
  %47 = load i32, i32* %5, align 4
  %48 = load i32, i32* %7, align 4
  %49 = call i32 @create_onig_region(i32* %46, i32 %47, i32 %48)
  store i32 %49, i32* %10, align 4
  %50 = load i32, i32* %10, align 4
  %51 = call i64 @DATA_PTR(i32 %50)
  %52 = inttoptr i64 %51 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %52, %struct.TYPE_2__** %11, align 8
  store i32 0, i32* %12, align 4
  br label %53

53:                                               ; preds = %44, %287
  %54 = load i32*, i32** %4, align 8
  %55 = load i32, i32* %8, align 4
  %56 = load i32, i32* %10, align 4
  %57 = load i32, i32* %5, align 4
  %58 = load i32, i32* %12, align 4
  %59 = call i64 @onig_match_common(i32* %54, i32 %55, i32 %56, i32 %57, i32 %58)
  %60 = load i64, i64* @ONIG_MISMATCH, align 8
  %61 = icmp eq i64 %59, %60
  br i1 %61, label %62, label %63

62:                                               ; preds = %53
  br label %288

63:                                               ; preds = %53
  %64 = load i32, i32* %6, align 4
  %65 = call i64 @mrb_nil_p(i32 %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %149

67:                                               ; preds = %63
  %68 = load i32, i32* %9, align 4
  %69 = call i32 @mrb_array_p(i32 %68)
  %70 = call i32 @mrb_assert(i32 %69)
  %71 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = icmp eq i32 %73, 1
  br i1 %74, label %75, label %98

75:                                               ; preds = %67
  %76 = load i32*, i32** %4, align 8
  %77 = load i32, i32* %9, align 4
  %78 = load i32*, i32** %4, align 8
  %79 = load i32, i32* %5, align 4
  %80 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i32 0, i32 1
  %82 = load i32*, i32** %81, align 8
  %83 = getelementptr inbounds i32, i32* %82, i64 0
  %84 = load i32, i32* %83, align 4
  %85 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %86 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %85, i32 0, i32 2
  %87 = load i32*, i32** %86, align 8
  %88 = getelementptr inbounds i32, i32* %87, i64 0
  %89 = load i32, i32* %88, align 4
  %90 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %91 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %90, i32 0, i32 1
  %92 = load i32*, i32** %91, align 8
  %93 = getelementptr inbounds i32, i32* %92, i64 0
  %94 = load i32, i32* %93, align 4
  %95 = sub nsw i32 %89, %94
  %96 = call i32 @str_substr(i32* %78, i32 %79, i32 %84, i32 %95)
  %97 = call i32 @mrb_ary_push(i32* %76, i32 %77, i32 %96)
  br label %148

98:                                               ; preds = %67
  %99 = load i32*, i32** %4, align 8
  %100 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %101 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = sub nsw i32 %102, 1
  %104 = call i32 @mrb_ary_new_capa(i32* %99, i32 %103)
  store i32 %104, i32* %14, align 4
  store i32 1, i32* %13, align 4
  br label %105

105:                                              ; preds = %140, %98
  %106 = load i32, i32* %13, align 4
  %107 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %108 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  %110 = icmp slt i32 %106, %109
  br i1 %110, label %111, label %143

111:                                              ; preds = %105
  %112 = load i32*, i32** %4, align 8
  %113 = load i32, i32* %14, align 4
  %114 = load i32*, i32** %4, align 8
  %115 = load i32, i32* %5, align 4
  %116 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %117 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %116, i32 0, i32 1
  %118 = load i32*, i32** %117, align 8
  %119 = load i32, i32* %13, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds i32, i32* %118, i64 %120
  %122 = load i32, i32* %121, align 4
  %123 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %124 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %123, i32 0, i32 2
  %125 = load i32*, i32** %124, align 8
  %126 = load i32, i32* %13, align 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds i32, i32* %125, i64 %127
  %129 = load i32, i32* %128, align 4
  %130 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %131 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %130, i32 0, i32 1
  %132 = load i32*, i32** %131, align 8
  %133 = load i32, i32* %13, align 4
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds i32, i32* %132, i64 %134
  %136 = load i32, i32* %135, align 4
  %137 = sub nsw i32 %129, %136
  %138 = call i32 @str_substr(i32* %114, i32 %115, i32 %122, i32 %137)
  %139 = call i32 @mrb_ary_push(i32* %112, i32 %113, i32 %138)
  br label %140

140:                                              ; preds = %111
  %141 = load i32, i32* %13, align 4
  %142 = add nsw i32 %141, 1
  store i32 %142, i32* %13, align 4
  br label %105

143:                                              ; preds = %105
  %144 = load i32*, i32** %4, align 8
  %145 = load i32, i32* %9, align 4
  %146 = load i32, i32* %14, align 4
  %147 = call i32 @mrb_ary_push(i32* %144, i32 %145, i32 %146)
  br label %148

148:                                              ; preds = %143, %75
  br label %231

149:                                              ; preds = %63
  %150 = load i32, i32* %9, align 4
  %151 = call i32 @mrb_string_p(i32 %150)
  %152 = call i32 @mrb_assert(i32 %151)
  %153 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %154 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %153, i32 0, i32 0
  %155 = load i32, i32* %154, align 8
  %156 = icmp eq i32 %155, 1
  br i1 %156, label %157, label %180

157:                                              ; preds = %149
  %158 = load i32*, i32** %4, align 8
  %159 = load i32, i32* %6, align 4
  %160 = load i32*, i32** %4, align 8
  %161 = load i32, i32* %5, align 4
  %162 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %163 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %162, i32 0, i32 1
  %164 = load i32*, i32** %163, align 8
  %165 = getelementptr inbounds i32, i32* %164, i64 0
  %166 = load i32, i32* %165, align 4
  %167 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %168 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %167, i32 0, i32 2
  %169 = load i32*, i32** %168, align 8
  %170 = getelementptr inbounds i32, i32* %169, i64 0
  %171 = load i32, i32* %170, align 4
  %172 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %173 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %172, i32 0, i32 1
  %174 = load i32*, i32** %173, align 8
  %175 = getelementptr inbounds i32, i32* %174, i64 0
  %176 = load i32, i32* %175, align 4
  %177 = sub nsw i32 %171, %176
  %178 = call i32 @str_substr(i32* %160, i32 %161, i32 %166, i32 %177)
  %179 = call i32 @mrb_yield(i32* %158, i32 %159, i32 %178)
  br label %230

180:                                              ; preds = %149
  %181 = load i32*, i32** %4, align 8
  %182 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %183 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %182, i32 0, i32 0
  %184 = load i32, i32* %183, align 8
  %185 = sub nsw i32 %184, 1
  %186 = call i32 @mrb_ary_new_capa(i32* %181, i32 %185)
  store i32 %186, i32* %15, align 4
  store i32 1, i32* %13, align 4
  br label %187

187:                                              ; preds = %222, %180
  %188 = load i32, i32* %13, align 4
  %189 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %190 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %189, i32 0, i32 0
  %191 = load i32, i32* %190, align 8
  %192 = icmp slt i32 %188, %191
  br i1 %192, label %193, label %225

193:                                              ; preds = %187
  %194 = load i32*, i32** %4, align 8
  %195 = load i32, i32* %15, align 4
  %196 = load i32*, i32** %4, align 8
  %197 = load i32, i32* %5, align 4
  %198 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %199 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %198, i32 0, i32 1
  %200 = load i32*, i32** %199, align 8
  %201 = load i32, i32* %13, align 4
  %202 = sext i32 %201 to i64
  %203 = getelementptr inbounds i32, i32* %200, i64 %202
  %204 = load i32, i32* %203, align 4
  %205 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %206 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %205, i32 0, i32 2
  %207 = load i32*, i32** %206, align 8
  %208 = load i32, i32* %13, align 4
  %209 = sext i32 %208 to i64
  %210 = getelementptr inbounds i32, i32* %207, i64 %209
  %211 = load i32, i32* %210, align 4
  %212 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %213 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %212, i32 0, i32 1
  %214 = load i32*, i32** %213, align 8
  %215 = load i32, i32* %13, align 4
  %216 = sext i32 %215 to i64
  %217 = getelementptr inbounds i32, i32* %214, i64 %216
  %218 = load i32, i32* %217, align 4
  %219 = sub nsw i32 %211, %218
  %220 = call i32 @str_substr(i32* %196, i32 %197, i32 %204, i32 %219)
  %221 = call i32 @mrb_ary_push(i32* %194, i32 %195, i32 %220)
  br label %222

222:                                              ; preds = %193
  %223 = load i32, i32* %13, align 4
  %224 = add nsw i32 %223, 1
  store i32 %224, i32* %13, align 4
  br label %187

225:                                              ; preds = %187
  %226 = load i32*, i32** %4, align 8
  %227 = load i32, i32* %6, align 4
  %228 = load i32, i32* %15, align 4
  %229 = call i32 @mrb_yield(i32* %226, i32 %227, i32 %228)
  br label %230

230:                                              ; preds = %225, %157
  br label %231

231:                                              ; preds = %230, %148
  %232 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %233 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %232, i32 0, i32 1
  %234 = load i32*, i32** %233, align 8
  %235 = getelementptr inbounds i32, i32* %234, i64 0
  %236 = load i32, i32* %235, align 4
  %237 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %238 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %237, i32 0, i32 2
  %239 = load i32*, i32** %238, align 8
  %240 = getelementptr inbounds i32, i32* %239, i64 0
  %241 = load i32, i32* %240, align 4
  %242 = icmp eq i32 %236, %241
  br i1 %242, label %243, label %281

243:                                              ; preds = %231
  %244 = load i32, i32* %5, align 4
  %245 = call i32 @RSTRING_LEN(i32 %244)
  %246 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %247 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %246, i32 0, i32 2
  %248 = load i32*, i32** %247, align 8
  %249 = getelementptr inbounds i32, i32* %248, i64 0
  %250 = load i32, i32* %249, align 4
  %251 = icmp sgt i32 %245, %250
  br i1 %251, label %252, label %273

252:                                              ; preds = %243
  %253 = load i32, i32* %5, align 4
  %254 = call i8* @RSTRING_PTR(i32 %253)
  %255 = load i32, i32* %12, align 4
  %256 = sext i32 %255 to i64
  %257 = getelementptr inbounds i8, i8* %254, i64 %256
  store i8* %257, i8** %16, align 8
  %258 = load i8*, i8** %16, align 8
  %259 = load i32, i32* %5, align 4
  %260 = call i32 @RSTRING_LEN(i32 %259)
  %261 = sext i32 %260 to i64
  %262 = getelementptr inbounds i8, i8* %258, i64 %261
  store i8* %262, i8** %17, align 8
  %263 = load i8*, i8** %16, align 8
  %264 = load i8*, i8** %17, align 8
  %265 = call i32 @utf8len(i8* %263, i8* %264)
  store i32 %265, i32* %18, align 4
  %266 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %267 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %266, i32 0, i32 2
  %268 = load i32*, i32** %267, align 8
  %269 = getelementptr inbounds i32, i32* %268, i64 0
  %270 = load i32, i32* %269, align 4
  %271 = load i32, i32* %18, align 4
  %272 = add nsw i32 %270, %271
  store i32 %272, i32* %12, align 4
  br label %280

273:                                              ; preds = %243
  %274 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %275 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %274, i32 0, i32 2
  %276 = load i32*, i32** %275, align 8
  %277 = getelementptr inbounds i32, i32* %276, i64 0
  %278 = load i32, i32* %277, align 4
  %279 = add nsw i32 %278, 1
  store i32 %279, i32* %12, align 4
  br label %280

280:                                              ; preds = %273, %252
  br label %287

281:                                              ; preds = %231
  %282 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %283 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %282, i32 0, i32 2
  %284 = load i32*, i32** %283, align 8
  %285 = getelementptr inbounds i32, i32* %284, i64 0
  %286 = load i32, i32* %285, align 4
  store i32 %286, i32* %12, align 4
  br label %287

287:                                              ; preds = %281, %280
  br label %53

288:                                              ; preds = %62
  %289 = load i32, i32* %9, align 4
  store i32 %289, i32* %3, align 4
  br label %290

290:                                              ; preds = %288, %24
  %291 = load i32, i32* %3, align 4
  ret i32 %291
}

declare dso_local i32 @mrb_get_args(i32*, i8*, i32*, i32*) #1

declare dso_local i32 @ONIG_REGEXP_P(i32) #1

declare dso_local i32 @mrb_funcall_with_block(i32*, i32, i32, i32, i32*, i32) #1

declare dso_local i32 @mrb_intern_lit(i32*, i8*) #1

declare dso_local i32 @Data_Get_Struct(i32*, i32, i32*, i32) #1

declare dso_local i64 @mrb_nil_p(i32) #1

declare dso_local i32 @mrb_ary_new(i32*) #1

declare dso_local i32 @create_onig_region(i32*, i32, i32) #1

declare dso_local i64 @DATA_PTR(i32) #1

declare dso_local i64 @onig_match_common(i32*, i32, i32, i32, i32) #1

declare dso_local i32 @mrb_assert(i32) #1

declare dso_local i32 @mrb_array_p(i32) #1

declare dso_local i32 @mrb_ary_push(i32*, i32, i32) #1

declare dso_local i32 @str_substr(i32*, i32, i32, i32) #1

declare dso_local i32 @mrb_ary_new_capa(i32*, i32) #1

declare dso_local i32 @mrb_string_p(i32) #1

declare dso_local i32 @mrb_yield(i32*, i32, i32) #1

declare dso_local i32 @RSTRING_LEN(i32) #1

declare dso_local i8* @RSTRING_PTR(i32) #1

declare dso_local i32 @utf8len(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
