; ModuleID = '/home/carl/AnghaBench/h2o/deps/mruby-json/src/extr_mrb_json.c_mrb_value_to_string.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/mruby-json/src/extr_mrb_json.c_mrb_value_to_string.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [5 x i8] c"null\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"to_s\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"\22\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"\\\\\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"\\\22\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"\\b\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"\\f\00", align 1
@.str.7 = private unnamed_addr constant [3 x i8] c"\\n\00", align 1
@.str.8 = private unnamed_addr constant [3 x i8] c"\\r\00", align 1
@.str.9 = private unnamed_addr constant [3 x i8] c"\\t\00", align 1
@.str.10 = private unnamed_addr constant [2 x i8] c"{\00", align 1
@.str.11 = private unnamed_addr constant [3 x i8] c"\0A}\00", align 1
@.str.12 = private unnamed_addr constant [2 x i8] c"}\00", align 1
@.str.13 = private unnamed_addr constant [8 x i8] c"inspect\00", align 1
@.str.14 = private unnamed_addr constant [2 x i8] c":\00", align 1
@.str.15 = private unnamed_addr constant [2 x i8] c",\00", align 1
@.str.16 = private unnamed_addr constant [2 x i8] c"[\00", align 1
@.str.17 = private unnamed_addr constant [3 x i8] c"\0A]\00", align 1
@.str.18 = private unnamed_addr constant [2 x i8] c"]\00", align 1
@.str.19 = private unnamed_addr constant [8 x i8] c"to_json\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, i32)* @mrb_value_to_string to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mrb_value_to_string(i32* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %23 = load i32, i32* %6, align 4
  %24 = call i64 @mrb_nil_p(i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %3
  %27 = load i32*, i32** %5, align 8
  %28 = call i32 @mrb_str_new_cstr(i32* %27, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  store i32 %28, i32* %4, align 4
  br label %308

29:                                               ; preds = %3
  %30 = load i32, i32* %6, align 4
  %31 = call i32 @mrb_type(i32 %30)
  switch i32 %31, label %289 [
    i32 134, label %32
    i32 133, label %32
    i32 129, label %32
    i32 135, label %32
    i32 128, label %32
    i32 130, label %36
    i32 131, label %40
    i32 132, label %107
    i32 136, label %208
  ]

32:                                               ; preds = %29, %29, %29, %29, %29
  %33 = load i32*, i32** %5, align 8
  %34 = load i32, i32* %6, align 4
  %35 = call i32 @mrb_funcall(i32* %33, i32 %34, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 0, i32* null)
  store i32 %35, i32* %8, align 4
  br label %306

36:                                               ; preds = %29
  %37 = load i32*, i32** %5, align 8
  %38 = load i32, i32* %6, align 4
  %39 = call i32 @mrb_funcall(i32* %37, i32 %38, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 0, i32* null)
  store i32 %39, i32* %6, align 4
  br label %40

40:                                               ; preds = %29, %36
  %41 = load i32*, i32** %5, align 8
  %42 = call i32 @mrb_gc_arena_save(i32* %41)
  store i32 %42, i32* %9, align 4
  %43 = load i32, i32* %6, align 4
  %44 = call i8* @RSTRING_PTR(i32 %43)
  store i8* %44, i8** %10, align 8
  %45 = load i32, i32* %6, align 4
  %46 = call i8* @RSTRING_END(i32 %45)
  store i8* %46, i8** %11, align 8
  %47 = load i32*, i32** %5, align 8
  %48 = call i32 @mrb_str_new_cstr(i32* %47, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  store i32 %48, i32* %8, align 4
  br label %49

49:                                               ; preds = %97, %40
  %50 = load i8*, i8** %10, align 8
  %51 = load i8*, i8** %11, align 8
  %52 = icmp ult i8* %50, %51
  br i1 %52, label %53, label %58

53:                                               ; preds = %49
  %54 = load i8*, i8** %10, align 8
  %55 = load i8, i8* %54, align 1
  %56 = sext i8 %55 to i32
  %57 = icmp ne i32 %56, 0
  br label %58

58:                                               ; preds = %53, %49
  %59 = phi i1 [ false, %49 ], [ %57, %53 ]
  br i1 %59, label %60, label %100

60:                                               ; preds = %58
  %61 = load i8*, i8** %10, align 8
  %62 = load i8, i8* %61, align 1
  %63 = sext i8 %62 to i32
  switch i32 %63, label %92 [
    i32 92, label %64
    i32 34, label %68
    i32 8, label %72
    i32 12, label %76
    i32 10, label %80
    i32 13, label %84
    i32 9, label %88
  ]

64:                                               ; preds = %60
  %65 = load i32*, i32** %5, align 8
  %66 = load i32, i32* %8, align 4
  %67 = call i32 @mrb_str_cat_cstr(i32* %65, i32 %66, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0))
  store i32 %67, i32* %8, align 4
  br label %97

68:                                               ; preds = %60
  %69 = load i32*, i32** %5, align 8
  %70 = load i32, i32* %8, align 4
  %71 = call i32 @mrb_str_cat_cstr(i32* %69, i32 %70, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0))
  store i32 %71, i32* %8, align 4
  br label %97

72:                                               ; preds = %60
  %73 = load i32*, i32** %5, align 8
  %74 = load i32, i32* %8, align 4
  %75 = call i32 @mrb_str_cat_cstr(i32* %73, i32 %74, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0))
  store i32 %75, i32* %8, align 4
  br label %97

