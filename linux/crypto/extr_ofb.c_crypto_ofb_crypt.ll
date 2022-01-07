; ModuleID = '/home/carl/AnghaBench/linux/crypto/extr_ofb.c_crypto_ofb_crypt.c'
source_filename = "/home/carl/AnghaBench/linux/crypto/extr_ofb.c_crypto_ofb_crypt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.skcipher_request = type { i32 }
%struct.crypto_skcipher = type { i32 }
%struct.crypto_cipher = type { i32 }
%struct.skcipher_walk = type { i32, i32*, %struct.TYPE_8__, %struct.TYPE_6__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32* }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.skcipher_request*)* @crypto_ofb_crypt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @crypto_ofb_crypt(%struct.skcipher_request* %0) #0 {
  %2 = alloca %struct.skcipher_request*, align 8
  %3 = alloca %struct.crypto_skcipher*, align 8
  %4 = alloca %struct.crypto_cipher*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.skcipher_walk, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  store %struct.skcipher_request* %0, %struct.skcipher_request** %2, align 8
  %12 = load %struct.skcipher_request*, %struct.skcipher_request** %2, align 8
  %13 = call %struct.crypto_skcipher* @crypto_skcipher_reqtfm(%struct.skcipher_request* %12)
  store %struct.crypto_skcipher* %13, %struct.crypto_skcipher** %3, align 8
  %14 = load %struct.crypto_skcipher*, %struct.crypto_skcipher** %3, align 8
  %15 = call %struct.crypto_cipher* @skcipher_cipher_simple(%struct.crypto_skcipher* %14)
  store %struct.crypto_cipher* %15, %struct.crypto_cipher** %4, align 8
  %16 = load %struct.crypto_cipher*, %struct.crypto_cipher** %4, align 8
  %17 = call i32 @crypto_cipher_blocksize(%struct.crypto_cipher* %16)
  store i32 %17, i32* %5, align 4
  %18 = load %struct.skcipher_request*, %struct.skcipher_request** %2, align 8
  %19 = call i32 @skcipher_walk_virt(%struct.skcipher_walk* %6, %struct.skcipher_request* %18, i32 0)
  store i32 %19, i32* %7, align 4
  br label %20

20:                                               ; preds = %62, %1
  %21 = getelementptr inbounds %struct.skcipher_walk, %struct.skcipher_walk* %6, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* %5, align 4
  %24 = icmp uge i32 %22, %23
  br i1 %24, label %25, label %65

25:                                               ; preds = %20
  %26 = getelementptr inbounds %struct.skcipher_walk, %struct.skcipher_walk* %6, i32 0, i32 2
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 0
  %29 = load i32*, i32** %28, align 8
  store i32* %29, i32** %8, align 8
  %30 = getelementptr inbounds %struct.skcipher_walk, %struct.skcipher_walk* %6, i32 0, i32 3
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 0
  %33 = load i32*, i32** %32, align 8
  store i32* %33, i32** %9, align 8
  %34 = getelementptr inbounds %struct.skcipher_walk, %struct.skcipher_walk* %6, i32 0, i32 1
  %35 = load i32*, i32** %34, align 8
  store i32* %35, i32** %10, align 8
  %36 = getelementptr inbounds %struct.skcipher_walk, %struct.skcipher_walk* %6, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  store i32 %37, i32* %11, align 4
  br label %38

