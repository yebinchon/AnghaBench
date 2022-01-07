; ModuleID = '/home/carl/AnghaBench/linux/crypto/extr_ecc.c_vli_mmod_special2.c'
source_filename = "/home/carl/AnghaBench/linux/crypto/extr_ecc.c_vli_mmod_special2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ECC_MAX_DIGITS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, i32*, i32)* @vli_mmod_special2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vli_mmod_special2(i32* %0, i32* %1, i32* %2, i32 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  %17 = alloca i64, align 8
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32 %3, i32* %8, align 4
  %18 = load i32*, i32** %7, align 8
  %19 = getelementptr inbounds i32, i32* %18, i64 0
  %20 = load i32, i32* %19, align 4
  %21 = mul nsw i32 %20, 2
  store i32 %21, i32* %9, align 4
  %22 = load i32, i32* @ECC_MAX_DIGITS, align 4
  %23 = zext i32 %22 to i64
  %24 = call i8* @llvm.stacksave()
  store i8* %24, i8** %10, align 8
  %25 = alloca i32, i64 %23, align 16
  store i64 %23, i64* %11, align 8
  %26 = load i32, i32* @ECC_MAX_DIGITS, align 4
  %27 = mul nsw i32 %26, 2
  %28 = zext i32 %27 to i64
  %29 = alloca i32, i64 %28, align 16
  store i64 %28, i64* %12, align 8
  %30 = load i32, i32* @ECC_MAX_DIGITS, align 4
  %31 = mul nsw i32 %30, 2
  %32 = zext i32 %31 to i64
  %33 = alloca i32, i64 %32, align 16
  store i64 %32, i64* %13, align 8
  %34 = load i32*, i32** %7, align 8
  %35 = load i32, i32* %8, align 4
  %36 = call i32 @vli_set(i32* %33, i32* %34, i32 %35)
  %37 = load i32, i32* %8, align 4
  %38 = zext i32 %37 to i64
  %39 = getelementptr inbounds i32, i32* %33, i64 %38
  %40 = load i32, i32* %8, align 4
  %41 = call i32 @vli_clear(i32* %39, i32 %40)
  %42 = load i32*, i32** %6, align 8
  %43 = load i32, i32* %8, align 4
  %44 = call i32 @vli_set(i32* %29, i32* %42, i32 %43)
  %45 = load i32*, i32** %6, align 8
  %46 = load i32, i32* %8, align 4
  %47 = zext i32 %46 to i64
  %48 = getelementptr inbounds i32, i32* %45, i64 %47
  %49 = load i32, i32* %8, align 4
  %50 = call i32 @vli_set(i32* %25, i32* %48, i32 %49)
  %51 = load i32, i32* %8, align 4
  %52 = zext i32 %51 to i64
  %53 = getelementptr inbounds i32, i32* %29, i64 %52
  %54 = load i32, i32* %8, align 4
  %55 = call i32 @vli_clear(i32* %53, i32 %54)
  %56 = load i32, i32* %8, align 4
  %57 = call i32 @vli_is_negative(i32* %29, i32 %56)
  store i32 %57, i32* %14, align 4
  %58 = load i32, i32* %14, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %69

60:                                               ; preds = %4
  %61 = load i32, i32* %8, align 4
  %62 = sub i32 %61, 1
  %63 = zext i32 %62 to i64
  %64 = getelementptr inbounds i32, i32* %29, i64 %63
  %65 = load i32, i32* %64, align 4
  %66 = sext i32 %65 to i64
  %67 = and i64 %66, 9223372036854775807
  %68 = trunc i64 %67 to i32
  store i32 %68, i32* %64, align 4
  br label %69

69:                                               ; preds = %60, %4
  store i32 1, i32* %15, align 4
  br label %70

70:                                               ; preds = %136, %69
  %71 = load i32, i32* %14, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %78, label %73

73:                                               ; preds = %70
  %74 = load i32, i32* %8, align 4
  %75 = call i32 @vli_is_zero(i32* %25, i32 %74)
  %76 = icmp ne i32 %75, 0
  %77 = xor i1 %76, true
  br label %78

78:                                               ; preds = %73, %70
  %79 = phi i1 [ true, %70 ], [ %77, %73 ]
  br i1 %79, label %80, label %139

80:                                               ; preds = %78
  %81 = load i32, i32* @ECC_MAX_DIGITS, align 4
  %82 = mul nsw i32 %81, 2
  %83 = zext i32 %82 to i64
  %84 = call i8* @llvm.stacksave()
  store i8* %84, i8** %16, align 8
  %85 = alloca i32, i64 %83, align 16
  store i64 %83, i64* %17, align 8
  %86 = load i32, i32* %9, align 4
  %87 = load i32, i32* %8, align 4
  %88 = call i32 @vli_umult(i32* %85, i32* %25, i32 %86, i32 %87)
  %89 = load i32, i32* %14, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %98

