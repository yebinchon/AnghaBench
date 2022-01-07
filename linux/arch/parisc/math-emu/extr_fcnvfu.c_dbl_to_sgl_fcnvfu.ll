; ModuleID = '/home/carl/AnghaBench/linux/arch/parisc/math-emu/extr_fcnvfu.c_dbl_to_sgl_fcnvfu.c'
source_filename = "/home/carl/AnghaBench/linux/arch/parisc/math-emu/extr_fcnvfu.c_dbl_to_sgl_fcnvfu.c"
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
define dso_local i32 @dbl_to_sgl_fcnvfu(i32* %0, i32* %1, i32* %2, i32* %3) #0 {
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
  %17 = load i32, i32* %10, align 4
  %18 = load i32, i32* %11, align 4
  %19 = call i32 @Dbl_copyfromptr(i32* %16, i32 %17, i32 %18)
  %20 = load i32, i32* %10, align 4
  %21 = call i32 @Dbl_exponent(i32 %20)
  %22 = load i32, i32* @DBL_BIAS, align 4
  %23 = sub nsw i32 %21, %22
  store i32 %23, i32* %13, align 4
  %24 = load i32, i32* %13, align 4
  %25 = load i32, i32* @SGL_FX_MAX_EXP, align 4
  %26 = add nsw i32 %25, 1
  %27 = icmp sgt i32 %24, %26
  br i1 %27, label %28, label %44

