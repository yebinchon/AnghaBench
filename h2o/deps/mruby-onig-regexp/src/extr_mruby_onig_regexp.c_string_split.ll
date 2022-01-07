; ModuleID = '/home/carl/AnghaBench/h2o/deps/mruby-onig-regexp/src/extr_mruby_onig_regexp.c_string_split.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/mruby-onig-regexp/src/extr_mruby_onig_regexp.c_string_split.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32*, i32*, i32 }

@.str = private unnamed_addr constant [4 x i8] c"|oi\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"$;\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c" \00", align 1
@E_TYPE_ERROR = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [37 x i8] c"value of $; must be String or Regexp\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"OnigRegexp\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"new\00", align 1
@.str.6 = private unnamed_addr constant [13 x i8] c"string_split\00", align 1
@mrb_onig_regexp_type = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32)* @string_split to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @string_split(i32* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_2__*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  %23 = call i32 (...) @mrb_nil_value()
  store i32 %23, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %24 = load i32*, i32** %4, align 8
  %25 = call i32 @mrb_get_args(i32* %24, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32* %6, i32* %7)
  store i32 %25, i32* %8, align 4
  %26 = load i32, i32* %8, align 4
  %27 = icmp eq i32 %26, 2
  br i1 %27, label %28, label %31

28:                                               ; preds = %2
  %29 = load i32, i32* %7, align 4
  %30 = icmp slt i32 0, %29
  br label %31

31:                                               ; preds = %28, %2
  %32 = phi i1 [ false, %2 ], [ %30, %28 ]
  %33 = xor i1 %32, true
  %34 = zext i1 %33 to i32
  store i32 %34, i32* %11, align 4
  %35 = load i32, i32* %6, align 4
  %36 = call i64 @mrb_nil_p(i32 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %67

38:                                               ; preds = %31
  %39 = load i32*, i32** %4, align 8
  %40 = load i32*, i32** %4, align 8
  %41 = call i32 @mrb_intern_lit(i32* %40, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  %42 = call i32 @mrb_gv_get(i32* %39, i32 %41)
  store i32 %42, i32* %6, align 4
  %43 = load i32, i32* %6, align 4
  %44 = call i64 @mrb_nil_p(i32 %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %38
  %47 = load i32*, i32** %4, align 8
  %48 = call i32 @mrb_str_new_lit(i32* %47, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  store i32 %48, i32* %6, align 4
  br label %62

49:                                               ; preds = %38
  %50 = load i32, i32* %6, align 4
  %51 = call i64 @mrb_string_p(i32 %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %61, label %53

53:                                               ; preds = %49
  %54 = load i32, i32* %6, align 4
  %55 = call i32 @ONIG_REGEXP_P(i32 %54)
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %61, label %57

57:                                               ; preds = %53
  %58 = load i32*, i32** %4, align 8
  %59 = load i32, i32* @E_TYPE_ERROR, align 4
  %60 = call i32 @mrb_raise(i32* %58, i32 %59, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i64 0, i64 0))
  br label %61

61:                                               ; preds = %57, %53, %49
  br label %62

62:                                               ; preds = %61, %46
  %63 = load i32, i32* %8, align 4
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %62
  store i32 1, i32* %8, align 4
  br label %66

66:                                               ; preds = %65, %62
  br label %67

67:                                               ; preds = %66, %31
  %68 = load i32, i32* %6, align 4
  %69 = call i32 @ONIG_REGEXP_P(i32 %68)
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %103, label %71

71:                                               ; preds = %67
  %72 = load i32, i32* %6, align 4
  %73 = call i64 @mrb_nil_p(i32 %72)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %79, label %75

75:                                               ; preds = %71
  %76 = load i32*, i32** %4, align 8
  %77 = load i32, i32* %6, align 4
  %78 = call i32 @mrb_string_type(i32* %76, i32 %77)
  store i32 %78, i32* %6, align 4
  br label %79

79:                                               ; preds = %75, %71
  %80 = load i32, i32* %6, align 4
  %81 = call i64 @mrb_string_p(i32 %80)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %94

83:                                               ; preds = %79
  %84 = load i32, i32* %6, align 4
  %85 = call i64 @RSTRING_LEN(i32 %84)
  %86 = icmp eq i64 %85, 0
  br i1 %86, label %87, label %94

87:                                               ; preds = %83
  %88 = load i32*, i32** %4, align 8
  %89 = load i32*, i32** %4, align 8
  %90 = call i32 @mrb_class_get(i32* %89, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0))
  %91 = call i32 @mrb_obj_value(i32 %90)
  %92 = load i32, i32* %6, align 4
  %93 = call i32 (i32*, i32, i8*, i32, i32, ...) @mrb_funcall(i32* %88, i32 %91, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), i32 1, i32 %92)
  store i32 %93, i32* %6, align 4
  br label %102

94:                                               ; preds = %83, %79
  %95 = load i32*, i32** %4, align 8
  %96 = load i32, i32* %5, align 4
  %97 = load i32, i32* %8, align 4
  %98 = load i32, i32* %6, align 4
  %99 = load i32, i32* %7, align 4
  %100 = call i32 @mrb_fixnum_value(i32 %99)
  %101 = call i32 (i32*, i32, i8*, i32, i32, ...) @mrb_funcall(i32* %95, i32 %96, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i64 0, i64 0), i32 %97, i32 %98, i32 %100)
  store i32 %101, i32* %3, align 4
  br label %384

102:                                              ; preds = %87
  br label %103

103:                                              ; preds = %102, %67
  %104 = load i32, i32* %5, align 4
  %105 = call i64 @RSTRING_LEN(i32 %104)
  %106 = icmp eq i64 %105, 0
  br i1 %106, label %107, label %110

107:                                              ; preds = %103
  %108 = load i32*, i32** %4, align 8
  %109 = call i32 @mrb_ary_new(i32* %108)
  store i32 %109, i32* %3, align 4
  br label %384

110:                                              ; preds = %103
  %111 = load i32, i32* %7, align 4
  %112 = icmp eq i32 %111, 1
  br i1 %112, label %113, label %116

113:                                              ; preds = %110
  %114 = load i32*, i32** %4, align 8
  %115 = call i32 @mrb_ary_new_from_values(i32* %114, i32 1, i32* %5)
  store i32 %115, i32* %3, align 4
  br label %384

116:                                              ; preds = %110
  %117 = load i32*, i32** %4, align 8
  %118 = call i32 @mrb_ary_new(i32* %117)
  store i32 %118, i32* %9, align 4
  %119 = load i32*, i32** %4, align 8
  %120 = load i32, i32* %6, align 4
  %121 = load i32, i32* %12, align 4
  %122 = call i32 @Data_Get_Struct(i32* %119, i32 %120, i32* @mrb_onig_regexp_type, i32 %121)
  %123 = load i32*, i32** %4, align 8
  %124 = load i32, i32* %5, align 4
  %125 = load i32, i32* %6, align 4
  %126 = call i32 @create_onig_region(i32* %123, i32 %124, i32 %125)
  store i32 %126, i32* %13, align 4
  %127 = load i32, i32* %13, align 4
  %128 = call i64 @DATA_PTR(i32 %127)
  %129 = inttoptr i64 %128 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %129, %struct.TYPE_2__** %14, align 8
  %130 = load i32*, i32** %4, align 8
  %131 = load i32, i32* %5, align 4
  %132 = call i8* @mrb_str_to_cstr(i32* %130, i32 %131)
  store i8* %132, i8** %15, align 8
  %133 = load i32, i32* %5, align 4
  %134 = call i64 @RSTRING_LEN(i32 %133)
  %135 = trunc i64 %134 to i32
  store i32 %135, i32* %16, align 4
  store i32 0, i32* %17, align 4
  store i32 0, i32* %18, align 4
  store i32 0, i32* %19, align 4
  store i32 0, i32* %20, align 4
  store i32 0, i32* %21, align 4
  store i32 0, i32* %22, align 4
  %136 = load i32, i32* %8, align 4
  %137 = icmp eq i32 %136, 2
  br i1 %137, label %138, label %139

138:                                              ; preds = %116
  store i32 1, i32* %21, align 4
  br label %139

139:                                              ; preds = %138, %116
  br label %140

140:                                              ; preds = %314, %214, %139
  %141 = load i32*, i32** %4, align 8
  %142 = load i32, i32* %12, align 4
  %143 = load i32, i32* %13, align 4
  %144 = load i32, i32* %5, align 4
  %145 = load i32, i32* %17, align 4
  %146 = call i32 @onig_match_common(i32* %141, i32 %142, i32 %143, i32 %144, i32 %145)
  store i32 %146, i32* %19, align 4
  %147 = icmp sge i32 %146, 0
  br i1 %147, label %148, label %315

148:                                              ; preds = %140
  %149 = load i32, i32* %17, align 4
  %150 = load i32, i32* %19, align 4
  %151 = icmp eq i32 %149, %150
  br i1 %151, label %152, label %217

152:                                              ; preds = %148
  %153 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %154 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %153, i32 0, i32 0
  %155 = load i32*, i32** %154, align 8
  %156 = getelementptr inbounds i32, i32* %155, i64 0
  %157 = load i32, i32* %156, align 4
  %158 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %159 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %158, i32 0, i32 1
  %160 = load i32*, i32** %159, align 8
  %161 = getelementptr inbounds i32, i32* %160, i64 0
  %162 = load i32, i32* %161, align 4
  %163 = icmp eq i32 %157, %162
  br i1 %163, label %164, label %217

164:                                              ; preds = %152
  %165 = load i8*, i8** %15, align 8
  %166 = icmp ne i8* %165, null
  br i1 %166, label %173, label %167

167:                                              ; preds = %164
  %168 = load i32*, i32** %4, align 8
  %169 = load i32, i32* %9, align 4
  %170 = load i32*, i32** %4, align 8
  %171 = call i32 @mrb_str_new_lit(i32* %170, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.7, i64 0, i64 0))
  %172 = call i32 @mrb_ary_push(i32* %168, i32 %169, i32 %171)
  br label %315

173:                                              ; preds = %164
  %174 = load i32, i32* %22, align 4
  %175 = icmp eq i32 %174, 1
  br i1 %175, label %176, label %195

176:                                              ; preds = %173
  %177 = load i32*, i32** %4, align 8
  %178 = load i32, i32* %9, align 4
  %179 = load i32*, i32** %4, align 8
  %180 = load i32, i32* %5, align 4
  %181 = load i32, i32* %18, align 4
  %182 = load i8*, i8** %15, align 8
  %183 = load i32, i32* %18, align 4
  %184 = sext i32 %183 to i64
  %185 = getelementptr inbounds i8, i8* %182, i64 %184
  %186 = load i8*, i8** %15, align 8
  %187 = load i32, i32* %16, align 4
  %188 = sext i32 %187 to i64
  %189 = getelementptr inbounds i8, i8* %186, i64 %188
  %190 = call i32 @utf8len(i8* %185, i8* %189)
  %191 = sext i32 %190 to i64
  %192 = call i32 @str_substr(i32* %179, i32 %180, i32 %181, i64 %191)
  %193 = call i32 @mrb_ary_push(i32* %177, i32 %178, i32 %192)
  %194 = load i32, i32* %17, align 4
  store i32 %194, i32* %18, align 4
  br label %215

195:                                              ; preds = %173
  %196 = load i32, i32* %17, align 4
  %197 = load i32, i32* %16, align 4
  %198 = icmp eq i32 %196, %197
  br i1 %198, label %199, label %202

199:                                              ; preds = %195
  %200 = load i32, i32* %17, align 4
  %201 = add nsw i32 %200, 1
  store i32 %201, i32* %17, align 4
  br label %214

202:                                              ; preds = %195
  %203 = load i8*, i8** %15, align 8
  %204 = load i32, i32* %17, align 4
  %205 = sext i32 %204 to i64
  %206 = getelementptr inbounds i8, i8* %203, i64 %205
  %207 = load i8*, i8** %15, align 8
  %208 = load i32, i32* %16, align 4
  %209 = sext i32 %208 to i64
  %210 = getelementptr inbounds i8, i8* %207, i64 %209
  %211 = call i32 @utf8len(i8* %206, i8* %210)
  %212 = load i32, i32* %17, align 4
  %213 = add nsw i32 %212, %211
  store i32 %213, i32* %17, align 4
  br label %214

214:                                              ; preds = %202, %199
  store i32 1, i32* %22, align 4
  br label %140

215:                                              ; preds = %176
  br label %216

216:                                              ; preds = %215
  br label %234

217:                                              ; preds = %152, %148
  %218 = load i32*, i32** %4, align 8
  %219 = load i32, i32* %9, align 4
  %220 = load i32*, i32** %4, align 8
  %221 = load i32, i32* %5, align 4
  %222 = load i32, i32* %18, align 4
  %223 = load i32, i32* %19, align 4
  %224 = load i32, i32* %18, align 4
  %225 = sub nsw i32 %223, %224
  %226 = sext i32 %225 to i64
  %227 = call i32 @str_substr(i32* %220, i32 %221, i32 %222, i64 %226)
  %228 = call i32 @mrb_ary_push(i32* %218, i32 %219, i32 %227)
  %229 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %230 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %229, i32 0, i32 1
  %231 = load i32*, i32** %230, align 8
  %232 = getelementptr inbounds i32, i32* %231, i64 0
  %233 = load i32, i32* %232, align 4
  store i32 %233, i32* %17, align 4
  store i32 %233, i32* %18, align 4
  br label %234

234:                                              ; preds = %217, %216
  store i32 0, i32* %22, align 4
  store i32 1, i32* %20, align 4
  br label %235

235:                                              ; preds = %302, %234
  %236 = load i32, i32* %20, align 4
  %237 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %238 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %237, i32 0, i32 2
  %239 = load i32, i32* %238, align 8
  %240 = icmp slt i32 %236, %239
  br i1 %240, label %241, label %305

241:                                              ; preds = %235
  %242 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %243 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %242, i32 0, i32 0
  %244 = load i32*, i32** %243, align 8
  %245 = load i32, i32* %20, align 4
  %246 = sext i32 %245 to i64
  %247 = getelementptr inbounds i32, i32* %244, i64 %246
  %248 = load i32, i32* %247, align 4
  %249 = icmp eq i32 %248, -1
  br i1 %249, label %250, label %251

250:                                              ; preds = %241
  br label %302

251:                                              ; preds = %241
  %252 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %253 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %252, i32 0, i32 0
  %254 = load i32*, i32** %253, align 8
  %255 = load i32, i32* %20, align 4
  %256 = sext i32 %255 to i64
  %257 = getelementptr inbounds i32, i32* %254, i64 %256
  %258 = load i32, i32* %257, align 4
  %259 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %260 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %259, i32 0, i32 1
  %261 = load i32*, i32** %260, align 8
  %262 = load i32, i32* %20, align 4
  %263 = sext i32 %262 to i64
  %264 = getelementptr inbounds i32, i32* %261, i64 %263
  %265 = load i32, i32* %264, align 4
  %266 = icmp eq i32 %258, %265
  br i1 %266, label %267, label %270

267:                                              ; preds = %251
  %268 = load i32*, i32** %4, align 8
  %269 = call i32 @mrb_str_new_lit(i32* %268, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.7, i64 0, i64 0))
  store i32 %269, i32* %10, align 4
  br label %297

