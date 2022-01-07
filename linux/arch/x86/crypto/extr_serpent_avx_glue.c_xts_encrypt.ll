; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/crypto/extr_serpent_avx_glue.c_xts_encrypt.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/crypto/extr_serpent_avx_glue.c_xts_encrypt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.skcipher_request = type { i32 }
%struct.crypto_skcipher = type { i32 }
%struct.serpent_xts_ctx = type { i32, i32 }

@serpent_enc_xts = common dso_local global i32 0, align 4
@__serpent_encrypt = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.skcipher_request*)* @xts_encrypt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xts_encrypt(%struct.skcipher_request* %0) #0 {
  %2 = alloca %struct.skcipher_request*, align 8
  %3 = alloca %struct.crypto_skcipher*, align 8
  %4 = alloca %struct.serpent_xts_ctx*, align 8
  store %struct.skcipher_request* %0, %struct.skcipher_request** %2, align 8
  %5 = load %struct.skcipher_request*, %struct.skcipher_request** %2, align 8
  %6 = call %struct.crypto_skcipher* @crypto_skcipher_reqtfm(%struct.skcipher_request* %5)
  store %struct.crypto_skcipher* %6, %struct.crypto_skcipher** %3, align 8
  %7 = load %struct.crypto_skcipher*, %struct.crypto_skcipher** %3, align 8
  %8 = call %struct.serpent_xts_ctx* @crypto_skcipher_ctx(%struct.crypto_skcipher* %7)
  store %struct.serpent_xts_ctx* %8, %struct.serpent_xts_ctx** %4, align 8
  %9 = load %struct.skcipher_request*, %struct.skcipher_request** %2, align 8
  %10 = load i32, i32* @__serpent_encrypt, align 4
  %11 = call i32 @XTS_TWEAK_CAST(i32 %10)
  %12 = load %struct.serpent_xts_ctx*, %struct.serpent_xts_ctx** %4, align 8
  %13 = getelementptr inbounds %struct.serpent_xts_ctx, %struct.serpent_xts_ctx* %12, i32 0, i32 1
  %14 = load %struct.serpent_xts_ctx*, %struct.serpent_xts_ctx** %4, align 8
  %15 = getelementptr inbounds %struct.serpent_xts_ctx, %struct.serpent_xts_ctx* %14, i32 0, i32 0
  %16 = call i32 @glue_xts_req_128bit(i32* @serpent_enc_xts, %struct.skcipher_request* %9, i32 %11, i32* %13, i32* %15, i32 0)
  ret i32 %16
}

declare dso_local %struct.crypto_skcipher* @crypto_skcipher_reqtfm(%struct.skcipher_request*) #1

declare dso_local %struct.serpent_xts_ctx* @crypto_skcipher_ctx(%struct.crypto_skcipher*) #1

declare dso_local i32 @glue_xts_req_128bit(i32*, %struct.skcipher_request*, i32, i32*, i32*, i32) #1

declare dso_local i32 @XTS_TWEAK_CAST(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