76:                                               ; preds = %60
  %77 = load i32*, i32** %5, align 8
  %78 = load i32, i32* %8, align 4
  %79 = call i32 @mrb_str_cat_cstr(i32* %77, i32 %78, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0))
  store i32 %79, i32* %8, align 4
  br label %97

80:                                               ; preds = %60
  %81 = load i32*, i32** %5, align 8
  %82 = load i32, i32* %8, align 4
  %83 = call i32 @mrb_str_cat_cstr(i32* %81, i32 %82, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0))
  store i32 %83, i32* %8, align 4
  br label %97

84:                                               ; preds = %60
  %85 = load i32*, i32** %5, align 8
  %86 = load i32, i32* %8, align 4
  %87 = call i32 @mrb_str_cat_cstr(i32* %85, i32 %86, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i64 0, i64 0))
  store i32 %87, i32* %8, align 4
  br label %97

88:                                               ; preds = %60
  %89 = load i32*, i32** %5, align 8
  %90 = load i32, i32* %8, align 4
  %91 = call i32 @mrb_str_cat_cstr(i32* %89, i32 %90, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i64 0, i64 0))
  store i32 %91, i32* %8, align 4
  br label %97

92:                                               ; preds = %60
  %93 = load i32*, i32** %5, align 8
  %94 = load i32, i32* %8, align 4
  %95 = load i8*, i8** %10, align 8
  %96 = call i32 @mrb_str_cat(i32* %93, i32 %94, i8* %95, i32 1)
  store i32 %96, i32* %8, align 4
  br label %97

97:                                               ; preds = %92, %88, %84, %80, %76, %72, %68, %64
  %98 = load i8*, i8** %10, align 8
  %99 = getelementptr inbounds i8, i8* %98, i32 1
  store i8* %99, i8** %10, align 8
  br label %49

100:                                              ; preds = %58
  %101 = load i32*, i32** %5, align 8
  %102 = load i32, i32* %8, align 4
  %103 = call i32 @mrb_str_cat_cstr(i32* %101, i32 %102, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  %104 = load i32*, i32** %5, align 8
  %105 = load i32, i32* %9, align 4
  %106 = call i32 @mrb_gc_arena_restore(i32* %104, i32 %105)
  br label %306

107:                                              ; preds = %29
  %108 = load i32*, i32** %5, align 8
  %109 = call i32 @mrb_str_new_cstr(i32* %108, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i64 0, i64 0))
  store i32 %109, i32* %8, align 4
  %110 = load i32*, i32** %5, align 8
  %111 = load i32, i32* %6, align 4
  %112 = call i32 @mrb_hash_keys(i32* %110, i32 %111)
  store i32 %112, i32* %12, align 4
  %113 = load i32, i32* %12, align 4
  %114 = call i32 @RARRAY_LEN(i32 %113)
  store i32 %114, i32* %14, align 4
  %115 = load i32, i32* %14, align 4
  %116 = icmp eq i32 %115, 0
  br i1 %116, label %117, label %128

117:                                              ; preds = %107
  %118 = load i32, i32* %7, align 4
  %119 = icmp sge i32 %118, 0
  br i1 %119, label %120, label %124

120:                                              ; preds = %117
  %121 = load i32*, i32** %5, align 8
  %122 = load i32, i32* %8, align 4
  %123 = call i32 @mrb_str_cat_cstr(i32* %121, i32 %122, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.11, i64 0, i64 0))
  store i32 %123, i32* %4, align 4
  br label %308

124:                                              ; preds = %117
  %125 = load i32*, i32** %5, align 8
  %126 = load i32, i32* %8, align 4
  %127 = call i32 @mrb_str_cat_cstr(i32* %125, i32 %126, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12, i64 0, i64 0))
  store i32 %127, i32* %4, align 4
  br label %308

