; ModuleID = '/home/carl/AnghaBench/libsodium/src/libsodium/crypto_aead/chacha20poly1305/sodium/extr_aead_chacha20poly1305.c_crypto_aead_chacha20poly1305_ietf_decrypt_detached.c'
source_filename = "/home/carl/AnghaBench/libsodium/src/libsodium/crypto_aead/chacha20poly1305/sodium/extr_aead_chacha20poly1305.c_crypto_aead_chacha20poly1305_ietf_decrypt_detached.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@crypto_aead_chacha20poly1305_ietf_ABYTES = common dso_local global i32 0, align 4
@_pad0 = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @crypto_aead_chacha20poly1305_ietf_decrypt_detached(i8* %0, i8* %1, i8* %2, i64 %3, i8* %4, i8* %5, i64 %6, i8* %7, i8* %8) #0 {
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i8, align 1
  %21 = alloca [64 x i8], align 16
  %22 = alloca [8 x i8], align 1
  %23 = alloca i8*, align 8
  %24 = alloca i64, align 8
  %25 = alloca i64, align 8
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  store i8* %0, i8** %11, align 8
  store i8* %1, i8** %12, align 8
  store i8* %2, i8** %13, align 8
  store i64 %3, i64* %14, align 8
  store i8* %4, i8** %15, align 8
  store i8* %5, i8** %16, align 8
  store i64 %6, i64* %17, align 8
  store i8* %7, i8** %18, align 8
  store i8* %8, i8** %19, align 8
  %28 = load i32, i32* @crypto_aead_chacha20poly1305_ietf_ABYTES, align 4
  %29 = zext i32 %28 to i64
  %30 = call i8* @llvm.stacksave()
  store i8* %30, i8** %23, align 8
  %31 = alloca i8, i64 %29, align 16
  store i64 %29, i64* %24, align 8
  %32 = load i8*, i8** %12, align 8
  %33 = getelementptr inbounds [64 x i8], [64 x i8]* %21, i64 0, i64 0
  %34 = load i8*, i8** %18, align 8
  %35 = load i8*, i8** %19, align 8
  %36 = call i32 @crypto_stream_chacha20_ietf(i8* %33, i32 64, i8* %34, i8* %35)
  %37 = getelementptr inbounds [64 x i8], [64 x i8]* %21, i64 0, i64 0
  %38 = call i32 @crypto_onetimeauth_poly1305_init(i8* %20, i8* %37)
  %39 = getelementptr inbounds [64 x i8], [64 x i8]* %21, i64 0, i64 0
  %40 = call i32 @sodium_memzero(i8* %39, i32 64)
  %41 = load i8*, i8** %16, align 8
  %42 = load i64, i64* %17, align 8
  %43 = trunc i64 %42 to i32
  %44 = call i32 @crypto_onetimeauth_poly1305_update(i8* %20, i8* %41, i32 %43)
  %45 = load i8*, i8** @_pad0, align 8
  %46 = load i64, i64* %17, align 8
  %47 = sub i64 16, %46
  %48 = and i64 %47, 15
  %49 = trunc i64 %48 to i32
  %50 = call i32 @crypto_onetimeauth_poly1305_update(i8* %20, i8* %45, i32 %49)
  %51 = load i64, i64* %14, align 8
  store i64 %51, i64* %25, align 8
  %52 = load i8*, i8** %13, align 8
  %53 = load i64, i64* %25, align 8
  %54 = trunc i64 %53 to i32
  %55 = call i32 @crypto_onetimeauth_poly1305_update(i8* %20, i8* %52, i32 %54)
  %56 = load i8*, i8** @_pad0, align 8
  %57 = load i64, i64* %25, align 8
  %58 = sub i64 16, %57
  %59 = and i64 %58, 15
  %60 = trunc i64 %59 to i32
  %61 = call i32 @crypto_onetimeauth_poly1305_update(i8* %20, i8* %56, i32 %60)
  %62 = getelementptr inbounds [8 x i8], [8 x i8]* %22, i64 0, i64 0
  %63 = load i64, i64* %17, align 8
  %64 = trunc i64 %63 to i32
  %65 = call i32 @STORE64_LE(i8* %62, i32 %64)
  %66 = getelementptr inbounds [8 x i8], [8 x i8]* %22, i64 0, i64 0
  %67 = call i32 @crypto_onetimeauth_poly1305_update(i8* %20, i8* %66, i32 8)
  %68 = getelementptr inbounds [8 x i8], [8 x i8]* %22, i64 0, i64 0
  %69 = load i64, i64* %25, align 8
  %70 = trunc i64 %69 to i32
  %71 = call i32 @STORE64_LE(i8* %68, i32 %70)
  %72 = getelementptr inbounds [8 x i8], [8 x i8]* %22, i64 0, i64 0
  %73 = call i32 @crypto_onetimeauth_poly1305_update(i8* %20, i8* %72, i32 8)
  %74 = call i32 @crypto_onetimeauth_poly1305_final(i8* %20, i8* %31)
  %75 = call i32 @sodium_memzero(i8* %20, i32 1)
  %76 = icmp eq i64 %29, 16
  %77 = zext i1 %76 to i32
  %78 = call i32 @COMPILER_ASSERT(i32 %77)
  %79 = load i8*, i8** %15, align 8
  %80 = call i32 @crypto_verify_16(i8* %31, i8* %79)
  store i32 %80, i32* %26, align 4
  %81 = trunc i64 %29 to i32
  %82 = call i32 @sodium_memzero(i8* %31, i32 %81)
  %83 = load i8*, i8** %11, align 8
  %84 = icmp eq i8* %83, null
  br i1 %84, label %85, label %87

