; ModuleID = '/home/carl/AnghaBench/libsodium/src/libsodium/crypto_core/ed25519/ref10/extr_ed25519_ref10.c_ge25519_elligator2.c'
source_filename = "/home/carl/AnghaBench/libsodium/src/libsodium/crypto_core/ed25519/ref10/extr_ed25519_ref10.c_ge25519_elligator2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@curve25519_A = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32*, i8)* @ge25519_elligator2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ge25519_elligator2(i8* %0, i32* %1, i8 zeroext %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i8, align 1
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i32*, align 8
  %20 = alloca i32*, align 8
  %21 = alloca i32*, align 8
  store i8* %0, i8** %4, align 8
  store i32* %1, i32** %5, align 8
  store i8 %2, i8* %6, align 1
  %22 = load i32*, i32** %9, align 8
  %23 = load i32*, i32** %5, align 8
  %24 = call i32 @fe25519_sq2(i32* %22, i32* %23)
  %25 = load i32*, i32** %9, align 8
  %26 = getelementptr inbounds i32, i32* %25, i64 0
  %27 = load i32, i32* %26, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %26, align 4
  %29 = load i32*, i32** %9, align 8
  %30 = load i32*, i32** %9, align 8
  %31 = call i32 @fe25519_invert(i32* %29, i32* %30)
  %32 = load i32*, i32** %10, align 8
  %33 = load i32*, i32** @curve25519_A, align 8
  %34 = load i32*, i32** %9, align 8
  %35 = call i32 @fe25519_mul(i32* %32, i32* %33, i32* %34)
  %36 = load i32*, i32** %10, align 8
  %37 = load i32*, i32** %10, align 8
  %38 = call i32 @fe25519_neg(i32* %36, i32* %37)
  %39 = load i32*, i32** %11, align 8
  %40 = load i32*, i32** %10, align 8
  %41 = call i32 @fe25519_sq(i32* %39, i32* %40)
  %42 = load i32*, i32** %12, align 8
  %43 = load i32*, i32** %10, align 8
  %44 = load i32*, i32** %11, align 8
  %45 = call i32 @fe25519_mul(i32* %42, i32* %43, i32* %44)
  %46 = load i32*, i32** %7, align 8
  %47 = load i32*, i32** %12, align 8
  %48 = load i32*, i32** %10, align 8
  %49 = call i32 @fe25519_add(i32* %46, i32* %47, i32* %48)
  %50 = load i32*, i32** %11, align 8
  %51 = load i32*, i32** %11, align 8
  %52 = load i32*, i32** @curve25519_A, align 8
  %53 = call i32 @fe25519_mul(i32* %50, i32* %51, i32* %52)
  %54 = load i32*, i32** %7, align 8
  %55 = load i32*, i32** %11, align 8
  %56 = load i32*, i32** %7, align 8
  %57 = call i32 @fe25519_add(i32* %54, i32* %55, i32* %56)
  %58 = load i32*, i32** %7, align 8
  %59 = load i32*, i32** %7, align 8
  %60 = call i32 @chi25519(i32* %58, i32* %59)
  %61 = load i8*, i8** %4, align 8
  %62 = load i32*, i32** %7, align 8
  %63 = call i32 @fe25519_tobytes(i8* %61, i32* %62)
  %64 = load i8*, i8** %4, align 8
  %65 = getelementptr inbounds i8, i8* %64, i64 1
  %66 = load i8, i8* %65, align 1
  %67 = zext i8 %66 to i32
  %68 = and i32 %67, 1
  store i32 %68, i32* %16, align 4
  %69 = load i32*, i32** %8, align 8
  %70 = load i32*, i32** %10, align 8
  %71 = call i32 @fe25519_neg(i32* %69, i32* %70)
  %72 = load i32*, i32** %10, align 8
  %73 = load i32*, i32** %8, align 8
  %74 = load i32, i32* %16, align 4
  %75 = call i32 @fe25519_cmov(i32* %72, i32* %73, i32 %74)
  %76 = load i32*, i32** %11, align 8
  %77 = call i32 @fe25519_0(i32* %76)
  %78 = load i32*, i32** %11, align 8
  %79 = load i32*, i32** @curve25519_A, align 8
  %80 = load i32, i32* %16, align 4
  %81 = call i32 @fe25519_cmov(i32* %78, i32* %79, i32 %80)
  %82 = load i32*, i32** %10, align 8
  %83 = load i32*, i32** %10, align 8
  %84 = load i32*, i32** %11, align 8
  %85 = call i32 @fe25519_sub(i32* %82, i32* %83, i32* %84)
  %86 = load i32*, i32** %17, align 8
  %87 = call i32 @fe25519_1(i32* %86)
  %88 = load i32*, i32** %18, align 8
  %89 = load i32*, i32** %10, align 8
  %90 = load i32*, i32** %17, align 8
  %91 = call i32 @fe25519_add(i32* %88, i32* %89, i32* %90)
  %92 = load i32*, i32** %20, align 8
  %93 = load i32*, i32** %10, align 8
  %94 = load i32*, i32** %17, align 8
  %95 = call i32 @fe25519_sub(i32* %92, i32* %93, i32* %94)
  %96 = load i32*, i32** %19, align 8
  %97 = load i32*, i32** %18, align 8
  %98 = call i32 @fe25519_invert(i32* %96, i32* %97)
  %99 = load i32*, i32** %21, align 8
  %100 = load i32*, i32** %20, align 8
  %101 = load i32*, i32** %19, align 8
  %102 = call i32 @fe25519_mul(i32* %99, i32* %100, i32* %101)
  %103 = load i8*, i8** %4, align 8
  %104 = load i32*, i32** %21, align 8
  %105 = call i32 @fe25519_tobytes(i8* %103, i32* %104)
  %106 = load i8, i8* %6, align 1
  %107 = zext i8 %106 to i32
  %108 = load i8*, i8** %4, align 8
  %109 = getelementptr inbounds i8, i8* %108, i64 31
  %110 = load i8, i8* %109, align 1
  %111 = zext i8 %110 to i32
  %112 = or i32 %111, %107
  %113 = trunc i32 %112 to i8
  store i8 %113, i8* %109, align 1
  %114 = load i8*, i8** %4, align 8
  %115 = call i64 @ge25519_frombytes(i32* %13, i8* %114)
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %119

