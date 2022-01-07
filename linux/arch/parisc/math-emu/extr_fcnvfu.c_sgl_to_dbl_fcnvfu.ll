; ModuleID = '/home/carl/AnghaBench/linux/arch/parisc/math-emu/extr_fcnvfu.c_sgl_to_dbl_fcnvfu.c'
source_filename = "/home/carl/AnghaBench/linux/arch/parisc/math-emu/extr_fcnvfu.c_sgl_to_dbl_fcnvfu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FALSE = common dso_local global i64 0, align 8
@SGL_BIAS = common dso_local global i32 0, align 4
@DBL_FX_MAX_EXP = common dso_local global i32 0, align 4
@INVALIDEXCEPTION = common dso_local global i32 0, align 4
@NOEXCEPTION = common dso_local global i32 0, align 4
@TRUE = common dso_local global i64 0, align 8
@INEXACTEXCEPTION = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sgl_to_dbl_fcnvfu(i32* %0, i32* %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  store i32* %0, i32** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  %15 = load i64, i64* @FALSE, align 8
  store i64 %15, i64* %14, align 8
  %16 = load i32*, i32** %6, align 8
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* %11, align 4
  %18 = load i32, i32* %11, align 4
  %19 = call i32 @Sgl_exponent(i32 %18)
  %20 = load i32, i32* @SGL_BIAS, align 4
  %21 = sub nsw i32 %19, %20
  store i32 %21, i32* %10, align 4
  %22 = load i32, i32* %10, align 4
  %23 = load i32, i32* @DBL_FX_MAX_EXP, align 4
  %24 = add nsw i32 %23, 1
  %25 = icmp sgt i32 %22, %24
  br i1 %25, label %26, label %44

26:                                               ; preds = %4
  %27 = load i32, i32* %11, align 4
  %28 = call i64 @Sgl_isone_sign(i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %26
  store i32 0, i32* %13, align 4
  store i32 0, i32* %12, align 4
  br label %32

31:                                               ; preds = %26
  store i32 -1, i32* %13, align 4
  store i32 -1, i32* %12, align 4
  br label %32

32:                                               ; preds = %31, %30
  %33 = call i64 (...) @Is_invalidtrap_enabled()
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %32
  %36 = load i32, i32* @INVALIDEXCEPTION, align 4
  store i32 %36, i32* %5, align 4
  br label %180

37:                                               ; preds = %32
  %38 = call i32 (...) @Set_invalidflag()
  %39 = load i32, i32* %12, align 4
  %40 = load i32, i32* %13, align 4
  %41 = load i32*, i32** %8, align 8
  %42 = call i32 @Duint_copytoptr(i32 %39, i32 %40, i32* %41)
  %43 = load i32, i32* @NOEXCEPTION, align 4
  store i32 %43, i32* %5, align 4
  br label %180

44:                                               ; preds = %4
  %45 = load i32, i32* %10, align 4
  %46 = icmp sge i32 %45, 0
  br i1 %46, label %47, label %104

47:                                               ; preds = %44
  %48 = load i32, i32* %11, align 4
  %49 = call i64 @Sgl_isone_sign(i32 %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %63

51:                                               ; preds = %47
  store i32 0, i32* %13, align 4
  store i32 0, i32* %12, align 4
  %52 = call i64 (...) @Is_invalidtrap_enabled()
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %51
  %55 = load i32, i32* @INVALIDEXCEPTION, align 4
  store i32 %55, i32* %5, align 4
  br label %180

56:                                               ; preds = %51
  %57 = call i32 (...) @Set_invalidflag()
  %58 = load i32, i32* %12, align 4
  %59 = load i32, i32* %13, align 4
  %60 = load i32*, i32** %8, align 8
  %61 = call i32 @Duint_copytoptr(i32 %58, i32 %59, i32* %60)
  %62 = load i32, i32* @NOEXCEPTION, align 4
  store i32 %62, i32* %5, align 4
  br label %180

63:                                               ; preds = %47
  %64 = load i32, i32* %11, align 4
  %65 = call i32 @Sgl_clear_signexponent_set_hidden(i32 %64)
  %66 = load i32, i32* %11, align 4
  %67 = load i32, i32* %10, align 4
  %68 = load i32, i32* %12, align 4
  %69 = load i32, i32* %13, align 4
  %70 = call i32 @Duint_from_sgl_mantissa(i32 %66, i32 %67, i32 %68, i32 %69)
  %71 = load i32, i32* %11, align 4
  %72 = load i32, i32* %10, align 4
  %73 = call i64 @Sgl_isinexact_to_unsigned(i32 %71, i32 %72)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %103

75:                                               ; preds = %63
  %76 = load i64, i64* @TRUE, align 8
  store i64 %76, i64* %14, align 8
  %77 = call i32 (...) @Rounding_mode()
  switch i32 %77, label %102 [
    i32 128, label %78
    i32 130, label %82
    i32 129, label %83
  ]

78:                                               ; preds = %75
  %79 = load i32, i32* %12, align 4
  %80 = load i32, i32* %13, align 4
  %81 = call i32 @Duint_increment(i32 %79, i32 %80)
  br label %102

82:                                               ; preds = %75
  br label %102

83:                                               ; preds = %75
  %84 = load i32, i32* %11, align 4
  %85 = load i32, i32* %10, align 4
  %86 = call i32 @Sgl_isone_roundbit(i32 %84, i32 %85)
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %101

88:                                               ; preds = %83
  %89 = load i32, i32* %11, align 4
  %90 = load i32, i32* %10, align 4
  %91 = call i32 @Sgl_isone_stickybit(i32 %89, i32 %90)
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %97, label %93

93:                                               ; preds = %88
  %94 = load i32, i32* %13, align 4
  %95 = call i32 @Duint_isone_lowp2(i32 %94)
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %101

97:                                               ; preds = %93, %88
  %98 = load i32, i32* %12, align 4
  %99 = load i32, i32* %13, align 4
  %100 = call i32 @Duint_increment(i32 %98, i32 %99)
  br label %101

101:                                              ; preds = %97, %93, %83
  br label %102

102:                                              ; preds = %75, %101, %82, %78
  br label %103

103:                                              ; preds = %102, %63
  br label %163

104:                                              ; preds = %44
  %105 = load i32, i32* %12, align 4
  %106 = load i32, i32* %13, align 4
  %107 = call i32 @Duint_setzero(i32 %105, i32 %106)
  %108 = load i32, i32* %11, align 4
  %109 = call i64 @Sgl_isnotzero_exponentmantissa(i32 %108)
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %162

111:                                              ; preds = %104
  %112 = load i64, i64* @TRUE, align 8
  store i64 %112, i64* %14, align 8
  %113 = call i32 (...) @Rounding_mode()
  switch i32 %113, label %161 [
    i32 128, label %114
    i32 130, label %123
    i32 129, label %136
  ]

114:                                              ; preds = %111
  %115 = load i32, i32* %11, align 4
  %116 = call i32 @Sgl_iszero_sign(i32 %115)
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %122

118:                                              ; preds = %114
  %119 = load i32, i32* %12, align 4
  %120 = load i32, i32* %13, align 4
  %121 = call i32 @Duint_increment(i32 %119, i32 %120)
  br label %122

122:                                              ; preds = %118, %114
  br label %161

123:                                              ; preds = %111
  %124 = load i32, i32* %11, align 4
  %125 = call i64 @Sgl_isone_sign(i32 %124)
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %127, label %135

127:                                              ; preds = %123
  store i32 0, i32* %13, align 4
  store i32 0, i32* %12, align 4
  %128 = call i64 (...) @Is_invalidtrap_enabled()
  %129 = icmp ne i64 %128, 0
  br i1 %129, label %130, label %132

130:                                              ; preds = %127
  %131 = load i32, i32* @INVALIDEXCEPTION, align 4
  store i32 %131, i32* %5, align 4
  br label %180

132:                                              ; preds = %127
  %133 = call i32 (...) @Set_invalidflag()
  %134 = load i64, i64* @FALSE, align 8
  store i64 %134, i64* %14, align 8
  br label %135

135:                                              ; preds = %132, %123
  br label %161

136:                                              ; preds = %111
  %137 = load i32, i32* %10, align 4
  %138 = icmp eq i32 %137, -1
  br i1 %138, label %139, label %160

139:                                              ; preds = %136
  %140 = load i32, i32* %11, align 4
  %141 = call i32 @Sgl_isnotzero_mantissa(i32 %140)
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %160

143:                                              ; preds = %139
  %144 = load i32, i32* %11, align 4
  %145 = call i64 @Sgl_isone_sign(i32 %144)
  %146 = icmp ne i64 %145, 0
  br i1 %146, label %147, label %155

147:                                              ; preds = %143
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  %148 = call i64 (...) @Is_invalidtrap_enabled()
  %149 = icmp ne i64 %148, 0
  br i1 %149, label %150, label %152

150:                                              ; preds = %147
  %151 = load i32, i32* @INVALIDEXCEPTION, align 4
  store i32 %151, i32* %5, align 4
  br label %180

152:                                              ; preds = %147
  %153 = call i32 (...) @Set_invalidflag()
  %154 = load i64, i64* @FALSE, align 8
  store i64 %154, i64* %14, align 8
  br label %159

155:                                              ; preds = %143
  %156 = load i32, i32* %12, align 4
  %157 = load i32, i32* %13, align 4
  %158 = call i32 @Duint_increment(i32 %156, i32 %157)
  br label %159

159:                                              ; preds = %155, %152
  br label %160

160:                                              ; preds = %159, %139, %136
  br label %161

161:                                              ; preds = %160, %111, %135, %122
  br label %162

162:                                              ; preds = %161, %104
  br label %163

163:                                              ; preds = %162, %103
  %164 = load i32, i32* %12, align 4
  %165 = load i32, i32* %13, align 4
  %166 = load i32*, i32** %8, align 8
  %167 = call i32 @Duint_copytoptr(i32 %164, i32 %165, i32* %166)
  %168 = load i64, i64* %14, align 8
  %169 = icmp ne i64 %168, 0
  br i1 %169, label %170, label %178

170:                                              ; preds = %163
  %171 = call i64 (...) @Is_inexacttrap_enabled()
  %172 = icmp ne i64 %171, 0
  br i1 %172, label %173, label %175

173:                                              ; preds = %170
  %174 = load i32, i32* @INEXACTEXCEPTION, align 4
  store i32 %174, i32* %5, align 4
  br label %180

175:                                              ; preds = %170
  %176 = call i32 (...) @Set_inexactflag()
  br label %177

177:                                              ; preds = %175
  br label %178

178:                                              ; preds = %177, %163
  %179 = load i32, i32* @NOEXCEPTION, align 4
  store i32 %179, i32* %5, align 4
  br label %180

180:                                              ; preds = %178, %173, %150, %130, %56, %54, %37, %35
  %181 = load i32, i32* %5, align 4
  ret i32 %181
}

declare dso_local i32 @Sgl_exponent(i32) #1

declare dso_local i64 @Sgl_isone_sign(i32) #1

declare dso_local i64 @Is_invalidtrap_enabled(...) #1

declare dso_local i32 @Set_invalidflag(...) #1

declare dso_local i32 @Duint_copytoptr(i32, i32, i32*) #1

declare dso_local i32 @Sgl_clear_signexponent_set_hidden(i32) #1

declare dso_local i32 @Duint_from_sgl_mantissa(i32, i32, i32, i32) #1

declare dso_local i64 @Sgl_isinexact_to_unsigned(i32, i32) #1

declare dso_local i32 @Rounding_mode(...) #1

declare dso_local i32 @Duint_increment(i32, i32) #1

declare dso_local i32 @Sgl_isone_roundbit(i32, i32) #1

declare dso_local i32 @Sgl_isone_stickybit(i32, i32) #1

declare dso_local i32 @Duint_isone_lowp2(i32) #1

declare dso_local i32 @Duint_setzero(i32, i32) #1

declare dso_local i64 @Sgl_isnotzero_exponentmantissa(i32) #1

declare dso_local i32 @Sgl_iszero_sign(i32) #1

declare dso_local i32 @Sgl_isnotzero_mantissa(i32) #1

declare dso_local i64 @Is_inexacttrap_enabled(...) #1

declare dso_local i32 @Set_inexactflag(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
