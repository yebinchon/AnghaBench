; ModuleID = '/home/carl/AnghaBench/linux/crypto/extr_cipher.c_cipher_crypt_unaligned.c'
source_filename = "/home/carl/AnghaBench/linux/crypto/extr_cipher.c_cipher_crypt_unaligned.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crypto_tfm = type { i32 }

@MAX_CIPHER_BLOCKSIZE = common dso_local global i32 0, align 4
@MAX_CIPHER_ALIGNMASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (void (%struct.crypto_tfm*, i32*, i32*)*, %struct.crypto_tfm*, i32*, i32*)* @cipher_crypt_unaligned to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cipher_crypt_unaligned(void (%struct.crypto_tfm*, i32*, i32*)* %0, %struct.crypto_tfm* %1, i32* %2, i32* %3) #0 {
  %5 = alloca void (%struct.crypto_tfm*, i32*, i32*)*, align 8
  %6 = alloca %struct.crypto_tfm*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32*, align 8
  store void (%struct.crypto_tfm*, i32*, i32*)* %0, void (%struct.crypto_tfm*, i32*, i32*)** %5, align 8
  store %struct.crypto_tfm* %1, %struct.crypto_tfm** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32* %3, i32** %8, align 8
  %14 = load %struct.crypto_tfm*, %struct.crypto_tfm** %6, align 8
  %15 = call i64 @crypto_tfm_alg_alignmask(%struct.crypto_tfm* %14)
  store i64 %15, i64* %9, align 8
  %16 = load %struct.crypto_tfm*, %struct.crypto_tfm** %6, align 8
  %17 = call i32 @crypto_tfm_alg_blocksize(%struct.crypto_tfm* %16)
  store i32 %17, i32* %10, align 4
  %18 = load i32, i32* @MAX_CIPHER_BLOCKSIZE, align 4
  %19 = load i32, i32* @MAX_CIPHER_ALIGNMASK, align 4
  %20 = add nsw i32 %18, %19
  %21 = zext i32 %20 to i64
  %22 = call i8* @llvm.stacksave()
  store i8* %22, i8** %11, align 8
  %23 = alloca i32, i64 %21, align 16
  store i64 %21, i64* %12, align 8
  %24 = ptrtoint i32* %23 to i64
  %25 = load i64, i64* %9, align 8
  %26 = add i64 %25, 1
  %27 = call i64 @ALIGN(i64 %24, i64 %26)
  %28 = inttoptr i64 %27 to i32*
  store i32* %28, i32** %13, align 8
  %29 = load i32*, i32** %13, align 8
  %30 = load i32*, i32** %8, align 8
  %31 = load i32, i32* %10, align 4
  %32 = call i32 @memcpy(i32* %29, i32* %30, i32 %31)
  %33 = load void (%struct.crypto_tfm*, i32*, i32*)*, void (%struct.crypto_tfm*, i32*, i32*)** %5, align 8
  %34 = load %struct.crypto_tfm*, %struct.crypto_tfm** %6, align 8
  %35 = load i32*, i32** %13, align 8
  %36 = load i32*, i32** %13, align 8
  call void %33(%struct.crypto_tfm* %34, i32* %35, i32* %36)
  %37 = load i32*, i32** %7, align 8
  %38 = load i32*, i32** %13, align 8
  %39 = load i32, i32* %10, align 4
  %40 = call i32 @memcpy(i32* %37, i32* %38, i32 %39)
  %41 = load i8*, i8** %11, align 8
  call void @llvm.stackrestore(i8* %41)
  ret void
}

declare dso_local i64 @crypto_tfm_alg_alignmask(%struct.crypto_tfm*) #1

declare dso_local i32 @crypto_tfm_alg_blocksize(%struct.crypto_tfm*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i64 @ALIGN(i64, i64) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