28:                                               ; preds = %4
  %29 = load i32, i32* %10, align 4
  %30 = call i64 @Dbl_isone_sign(i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %28
  store i32 0, i32* %12, align 4
  br label %34

33:                                               ; preds = %28
  store i32 -1, i32* %12, align 4
  br label %34

34:                                               ; preds = %33, %32
  %35 = call i64 (...) @Is_invalidtrap_enabled()
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %34
  %38 = load i32, i32* @INVALIDEXCEPTION, align 4
  store i32 %38, i32* %5, align 4
  br label %187

39:                                               ; preds = %34
  %40 = call i32 (...) @Set_invalidflag()
  %41 = load i32, i32* %12, align 4
  %42 = load i32*, i32** %8, align 8
  store i32 %41, i32* %42, align 4
  %43 = load i32, i32* @NOEXCEPTION, align 4
  store i32 %43, i32* %5, align 4
  br label %187

44:                                               ; preds = %4
  %45 = load i32, i32* %13, align 4
  %46 = icmp sge i32 %45, 0
  br i1 %46, label %47, label %116

47:                                               ; preds = %44
  %48 = load i32, i32* %10, align 4
  %49 = call i64 @Dbl_isone_sign(i32 %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %61

51:                                               ; preds = %47
  store i32 0, i32* %12, align 4
  %52 = call i64 (...) @Is_invalidtrap_enabled()
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %51
  %55 = load i32, i32* @INVALIDEXCEPTION, align 4
  store i32 %55, i32* %5, align 4
  br label %187

56:                                               ; preds = %51
  %57 = call i32 (...) @Set_invalidflag()
  %58 = load i32, i32* %12, align 4
  %59 = load i32*, i32** %8, align 8
  store i32 %58, i32* %59, align 4
  %60 = load i32, i32* @NOEXCEPTION, align 4
  store i32 %60, i32* %5, align 4
  br label %187

61:                                               ; preds = %47
  %62 = load i32, i32* %10, align 4
  %63 = call i32 @Dbl_clear_signexponent_set_hidden(i32 %62)
  %64 = load i32, i32* %10, align 4
  %65 = load i32, i32* %11, align 4
  %66 = load i32, i32* %13, align 4
  %67 = load i32, i32* %12, align 4
  %68 = call i32 @Suint_from_dbl_mantissa(i32 %64, i32 %65, i32 %66, i32 %67)
  %69 = load i32, i32* %10, align 4
  %70 = load i32, i32* %11, align 4
  %71 = load i32, i32* %13, align 4
  %72 = call i64 @Dbl_isinexact_to_unsigned(i32 %69, i32 %70, i32 %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %115

74:                                               ; preds = %61
  %75 = load i64, i64* @TRUE, align 8
  store i64 %75, i64* %14, align 8
  %76 = call i32 (...) @Rounding_mode()
  switch i32 %76, label %101 [
    i32 128, label %77
    i32 130, label %80
    i32 129, label %81
  ]

77:                                               ; preds = %74
  %78 = load i32, i32* %12, align 4
  %79 = add i32 %78, 1
  store i32 %79, i32* %12, align 4
  br label %101

80:                                               ; preds = %74
  br label %101

81:                                               ; preds = %74
  %82 = load i32, i32* %10, align 4
  %83 = load i32, i32* %11, align 4
  %84 = load i32, i32* %13, align 4
  %85 = call i32 @Dbl_isone_roundbit(i32 %82, i32 %83, i32 %84)
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %100

87:                                               ; preds = %81
  %88 = load i32, i32* %10, align 4
  %89 = load i32, i32* %11, align 4
  %90 = load i32, i32* %13, align 4
  %91 = call i32 @Dbl_isone_stickybit(i32 %88, i32 %89, i32 %90)
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %97, label %93

93:                                               ; preds = %87
  %94 = load i32, i32* %12, align 4
  %95 = and i32 %94, 1
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %100

97:                                               ; preds = %93, %87
  %98 = load i32, i32* %12, align 4
  %99 = add i32 %98, 1
  store i32 %99, i32* %12, align 4
  br label %100

100:                                              ; preds = %97, %93, %81
  br label %101

101:                                              ; preds = %74, %100, %80, %77
  %102 = load i32, i32* %12, align 4
  %103 = icmp eq i32 %102, 0
  br i1 %103, label %104, label %114

104:                                              ; preds = %101
  store i32 -1, i32* %12, align 4
  %105 = call i64 (...) @Is_invalidtrap_enabled()
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %109

107:                                              ; preds = %104
  %108 = load i32, i32* @INVALIDEXCEPTION, align 4
  store i32 %108, i32* %5, align 4
  br label %187

109:                                              ; preds = %104
  %110 = call i32 (...) @Set_invalidflag()
  %111 = load i32, i32* %12, align 4
  %112 = load i32*, i32** %8, align 8
  store i32 %111, i32* %112, align 4
  %113 = load i32, i32* @NOEXCEPTION, align 4
  store i32 %113, i32* %5, align 4
  br label %187

114:                                              ; preds = %101
  br label %115

115:                                              ; preds = %114, %61
  br label %172

116:                                              ; preds = %44
  store i32 0, i32* %12, align 4
  %117 = load i32, i32* %10, align 4
  %118 = load i32, i32* %11, align 4
  %119 = call i64 @Dbl_isnotzero_exponentmantissa(i32 %117, i32 %118)
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %121, label %171

121:                                              ; preds = %116
  %122 = load i64, i64* @TRUE, align 8
  store i64 %122, i64* %14, align 8
  %123 = call i32 (...) @Rounding_mode()
  switch i32 %123, label %170 [
    i32 128, label %124
    i32 130, label %132
    i32 129, label %145
  ]

124:                                              ; preds = %121
  %125 = load i32, i32* %10, align 4
  %126 = call i32 @Dbl_iszero_sign(i32 %125)
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %131

128:                                              ; preds = %124
  %129 = load i32, i32* %12, align 4
  %130 = add i32 %129, 1
  store i32 %130, i32* %12, align 4
  br label %131

131:                                              ; preds = %128, %124
  br label %170

132:                                              ; preds = %121
  %133 = load i32, i32* %10, align 4
  %134 = call i64 @Dbl_isone_sign(i32 %133)
  %135 = icmp ne i64 %134, 0
  br i1 %135, label %136, label %144

136:                                              ; preds = %132
  store i32 0, i32* %12, align 4
  %137 = call i64 (...) @Is_invalidtrap_enabled()
  %138 = icmp ne i64 %137, 0
  br i1 %138, label %139, label %141

139:                                              ; preds = %136
  %140 = load i32, i32* @INVALIDEXCEPTION, align 4
  store i32 %140, i32* %5, align 4
  br label %187

141:                                              ; preds = %136
  %142 = call i32 (...) @Set_invalidflag()
  %143 = load i64, i64* @FALSE, align 8
  store i64 %143, i64* %14, align 8
  br label %144

144:                                              ; preds = %141, %132
  br label %170

145:                                              ; preds = %121
  %146 = load i32, i32* %13, align 4
  %147 = icmp eq i32 %146, -1
  br i1 %147, label %148, label %169

148:                                              ; preds = %145
  %149 = load i32, i32* %10, align 4
  %150 = load i32, i32* %11, align 4
  %151 = call i32 @Dbl_isnotzero_mantissa(i32 %149, i32 %150)
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %153, label %169

153:                                              ; preds = %148
  %154 = load i32, i32* %10, align 4
  %155 = call i64 @Dbl_isone_sign(i32 %154)
  %156 = icmp ne i64 %155, 0
  br i1 %156, label %157, label %165

157:                                              ; preds = %153
  store i32 0, i32* %12, align 4
  %158 = call i64 (...) @Is_invalidtrap_enabled()
  %159 = icmp ne i64 %158, 0
  br i1 %159, label %160, label %162

160:                                              ; preds = %157
  %161 = load i32, i32* @INVALIDEXCEPTION, align 4
  store i32 %161, i32* %5, align 4
  br label %187

162:                                              ; preds = %157
  %163 = call i32 (...) @Set_invalidflag()
  %164 = load i64, i64* @FALSE, align 8
  store i64 %164, i64* %14, align 8
  br label %168

165:                                              ; preds = %153
  %166 = load i32, i32* %12, align 4
  %167 = add i32 %166, 1
  store i32 %167, i32* %12, align 4
  br label %168

168:                                              ; preds = %165, %162
  br label %169

169:                                              ; preds = %168, %148, %145
  br label %170

170:                                              ; preds = %169, %121, %144, %131
  br label %171

171:                                              ; preds = %170, %116
  br label %172

172:                                              ; preds = %171, %115
  %173 = load i32, i32* %12, align 4
  %174 = load i32*, i32** %8, align 8
  store i32 %173, i32* %174, align 4
  %175 = load i64, i64* %14, align 8
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

187:                                              ; preds = %185, %180, %160, %139, %109, %107, %56, %54, %39, %37
  %188 = load i32, i32* %5, align 4
  ret i32 %188
}

declare dso_local i32 @Dbl_copyfromptr(i32*, i32, i32) #1

declare dso_local i32 @Dbl_exponent(i32) #1

declare dso_local i64 @Dbl_isone_sign(i32) #1

declare dso_local i64 @Is_invalidtrap_enabled(...) #1

declare dso_local i32 @Set_invalidflag(...) #1

declare dso_local i32 @Dbl_clear_signexponent_set_hidden(i32) #1

declare dso_local i32 @Suint_from_dbl_mantissa(i32, i32, i32, i32) #1

declare dso_local i64 @Dbl_isinexact_to_unsigned(i32, i32, i32) #1

declare dso_local i32 @Rounding_mode(...) #1

declare dso_local i32 @Dbl_isone_roundbit(i32, i32, i32) #1

declare dso_local i32 @Dbl_isone_stickybit(i32, i32, i32) #1

declare dso_local i64 @Dbl_isnotzero_exponentmantissa(i32, i32) #1

declare dso_local i32 @Dbl_iszero_sign(i32) #1

declare dso_local i32 @Dbl_isnotzero_mantissa(i32, i32) #1

declare dso_local i64 @Is_inexacttrap_enabled(...) #1

declare dso_local i32 @Set_inexactflag(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
