; ModuleID = '/home/carl/AnghaBench/linux/crypto/extr_authenc.c_crypto_authenc_copy_assoc.c'
source_filename = "/home/carl/AnghaBench/linux/crypto/extr_authenc.c_crypto_authenc_copy_assoc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aead_request = type { i32, i32, i32 }
%struct.crypto_aead = type { i32 }
%struct.crypto_authenc_ctx = type { i32 }

@skreq = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.aead_request*)* @crypto_authenc_copy_assoc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @crypto_authenc_copy_assoc(%struct.aead_request* %0) #0 {
  %2 = alloca %struct.aead_request*, align 8
  %3 = alloca %struct.crypto_aead*, align 8
  %4 = alloca %struct.crypto_authenc_ctx*, align 8
  store %struct.aead_request* %0, %struct.aead_request** %2, align 8
  %5 = load %struct.aead_request*, %struct.aead_request** %2, align 8
  %6 = call %struct.crypto_aead* @crypto_aead_reqtfm(%struct.aead_request* %5)
  store %struct.crypto_aead* %6, %struct.crypto_aead** %3, align 8
  %7 = load %struct.crypto_aead*, %struct.crypto_aead** %3, align 8
  %8 = call %struct.crypto_authenc_ctx* @crypto_aead_ctx(%struct.crypto_aead* %7)
  store %struct.crypto_authenc_ctx* %8, %struct.crypto_authenc_ctx** %4, align 8
  %9 = load i32, i32* @skreq, align 4
  %10 = load %struct.crypto_authenc_ctx*, %struct.crypto_authenc_ctx** %4, align 8
  %11 = getelementptr inbounds %struct.crypto_authenc_ctx, %struct.crypto_authenc_ctx* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @SYNC_SKCIPHER_REQUEST_ON_STACK(i32 %9, i32 %12)
  %14 = load i32, i32* @skreq, align 4
  %15 = load %struct.crypto_authenc_ctx*, %struct.crypto_authenc_ctx** %4, align 8
  %16 = getelementptr inbounds %struct.crypto_authenc_ctx, %struct.crypto_authenc_ctx* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @skcipher_request_set_sync_tfm(i32 %14, i32 %17)
  %19 = load i32, i32* @skreq, align 4
  %20 = load %struct.aead_request*, %struct.aead_request** %2, align 8
  %21 = call i32 @aead_request_flags(%struct.aead_request* %20)
  %22 = call i32 @skcipher_request_set_callback(i32 %19, i32 %21, i32* null, i32* null)
  %23 = load i32, i32* @skreq, align 4
  %24 = load %struct.aead_request*, %struct.aead_request** %2, align 8
  %25 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.aead_request*, %struct.aead_request** %2, align 8
  %28 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.aead_request*, %struct.aead_request** %2, align 8
  %31 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @skcipher_request_set_crypt(i32 %23, i32 %26, i32 %29, i32 %32, i32* null)
  %34 = load i32, i32* @skreq, align 4
  %35 = call i32 @crypto_skcipher_encrypt(i32 %34)
  ret i32 %35
}

declare dso_local %struct.crypto_aead* @crypto_aead_reqtfm(%struct.aead_request*) #1

declare dso_local %struct.crypto_authenc_ctx* @crypto_aead_ctx(%struct.crypto_aead*) #1

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
