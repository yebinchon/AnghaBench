; ModuleID = '/home/carl/AnghaBench/linux/crypto/extr_pcbc.c_crypto_pcbc_decrypt.c'
source_filename = "/home/carl/AnghaBench/linux/crypto/extr_pcbc.c_crypto_pcbc_decrypt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.skcipher_request = type { i32 }
%struct.crypto_skcipher = type { i32 }
%struct.crypto_cipher = type { i32 }
%struct.skcipher_walk = type { i32, %struct.TYPE_5__, %struct.TYPE_7__ }
%struct.TYPE_5__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i64 }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.skcipher_request*)* @crypto_pcbc_decrypt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @crypto_pcbc_decrypt(%struct.skcipher_request* %0) #0 {
  %2 = alloca %struct.skcipher_request*, align 8
  %3 = alloca %struct.crypto_skcipher*, align 8
  %4 = alloca %struct.crypto_cipher*, align 8
  %5 = alloca %struct.skcipher_walk, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.skcipher_request* %0, %struct.skcipher_request** %2, align 8
  %8 = load %struct.skcipher_request*, %struct.skcipher_request** %2, align 8
  %9 = call %struct.crypto_skcipher* @crypto_skcipher_reqtfm(%struct.skcipher_request* %8)
  store %struct.crypto_skcipher* %9, %struct.crypto_skcipher** %3, align 8
  %10 = load %struct.crypto_skcipher*, %struct.crypto_skcipher** %3, align 8
  %11 = call %struct.crypto_cipher* @skcipher_cipher_simple(%struct.crypto_skcipher* %10)
  store %struct.crypto_cipher* %11, %struct.crypto_cipher** %4, align 8
  %12 = load %struct.skcipher_request*, %struct.skcipher_request** %2, align 8
  %13 = call i32 @skcipher_walk_virt(%struct.skcipher_walk* %5, %struct.skcipher_request* %12, i32 0)
  store i32 %13, i32* %7, align 4
  br label %14

14:                                               ; preds = %36, %1
  %15 = getelementptr inbounds %struct.skcipher_walk, %struct.skcipher_walk* %5, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  store i32 %16, i32* %6, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %39

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.skcipher_walk, %struct.skcipher_walk* %5, i32 0, i32 2
  %20 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = getelementptr inbounds %struct.skcipher_walk, %struct.skcipher_walk* %5, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp eq i64 %22, %26
  br i1 %27, label %28, label %32

28:                                               ; preds = %18
  %29 = load %struct.skcipher_request*, %struct.skcipher_request** %2, align 8
  %30 = load %struct.crypto_cipher*, %struct.crypto_cipher** %4, align 8
  %31 = call i32 @crypto_pcbc_decrypt_inplace(%struct.skcipher_request* %29, %struct.skcipher_walk* %5, %struct.crypto_cipher* %30)
  store i32 %31, i32* %6, align 4
  br label %36

32:                                               ; preds = %18
  %33 = load %struct.skcipher_request*, %struct.skcipher_request** %2, align 8
  %34 = load %struct.crypto_cipher*, %struct.crypto_cipher** %4, align 8
  %35 = call i32 @crypto_pcbc_decrypt_segment(%struct.skcipher_request* %33, %struct.skcipher_walk* %5, %struct.crypto_cipher* %34)
  store i32 %35, i32* %6, align 4
  br label %36

36:                                               ; preds = %32, %28
  %37 = load i32, i32* %6, align 4
  %38 = call i32 @skcipher_walk_done(%struct.skcipher_walk* %5, i32 %37)
  store i32 %38, i32* %7, align 4
  br label %14

39:                                               ; preds = %14
  %40 = load i32, i32* %7, align 4
  ret i32 %40
}

declare dso_local %struct.crypto_skcipher* @crypto_skcipher_reqtfm(%struct.skcipher_request*) #1

declare dso_local %struct.crypto_cipher* @skcipher_cipher_simple(%struct.crypto_skcipher*) #1

declare dso_local i32 @skcipher_walk_virt(%struct.skcipher_walk*, %struct.skcipher_request*, i32) #1

declare dso_local i32 @crypto_pcbc_decrypt_inplace(%struct.skcipher_request*, %struct.skcipher_walk*, %struct.crypto_cipher*) #1

declare dso_local i32 @crypto_pcbc_decrypt_segment(%struct.skcipher_request*, %struct.skcipher_walk*, %struct.crypto_cipher*) #1

declare dso_local i32 @skcipher_walk_done(%struct.skcipher_walk*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