38:                                               ; preds = %56, %25
  %39 = load %struct.crypto_cipher*, %struct.crypto_cipher** %4, align 8
  %40 = load i32*, i32** %10, align 8
  %41 = load i32*, i32** %10, align 8
  %42 = call i32 @crypto_cipher_encrypt_one(%struct.crypto_cipher* %39, i32* %40, i32* %41)
  %43 = load i32*, i32** %9, align 8
  %44 = load i32*, i32** %8, align 8
  %45 = load i32*, i32** %10, align 8
  %46 = load i32, i32* %5, align 4
  %47 = call i32 @crypto_xor_cpy(i32* %43, i32* %44, i32* %45, i32 %46)
  %48 = load i32, i32* %5, align 4
  %49 = load i32*, i32** %9, align 8
  %50 = zext i32 %48 to i64
  %51 = getelementptr inbounds i32, i32* %49, i64 %50
  store i32* %51, i32** %9, align 8
  %52 = load i32, i32* %5, align 4
  %53 = load i32*, i32** %8, align 8
  %54 = zext i32 %52 to i64
  %55 = getelementptr inbounds i32, i32* %53, i64 %54
  store i32* %55, i32** %8, align 8
  br label %56

56:                                               ; preds = %38
  %57 = load i32, i32* %5, align 4
  %58 = load i32, i32* %11, align 4
  %59 = sub i32 %58, %57
  store i32 %59, i32* %11, align 4
  %60 = load i32, i32* %5, align 4
  %61 = icmp uge i32 %59, %60
  br i1 %61, label %38, label %62

62:                                               ; preds = %56
  %63 = load i32, i32* %11, align 4
  %64 = call i32 @skcipher_walk_done(%struct.skcipher_walk* %6, i32 %63)
  store i32 %64, i32* %7, align 4
  br label %20

65:                                               ; preds = %20
  %66 = getelementptr inbounds %struct.skcipher_walk, %struct.skcipher_walk* %6, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %90

69:                                               ; preds = %65
  %70 = load %struct.crypto_cipher*, %struct.crypto_cipher** %4, align 8
  %71 = getelementptr inbounds %struct.skcipher_walk, %struct.skcipher_walk* %6, i32 0, i32 1
  %72 = load i32*, i32** %71, align 8
  %73 = getelementptr inbounds %struct.skcipher_walk, %struct.skcipher_walk* %6, i32 0, i32 1
  %74 = load i32*, i32** %73, align 8
  %75 = call i32 @crypto_cipher_encrypt_one(%struct.crypto_cipher* %70, i32* %72, i32* %74)
  %76 = getelementptr inbounds %struct.skcipher_walk, %struct.skcipher_walk* %6, i32 0, i32 3
  %77 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %77, i32 0, i32 0
  %79 = load i32*, i32** %78, align 8
  %80 = getelementptr inbounds %struct.skcipher_walk, %struct.skcipher_walk* %6, i32 0, i32 2
  %81 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %81, i32 0, i32 0
  %83 = load i32*, i32** %82, align 8
  %84 = getelementptr inbounds %struct.skcipher_walk, %struct.skcipher_walk* %6, i32 0, i32 1
  %85 = load i32*, i32** %84, align 8
  %86 = getelementptr inbounds %struct.skcipher_walk, %struct.skcipher_walk* %6, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = call i32 @crypto_xor_cpy(i32* %79, i32* %83, i32* %85, i32 %87)
  %89 = call i32 @skcipher_walk_done(%struct.skcipher_walk* %6, i32 0)
  store i32 %89, i32* %7, align 4
  br label %90

90:                                               ; preds = %69, %65
  %91 = load i32, i32* %7, align 4
  ret i32 %91
}

declare dso_local %struct.crypto_skcipher* @crypto_skcipher_reqtfm(%struct.skcipher_request*) #1

declare dso_local %struct.crypto_cipher* @skcipher_cipher_simple(%struct.crypto_skcipher*) #1

declare dso_local i32 @crypto_cipher_blocksize(%struct.crypto_cipher*) #1

declare dso_local i32 @skcipher_walk_virt(%struct.skcipher_walk*, %struct.skcipher_request*, i32) #1

declare dso_local i32 @crypto_cipher_encrypt_one(%struct.crypto_cipher*, i32*, i32*) #1

declare dso_local i32 @crypto_xor_cpy(i32*, i32*, i32*, i32) #1

declare dso_local i32 @skcipher_walk_done(%struct.skcipher_walk*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