128:                                              ; preds = %107
  %129 = load i32, i32* %7, align 4
  %130 = icmp sge i32 %129, 0
  br i1 %130, label %131, label %137

131:                                              ; preds = %128
  %132 = load i32*, i32** %5, align 8
  %133 = load i32, i32* %8, align 4
  %134 = load i32, i32* %7, align 4
  %135 = add nsw i32 %134, 1
  store i32 %135, i32* %7, align 4
  %136 = call i32 @pretty_cat(i32* %132, i32 %133, i32 %135)
  store i32 %136, i32* %8, align 4
  br label %137

137:                                              ; preds = %131, %128
  store i32 0, i32* %13, align 4
  br label %138

138:                                              ; preds = %192, %137
  %139 = load i32, i32* %13, align 4
  %140 = load i32, i32* %14, align 4
  %141 = icmp slt i32 %139, %140
  br i1 %141, label %142, label %195

142:                                              ; preds = %138
  %143 = load i32*, i32** %5, align 8
  %144 = call i32 @mrb_gc_arena_save(i32* %143)
  store i32 %144, i32* %16, align 4
  %145 = load i32, i32* %12, align 4
  %146 = load i32, i32* %13, align 4
  %147 = call i32 @mrb_ary_entry(i32 %145, i32 %146)
  store i32 %147, i32* %17, align 4
  %148 = load i32*, i32** %5, align 8
  %149 = load i32, i32* %17, align 4
  %150 = call i32 @mrb_funcall(i32* %148, i32 %149, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 0, i32* null)
  store i32 %150, i32* %18, align 4
  %151 = load i32*, i32** %5, align 8
  %152 = load i32, i32* %18, align 4
  %153 = call i32 @mrb_funcall(i32* %151, i32 %152, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.13, i64 0, i64 0), i32 0, i32* null)
  store i32 %153, i32* %18, align 4
  %154 = load i32*, i32** %5, align 8
  %155 = load i32, i32* %8, align 4
  %156 = load i32, i32* %18, align 4
  %157 = call i32 @mrb_str_concat(i32* %154, i32 %155, i32 %156)
  %158 = load i32*, i32** %5, align 8
  %159 = load i32, i32* %8, align 4
  %160 = call i32 @mrb_str_cat_cstr(i32* %158, i32 %159, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.14, i64 0, i64 0))
  %161 = load i32*, i32** %5, align 8
  %162 = load i32, i32* %6, align 4
  %163 = load i32, i32* %17, align 4
  %164 = call i32 @mrb_hash_get(i32* %161, i32 %162, i32 %163)
  store i32 %164, i32* %15, align 4
  %165 = load i32*, i32** %5, align 8
  %166 = load i32, i32* %8, align 4
  %167 = load i32*, i32** %5, align 8
  %168 = load i32, i32* %15, align 4
  %169 = load i32, i32* %7, align 4
  %170 = call i32 @mrb_value_to_string(i32* %167, i32 %168, i32 %169)
  %171 = call i32 @mrb_str_concat(i32* %165, i32 %166, i32 %170)
  %172 = load i32, i32* %13, align 4
  %173 = load i32, i32* %14, align 4
  %174 = sub nsw i32 %173, 1
  %175 = icmp ne i32 %172, %174
  br i1 %175, label %176, label %188

176:                                              ; preds = %142
  %177 = load i32*, i32** %5, align 8
  %178 = load i32, i32* %8, align 4
  %179 = call i32 @mrb_str_cat_cstr(i32* %177, i32 %178, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.15, i64 0, i64 0))
  %180 = load i32, i32* %7, align 4
  %181 = icmp sge i32 %180, 0
  br i1 %181, label %182, label %187

182:                                              ; preds = %176
  %183 = load i32*, i32** %5, align 8
  %184 = load i32, i32* %8, align 4
  %185 = load i32, i32* %7, align 4
  %186 = call i32 @pretty_cat(i32* %183, i32 %184, i32 %185)
  store i32 %186, i32* %8, align 4
  br label %187

187:                                              ; preds = %182, %176
  br label %188

188:                                              ; preds = %187, %142
  %189 = load i32*, i32** %5, align 8
  %190 = load i32, i32* %16, align 4
  %191 = call i32 @mrb_gc_arena_restore(i32* %189, i32 %190)
  br label %192

192:                                              ; preds = %188
  %193 = load i32, i32* %13, align 4
  %194 = add nsw i32 %193, 1
  store i32 %194, i32* %13, align 4
  br label %138

