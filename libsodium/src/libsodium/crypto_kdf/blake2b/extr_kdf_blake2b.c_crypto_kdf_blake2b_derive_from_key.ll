; ModuleID = '/home/carl/AnghaBench/libsodium/src/libsodium/crypto_kdf/blake2b/extr_kdf_blake2b.c_crypto_kdf_blake2b_derive_from_key.c'
source_filename = "/home/carl/AnghaBench/libsodium/src/libsodium/crypto_kdf/blake2b/extr_kdf_blake2b.c_crypto_kdf_blake2b_derive_from_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@crypto_kdf_blake2b_CONTEXTBYTES = common dso_local global i32 0, align 4
@crypto_kdf_blake2b_KEYBYTES = common dso_local global i32 0, align 4
@crypto_generichash_blake2b_PERSONALBYTES = common dso_local global i32 0, align 4
@crypto_generichash_blake2b_SALTBYTES = common dso_local global i32 0, align 4
@crypto_kdf_blake2b_BYTES_MIN = common dso_local global i64 0, align 8
@crypto_kdf_blake2b_BYTES_MAX = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @crypto_kdf_blake2b_derive_from_key(i8* %0, i64 %1, i32 %2, i8* %3, i8* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  store i8* %0, i8** %7, align 8
  store i64 %1, i64* %8, align 8
  store i32 %2, i32* %9, align 4
  store i8* %3, i8** %10, align 8
  store i8* %4, i8** %11, align 8
  %16 = load i32, i32* @crypto_kdf_blake2b_CONTEXTBYTES, align 4
  %17 = zext i32 %16 to i64
  %18 = load i32, i32* @crypto_kdf_blake2b_KEYBYTES, align 4
  %19 = zext i32 %18 to i64
  %20 = load i32, i32* @crypto_generichash_blake2b_PERSONALBYTES, align 4
  %21 = zext i32 %20 to i64
  %22 = call i8* @llvm.stacksave()
  store i8* %22, i8** %12, align 8
  %23 = alloca i8, i64 %21, align 16
  store i64 %21, i64* %13, align 8
  %24 = load i32, i32* @crypto_generichash_blake2b_SALTBYTES, align 4
  %25 = zext i32 %24 to i64
  %26 = alloca i8, i64 %25, align 16
  store i64 %25, i64* %14, align 8
  %27 = load i8*, i8** %10, align 8
  %28 = load i32, i32* @crypto_kdf_blake2b_CONTEXTBYTES, align 4
  %29 = call i32 @memcpy(i8* %23, i8* %27, i32 %28)
  %30 = load i32, i32* @crypto_kdf_blake2b_CONTEXTBYTES, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i8, i8* %23, i64 %31
  %33 = load i32, i32* @crypto_kdf_blake2b_CONTEXTBYTES, align 4
  %34 = sext i32 %33 to i64
  %35 = sub i64 %21, %34
  %36 = trunc i64 %35 to i32
  %37 = call i32 @memset(i8* %32, i32 0, i32 %36)
  %38 = load i32, i32* %9, align 4
  %39 = call i32 @STORE64_LE(i8* %26, i32 %38)
  %40 = getelementptr inbounds i8, i8* %26, i64 8
  %41 = sub i64 %25, 8
  %42 = trunc i64 %41 to i32
  %43 = call i32 @memset(i8* %40, i32 0, i32 %42)
  %44 = load i64, i64* %8, align 8
  %45 = load i64, i64* @crypto_kdf_blake2b_BYTES_MIN, align 8
  %46 = icmp ult i64 %44, %45
  br i1 %46, label %51, label %47

47:                                               ; preds = %5
  %48 = load i64, i64* %8, align 8
  %49 = load i64, i64* @crypto_kdf_blake2b_BYTES_MAX, align 8
  %50 = icmp ugt i64 %48, %49
  br i1 %50, label %51, label %53

51:                                               ; preds = %47, %5
  %52 = load i32, i32* @EINVAL, align 4
  store i32 %52, i32* @errno, align 4
  store i32 -1, i32* %6, align 4
  store i32 1, i32* %15, align 4
  br label %59

53:                                               ; preds = %47
  %54 = load i8*, i8** %7, align 8
  %55 = load i64, i64* %8, align 8
  %56 = load i8*, i8** %11, align 8
  %57 = load i32, i32* @crypto_kdf_blake2b_KEYBYTES, align 4
  %58 = call i32 @crypto_generichash_blake2b_salt_personal(i8* %54, i64 %55, i32* null, i32 0, i8* %56, i32 %57, i8* %26, i8* %23)
  store i32 %58, i32* %6, align 4
  store i32 1, i32* %15, align 4
  br label %59

59:                                               ; preds = %53, %51
  %60 = load i8*, i8** %12, align 8
  call void @llvm.stackrestore(i8* %60)
  %61 = load i32, i32* %6, align 4
  ret i32 %61
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #2

declare dso_local i32 @memset(i8*, i32, i32) #2

declare dso_local i32 @STORE64_LE(i8*, i32) #2

declare dso_local i32 @crypto_generichash_blake2b_salt_personal(i8*, i64, i32*, i32, i8*, i32, i8*, i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
