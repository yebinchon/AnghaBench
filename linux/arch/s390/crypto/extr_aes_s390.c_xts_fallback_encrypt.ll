; ModuleID = '/home/carl/AnghaBench/linux/arch/s390/crypto/extr_aes_s390.c_xts_fallback_encrypt.c'
source_filename = "/home/carl/AnghaBench/linux/arch/s390/crypto/extr_aes_s390.c_xts_fallback_encrypt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.blkcipher_desc = type { i32, i32, %struct.crypto_blkcipher* }
%struct.crypto_blkcipher = type { i32 }
%struct.scatterlist = type { i32 }
%struct.s390_xts_ctx = type { i32 }

@req = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.blkcipher_desc*, %struct.scatterlist*, %struct.scatterlist*, i32)* @xts_fallback_encrypt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xts_fallback_encrypt(%struct.blkcipher_desc* %0, %struct.scatterlist* %1, %struct.scatterlist* %2, i32 %3) #0 {
  %5 = alloca %struct.blkcipher_desc*, align 8
  %6 = alloca %struct.scatterlist*, align 8
  %7 = alloca %struct.scatterlist*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.crypto_blkcipher*, align 8
  %10 = alloca %struct.s390_xts_ctx*, align 8
  %11 = alloca i32, align 4
  store %struct.blkcipher_desc* %0, %struct.blkcipher_desc** %5, align 8
  store %struct.scatterlist* %1, %struct.scatterlist** %6, align 8
  store %struct.scatterlist* %2, %struct.scatterlist** %7, align 8
  store i32 %3, i32* %8, align 4
  %12 = load %struct.blkcipher_desc*, %struct.blkcipher_desc** %5, align 8
  %13 = getelementptr inbounds %struct.blkcipher_desc, %struct.blkcipher_desc* %12, i32 0, i32 2
  %14 = load %struct.crypto_blkcipher*, %struct.crypto_blkcipher** %13, align 8
  store %struct.crypto_blkcipher* %14, %struct.crypto_blkcipher** %9, align 8
  %15 = load %struct.crypto_blkcipher*, %struct.crypto_blkcipher** %9, align 8
  %16 = call %struct.s390_xts_ctx* @crypto_blkcipher_ctx(%struct.crypto_blkcipher* %15)
  store %struct.s390_xts_ctx* %16, %struct.s390_xts_ctx** %10, align 8
  %17 = load i32, i32* @req, align 4
  %18 = load %struct.s390_xts_ctx*, %struct.s390_xts_ctx** %10, align 8
  %19 = getelementptr inbounds %struct.s390_xts_ctx, %struct.s390_xts_ctx* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @SYNC_SKCIPHER_REQUEST_ON_STACK(i32 %17, i32 %20)
  %22 = load i32, i32* @req, align 4
  %23 = load %struct.s390_xts_ctx*, %struct.s390_xts_ctx** %10, align 8
  %24 = getelementptr inbounds %struct.s390_xts_ctx, %struct.s390_xts_ctx* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @skcipher_request_set_sync_tfm(i32 %22, i32 %25)
  %27 = load i32, i32* @req, align 4
  %28 = load %struct.blkcipher_desc*, %struct.blkcipher_desc** %5, align 8
  %29 = getelementptr inbounds %struct.blkcipher_desc, %struct.blkcipher_desc* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @skcipher_request_set_callback(i32 %27, i32 %30, i32* null, i32* null)
  %32 = load i32, i32* @req, align 4
  %33 = load %struct.scatterlist*, %struct.scatterlist** %7, align 8
  %34 = load %struct.scatterlist*, %struct.scatterlist** %6, align 8
  %35 = load i32, i32* %8, align 4
  %36 = load %struct.blkcipher_desc*, %struct.blkcipher_desc** %5, align 8
  %37 = getelementptr inbounds %struct.blkcipher_desc, %struct.blkcipher_desc* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = call i32 @skcipher_request_set_crypt(i32 %32, %struct.scatterlist* %33, %struct.scatterlist* %34, i32 %35, i32 %38)
  %40 = load i32, i32* @req, align 4
  %41 = call i32 @crypto_skcipher_encrypt(i32 %40)
  store i32 %41, i32* %11, align 4
  %42 = load i32, i32* @req, align 4
  %43 = call i32 @skcipher_request_zero(i32 %42)
  %44 = load i32, i32* %11, align 4
  ret i32 %44
}

declare dso_local %struct.s390_xts_ctx* @crypto_blkcipher_ctx(%struct.crypto_blkcipher*) #1

declare dso_local i32 @SYNC_SKCIPHER_REQUEST_ON_STACK(i32, i32) #1

declare dso_local i32 @skcipher_request_set_sync_tfm(i32, i32) #1

declare dso_local i32 @skcipher_request_set_callback(i32, i32, i32*, i32*) #1

declare dso_local i32 @skcipher_request_set_crypt(i32, %struct.scatterlist*, %struct.scatterlist*, i32, i32) #1

declare dso_local i32 @crypto_skcipher_encrypt(i32) #1

declare dso_local i32 @skcipher_request_zero(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