117:                                              ; preds = %3
  %118 = call i32 (...) @abort() #3
  unreachable

119:                                              ; preds = %3
  %120 = call i32 @ge25519_p3_dbl(i32* %14, i32* %13)
  %121 = call i32 @ge25519_p1p1_to_p2(i32* %15, i32* %14)
  %122 = call i32 @ge25519_p2_dbl(i32* %14, i32* %15)
  %123 = call i32 @ge25519_p1p1_to_p2(i32* %15, i32* %14)
  %124 = call i32 @ge25519_p2_dbl(i32* %14, i32* %15)
  %125 = call i32 @ge25519_p1p1_to_p3(i32* %13, i32* %14)
  %126 = load i8*, i8** %4, align 8
  %127 = call i32 @ge25519_p3_tobytes(i8* %126, i32* %13)
  ret void
}

declare dso_local i32 @fe25519_sq2(i32*, i32*) #1

declare dso_local i32 @fe25519_invert(i32*, i32*) #1

declare dso_local i32 @fe25519_mul(i32*, i32*, i32*) #1

declare dso_local i32 @fe25519_neg(i32*, i32*) #1

declare dso_local i32 @fe25519_sq(i32*, i32*) #1

declare dso_local i32 @fe25519_add(i32*, i32*, i32*) #1

declare dso_local i32 @chi25519(i32*, i32*) #1

declare dso_local i32 @fe25519_tobytes(i8*, i32*) #1

declare dso_local i32 @fe25519_cmov(i32*, i32*, i32) #1

declare dso_local i32 @fe25519_0(i32*) #1

declare dso_local i32 @fe25519_sub(i32*, i32*, i32*) #1

declare dso_local i32 @fe25519_1(i32*) #1

declare dso_local i64 @ge25519_frombytes(i32*, i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @abort(...) #2

declare dso_local i32 @ge25519_p3_dbl(i32*, i32*) #1

declare dso_local i32 @ge25519_p1p1_to_p2(i32*, i32*) #1

declare dso_local i32 @ge25519_p2_dbl(i32*, i32*) #1

declare dso_local i32 @ge25519_p1p1_to_p3(i32*, i32*) #1

declare dso_local i32 @ge25519_p3_tobytes(i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
