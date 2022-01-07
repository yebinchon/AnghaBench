; ModuleID = '/home/carl/AnghaBench/linux/crypto/extr_ecc.c_vli_mod_inv.c'
source_filename = "/home/carl/AnghaBench/linux/crypto/extr_ecc.c_vli_mod_inv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ECC_MAX_DIGITS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vli_mod_inv(i32* %0, i32* %1, i32* %2, i32 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32 %3, i32* %8, align 4
  %17 = load i32, i32* @ECC_MAX_DIGITS, align 4
  %18 = zext i32 %17 to i64
  %19 = call i8* @llvm.stacksave()
  store i8* %19, i8** %9, align 8
  %20 = alloca i32, i64 %18, align 16
  store i64 %18, i64* %10, align 8
  %21 = load i32, i32* @ECC_MAX_DIGITS, align 4
  %22 = zext i32 %21 to i64
  %23 = alloca i32, i64 %22, align 16
  store i64 %22, i64* %11, align 8
  %24 = load i32, i32* @ECC_MAX_DIGITS, align 4
  %25 = zext i32 %24 to i64
  %26 = alloca i32, i64 %25, align 16
  store i64 %25, i64* %12, align 8
  %27 = load i32, i32* @ECC_MAX_DIGITS, align 4
  %28 = zext i32 %27 to i64
  %29 = alloca i32, i64 %28, align 16
  store i64 %28, i64* %13, align 8
  %30 = load i32*, i32** %6, align 8
  %31 = load i32, i32* %8, align 4
  %32 = call i64 @vli_is_zero(i32* %30, i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %4
  %35 = load i32*, i32** %5, align 8
  %36 = load i32, i32* %8, align 4
  %37 = call i32 @vli_clear(i32* %35, i32 %36)
  store i32 1, i32* %16, align 4
  br label %190

38:                                               ; preds = %4
  %39 = load i32*, i32** %6, align 8
  %40 = load i32, i32* %8, align 4
  %41 = call i32 @vli_set(i32* %20, i32* %39, i32 %40)
  %42 = load i32*, i32** %7, align 8
  %43 = load i32, i32* %8, align 4
  %44 = call i32 @vli_set(i32* %23, i32* %42, i32 %43)
  %45 = load i32, i32* %8, align 4
  %46 = call i32 @vli_clear(i32* %26, i32 %45)
  %47 = getelementptr inbounds i32, i32* %26, i64 0
  store i32 1, i32* %47, align 16
  %48 = load i32, i32* %8, align 4
  %49 = call i32 @vli_clear(i32* %29, i32 %48)
  br label %50

50:                                               ; preds = %185, %38
  %51 = load i32, i32* %8, align 4
  %52 = call i32 @vli_cmp(i32* %20, i32* %23, i32 %51)
  store i32 %52, i32* %15, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %186

54:                                               ; preds = %50
  store i32 0, i32* %14, align 4
  %55 = call i64 @EVEN(i32* %20)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %81

57:                                               ; preds = %54
  %58 = load i32, i32* %8, align 4
  %59 = call i32 @vli_rshift1(i32* %20, i32 %58)
  %60 = call i64 @EVEN(i32* %26)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %66, label %62

62:                                               ; preds = %57
  %63 = load i32*, i32** %7, align 8
  %64 = load i32, i32* %8, align 4
  %65 = call i32 @vli_add(i32* %26, i32* %26, i32* %63, i32 %64)
  store i32 %65, i32* %14, align 4
  br label %66

66:                                               ; preds = %62, %57
  %67 = load i32, i32* %8, align 4
  %68 = call i32 @vli_rshift1(i32* %26, i32 %67)
  %69 = load i32, i32* %14, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %80

71:                                               ; preds = %66
  %72 = load i32, i32* %8, align 4
  %73 = sub i32 %72, 1
  %74 = zext i32 %73 to i64
  %75 = getelementptr inbounds i32, i32* %26, i64 %74
  %76 = load i32, i32* %75, align 4
  %77 = sext i32 %76 to i64
  %78 = or i64 %77, -9223372036854775808
  %79 = trunc i64 %78 to i32
  store i32 %79, i32* %75, align 4
  br label %80

80:                                               ; preds = %71, %66
  br label %185

81:                                               ; preds = %54
  %82 = call i64 @EVEN(i32* %23)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %108

84:                                               ; preds = %81
  %85 = load i32, i32* %8, align 4
  %86 = call i32 @vli_rshift1(i32* %23, i32 %85)
  %87 = call i64 @EVEN(i32* %29)
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %93, label %89

89:                                               ; preds = %84
  %90 = load i32*, i32** %7, align 8
  %91 = load i32, i32* %8, align 4
  %92 = call i32 @vli_add(i32* %29, i32* %29, i32* %90, i32 %91)
  store i32 %92, i32* %14, align 4
  br label %93

93:                                               ; preds = %89, %84
  %94 = load i32, i32* %8, align 4
  %95 = call i32 @vli_rshift1(i32* %29, i32 %94)
  %96 = load i32, i32* %14, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %107

98:                                               ; preds = %93
  %99 = load i32, i32* %8, align 4
  %100 = sub i32 %99, 1
  %101 = zext i32 %100 to i64
  %102 = getelementptr inbounds i32, i32* %29, i64 %101
  %103 = load i32, i32* %102, align 4
  %104 = sext i32 %103 to i64
  %105 = or i64 %104, -9223372036854775808
  %106 = trunc i64 %105 to i32
  store i32 %106, i32* %102, align 4
  br label %107

107:                                              ; preds = %98, %93
  br label %184

108:                                              ; preds = %81
  %109 = load i32, i32* %15, align 4
  %110 = icmp sgt i32 %109, 0
  br i1 %110, label %111, label %147

111:                                              ; preds = %108
  %112 = load i32, i32* %8, align 4
  %113 = call i32 @vli_sub(i32* %20, i32* %20, i32* %23, i32 %112)
  %114 = load i32, i32* %8, align 4
  %115 = call i32 @vli_rshift1(i32* %20, i32 %114)
  %116 = load i32, i32* %8, align 4
  %117 = call i32 @vli_cmp(i32* %26, i32* %29, i32 %116)
  %118 = icmp slt i32 %117, 0
  br i1 %118, label %119, label %123

119:                                              ; preds = %111
  %120 = load i32*, i32** %7, align 8
  %121 = load i32, i32* %8, align 4
  %122 = call i32 @vli_add(i32* %26, i32* %26, i32* %120, i32 %121)
  br label %123

123:                                              ; preds = %119, %111
  %124 = load i32, i32* %8, align 4
  %125 = call i32 @vli_sub(i32* %26, i32* %26, i32* %29, i32 %124)
  %126 = call i64 @EVEN(i32* %26)
  %127 = icmp ne i64 %126, 0
  br i1 %127, label %132, label %128

128:                                              ; preds = %123
  %129 = load i32*, i32** %7, align 8
  %130 = load i32, i32* %8, align 4
  %131 = call i32 @vli_add(i32* %26, i32* %26, i32* %129, i32 %130)
  store i32 %131, i32* %14, align 4
  br label %132

132:                                              ; preds = %128, %123
  %133 = load i32, i32* %8, align 4
  %134 = call i32 @vli_rshift1(i32* %26, i32 %133)
  %135 = load i32, i32* %14, align 4
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %146

137:                                              ; preds = %132
  %138 = load i32, i32* %8, align 4
  %139 = sub i32 %138, 1
  %140 = zext i32 %139 to i64
  %141 = getelementptr inbounds i32, i32* %26, i64 %140
  %142 = load i32, i32* %141, align 4
  %143 = sext i32 %142 to i64
  %144 = or i64 %143, -9223372036854775808
  %145 = trunc i64 %144 to i32
  store i32 %145, i32* %141, align 4
  br label %146

146:                                              ; preds = %137, %132
  br label %183

147:                                              ; preds = %108
  %148 = load i32, i32* %8, align 4
  %149 = call i32 @vli_sub(i32* %23, i32* %23, i32* %20, i32 %148)
  %150 = load i32, i32* %8, align 4
  %151 = call i32 @vli_rshift1(i32* %23, i32 %150)
  %152 = load i32, i32* %8, align 4
  %153 = call i32 @vli_cmp(i32* %29, i32* %26, i32 %152)
  %154 = icmp slt i32 %153, 0
  br i1 %154, label %155, label %159

155:                                              ; preds = %147
  %156 = load i32*, i32** %7, align 8
  %157 = load i32, i32* %8, align 4
  %158 = call i32 @vli_add(i32* %29, i32* %29, i32* %156, i32 %157)
  br label %159

159:                                              ; preds = %155, %147
  %160 = load i32, i32* %8, align 4
  %161 = call i32 @vli_sub(i32* %29, i32* %29, i32* %26, i32 %160)
  %162 = call i64 @EVEN(i32* %29)
  %163 = icmp ne i64 %162, 0
  br i1 %163, label %168, label %164

164:                                              ; preds = %159
  %165 = load i32*, i32** %7, align 8
  %166 = load i32, i32* %8, align 4
  %167 = call i32 @vli_add(i32* %29, i32* %29, i32* %165, i32 %166)
  store i32 %167, i32* %14, align 4
  br label %168

168:                                              ; preds = %164, %159
  %169 = load i32, i32* %8, align 4
  %170 = call i32 @vli_rshift1(i32* %29, i32 %169)
  %171 = load i32, i32* %14, align 4
  %172 = icmp ne i32 %171, 0
  br i1 %172, label %173, label %182

173:                                              ; preds = %168
  %174 = load i32, i32* %8, align 4
  %175 = sub i32 %174, 1
  %176 = zext i32 %175 to i64
  %177 = getelementptr inbounds i32, i32* %29, i64 %176
  %178 = load i32, i32* %177, align 4
  %179 = sext i32 %178 to i64
  %180 = or i64 %179, -9223372036854775808
  %181 = trunc i64 %180 to i32
  store i32 %181, i32* %177, align 4
  br label %182

182:                                              ; preds = %173, %168
  br label %183

183:                                              ; preds = %182, %146
  br label %184

184:                                              ; preds = %183, %107
  br label %185

185:                                              ; preds = %184, %80
  br label %50

186:                                              ; preds = %50
  %187 = load i32*, i32** %5, align 8
  %188 = load i32, i32* %8, align 4
  %189 = call i32 @vli_set(i32* %187, i32* %26, i32 %188)
  store i32 0, i32* %16, align 4
  br label %190

190:                                              ; preds = %186, %34
  %191 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %191)
  %192 = load i32, i32* %16, align 4
  switch i32 %192, label %194 [
    i32 0, label %193
    i32 1, label %193
  ]

193:                                              ; preds = %190, %190
  ret void

194:                                              ; preds = %190
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @vli_is_zero(i32*, i32) #2

declare dso_local i32 @vli_clear(i32*, i32) #2

declare dso_local i32 @vli_set(i32*, i32*, i32) #2

declare dso_local i32 @vli_cmp(i32*, i32*, i32) #2

declare dso_local i64 @EVEN(i32*) #2

declare dso_local i32 @vli_rshift1(i32*, i32) #2

declare dso_local i32 @vli_add(i32*, i32*, i32*, i32) #2

declare dso_local i32 @vli_sub(i32*, i32*, i32*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
