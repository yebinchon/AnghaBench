; ModuleID = '/home/carl/AnghaBench/linux/crypto/extr_pcrypt.c_pcrypt_aead_decrypt.c'
source_filename = "/home/carl/AnghaBench/linux/crypto/extr_pcrypt.c_pcrypt_aead_decrypt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aead_request = type { i32, i32, i32, i32, i32 }
%struct.pcrypt_request = type { i32 }
%struct.padata_priv = type { i32, i32 }
%struct.crypto_aead = type { i32 }
%struct.pcrypt_aead_ctx = type { i32, i32 }

@pcrypt_aead_dec = common dso_local global i32 0, align 4
@pcrypt_aead_serial = common dso_local global i32 0, align 4
@CRYPTO_TFM_REQ_MAY_SLEEP = common dso_local global i32 0, align 4
@pcrypt_aead_done = common dso_local global i32 0, align 4
@pdecrypt = common dso_local global i32 0, align 4
@EINPROGRESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.aead_request*)* @pcrypt_aead_decrypt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pcrypt_aead_decrypt(%struct.aead_request* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.aead_request*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.pcrypt_request*, align 8
  %6 = alloca %struct.aead_request*, align 8
  %7 = alloca %struct.padata_priv*, align 8
  %8 = alloca %struct.crypto_aead*, align 8
  %9 = alloca %struct.pcrypt_aead_ctx*, align 8
  %10 = alloca i32, align 4
  store %struct.aead_request* %0, %struct.aead_request** %3, align 8
  %11 = load %struct.aead_request*, %struct.aead_request** %3, align 8
  %12 = call %struct.pcrypt_request* @aead_request_ctx(%struct.aead_request* %11)
  store %struct.pcrypt_request* %12, %struct.pcrypt_request** %5, align 8
  %13 = load %struct.pcrypt_request*, %struct.pcrypt_request** %5, align 8
  %14 = call %struct.aead_request* @pcrypt_request_ctx(%struct.pcrypt_request* %13)
  store %struct.aead_request* %14, %struct.aead_request** %6, align 8
  %15 = load %struct.pcrypt_request*, %struct.pcrypt_request** %5, align 8
  %16 = call %struct.padata_priv* @pcrypt_request_padata(%struct.pcrypt_request* %15)
  store %struct.padata_priv* %16, %struct.padata_priv** %7, align 8
  %17 = load %struct.aead_request*, %struct.aead_request** %3, align 8
  %18 = call %struct.crypto_aead* @crypto_aead_reqtfm(%struct.aead_request* %17)
  store %struct.crypto_aead* %18, %struct.crypto_aead** %8, align 8
  %19 = load %struct.crypto_aead*, %struct.crypto_aead** %8, align 8
  %20 = call %struct.pcrypt_aead_ctx* @crypto_aead_ctx(%struct.crypto_aead* %19)
  store %struct.pcrypt_aead_ctx* %20, %struct.pcrypt_aead_ctx** %9, align 8
  %21 = load %struct.aead_request*, %struct.aead_request** %3, align 8
  %22 = call i32 @aead_request_flags(%struct.aead_request* %21)
  store i32 %22, i32* %10, align 4
  %23 = load %struct.padata_priv*, %struct.padata_priv** %7, align 8
  %24 = call i32 @memset(%struct.padata_priv* %23, i32 0, i32 8)
  %25 = load i32, i32* @pcrypt_aead_dec, align 4
  %26 = load %struct.padata_priv*, %struct.padata_priv** %7, align 8
  %27 = getelementptr inbounds %struct.padata_priv, %struct.padata_priv* %26, i32 0, i32 1
  store i32 %25, i32* %27, align 4
  %28 = load i32, i32* @pcrypt_aead_serial, align 4
  %29 = load %struct.padata_priv*, %struct.padata_priv** %7, align 8
  %30 = getelementptr inbounds %struct.padata_priv, %struct.padata_priv* %29, i32 0, i32 0
  store i32 %28, i32* %30, align 4
  %31 = load %struct.aead_request*, %struct.aead_request** %6, align 8
  %32 = load %struct.pcrypt_aead_ctx*, %struct.pcrypt_aead_ctx** %9, align 8
  %33 = getelementptr inbounds %struct.pcrypt_aead_ctx, %struct.pcrypt_aead_ctx* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @aead_request_set_tfm(%struct.aead_request* %31, i32 %34)
  %36 = load %struct.aead_request*, %struct.aead_request** %6, align 8
  %37 = load i32, i32* %10, align 4
  %38 = load i32, i32* @CRYPTO_TFM_REQ_MAY_SLEEP, align 4
  %39 = xor i32 %38, -1
  %40 = and i32 %37, %39
  %41 = load i32, i32* @pcrypt_aead_done, align 4
  %42 = load %struct.aead_request*, %struct.aead_request** %3, align 8
  %43 = call i32 @aead_request_set_callback(%struct.aead_request* %36, i32 %40, i32 %41, %struct.aead_request* %42)
  %44 = load %struct.aead_request*, %struct.aead_request** %6, align 8
  %45 = load %struct.aead_request*, %struct.aead_request** %3, align 8
  %46 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %45, i32 0, i32 4
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.aead_request*, %struct.aead_request** %3, align 8
  %49 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %48, i32 0, i32 3
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.aead_request*, %struct.aead_request** %3, align 8
  %52 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.aead_request*, %struct.aead_request** %3, align 8
  %55 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @aead_request_set_crypt(%struct.aead_request* %44, i32 %47, i32 %50, i32 %53, i32 %56)
  %58 = load %struct.aead_request*, %struct.aead_request** %6, align 8
  %59 = load %struct.aead_request*, %struct.aead_request** %3, align 8
  %60 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @aead_request_set_ad(%struct.aead_request* %58, i32 %61)
  %63 = load i32, i32* @pdecrypt, align 4
  %64 = load %struct.padata_priv*, %struct.padata_priv** %7, align 8
  %65 = load %struct.pcrypt_aead_ctx*, %struct.pcrypt_aead_ctx** %9, align 8
  %66 = getelementptr inbounds %struct.pcrypt_aead_ctx, %struct.pcrypt_aead_ctx* %65, i32 0, i32 0
  %67 = call i32 @padata_do_parallel(i32 %63, %struct.padata_priv* %64, i32* %66)
  store i32 %67, i32* %4, align 4
  %68 = load i32, i32* %4, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %73, label %70

70:                                               ; preds = %1
  %71 = load i32, i32* @EINPROGRESS, align 4
  %72 = sub nsw i32 0, %71
  store i32 %72, i32* %2, align 4
  br label %75

73:                                               ; preds = %1
  %74 = load i32, i32* %4, align 4
  store i32 %74, i32* %2, align 4
  br label %75

75:                                               ; preds = %73, %70
  %76 = load i32, i32* %2, align 4
  ret i32 %76
}

declare dso_local %struct.pcrypt_request* @aead_request_ctx(%struct.aead_request*) #1

declare dso_local %struct.aead_request* @pcrypt_request_ctx(%struct.pcrypt_request*) #1

declare dso_local %struct.padata_priv* @pcrypt_request_padata(%struct.pcrypt_request*) #1

declare dso_local %struct.crypto_aead* @crypto_aead_reqtfm(%struct.aead_request*) #1

declare dso_local %struct.pcrypt_aead_ctx* @crypto_aead_ctx(%struct.crypto_aead*) #1

declare dso_local i32 @aead_request_flags(%struct.aead_request*) #1

declare dso_local i32 @memset(%struct.padata_priv*, i32, i32) #1

declare dso_local i32 @aead_request_set_tfm(%struct.aead_request*, i32) #1

declare dso_local i32 @aead_request_set_callback(%struct.aead_request*, i32, i32, %struct.aead_request*) #1

declare dso_local i32 @aead_request_set_crypt(%struct.aead_request*, i32, i32, i32, i32) #1

declare dso_local i32 @aead_request_set_ad(%struct.aead_request*, i32) #1

declare dso_local i32 @padata_do_parallel(i32, %struct.padata_priv*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
