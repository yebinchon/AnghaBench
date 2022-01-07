; ModuleID = '/home/carl/AnghaBench/linux/arch/parisc/math-emu/extr_fcnvfx.c_sgl_to_sgl_fcnvfx.c'
source_filename = "/home/carl/AnghaBench/linux/arch/parisc/math-emu/extr_fcnvfx.c_sgl_to_sgl_fcnvfx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FALSE = common dso_local global i64 0, align 8
@SGL_BIAS = common dso_local global i32 0, align 4
@SGL_FX_MAX_EXP = common dso_local global i32 0, align 4
@INVALIDEXCEPTION = common dso_local global i32 0, align 4
@NOEXCEPTION = common dso_local global i32 0, align 4
@TRUE = common dso_local global i64 0, align 8
@INEXACTEXCEPTION = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sgl_to_sgl_fcnvfx(i32* %0, i32* %1, i32* %2, i32* %3) #0 {
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
  store i32 %17, i32* %10, align 4
  %18 = load i32, i32* %10, align 4
  %19 = call i32 @Sgl_exponent(i32 %18)
  %20 = load i32, i32* @SGL_BIAS, align 4
  %21 = sub nsw i32 %19, %20
  store i32 %21, i32* %12, align 4
  %22 = load i32, i32* %12, align 4
  %23 = load i32, i32* @SGL_FX_MAX_EXP, align 4
  %24 = icmp sgt i32 %22, %23
  br i1 %24, label %25, label %55

25:                                               ; preds = %4
  %26 = load i32, i32* %12, align 4
  %27 = load i32, i32* @SGL_FX_MAX_EXP, align 4
  %28 = add nsw i32 %27, 1
  %29 = icmp sgt i32 %26, %28
  br i1 %29, label %38, label %30