195:                                              ; preds = %138
  %196 = load i32, i32* %7, align 4
  %197 = icmp sge i32 %196, 0
  br i1 %197, label %198, label %204

198:                                              ; preds = %195
  %199 = load i32*, i32** %5, align 8
  %200 = load i32, i32* %8, align 4
  %201 = load i32, i32* %7, align 4
  %202 = add nsw i32 %201, -1
  store i32 %202, i32* %7, align 4
  %203 = call i32 @pretty_cat(i32* %199, i32 %200, i32 %202)
  store i32 %203, i32* %8, align 4
  br label %204

204:                                              ; preds = %198, %195
  %205 = load i32*, i32** %5, align 8
  %206 = load i32, i32* %8, align 4
  %207 = call i32 @mrb_str_cat_cstr(i32* %205, i32 %206, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12, i64 0, i64 0))
  br label %306

208:                                              ; preds = %29
  %209 = load i32*, i32** %5, align 8
  %210 = call i32 @mrb_str_new_cstr(i32* %209, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.16, i64 0, i64 0))
  store i32 %210, i32* %8, align 4
  %211 = load i32, i32* %6, align 4
  %212 = call i32 @RARRAY_LEN(i32 %211)
  store i32 %212, i32* %20, align 4
  %213 = load i32, i32* %20, align 4
  %214 = icmp eq i32 %213, 0
  br i1 %214, label %215, label %226

215:                                              ; preds = %208
  %216 = load i32, i32* %7, align 4
  %217 = icmp sge i32 %216, 0
  br i1 %217, label %218, label %222

218:                                              ; preds = %215
  %219 = load i32*, i32** %5, align 8
  %220 = load i32, i32* %8, align 4
  %221 = call i32 @mrb_str_cat_cstr(i32* %219, i32 %220, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.17, i64 0, i64 0))
  store i32 %221, i32* %4, align 4
  br label %308

222:                                              ; preds = %215
  %223 = load i32*, i32** %5, align 8
  %224 = load i32, i32* %8, align 4
  %225 = call i32 @mrb_str_cat_cstr(i32* %223, i32 %224, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.18, i64 0, i64 0))
  store i32 %225, i32* %4, align 4
  br label %308

226:                                              ; preds = %208
  %227 = load i32, i32* %7, align 4
  %228 = icmp sge i32 %227, 0
  br i1 %228, label %229, label %235

229:                                              ; preds = %226
  %230 = load i32*, i32** %5, align 8
  %231 = load i32, i32* %8, align 4
  %232 = load i32, i32* %7, align 4
  %233 = add nsw i32 %232, 1
  store i32 %233, i32* %7, align 4
  %234 = call i32 @pretty_cat(i32* %230, i32 %231, i32 %233)
  store i32 %234, i32* %8, align 4
  br label %235

235:                                              ; preds = %229, %226
  store i32 0, i32* %19, align 4
  br label %236

236:                                              ; preds = %273, %235
  %237 = load i32, i32* %19, align 4
  %238 = load i32, i32* %20, align 4
  %239 = icmp slt i32 %237, %238
  br i1 %239, label %240, label %276

240:                                              ; preds = %236
  %241 = load i32*, i32** %5, align 8
  %242 = call i32 @mrb_gc_arena_save(i32* %241)
  store i32 %242, i32* %21, align 4
  %243 = load i32, i32* %6, align 4
  %244 = load i32, i32* %19, align 4
  %245 = call i32 @mrb_ary_entry(i32 %243, i32 %244)
  store i32 %245, i32* %22, align 4
  %246 = load i32*, i32** %5, align 8
  %247 = load i32, i32* %8, align 4
  %248 = load i32*, i32** %5, align 8
  %249 = load i32, i32* %22, align 4
  %250 = load i32, i32* %7, align 4
  %251 = call i32 @mrb_value_to_string(i32* %248, i32 %249, i32 %250)
  %252 = call i32 @mrb_str_concat(i32* %246, i32 %247, i32 %251)
  %253 = load i32, i32* %19, align 4
  %254 = load i32, i32* %20, align 4
  %255 = sub nsw i32 %254, 1
  %256 = icmp ne i32 %253, %255
  br i1 %256, label %257, label %269

257:                                              ; preds = %240
  %258 = load i32*, i32** %5, align 8
  %259 = load i32, i32* %8, align 4
  %260 = call i32 @mrb_str_cat_cstr(i32* %258, i32 %259, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.15, i64 0, i64 0))
  %261 = load i32, i32* %7, align 4
  %262 = icmp sge i32 %261, 0
  br i1 %262, label %263, label %268

