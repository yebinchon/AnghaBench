; ModuleID = '/home/carl/AnghaBench/linux/crypto/extr_cfb.c_crypto_cfb_final.c'
source_filename = "/home/carl/AnghaBench/linux/crypto/extr_cfb.c_crypto_cfb_final.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.skcipher_walk = type { i32, i32*, %struct.TYPE_6__, %struct.TYPE_8__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32* }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32* }
%struct.crypto_skcipher = type { i32 }

@MAX_CIPHER_BLOCKSIZE = common dso_local global i32 0, align 4
@MAX_CIPHER_ALIGNMASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.skcipher_walk*, %struct.crypto_skcipher*)* @crypto_cfb_final to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @crypto_cfb_final(%struct.skcipher_walk* %0, %struct.crypto_skcipher* %1) #0 {
  %3 = alloca %struct.skcipher_walk*, align 8
  %4 = alloca %struct.crypto_skcipher*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  store %struct.skcipher_walk* %0, %struct.skcipher_walk** %3, align 8
  store %struct.crypto_skcipher* %1, %struct.crypto_skcipher** %4, align 8
  %13 = load %struct.crypto_skcipher*, %struct.crypto_skcipher** %4, align 8
  %14 = call i64 @crypto_skcipher_alignmask(%struct.crypto_skcipher* %13)
  store i64 %14, i64* %5, align 8
  %15 = load i32, i32* @MAX_CIPHER_BLOCKSIZE, align 4
  %16 = load i32, i32* @MAX_CIPHER_ALIGNMASK, align 4
  %17 = add nsw i32 %15, %16
  %18 = zext i32 %17 to i64
  %19 = call i8* @llvm.stacksave()
  store i8* %19, i8** %6, align 8
  %20 = alloca i32, i64 %18, align 16
  store i64 %18, i64* %7, align 8
  %21 = getelementptr inbounds i32, i32* %20, i64 0
  %22 = load i64, i64* %5, align 8
  %23 = add i64 %22, 1
  %24 = call i32* @PTR_ALIGN(i32* %21, i64 %23)
  store i32* %24, i32** %8, align 8
  %25 = load %struct.skcipher_walk*, %struct.skcipher_walk** %3, align 8
  %26 = getelementptr inbounds %struct.skcipher_walk, %struct.skcipher_walk* %25, i32 0, i32 3
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 0
  %29 = load i32*, i32** %28, align 8
  store i32* %29, i32** %9, align 8
  %30 = load %struct.skcipher_walk*, %struct.skcipher_walk** %3, align 8
  %31 = getelementptr inbounds %struct.skcipher_walk, %struct.skcipher_walk* %30, i32 0, i32 2
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 0
  %34 = load i32*, i32** %33, align 8
  store i32* %34, i32** %10, align 8
  %35 = load %struct.skcipher_walk*, %struct.skcipher_walk** %3, align 8
  %36 = getelementptr inbounds %struct.skcipher_walk, %struct.skcipher_walk* %35, i32 0, i32 1
  %37 = load i32*, i32** %36, align 8
  store i32* %37, i32** %11, align 8
  %38 = load %struct.skcipher_walk*, %struct.skcipher_walk** %3, align 8
  %39 = getelementptr inbounds %struct.skcipher_walk, %struct.skcipher_walk* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  store i32 %40, i32* %12, align 4
  %41 = load %struct.crypto_skcipher*, %struct.crypto_skcipher** %4, align 8
  %42 = load i32*, i32** %11, align 8
  %43 = load i32*, i32** %8, align 8
  %44 = call i32 @crypto_cfb_encrypt_one(%struct.crypto_skcipher* %41, i32* %42, i32* %43)
  %45 = load i32*, i32** %10, align 8
  %46 = load i32*, i32** %8, align 8
  %47 = load i32*, i32** %9, align 8
  %48 = load i32, i32* %12, align 4
  %49 = call i32 @crypto_xor_cpy(i32* %45, i32* %46, i32* %47, i32 %48)
  %50 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %50)
  ret void
}

declare dso_local i64 @crypto_skcipher_alignmask(%struct.crypto_skcipher*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32* @PTR_ALIGN(i32*, i64) #1

declare dso_local i32 @crypto_cfb_encrypt_one(%struct.crypto_skcipher*, i32*, i32*) #1

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
