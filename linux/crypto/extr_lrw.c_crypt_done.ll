; ModuleID = '/home/carl/AnghaBench/linux/crypto/extr_lrw.c_crypt_done.c'
source_filename = "/home/carl/AnghaBench/linux/crypto/extr_lrw.c_crypt_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crypto_async_request = type { %struct.skcipher_request* }
%struct.skcipher_request = type { i32 }
%struct.rctx = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@CRYPTO_TFM_REQ_MAY_SLEEP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.crypto_async_request*, i32)* @crypt_done to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @crypt_done(%struct.crypto_async_request* %0, i32 %1) #0 {
  %3 = alloca %struct.crypto_async_request*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.skcipher_request*, align 8
  %6 = alloca %struct.rctx*, align 8
  store %struct.crypto_async_request* %0, %struct.crypto_async_request** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.crypto_async_request*, %struct.crypto_async_request** %3, align 8
  %8 = getelementptr inbounds %struct.crypto_async_request, %struct.crypto_async_request* %7, i32 0, i32 0
  %9 = load %struct.skcipher_request*, %struct.skcipher_request** %8, align 8
  store %struct.skcipher_request* %9, %struct.skcipher_request** %5, align 8
  %10 = load i32, i32* %4, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %25, label %12

12:                                               ; preds = %2
  %13 = load %struct.skcipher_request*, %struct.skcipher_request** %5, align 8
  %14 = call %struct.rctx* @skcipher_request_ctx(%struct.skcipher_request* %13)
  store %struct.rctx* %14, %struct.rctx** %6, align 8
  %15 = load i32, i32* @CRYPTO_TFM_REQ_MAY_SLEEP, align 4
  %16 = xor i32 %15, -1
  %17 = load %struct.rctx*, %struct.rctx** %6, align 8
  %18 = getelementptr inbounds %struct.rctx, %struct.rctx* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = and i32 %21, %16
  store i32 %22, i32* %20, align 4
  %23 = load %struct.skcipher_request*, %struct.skcipher_request** %5, align 8
  %24 = call i32 @xor_tweak_post(%struct.skcipher_request* %23)
  store i32 %24, i32* %4, align 4
  br label %25

25:                                               ; preds = %12, %2
  %26 = load %struct.skcipher_request*, %struct.skcipher_request** %5, align 8
  %27 = load i32, i32* %4, align 4
  %28 = call i32 @skcipher_request_complete(%struct.skcipher_request* %26, i32 %27)
  ret void
}

declare dso_local %struct.rctx* @skcipher_request_ctx(%struct.skcipher_request*) #1

declare dso_local i32 @xor_tweak_post(%struct.skcipher_request*) #1

declare dso_local i32 @skcipher_request_complete(%struct.skcipher_request*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
