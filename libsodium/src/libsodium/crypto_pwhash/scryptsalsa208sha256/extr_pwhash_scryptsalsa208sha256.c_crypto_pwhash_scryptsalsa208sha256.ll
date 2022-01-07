; ModuleID = '/home/carl/AnghaBench/libsodium/src/libsodium/crypto_pwhash/scryptsalsa208sha256/extr_pwhash_scryptsalsa208sha256.c_crypto_pwhash_scryptsalsa208sha256.c'
source_filename = "/home/carl/AnghaBench/libsodium/src/libsodium/crypto_pwhash/scryptsalsa208sha256/extr_pwhash_scryptsalsa208sha256.c_crypto_pwhash_scryptsalsa208sha256.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@crypto_pwhash_scryptsalsa208sha256_PASSWD_MAX = common dso_local global i64 0, align 8
@crypto_pwhash_scryptsalsa208sha256_BYTES_MAX = common dso_local global i64 0, align 8
@EFBIG = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@crypto_pwhash_scryptsalsa208sha256_BYTES_MIN = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@crypto_pwhash_scryptsalsa208sha256_SALTBYTES = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @crypto_pwhash_scryptsalsa208sha256(i8* %0, i64 %1, i8* %2, i64 %3, i8* %4, i64 %5, i64 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store i8* %0, i8** %9, align 8
  store i64 %1, i64* %10, align 8
  store i8* %2, i8** %11, align 8
  store i64 %3, i64* %12, align 8
  store i8* %4, i8** %13, align 8
  store i64 %5, i64* %14, align 8
  store i64 %6, i64* %15, align 8
  %19 = load i8*, i8** %9, align 8
  %20 = load i64, i64* %10, align 8
  %21 = call i32 @memset(i8* %19, i32 0, i64 %20)
  %22 = load i64, i64* %12, align 8
  %23 = load i64, i64* @crypto_pwhash_scryptsalsa208sha256_PASSWD_MAX, align 8
  %24 = icmp ugt i64 %22, %23
  br i1 %24, label %29, label %25

25:                                               ; preds = %7
  %26 = load i64, i64* %10, align 8
  %27 = load i64, i64* @crypto_pwhash_scryptsalsa208sha256_BYTES_MAX, align 8
  %28 = icmp ugt i64 %26, %27
  br i1 %28, label %29, label %31

29:                                               ; preds = %25, %7
  %30 = load i32, i32* @EFBIG, align 4
  store i32 %30, i32* @errno, align 4
  store i32 -1, i32* %8, align 4
  br label %56

31:                                               ; preds = %25
  %32 = load i64, i64* %10, align 8
  %33 = load i64, i64* @crypto_pwhash_scryptsalsa208sha256_BYTES_MIN, align 8
  %34 = icmp ult i64 %32, %33
  br i1 %34, label %40, label %35

35:                                               ; preds = %31
  %36 = load i64, i64* %14, align 8
  %37 = load i64, i64* %15, align 8
  %38 = call i64 @pickparams(i64 %36, i64 %37, i32* %16, i32* %17, i32* %18)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %35, %31
  %41 = load i32, i32* @EINVAL, align 4
  store i32 %41, i32* @errno, align 4
  store i32 -1, i32* %8, align 4
  br label %56

42:                                               ; preds = %35
  %43 = load i8*, i8** %11, align 8
  %44 = bitcast i8* %43 to i32*
  %45 = load i64, i64* %12, align 8
  %46 = load i8*, i8** %13, align 8
  %47 = bitcast i8* %46 to i32*
  %48 = load i32, i32* @crypto_pwhash_scryptsalsa208sha256_SALTBYTES, align 4
  %49 = load i32, i32* %16, align 4
  %50 = shl i32 1, %49
  %51 = load i32, i32* %18, align 4
  %52 = load i32, i32* %17, align 4
  %53 = load i8*, i8** %9, align 8
  %54 = load i64, i64* %10, align 8
  %55 = call i32 @crypto_pwhash_scryptsalsa208sha256_ll(i32* %44, i64 %45, i32* %47, i32 %48, i32 %50, i32 %51, i32 %52, i8* %53, i64 %54)
  store i32 %55, i32* %8, align 4
  br label %56

56:                                               ; preds = %42, %40, %29
  %57 = load i32, i32* %8, align 4
  ret i32 %57
}

declare dso_local i32 @memset(i8*, i32, i64) #1

declare dso_local i64 @pickparams(i64, i64, i32*, i32*, i32*) #1

declare dso_local i32 @crypto_pwhash_scryptsalsa208sha256_ll(i32*, i64, i32*, i32, i32, i32, i32, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