85:                                               ; preds = %9
  %86 = load i32, i32* %26, align 4
  store i32 %86, i32* %10, align 4
  store i32 1, i32* %27, align 4
  br label %101

87:                                               ; preds = %9
  %88 = load i32, i32* %26, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %94

90:                                               ; preds = %87
  %91 = load i8*, i8** %11, align 8
  %92 = load i64, i64* %25, align 8
  %93 = call i32 @memset(i8* %91, i32 0, i64 %92)
  store i32 -1, i32* %10, align 4
  store i32 1, i32* %27, align 4
  br label %101

94:                                               ; preds = %87
  %95 = load i8*, i8** %11, align 8
  %96 = load i8*, i8** %13, align 8
  %97 = load i64, i64* %25, align 8
  %98 = load i8*, i8** %18, align 8
  %99 = load i8*, i8** %19, align 8
  %100 = call i32 @crypto_stream_chacha20_ietf_xor_ic(i8* %95, i8* %96, i64 %97, i8* %98, i32 1, i8* %99)
  store i32 0, i32* %10, align 4
  store i32 1, i32* %27, align 4
  br label %101

101:                                              ; preds = %94, %90, %85
  %102 = load i8*, i8** %23, align 8
  call void @llvm.stackrestore(i8* %102)
  %103 = load i32, i32* %10, align 4
  ret i32 %103
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @crypto_stream_chacha20_ietf(i8*, i32, i8*, i8*) #2

declare dso_local i32 @crypto_onetimeauth_poly1305_init(i8*, i8*) #2

declare dso_local i32 @sodium_memzero(i8*, i32) #2

declare dso_local i32 @crypto_onetimeauth_poly1305_update(i8*, i8*, i32) #2

declare dso_local i32 @STORE64_LE(i8*, i32) #2

declare dso_local i32 @crypto_onetimeauth_poly1305_final(i8*, i8*) #2

declare dso_local i32 @COMPILER_ASSERT(i32) #2

declare dso_local i32 @crypto_verify_16(i8*, i8*) #2

declare dso_local i32 @memset(i8*, i32, i64) #2

declare dso_local i32 @crypto_stream_chacha20_ietf_xor_ic(i8*, i8*, i64, i8*, i32, i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
