; ModuleID = '/home/carl/AnghaBench/libsodium/src/libsodium/crypto_pwhash/scryptsalsa208sha256/extr_pwhash_scryptsalsa208sha256.c_crypto_pwhash_scryptsalsa208sha256_str.c'
source_filename = "/home/carl/AnghaBench/libsodium/src/libsodium/crypto_pwhash/scryptsalsa208sha256/extr_pwhash_scryptsalsa208sha256.c_crypto_pwhash_scryptsalsa208sha256_str.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@crypto_pwhash_scryptsalsa208sha256_STRBYTES = common dso_local global i32 0, align 4
@crypto_pwhash_scryptsalsa208sha256_STRSALTBYTES = common dso_local global i32 0, align 4
@crypto_pwhash_scryptsalsa208sha256_STRSETTINGBYTES = common dso_local global i32 0, align 4
@crypto_pwhash_scryptsalsa208sha256_PASSWD_MAX = common dso_local global i64 0, align 8
@EFBIG = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@crypto_pwhash_scryptsalsa208sha256_PASSWD_MIN = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@crypto_pwhash_scryptsalsa208sha256_STRHASHBYTES_ENCODED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @crypto_pwhash_scryptsalsa208sha256_str(i8* %0, i8* %1, i64 %2, i64 %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store i8* %0, i8** %7, align 8
  store i8* %1, i8** %8, align 8
  store i64 %2, i64* %9, align 8
  store i64 %3, i64* %10, align 8
  store i64 %4, i64* %11, align 8
  %20 = load i32, i32* @crypto_pwhash_scryptsalsa208sha256_STRBYTES, align 4
  %21 = zext i32 %20 to i64
  %22 = load i32, i32* @crypto_pwhash_scryptsalsa208sha256_STRSALTBYTES, align 4
  %23 = zext i32 %22 to i64
  %24 = call i8* @llvm.stacksave()
  store i8* %24, i8** %12, align 8
  %25 = alloca i32, i64 %23, align 16
  store i64 %23, i64* %13, align 8
  %26 = load i32, i32* @crypto_pwhash_scryptsalsa208sha256_STRSETTINGBYTES, align 4
  %27 = add i32 %26, 1
  %28 = zext i32 %27 to i64
  %29 = alloca i8, i64 %28, align 16
  store i64 %28, i64* %14, align 8
  %30 = load i8*, i8** %7, align 8
  %31 = load i32, i32* @crypto_pwhash_scryptsalsa208sha256_STRBYTES, align 4
  %32 = call i32 @memset(i8* %30, i32 0, i32 %31)
  %33 = load i64, i64* %9, align 8
  %34 = load i64, i64* @crypto_pwhash_scryptsalsa208sha256_PASSWD_MAX, align 8
  %35 = icmp ugt i64 %33, %34
  br i1 %35, label %36, label %38

36:                                               ; preds = %5
  %37 = load i32, i32* @EFBIG, align 4
  store i32 %37, i32* @errno, align 4
  store i32 -1, i32* %6, align 4
  store i32 1, i32* %19, align 4
  br label %98

38:                                               ; preds = %5
  %39 = load i64, i64* %9, align 8
  %40 = load i64, i64* @crypto_pwhash_scryptsalsa208sha256_PASSWD_MIN, align 8
  %41 = icmp ult i64 %39, %40
  br i1 %41, label %47, label %42

42:                                               ; preds = %38
  %43 = load i64, i64* %10, align 8
  %44 = load i64, i64* %11, align 8
  %45 = call i64 @pickparams(i64 %43, i64 %44, i32* %16, i32* %17, i32* %18)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %42, %38
  %48 = load i32, i32* @EINVAL, align 4
  store i32 %48, i32* @errno, align 4
  store i32 -1, i32* %6, align 4
  store i32 1, i32* %19, align 4
  br label %98

49:                                               ; preds = %42
  %50 = mul nuw i64 4, %23
  %51 = trunc i64 %50 to i32
  %52 = call i32 @randombytes_buf(i32* %25, i32 %51)
  %53 = load i32, i32* %16, align 4
  %54 = load i32, i32* %18, align 4
  %55 = load i32, i32* %17, align 4
  %56 = mul nuw i64 4, %23
  %57 = trunc i64 %56 to i32
  %58 = bitcast i8* %29 to i32*
  %59 = trunc i64 %28 to i32
  %60 = call i32* @escrypt_gensalt_r(i32 %53, i32 %54, i32 %55, i32* %25, i32 %57, i32* %58, i32 %59)
  %61 = icmp eq i32* %60, null
  br i1 %61, label %62, label %64

62:                                               ; preds = %49
  %63 = load i32, i32* @EINVAL, align 4
  store i32 %63, i32* @errno, align 4
  store i32 -1, i32* %6, align 4
  store i32 1, i32* %19, align 4
  br label %98

64:                                               ; preds = %49
  %65 = call i64 @escrypt_init_local(i32* %15)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %64
  store i32 -1, i32* %6, align 4
  store i32 1, i32* %19, align 4
  br label %98

68:                                               ; preds = %64
  %69 = load i8*, i8** %8, align 8
  %70 = bitcast i8* %69 to i32*
  %71 = load i64, i64* %9, align 8
  %72 = bitcast i8* %29 to i32*
  %73 = load i8*, i8** %7, align 8
  %74 = bitcast i8* %73 to i32*
  %75 = load i32, i32* @crypto_pwhash_scryptsalsa208sha256_STRBYTES, align 4
  %76 = call i32* @escrypt_r(i32* %15, i32* %70, i64 %71, i32* %72, i32* %74, i32 %75)
  %77 = icmp eq i32* %76, null
  br i1 %77, label %78, label %81

78:                                               ; preds = %68
  %79 = call i32 @escrypt_free_local(i32* %15)
  %80 = load i32, i32* @EINVAL, align 4
  store i32 %80, i32* @errno, align 4
  store i32 -1, i32* %6, align 4
  store i32 1, i32* %19, align 4
  br label %98

81:                                               ; preds = %68
  %82 = call i32 @escrypt_free_local(i32* %15)
  %83 = load i32, i32* @crypto_pwhash_scryptsalsa208sha256_STRSALTBYTES, align 4
  %84 = call i32 @SETTING_SIZE(i32 %83)
  %85 = load i32, i32* @crypto_pwhash_scryptsalsa208sha256_STRSETTINGBYTES, align 4
  %86 = icmp eq i32 %84, %85
  %87 = zext i1 %86 to i32
  %88 = call i32 @COMPILER_ASSERT(i32 %87)
  %89 = load i32, i32* @crypto_pwhash_scryptsalsa208sha256_STRSETTINGBYTES, align 4
  %90 = add i32 %89, 1
  %91 = load i32, i32* @crypto_pwhash_scryptsalsa208sha256_STRHASHBYTES_ENCODED, align 4
  %92 = add i32 %90, %91
  %93 = add i32 %92, 1
  %94 = load i32, i32* @crypto_pwhash_scryptsalsa208sha256_STRBYTES, align 4
  %95 = icmp eq i32 %93, %94
  %96 = zext i1 %95 to i32
  %97 = call i32 @COMPILER_ASSERT(i32 %96)
  store i32 0, i32* %6, align 4
  store i32 1, i32* %19, align 4
  br label %98

98:                                               ; preds = %81, %78, %67, %62, %47, %36
  %99 = load i8*, i8** %12, align 8
  call void @llvm.stackrestore(i8* %99)
  %100 = load i32, i32* %6, align 4
  ret i32 %100
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @memset(i8*, i32, i32) #2

declare dso_local i64 @pickparams(i64, i64, i32*, i32*, i32*) #2

declare dso_local i32 @randombytes_buf(i32*, i32) #2

declare dso_local i32* @escrypt_gensalt_r(i32, i32, i32, i32*, i32, i32*, i32) #2

declare dso_local i64 @escrypt_init_local(i32*) #2

declare dso_local i32* @escrypt_r(i32*, i32*, i64, i32*, i32*, i32) #2

declare dso_local i32 @escrypt_free_local(i32*) #2

declare dso_local i32 @COMPILER_ASSERT(i32) #2

declare dso_local i32 @SETTING_SIZE(i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
