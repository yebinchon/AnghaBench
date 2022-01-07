; ModuleID = '/home/carl/AnghaBench/linux/crypto/extr_ctr.c_crypto_ctr_crypt.c'
source_filename = "/home/carl/AnghaBench/linux/crypto/extr_ctr.c_crypto_ctr_crypt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.skcipher_request = type { i32 }
%struct.crypto_skcipher = type { i32 }
%struct.crypto_cipher = type { i32 }
%struct.skcipher_walk = type { i32, %struct.TYPE_8__, %struct.TYPE_6__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i64 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.skcipher_request*)* @crypto_ctr_crypt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @crypto_ctr_crypt(%struct.skcipher_request* %0) #0 {
  %2 = alloca %struct.skcipher_request*, align 8
  %3 = alloca %struct.crypto_skcipher*, align 8
  %4 = alloca %struct.crypto_cipher*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.skcipher_walk, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.skcipher_request* %0, %struct.skcipher_request** %2, align 8
  %9 = load %struct.skcipher_request*, %struct.skcipher_request** %2, align 8
  %10 = call %struct.crypto_skcipher* @crypto_skcipher_reqtfm(%struct.skcipher_request* %9)
  store %struct.crypto_skcipher* %10, %struct.crypto_skcipher** %3, align 8
  %11 = load %struct.crypto_skcipher*, %struct.crypto_skcipher** %3, align 8
  %12 = call %struct.crypto_cipher* @skcipher_cipher_simple(%struct.crypto_skcipher* %11)
  store %struct.crypto_cipher* %12, %struct.crypto_cipher** %4, align 8
  %13 = load %struct.crypto_cipher*, %struct.crypto_cipher** %4, align 8
  %14 = call i32 @crypto_cipher_blocksize(%struct.crypto_cipher* %13)
  store i32 %14, i32* %5, align 4
  %15 = load %struct.skcipher_request*, %struct.skcipher_request** %2, align 8
  %16 = call i32 @skcipher_walk_virt(%struct.skcipher_walk* %6, %struct.skcipher_request* %15, i32 0)
  store i32 %16, i32* %8, align 4
  br label %17

17:                                               ; preds = %38, %1
  %18 = getelementptr inbounds %struct.skcipher_walk, %struct.skcipher_walk* %6, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* %5, align 4
  %21 = icmp uge i32 %19, %20
  br i1 %21, label %22, label %41

22:                                               ; preds = %17
  %23 = getelementptr inbounds %struct.skcipher_walk, %struct.skcipher_walk* %6, i32 0, i32 2
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = getelementptr inbounds %struct.skcipher_walk, %struct.skcipher_walk* %6, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = icmp eq i64 %26, %30
  br i1 %31, label %32, label %35

32:                                               ; preds = %22
  %33 = load %struct.crypto_cipher*, %struct.crypto_cipher** %4, align 8
  %34 = call i32 @crypto_ctr_crypt_inplace(%struct.skcipher_walk* %6, %struct.crypto_cipher* %33)
  store i32 %34, i32* %7, align 4
  br label %38

35:                                               ; preds = %22
  %36 = load %struct.crypto_cipher*, %struct.crypto_cipher** %4, align 8
  %37 = call i32 @crypto_ctr_crypt_segment(%struct.skcipher_walk* %6, %struct.crypto_cipher* %36)
  store i32 %37, i32* %7, align 4
  br label %38

38:                                               ; preds = %35, %32
  %39 = load i32, i32* %7, align 4
  %40 = call i32 @skcipher_walk_done(%struct.skcipher_walk* %6, i32 %39)
  store i32 %40, i32* %8, align 4
  br label %17

41:                                               ; preds = %17
  %42 = getelementptr inbounds %struct.skcipher_walk, %struct.skcipher_walk* %6, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %49

45:                                               ; preds = %41
  %46 = load %struct.crypto_cipher*, %struct.crypto_cipher** %4, align 8
  %47 = call i32 @crypto_ctr_crypt_final(%struct.skcipher_walk* %6, %struct.crypto_cipher* %46)
  %48 = call i32 @skcipher_walk_done(%struct.skcipher_walk* %6, i32 0)
  store i32 %48, i32* %8, align 4
  br label %49

49:                                               ; preds = %45, %41
  %50 = load i32, i32* %8, align 4
  ret i32 %50
}

declare dso_local %struct.crypto_skcipher* @crypto_skcipher_reqtfm(%struct.skcipher_request*) #1

declare dso_local %struct.crypto_cipher* @skcipher_cipher_simple(%struct.crypto_skcipher*) #1

declare dso_local i32 @crypto_cipher_blocksize(%struct.crypto_cipher*) #1

declare dso_local i32 @skcipher_walk_virt(%struct.skcipher_walk*, %struct.skcipher_request*, i32) #1

declare dso_local i32 @crypto_ctr_crypt_inplace(%struct.skcipher_walk*, %struct.crypto_cipher*) #1

declare dso_local i32 @crypto_ctr_crypt_segment(%struct.skcipher_walk*, %struct.crypto_cipher*) #1

declare dso_local i32 @skcipher_walk_done(%struct.skcipher_walk*, i32) #1

declare dso_local i32 @crypto_ctr_crypt_final(%struct.skcipher_walk*, %struct.crypto_cipher*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
