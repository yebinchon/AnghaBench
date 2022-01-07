; ModuleID = '/home/carl/AnghaBench/linux/crypto/extr_cfb.c_crypto_cfb_decrypt_inplace.c'
source_filename = "/home/carl/AnghaBench/linux/crypto/extr_cfb.c_crypto_cfb_decrypt_inplace.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.skcipher_walk = type { i32, i32*, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32* }
%struct.crypto_skcipher = type { i32 }

@MAX_CIPHER_BLOCKSIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.skcipher_walk*, %struct.crypto_skcipher*)* @crypto_cfb_decrypt_inplace to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @crypto_cfb_decrypt_inplace(%struct.skcipher_walk* %0, %struct.crypto_skcipher* %1) #0 {
  %3 = alloca %struct.skcipher_walk*, align 8
  %4 = alloca %struct.crypto_skcipher*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  store %struct.skcipher_walk* %0, %struct.skcipher_walk** %3, align 8
  store %struct.crypto_skcipher* %1, %struct.crypto_skcipher** %4, align 8
  %11 = load %struct.crypto_skcipher*, %struct.crypto_skcipher** %4, align 8
  %12 = call i32 @crypto_cfb_bsize(%struct.crypto_skcipher* %11)
  store i32 %12, i32* %5, align 4
  %13 = load %struct.skcipher_walk*, %struct.skcipher_walk** %3, align 8
  %14 = getelementptr inbounds %struct.skcipher_walk, %struct.skcipher_walk* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  store i32 %15, i32* %6, align 4
  %16 = load %struct.skcipher_walk*, %struct.skcipher_walk** %3, align 8
  %17 = getelementptr inbounds %struct.skcipher_walk, %struct.skcipher_walk* %16, i32 0, i32 2
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load i32*, i32** %19, align 8
  store i32* %20, i32** %7, align 8
  %21 = load %struct.skcipher_walk*, %struct.skcipher_walk** %3, align 8
  %22 = getelementptr inbounds %struct.skcipher_walk, %struct.skcipher_walk* %21, i32 0, i32 1
  %23 = load i32*, i32** %22, align 8
  store i32* %23, i32** %8, align 8
  %24 = load i32, i32* @MAX_CIPHER_BLOCKSIZE, align 4
  %25 = zext i32 %24 to i64
  %26 = call i8* @llvm.stacksave()
  store i8* %26, i8** %9, align 8
  %27 = alloca i32, i64 %25, align 16
  store i64 %25, i64* %10, align 8
  br label %28

28:                                               ; preds = %43, %2
  %29 = load %struct.crypto_skcipher*, %struct.crypto_skcipher** %4, align 8
  %30 = load i32*, i32** %8, align 8
  %31 = call i32 @crypto_cfb_encrypt_one(%struct.crypto_skcipher* %29, i32* %30, i32* %27)
  %32 = load i32*, i32** %8, align 8
  %33 = load i32*, i32** %7, align 8
  %34 = load i32, i32* %5, align 4
  %35 = call i32 @memcpy(i32* %32, i32* %33, i32 %34)
  %36 = load i32*, i32** %7, align 8
  %37 = load i32, i32* %5, align 4
  %38 = call i32 @crypto_xor(i32* %36, i32* %27, i32 %37)
  %39 = load i32, i32* %5, align 4
  %40 = load i32*, i32** %7, align 8
  %41 = zext i32 %39 to i64
  %42 = getelementptr inbounds i32, i32* %40, i64 %41
  store i32* %42, i32** %7, align 8
  br label %43

43:                                               ; preds = %28
  %44 = load i32, i32* %5, align 4
  %45 = load i32, i32* %6, align 4
  %46 = sub i32 %45, %44
  store i32 %46, i32* %6, align 4
  %47 = load i32, i32* %5, align 4
  %48 = icmp uge i32 %46, %47
  br i1 %48, label %28, label %49

49:                                               ; preds = %43
  %50 = load i32, i32* %6, align 4
  %51 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %51)
  ret i32 %50
}

declare dso_local i32 @crypto_cfb_bsize(%struct.crypto_skcipher*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @crypto_cfb_encrypt_one(%struct.crypto_skcipher*, i32*, i32*) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @crypto_xor(i32*, i32*, i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
