; ModuleID = '/home/carl/AnghaBench/linux/arch/arm/crypto/extr_aes-ce-glue.c_cbc_decrypt_walk.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm/crypto/extr_aes-ce-glue.c_cbc_decrypt_walk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.skcipher_request = type { i32 }
%struct.skcipher_walk = type { i32, i32, %struct.TYPE_6__, %struct.TYPE_7__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_7__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }
%struct.crypto_skcipher = type { i32 }
%struct.crypto_aes_ctx = type { i32 }

@AES_BLOCK_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.skcipher_request*, %struct.skcipher_walk*)* @cbc_decrypt_walk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cbc_decrypt_walk(%struct.skcipher_request* %0, %struct.skcipher_walk* %1) #0 {
  %3 = alloca %struct.skcipher_request*, align 8
  %4 = alloca %struct.skcipher_walk*, align 8
  %5 = alloca %struct.crypto_skcipher*, align 8
  %6 = alloca %struct.crypto_aes_ctx*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.skcipher_request* %0, %struct.skcipher_request** %3, align 8
  store %struct.skcipher_walk* %1, %struct.skcipher_walk** %4, align 8
  %9 = load %struct.skcipher_request*, %struct.skcipher_request** %3, align 8
  %10 = call %struct.crypto_skcipher* @crypto_skcipher_reqtfm(%struct.skcipher_request* %9)
  store %struct.crypto_skcipher* %10, %struct.crypto_skcipher** %5, align 8
  %11 = load %struct.crypto_skcipher*, %struct.crypto_skcipher** %5, align 8
  %12 = call %struct.crypto_aes_ctx* @crypto_skcipher_ctx(%struct.crypto_skcipher* %11)
  store %struct.crypto_aes_ctx* %12, %struct.crypto_aes_ctx** %6, align 8
  store i32 0, i32* %8, align 4
  br label %13

13:                                               ; preds = %20, %2
  %14 = load %struct.skcipher_walk*, %struct.skcipher_walk** %4, align 8
  %15 = getelementptr inbounds %struct.skcipher_walk, %struct.skcipher_walk* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @AES_BLOCK_SIZE, align 4
  %18 = udiv i32 %16, %17
  store i32 %18, i32* %7, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %50

20:                                               ; preds = %13
  %21 = call i32 (...) @kernel_neon_begin()
  %22 = load %struct.skcipher_walk*, %struct.skcipher_walk** %4, align 8
  %23 = getelementptr inbounds %struct.skcipher_walk, %struct.skcipher_walk* %22, i32 0, i32 3
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.skcipher_walk*, %struct.skcipher_walk** %4, align 8
  %28 = getelementptr inbounds %struct.skcipher_walk, %struct.skcipher_walk* %27, i32 0, i32 2
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.crypto_aes_ctx*, %struct.crypto_aes_ctx** %6, align 8
  %33 = getelementptr inbounds %struct.crypto_aes_ctx, %struct.crypto_aes_ctx* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.crypto_aes_ctx*, %struct.crypto_aes_ctx** %6, align 8
  %36 = call i32 @num_rounds(%struct.crypto_aes_ctx* %35)
  %37 = load i32, i32* %7, align 4
  %38 = load %struct.skcipher_walk*, %struct.skcipher_walk** %4, align 8
  %39 = getelementptr inbounds %struct.skcipher_walk, %struct.skcipher_walk* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @ce_aes_cbc_decrypt(i32 %26, i32 %31, i32 %34, i32 %36, i32 %37, i32 %40)
  %42 = call i32 (...) @kernel_neon_end()
  %43 = load %struct.skcipher_walk*, %struct.skcipher_walk** %4, align 8
  %44 = load %struct.skcipher_walk*, %struct.skcipher_walk** %4, align 8
  %45 = getelementptr inbounds %struct.skcipher_walk, %struct.skcipher_walk* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* @AES_BLOCK_SIZE, align 4
  %48 = urem i32 %46, %47
  %49 = call i32 @skcipher_walk_done(%struct.skcipher_walk* %43, i32 %48)
  store i32 %49, i32* %8, align 4
  br label %13

50:                                               ; preds = %13
  %51 = load i32, i32* %8, align 4
  ret i32 %51
}

declare dso_local %struct.crypto_skcipher* @crypto_skcipher_reqtfm(%struct.skcipher_request*) #1

declare dso_local %struct.crypto_aes_ctx* @crypto_skcipher_ctx(%struct.crypto_skcipher*) #1

declare dso_local i32 @kernel_neon_begin(...) #1

declare dso_local i32 @ce_aes_cbc_decrypt(i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @num_rounds(%struct.crypto_aes_ctx*) #1

declare dso_local i32 @kernel_neon_end(...) #1

declare dso_local i32 @skcipher_walk_done(%struct.skcipher_walk*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