30:                                               ; preds = %25
  %31 = load i32, i32* %10, align 4
  %32 = call i64 @Sgl_isnotzero_mantissa(i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %38, label %34

34:                                               ; preds = %30
  %35 = load i32, i32* %10, align 4
  %36 = call i64 @Sgl_iszero_sign(i32 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %54

38:                                               ; preds = %34, %30, %25
  %39 = load i32, i32* %10, align 4
  %40 = call i64 @Sgl_iszero_sign(i32 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %38
  store i32 2147483647, i32* %13, align 4
  br label %44

43:                                               ; preds = %38
  store i32 -2147483648, i32* %13, align 4
  br label %44

44:                                               ; preds = %43, %42
  %45 = call i64 (...) @Is_invalidtrap_enabled()
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %44
  %48 = load i32, i32* @INVALIDEXCEPTION, align 4
  store i32 %48, i32* %5, align 4
  br label %188

49:                                               ; preds = %44
  %50 = call i32 (...) @Set_invalidflag()
  %51 = load i32, i32* %13, align 4
  %52 = load i32*, i32** %8, align 8
  store i32 %51, i32* %52, align 4
  %53 = load i32, i32* @NOEXCEPTION, align 4
  store i32 %53, i32* %5, align 4
  br label %188

54:                                               ; preds = %34
  br label %55

55:                                               ; preds = %54, %4
  %56 = load i32, i32* %12, align 4
  %57 = icmp sge i32 %56, 0
  br i1 %57, label %58, label %128

58:                                               ; preds = %55
  %59 = load i32, i32* %10, align 4
  store i32 %59, i32* %11, align 4
  %60 = load i32, i32* %11, align 4
  %61 = call i32 @Sgl_clear_signexponent_set_hidden(i32 %60)
  %62 = load i32, i32* %11, align 4
  %63 = load i32, i32* %12, align 4
  %64 = call i32 @Int_from_sgl_mantissa(i32 %62, i32 %63)
  %65 = load i32, i32* %10, align 4
  %66 = call i64 @Sgl_isone_sign(i32 %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %72

68:                                               ; preds = %58
  %69 = load i32, i32* %11, align 4
  %70 = call i32 @Sgl_all(i32 %69)
  %71 = sub nsw i32 0, %70
  store i32 %71, i32* %13, align 4
  br label %75

72:                                               ; preds = %58
  %73 = load i32, i32* %11, align 4
  %74 = call i32 @Sgl_all(i32 %73)
  store i32 %74, i32* %13, align 4
  br label %75

75:                                               ; preds = %72, %68
  %76 = load i32, i32* %10, align 4
  %77 = load i32, i32* %12, align 4
  %78 = call i64 @Sgl_isinexact_to_fix(i32 %76, i32 %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %127

80:                                               ; preds = %75
  %81 = load i64, i64* @TRUE, align 8
  store i64 %81, i64* %14, align 8
  %82 = call i32 (...) @Rounding_mode()
  switch i32 %82, label %126 [
    i32 128, label %83
    i32 130, label %91
    i32 129, label %99
  ]

83:                                               ; preds = %80
  %84 = load i32, i32* %10, align 4
  %85 = call i64 @Sgl_iszero_sign(i32 %84)
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %90

87:                                               ; preds = %83
  %88 = load i32, i32* %13, align 4
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %13, align 4
  br label %90

90:                                               ; preds = %87, %83
  br label %126

91:                                               ; preds = %80
  %92 = load i32, i32* %10, align 4
  %93 = call i64 @Sgl_isone_sign(i32 %92)
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %98

95:                                               ; preds = %91
  %96 = load i32, i32* %13, align 4
  %97 = add nsw i32 %96, -1
  store i32 %97, i32* %13, align 4
  br label %98

98:                                               ; preds = %95, %91
  br label %126

99:                                               ; preds = %80
  %100 = load i32, i32* %10, align 4
  %101 = load i32, i32* %12, align 4
  %102 = call i32 @Sgl_isone_roundbit(i32 %100, i32 %101)
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %125

104:                                              ; preds = %99
  %105 = load i32, i32* %10, align 4
  %106 = load i32, i32* %12, align 4
  %107 = call i32 @Sgl_isone_stickybit(i32 %105, i32 %106)
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %113, label %109

109:                                              ; preds = %104
  %110 = load i32, i32* %11, align 4
  %111 = call i32 @Sgl_isone_lowmantissa(i32 %110)
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %124

113:                                              ; preds = %109, %104
  %114 = load i32, i32* %10, align 4
  %115 = call i64 @Sgl_iszero_sign(i32 %114)
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %120

117:                                              ; preds = %113
  %118 = load i32, i32* %13, align 4
  %119 = add nsw i32 %118, 1
  store i32 %119, i32* %13, align 4
  br label %123

120:                                              ; preds = %113
  %121 = load i32, i32* %13, align 4
  %122 = add nsw i32 %121, -1
  store i32 %122, i32* %13, align 4
  br label %123

123:                                              ; preds = %120, %117
  br label %124

124:                                              ; preds = %123, %109
  br label %125

125:                                              ; preds = %124, %99
  br label %126

126:                                              ; preds = %125, %80, %98, %90
  br label %127

127:                                              ; preds = %126, %75
  br label %173

128:                                              ; preds = %55
  store i32 0, i32* %13, align 4
  %129 = load i32, i32* %10, align 4
  %130 = call i64 @Sgl_isnotzero_exponentmantissa(i32 %129)
  %131 = icmp ne i64 %130, 0
  br i1 %131, label %132, label %172

132:                                              ; preds = %128
  %133 = load i64, i64* @TRUE, align 8
  store i64 %133, i64* %14, align 8
  %134 = call i32 (...) @Rounding_mode()
  switch i32 %134, label %171 [
    i32 128, label %135
    i32 130, label %143
    i32 129, label %151
  ]

135:                                              ; preds = %132
  %136 = load i32, i32* %10, align 4
  %137 = call i64 @Sgl_iszero_sign(i32 %136)
  %138 = icmp ne i64 %137, 0
  br i1 %138, label %139, label %142

139:                                              ; preds = %135
  %140 = load i32, i32* %13, align 4
  %141 = add nsw i32 %140, 1
  store i32 %141, i32* %13, align 4
  br label %142

142:                                              ; preds = %139, %135
  br label %171

143:                                              ; preds = %132
  %144 = load i32, i32* %10, align 4
  %145 = call i64 @Sgl_isone_sign(i32 %144)
  %146 = icmp ne i64 %145, 0
  br i1 %146, label %147, label %150

147:                                              ; preds = %143
  %148 = load i32, i32* %13, align 4
  %149 = add nsw i32 %148, -1
  store i32 %149, i32* %13, align 4
  br label %150

150:                                              ; preds = %147, %143
  br label %171

151:                                              ; preds = %132
  %152 = load i32, i32* %12, align 4
  %153 = icmp eq i32 %152, -1
  br i1 %153, label %154, label %170

154:                                              ; preds = %151
  %155 = load i32, i32* %10, align 4
  %156 = call i64 @Sgl_isnotzero_mantissa(i32 %155)
  %157 = icmp ne i64 %156, 0
  br i1 %157, label %158, label %169

158:                                              ; preds = %154
  %159 = load i32, i32* %10, align 4
  %160 = call i64 @Sgl_iszero_sign(i32 %159)
  %161 = icmp ne i64 %160, 0
  br i1 %161, label %162, label %165

162:                                              ; preds = %158
  %163 = load i32, i32* %13, align 4
  %164 = add nsw i32 %163, 1
  store i32 %164, i32* %13, align 4
  br label %168

165:                                              ; preds = %158
  %166 = load i32, i32* %13, align 4
  %167 = add nsw i32 %166, -1
  store i32 %167, i32* %13, align 4
  br label %168

168:                                              ; preds = %165, %162
  br label %169

169:                                              ; preds = %168, %154
  br label %170

170:                                              ; preds = %169, %151
  br label %171

171:                                              ; preds = %170, %132, %150, %142
  br label %172

172:                                              ; preds = %171, %128
  br label %173

173:                                              ; preds = %172, %127
  %174 = load i32, i32* %13, align 4
  %175 = load i32*, i32** %8, align 8
  store i32 %174, i32* %175, align 4
  %176 = load i64, i64* %14, align 8
  %177 = icmp ne i64 %176, 0
  br i1 %177, label %178, label %186

178:                                              ; preds = %173
  %179 = call i64 (...) @Is_inexacttrap_enabled()
  %180 = icmp ne i64 %179, 0
  br i1 %180, label %181, label %183

181:                                              ; preds = %178
  %182 = load i32, i32* @INEXACTEXCEPTION, align 4
  store i32 %182, i32* %5, align 4
  br label %188

183:                                              ; preds = %178
  %184 = call i32 (...) @Set_inexactflag()
  br label %185

185:                                              ; preds = %183
  br label %186

186:                                              ; preds = %185, %173
  %187 = load i32, i32* @NOEXCEPTION, align 4
  store i32 %187, i32* %5, align 4
  br label %188

188:                                              ; preds = %186, %181, %49, %47
  %189 = load i32, i32* %5, align 4
  ret i32 %189
}

declare dso_local i32 @Sgl_exponent(i32) #1

declare dso_local i64 @Sgl_isnotzero_mantissa(i32) #1

declare dso_local i64 @Sgl_iszero_sign(i32) #1

declare dso_local i64 @Is_invalidtrap_enabled(...) #1

declare dso_local i32 @Set_invalidflag(...) #1

declare dso_local i32 @Sgl_clear_signexponent_set_hidden(i32) #1

declare dso_local i32 @Int_from_sgl_mantissa(i32, i32) #1

declare dso_local i64 @Sgl_isone_sign(i32) #1

declare dso_local i32 @Sgl_all(i32) #1

declare dso_local i64 @Sgl_isinexact_to_fix(i32, i32) #1

declare dso_local i32 @Rounding_mode(...) #1

declare dso_local i32 @Sgl_isone_roundbit(i32, i32) #1

declare dso_local i32 @Sgl_isone_stickybit(i32, i32) #1

declare dso_local i32 @Sgl_isone_lowmantissa(i32) #1

declare dso_local i64 @Sgl_isnotzero_exponentmantissa(i32) #1

declare dso_local i64 @Is_inexacttrap_enabled(...) #1

declare dso_local i32 @Set_inexactflag(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
