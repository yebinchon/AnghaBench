; ModuleID = '/home/carl/AnghaBench/h2o/deps/picotls/deps/cifra/src/arm/unacl/extr_scalarmult.c_crypto_scalarmult_curve25519.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/picotls/deps/cifra/src/arm/unacl/extr_scalarmult.c_crypto_scalarmult_curve25519.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i64, i32, i32, i32, i32, i32, i32*, i32*, i32*, i32*, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i8* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @crypto_scalarmult_curve25519(i8* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.TYPE_7__, align 8
  %8 = alloca i8, align 1
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store i8* %2, i8** %6, align 8
  store i8 0, i8* %8, align 1
  br label %13

13:                                               ; preds = %29, %3
  %14 = load i8, i8* %8, align 1
  %15 = zext i8 %14 to i32
  %16 = icmp slt i32 %15, 32
  br i1 %16, label %17, label %32

17:                                               ; preds = %13
  %18 = load i8*, i8** %5, align 8
  %19 = load i8, i8* %8, align 1
  %20 = zext i8 %19 to i64
  %21 = getelementptr inbounds i8, i8* %18, i64 %20
  %22 = load i8, i8* %21, align 1
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 11
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 0
  %25 = load i8*, i8** %24, align 8
  %26 = load i8, i8* %8, align 1
  %27 = zext i8 %26 to i64
  %28 = getelementptr inbounds i8, i8* %25, i64 %27
  store i8 %22, i8* %28, align 1
  br label %29

29:                                               ; preds = %17
  %30 = load i8, i8* %8, align 1
  %31 = add i8 %30, 1
  store i8 %31, i8* %8, align 1
  br label %13

32:                                               ; preds = %13
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 11
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 0
  %35 = load i8*, i8** %34, align 8
  %36 = getelementptr inbounds i8, i8* %35, i64 0
  %37 = load i8, i8* %36, align 1
  %38 = zext i8 %37 to i32
  %39 = and i32 %38, 248
  %40 = trunc i32 %39 to i8
  store i8 %40, i8* %36, align 1
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 11
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 0
  %43 = load i8*, i8** %42, align 8
  %44 = getelementptr inbounds i8, i8* %43, i64 31
  %45 = load i8, i8* %44, align 1
  %46 = zext i8 %45 to i32
  %47 = and i32 %46, 127
  %48 = trunc i32 %47 to i8
  store i8 %48, i8* %44, align 1
  %49 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 11
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 0
  %51 = load i8*, i8** %50, align 8
  %52 = getelementptr inbounds i8, i8* %51, i64 31
  %53 = load i8, i8* %52, align 1
  %54 = zext i8 %53 to i32
  %55 = or i32 %54, 64
  %56 = trunc i32 %55 to i8
  store i8 %56, i8* %52, align 1
  %57 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 4
  %58 = load i8*, i8** %6, align 8
  %59 = call i32 @fe25519_unpack(i32* %57, i8* %58)
  %60 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 5
  %61 = call i32 @fe25519_setone(i32* %60)
  %62 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 6
  %63 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 4
  %64 = call i32 @fe25519_cpy(i32* %62, i32* %63)
  %65 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 2
  %66 = call i32 @fe25519_setone(i32* %65)
  %67 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 3
  %68 = call i32 @fe25519_setzero(i32* %67)
  %69 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 0
  store i32 254, i32* %69, align 8
  %70 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 1
  store i64 0, i64* %70, align 8
  br label %71

71:                                               ; preds = %75, %32
  %72 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = icmp sge i32 %73, 0
  br i1 %74, label %75, label %108

75:                                               ; preds = %71
  %76 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = ashr i32 %77, 3
  %79 = sext i32 %78 to i64
  store i64 %79, i64* %9, align 8
  %80 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = and i32 %81, 7
  %83 = sext i32 %82 to i64
  store i64 %83, i64* %10, align 8
  %84 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 11
  %85 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %84, i32 0, i32 0
  %86 = load i8*, i8** %85, align 8
  %87 = load i64, i64* %9, align 8
  %88 = getelementptr inbounds i8, i8* %86, i64 %87
  %89 = load i8, i8* %88, align 1
  %90 = zext i8 %89 to i32
  %91 = load i64, i64* %10, align 8
  %92 = trunc i64 %91 to i32
  %93 = ashr i32 %90, %92
  %94 = and i32 1, %93
  %95 = sext i32 %94 to i64
  store i64 %95, i64* %11, align 8
  %96 = load i64, i64* %11, align 8
  %97 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 1
  %98 = load i64, i64* %97, align 8
  %99 = xor i64 %96, %98
  store i64 %99, i64* %12, align 8
  %100 = load i64, i64* %11, align 8
  %101 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 1
  store i64 %100, i64* %101, align 8
  %102 = load i64, i64* %12, align 8
  %103 = call i32 @curve25519_cswap(%struct.TYPE_7__* %7, i64 %102)
  %104 = call i32 @curve25519_ladderstep(%struct.TYPE_7__* %7)
  %105 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = add nsw i32 %106, -1
  store i32 %107, i32* %105, align 8
  br label %71

108:                                              ; preds = %71
  %109 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 1
  %110 = load i64, i64* %109, align 8
  %111 = call i32 @curve25519_cswap(%struct.TYPE_7__* %7, i64 %110)
  %112 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 3
  %113 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 3
  %114 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 6
  %115 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 5
  %116 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 4
  %117 = call i32 @fe25519_invert_useProvidedScratchBuffers(i32* %112, i32* %113, i32* %114, i32* %115, i32* %116)
  %118 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 2
  %119 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 2
  %120 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 3
  %121 = call i32 @fe25519_mul(i32* %118, i32* %119, i32* %120)
  %122 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 2
  %123 = call i32 @fe25519_reduceCompletely(i32* %122)
  %124 = load i8*, i8** %4, align 8
  %125 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 2
  %126 = call i32 @fe25519_pack(i8* %124, i32* %125)
  ret i32 0
}

declare dso_local i32 @fe25519_unpack(i32*, i8*) #1

declare dso_local i32 @fe25519_setone(i32*) #1

declare dso_local i32 @fe25519_cpy(i32*, i32*) #1

declare dso_local i32 @fe25519_setzero(i32*) #1

declare dso_local i32 @curve25519_cswap(%struct.TYPE_7__*, i64) #1

declare dso_local i32 @curve25519_ladderstep(%struct.TYPE_7__*) #1

declare dso_local i32 @fe25519_invert_useProvidedScratchBuffers(i32*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @fe25519_mul(i32*, i32*, i32*) #1

declare dso_local i32 @fe25519_reduceCompletely(i32*) #1

declare dso_local i32 @fe25519_pack(i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
