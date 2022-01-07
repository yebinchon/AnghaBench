; ModuleID = '/home/carl/AnghaBench/linux/crypto/extr_pcbc.c_crypto_pcbc_encrypt_inplace.c'
source_filename = "/home/carl/AnghaBench/linux/crypto/extr_pcbc.c_crypto_pcbc_encrypt_inplace.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.skcipher_request = type { i32 }
%struct.skcipher_walk = type { i32, i32*, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32* }
%struct.crypto_cipher = type { i32 }

@MAX_CIPHER_BLOCKSIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.skcipher_request*, %struct.skcipher_walk*, %struct.crypto_cipher*)* @crypto_pcbc_encrypt_inplace to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @crypto_pcbc_encrypt_inplace(%struct.skcipher_request* %0, %struct.skcipher_walk* %1, %struct.crypto_cipher* %2) #0 {
  %4 = alloca %struct.skcipher_request*, align 8
  %5 = alloca %struct.skcipher_walk*, align 8
  %6 = alloca %struct.crypto_cipher*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  store %struct.skcipher_request* %0, %struct.skcipher_request** %4, align 8
  store %struct.skcipher_walk* %1, %struct.skcipher_walk** %5, align 8
  store %struct.crypto_cipher* %2, %struct.crypto_cipher** %6, align 8
  %13 = load %struct.crypto_cipher*, %struct.crypto_cipher** %6, align 8
  %14 = call i32 @crypto_cipher_blocksize(%struct.crypto_cipher* %13)
  store i32 %14, i32* %7, align 4
  %15 = load %struct.skcipher_walk*, %struct.skcipher_walk** %5, align 8
  %16 = getelementptr inbounds %struct.skcipher_walk, %struct.skcipher_walk* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  store i32 %17, i32* %8, align 4
  %18 = load %struct.skcipher_walk*, %struct.skcipher_walk** %5, align 8
  %19 = getelementptr inbounds %struct.skcipher_walk, %struct.skcipher_walk* %18, i32 0, i32 2
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = load i32*, i32** %21, align 8
  store i32* %22, i32** %9, align 8
  %23 = load %struct.skcipher_walk*, %struct.skcipher_walk** %5, align 8
  %24 = getelementptr inbounds %struct.skcipher_walk, %struct.skcipher_walk* %23, i32 0, i32 1
  %25 = load i32*, i32** %24, align 8
  store i32* %25, i32** %10, align 8
  %26 = load i32, i32* @MAX_CIPHER_BLOCKSIZE, align 4
  %27 = zext i32 %26 to i64
  %28 = call i8* @llvm.stacksave()
  store i8* %28, i8** %11, align 8
  %29 = alloca i32, i64 %27, align 16
  store i64 %27, i64* %12, align 8
  br label %30

30:                                               ; preds = %50, %3
  %31 = load i32*, i32** %9, align 8
  %32 = load i32, i32* %7, align 4
  %33 = call i32 @memcpy(i32* %29, i32* %31, i32 %32)
  %34 = load i32*, i32** %10, align 8
  %35 = load i32*, i32** %9, align 8
  %36 = load i32, i32* %7, align 4
  %37 = call i32 @crypto_xor(i32* %34, i32* %35, i32 %36)
  %38 = load %struct.crypto_cipher*, %struct.crypto_cipher** %6, align 8
  %39 = load i32*, i32** %9, align 8
  %40 = load i32*, i32** %10, align 8
  %41 = call i32 @crypto_cipher_encrypt_one(%struct.crypto_cipher* %38, i32* %39, i32* %40)
  %42 = load i32*, i32** %10, align 8
  %43 = load i32*, i32** %9, align 8
  %44 = load i32, i32* %7, align 4
  %45 = call i32 @crypto_xor_cpy(i32* %42, i32* %29, i32* %43, i32 %44)
  %46 = load i32, i32* %7, align 4
  %47 = load i32*, i32** %9, align 8
  %48 = sext i32 %46 to i64
  %49 = getelementptr inbounds i32, i32* %47, i64 %48
  store i32* %49, i32** %9, align 8
  br label %50

50:                                               ; preds = %30
  %51 = load i32, i32* %7, align 4
  %52 = load i32, i32* %8, align 4
  %53 = sub i32 %52, %51
  store i32 %53, i32* %8, align 4
  %54 = load i32, i32* %7, align 4
  %55 = icmp uge i32 %53, %54
  br i1 %55, label %30, label %56

56:                                               ; preds = %50
  %57 = load i32, i32* %8, align 4
  %58 = load i8*, i8** %11, align 8
  call void @llvm.stackrestore(i8* %58)
  ret i32 %57
}

declare dso_local i32 @crypto_cipher_blocksize(%struct.crypto_cipher*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @crypto_xor(i32*, i32*, i32) #1

declare dso_local i32 @crypto_cipher_encrypt_one(%struct.crypto_cipher*, i32*, i32*) #1

declare dso_local i32 @crypto_xor_cpy(i32*, i32*, i32*, i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
