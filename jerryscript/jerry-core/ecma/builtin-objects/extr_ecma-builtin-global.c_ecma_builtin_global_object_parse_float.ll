; ModuleID = '/home/carl/AnghaBench/jerryscript/jerry-core/ecma/builtin-objects/extr_ecma-builtin-global.c_ecma_builtin_global_object_parse_float.c'
source_filename = "/home/carl/AnghaBench/jerryscript/jerry-core/ecma/builtin-objects/extr_ecma-builtin-global.c_ecma_builtin_global_object_parse_float.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@LIT_CHAR_MINUS = common dso_local global i64 0, align 8
@LIT_CHAR_PLUS = common dso_local global i64 0, align 8
@LIT_MAGIC_STRING_INFINITY_UL = common dso_local global i32 0, align 4
@LIT_CHAR_DOT = common dso_local global i64 0, align 8
@LIT_CHAR_LOWERCASE_E = common dso_local global i64 0, align 8
@LIT_CHAR_UPPERCASE_E = common dso_local global i64 0, align 8
@ECMA_NUMBER_MINUS_ONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64*, i64)* @ecma_builtin_global_object_parse_float to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ecma_builtin_global_object_parse_float(i64* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i64*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i64*, align 8
  %13 = alloca i64*, align 8
  %14 = alloca i64*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store i64* %0, i64** %4, align 8
  store i64 %1, i64* %5, align 8
  %18 = load i64, i64* %5, align 8
  %19 = icmp sle i64 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %2
  %21 = call i32 (...) @ecma_make_nan_value()
  store i32 %21, i32* %3, align 4
  br label %250

22:                                               ; preds = %2
  %23 = load i64*, i64** %4, align 8
  store i64* %23, i64** %6, align 8
  %24 = call i32 @ecma_string_trim_helper(i64** %6, i64* %5)
  %25 = load i64*, i64** %6, align 8
  %26 = load i64, i64* %5, align 8
  %27 = getelementptr inbounds i64, i64* %25, i64 %26
  store i64* %27, i64** %7, align 8
  %28 = load i64*, i64** %6, align 8
  store i64* %28, i64** %8, align 8
  %29 = load i64*, i64** %7, align 8
  store i64* %29, i64** %9, align 8
  store i32 0, i32* %10, align 4
  %30 = load i64*, i64** %6, align 8
  %31 = load i64*, i64** %7, align 8
  %32 = icmp ult i64* %30, %31
  br i1 %32, label %33, label %52

33:                                               ; preds = %22
  %34 = load i64*, i64** %6, align 8
  %35 = load i64, i64* %34, align 8
  store i64 %35, i64* %11, align 8
  %36 = load i64, i64* %11, align 8
  %37 = load i64, i64* @LIT_CHAR_MINUS, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %39, label %40

39:                                               ; preds = %33
  store i32 1, i32* %10, align 4
  br label %40

40:                                               ; preds = %39, %33
  %41 = load i64, i64* %11, align 8
  %42 = load i64, i64* @LIT_CHAR_MINUS, align 8
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %48, label %44

44:                                               ; preds = %40
  %45 = load i64, i64* %11, align 8
  %46 = load i64, i64* @LIT_CHAR_PLUS, align 8
  %47 = icmp eq i64 %45, %46
  br i1 %47, label %48, label %51

48:                                               ; preds = %44, %40
  %49 = load i64*, i64** %6, align 8
  %50 = getelementptr inbounds i64, i64* %49, i32 1
  store i64* %50, i64** %6, align 8
  store i64* %50, i64** %8, align 8
  br label %51

51:                                               ; preds = %48, %44
  br label %52

52:                                               ; preds = %51, %22
  %53 = load i32, i32* @LIT_MAGIC_STRING_INFINITY_UL, align 4
  %54 = call i64* @lit_get_magic_string_utf8(i32 %53)
  store i64* %54, i64** %12, align 8
  %55 = load i64*, i64** %12, align 8
  store i64* %55, i64** %13, align 8
  %56 = load i64*, i64** %13, align 8
  %57 = getelementptr inbounds i64, i64* %56, i64 8
  store i64* %57, i64** %14, align 8
  br label %58

58:                                               ; preds = %80, %52
  %59 = load i64*, i64** %6, align 8
  %60 = load i64*, i64** %7, align 8
  %61 = icmp ult i64* %59, %60
  br i1 %61, label %62, label %70

62:                                               ; preds = %58
  %63 = load i64*, i64** %6, align 8
  %64 = getelementptr inbounds i64, i64* %63, i32 1
  store i64* %64, i64** %6, align 8
  %65 = load i64, i64* %63, align 8
  %66 = load i64*, i64** %13, align 8
  %67 = getelementptr inbounds i64, i64* %66, i32 1
  store i64* %67, i64** %13, align 8
  %68 = load i64, i64* %66, align 8
  %69 = icmp eq i64 %65, %68
  br label %70

70:                                               ; preds = %62, %58
  %71 = phi i1 [ false, %58 ], [ %69, %62 ]
  br i1 %71, label %72, label %81

72:                                               ; preds = %70
  %73 = load i64*, i64** %13, align 8
  %74 = load i64*, i64** %14, align 8
  %75 = icmp eq i64* %73, %74
  br i1 %75, label %76, label %80

76:                                               ; preds = %72
  %77 = load i32, i32* %10, align 4
  %78 = call i32 @ecma_number_make_infinity(i32 %77)
  %79 = call i32 @ecma_make_number_value(i32 %78)
  store i32 %79, i32* %3, align 4
  br label %250

80:                                               ; preds = %72
  br label %58

81:                                               ; preds = %70
  %82 = load i64*, i64** %8, align 8
  store i64* %82, i64** %6, align 8
  %83 = load i64*, i64** %6, align 8
  %84 = load i64*, i64** %7, align 8
  %85 = icmp uge i64* %83, %84
  br i1 %85, label %86, label %88

86:                                               ; preds = %81
  %87 = call i32 (...) @ecma_make_nan_value()
  store i32 %87, i32* %3, align 4
  br label %250

88:                                               ; preds = %81
  %89 = load i64*, i64** %8, align 8
  store i64* %89, i64** %6, align 8
  %90 = load i64*, i64** %6, align 8
  %91 = load i64, i64* %90, align 8
  store i64 %91, i64* %11, align 8
  store i32 0, i32* %15, align 4
  store i32 0, i32* %16, align 4
  %92 = load i64, i64* %11, align 8
  %93 = call i64 @lit_char_is_decimal_digit(i64 %92)
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %114

95:                                               ; preds = %88
  store i32 1, i32* %15, align 4
  %96 = load i64*, i64** %6, align 8
  %97 = getelementptr inbounds i64, i64* %96, i32 1
  store i64* %97, i64** %6, align 8
  br label %98

98:                                               ; preds = %112, %95
  %99 = load i64*, i64** %6, align 8
  %100 = load i64*, i64** %7, align 8
  %101 = icmp ult i64* %99, %100
  br i1 %101, label %102, label %113

102:                                              ; preds = %98
  %103 = load i64*, i64** %6, align 8
  %104 = getelementptr inbounds i64, i64* %103, i32 1
  store i64* %104, i64** %6, align 8
  %105 = load i64, i64* %103, align 8
  store i64 %105, i64* %11, align 8
  %106 = load i64, i64* %11, align 8
  %107 = call i64 @lit_char_is_decimal_digit(i64 %106)
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %112, label %109

109:                                              ; preds = %102
  %110 = load i64*, i64** %6, align 8
  %111 = getelementptr inbounds i64, i64* %110, i32 -1
  store i64* %111, i64** %6, align 8
  br label %113

112:                                              ; preds = %102
  br label %98

113:                                              ; preds = %109, %98
  br label %114

114:                                              ; preds = %113, %88
  %115 = load i64*, i64** %6, align 8
  store i64* %115, i64** %9, align 8
  %116 = load i64*, i64** %6, align 8
  %117 = load i64*, i64** %7, align 8
  %118 = icmp ult i64* %116, %117
  br i1 %118, label %119, label %158

119:                                              ; preds = %114
  %120 = load i64*, i64** %6, align 8
  %121 = load i64, i64* %120, align 8
  store i64 %121, i64* %11, align 8
  %122 = load i64, i64* %11, align 8
  %123 = load i64, i64* @LIT_CHAR_DOT, align 8
  %124 = icmp eq i64 %122, %123
  br i1 %124, label %125, label %157

125:                                              ; preds = %119
  %126 = load i64*, i64** %6, align 8
  %127 = getelementptr inbounds i64, i64* %126, i32 1
  store i64* %127, i64** %6, align 8
  %128 = load i64*, i64** %6, align 8
  %129 = load i64*, i64** %7, align 8
  %130 = icmp ult i64* %128, %129
  br i1 %130, label %131, label %156

131:                                              ; preds = %125
  %132 = load i64*, i64** %6, align 8
  %133 = load i64, i64* %132, align 8
  store i64 %133, i64* %11, align 8
  %134 = load i64, i64* %11, align 8
  %135 = call i64 @lit_char_is_decimal_digit(i64 %134)
  %136 = icmp ne i64 %135, 0
  br i1 %136, label %137, label %155

137:                                              ; preds = %131
  store i32 1, i32* %16, align 4
  br label %138

138:                                              ; preds = %152, %137
  %139 = load i64*, i64** %6, align 8
  %140 = load i64*, i64** %7, align 8
  %141 = icmp ult i64* %139, %140
  br i1 %141, label %142, label %153

142:                                              ; preds = %138
  %143 = load i64*, i64** %6, align 8
  %144 = getelementptr inbounds i64, i64* %143, i32 1
  store i64* %144, i64** %6, align 8
  %145 = load i64, i64* %143, align 8
  store i64 %145, i64* %11, align 8
  %146 = load i64, i64* %11, align 8
  %147 = call i64 @lit_char_is_decimal_digit(i64 %146)
  %148 = icmp ne i64 %147, 0
  br i1 %148, label %152, label %149

149:                                              ; preds = %142
  %150 = load i64*, i64** %6, align 8
  %151 = getelementptr inbounds i64, i64* %150, i32 -1
  store i64* %151, i64** %6, align 8
  br label %153

152:                                              ; preds = %142
  br label %138

153:                                              ; preds = %149, %138
  %154 = load i64*, i64** %6, align 8
  store i64* %154, i64** %9, align 8
  br label %155

155:                                              ; preds = %153, %131
  br label %156

156:                                              ; preds = %155, %125
  br label %157

157:                                              ; preds = %156, %119
  br label %158

158:                                              ; preds = %157, %114
  %159 = load i64*, i64** %6, align 8
  %160 = load i64*, i64** %7, align 8
  %161 = icmp ult i64* %159, %160
  br i1 %161, label %162, label %166

162:                                              ; preds = %158
  %163 = load i64*, i64** %6, align 8
  %164 = getelementptr inbounds i64, i64* %163, i32 1
  store i64* %164, i64** %6, align 8
  %165 = load i64, i64* %163, align 8
  store i64 %165, i64* %11, align 8
  br label %166

166:                                              ; preds = %162, %158
  %167 = load i64, i64* %11, align 8
  %168 = load i64, i64* @LIT_CHAR_LOWERCASE_E, align 8
  %169 = icmp eq i64 %167, %168
  br i1 %169, label %174, label %170

170:                                              ; preds = %166
  %171 = load i64, i64* %11, align 8
  %172 = load i64, i64* @LIT_CHAR_UPPERCASE_E, align 8
  %173 = icmp eq i64 %171, %172
  br i1 %173, label %174, label %226

174:                                              ; preds = %170, %166
  %175 = load i32, i32* %15, align 4
  %176 = icmp ne i32 %175, 0
  br i1 %176, label %180, label %177

177:                                              ; preds = %174
  %178 = load i32, i32* %16, align 4
  %179 = icmp ne i32 %178, 0
  br i1 %179, label %180, label %226

180:                                              ; preds = %177, %174
  %181 = load i64*, i64** %6, align 8
  %182 = load i64*, i64** %7, align 8
  %183 = icmp ult i64* %181, %182
  br i1 %183, label %184, label %226

184:                                              ; preds = %180
  %185 = load i64*, i64** %6, align 8
  %186 = getelementptr inbounds i64, i64* %185, i32 1
  store i64* %186, i64** %6, align 8
  %187 = load i64, i64* %185, align 8
  store i64 %187, i64* %11, align 8
  %188 = load i64, i64* %11, align 8
  %189 = load i64, i64* @LIT_CHAR_PLUS, align 8
  %190 = icmp eq i64 %188, %189
  br i1 %190, label %195, label %191

191:                                              ; preds = %184
  %192 = load i64, i64* %11, align 8
  %193 = load i64, i64* @LIT_CHAR_MINUS, align 8
  %194 = icmp eq i64 %192, %193
  br i1 %194, label %195, label %203

195:                                              ; preds = %191, %184
  %196 = load i64*, i64** %6, align 8
  %197 = load i64*, i64** %7, align 8
  %198 = icmp ult i64* %196, %197
  br i1 %198, label %199, label %203

199:                                              ; preds = %195
  %200 = load i64*, i64** %6, align 8
  %201 = getelementptr inbounds i64, i64* %200, i32 1
  store i64* %201, i64** %6, align 8
  %202 = load i64, i64* %200, align 8
  store i64 %202, i64* %11, align 8
  br label %203

203:                                              ; preds = %199, %195, %191
  %204 = load i64, i64* %11, align 8
  %205 = call i64 @lit_char_is_decimal_digit(i64 %204)
  %206 = icmp ne i64 %205, 0
  br i1 %206, label %207, label %225

207:                                              ; preds = %203
  br label %208

208:                                              ; preds = %222, %207
  %209 = load i64*, i64** %6, align 8
  %210 = load i64*, i64** %7, align 8
  %211 = icmp ult i64* %209, %210
  br i1 %211, label %212, label %223

212:                                              ; preds = %208
  %213 = load i64*, i64** %6, align 8
  %214 = getelementptr inbounds i64, i64* %213, i32 1
  store i64* %214, i64** %6, align 8
  %215 = load i64, i64* %213, align 8
  store i64 %215, i64* %11, align 8
  %216 = load i64, i64* %11, align 8
  %217 = call i64 @lit_char_is_decimal_digit(i64 %216)
  %218 = icmp ne i64 %217, 0
  br i1 %218, label %222, label %219

219:                                              ; preds = %212
  %220 = load i64*, i64** %6, align 8
  %221 = getelementptr inbounds i64, i64* %220, i32 -1
  store i64* %221, i64** %6, align 8
  br label %223

222:                                              ; preds = %212
  br label %208

223:                                              ; preds = %219, %208
  %224 = load i64*, i64** %6, align 8
  store i64* %224, i64** %9, align 8
  br label %225

225:                                              ; preds = %223, %203
  br label %226

226:                                              ; preds = %225, %180, %177, %170
  %227 = load i64*, i64** %8, align 8
  %228 = load i64*, i64** %9, align 8
  %229 = icmp eq i64* %227, %228
  br i1 %229, label %230, label %232

230:                                              ; preds = %226
  %231 = call i32 (...) @ecma_make_nan_value()
  store i32 %231, i32* %3, align 4
  br label %250

232:                                              ; preds = %226
  %233 = load i64*, i64** %8, align 8
  %234 = load i64*, i64** %9, align 8
  %235 = load i64*, i64** %8, align 8
  %236 = ptrtoint i64* %234 to i64
  %237 = ptrtoint i64* %235 to i64
  %238 = sub i64 %236, %237
  %239 = sdiv exact i64 %238, 8
  %240 = call i32 @ecma_utf8_string_to_number(i64* %233, i64 %239)
  store i32 %240, i32* %17, align 4
  %241 = load i32, i32* %10, align 4
  %242 = icmp ne i32 %241, 0
  br i1 %242, label %243, label %247

243:                                              ; preds = %232
  %244 = load i32, i32* @ECMA_NUMBER_MINUS_ONE, align 4
  %245 = load i32, i32* %17, align 4
  %246 = mul nsw i32 %245, %244
  store i32 %246, i32* %17, align 4
  br label %247

247:                                              ; preds = %243, %232
  %248 = load i32, i32* %17, align 4
  %249 = call i32 @ecma_make_number_value(i32 %248)
  store i32 %249, i32* %3, align 4
  br label %250

250:                                              ; preds = %247, %230, %86, %76, %20
  %251 = load i32, i32* %3, align 4
  ret i32 %251
}

declare dso_local i32 @ecma_make_nan_value(...) #1

declare dso_local i32 @ecma_string_trim_helper(i64**, i64*) #1

declare dso_local i64* @lit_get_magic_string_utf8(i32) #1

declare dso_local i32 @ecma_make_number_value(i32) #1

declare dso_local i32 @ecma_number_make_infinity(i32) #1

declare dso_local i64 @lit_char_is_decimal_digit(i64) #1

declare dso_local i32 @ecma_utf8_string_to_number(i64*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