270:                                              ; preds = %251
  %271 = load i32*, i32** %4, align 8
  %272 = load i32, i32* %5, align 4
  %273 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %274 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %273, i32 0, i32 0
  %275 = load i32*, i32** %274, align 8
  %276 = load i32, i32* %20, align 4
  %277 = sext i32 %276 to i64
  %278 = getelementptr inbounds i32, i32* %275, i64 %277
  %279 = load i32, i32* %278, align 4
  %280 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %281 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %280, i32 0, i32 1
  %282 = load i32*, i32** %281, align 8
  %283 = load i32, i32* %20, align 4
  %284 = sext i32 %283 to i64
  %285 = getelementptr inbounds i32, i32* %282, i64 %284
  %286 = load i32, i32* %285, align 4
  %287 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %288 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %287, i32 0, i32 0
  %289 = load i32*, i32** %288, align 8
  %290 = load i32, i32* %20, align 4
  %291 = sext i32 %290 to i64
  %292 = getelementptr inbounds i32, i32* %289, i64 %291
  %293 = load i32, i32* %292, align 4
  %294 = sub nsw i32 %286, %293
  %295 = sext i32 %294 to i64
  %296 = call i32 @str_substr(i32* %271, i32 %272, i32 %279, i64 %295)
  store i32 %296, i32* %10, align 4
  br label %297

