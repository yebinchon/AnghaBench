; ModuleID = '/home/carl/AnghaBench/lede/package/kernel/lantiq/ltq-deu/src/extr_ifxmips_async_aes.c_ctr_aes_encrypt.c'
source_filename = "/home/carl/AnghaBench/lede/package/kernel/lantiq/ltq-deu/src/extr_ifxmips_async_aes.c_ctr_aes_encrypt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ablkcipher_request = type { i32 }
%struct.crypto_ablkcipher = type { i32 }
%struct.aes_ctx = type { i32 }

@CRYPTO_DIR_ENCRYPT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ablkcipher_request*)* @ctr_aes_encrypt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ctr_aes_encrypt(%struct.ablkcipher_request* %0) #0 {
  %2 = alloca %struct.ablkcipher_request*, align 8
  %3 = alloca %struct.crypto_ablkcipher*, align 8
  %4 = alloca %struct.aes_ctx*, align 8
  store %struct.ablkcipher_request* %0, %struct.ablkcipher_request** %2, align 8
  %5 = load %struct.ablkcipher_request*, %struct.ablkcipher_request** %2, align 8
  %6 = call %struct.crypto_ablkcipher* @crypto_ablkcipher_reqtfm(%struct.ablkcipher_request* %5)
  store %struct.crypto_ablkcipher* %6, %struct.crypto_ablkcipher** %3, align 8
  %7 = load %struct.crypto_ablkcipher*, %struct.crypto_ablkcipher** %3, align 8
  %8 = call %struct.aes_ctx* @crypto_ablkcipher_ctx(%struct.crypto_ablkcipher* %7)
  store %struct.aes_ctx* %8, %struct.aes_ctx** %4, align 8
  %9 = load %struct.aes_ctx*, %struct.aes_ctx** %4, align 8
  %10 = load %struct.ablkcipher_request*, %struct.ablkcipher_request** %2, align 8
  %11 = load %struct.ablkcipher_request*, %struct.ablkcipher_request** %2, align 8
  %12 = getelementptr inbounds %struct.ablkcipher_request, %struct.ablkcipher_request* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @CRYPTO_DIR_ENCRYPT, align 4
  %15 = call i32 @lq_aes_queue_mgr(%struct.aes_ctx* %9, %struct.ablkcipher_request* %10, i32 %13, i32 %14, i32 4)
  ret i32 %15
}

declare dso_local %struct.crypto_ablkcipher* @crypto_ablkcipher_reqtfm(%struct.ablkcipher_request*) #1

declare dso_local %struct.aes_ctx* @crypto_ablkcipher_ctx(%struct.crypto_ablkcipher*) #1

declare dso_local i32 @lq_aes_queue_mgr(%struct.aes_ctx*, %struct.ablkcipher_request*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
