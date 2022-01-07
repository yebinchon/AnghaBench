; ModuleID = '/home/carl/AnghaBench/linux/crypto/extr_gcm.c_crypto_gcm_encrypt.c'
source_filename = "/home/carl/AnghaBench/linux/crypto/extr_gcm.c_crypto_gcm_encrypt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aead_request = type { i32 }
%struct.crypto_gcm_req_priv_ctx = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.skcipher_request }
%struct.skcipher_request = type { i32 }

@gcm_encrypt_done = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.aead_request*)* @crypto_gcm_encrypt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @crypto_gcm_encrypt(%struct.aead_request* %0) #0 {
  %2 = alloca %struct.aead_request*, align 8
  %3 = alloca %struct.crypto_gcm_req_priv_ctx*, align 8
  %4 = alloca %struct.skcipher_request*, align 8
  %5 = alloca i32, align 4
  store %struct.aead_request* %0, %struct.aead_request** %2, align 8
  %6 = load %struct.aead_request*, %struct.aead_request** %2, align 8
  %7 = call %struct.crypto_gcm_req_priv_ctx* @crypto_gcm_reqctx(%struct.aead_request* %6)
  store %struct.crypto_gcm_req_priv_ctx* %7, %struct.crypto_gcm_req_priv_ctx** %3, align 8
  %8 = load %struct.crypto_gcm_req_priv_ctx*, %struct.crypto_gcm_req_priv_ctx** %3, align 8
  %9 = getelementptr inbounds %struct.crypto_gcm_req_priv_ctx, %struct.crypto_gcm_req_priv_ctx* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  store %struct.skcipher_request* %10, %struct.skcipher_request** %4, align 8
  %11 = load %struct.aead_request*, %struct.aead_request** %2, align 8
  %12 = call i32 @aead_request_flags(%struct.aead_request* %11)
  store i32 %12, i32* %5, align 4
  %13 = load %struct.aead_request*, %struct.aead_request** %2, align 8
  %14 = call i32 @crypto_gcm_init_common(%struct.aead_request* %13)
  %15 = load %struct.aead_request*, %struct.aead_request** %2, align 8
  %16 = load %struct.aead_request*, %struct.aead_request** %2, align 8
  %17 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @crypto_gcm_init_crypt(%struct.aead_request* %15, i32 %18)
  %20 = load %struct.skcipher_request*, %struct.skcipher_request** %4, align 8
  %21 = load i32, i32* %5, align 4
  %22 = load i32, i32* @gcm_encrypt_done, align 4
  %23 = load %struct.aead_request*, %struct.aead_request** %2, align 8
  %24 = call i32 @skcipher_request_set_callback(%struct.skcipher_request* %20, i32 %21, i32 %22, %struct.aead_request* %23)
  %25 = load %struct.skcipher_request*, %struct.skcipher_request** %4, align 8
  %26 = call i64 @crypto_skcipher_encrypt(%struct.skcipher_request* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %1
  br label %34

29:                                               ; preds = %1
  %30 = load %struct.aead_request*, %struct.aead_request** %2, align 8
  %31 = load i32, i32* %5, align 4
  %32 = call i32 @gcm_encrypt_continue(%struct.aead_request* %30, i32 %31)
  %33 = sext i32 %32 to i64
  br label %34

34:                                               ; preds = %29, %28
  %35 = phi i64 [ %26, %28 ], [ %33, %29 ]
  %36 = trunc i64 %35 to i32
  ret i32 %36
}

declare dso_local %struct.crypto_gcm_req_priv_ctx* @crypto_gcm_reqctx(%struct.aead_request*) #1

declare dso_local i32 @aead_request_flags(%struct.aead_request*) #1

declare dso_local i32 @crypto_gcm_init_common(%struct.aead_request*) #1

declare dso_local i32 @crypto_gcm_init_crypt(%struct.aead_request*, i32) #1

declare dso_local i32 @skcipher_request_set_callback(%struct.skcipher_request*, i32, i32, %struct.aead_request*) #1

declare dso_local i64 @crypto_skcipher_encrypt(%struct.skcipher_request*) #1

declare dso_local i32 @gcm_encrypt_continue(%struct.aead_request*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