297:                                              ; preds = %270, %267
  %298 = load i32*, i32** %4, align 8
  %299 = load i32, i32* %9, align 4
  %300 = load i32, i32* %10, align 4
  %301 = call i32 @mrb_ary_push(i32* %298, i32 %299, i32 %300)
  br label %302

302:                                              ; preds = %297, %250
  %303 = load i32, i32* %20, align 4
  %304 = add nsw i32 %303, 1
  store i32 %304, i32* %20, align 4
  br label %235

305:                                              ; preds = %235
  %306 = load i32, i32* %11, align 4
  %307 = icmp ne i32 %306, 0
  br i1 %307, label %314, label %308

308:                                              ; preds = %305
  %309 = load i32, i32* %7, align 4
  %310 = load i32, i32* %21, align 4
  %311 = add nsw i32 %310, 1
  store i32 %311, i32* %21, align 4
  %312 = icmp sle i32 %309, %311
  br i1 %312, label %313, label %314

313:                                              ; preds = %308
  br label %315

314:                                              ; preds = %308, %305
  br label %140

315:                                              ; preds = %313, %167, %140
  %316 = load i32, i32* %5, align 4
  %317 = call i64 @RSTRING_LEN(i32 %316)
  %318 = icmp sgt i64 %317, 0
  br i1 %318, label %319, label %355

