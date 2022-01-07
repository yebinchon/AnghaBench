; ModuleID = '/home/carl/AnghaBench/linux/arch/arm/crypto/extr_aes-neonbs-glue.c_cbc_decrypt.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm/crypto/extr_aes-neonbs-glue.c_cbc_decrypt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.skcipher_request = type { i32 }
%struct.crypto_skcipher = type { i32 }
%struct.aesbs_cbc_ctx = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32, i32 }
%struct.skcipher_walk = type { i32, i32, i32, i32, %struct.TYPE_9__, %struct.TYPE_7__ }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }

@AES_BLOCK_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.skcipher_request*)* @cbc_decrypt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cbc_decrypt(%struct.skcipher_request* %0) #0 {
  %2 = alloca %struct.skcipher_request*, align 8
  %3 = alloca %struct.crypto_skcipher*, align 8
  %4 = alloca %struct.aesbs_cbc_ctx*, align 8
  %5 = alloca %struct.skcipher_walk, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.skcipher_request* %0, %struct.skcipher_request** %2, align 8
  %8 = load %struct.skcipher_request*, %struct.skcipher_request** %2, align 8
  %9 = call %struct.crypto_skcipher* @crypto_skcipher_reqtfm(%struct.skcipher_request* %8)
  store %struct.crypto_skcipher* %9, %struct.crypto_skcipher** %3, align 8
  %10 = load %struct.crypto_skcipher*, %struct.crypto_skcipher** %3, align 8
  %11 = call %struct.aesbs_cbc_ctx* @crypto_skcipher_ctx(%struct.crypto_skcipher* %10)
  store %struct.aesbs_cbc_ctx* %11, %struct.aesbs_cbc_ctx** %4, align 8
  %12 = load %struct.skcipher_request*, %struct.skcipher_request** %2, align 8
  %13 = call i32 @skcipher_walk_virt(%struct.skcipher_walk* %5, %struct.skcipher_request* %12, i32 0)
  store i32 %13, i32* %6, align 4
  br label %14

14:                                               ; preds = %36, %1
  %15 = getelementptr inbounds %struct.skcipher_walk, %struct.skcipher_walk* %5, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @AES_BLOCK_SIZE, align 4
  %18 = icmp uge i32 %16, %17
  br i1 %18, label %19, label %66

19:                                               ; preds = %14
  %20 = getelementptr inbounds %struct.skcipher_walk, %struct.skcipher_walk* %5, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @AES_BLOCK_SIZE, align 4
  %23 = udiv i32 %21, %22
  store i32 %23, i32* %7, align 4
  %24 = getelementptr inbounds %struct.skcipher_walk, %struct.skcipher_walk* %5, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = getelementptr inbounds %struct.skcipher_walk, %struct.skcipher_walk* %5, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = icmp ult i32 %25, %27
  br i1 %28, label %29, label %36

29:                                               ; preds = %19
  %30 = load i32, i32* %7, align 4
  %31 = getelementptr inbounds %struct.skcipher_walk, %struct.skcipher_walk* %5, i32 0, i32 2
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @AES_BLOCK_SIZE, align 4
  %34 = udiv i32 %32, %33
  %35 = call i32 @round_down(i32 %30, i32 %34)
  store i32 %35, i32* %7, align 4
  br label %36

36:                                               ; preds = %29, %19
  %37 = call i32 (...) @kernel_neon_begin()
  %38 = getelementptr inbounds %struct.skcipher_walk, %struct.skcipher_walk* %5, i32 0, i32 5
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = getelementptr inbounds %struct.skcipher_walk, %struct.skcipher_walk* %5, i32 0, i32 4
  %43 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.aesbs_cbc_ctx*, %struct.aesbs_cbc_ctx** %4, align 8
  %47 = getelementptr inbounds %struct.aesbs_cbc_ctx, %struct.aesbs_cbc_ctx* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.aesbs_cbc_ctx*, %struct.aesbs_cbc_ctx** %4, align 8
  %51 = getelementptr inbounds %struct.aesbs_cbc_ctx, %struct.aesbs_cbc_ctx* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* %7, align 4
  %55 = getelementptr inbounds %struct.skcipher_walk, %struct.skcipher_walk* %5, i32 0, i32 3
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @aesbs_cbc_decrypt(i32 %41, i32 %45, i32 %49, i32 %53, i32 %54, i32 %56)
  %58 = call i32 (...) @kernel_neon_end()
  %59 = getelementptr inbounds %struct.skcipher_walk, %struct.skcipher_walk* %5, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* %7, align 4
  %62 = load i32, i32* @AES_BLOCK_SIZE, align 4
  %63 = mul i32 %61, %62
  %64 = sub i32 %60, %63
  %65 = call i32 @skcipher_walk_done(%struct.skcipher_walk* %5, i32 %64)
  store i32 %65, i32* %6, align 4
  br label %14

66:                                               ; preds = %14
  %67 = load i32, i32* %6, align 4
  ret i32 %67
}

declare dso_local %struct.crypto_skcipher* @crypto_skcipher_reqtfm(%struct.skcipher_request*) #1

declare dso_local %struct.aesbs_cbc_ctx* @crypto_skcipher_ctx(%struct.crypto_skcipher*) #1

declare dso_local i32 @skcipher_walk_virt(%struct.skcipher_walk*, %struct.skcipher_request*, i32) #1

declare dso_local i32 @round_down(i32, i32) #1

declare dso_local i32 @kernel_neon_begin(...) #1

declare dso_local i32 @aesbs_cbc_decrypt(i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @kernel_neon_end(...) #1

declare dso_local i32 @skcipher_walk_done(%struct.skcipher_walk*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
