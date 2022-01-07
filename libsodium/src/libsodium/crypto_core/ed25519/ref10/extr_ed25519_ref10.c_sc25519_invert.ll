; ModuleID = '/home/carl/AnghaBench/libsodium/src/libsodium/crypto_core/ed25519/ref10/extr_ed25519_ref10.c_sc25519_invert.c'
source_filename = "/home/carl/AnghaBench/libsodium/src/libsodium/crypto_core/ed25519/ref10/extr_ed25519_ref10.c_sc25519_invert.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sc25519_invert(i8* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca [32 x i8], align 16
  %6 = alloca [32 x i8], align 16
  %7 = alloca [32 x i8], align 16
  %8 = alloca [32 x i8], align 16
  %9 = alloca [32 x i8], align 16
  %10 = alloca [32 x i8], align 16
  %11 = alloca [32 x i8], align 16
  %12 = alloca [32 x i8], align 16
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  %13 = getelementptr inbounds [32 x i8], [32 x i8]* %5, i64 0, i64 0
  %14 = load i8*, i8** %4, align 8
  %15 = call i32 @sc25519_sq(i8* %13, i8* %14)
  %16 = getelementptr inbounds [32 x i8], [32 x i8]* %6, i64 0, i64 0
  %17 = getelementptr inbounds [32 x i8], [32 x i8]* %5, i64 0, i64 0
  %18 = call i32 @sc25519_sq(i8* %16, i8* %17)
  %19 = getelementptr inbounds [32 x i8], [32 x i8]* %7, i64 0, i64 0
  %20 = getelementptr inbounds [32 x i8], [32 x i8]* %5, i64 0, i64 0
  %21 = load i8*, i8** %4, align 8
  %22 = call i32 @sc25519_mul(i8* %19, i8* %20, i8* %21)
  %23 = getelementptr inbounds [32 x i8], [32 x i8]* %8, i64 0, i64 0
  %24 = getelementptr inbounds [32 x i8], [32 x i8]* %5, i64 0, i64 0
  %25 = getelementptr inbounds [32 x i8], [32 x i8]* %7, i64 0, i64 0
  %26 = call i32 @sc25519_mul(i8* %23, i8* %24, i8* %25)
  %27 = getelementptr inbounds [32 x i8], [32 x i8]* %9, i64 0, i64 0
  %28 = getelementptr inbounds [32 x i8], [32 x i8]* %5, i64 0, i64 0
  %29 = getelementptr inbounds [32 x i8], [32 x i8]* %8, i64 0, i64 0
  %30 = call i32 @sc25519_mul(i8* %27, i8* %28, i8* %29)
  %31 = getelementptr inbounds [32 x i8], [32 x i8]* %10, i64 0, i64 0
  %32 = getelementptr inbounds [32 x i8], [32 x i8]* %5, i64 0, i64 0
  %33 = getelementptr inbounds [32 x i8], [32 x i8]* %9, i64 0, i64 0
  %34 = call i32 @sc25519_mul(i8* %31, i8* %32, i8* %33)
  %35 = getelementptr inbounds [32 x i8], [32 x i8]* %11, i64 0, i64 0
  %36 = getelementptr inbounds [32 x i8], [32 x i8]* %5, i64 0, i64 0
  %37 = getelementptr inbounds [32 x i8], [32 x i8]* %10, i64 0, i64 0
  %38 = call i32 @sc25519_mul(i8* %35, i8* %36, i8* %37)
  %39 = getelementptr inbounds [32 x i8], [32 x i8]* %12, i64 0, i64 0
  %40 = getelementptr inbounds [32 x i8], [32 x i8]* %6, i64 0, i64 0
  %41 = getelementptr inbounds [32 x i8], [32 x i8]* %11, i64 0, i64 0
  %42 = call i32 @sc25519_mul(i8* %39, i8* %40, i8* %41)
  %43 = load i8*, i8** %3, align 8
  %44 = getelementptr inbounds [32 x i8], [32 x i8]* %12, i64 0, i64 0
  %45 = load i8*, i8** %4, align 8
  %46 = call i32 @sc25519_mul(i8* %43, i8* %44, i8* %45)
  %47 = load i8*, i8** %3, align 8
  %48 = getelementptr inbounds [32 x i8], [32 x i8]* %8, i64 0, i64 0
  %49 = call i32 @sc25519_sqmul(i8* %47, i32 126, i8* %48)
  %50 = load i8*, i8** %3, align 8
  %51 = getelementptr inbounds [32 x i8], [32 x i8]* %7, i64 0, i64 0
  %52 = call i32 @sc25519_sqmul(i8* %50, i32 4, i8* %51)
  %53 = load i8*, i8** %3, align 8
  %54 = getelementptr inbounds [32 x i8], [32 x i8]* %12, i64 0, i64 0
  %55 = call i32 @sc25519_sqmul(i8* %53, i32 5, i8* %54)
  %56 = load i8*, i8** %3, align 8
  %57 = getelementptr inbounds [32 x i8], [32 x i8]* %12, i64 0, i64 0
  %58 = call i32 @sc25519_sqmul(i8* %56, i32 5, i8* %57)
  %59 = load i8*, i8** %3, align 8
  %60 = getelementptr inbounds [32 x i8], [32 x i8]* %10, i64 0, i64 0
  %61 = call i32 @sc25519_sqmul(i8* %59, i32 4, i8* %60)
  %62 = load i8*, i8** %3, align 8
  %63 = getelementptr inbounds [32 x i8], [32 x i8]* %7, i64 0, i64 0
  %64 = call i32 @sc25519_sqmul(i8* %62, i32 2, i8* %63)
  %65 = load i8*, i8** %3, align 8
  %66 = getelementptr inbounds [32 x i8], [32 x i8]* %12, i64 0, i64 0
  %67 = call i32 @sc25519_sqmul(i8* %65, i32 5, i8* %66)
  %68 = load i8*, i8** %3, align 8
  %69 = getelementptr inbounds [32 x i8], [32 x i8]* %8, i64 0, i64 0
  %70 = call i32 @sc25519_sqmul(i8* %68, i32 4, i8* %69)
  %71 = load i8*, i8** %3, align 8
  %72 = getelementptr inbounds [32 x i8], [32 x i8]* %8, i64 0, i64 0
  %73 = call i32 @sc25519_sqmul(i8* %71, i32 6, i8* %72)
  %74 = load i8*, i8** %3, align 8
  %75 = getelementptr inbounds [32 x i8], [32 x i8]* %9, i64 0, i64 0
  %76 = call i32 @sc25519_sqmul(i8* %74, i32 3, i8* %75)
  %77 = load i8*, i8** %3, align 8
  %78 = getelementptr inbounds [32 x i8], [32 x i8]* %12, i64 0, i64 0
  %79 = call i32 @sc25519_sqmul(i8* %77, i32 5, i8* %78)
  %80 = load i8*, i8** %3, align 8
  %81 = getelementptr inbounds [32 x i8], [32 x i8]* %9, i64 0, i64 0
  %82 = call i32 @sc25519_sqmul(i8* %80, i32 5, i8* %81)
  %83 = load i8*, i8** %3, align 8
  %84 = getelementptr inbounds [32 x i8], [32 x i8]* %7, i64 0, i64 0
  %85 = call i32 @sc25519_sqmul(i8* %83, i32 4, i8* %84)
  %86 = load i8*, i8** %3, align 8
  %87 = getelementptr inbounds [32 x i8], [32 x i8]* %11, i64 0, i64 0
  %88 = call i32 @sc25519_sqmul(i8* %86, i32 5, i8* %87)
  %89 = load i8*, i8** %3, align 8
  %90 = getelementptr inbounds [32 x i8], [32 x i8]* %11, i64 0, i64 0
  %91 = call i32 @sc25519_sqmul(i8* %89, i32 6, i8* %90)
  %92 = load i8*, i8** %3, align 8
  %93 = getelementptr inbounds [32 x i8], [32 x i8]* %10, i64 0, i64 0
  %94 = call i32 @sc25519_sqmul(i8* %92, i32 10, i8* %93)
  %95 = load i8*, i8** %3, align 8
  %96 = getelementptr inbounds [32 x i8], [32 x i8]* %7, i64 0, i64 0
  %97 = call i32 @sc25519_sqmul(i8* %95, i32 4, i8* %96)
  %98 = load i8*, i8** %3, align 8
  %99 = getelementptr inbounds [32 x i8], [32 x i8]* %7, i64 0, i64 0
  %100 = call i32 @sc25519_sqmul(i8* %98, i32 5, i8* %99)
  %101 = load i8*, i8** %3, align 8
  %102 = getelementptr inbounds [32 x i8], [32 x i8]* %7, i64 0, i64 0
  %103 = call i32 @sc25519_sqmul(i8* %101, i32 5, i8* %102)
  %104 = load i8*, i8** %3, align 8
  %105 = getelementptr inbounds [32 x i8], [32 x i8]* %10, i64 0, i64 0
  %106 = call i32 @sc25519_sqmul(i8* %104, i32 5, i8* %105)
  %107 = load i8*, i8** %3, align 8
  %108 = getelementptr inbounds [32 x i8], [32 x i8]* %9, i64 0, i64 0
  %109 = call i32 @sc25519_sqmul(i8* %107, i32 4, i8* %108)
  %110 = load i8*, i8** %3, align 8
  %111 = getelementptr inbounds [32 x i8], [32 x i8]* %12, i64 0, i64 0
  %112 = call i32 @sc25519_sqmul(i8* %110, i32 6, i8* %111)
  %113 = load i8*, i8** %3, align 8
  %114 = getelementptr inbounds [32 x i8], [32 x i8]* %11, i64 0, i64 0
  %115 = call i32 @sc25519_sqmul(i8* %113, i32 5, i8* %114)
  %116 = load i8*, i8** %3, align 8
  %117 = getelementptr inbounds [32 x i8], [32 x i8]* %8, i64 0, i64 0
  %118 = call i32 @sc25519_sqmul(i8* %116, i32 3, i8* %117)
  %119 = load i8*, i8** %3, align 8
  %120 = getelementptr inbounds [32 x i8], [32 x i8]* %12, i64 0, i64 0
  %121 = call i32 @sc25519_sqmul(i8* %119, i32 6, i8* %120)
  %122 = load i8*, i8** %3, align 8
  %123 = getelementptr inbounds [32 x i8], [32 x i8]* %8, i64 0, i64 0
  %124 = call i32 @sc25519_sqmul(i8* %122, i32 3, i8* %123)
  %125 = load i8*, i8** %3, align 8
  %126 = getelementptr inbounds [32 x i8], [32 x i8]* %7, i64 0, i64 0
  %127 = call i32 @sc25519_sqmul(i8* %125, i32 3, i8* %126)
  ret void
}

declare dso_local i32 @sc25519_sq(i8*, i8*) #1

declare dso_local i32 @sc25519_mul(i8*, i8*, i8*) #1

declare dso_local i32 @sc25519_sqmul(i8*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
