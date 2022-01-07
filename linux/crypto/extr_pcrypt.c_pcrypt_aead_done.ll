; ModuleID = '/home/carl/AnghaBench/linux/crypto/extr_pcrypt.c_pcrypt_aead_done.c'
source_filename = "/home/carl/AnghaBench/linux/crypto/extr_pcrypt.c_pcrypt_aead_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crypto_async_request = type { %struct.aead_request* }
%struct.aead_request = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.pcrypt_request = type { i32 }
%struct.padata_priv = type { i32 }

@CRYPTO_TFM_REQ_MAY_SLEEP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.crypto_async_request*, i32)* @pcrypt_aead_done to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pcrypt_aead_done(%struct.crypto_async_request* %0, i32 %1) #0 {
  %3 = alloca %struct.crypto_async_request*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.aead_request*, align 8
  %6 = alloca %struct.pcrypt_request*, align 8
  %7 = alloca %struct.padata_priv*, align 8
  store %struct.crypto_async_request* %0, %struct.crypto_async_request** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.crypto_async_request*, %struct.crypto_async_request** %3, align 8
  %9 = getelementptr inbounds %struct.crypto_async_request, %struct.crypto_async_request* %8, i32 0, i32 0
  %10 = load %struct.aead_request*, %struct.aead_request** %9, align 8
  store %struct.aead_request* %10, %struct.aead_request** %5, align 8
  %11 = load %struct.aead_request*, %struct.aead_request** %5, align 8
  %12 = call %struct.pcrypt_request* @aead_request_ctx(%struct.aead_request* %11)
  store %struct.pcrypt_request* %12, %struct.pcrypt_request** %6, align 8
  %13 = load %struct.pcrypt_request*, %struct.pcrypt_request** %6, align 8
  %14 = call %struct.padata_priv* @pcrypt_request_padata(%struct.pcrypt_request* %13)
  store %struct.padata_priv* %14, %struct.padata_priv** %7, align 8
  %15 = load i32, i32* %4, align 4
  %16 = load %struct.padata_priv*, %struct.padata_priv** %7, align 8
  %17 = getelementptr inbounds %struct.padata_priv, %struct.padata_priv* %16, i32 0, i32 0
  store i32 %15, i32* %17, align 4
  %18 = load i32, i32* @CRYPTO_TFM_REQ_MAY_SLEEP, align 4
  %19 = xor i32 %18, -1
  %20 = load %struct.aead_request*, %struct.aead_request** %5, align 8
  %21 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = and i32 %23, %19
  store i32 %24, i32* %22, align 4
  %25 = load %struct.padata_priv*, %struct.padata_priv** %7, align 8
  %26 = call i32 @padata_do_serial(%struct.padata_priv* %25)
  ret void
}

declare dso_local %struct.pcrypt_request* @aead_request_ctx(%struct.aead_request*) #1

declare dso_local %struct.padata_priv* @pcrypt_request_padata(%struct.pcrypt_request*) #1

declare dso_local i32 @padata_do_serial(%struct.padata_priv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
