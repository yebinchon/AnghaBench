; ModuleID = '/home/carl/AnghaBench/h2o/deps/picotls/t/extr_picotls.c_test_ecb.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/picotls/t/extr_picotls.c_test_ecb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@test_ecb.key = internal constant [32 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31], align 16
@test_ecb.plaintext = internal constant [16 x i32] [i32 0, i32 17, i32 34, i32 51, i32 68, i32 85, i32 102, i32 119, i32 136, i32 153, i32 170, i32 187, i32 204, i32 221, i32 238, i32 255], align 16
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i8*, i64)* @test_ecb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_ecb(i32* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  store i32* %0, i32** %4, align 8
  store i8* %1, i8** %5, align 8
  store i64 %2, i64* %6, align 8
  %9 = load i64, i64* %6, align 8
  %10 = call i32* @malloc(i64 %9)
  store i32* %10, i32** %7, align 8
  %11 = load i32*, i32** %7, align 8
  %12 = icmp ne i32* %11, null
  %13 = zext i1 %12 to i32
  %14 = call i32 @assert(i32 %13)
  %15 = load i32*, i32** %7, align 8
  %16 = load i64, i64* %6, align 8
  %17 = call i32 @memset(i32* %15, i32 0, i64 %16)
  %18 = load i32*, i32** %4, align 8
  %19 = call i32* @ptls_cipher_new(i32* %18, i32 1, i32* getelementptr inbounds ([32 x i32], [32 x i32]* @test_ecb.key, i64 0, i64 0))
  store i32* %19, i32** %8, align 8
  %20 = load i32*, i32** %8, align 8
  %21 = load i32*, i32** %7, align 8
  %22 = load i64, i64* %6, align 8
  %23 = call i32 @ptls_cipher_encrypt(i32* %20, i32* %21, i32* getelementptr inbounds ([16 x i32], [16 x i32]* @test_ecb.plaintext, i64 0, i64 0), i64 %22)
  %24 = load i32*, i32** %8, align 8
  %25 = call i32 @ptls_cipher_free(i32* %24)
  %26 = load i32*, i32** %7, align 8
  %27 = load i8*, i8** %5, align 8
  %28 = bitcast i8* %27 to i32*
  %29 = load i64, i64* %6, align 8
  %30 = call i64 @memcmp(i32* %26, i32* %28, i64 %29)
  %31 = icmp eq i64 %30, 0
  %32 = zext i1 %31 to i32
  %33 = call i32 @ok(i32 %32)
  %34 = load i32*, i32** %4, align 8
  %35 = call i32* @ptls_cipher_new(i32* %34, i32 0, i32* getelementptr inbounds ([32 x i32], [32 x i32]* @test_ecb.key, i64 0, i64 0))
  store i32* %35, i32** %8, align 8
  %36 = load i32*, i32** %8, align 8
  %37 = load i32*, i32** %7, align 8
  %38 = load i32*, i32** %7, align 8
  %39 = load i64, i64* %6, align 8
  %40 = call i32 @ptls_cipher_encrypt(i32* %36, i32* %37, i32* %38, i64 %39)
  %41 = load i32*, i32** %8, align 8
  %42 = call i32 @ptls_cipher_free(i32* %41)
  %43 = load i32*, i32** %7, align 8
  %44 = load i64, i64* %6, align 8
  %45 = call i64 @memcmp(i32* %43, i32* getelementptr inbounds ([16 x i32], [16 x i32]* @test_ecb.plaintext, i64 0, i64 0), i64 %44)
  %46 = icmp eq i64 %45, 0
  %47 = zext i1 %46 to i32
  %48 = call i32 @ok(i32 %47)
  %49 = load i32*, i32** %7, align 8
  %50 = call i32 @free(i32* %49)
  ret void
}

declare dso_local i32* @malloc(i64) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @memset(i32*, i32, i64) #1

declare dso_local i32* @ptls_cipher_new(i32*, i32, i32*) #1

declare dso_local i32 @ptls_cipher_encrypt(i32*, i32*, i32*, i64) #1

declare dso_local i32 @ptls_cipher_free(i32*) #1

declare dso_local i32 @ok(i32) #1

declare dso_local i64 @memcmp(i32*, i32*, i64) #1

declare dso_local i32 @free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
