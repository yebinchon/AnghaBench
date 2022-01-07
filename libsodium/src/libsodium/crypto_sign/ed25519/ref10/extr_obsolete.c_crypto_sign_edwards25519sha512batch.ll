; ModuleID = '/home/carl/AnghaBench/libsodium/src/libsodium/crypto_sign/ed25519/ref10/extr_obsolete.c_crypto_sign_edwards25519sha512batch.c'
source_filename = "/home/carl/AnghaBench/libsodium/src/libsodium/crypto_sign/ed25519/ref10/extr_obsolete.c_crypto_sign_edwards25519sha512batch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @crypto_sign_edwards25519sha512batch(i8* %0, i64* %1, i8* %2, i64 %3, i8* %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca [64 x i8], align 16
  %13 = alloca [64 x i8], align 16
  %14 = alloca [64 x i8], align 16
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i64* %1, i64** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  store i8* %4, i8** %10, align 8
  %17 = call i32 @crypto_hash_sha512_init(i32* %11)
  %18 = load i8*, i8** %10, align 8
  %19 = getelementptr inbounds i8, i8* %18, i64 32
  %20 = call i32 @crypto_hash_sha512_update(i32* %11, i8* %19, i64 32)
  %21 = load i8*, i8** %8, align 8
  %22 = load i64, i64* %9, align 8
  %23 = call i32 @crypto_hash_sha512_update(i32* %11, i8* %21, i64 %22)
  %24 = getelementptr inbounds [64 x i8], [64 x i8]* %12, i64 0, i64 0
  %25 = call i32 @crypto_hash_sha512_final(i32* %11, i8* %24)
  %26 = load i8*, i8** %10, align 8
  %27 = call i32 @ge25519_scalarmult_base(i32* %15, i8* %26)
  %28 = getelementptr inbounds [64 x i8], [64 x i8]* %14, i64 0, i64 0
  %29 = getelementptr inbounds i8, i8* %28, i64 32
  %30 = call i32 @ge25519_p3_tobytes(i8* %29, i32* %15)
  %31 = getelementptr inbounds [64 x i8], [64 x i8]* %12, i64 0, i64 0
  %32 = call i32 @sc25519_reduce(i8* %31)
  %33 = getelementptr inbounds [64 x i8], [64 x i8]* %12, i64 0, i64 0
  %34 = call i32 @ge25519_scalarmult_base(i32* %16, i8* %33)
  %35 = getelementptr inbounds [64 x i8], [64 x i8]* %14, i64 0, i64 0
  %36 = call i32 @ge25519_p3_tobytes(i8* %35, i32* %16)
  %37 = call i32 @crypto_hash_sha512_init(i32* %11)
  %38 = getelementptr inbounds [64 x i8], [64 x i8]* %14, i64 0, i64 0
  %39 = call i32 @crypto_hash_sha512_update(i32* %11, i8* %38, i64 32)
  %40 = load i8*, i8** %8, align 8
  %41 = load i64, i64* %9, align 8
  %42 = call i32 @crypto_hash_sha512_update(i32* %11, i8* %40, i64 %41)
  %43 = getelementptr inbounds [64 x i8], [64 x i8]* %13, i64 0, i64 0
  %44 = call i32 @crypto_hash_sha512_final(i32* %11, i8* %43)
  %45 = getelementptr inbounds [64 x i8], [64 x i8]* %13, i64 0, i64 0
  %46 = call i32 @sc25519_reduce(i8* %45)
  %47 = getelementptr inbounds [64 x i8], [64 x i8]* %14, i64 0, i64 0
  %48 = getelementptr inbounds i8, i8* %47, i64 32
  %49 = getelementptr inbounds [64 x i8], [64 x i8]* %13, i64 0, i64 0
  %50 = getelementptr inbounds [64 x i8], [64 x i8]* %12, i64 0, i64 0
  %51 = load i8*, i8** %10, align 8
  %52 = call i32 @sc25519_muladd(i8* %48, i8* %49, i8* %50, i8* %51)
  %53 = getelementptr inbounds [64 x i8], [64 x i8]* %13, i64 0, i64 0
  %54 = call i32 @sodium_memzero(i8* %53, i32 64)
  %55 = load i8*, i8** %6, align 8
  %56 = getelementptr inbounds i8, i8* %55, i64 32
  %57 = load i8*, i8** %8, align 8
  %58 = load i64, i64* %9, align 8
  %59 = call i32 @memmove(i8* %56, i8* %57, i64 %58)
  %60 = load i8*, i8** %6, align 8
  %61 = getelementptr inbounds [64 x i8], [64 x i8]* %14, i64 0, i64 0
  %62 = call i32 @memcpy(i8* %60, i8* %61, i32 32)
  %63 = load i8*, i8** %6, align 8
  %64 = getelementptr inbounds i8, i8* %63, i64 32
  %65 = load i64, i64* %9, align 8
  %66 = getelementptr inbounds i8, i8* %64, i64 %65
  %67 = getelementptr inbounds [64 x i8], [64 x i8]* %14, i64 0, i64 0
  %68 = getelementptr inbounds i8, i8* %67, i64 32
  %69 = call i32 @memcpy(i8* %66, i8* %68, i32 32)
  %70 = load i64, i64* %9, align 8
  %71 = add i64 %70, 64
  %72 = load i64*, i64** %7, align 8
  store i64 %71, i64* %72, align 8
  ret i32 0
}

declare dso_local i32 @crypto_hash_sha512_init(i32*) #1

declare dso_local i32 @crypto_hash_sha512_update(i32*, i8*, i64) #1

declare dso_local i32 @crypto_hash_sha512_final(i32*, i8*) #1

declare dso_local i32 @ge25519_scalarmult_base(i32*, i8*) #1

declare dso_local i32 @ge25519_p3_tobytes(i8*, i32*) #1

declare dso_local i32 @sc25519_reduce(i8*) #1

declare dso_local i32 @sc25519_muladd(i8*, i8*, i8*, i8*) #1

declare dso_local i32 @sodium_memzero(i8*, i32) #1

declare dso_local i32 @memmove(i8*, i8*, i64) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
