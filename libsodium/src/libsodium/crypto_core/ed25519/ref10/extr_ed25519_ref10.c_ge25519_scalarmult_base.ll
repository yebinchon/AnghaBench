; ModuleID = '/home/carl/AnghaBench/libsodium/src/libsodium/crypto_core/ed25519/ref10/extr_ed25519_ref10.c_ge25519_scalarmult_base.c'
source_filename = "/home/carl/AnghaBench/libsodium/src/libsodium/crypto_core/ed25519/ref10/extr_ed25519_ref10.c_ge25519_scalarmult_base.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ge25519_scalarmult_base(i32* %0, i8* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca [64 x i8], align 16
  %6 = alloca i8, align 1
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i8* %1, i8** %4, align 8
  store i32 0, i32* %10, align 4
  br label %11

11:                                               ; preds = %43, %2
  %12 = load i32, i32* %10, align 4
  %13 = icmp slt i32 %12, 32
  br i1 %13, label %14, label %46

14:                                               ; preds = %11
  %15 = load i8*, i8** %4, align 8
  %16 = load i32, i32* %10, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds i8, i8* %15, i64 %17
  %19 = load i8, i8* %18, align 1
  %20 = zext i8 %19 to i32
  %21 = ashr i32 %20, 0
  %22 = and i32 %21, 15
  %23 = trunc i32 %22 to i8
  %24 = load i32, i32* %10, align 4
  %25 = mul nsw i32 2, %24
  %26 = add nsw i32 %25, 0
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds [64 x i8], [64 x i8]* %5, i64 0, i64 %27
  store i8 %23, i8* %28, align 1
  %29 = load i8*, i8** %4, align 8
  %30 = load i32, i32* %10, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i8, i8* %29, i64 %31
  %33 = load i8, i8* %32, align 1
  %34 = zext i8 %33 to i32
  %35 = ashr i32 %34, 4
  %36 = and i32 %35, 15
  %37 = trunc i32 %36 to i8
  %38 = load i32, i32* %10, align 4
  %39 = mul nsw i32 2, %38
  %40 = add nsw i32 %39, 1
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds [64 x i8], [64 x i8]* %5, i64 0, i64 %41
  store i8 %37, i8* %42, align 1
  br label %43

43:                                               ; preds = %14
  %44 = load i32, i32* %10, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %10, align 4
  br label %11

46:                                               ; preds = %11
  store i8 0, i8* %6, align 1
  store i32 0, i32* %10, align 4
  br label %47

47:                                               ; preds = %81, %46
  %48 = load i32, i32* %10, align 4
  %49 = icmp slt i32 %48, 63
  br i1 %49, label %50, label %84

50:                                               ; preds = %47
  %51 = load i8, i8* %6, align 1
  %52 = sext i8 %51 to i32
  %53 = load i32, i32* %10, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds [64 x i8], [64 x i8]* %5, i64 0, i64 %54
  %56 = load i8, i8* %55, align 1
  %57 = sext i8 %56 to i32
  %58 = add nsw i32 %57, %52
  %59 = trunc i32 %58 to i8
  store i8 %59, i8* %55, align 1
  %60 = load i32, i32* %10, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds [64 x i8], [64 x i8]* %5, i64 0, i64 %61
  %63 = load i8, i8* %62, align 1
  %64 = sext i8 %63 to i32
  %65 = add nsw i32 %64, 8
  %66 = trunc i32 %65 to i8
  store i8 %66, i8* %6, align 1
  %67 = load i8, i8* %6, align 1
  %68 = sext i8 %67 to i32
  %69 = ashr i32 %68, 4
  %70 = trunc i32 %69 to i8
  store i8 %70, i8* %6, align 1
  %71 = load i8, i8* %6, align 1
  %72 = sext i8 %71 to i32
  %73 = mul nsw i32 %72, 16
  %74 = load i32, i32* %10, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds [64 x i8], [64 x i8]* %5, i64 0, i64 %75
  %77 = load i8, i8* %76, align 1
  %78 = sext i8 %77 to i32
  %79 = sub nsw i32 %78, %73
  %80 = trunc i32 %79 to i8
  store i8 %80, i8* %76, align 1
  br label %81

81:                                               ; preds = %50
  %82 = load i32, i32* %10, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %10, align 4
  br label %47