263:                                              ; preds = %257
  %264 = load i32*, i32** %5, align 8
  %265 = load i32, i32* %8, align 4
  %266 = load i32, i32* %7, align 4
  %267 = call i32 @pretty_cat(i32* %264, i32 %265, i32 %266)
  store i32 %267, i32* %8, align 4
  br label %268

268:                                              ; preds = %263, %257
  br label %269

269:                                              ; preds = %268, %240
  %270 = load i32*, i32** %5, align 8
  %271 = load i32, i32* %21, align 4
  %272 = call i32 @mrb_gc_arena_restore(i32* %270, i32 %271)
  br label %273

273:                                              ; preds = %269
  %274 = load i32, i32* %19, align 4
  %275 = add nsw i32 %274, 1
  store i32 %275, i32* %19, align 4
  br label %236

276:                                              ; preds = %236
  %277 = load i32, i32* %7, align 4
  %278 = icmp sge i32 %277, 0
  br i1 %278, label %279, label %285

279:                                              ; preds = %276
  %280 = load i32*, i32** %5, align 8
  %281 = load i32, i32* %8, align 4
  %282 = load i32, i32* %7, align 4
  %283 = add nsw i32 %282, -1
  store i32 %283, i32* %7, align 4
  %284 = call i32 @pretty_cat(i32* %280, i32 %281, i32 %283)
  store i32 %284, i32* %8, align 4
  br label %285

285:                                              ; preds = %279, %276
  %286 = load i32*, i32** %5, align 8
  %287 = load i32, i32* %8, align 4
  %288 = call i32 @mrb_str_cat_cstr(i32* %286, i32 %287, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.18, i64 0, i64 0))
  br label %306

289:                                              ; preds = %29
  %290 = load i32*, i32** %5, align 8
  %291 = load i32, i32* %6, align 4
  %292 = call i32 @mrb_method_defined(i32* %290, i32 %291, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.19, i64 0, i64 0))
  %293 = icmp ne i32 %292, 0
  br i1 %293, label %294, label %298

294:                                              ; preds = %289
  %295 = load i32*, i32** %5, align 8
  %296 = load i32, i32* %6, align 4
  %297 = call i32 @mrb_funcall(i32* %295, i32 %296, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.19, i64 0, i64 0), i32 0, i32* null)
  store i32 %297, i32* %8, align 4
  br label %305

298:                                              ; preds = %289
  %299 = load i32*, i32** %5, align 8
  %300 = load i32*, i32** %5, align 8
  %301 = load i32, i32* %6, align 4
  %302 = call i32 @mrb_funcall(i32* %300, i32 %301, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 0, i32* null)
  %303 = load i32, i32* %7, align 4
  %304 = call i32 @mrb_value_to_string(i32* %299, i32 %302, i32 %303)
  store i32 %304, i32* %8, align 4
  br label %305

305:                                              ; preds = %298, %294
  br label %306

306:                                              ; preds = %305, %285, %204, %100, %32
  %307 = load i32, i32* %8, align 4
  store i32 %307, i32* %4, align 4
  br label %308

308:                                              ; preds = %306, %222, %218, %124, %120, %26
  %309 = load i32, i32* %4, align 4
  ret i32 %309
}

declare dso_local i64 @mrb_nil_p(i32) #1

declare dso_local i32 @mrb_str_new_cstr(i32*, i8*) #1

declare dso_local i32 @mrb_type(i32) #1

declare dso_local i32 @mrb_funcall(i32*, i32, i8*, i32, i32*) #1

declare dso_local i32 @mrb_gc_arena_save(i32*) #1

declare dso_local i8* @RSTRING_PTR(i32) #1

declare dso_local i8* @RSTRING_END(i32) #1

declare dso_local i32 @mrb_str_cat_cstr(i32*, i32, i8*) #1

declare dso_local i32 @mrb_str_cat(i32*, i32, i8*, i32) #1

declare dso_local i32 @mrb_gc_arena_restore(i32*, i32) #1

declare dso_local i32 @mrb_hash_keys(i32*, i32) #1

declare dso_local i32 @RARRAY_LEN(i32) #1

declare dso_local i32 @pretty_cat(i32*, i32, i32) #1

declare dso_local i32 @mrb_ary_entry(i32, i32) #1

declare dso_local i32 @mrb_str_concat(i32*, i32, i32) #1

declare dso_local i32 @mrb_hash_get(i32*, i32, i32) #1

declare dso_local i32 @mrb_method_defined(i32*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
