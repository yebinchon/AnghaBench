; ModuleID = '/home/carl/AnghaBench/linux/arch/arm/crypto/extr_aes-ce-glue.c_ecb_decrypt.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm/crypto/extr_aes-ce-glue.c_ecb_decrypt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.skcipher_request = type { i32 }
%struct.crypto_skcipher = type { i32 }
%struct.crypto_aes_ctx = type { i32 }
%struct.skcipher_walk = type { i32, %struct.TYPE_6__, %struct.TYPE_7__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_7__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }

@AES_BLOCK_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.skcipher_request*)* @ecb_decrypt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ecb_decrypt(%struct.skcipher_request* %0) #0 {
  %2 = alloca %struct.skcipher_request*, align 8
  %3 = alloca %struct.crypto_skcipher*, align 8
  %4 = alloca %struct.crypto_aes_ctx*, align 8
  %5 = alloca %struct.skcipher_walk, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.skcipher_request* %0, %struct.skcipher_request** %2, align 8
  %8 = load %struct.skcipher_request*, %struct.skcipher_request** %2, align 8
  %9 = call %struct.crypto_skcipher* @crypto_skcipher_reqtfm(%struct.skcipher_request* %8)
  store %struct.crypto_skcipher* %9, %struct.crypto_skcipher** %3, align 8
  %10 = load %struct.crypto_skcipher*, %struct.crypto_skcipher** %3, align 8
  %11 = call %struct.crypto_aes_ctx* @crypto_skcipher_ctx(%struct.crypto_skcipher* %10)
  store %struct.crypto_aes_ctx* %11, %struct.crypto_aes_ctx** %4, align 8
  %12 = load %struct.skcipher_request*, %struct.skcipher_request** %2, align 8
  %13 = call i32 @skcipher_walk_virt(%struct.skcipher_walk* %5, %struct.skcipher_request* %12, i32 0)
  store i32 %13, i32* %7, align 4
  br label %14

14:                                               ; preds = %20, %1
  %15 = getelementptr inbounds %struct.skcipher_walk, %struct.skcipher_walk* %5, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @AES_BLOCK_SIZE, align 4
  %18 = udiv i32 %16, %17
  store i32 %18, i32* %6, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %43

20:                                               ; preds = %14
  %21 = call i32 (...) @kernel_neon_begin()
  %22 = getelementptr inbounds %struct.skcipher_walk, %struct.skcipher_walk* %5, i32 0, i32 2
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = getelementptr inbounds %struct.skcipher_walk, %struct.skcipher_walk* %5, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.crypto_aes_ctx*, %struct.crypto_aes_ctx** %4, align 8
  %31 = getelementptr inbounds %struct.crypto_aes_ctx, %struct.crypto_aes_ctx* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.crypto_aes_ctx*, %struct.crypto_aes_ctx** %4, align 8
  %34 = call i32 @num_rounds(%struct.crypto_aes_ctx* %33)
  %35 = load i32, i32* %6, align 4
  %36 = call i32 @ce_aes_ecb_decrypt(i32 %25, i32 %29, i32 %32, i32 %34, i32 %35)
  %37 = call i32 (...) @kernel_neon_end()
  %38 = getelementptr inbounds %struct.skcipher_walk, %struct.skcipher_walk* %5, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @AES_BLOCK_SIZE, align 4
  %41 = urem i32 %39, %40
  %42 = call i32 @skcipher_walk_done(%struct.skcipher_walk* %5, i32 %41)
  store i32 %42, i32* %7, align 4
  br label %14

43:                                               ; preds = %14
  %44 = load i32, i32* %7, align 4
  ret i32 %44
}

declare dso_local %struct.crypto_skcipher* @crypto_skcipher_reqtfm(%struct.skcipher_request*) #1

declare dso_local %struct.crypto_aes_ctx* @crypto_skcipher_ctx(%struct.crypto_skcipher*) #1

declare dso_local i32 @skcipher_walk_virt(%struct.skcipher_walk*, %struct.skcipher_request*, i32) #1

declare dso_local i32 @kernel_neon_begin(...) #1

declare dso_local i32 @ce_aes_ecb_decrypt(i32, i32, i32, i32, i32) #1

declare dso_local i32 @num_rounds(%struct.crypto_aes_ctx*) #1

declare dso_local i32 @kernel_neon_end(...) #1

declare dso_local i32 @skcipher_walk_done(%struct.skcipher_walk*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
