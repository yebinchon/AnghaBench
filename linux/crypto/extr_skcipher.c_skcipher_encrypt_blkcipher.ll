; ModuleID = '/home/carl/AnghaBench/linux/crypto/extr_skcipher.c_skcipher_encrypt_blkcipher.c'
source_filename = "/home/carl/AnghaBench/linux/crypto/extr_skcipher.c_skcipher_encrypt_blkcipher.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.skcipher_request = type { i32 }
%struct.crypto_skcipher = type { i32 }
%struct.crypto_tfm = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.blkcipher_alg }
%struct.blkcipher_alg = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.skcipher_request*)* @skcipher_encrypt_blkcipher to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @skcipher_encrypt_blkcipher(%struct.skcipher_request* %0) #0 {
  %2 = alloca %struct.skcipher_request*, align 8
  %3 = alloca %struct.crypto_skcipher*, align 8
  %4 = alloca %struct.crypto_tfm*, align 8
  %5 = alloca %struct.blkcipher_alg*, align 8
  store %struct.skcipher_request* %0, %struct.skcipher_request** %2, align 8
  %6 = load %struct.skcipher_request*, %struct.skcipher_request** %2, align 8
  %7 = call %struct.crypto_skcipher* @crypto_skcipher_reqtfm(%struct.skcipher_request* %6)
  store %struct.crypto_skcipher* %7, %struct.crypto_skcipher** %3, align 8
  %8 = load %struct.crypto_skcipher*, %struct.crypto_skcipher** %3, align 8
  %9 = call %struct.crypto_tfm* @crypto_skcipher_tfm(%struct.crypto_skcipher* %8)
  store %struct.crypto_tfm* %9, %struct.crypto_tfm** %4, align 8
  %10 = load %struct.crypto_tfm*, %struct.crypto_tfm** %4, align 8
  %11 = getelementptr inbounds %struct.crypto_tfm, %struct.crypto_tfm* %10, i32 0, i32 0
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  store %struct.blkcipher_alg* %13, %struct.blkcipher_alg** %5, align 8
  %14 = load %struct.skcipher_request*, %struct.skcipher_request** %2, align 8
  %15 = load %struct.blkcipher_alg*, %struct.blkcipher_alg** %5, align 8
  %16 = getelementptr inbounds %struct.blkcipher_alg, %struct.blkcipher_alg* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @skcipher_crypt_blkcipher(%struct.skcipher_request* %14, i32 %17)
  ret i32 %18
}

declare dso_local %struct.crypto_skcipher* @crypto_skcipher_reqtfm(%struct.skcipher_request*) #1

declare dso_local %struct.crypto_tfm* @crypto_skcipher_tfm(%struct.crypto_skcipher*) #1

declare dso_local i32 @skcipher_crypt_blkcipher(%struct.skcipher_request*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