319:                                              ; preds = %315
  %320 = load i32, i32* %11, align 4
  %321 = icmp ne i32 %320, 0
  br i1 %321, label %322, label %331

322:                                              ; preds = %319
  %323 = load i32, i32* %5, align 4
  %324 = call i64 @RSTRING_LEN(i32 %323)
  %325 = load i32, i32* %18, align 4
  %326 = sext i32 %325 to i64
  %327 = icmp sgt i64 %324, %326
  br i1 %327, label %331, label %328

328:                                              ; preds = %322
  %329 = load i32, i32* %7, align 4
  %330 = icmp slt i32 %329, 0
  br i1 %330, label %331, label %355

331:                                              ; preds = %328, %322, %319
  %332 = load i32, i32* %5, align 4
  %333 = call i64 @RSTRING_LEN(i32 %332)
  %334 = load i32, i32* %18, align 4
  %335 = sext i32 %334 to i64
  %336 = icmp eq i64 %333, %335
  br i1 %336, label %337, label %340

337:                                              ; preds = %331
  %338 = load i32*, i32** %4, align 8
  %339 = call i32 @mrb_str_new_lit(i32* %338, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.7, i64 0, i64 0))
  store i32 %339, i32* %10, align 4
  br label %350

340:                                              ; preds = %331
  %341 = load i32*, i32** %4, align 8
  %342 = load i32, i32* %5, align 4
  %343 = load i32, i32* %18, align 4
  %344 = load i32, i32* %5, align 4
  %345 = call i64 @RSTRING_LEN(i32 %344)
  %346 = load i32, i32* %18, align 4
  %347 = sext i32 %346 to i64
  %348 = sub nsw i64 %345, %347
  %349 = call i32 @str_substr(i32* %341, i32 %342, i32 %343, i64 %348)
  store i32 %349, i32* %10, align 4
  br label %350

