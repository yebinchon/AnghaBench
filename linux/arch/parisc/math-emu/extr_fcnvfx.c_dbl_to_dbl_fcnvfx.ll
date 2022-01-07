; ModuleID = '/home/carl/AnghaBench/linux/arch/parisc/math-emu/extr_fcnvfx.c_dbl_to_dbl_fcnvfx.c'
source_filename = "/home/carl/AnghaBench/linux/arch/parisc/math-emu/extr_fcnvfx.c_dbl_to_dbl_fcnvfx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FALSE = common dso_local global i64 0, align 8
@DBL_BIAS = common dso_local global i32 0, align 4
@DBL_FX_MAX_EXP = common dso_local global i32 0, align 4
@INVALIDEXCEPTION = common dso_local global i32 0, align 4
@NOEXCEPTION = common dso_local global i32 0, align 4
@TRUE = common dso_local global i64 0, align 8
@INEXACTEXCEPTION = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dbl_to_dbl_fcnvfx(i32* %0, i32* %1, i32* %2, i32* %3) #0 {
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
  %16 = alloca i32, align 4
  %17 = alloca i64, align 8
  store i32* %0, i32** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  %18 = load i64, i64* @FALSE, align 8
  store i64 %18, i64* %17, align 8
  %19 = load i32*, i32** %6, align 8
  %20 = load i32, i32* %12, align 4
  %21 = load i32, i32* %13, align 4
  %22 = call i32 @Dbl_copyfromptr(i32* %19, i32 %20, i32 %21)
  %23 = load i32, i32* %12, align 4
  %24 = call i32 @Dbl_exponent(i32 %23)
  %25 = load i32, i32* @DBL_BIAS, align 4
  %26 = sub nsw i32 %24, %25
  store i32 %26, i32* %10, align 4
  %27 = load i32, i32* %10, align 4
  %28 = load i32, i32* @DBL_FX_MAX_EXP, align 4
  %29 = icmp sgt i32 %27, %28
  br i1 %29, label %30, label %63

30:                                               ; preds = %4
  %31 = load i32, i32* %10, align 4
  %32 = load i32, i32* @DBL_FX_MAX_EXP, align 4
  %33 = add nsw i32 %32, 1
  %34 = icmp sgt i32 %31, %33
  br i1 %34, label %44, label %35

