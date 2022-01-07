; ModuleID = '/home/carl/AnghaBench/linux/crypto/extr_algif_aead.c_crypto_aead_copy_sgl.c'
source_filename = "/home/carl/AnghaBench/linux/crypto/extr_algif_aead.c_crypto_aead_copy_sgl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crypto_sync_skcipher = type { i32 }
%struct.scatterlist = type { i32 }

@skreq = common dso_local global i32 0, align 4
@CRYPTO_TFM_REQ_MAY_BACKLOG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.crypto_sync_skcipher*, %struct.scatterlist*, %struct.scatterlist*, i32)* @crypto_aead_copy_sgl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @crypto_aead_copy_sgl(%struct.crypto_sync_skcipher* %0, %struct.scatterlist* %1, %struct.scatterlist* %2, i32 %3) #0 {
  %5 = alloca %struct.crypto_sync_skcipher*, align 8
  %6 = alloca %struct.scatterlist*, align 8
  %7 = alloca %struct.scatterlist*, align 8
  %8 = alloca i32, align 4
  store %struct.crypto_sync_skcipher* %0, %struct.crypto_sync_skcipher** %5, align 8
  store %struct.scatterlist* %1, %struct.scatterlist** %6, align 8
  store %struct.scatterlist* %2, %struct.scatterlist** %7, align 8
  store i32 %3, i32* %8, align 4
  %9 = load i32, i32* @skreq, align 4
  %10 = load %struct.crypto_sync_skcipher*, %struct.crypto_sync_skcipher** %5, align 8
  %11 = call i32 @SYNC_SKCIPHER_REQUEST_ON_STACK(i32 %9, %struct.crypto_sync_skcipher* %10)
  %12 = load i32, i32* @skreq, align 4
  %13 = load %struct.crypto_sync_skcipher*, %struct.crypto_sync_skcipher** %5, align 8
  %14 = call i32 @skcipher_request_set_sync_tfm(i32 %12, %struct.crypto_sync_skcipher* %13)
  %15 = load i32, i32* @skreq, align 4
  %16 = load i32, i32* @CRYPTO_TFM_REQ_MAY_BACKLOG, align 4
  %17 = call i32 @skcipher_request_set_callback(i32 %15, i32 %16, i32* null, i32* null)
  %18 = load i32, i32* @skreq, align 4
  %19 = load %struct.scatterlist*, %struct.scatterlist** %6, align 8
  %20 = load %struct.scatterlist*, %struct.scatterlist** %7, align 8
  %21 = load i32, i32* %8, align 4
  %22 = call i32 @skcipher_request_set_crypt(i32 %18, %struct.scatterlist* %19, %struct.scatterlist* %20, i32 %21, i32* null)
  %23 = load i32, i32* @skreq, align 4
  %24 = call i32 @crypto_skcipher_encrypt(i32 %23)
  ret i32 %24
}

declare dso_local i32 @SYNC_SKCIPHER_REQUEST_ON_STACK(i32, %struct.crypto_sync_skcipher*) #1

declare dso_local i32 @skcipher_request_set_sync_tfm(i32, %struct.crypto_sync_skcipher*) #1

declare dso_local i32 @skcipher_request_set_callback(i32, i32, i32*, i32*) #1

declare dso_local i32 @skcipher_request_set_crypt(i32, %struct.scatterlist*, %struct.scatterlist*, i32, i32*) #1

declare dso_local i32 @crypto_skcipher_encrypt(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
