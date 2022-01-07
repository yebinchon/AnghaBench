; ModuleID = '/home/carl/AnghaBench/linux/crypto/extr_cfb.c_crypto_cfb_encrypt_segment.c'
source_filename = "/home/carl/AnghaBench/linux/crypto/extr_cfb.c_crypto_cfb_encrypt_segment.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.skcipher_walk = type { i32, i32*, %struct.TYPE_5__, %struct.TYPE_7__ }
%struct.TYPE_5__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32* }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32* }
%struct.crypto_skcipher = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.skcipher_walk*, %struct.crypto_skcipher*)* @crypto_cfb_encrypt_segment to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @crypto_cfb_encrypt_segment(%struct.skcipher_walk* %0, %struct.crypto_skcipher* %1) #0 {
  %3 = alloca %struct.skcipher_walk*, align 8
  %4 = alloca %struct.crypto_skcipher*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  store %struct.skcipher_walk* %0, %struct.skcipher_walk** %3, align 8
  store %struct.crypto_skcipher* %1, %struct.crypto_skcipher** %4, align 8
  %10 = load %struct.crypto_skcipher*, %struct.crypto_skcipher** %4, align 8
  %11 = call i32 @crypto_cfb_bsize(%struct.crypto_skcipher* %10)
  store i32 %11, i32* %5, align 4
  %12 = load %struct.skcipher_walk*, %struct.skcipher_walk** %3, align 8
  %13 = getelementptr inbounds %struct.skcipher_walk, %struct.skcipher_walk* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  store i32 %14, i32* %6, align 4
  %15 = load %struct.skcipher_walk*, %struct.skcipher_walk** %3, align 8
  %16 = getelementptr inbounds %struct.skcipher_walk, %struct.skcipher_walk* %15, i32 0, i32 3
  %17 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 0
  %19 = load i32*, i32** %18, align 8
  store i32* %19, i32** %7, align 8
  %20 = load %struct.skcipher_walk*, %struct.skcipher_walk** %3, align 8
  %21 = getelementptr inbounds %struct.skcipher_walk, %struct.skcipher_walk* %20, i32 0, i32 2
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %22, i32 0, i32 0
  %24 = load i32*, i32** %23, align 8
  store i32* %24, i32** %8, align 8
  %25 = load %struct.skcipher_walk*, %struct.skcipher_walk** %3, align 8
  %26 = getelementptr inbounds %struct.skcipher_walk, %struct.skcipher_walk* %25, i32 0, i32 1
  %27 = load i32*, i32** %26, align 8
  store i32* %27, i32** %9, align 8
  br label %28

28:                                               ; preds = %46, %2
  %29 = load %struct.crypto_skcipher*, %struct.crypto_skcipher** %4, align 8
  %30 = load i32*, i32** %9, align 8
  %31 = load i32*, i32** %8, align 8
  %32 = call i32 @crypto_cfb_encrypt_one(%struct.crypto_skcipher* %29, i32* %30, i32* %31)
  %33 = load i32*, i32** %8, align 8
  %34 = load i32*, i32** %7, align 8
  %35 = load i32, i32* %5, align 4
  %36 = call i32 @crypto_xor(i32* %33, i32* %34, i32 %35)
  %37 = load i32*, i32** %8, align 8
  store i32* %37, i32** %9, align 8
  %38 = load i32, i32* %5, align 4
  %39 = load i32*, i32** %7, align 8
  %40 = zext i32 %38 to i64
  %41 = getelementptr inbounds i32, i32* %39, i64 %40
  store i32* %41, i32** %7, align 8
  %42 = load i32, i32* %5, align 4
  %43 = load i32*, i32** %8, align 8
  %44 = zext i32 %42 to i64
  %45 = getelementptr inbounds i32, i32* %43, i64 %44
  store i32* %45, i32** %8, align 8
  br label %46

46:                                               ; preds = %28
  %47 = load i32, i32* %5, align 4
  %48 = load i32, i32* %6, align 4
  %49 = sub i32 %48, %47
  store i32 %49, i32* %6, align 4
  %50 = load i32, i32* %5, align 4
  %51 = icmp uge i32 %49, %50
  br i1 %51, label %28, label %52

52:                                               ; preds = %46
  %53 = load %struct.skcipher_walk*, %struct.skcipher_walk** %3, align 8
  %54 = getelementptr inbounds %struct.skcipher_walk, %struct.skcipher_walk* %53, i32 0, i32 1
  %55 = load i32*, i32** %54, align 8
  %56 = load i32*, i32** %9, align 8
  %57 = load i32, i32* %5, align 4
  %58 = call i32 @memcpy(i32* %55, i32* %56, i32 %57)
  %59 = load i32, i32* %6, align 4
  ret i32 %59
}

declare dso_local i32 @crypto_cfb_bsize(%struct.crypto_skcipher*) #1

declare dso_local i32 @crypto_cfb_encrypt_one(%struct.crypto_skcipher*, i32*, i32*) #1

declare dso_local i32 @crypto_xor(i32*, i32*, i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