350:                                              ; preds = %340, %337
  %351 = load i32*, i32** %4, align 8
  %352 = load i32, i32* %9, align 4
  %353 = load i32, i32* %10, align 4
  %354 = call i32 @mrb_ary_push(i32* %351, i32 %352, i32 %353)
  br label %355

355:                                              ; preds = %350, %328, %315
  %356 = load i32, i32* %11, align 4
  %357 = icmp ne i32 %356, 0
  br i1 %357, label %358, label %382

358:                                              ; preds = %355
  %359 = load i32, i32* %7, align 4
  %360 = icmp eq i32 %359, 0
  br i1 %360, label %361, label %382

361:                                              ; preds = %358
  br label %362

362:                                              ; preds = %377, %361
  %363 = load i32, i32* %9, align 4
  %364 = call i32 @RARRAY_LEN(i32 %363)
  store i32 %364, i32* %16, align 4
  %365 = icmp sgt i32 %364, 0
  br i1 %365, label %366, label %375

366:                                              ; preds = %362
  %367 = load i32*, i32** %4, align 8
  %368 = load i32, i32* %9, align 4
  %369 = load i32, i32* %16, align 4
  %370 = sub nsw i32 %369, 1
  %371 = call i32 @mrb_ary_ref(i32* %367, i32 %368, i32 %370)
  store i32 %371, i32* %10, align 4
  %372 = load i32, i32* %10, align 4
  %373 = call i64 @RSTRING_LEN(i32 %372)
  %374 = icmp eq i64 %373, 0
  br label %375

