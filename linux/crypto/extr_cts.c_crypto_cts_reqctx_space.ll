; ModuleID = '/home/carl/AnghaBench/linux/crypto/extr_cts.c_crypto_cts_reqctx_space.c'
source_filename = "/home/carl/AnghaBench/linux/crypto/extr_cts.c_crypto_cts_reqctx_space.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.skcipher_request = type { i32 }
%struct.crypto_cts_reqctx = type { i32 }
%struct.crypto_skcipher = type { i32 }
%struct.crypto_cts_ctx = type { %struct.crypto_skcipher* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.skcipher_request*)* @crypto_cts_reqctx_space to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @crypto_cts_reqctx_space(%struct.skcipher_request* %0) #0 {
  %2 = alloca %struct.skcipher_request*, align 8
  %3 = alloca %struct.crypto_cts_reqctx*, align 8
  %4 = alloca %struct.crypto_skcipher*, align 8
  %5 = alloca %struct.crypto_cts_ctx*, align 8
  %6 = alloca %struct.crypto_skcipher*, align 8
  store %struct.skcipher_request* %0, %struct.skcipher_request** %2, align 8
  %7 = load %struct.skcipher_request*, %struct.skcipher_request** %2, align 8
  %8 = call %struct.crypto_cts_reqctx* @skcipher_request_ctx(%struct.skcipher_request* %7)
  store %struct.crypto_cts_reqctx* %8, %struct.crypto_cts_reqctx** %3, align 8
  %9 = load %struct.skcipher_request*, %struct.skcipher_request** %2, align 8
  %10 = call %struct.crypto_skcipher* @crypto_skcipher_reqtfm(%struct.skcipher_request* %9)
  store %struct.crypto_skcipher* %10, %struct.crypto_skcipher** %4, align 8
  %11 = load %struct.crypto_skcipher*, %struct.crypto_skcipher** %4, align 8
  %12 = call %struct.crypto_cts_ctx* @crypto_skcipher_ctx(%struct.crypto_skcipher* %11)
  store %struct.crypto_cts_ctx* %12, %struct.crypto_cts_ctx** %5, align 8
  %13 = load %struct.crypto_cts_ctx*, %struct.crypto_cts_ctx** %5, align 8
  %14 = getelementptr inbounds %struct.crypto_cts_ctx, %struct.crypto_cts_ctx* %13, i32 0, i32 0
  %15 = load %struct.crypto_skcipher*, %struct.crypto_skcipher** %14, align 8
  store %struct.crypto_skcipher* %15, %struct.crypto_skcipher** %6, align 8
  %16 = load %struct.crypto_cts_reqctx*, %struct.crypto_cts_reqctx** %3, align 8
  %17 = getelementptr inbounds %struct.crypto_cts_reqctx, %struct.crypto_cts_reqctx* %16, i64 1
  %18 = bitcast %struct.crypto_cts_reqctx* %17 to i32*
  %19 = load %struct.crypto_skcipher*, %struct.crypto_skcipher** %6, align 8
  %20 = call i32 @crypto_skcipher_reqsize(%struct.crypto_skcipher* %19)
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i32, i32* %18, i64 %21
  %23 = load %struct.crypto_skcipher*, %struct.crypto_skcipher** %4, align 8
  %24 = call i64 @crypto_skcipher_alignmask(%struct.crypto_skcipher* %23)
  %25 = add nsw i64 %24, 1
  %26 = call i32* @PTR_ALIGN(i32* %22, i64 %25)
  ret i32* %26
}

declare dso_local %struct.crypto_cts_reqctx* @skcipher_request_ctx(%struct.skcipher_request*) #1

declare dso_local %struct.crypto_skcipher* @crypto_skcipher_reqtfm(%struct.skcipher_request*) #1

declare dso_local %struct.crypto_cts_ctx* @crypto_skcipher_ctx(%struct.crypto_skcipher*) #1

declare dso_local i32* @PTR_ALIGN(i32*, i64) #1

declare dso_local i32 @crypto_skcipher_reqsize(%struct.crypto_skcipher*) #1

declare dso_local i64 @crypto_skcipher_alignmask(%struct.crypto_skcipher*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
