; ModuleID = '/home/carl/AnghaBench/libsodium/src/libsodium/crypto_pwhash/scryptsalsa208sha256/extr_crypto_scrypt-common.c_crypto_pwhash_scryptsalsa208sha256_ll.c'
source_filename = "/home/carl/AnghaBench/libsodium/src/libsodium/crypto_pwhash/scryptsalsa208sha256/extr_crypto_scrypt-common.c_crypto_pwhash_scryptsalsa208sha256_ll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @crypto_pwhash_scryptsalsa208sha256_ll(i32* %0, i64 %1, i32* %2, i64 %3, i32 %4, i32 %5, i32 %6, i32* %7, i64 %8) #0 {
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32*, align 8
  %19 = alloca i64, align 8
  %20 = alloca i32 (i32*, i32*, i64, i32*, i64, i32, i32, i32, i32*, i64)*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  store i32* %0, i32** %11, align 8
  store i64 %1, i64* %12, align 8
  store i32* %2, i32** %13, align 8
  store i64 %3, i64* %14, align 8
  store i32 %4, i32* %15, align 4
  store i32 %5, i32* %16, align 4
  store i32 %6, i32* %17, align 4
  store i32* %7, i32** %18, align 8
  store i64 %8, i64* %19, align 8
  %23 = call i64 @escrypt_init_local(i32* %21)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %9
  store i32 -1, i32* %10, align 4
  br label %43

26:                                               ; preds = %9
  store i32 (i32*, i32*, i64, i32*, i64, i32, i32, i32, i32*, i64)* @escrypt_kdf_nosse, i32 (i32*, i32*, i64, i32*, i64, i32, i32, i32, i32*, i64)** %20, align 8
  %27 = load i32 (i32*, i32*, i64, i32*, i64, i32, i32, i32, i32*, i64)*, i32 (i32*, i32*, i64, i32*, i64, i32, i32, i32, i32*, i64)** %20, align 8
  %28 = load i32*, i32** %11, align 8
  %29 = load i64, i64* %12, align 8
  %30 = load i32*, i32** %13, align 8
  %31 = load i64, i64* %14, align 8
  %32 = load i32, i32* %15, align 4
  %33 = load i32, i32* %16, align 4
  %34 = load i32, i32* %17, align 4
  %35 = load i32*, i32** %18, align 8
  %36 = load i64, i64* %19, align 8
  %37 = call i32 %27(i32* %21, i32* %28, i64 %29, i32* %30, i64 %31, i32 %32, i32 %33, i32 %34, i32* %35, i64 %36)
  store i32 %37, i32* %22, align 4
  %38 = call i64 @escrypt_free_local(i32* %21)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %26
  store i32 -1, i32* %10, align 4
  br label %43

41:                                               ; preds = %26
  %42 = load i32, i32* %22, align 4
  store i32 %42, i32* %10, align 4
  br label %43

43:                                               ; preds = %41, %40, %25
  %44 = load i32, i32* %10, align 4
  ret i32 %44
}

declare dso_local i64 @escrypt_init_local(i32*) #1

declare dso_local i32 @escrypt_kdf_nosse(i32*, i32*, i64, i32*, i64, i32, i32, i32, i32*, i64) #1

declare dso_local i64 @escrypt_free_local(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