35:                                               ; preds = %30
  %36 = load i32, i32* %12, align 4
  %37 = load i32, i32* %13, align 4
  %38 = call i64 @Dbl_isnotzero_mantissa(i32 %36, i32 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %44, label %40

40:                                               ; preds = %35
  %41 = load i32, i32* %12, align 4
  %42 = call i64 @Dbl_iszero_sign(i32 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %62

44:                                               ; preds = %40, %35, %30
  %45 = load i32, i32* %12, align 4
  %46 = call i64 @Dbl_iszero_sign(i32 %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %44
  store i32 2147483647, i32* %11, align 4
  store i32 -1, i32* %16, align 4
  br label %50

49:                                               ; preds = %44
  store i32 -2147483648, i32* %11, align 4
  store i32 0, i32* %16, align 4
  br label %50

50:                                               ; preds = %49, %48
  %51 = call i64 (...) @Is_invalidtrap_enabled()
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %50
  %54 = load i32, i32* @INVALIDEXCEPTION, align 4
  store i32 %54, i32* %5, align 4
  br label %215

55:                                               ; preds = %50
  %56 = call i32 (...) @Set_invalidflag()
  %57 = load i32, i32* %11, align 4
  %58 = load i32, i32* %16, align 4
  %59 = load i32*, i32** %8, align 8
  %60 = call i32 @Dint_copytoptr(i32 %57, i32 %58, i32* %59)
  %61 = load i32, i32* @NOEXCEPTION, align 4
  store i32 %61, i32* %5, align 4
  br label %215

62:                                               ; preds = %40
  br label %63

63:                                               ; preds = %62, %4
  %64 = load i32, i32* %10, align 4
  %65 = icmp sge i32 %64, 0
  br i1 %65, label %66, label %144

66:                                               ; preds = %63
  %67 = load i32, i32* %12, align 4
  store i32 %67, i32* %14, align 4
  %68 = load i32, i32* %13, align 4
  store i32 %68, i32* %15, align 4
  %69 = load i32, i32* %14, align 4
  %70 = call i32 @Dbl_clear_signexponent_set_hidden(i32 %69)
  %71 = load i32, i32* %14, align 4
  %72 = load i32, i32* %15, align 4
  %73 = load i32, i32* %10, align 4
  %74 = load i32, i32* %11, align 4
  %75 = load i32, i32* %16, align 4
  %76 = call i32 @Dint_from_dbl_mantissa(i32 %71, i32 %72, i32 %73, i32 %74, i32 %75)
  %77 = load i32, i32* %12, align 4
  %78 = call i64 @Dbl_isone_sign(i32 %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %84

80:                                               ; preds = %66
  %81 = load i32, i32* %11, align 4
  %82 = load i32, i32* %16, align 4
  %83 = call i32 @Dint_setone_sign(i32 %81, i32 %82)
  br label %84

84:                                               ; preds = %80, %66
  %85 = load i32, i32* %12, align 4
  %86 = load i32, i32* %13, align 4
  %87 = load i32, i32* %10, align 4
  %88 = call i64 @Dbl_isinexact_to_fix(i32 %85, i32 %86, i32 %87)
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %143

90:                                               ; preds = %84
  %91 = load i64, i64* @TRUE, align 8
  store i64 %91, i64* %17, align 8
  %92 = call i32 (...) @Rounding_mode()
  switch i32 %92, label %142 [
    i32 128, label %93
    i32 130, label %102
    i32 129, label %111
  ]

93:                                               ; preds = %90
  %94 = load i32, i32* %12, align 4
  %95 = call i64 @Dbl_iszero_sign(i32 %94)
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %101

97:                                               ; preds = %93
  %98 = load i32, i32* %11, align 4
  %99 = load i32, i32* %16, align 4
  %100 = call i32 @Dint_increment(i32 %98, i32 %99)
  br label %101

101:                                              ; preds = %97, %93
  br label %142

102:                                              ; preds = %90
  %103 = load i32, i32* %12, align 4
  %104 = call i64 @Dbl_isone_sign(i32 %103)
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %110

106:                                              ; preds = %102
  %107 = load i32, i32* %11, align 4
  %108 = load i32, i32* %16, align 4
  %109 = call i32 @Dint_decrement(i32 %107, i32 %108)
  br label %110

110:                                              ; preds = %106, %102
  br label %142

111:                                              ; preds = %90
  %112 = load i32, i32* %12, align 4
  %113 = load i32, i32* %13, align 4
  %114 = load i32, i32* %10, align 4
  %115 = call i32 @Dbl_isone_roundbit(i32 %112, i32 %113, i32 %114)
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %141

117:                                              ; preds = %111
  %118 = load i32, i32* %12, align 4
  %119 = load i32, i32* %13, align 4
  %120 = load i32, i32* %10, align 4
  %121 = call i32 @Dbl_isone_stickybit(i32 %118, i32 %119, i32 %120)
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %127, label %123

123:                                              ; preds = %117
  %124 = load i32, i32* %16, align 4
  %125 = call i32 @Dint_isone_lowp2(i32 %124)
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %140

127:                                              ; preds = %123, %117
  %128 = load i32, i32* %12, align 4
  %129 = call i64 @Dbl_iszero_sign(i32 %128)
  %130 = icmp ne i64 %129, 0
  br i1 %130, label %131, label %135

131:                                              ; preds = %127
  %132 = load i32, i32* %11, align 4
  %133 = load i32, i32* %16, align 4
  %134 = call i32 @Dint_increment(i32 %132, i32 %133)
  br label %139

135:                                              ; preds = %127
  %136 = load i32, i32* %11, align 4
  %137 = load i32, i32* %16, align 4
  %138 = call i32 @Dint_decrement(i32 %136, i32 %137)
  br label %139

139:                                              ; preds = %135, %131
  br label %140

140:                                              ; preds = %139, %123
  br label %141

141:                                              ; preds = %140, %111
  br label %142

142:                                              ; preds = %141, %90, %110, %101
  br label %143

143:                                              ; preds = %142, %84
  br label %198

144:                                              ; preds = %63
  %145 = load i32, i32* %11, align 4
  %146 = load i32, i32* %16, align 4
  %147 = call i32 @Dint_setzero(i32 %145, i32 %146)
  %148 = load i32, i32* %12, align 4
  %149 = load i32, i32* %13, align 4
  %150 = call i64 @Dbl_isnotzero_exponentmantissa(i32 %148, i32 %149)
  %151 = icmp ne i64 %150, 0
  br i1 %151, label %152, label %197

152:                                              ; preds = %144
  %153 = load i64, i64* @TRUE, align 8
  store i64 %153, i64* %17, align 8
  %154 = call i32 (...) @Rounding_mode()
  switch i32 %154, label %196 [
    i32 128, label %155
    i32 130, label %164
    i32 129, label %173
  ]

155:                                              ; preds = %152
  %156 = load i32, i32* %12, align 4
  %157 = call i64 @Dbl_iszero_sign(i32 %156)
  %158 = icmp ne i64 %157, 0
  br i1 %158, label %159, label %163

159:                                              ; preds = %155
  %160 = load i32, i32* %11, align 4
  %161 = load i32, i32* %16, align 4
  %162 = call i32 @Dint_increment(i32 %160, i32 %161)
  br label %163

163:                                              ; preds = %159, %155
  br label %196

164:                                              ; preds = %152
  %165 = load i32, i32* %12, align 4
  %166 = call i64 @Dbl_isone_sign(i32 %165)
  %167 = icmp ne i64 %166, 0
  br i1 %167, label %168, label %172

168:                                              ; preds = %164
  %169 = load i32, i32* %11, align 4
  %170 = load i32, i32* %16, align 4
  %171 = call i32 @Dint_decrement(i32 %169, i32 %170)
  br label %172

172:                                              ; preds = %168, %164
  br label %196

173:                                              ; preds = %152
  %174 = load i32, i32* %10, align 4
  %175 = icmp eq i32 %174, -1
  br i1 %175, label %176, label %195

176:                                              ; preds = %173
  %177 = load i32, i32* %12, align 4
  %178 = load i32, i32* %13, align 4
  %179 = call i64 @Dbl_isnotzero_mantissa(i32 %177, i32 %178)
  %180 = icmp ne i64 %179, 0
  br i1 %180, label %181, label %194

181:                                              ; preds = %176
  %182 = load i32, i32* %12, align 4
  %183 = call i64 @Dbl_iszero_sign(i32 %182)
  %184 = icmp ne i64 %183, 0
  br i1 %184, label %185, label %189

185:                                              ; preds = %181
  %186 = load i32, i32* %11, align 4
  %187 = load i32, i32* %16, align 4
  %188 = call i32 @Dint_increment(i32 %186, i32 %187)
  br label %193

189:                                              ; preds = %181
  %190 = load i32, i32* %11, align 4
  %191 = load i32, i32* %16, align 4
  %192 = call i32 @Dint_decrement(i32 %190, i32 %191)
  br label %193

193:                                              ; preds = %189, %185
  br label %194

194:                                              ; preds = %193, %176
  br label %195

195:                                              ; preds = %194, %173
  br label %196

196:                                              ; preds = %195, %152, %172, %163
  br label %197

197:                                              ; preds = %196, %144
  br label %198

198:                                              ; preds = %197, %143
  %199 = load i32, i32* %11, align 4
  %200 = load i32, i32* %16, align 4
  %201 = load i32*, i32** %8, align 8
  %202 = call i32 @Dint_copytoptr(i32 %199, i32 %200, i32* %201)
  %203 = load i64, i64* %17, align 8
  %204 = icmp ne i64 %203, 0
  br i1 %204, label %205, label %213

205:                                              ; preds = %198
  %206 = call i64 (...) @Is_inexacttrap_enabled()
  %207 = icmp ne i64 %206, 0
  br i1 %207, label %208, label %210

208:                                              ; preds = %205
  %209 = load i32, i32* @INEXACTEXCEPTION, align 4
  store i32 %209, i32* %5, align 4
  br label %215

210:                                              ; preds = %205
  %211 = call i32 (...) @Set_inexactflag()
  br label %212

212:                                              ; preds = %210
  br label %213

213:                                              ; preds = %212, %198
  %214 = load i32, i32* @NOEXCEPTION, align 4
  store i32 %214, i32* %5, align 4
  br label %215

215:                                              ; preds = %213, %208, %55, %53
  %216 = load i32, i32* %5, align 4
  ret i32 %216
}

declare dso_local i32 @Dbl_copyfromptr(i32*, i32, i32) #1

declare dso_local i32 @Dbl_exponent(i32) #1

declare dso_local i64 @Dbl_isnotzero_mantissa(i32, i32) #1

declare dso_local i64 @Dbl_iszero_sign(i32) #1

declare dso_local i64 @Is_invalidtrap_enabled(...) #1

declare dso_local i32 @Set_invalidflag(...) #1

declare dso_local i32 @Dint_copytoptr(i32, i32, i32*) #1

declare dso_local i32 @Dbl_clear_signexponent_set_hidden(i32) #1

declare dso_local i32 @Dint_from_dbl_mantissa(i32, i32, i32, i32, i32) #1

declare dso_local i64 @Dbl_isone_sign(i32) #1

declare dso_local i32 @Dint_setone_sign(i32, i32) #1

declare dso_local i64 @Dbl_isinexact_to_fix(i32, i32, i32) #1

declare dso_local i32 @Rounding_mode(...) #1

declare dso_local i32 @Dint_increment(i32, i32) #1

declare dso_local i32 @Dint_decrement(i32, i32) #1

declare dso_local i32 @Dbl_isone_roundbit(i32, i32, i32) #1

declare dso_local i32 @Dbl_isone_stickybit(i32, i32, i32) #1

declare dso_local i32 @Dint_isone_lowp2(i32) #1

declare dso_local i32 @Dint_setzero(i32, i32) #1

declare dso_local i64 @Dbl_isnotzero_exponentmantissa(i32, i32) #1

declare dso_local i64 @Is_inexacttrap_enabled(...) #1

declare dso_local i32 @Set_inexactflag(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