91:                                               ; preds = %80
  %92 = load i32*, i32** %7, align 8
  %93 = getelementptr inbounds i32, i32* %92, i64 0
  %94 = load i32, i32* %93, align 4
  %95 = load i32, i32* %8, align 4
  %96 = mul i32 %95, 2
  %97 = call i32 @vli_uadd(i32* %85, i32* %85, i32 %94, i32 %96)
  br label %98

98:                                               ; preds = %91, %80
  %99 = load i32, i32* %8, align 4
  %100 = zext i32 %99 to i64
  %101 = getelementptr inbounds i32, i32* %85, i64 %100
  %102 = load i32, i32* %8, align 4
  %103 = call i32 @vli_set(i32* %25, i32* %101, i32 %102)
  %104 = load i32, i32* %8, align 4
  %105 = zext i32 %104 to i64
  %106 = getelementptr inbounds i32, i32* %85, i64 %105
  %107 = load i32, i32* %8, align 4
  %108 = call i32 @vli_clear(i32* %106, i32 %107)
  %109 = load i32, i32* %8, align 4
  %110 = call i32 @vli_is_negative(i32* %85, i32 %109)
  store i32 %110, i32* %14, align 4
  %111 = load i32, i32* %14, align 4
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %122

113:                                              ; preds = %98
  %114 = load i32, i32* %8, align 4
  %115 = sub i32 %114, 1
  %116 = zext i32 %115 to i64
  %117 = getelementptr inbounds i32, i32* %85, i64 %116
  %118 = load i32, i32* %117, align 4
  %119 = sext i32 %118 to i64
  %120 = and i64 %119, 9223372036854775807
  %121 = trunc i64 %120 to i32
  store i32 %121, i32* %117, align 4
  br label %122

122:                                              ; preds = %113, %98
  %123 = load i32, i32* %15, align 4
  %124 = and i32 %123, 1
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %130

126:                                              ; preds = %122
  %127 = load i32, i32* %8, align 4
  %128 = mul i32 %127, 2
  %129 = call i32 @vli_sub(i32* %29, i32* %29, i32* %85, i32 %128)
  br label %134

130:                                              ; preds = %122
  %131 = load i32, i32* %8, align 4
  %132 = mul i32 %131, 2
  %133 = call i32 @vli_add(i32* %29, i32* %29, i32* %85, i32 %132)
  br label %134

134:                                              ; preds = %130, %126
  %135 = load i8*, i8** %16, align 8
  call void @llvm.stackrestore(i8* %135)
  br label %136

136:                                              ; preds = %134
  %137 = load i32, i32* %15, align 4
  %138 = add nsw i32 %137, 1
  store i32 %138, i32* %15, align 4
  br label %70

139:                                              ; preds = %78
  br label %140

140:                                              ; preds = %145, %139
  %141 = load i32, i32* %8, align 4
  %142 = mul i32 %141, 2
  %143 = call i32 @vli_is_negative(i32* %29, i32 %142)
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %145, label %149

145:                                              ; preds = %140
  %146 = load i32, i32* %8, align 4
  %147 = mul i32 %146, 2
  %148 = call i32 @vli_add(i32* %29, i32* %29, i32* %33, i32 %147)
  br label %140

149:                                              ; preds = %140
  br label %150

150:                                              ; preds = %155, %149
  %151 = load i32, i32* %8, align 4
  %152 = mul i32 %151, 2
  %153 = call i64 @vli_cmp(i32* %29, i32* %33, i32 %152)
  %154 = icmp sge i64 %153, 0
  br i1 %154, label %155, label %159

155:                                              ; preds = %150
  %156 = load i32, i32* %8, align 4
  %157 = mul i32 %156, 2
  %158 = call i32 @vli_sub(i32* %29, i32* %29, i32* %33, i32 %157)
  br label %150

159:                                              ; preds = %150
  %160 = load i32*, i32** %5, align 8
  %161 = load i32, i32* %8, align 4
  %162 = call i32 @vli_set(i32* %160, i32* %29, i32 %161)
  %163 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %163)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @vli_set(i32*, i32*, i32) #2

declare dso_local i32 @vli_clear(i32*, i32) #2

declare dso_local i32 @vli_is_negative(i32*, i32) #2

declare dso_local i32 @vli_is_zero(i32*, i32) #2

declare dso_local i32 @vli_umult(i32*, i32*, i32, i32) #2

declare dso_local i32 @vli_uadd(i32*, i32*, i32, i32) #2

declare dso_local i32 @vli_sub(i32*, i32*, i32*, i32) #2

declare dso_local i32 @vli_add(i32*, i32*, i32*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

declare dso_local i64 @vli_cmp(i32*, i32*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
