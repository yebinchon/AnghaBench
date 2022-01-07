; ModuleID = '/home/carl/AnghaBench/linux/arch/parisc/math-emu/extr_frnd.c_sgl_frnd.c'
source_filename = "/home/carl/AnghaBench/linux/arch/parisc/math-emu/extr_frnd.c_sgl_frnd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FALSE = common dso_local global i64 0, align 8
@SGL_INFINITY_EXPONENT = common dso_local global i32 0, align 4
@INVALIDEXCEPTION = common dso_local global i32 0, align 4
@NOEXCEPTION = common dso_local global i32 0, align 4
@SGL_BIAS = common dso_local global i32 0, align 4
@SGL_P = common dso_local global i32 0, align 4
@TRUE = common dso_local global i64 0, align 8
@INEXACTEXCEPTION = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sgl_frnd(i32* %0, i32* %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  store i32* %0, i32** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  %14 = load i64, i64* @FALSE, align 8
  store i64 %14, i64* %13, align 8
  %15 = load i32*, i32** %6, align 8
  %16 = load i32, i32* %15, align 4
  store i32 %16, i32* %10, align 4
  %17 = load i32, i32* %10, align 4
  %18 = call i32 @Sgl_exponent(i32 %17)
  store i32 %18, i32* %12, align 4
  %19 = load i32, i32* @SGL_INFINITY_EXPONENT, align 4
  %20 = icmp eq i32 %18, %19
  br i1 %20, label %21, label %38

21:                                               ; preds = %4
  %22 = load i32, i32* %10, align 4
  %23 = call i64 @Sgl_isone_signaling(i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %34

25:                                               ; preds = %21
  %26 = call i64 (...) @Is_invalidtrap_enabled()
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %25
  %29 = load i32, i32* @INVALIDEXCEPTION, align 4
  store i32 %29, i32* %5, align 4
  br label %187

30:                                               ; preds = %25
  %31 = call i32 (...) @Set_invalidflag()
  %32 = load i32, i32* %10, align 4
  %33 = call i32 @Sgl_set_quiet(i32 %32)
  br label %34

34:                                               ; preds = %30, %21
  %35 = load i32, i32* %10, align 4
  %36 = load i32*, i32** %8, align 8
  store i32 %35, i32* %36, align 4
  %37 = load i32, i32* @NOEXCEPTION, align 4
  store i32 %37, i32* %5, align 4
  br label %187

38:                                               ; preds = %4
  %39 = load i32, i32* @SGL_BIAS, align 4
  %40 = load i32, i32* %12, align 4
  %41 = sub nsw i32 %40, %39
  store i32 %41, i32* %12, align 4
  %42 = load i32, i32* @SGL_P, align 4
  %43 = sub nsw i32 %42, 1
  %44 = icmp sge i32 %41, %43
  br i1 %44, label %45, label %49

45:                                               ; preds = %38
  %46 = load i32, i32* %10, align 4
  %47 = load i32*, i32** %8, align 8
  store i32 %46, i32* %47, align 4
  %48 = load i32, i32* @NOEXCEPTION, align 4
  store i32 %48, i32* %5, align 4
  br label %187

49:                                               ; preds = %38
  %50 = load i32, i32* %12, align 4
  %51 = icmp sge i32 %50, 0
  br i1 %51, label %52, label %129

52:                                               ; preds = %49
  %53 = load i32, i32* %10, align 4
  %54 = call i32 @Sgl_clear_exponent_set_hidden(i32 %53)
  %55 = load i32, i32* %10, align 4
  store i32 %55, i32* %11, align 4
  %56 = load i32, i32* %11, align 4
  %57 = load i32, i32* @SGL_P, align 4
  %58 = sub nsw i32 %57, 1
  %59 = load i32, i32* %12, align 4
  %60 = sub nsw i32 %58, %59
  %61 = call i32 @Sgl_rightshift(i32 %56, i32 %60)
  %62 = load i32, i32* %10, align 4
  %63 = load i32, i32* %12, align 4
  %64 = call i64 @Sgl_isinexact_to_fix(i32 %62, i32 %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %105

66:                                               ; preds = %52
  %67 = load i64, i64* @TRUE, align 8
  store i64 %67, i64* %13, align 8
  %68 = call i32 (...) @Rounding_mode()
  switch i32 %68, label %104 [
    i32 128, label %69
    i32 130, label %77
    i32 129, label %85
  ]

69:                                               ; preds = %66
  %70 = load i32, i32* %10, align 4
  %71 = call i32 @Sgl_iszero_sign(i32 %70)
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %76

73:                                               ; preds = %69
  %74 = load i32, i32* %11, align 4
  %75 = call i32 @Sgl_increment(i32 %74)
  br label %76

76:                                               ; preds = %73, %69
  br label %104

77:                                               ; preds = %66
  %78 = load i32, i32* %10, align 4
  %79 = call i32 @Sgl_isone_sign(i32 %78)
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %84

81:                                               ; preds = %77
  %82 = load i32, i32* %11, align 4
  %83 = call i32 @Sgl_increment(i32 %82)
  br label %84

84:                                               ; preds = %81, %77
  br label %104

85:                                               ; preds = %66
  %86 = load i32, i32* %10, align 4
  %87 = load i32, i32* %12, align 4
  %88 = call i32 @Sgl_isone_roundbit(i32 %86, i32 %87)
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %103

90:                                               ; preds = %85
  %91 = load i32, i32* %10, align 4
  %92 = load i32, i32* %12, align 4
  %93 = call i32 @Sgl_isone_stickybit(i32 %91, i32 %92)
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %99, label %95

95:                                               ; preds = %90
  %96 = load i32, i32* %11, align 4
  %97 = call i32 @Sgl_isone_lowmantissa(i32 %96)
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %102

99:                                               ; preds = %95, %90
  %100 = load i32, i32* %11, align 4
  %101 = call i32 @Sgl_increment(i32 %100)
  br label %102

102:                                              ; preds = %99, %95
  br label %103

103:                                              ; preds = %102, %85
  br label %104

104:                                              ; preds = %103, %66, %84, %76
  br label %105

105:                                              ; preds = %104, %52
  %106 = load i32, i32* %11, align 4
  %107 = load i32, i32* @SGL_P, align 4
  %108 = sub nsw i32 %107, 1
  %109 = load i32, i32* %12, align 4
  %110 = sub nsw i32 %108, %109
  %111 = call i32 @Sgl_leftshift(i32 %106, i32 %110)
  %112 = load i32, i32* %11, align 4
  %113 = call i64 @Sgl_isone_hiddenoverflow(i32 %112)
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %115, label %122

115:                                              ; preds = %105
  %116 = load i32, i32* %11, align 4
  %117 = load i32, i32* %12, align 4
  %118 = load i32, i32* @SGL_BIAS, align 4
  %119 = add nsw i32 %118, 1
  %120 = add nsw i32 %117, %119
  %121 = call i32 @Sgl_set_exponent(i32 %116, i32 %120)
  br label %128

122:                                              ; preds = %105
  %123 = load i32, i32* %11, align 4
  %124 = load i32, i32* %12, align 4
  %125 = load i32, i32* @SGL_BIAS, align 4
  %126 = add nsw i32 %124, %125
  %127 = call i32 @Sgl_set_exponent(i32 %123, i32 %126)
  br label %128

128:                                              ; preds = %122, %115
  br label %172

129:                                              ; preds = %49
  %130 = load i32, i32* %10, align 4
  store i32 %130, i32* %11, align 4
  %131 = load i32, i32* %11, align 4
  %132 = call i32 @Sgl_setzero_exponentmantissa(i32 %131)
  %133 = load i32, i32* %10, align 4
  %134 = call i64 @Sgl_isnotzero_exponentmantissa(i32 %133)
  %135 = icmp ne i64 %134, 0
  br i1 %135, label %136, label %171

136:                                              ; preds = %129
  %137 = load i64, i64* @TRUE, align 8
  store i64 %137, i64* %13, align 8
  %138 = call i32 (...) @Rounding_mode()
  switch i32 %138, label %170 [
    i32 128, label %139
    i32 130, label %148
    i32 129, label %157
  ]

139:                                              ; preds = %136
  %140 = load i32, i32* %10, align 4
  %141 = call i32 @Sgl_iszero_sign(i32 %140)
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %147

143:                                              ; preds = %139
  %144 = load i32, i32* %11, align 4
  %145 = load i32, i32* @SGL_BIAS, align 4
  %146 = call i32 @Sgl_set_exponent(i32 %144, i32 %145)
  br label %147

147:                                              ; preds = %143, %139
  br label %170

148:                                              ; preds = %136
  %149 = load i32, i32* %10, align 4
  %150 = call i32 @Sgl_isone_sign(i32 %149)
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %152, label %156

152:                                              ; preds = %148
  %153 = load i32, i32* %11, align 4
  %154 = load i32, i32* @SGL_BIAS, align 4
  %155 = call i32 @Sgl_set_exponent(i32 %153, i32 %154)
  br label %156

156:                                              ; preds = %152, %148
  br label %170

157:                                              ; preds = %136
  %158 = load i32, i32* %12, align 4
  %159 = icmp eq i32 %158, -1
  br i1 %159, label %160, label %169

160:                                              ; preds = %157
  %161 = load i32, i32* %10, align 4
  %162 = call i32 @Sgl_isnotzero_mantissa(i32 %161)
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %164, label %168

164:                                              ; preds = %160
  %165 = load i32, i32* %11, align 4
  %166 = load i32, i32* @SGL_BIAS, align 4
  %167 = call i32 @Sgl_set_exponent(i32 %165, i32 %166)
  br label %168

168:                                              ; preds = %164, %160
  br label %169

169:                                              ; preds = %168, %157
  br label %170

170:                                              ; preds = %169, %136, %156, %147
  br label %171

171:                                              ; preds = %170, %129
  br label %172

172:                                              ; preds = %171, %128
  %173 = load i32, i32* %11, align 4
  %174 = load i32*, i32** %8, align 8
  store i32 %173, i32* %174, align 4
  %175 = load i64, i64* %13, align 8
  %176 = icmp ne i64 %175, 0
  br i1 %176, label %177, label %185

177:                                              ; preds = %172
  %178 = call i64 (...) @Is_inexacttrap_enabled()
  %179 = icmp ne i64 %178, 0
  br i1 %179, label %180, label %182

180:                                              ; preds = %177
  %181 = load i32, i32* @INEXACTEXCEPTION, align 4
  store i32 %181, i32* %5, align 4
  br label %187

182:                                              ; preds = %177
  %183 = call i32 (...) @Set_inexactflag()
  br label %184

184:                                              ; preds = %182
  br label %185

185:                                              ; preds = %184, %172
  %186 = load i32, i32* @NOEXCEPTION, align 4
  store i32 %186, i32* %5, align 4
  br label %187

187:                                              ; preds = %185, %180, %45, %34, %28
  %188 = load i32, i32* %5, align 4
  ret i32 %188
}

declare dso_local i32 @Sgl_exponent(i32) #1

declare dso_local i64 @Sgl_isone_signaling(i32) #1

declare dso_local i64 @Is_invalidtrap_enabled(...) #1

declare dso_local i32 @Set_invalidflag(...) #1

declare dso_local i32 @Sgl_set_quiet(i32) #1

declare dso_local i32 @Sgl_clear_exponent_set_hidden(i32) #1

declare dso_local i32 @Sgl_rightshift(i32, i32) #1

declare dso_local i64 @Sgl_isinexact_to_fix(i32, i32) #1

declare dso_local i32 @Rounding_mode(...) #1

declare dso_local i32 @Sgl_iszero_sign(i32) #1

declare dso_local i32 @Sgl_increment(i32) #1

declare dso_local i32 @Sgl_isone_sign(i32) #1

declare dso_local i32 @Sgl_isone_roundbit(i32, i32) #1

declare dso_local i32 @Sgl_isone_stickybit(i32, i32) #1

declare dso_local i32 @Sgl_isone_lowmantissa(i32) #1

declare dso_local i32 @Sgl_leftshift(i32, i32) #1

declare dso_local i64 @Sgl_isone_hiddenoverflow(i32) #1

declare dso_local i32 @Sgl_set_exponent(i32, i32) #1

declare dso_local i32 @Sgl_setzero_exponentmantissa(i32) #1

declare dso_local i64 @Sgl_isnotzero_exponentmantissa(i32) #1

declare dso_local i32 @Sgl_isnotzero_mantissa(i32) #1

declare dso_local i64 @Is_inexacttrap_enabled(...) #1

declare dso_local i32 @Set_inexactflag(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