84:                                               ; preds = %47
  %85 = load i8, i8* %6, align 1
  %86 = sext i8 %85 to i32
  %87 = getelementptr inbounds [64 x i8], [64 x i8]* %5, i64 0, i64 63
  %88 = load i8, i8* %87, align 1
  %89 = sext i8 %88 to i32
  %90 = add nsw i32 %89, %86
  %91 = trunc i32 %90 to i8
  store i8 %91, i8* %87, align 1
  %92 = load i32*, i32** %3, align 8
  %93 = call i32 @ge25519_p3_0(i32* %92)
  store i32 1, i32* %10, align 4
  br label %94

94:                                               ; preds = %109, %84
  %95 = load i32, i32* %10, align 4
  %96 = icmp slt i32 %95, 64
  br i1 %96, label %97, label %112

97:                                               ; preds = %94
  %98 = load i32, i32* %10, align 4
  %99 = sdiv i32 %98, 2
  %100 = load i32, i32* %10, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds [64 x i8], [64 x i8]* %5, i64 0, i64 %101
  %103 = load i8, i8* %102, align 1
  %104 = call i32 @ge25519_cmov8_base(i32* %9, i32 %99, i8 signext %103)
  %105 = load i32*, i32** %3, align 8
  %106 = call i32 @ge25519_madd(i32* %7, i32* %105, i32* %9)
  %107 = load i32*, i32** %3, align 8
  %108 = call i32 @ge25519_p1p1_to_p3(i32* %107, i32* %7)
  br label %109

109:                                              ; preds = %97
  %110 = load i32, i32* %10, align 4
  %111 = add nsw i32 %110, 2
  store i32 %111, i32* %10, align 4
  br label %94

112:                                              ; preds = %94
  %113 = load i32*, i32** %3, align 8
  %114 = call i32 @ge25519_p3_dbl(i32* %7, i32* %113)
  %115 = call i32 @ge25519_p1p1_to_p2(i32* %8, i32* %7)
  %116 = call i32 @ge25519_p2_dbl(i32* %7, i32* %8)
  %117 = call i32 @ge25519_p1p1_to_p2(i32* %8, i32* %7)
  %118 = call i32 @ge25519_p2_dbl(i32* %7, i32* %8)
  %119 = call i32 @ge25519_p1p1_to_p2(i32* %8, i32* %7)
  %120 = call i32 @ge25519_p2_dbl(i32* %7, i32* %8)
  %121 = load i32*, i32** %3, align 8
  %122 = call i32 @ge25519_p1p1_to_p3(i32* %121, i32* %7)
  store i32 0, i32* %10, align 4
  br label %123

123:                                              ; preds = %138, %112
  %124 = load i32, i32* %10, align 4
  %125 = icmp slt i32 %124, 64
  br i1 %125, label %126, label %141

126:                                              ; preds = %123
  %127 = load i32, i32* %10, align 4
  %128 = sdiv i32 %127, 2
  %129 = load i32, i32* %10, align 4
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds [64 x i8], [64 x i8]* %5, i64 0, i64 %130
  %132 = load i8, i8* %131, align 1
  %133 = call i32 @ge25519_cmov8_base(i32* %9, i32 %128, i8 signext %132)
  %134 = load i32*, i32** %3, align 8
  %135 = call i32 @ge25519_madd(i32* %7, i32* %134, i32* %9)
  %136 = load i32*, i32** %3, align 8
  %137 = call i32 @ge25519_p1p1_to_p3(i32* %136, i32* %7)
  br label %138

138:                                              ; preds = %126
  %139 = load i32, i32* %10, align 4
  %140 = add nsw i32 %139, 2
  store i32 %140, i32* %10, align 4
  br label %123

141:                                              ; preds = %123
  ret void
}

declare dso_local i32 @ge25519_p3_0(i32*) #1

declare dso_local i32 @ge25519_cmov8_base(i32*, i32, i8 signext) #1

declare dso_local i32 @ge25519_madd(i32*, i32*, i32*) #1

declare dso_local i32 @ge25519_p1p1_to_p3(i32*, i32*) #1

declare dso_local i32 @ge25519_p3_dbl(i32*, i32*) #1

declare dso_local i32 @ge25519_p1p1_to_p2(i32*, i32*) #1

declare dso_local i32 @ge25519_p2_dbl(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
