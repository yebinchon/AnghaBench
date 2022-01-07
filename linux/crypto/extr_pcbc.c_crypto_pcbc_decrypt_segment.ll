; ModuleID = '/home/carl/AnghaBench/linux/crypto/extr_pcbc.c_crypto_pcbc_decrypt_segment.c'
source_filename = "/home/carl/AnghaBench/linux/crypto/extr_pcbc.c_crypto_pcbc_decrypt_segment.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.skcipher_request = type { i32 }
%struct.skcipher_walk = type { i32, i32*, %struct.TYPE_7__, %struct.TYPE_6__ }
%struct.TYPE_7__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32* }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32* }
%struct.crypto_cipher = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.skcipher_request*, %struct.skcipher_walk*, %struct.crypto_cipher*)* @crypto_pcbc_decrypt_segment to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @crypto_pcbc_decrypt_segment(%struct.skcipher_request* %0, %struct.skcipher_walk* %1, %struct.crypto_cipher* %2) #0 {
  %4 = alloca %struct.skcipher_request*, align 8
  %5 = alloca %struct.skcipher_walk*, align 8
  %6 = alloca %struct.crypto_cipher*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  store %struct.skcipher_request* %0, %struct.skcipher_request** %4, align 8
  store %struct.skcipher_walk* %1, %struct.skcipher_walk** %5, align 8
  store %struct.crypto_cipher* %2, %struct.crypto_cipher** %6, align 8
  %12 = load %struct.crypto_cipher*, %struct.crypto_cipher** %6, align 8
  %13 = call i32 @crypto_cipher_blocksize(%struct.crypto_cipher* %12)
  store i32 %13, i32* %7, align 4
  %14 = load %struct.skcipher_walk*, %struct.skcipher_walk** %5, align 8
  %15 = getelementptr inbounds %struct.skcipher_walk, %struct.skcipher_walk* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  store i32 %16, i32* %8, align 4
  %17 = load %struct.skcipher_walk*, %struct.skcipher_walk** %5, align 8
  %18 = getelementptr inbounds %struct.skcipher_walk, %struct.skcipher_walk* %17, i32 0, i32 3
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 0
  %21 = load i32*, i32** %20, align 8
  store i32* %21, i32** %9, align 8
  %22 = load %struct.skcipher_walk*, %struct.skcipher_walk** %5, align 8
  %23 = getelementptr inbounds %struct.skcipher_walk, %struct.skcipher_walk* %22, i32 0, i32 2
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i32 0, i32 0
  %26 = load i32*, i32** %25, align 8
  store i32* %26, i32** %10, align 8
  %27 = load %struct.skcipher_walk*, %struct.skcipher_walk** %5, align 8
  %28 = getelementptr inbounds %struct.skcipher_walk, %struct.skcipher_walk* %27, i32 0, i32 1
  %29 = load i32*, i32** %28, align 8
  store i32* %29, i32** %11, align 8
  br label %30

30:                                               ; preds = %52, %3
  %31 = load %struct.crypto_cipher*, %struct.crypto_cipher** %6, align 8
  %32 = load i32*, i32** %10, align 8
  %33 = load i32*, i32** %9, align 8
  %34 = call i32 @crypto_cipher_decrypt_one(%struct.crypto_cipher* %31, i32* %32, i32* %33)
  %35 = load i32*, i32** %10, align 8
  %36 = load i32*, i32** %11, align 8
  %37 = load i32, i32* %7, align 4
  %38 = call i32 @crypto_xor(i32* %35, i32* %36, i32 %37)
  %39 = load i32*, i32** %11, align 8
  %40 = load i32*, i32** %10, align 8
  %41 = load i32*, i32** %9, align 8
  %42 = load i32, i32* %7, align 4
  %43 = call i32 @crypto_xor_cpy(i32* %39, i32* %40, i32* %41, i32 %42)
  %44 = load i32, i32* %7, align 4
  %45 = load i32*, i32** %9, align 8
  %46 = sext i32 %44 to i64
  %47 = getelementptr inbounds i32, i32* %45, i64 %46
  store i32* %47, i32** %9, align 8
  %48 = load i32, i32* %7, align 4
  %49 = load i32*, i32** %10, align 8
  %50 = sext i32 %48 to i64
  %51 = getelementptr inbounds i32, i32* %49, i64 %50
  store i32* %51, i32** %10, align 8
  br label %52

52:                                               ; preds = %30
  %53 = load i32, i32* %7, align 4
  %54 = load i32, i32* %8, align 4
  %55 = sub i32 %54, %53
  store i32 %55, i32* %8, align 4
  %56 = load i32, i32* %7, align 4
  %57 = icmp uge i32 %55, %56
  br i1 %57, label %30, label %58

58:                                               ; preds = %52
  %59 = load i32, i32* %8, align 4
  ret i32 %59
}

declare dso_local i32 @crypto_cipher_blocksize(%struct.crypto_cipher*) #1

declare dso_local i32 @crypto_cipher_decrypt_one(%struct.crypto_cipher*, i32*, i32*) #1

declare dso_local i32 @crypto_xor(i32*, i32*, i32) #1

declare dso_local i32 @crypto_xor_cpy(i32*, i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