375:                                              ; preds = %366, %362
  %376 = phi i1 [ false, %362 ], [ %374, %366 ]
  br i1 %376, label %377, label %381

377:                                              ; preds = %375
  %378 = load i32*, i32** %4, align 8
  %379 = load i32, i32* %9, align 4
  %380 = call i32 @mrb_ary_pop(i32* %378, i32 %379)
  br label %362

381:                                              ; preds = %375
  br label %382

382:                                              ; preds = %381, %358, %355
  %383 = load i32, i32* %9, align 4
  store i32 %383, i32* %3, align 4
  br label %384

384:                                              ; preds = %382, %113, %107, %94
  %385 = load i32, i32* %3, align 4
  ret i32 %385
}

declare dso_local i32 @mrb_nil_value(...) #1

declare dso_local i32 @mrb_get_args(i32*, i8*, i32*, i32*) #1

declare dso_local i64 @mrb_nil_p(i32) #1

declare dso_local i32 @mrb_gv_get(i32*, i32) #1

declare dso_local i32 @mrb_intern_lit(i32*, i8*) #1

declare dso_local i32 @mrb_str_new_lit(i32*, i8*) #1

declare dso_local i64 @mrb_string_p(i32) #1

declare dso_local i32 @ONIG_REGEXP_P(i32) #1

declare dso_local i32 @mrb_raise(i32*, i32, i8*) #1

declare dso_local i32 @mrb_string_type(i32*, i32) #1

declare dso_local i64 @RSTRING_LEN(i32) #1

declare dso_local i32 @mrb_funcall(i32*, i32, i8*, i32, i32, ...) #1

declare dso_local i32 @mrb_obj_value(i32) #1

declare dso_local i32 @mrb_class_get(i32*, i8*) #1

declare dso_local i32 @mrb_fixnum_value(i32) #1

declare dso_local i32 @mrb_ary_new(i32*) #1

declare dso_local i32 @mrb_ary_new_from_values(i32*, i32, i32*) #1

declare dso_local i32 @Data_Get_Struct(i32*, i32, i32*, i32) #1

declare dso_local i32 @create_onig_region(i32*, i32, i32) #1

declare dso_local i64 @DATA_PTR(i32) #1

declare dso_local i8* @mrb_str_to_cstr(i32*, i32) #1

declare dso_local i32 @onig_match_common(i32*, i32, i32, i32, i32) #1

declare dso_local i32 @mrb_ary_push(i32*, i32, i32) #1

declare dso_local i32 @str_substr(i32*, i32, i32, i64) #1

declare dso_local i32 @utf8len(i8*, i8*) #1

declare dso_local i32 @RARRAY_LEN(i32) #1

declare dso_local i32 @mrb_ary_ref(i32*, i32, i32) #1

declare dso_local i32 @mrb_ary_pop(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
