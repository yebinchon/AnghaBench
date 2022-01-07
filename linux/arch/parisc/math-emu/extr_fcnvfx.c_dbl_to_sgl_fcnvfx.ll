; ModuleID = '/home/carl/AnghaBench/linux/arch/parisc/math-emu/extr_fcnvfx.c_dbl_to_sgl_fcnvfx.c'
source_filename = "/home/carl/AnghaBench/linux/arch/parisc/math-emu/extr_fcnvfx.c_dbl_to_sgl_fcnvfx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FALSE = common dso_local global i64 0, align 8
@DBL_BIAS = common dso_local global i32 0, align 4
@SGL_FX_MAX_EXP = common dso_local global i32 0, align 4
@INVALIDEXCEPTION = common dso_local global i32 0, align 4
@NOEXCEPTION = common dso_local global i32 0, align 4
@TRUE = common dso_local global i64 0, align 8
@INEXACTEXCEPTION = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dbl_to_sgl_fcnvfx(i32* %0, i32* %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  store i32* %0, i32** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  %17 = load i64, i64* @FALSE, align 8
  store i64 %17, i64* %16, align 8
  %18 = load i32*, i32** %6, align 8
  %19 = load i32, i32* %10, align 4
  %20 = load i32, i32* %11, align 4
  %21 = call i32 @Dbl_copyfromptr(i32* %18, i32 %19, i32 %20)
  %22 = load i32, i32* %10, align 4
  %23 = call i32 @Dbl_exponent(i32 %22)
  %24 = load i32, i32* @DBL_BIAS, align 4
  %25 = sub nsw i32 %23, %24
  store i32 %25, i32* %14, align 4
  %26 = load i32, i32* %14, align 4
  %27 = load i32, i32* @SGL_FX_MAX_EXP, align 4
  %28 = icmp sgt i32 %26, %27
  br i1 %28, label %29, label %52

29:                                               ; preds = %4
  %30 = load i32, i32* %14, align 4
  %31 = load i32, i32* %10, align 4
  %32 = load i32, i32* %11, align 4
  %33 = call i64 @Dbl_isoverflow_to_int(i32 %30, i32 %31, i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %51

35:                                               ; preds = %29
  %36 = load i32, i32* %10, align 4
  %37 = call i64 @Dbl_iszero_sign(i32 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %35
  store i32 2147483647, i32* %15, align 4
  br label %41

40:                                               ; preds = %35
  store i32 -2147483648, i32* %15, align 4
  br label %41

41:                                               ; preds = %40, %39
  %42 = call i64 (...) @Is_invalidtrap_enabled()
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %41
  %45 = load i32, i32* @INVALIDEXCEPTION, align 4
  store i32 %45, i32* %5, align 4
  br label %226

46:                                               ; preds = %41
  %47 = call i32 (...) @Set_invalidflag()
  %48 = load i32, i32* %15, align 4
  %49 = load i32*, i32** %8, align 8
  store i32 %48, i32* %49, align 4
  %50 = load i32, i32* @NOEXCEPTION, align 4
  store i32 %50, i32* %5, align 4
  br label %226

51:                                               ; preds = %29
  br label %52

52:                                               ; preds = %51, %4
  %53 = load i32, i32* %14, align 4
  %54 = icmp sge i32 %53, 0
  br i1 %54, label %55, label %164

55:                                               ; preds = %52
  %56 = load i32, i32* %10, align 4
  store i32 %56, i32* %12, align 4
  %57 = load i32, i32* %11, align 4
  store i32 %57, i32* %13, align 4
  %58 = load i32, i32* %12, align 4
  %59 = call i32 @Dbl_clear_signexponent_set_hidden(i32 %58)
  %60 = load i32, i32* %12, align 4
  %61 = load i32, i32* %13, align 4
  %62 = load i32, i32* %14, align 4
  %63 = call i32 @Int_from_dbl_mantissa(i32 %60, i32 %61, i32 %62)
  %64 = load i32, i32* %10, align 4
  %65 = call i64 @Dbl_isone_sign(i32 %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %75

67:                                               ; preds = %55
  %68 = load i32, i32* %14, align 4
  %69 = load i32, i32* @SGL_FX_MAX_EXP, align 4
  %70 = icmp sle i32 %68, %69
  br i1 %70, label %71, label %75

71:                                               ; preds = %67
  %72 = load i32, i32* %12, align 4
  %73 = call i32 @Dbl_allp1(i32 %72)
  %74 = sub nsw i32 0, %73
  store i32 %74, i32* %15, align 4
  br label %78

75:                                               ; preds = %67, %55
  %76 = load i32, i32* %12, align 4
  %77 = call i32 @Dbl_allp1(i32 %76)
  store i32 %77, i32* %15, align 4
  br label %78

78:                                               ; preds = %75, %71
  %79 = load i32, i32* %10, align 4
  %80 = load i32, i32* %11, align 4
  %81 = load i32, i32* %14, align 4
  %82 = call i64 @Dbl_isinexact_to_fix(i32 %79, i32 %80, i32 %81)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %163

84:                                               ; preds = %78
  %85 = load i64, i64* @TRUE, align 8
  store i64 %85, i64* %16, align 8
  %86 = call i32 (...) @Rounding_mode()
  switch i32 %86, label %132 [
    i32 128, label %87
    i32 130, label %95
    i32 129, label %103
  ]

87:                                               ; preds = %84
  %88 = load i32, i32* %10, align 4
  %89 = call i64 @Dbl_iszero_sign(i32 %88)
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %94

91:                                               ; preds = %87
  %92 = load i32, i32* %15, align 4
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* %15, align 4
  br label %94

94:                                               ; preds = %91, %87
  br label %132

95:                                               ; preds = %84
  %96 = load i32, i32* %10, align 4
  %97 = call i64 @Dbl_isone_sign(i32 %96)
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %102

99:                                               ; preds = %95
  %100 = load i32, i32* %15, align 4
  %101 = add nsw i32 %100, -1
  store i32 %101, i32* %15, align 4
  br label %102

102:                                              ; preds = %99, %95
  br label %132

103:                                              ; preds = %84
  %104 = load i32, i32* %10, align 4
  %105 = load i32, i32* %11, align 4
  %106 = load i32, i32* %14, align 4
  %107 = call i32 @Dbl_isone_roundbit(i32 %104, i32 %105, i32 %106)
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %131

109:                                              ; preds = %103
  %110 = load i32, i32* %10, align 4
  %111 = load i32, i32* %11, align 4
  %112 = load i32, i32* %14, align 4
  %113 = call i32 @Dbl_isone_stickybit(i32 %110, i32 %111, i32 %112)
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %119, label %115

115:                                              ; preds = %109
  %116 = load i32, i32* %12, align 4
  %117 = call i32 @Dbl_isone_lowmantissap1(i32 %116)
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %130

119:                                              ; preds = %115, %109
  %120 = load i32, i32* %10, align 4
  %121 = call i64 @Dbl_iszero_sign(i32 %120)
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %123, label %126

123:                                              ; preds = %119
  %124 = load i32, i32* %15, align 4
  %125 = add nsw i32 %124, 1
  store i32 %125, i32* %15, align 4
  br label %129

126:                                              ; preds = %119
  %127 = load i32, i32* %15, align 4
  %128 = add nsw i32 %127, -1
  store i32 %128, i32* %15, align 4
  br label %129

129:                                              ; preds = %126, %123
  br label %130

130:                                              ; preds = %129, %115
  br label %131

131:                                              ; preds = %130, %103
  br label %132

132:                                              ; preds = %131, %84, %102, %94
  %133 = load i32, i32* %10, align 4
  %134 = call i64 @Dbl_iszero_sign(i32 %133)
  %135 = icmp ne i64 %134, 0
  br i1 %135, label %136, label %139

136:                                              ; preds = %132
  %137 = load i32, i32* %15, align 4
  %138 = icmp slt i32 %137, 0
  br i1 %138, label %146, label %139

139:                                              ; preds = %136, %132
  %140 = load i32, i32* %10, align 4
  %141 = call i64 @Dbl_isone_sign(i32 %140)
  %142 = icmp ne i64 %141, 0
  br i1 %142, label %143, label %162

143:                                              ; preds = %139
  %144 = load i32, i32* %15, align 4
  %145 = icmp sgt i32 %144, 0
  br i1 %145, label %146, label %162

146:                                              ; preds = %143, %136
  %147 = load i32, i32* %10, align 4
  %148 = call i64 @Dbl_iszero_sign(i32 %147)
  %149 = icmp ne i64 %148, 0
  br i1 %149, label %150, label %151

150:                                              ; preds = %146
  store i32 2147483647, i32* %15, align 4
  br label %152

151:                                              ; preds = %146
  store i32 -2147483648, i32* %15, align 4
  br label %152

152:                                              ; preds = %151, %150
  %153 = call i64 (...) @Is_invalidtrap_enabled()
  %154 = icmp ne i64 %153, 0
  br i1 %154, label %155, label %157

155:                                              ; preds = %152
  %156 = load i32, i32* @INVALIDEXCEPTION, align 4
  store i32 %156, i32* %5, align 4
  br label %226

157:                                              ; preds = %152
  %158 = call i32 (...) @Set_invalidflag()
  %159 = load i32, i32* %15, align 4
  %160 = load i32*, i32** %8, align 8
  store i32 %159, i32* %160, align 4
  %161 = load i32, i32* @NOEXCEPTION, align 4
  store i32 %161, i32* %5, align 4
  br label %226

162:                                              ; preds = %143, %139
  br label %163

163:                                              ; preds = %162, %78
  br label %211

164:                                              ; preds = %52
  store i32 0, i32* %15, align 4
  %165 = load i32, i32* %10, align 4
  %166 = load i32, i32* %11, align 4
  %167 = call i64 @Dbl_isnotzero_exponentmantissa(i32 %165, i32 %166)
  %168 = icmp ne i64 %167, 0
  br i1 %168, label %169, label %210

169:                                              ; preds = %164
  %170 = load i64, i64* @TRUE, align 8
  store i64 %170, i64* %16, align 8
  %171 = call i32 (...) @Rounding_mode()
  switch i32 %171, label %209 [
    i32 128, label %172
    i32 130, label %180
    i32 129, label %188
  ]

172:                                              ; preds = %169
  %173 = load i32, i32* %10, align 4
  %174 = call i64 @Dbl_iszero_sign(i32 %173)
  %175 = icmp ne i64 %174, 0
  br i1 %175, label %176, label %179

176:                                              ; preds = %172
  %177 = load i32, i32* %15, align 4
  %178 = add nsw i32 %177, 1
  store i32 %178, i32* %15, align 4
  br label %179

179:                                              ; preds = %176, %172
  br label %209

180:                                              ; preds = %169
  %181 = load i32, i32* %10, align 4
  %182 = call i64 @Dbl_isone_sign(i32 %181)
  %183 = icmp ne i64 %182, 0
  br i1 %183, label %184, label %187

184:                                              ; preds = %180
  %185 = load i32, i32* %15, align 4
  %186 = add nsw i32 %185, -1
  store i32 %186, i32* %15, align 4
  br label %187

187:                                              ; preds = %184, %180
  br label %209

188:                                              ; preds = %169
  %189 = load i32, i32* %14, align 4
  %190 = icmp eq i32 %189, -1
  br i1 %190, label %191, label %208

191:                                              ; preds = %188
  %192 = load i32, i32* %10, align 4
  %193 = load i32, i32* %11, align 4
  %194 = call i32 @Dbl_isnotzero_mantissa(i32 %192, i32 %193)
  %195 = icmp ne i32 %194, 0
  br i1 %195, label %196, label %207

196:                                              ; preds = %191
  %197 = load i32, i32* %10, align 4
  %198 = call i64 @Dbl_iszero_sign(i32 %197)
  %199 = icmp ne i64 %198, 0
  br i1 %199, label %200, label %203

200:                                              ; preds = %196
  %201 = load i32, i32* %15, align 4
  %202 = add nsw i32 %201, 1
  store i32 %202, i32* %15, align 4
  br label %206

203:                                              ; preds = %196
  %204 = load i32, i32* %15, align 4
  %205 = add nsw i32 %204, -1
  store i32 %205, i32* %15, align 4
  br label %206

206:                                              ; preds = %203, %200
  br label %207

207:                                              ; preds = %206, %191
  br label %208

208:                                              ; preds = %207, %188
  br label %209

209:                                              ; preds = %208, %169, %187, %179
  br label %210

210:                                              ; preds = %209, %164
  br label %211

211:                                              ; preds = %210, %163
  %212 = load i32, i32* %15, align 4
  %213 = load i32*, i32** %8, align 8
  store i32 %212, i32* %213, align 4
  %214 = load i64, i64* %16, align 8
  %215 = icmp ne i64 %214, 0
  br i1 %215, label %216, label %224

216:                                              ; preds = %211
  %217 = call i64 (...) @Is_inexacttrap_enabled()
  %218 = icmp ne i64 %217, 0
  br i1 %218, label %219, label %221

219:                                              ; preds = %216
  %220 = load i32, i32* @INEXACTEXCEPTION, align 4
  store i32 %220, i32* %5, align 4
  br label %226

221:                                              ; preds = %216
  %222 = call i32 (...) @Set_inexactflag()
  br label %223

223:                                              ; preds = %221
  br label %224

224:                                              ; preds = %223, %211
  %225 = load i32, i32* @NOEXCEPTION, align 4
  store i32 %225, i32* %5, align 4
  br label %226

226:                                              ; preds = %224, %219, %157, %155, %46, %44
  %227 = load i32, i32* %5, align 4
  ret i32 %227
}

declare dso_local i32 @Dbl_copyfromptr(i32*, i32, i32) #1

declare dso_local i32 @Dbl_exponent(i32) #1

declare dso_local i64 @Dbl_isoverflow_to_int(i32, i32, i32) #1

declare dso_local i64 @Dbl_iszero_sign(i32) #1

declare dso_local i64 @Is_invalidtrap_enabled(...) #1

declare dso_local i32 @Set_invalidflag(...) #1

declare dso_local i32 @Dbl_clear_signexponent_set_hidden(i32) #1

declare dso_local i32 @Int_from_dbl_mantissa(i32, i32, i32) #1

declare dso_local i64 @Dbl_isone_sign(i32) #1

declare dso_local i32 @Dbl_allp1(i32) #1

declare dso_local i64 @Dbl_isinexact_to_fix(i32, i32, i32) #1

declare dso_local i32 @Rounding_mode(...) #1

declare dso_local i32 @Dbl_isone_roundbit(i32, i32, i32) #1

declare dso_local i32 @Dbl_isone_stickybit(i32, i32, i32) #1

declare dso_local i32 @Dbl_isone_lowmantissap1(i32) #1

declare dso_local i64 @Dbl_isnotzero_exponentmantissa(i32, i32) #1

declare dso_local i32 @Dbl_isnotzero_mantissa(i32, i32) #1

declare dso_local i64 @Is_inexacttrap_enabled(...) #1

declare dso_local i32 @Set_inexactflag(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
