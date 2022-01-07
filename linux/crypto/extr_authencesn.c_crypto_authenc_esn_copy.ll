; ModuleID = '/home/carl/AnghaBench/linux/crypto/extr_authencesn.c_crypto_authenc_esn_copy.c'
source_filename = "/home/carl/AnghaBench/linux/crypto/extr_authencesn.c_crypto_authenc_esn_copy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aead_request = type { i32, i32 }
%struct.crypto_aead = type { i32 }
%struct.crypto_authenc_esn_ctx = type { i32 }

@skreq = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.aead_request*, i32)* @crypto_authenc_esn_copy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @crypto_authenc_esn_copy(%struct.aead_request* %0, i32 %1) #0 {
  %3 = alloca %struct.aead_request*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.crypto_aead*, align 8
  %6 = alloca %struct.crypto_authenc_esn_ctx*, align 8
  store %struct.aead_request* %0, %struct.aead_request** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.aead_request*, %struct.aead_request** %3, align 8
  %8 = call %struct.crypto_aead* @crypto_aead_reqtfm(%struct.aead_request* %7)
  store %struct.crypto_aead* %8, %struct.crypto_aead** %5, align 8
  %9 = load %struct.crypto_aead*, %struct.crypto_aead** %5, align 8
  %10 = call %struct.crypto_authenc_esn_ctx* @crypto_aead_ctx(%struct.crypto_aead* %9)
  store %struct.crypto_authenc_esn_ctx* %10, %struct.crypto_authenc_esn_ctx** %6, align 8
  %11 = load i32, i32* @skreq, align 4
  %12 = load %struct.crypto_authenc_esn_ctx*, %struct.crypto_authenc_esn_ctx** %6, align 8
  %13 = getelementptr inbounds %struct.crypto_authenc_esn_ctx, %struct.crypto_authenc_esn_ctx* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @SYNC_SKCIPHER_REQUEST_ON_STACK(i32 %11, i32 %14)
  %16 = load i32, i32* @skreq, align 4
  %17 = load %struct.crypto_authenc_esn_ctx*, %struct.crypto_authenc_esn_ctx** %6, align 8
  %18 = getelementptr inbounds %struct.crypto_authenc_esn_ctx, %struct.crypto_authenc_esn_ctx* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @skcipher_request_set_sync_tfm(i32 %16, i32 %19)
  %21 = load i32, i32* @skreq, align 4
  %22 = load %struct.aead_request*, %struct.aead_request** %3, align 8
  %23 = call i32 @aead_request_flags(%struct.aead_request* %22)
  %24 = call i32 @skcipher_request_set_callback(i32 %21, i32 %23, i32* null, i32* null)
  %25 = load i32, i32* @skreq, align 4
  %26 = load %struct.aead_request*, %struct.aead_request** %3, align 8
  %27 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.aead_request*, %struct.aead_request** %3, align 8
  %30 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* %4, align 4
  %33 = call i32 @skcipher_request_set_crypt(i32 %25, i32 %28, i32 %31, i32 %32, i32* null)
  %34 = load i32, i32* @skreq, align 4
  %35 = call i32 @crypto_skcipher_encrypt(i32 %34)
  ret i32 %35
}

declare dso_local %struct.crypto_aead* @crypto_aead_reqtfm(%struct.aead_request*) #1

declare dso_local %struct.crypto_authenc_esn_ctx* @crypto_aead_ctx(%struct.crypto_aead*) #1

declare dso_local i32 @SYNC_SKCIPHER_REQUEST_ON_STACK(i32, i32) #1

declare dso_local i32 @skcipher_request_set_sync_tfm(i32, i32) #1

declare dso_local i32 @skcipher_request_set_callback(i32, i32, i32*, i32*) #1

declare dso_local i32 @aead_request_flags(%struct.aead_request*) #1

declare dso_local i32 @skcipher_request_set_crypt(i32, i32, i32, i32, i32*) #1

declare dso_local i32 @crypto_skcipher_encrypt(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
