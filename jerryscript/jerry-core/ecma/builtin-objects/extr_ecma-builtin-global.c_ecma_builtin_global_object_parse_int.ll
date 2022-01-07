; ModuleID = '/home/carl/AnghaBench/jerryscript/jerry-core/ecma/builtin-objects/extr_ecma-builtin-global.c_ecma_builtin_global_object_parse_int.c'
source_filename = "/home/carl/AnghaBench/jerryscript/jerry-core/ecma/builtin-objects/extr_ecma-builtin-global.c_ecma_builtin_global_object_parse_int.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@LIT_CHAR_MINUS = common dso_local global i64 0, align 8
@LIT_CHAR_PLUS = common dso_local global i64 0, align 8
@LIT_CHAR_0 = common dso_local global i64 0, align 8
@LIT_CHAR_LOWERCASE_X = common dso_local global i64 0, align 8
@LIT_CHAR_UPPERCASE_X = common dso_local global i64 0, align 8
@LIT_CHAR_LOWERCASE_A = common dso_local global i64 0, align 8
@LIT_CHAR_LOWERCASE_Z = common dso_local global i64 0, align 8
@LIT_CHAR_UPPERCASE_A = common dso_local global i64 0, align 8
@LIT_CHAR_UPPERCASE_Z = common dso_local global i64 0, align 8
@ECMA_NUMBER_ZERO = common dso_local global i64 0, align 8
@ECMA_NUMBER_MINUS_ONE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64*, i64, i32)* @ecma_builtin_global_object_parse_int to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ecma_builtin_global_object_parse_int(i64* %0, i64 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i64*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i32, align 4
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  %23 = alloca i64, align 8
  store i64* %0, i64** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  %24 = load i64, i64* %6, align 8
  %25 = icmp sle i64 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %3
  %27 = call i32 (...) @ecma_make_nan_value()
  store i32 %27, i32* %4, align 4
  br label %250

28:                                               ; preds = %3
  %29 = load i64*, i64** %5, align 8
  store i64* %29, i64** %8, align 8
  %30 = call i32 @ecma_string_trim_helper(i64** %8, i64* %6)
  %31 = load i64*, i64** %8, align 8
  %32 = load i64, i64* %6, align 8
  %33 = getelementptr inbounds i64, i64* %31, i64 %32
  store i64* %33, i64** %9, align 8
  %34 = load i64*, i64** %8, align 8
  store i64* %34, i64** %10, align 8
  %35 = load i64*, i64** %9, align 8
  store i64* %35, i64** %11, align 8
  %36 = load i64*, i64** %8, align 8
  %37 = load i64*, i64** %9, align 8
  %38 = icmp uge i64* %36, %37
  br i1 %38, label %39, label %41

39:                                               ; preds = %28
  %40 = call i32 (...) @ecma_make_nan_value()
  store i32 %40, i32* %4, align 4
  br label %250

41:                                               ; preds = %28
  store i32 1, i32* %12, align 4
  %42 = call i64 @lit_utf8_read_next(i64** %8)
  store i64 %42, i64* %13, align 8
  %43 = load i64, i64* %13, align 8
  %44 = load i64, i64* @LIT_CHAR_MINUS, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %46, label %47

46:                                               ; preds = %41
  store i32 -1, i32* %12, align 4
  br label %47

47:                                               ; preds = %46, %41
  %48 = load i64, i64* %13, align 8
  %49 = load i64, i64* @LIT_CHAR_MINUS, align 8
  %50 = icmp eq i64 %48, %49
  br i1 %50, label %55, label %51

51:                                               ; preds = %47
  %52 = load i64, i64* %13, align 8
  %53 = load i64, i64* @LIT_CHAR_PLUS, align 8
  %54 = icmp eq i64 %52, %53
  br i1 %54, label %55, label %63

55:                                               ; preds = %51, %47
  %56 = load i64*, i64** %8, align 8
  store i64* %56, i64** %10, align 8
  %57 = load i64*, i64** %8, align 8
  %58 = load i64*, i64** %9, align 8
  %59 = icmp ult i64* %57, %58
  br i1 %59, label %60, label %62

60:                                               ; preds = %55
  %61 = call i64 @lit_utf8_read_next(i64** %8)
  store i64 %61, i64* %13, align 8
  br label %62

62:                                               ; preds = %60, %55
  br label %63

63:                                               ; preds = %62, %51
  %64 = load i32, i32* %7, align 4
  %65 = call i32 @ecma_get_number(i32 %64, i64* %14)
  store i32 %65, i32* %7, align 4
  %66 = load i32, i32* %7, align 4
  %67 = call i32 @ecma_is_value_empty(i32 %66)
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %71, label %69

69:                                               ; preds = %63
  %70 = load i32, i32* %7, align 4
  store i32 %70, i32* %4, align 4
  br label %250

71:                                               ; preds = %63
  %72 = load i64, i64* %14, align 8
  %73 = call i32 @ecma_number_to_int32(i64 %72)
  store i32 %73, i32* %15, align 4
  store i32 1, i32* %16, align 4
  %74 = load i32, i32* %15, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %90

76:                                               ; preds = %71
  %77 = load i32, i32* %15, align 4
  %78 = icmp slt i32 %77, 2
  br i1 %78, label %82, label %79

79:                                               ; preds = %76
  %80 = load i32, i32* %15, align 4
  %81 = icmp sgt i32 %80, 36
  br i1 %81, label %82, label %84

82:                                               ; preds = %79, %76
  %83 = call i32 (...) @ecma_make_nan_value()
  store i32 %83, i32* %4, align 4
  br label %250

84:                                               ; preds = %79
  %85 = load i32, i32* %15, align 4
  %86 = icmp ne i32 %85, 16
  br i1 %86, label %87, label %88

87:                                               ; preds = %84
  store i32 0, i32* %16, align 4
  br label %88

88:                                               ; preds = %87, %84
  br label %89

89:                                               ; preds = %88
  br label %91

90:                                               ; preds = %71
  store i32 10, i32* %15, align 4
  br label %91

91:                                               ; preds = %90, %89
  %92 = load i32, i32* %16, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %120

94:                                               ; preds = %91
  %95 = load i64*, i64** %11, align 8
  %96 = load i64*, i64** %10, align 8
  %97 = ptrtoint i64* %95 to i64
  %98 = ptrtoint i64* %96 to i64
  %99 = sub i64 %97, %98
  %100 = sdiv exact i64 %99, 8
  %101 = icmp sge i64 %100, 2
  br i1 %101, label %102, label %120

102:                                              ; preds = %94
  %103 = load i64, i64* %13, align 8
  %104 = load i64, i64* @LIT_CHAR_0, align 8
  %105 = icmp eq i64 %103, %104
  br i1 %105, label %106, label %120

106:                                              ; preds = %102
  %107 = load i64*, i64** %8, align 8
  %108 = load i64, i64* %107, align 8
  store i64 %108, i64* %17, align 8
  %109 = load i64, i64* %17, align 8
  %110 = load i64, i64* @LIT_CHAR_LOWERCASE_X, align 8
  %111 = icmp eq i64 %109, %110
  br i1 %111, label %116, label %112

112:                                              ; preds = %106
  %113 = load i64, i64* %17, align 8
  %114 = load i64, i64* @LIT_CHAR_UPPERCASE_X, align 8
  %115 = icmp eq i64 %113, %114
  br i1 %115, label %116, label %119

116:                                              ; preds = %112, %106
  %117 = load i64*, i64** %8, align 8
  %118 = getelementptr inbounds i64, i64* %117, i32 1
  store i64* %118, i64** %8, align 8
  store i64* %118, i64** %10, align 8
  store i32 16, i32* %15, align 4
  br label %119

119:                                              ; preds = %116, %112
  br label %120

120:                                              ; preds = %119, %102, %94, %91
  %121 = load i64*, i64** %10, align 8
  store i64* %121, i64** %8, align 8
  br label %122

122:                                              ; preds = %177, %120
  %123 = load i64*, i64** %8, align 8
  %124 = load i64*, i64** %9, align 8
  %125 = icmp ult i64* %123, %124
  br i1 %125, label %126, label %178

126:                                              ; preds = %122
  %127 = load i64*, i64** %8, align 8
  %128 = getelementptr inbounds i64, i64* %127, i32 1
  store i64* %128, i64** %8, align 8
  %129 = load i64, i64* %127, align 8
  store i64 %129, i64* %18, align 8
  %130 = load i64, i64* %18, align 8
  %131 = load i64, i64* @LIT_CHAR_LOWERCASE_A, align 8
  %132 = icmp sge i64 %130, %131
  br i1 %132, label %133, label %143

133:                                              ; preds = %126
  %134 = load i64, i64* %18, align 8
  %135 = load i64, i64* @LIT_CHAR_LOWERCASE_Z, align 8
  %136 = icmp sle i64 %134, %135
  br i1 %136, label %137, label %143

137:                                              ; preds = %133
  %138 = load i64, i64* %18, align 8
  %139 = load i64, i64* @LIT_CHAR_LOWERCASE_A, align 8
  %140 = sub nsw i64 %138, %139
  %141 = add nsw i64 %140, 10
  %142 = trunc i64 %141 to i32
  store i32 %142, i32* %19, align 4
  br label %170

143:                                              ; preds = %133, %126
  %144 = load i64, i64* %18, align 8
  %145 = load i64, i64* @LIT_CHAR_UPPERCASE_A, align 8
  %146 = icmp sge i64 %144, %145
  br i1 %146, label %147, label %157

147:                                              ; preds = %143
  %148 = load i64, i64* %18, align 8
  %149 = load i64, i64* @LIT_CHAR_UPPERCASE_Z, align 8
  %150 = icmp sle i64 %148, %149
  br i1 %150, label %151, label %157

151:                                              ; preds = %147
  %152 = load i64, i64* %18, align 8
  %153 = load i64, i64* @LIT_CHAR_UPPERCASE_A, align 8
  %154 = sub nsw i64 %152, %153
  %155 = add nsw i64 %154, 10
  %156 = trunc i64 %155 to i32
  store i32 %156, i32* %19, align 4
  br label %169

157:                                              ; preds = %147, %143
  %158 = load i64, i64* %18, align 8
  %159 = call i64 @lit_char_is_decimal_digit(i64 %158)
  %160 = icmp ne i64 %159, 0
  br i1 %160, label %161, label %166

161:                                              ; preds = %157
  %162 = load i64, i64* %18, align 8
  %163 = load i64, i64* @LIT_CHAR_0, align 8
  %164 = sub nsw i64 %162, %163
  %165 = trunc i64 %164 to i32
  store i32 %165, i32* %19, align 4
  br label %168

166:                                              ; preds = %157
  %167 = load i32, i32* %15, align 4
  store i32 %167, i32* %19, align 4
  br label %168

168:                                              ; preds = %166, %161
  br label %169

169:                                              ; preds = %168, %151
  br label %170

170:                                              ; preds = %169, %137
  %171 = load i32, i32* %19, align 4
  %172 = load i32, i32* %15, align 4
  %173 = icmp slt i32 %171, %172
  br i1 %173, label %177, label %174

174:                                              ; preds = %170
  %175 = load i64*, i64** %8, align 8
  %176 = getelementptr inbounds i64, i64* %175, i32 -1
  store i64* %176, i64** %8, align 8
  store i64* %176, i64** %11, align 8
  br label %178

177:                                              ; preds = %170
  br label %122

178:                                              ; preds = %174, %122
  %179 = load i64*, i64** %11, align 8
  %180 = load i64*, i64** %10, align 8
  %181 = icmp eq i64* %179, %180
  br i1 %181, label %182, label %184

182:                                              ; preds = %178
  %183 = call i32 (...) @ecma_make_nan_value()
  store i32 %183, i32* %4, align 4
  br label %250

184:                                              ; preds = %178
  %185 = load i64, i64* @ECMA_NUMBER_ZERO, align 8
  store i64 %185, i64* %20, align 8
  store i64 1, i64* %21, align 8
  %186 = load i64*, i64** %11, align 8
  store i64* %186, i64** %8, align 8
  br label %187

187:                                              ; preds = %229, %184
  %188 = load i64*, i64** %8, align 8
  %189 = load i64*, i64** %10, align 8
  %190 = icmp ugt i64* %188, %189
  br i1 %190, label %191, label %239

191:                                              ; preds = %187
  %192 = load i64*, i64** %8, align 8
  %193 = getelementptr inbounds i64, i64* %192, i32 -1
  store i64* %193, i64** %8, align 8
  %194 = load i64, i64* %193, align 8
  store i64 %194, i64* %22, align 8
  %195 = load i64, i64* @ECMA_NUMBER_MINUS_ONE, align 8
  store i64 %195, i64* %23, align 8
  %196 = load i64, i64* %22, align 8
  %197 = load i64, i64* @LIT_CHAR_LOWERCASE_A, align 8
  %198 = icmp sge i64 %196, %197
  br i1 %198, label %199, label %208

199:                                              ; preds = %191
  %200 = load i64, i64* %22, align 8
  %201 = load i64, i64* @LIT_CHAR_LOWERCASE_Z, align 8
  %202 = icmp sle i64 %200, %201
  br i1 %202, label %203, label %208

203:                                              ; preds = %199
  %204 = load i64, i64* %22, align 8
  %205 = load i64, i64* @LIT_CHAR_LOWERCASE_A, align 8
  %206 = sub nsw i64 %204, %205
  %207 = add nsw i64 %206, 10
  store i64 %207, i64* %23, align 8
  br label %229

208:                                              ; preds = %199, %191
  %209 = load i64, i64* %22, align 8
  %210 = load i64, i64* @LIT_CHAR_UPPERCASE_A, align 8
  %211 = icmp sge i64 %209, %210
  br i1 %211, label %212, label %221

212:                                              ; preds = %208
  %213 = load i64, i64* %22, align 8
  %214 = load i64, i64* @LIT_CHAR_UPPERCASE_Z, align 8
  %215 = icmp sle i64 %213, %214
  br i1 %215, label %216, label %221

216:                                              ; preds = %212
  %217 = load i64, i64* %22, align 8
  %218 = load i64, i64* @LIT_CHAR_UPPERCASE_A, align 8
  %219 = sub nsw i64 %217, %218
  %220 = add nsw i64 %219, 10
  store i64 %220, i64* %23, align 8
  br label %228

221:                                              ; preds = %212, %208
  %222 = load i64, i64* %22, align 8
  %223 = call i64 @lit_char_is_decimal_digit(i64 %222)
  %224 = call i32 @JERRY_ASSERT(i64 %223)
  %225 = load i64, i64* %22, align 8
  %226 = load i64, i64* @LIT_CHAR_0, align 8
  %227 = sub nsw i64 %225, %226
  store i64 %227, i64* %23, align 8
  br label %228

228:                                              ; preds = %221, %216
  br label %229

229:                                              ; preds = %228, %203
  %230 = load i64, i64* %23, align 8
  %231 = load i64, i64* %21, align 8
  %232 = mul nsw i64 %230, %231
  %233 = load i64, i64* %20, align 8
  %234 = add nsw i64 %233, %232
  store i64 %234, i64* %20, align 8
  %235 = load i32, i32* %15, align 4
  %236 = sext i32 %235 to i64
  %237 = load i64, i64* %21, align 8
  %238 = mul nsw i64 %237, %236
  store i64 %238, i64* %21, align 8
  br label %187

239:                                              ; preds = %187
  %240 = load i32, i32* %12, align 4
  %241 = icmp slt i32 %240, 0
  br i1 %241, label %242, label %247

242:                                              ; preds = %239
  %243 = load i32, i32* %12, align 4
  %244 = sext i32 %243 to i64
  %245 = load i64, i64* %20, align 8
  %246 = mul nsw i64 %245, %244
  store i64 %246, i64* %20, align 8
  br label %247

247:                                              ; preds = %242, %239
  %248 = load i64, i64* %20, align 8
  %249 = call i32 @ecma_make_number_value(i64 %248)
  store i32 %249, i32* %4, align 4
  br label %250

250:                                              ; preds = %247, %182, %82, %69, %39, %26
  %251 = load i32, i32* %4, align 4
  ret i32 %251
}

declare dso_local i32 @ecma_make_nan_value(...) #1

declare dso_local i32 @ecma_string_trim_helper(i64**, i64*) #1

declare dso_local i64 @lit_utf8_read_next(i64**) #1

declare dso_local i32 @ecma_get_number(i32, i64*) #1

declare dso_local i32 @ecma_is_value_empty(i32) #1

declare dso_local i32 @ecma_number_to_int32(i64) #1

declare dso_local i64 @lit_char_is_decimal_digit(i64) #1

declare dso_local i32 @JERRY_ASSERT(i64) #1

declare dso_local i32 @ecma_make_number_value(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
