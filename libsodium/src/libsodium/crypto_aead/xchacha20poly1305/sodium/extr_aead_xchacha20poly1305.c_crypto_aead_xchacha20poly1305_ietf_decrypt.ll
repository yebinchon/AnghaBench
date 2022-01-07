; ModuleID = '/home/carl/AnghaBench/libsodium/src/libsodium/crypto_aead/xchacha20poly1305/sodium/extr_aead_xchacha20poly1305.c_crypto_aead_xchacha20poly1305_ietf_decrypt.c'
source_filename = "/home/carl/AnghaBench/libsodium/src/libsodium/crypto_aead/xchacha20poly1305/sodium/extr_aead_xchacha20poly1305.c_crypto_aead_xchacha20poly1305_ietf_decrypt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@crypto_aead_xchacha20poly1305_ietf_ABYTES = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @crypto_aead_xchacha20poly1305_ietf_decrypt(i8* %0, i64* %1, i8* %2, i8* %3, i64 %4, i8* %5, i64 %6, i8* %7, i8* %8) #0 {
  %10 = alloca i8*, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i64, align 8
  %20 = alloca i32, align 4
  store i8* %0, i8** %10, align 8
  store i64* %1, i64** %11, align 8
  store i8* %2, i8** %12, align 8
  store i8* %3, i8** %13, align 8
  store i64 %4, i64* %14, align 8
  store i8* %5, i8** %15, align 8
  store i64 %6, i64* %16, align 8
  store i8* %7, i8** %17, align 8
  store i8* %8, i8** %18, align 8
  store i64 0, i64* %19, align 8
  store i32 -1, i32* %20, align 4
  %21 = load i64, i64* %14, align 8
  %22 = load i64, i64* @crypto_aead_xchacha20poly1305_ietf_ABYTES, align 8
  %23 = icmp uge i64 %21, %22
  br i1 %23, label %24, label %42

24:                                               ; preds = %9
  %25 = load i8*, i8** %10, align 8
  %26 = load i8*, i8** %12, align 8
  %27 = load i8*, i8** %13, align 8
  %28 = load i64, i64* %14, align 8
  %29 = load i64, i64* @crypto_aead_xchacha20poly1305_ietf_ABYTES, align 8
  %30 = sub i64 %28, %29
  %31 = load i8*, i8** %13, align 8
  %32 = load i64, i64* %14, align 8
  %33 = getelementptr inbounds i8, i8* %31, i64 %32
  %34 = load i64, i64* @crypto_aead_xchacha20poly1305_ietf_ABYTES, align 8
  %35 = sub i64 0, %34
  %36 = getelementptr inbounds i8, i8* %33, i64 %35
  %37 = load i8*, i8** %15, align 8
  %38 = load i64, i64* %16, align 8
  %39 = load i8*, i8** %17, align 8
  %40 = load i8*, i8** %18, align 8
  %41 = call i32 @crypto_aead_xchacha20poly1305_ietf_decrypt_detached(i8* %25, i8* %26, i8* %27, i64 %30, i8* %36, i8* %37, i64 %38, i8* %39, i8* %40)
  store i32 %41, i32* %20, align 4
  br label %42

42:                                               ; preds = %24, %9
  %43 = load i64*, i64** %11, align 8
  %44 = icmp ne i64* %43, null
  br i1 %44, label %45, label %55

45:                                               ; preds = %42
  %46 = load i32, i32* %20, align 4
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %52

48:                                               ; preds = %45
  %49 = load i64, i64* %14, align 8
  %50 = load i64, i64* @crypto_aead_xchacha20poly1305_ietf_ABYTES, align 8
  %51 = sub i64 %49, %50
  store i64 %51, i64* %19, align 8
  br label %52

52:                                               ; preds = %48, %45
  %53 = load i64, i64* %19, align 8
  %54 = load i64*, i64** %11, align 8
  store i64 %53, i64* %54, align 8
  br label %55

55:                                               ; preds = %52, %42
  %56 = load i32, i32* %20, align 4
  ret i32 %56
}

declare dso_local i32 @crypto_aead_xchacha20poly1305_ietf_decrypt_detached(i8*, i8*, i8*, i64, i8*, i8*, i64, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
