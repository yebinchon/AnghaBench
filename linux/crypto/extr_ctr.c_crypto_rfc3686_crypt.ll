; ModuleID = '/home/carl/AnghaBench/linux/crypto/extr_ctr.c_crypto_rfc3686_crypt.c'
source_filename = "/home/carl/AnghaBench/linux/crypto/extr_ctr.c_crypto_rfc3686_crypt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.skcipher_request = type { i32, i32, i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i32, i32 }
%struct.crypto_skcipher = type { i32 }
%struct.crypto_rfc3686_ctx = type { i32, %struct.crypto_skcipher* }
%struct.crypto_rfc3686_req_ctx = type { i32*, %struct.skcipher_request }

@CTR_RFC3686_NONCE_SIZE = common dso_local global i32 0, align 4
@CTR_RFC3686_IV_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.skcipher_request*)* @crypto_rfc3686_crypt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @crypto_rfc3686_crypt(%struct.skcipher_request* %0) #0 {
  %2 = alloca %struct.skcipher_request*, align 8
  %3 = alloca %struct.crypto_skcipher*, align 8
  %4 = alloca %struct.crypto_rfc3686_ctx*, align 8
  %5 = alloca %struct.crypto_skcipher*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.crypto_rfc3686_req_ctx*, align 8
  %8 = alloca %struct.skcipher_request*, align 8
  %9 = alloca i32*, align 8
  store %struct.skcipher_request* %0, %struct.skcipher_request** %2, align 8
  %10 = load %struct.skcipher_request*, %struct.skcipher_request** %2, align 8
  %11 = call %struct.crypto_skcipher* @crypto_skcipher_reqtfm(%struct.skcipher_request* %10)
  store %struct.crypto_skcipher* %11, %struct.crypto_skcipher** %3, align 8
  %12 = load %struct.crypto_skcipher*, %struct.crypto_skcipher** %3, align 8
  %13 = call %struct.crypto_rfc3686_ctx* @crypto_skcipher_ctx(%struct.crypto_skcipher* %12)
  store %struct.crypto_rfc3686_ctx* %13, %struct.crypto_rfc3686_ctx** %4, align 8
  %14 = load %struct.crypto_rfc3686_ctx*, %struct.crypto_rfc3686_ctx** %4, align 8
  %15 = getelementptr inbounds %struct.crypto_rfc3686_ctx, %struct.crypto_rfc3686_ctx* %14, i32 0, i32 1
  %16 = load %struct.crypto_skcipher*, %struct.crypto_skcipher** %15, align 8
  store %struct.crypto_skcipher* %16, %struct.crypto_skcipher** %5, align 8
  %17 = load %struct.crypto_skcipher*, %struct.crypto_skcipher** %3, align 8
  %18 = call i64 @crypto_skcipher_alignmask(%struct.crypto_skcipher* %17)
  store i64 %18, i64* %6, align 8
  %19 = load %struct.skcipher_request*, %struct.skcipher_request** %2, align 8
  %20 = call i64 @skcipher_request_ctx(%struct.skcipher_request* %19)
  %21 = inttoptr i64 %20 to i32*
  %22 = load i64, i64* %6, align 8
  %23 = add i64 %22, 1
  %24 = call i64 @PTR_ALIGN(i32* %21, i64 %23)
  %25 = inttoptr i64 %24 to i8*
  %26 = bitcast i8* %25 to %struct.crypto_rfc3686_req_ctx*
  store %struct.crypto_rfc3686_req_ctx* %26, %struct.crypto_rfc3686_req_ctx** %7, align 8
  %27 = load %struct.crypto_rfc3686_req_ctx*, %struct.crypto_rfc3686_req_ctx** %7, align 8
  %28 = getelementptr inbounds %struct.crypto_rfc3686_req_ctx, %struct.crypto_rfc3686_req_ctx* %27, i32 0, i32 1
  store %struct.skcipher_request* %28, %struct.skcipher_request** %8, align 8
  %29 = load %struct.crypto_rfc3686_req_ctx*, %struct.crypto_rfc3686_req_ctx** %7, align 8
  %30 = getelementptr inbounds %struct.crypto_rfc3686_req_ctx, %struct.crypto_rfc3686_req_ctx* %29, i32 0, i32 0
  %31 = load i32*, i32** %30, align 8
  store i32* %31, i32** %9, align 8
  %32 = load i32*, i32** %9, align 8
  %33 = load %struct.crypto_rfc3686_ctx*, %struct.crypto_rfc3686_ctx** %4, align 8
  %34 = getelementptr inbounds %struct.crypto_rfc3686_ctx, %struct.crypto_rfc3686_ctx* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* @CTR_RFC3686_NONCE_SIZE, align 4
  %37 = call i32 @memcpy(i32* %32, i32 %35, i32 %36)
  %38 = load i32*, i32** %9, align 8
  %39 = load i32, i32* @CTR_RFC3686_NONCE_SIZE, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i32, i32* %38, i64 %40
  %42 = load %struct.skcipher_request*, %struct.skcipher_request** %2, align 8
  %43 = getelementptr inbounds %struct.skcipher_request, %struct.skcipher_request* %42, i32 0, i32 4
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* @CTR_RFC3686_IV_SIZE, align 4
  %46 = call i32 @memcpy(i32* %41, i32 %44, i32 %45)
  %47 = call i32 @cpu_to_be32(i32 1)
  %48 = load i32*, i32** %9, align 8
  %49 = load i32, i32* @CTR_RFC3686_NONCE_SIZE, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i32, i32* %48, i64 %50
  %52 = load i32, i32* @CTR_RFC3686_IV_SIZE, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i32, i32* %51, i64 %53
  store i32 %47, i32* %54, align 4
  %55 = load %struct.skcipher_request*, %struct.skcipher_request** %8, align 8
  %56 = load %struct.crypto_skcipher*, %struct.crypto_skcipher** %5, align 8
  %57 = call i32 @skcipher_request_set_tfm(%struct.skcipher_request* %55, %struct.crypto_skcipher* %56)
  %58 = load %struct.skcipher_request*, %struct.skcipher_request** %8, align 8
  %59 = load %struct.skcipher_request*, %struct.skcipher_request** %2, align 8
  %60 = getelementptr inbounds %struct.skcipher_request, %struct.skcipher_request* %59, i32 0, i32 3
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.skcipher_request*, %struct.skcipher_request** %2, align 8
  %64 = getelementptr inbounds %struct.skcipher_request, %struct.skcipher_request* %63, i32 0, i32 3
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.skcipher_request*, %struct.skcipher_request** %2, align 8
  %68 = getelementptr inbounds %struct.skcipher_request, %struct.skcipher_request* %67, i32 0, i32 3
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @skcipher_request_set_callback(%struct.skcipher_request* %58, i32 %62, i32 %66, i32 %70)
  %72 = load %struct.skcipher_request*, %struct.skcipher_request** %8, align 8
  %73 = load %struct.skcipher_request*, %struct.skcipher_request** %2, align 8
  %74 = getelementptr inbounds %struct.skcipher_request, %struct.skcipher_request* %73, i32 0, i32 2
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.skcipher_request*, %struct.skcipher_request** %2, align 8
  %77 = getelementptr inbounds %struct.skcipher_request, %struct.skcipher_request* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.skcipher_request*, %struct.skcipher_request** %2, align 8
  %80 = getelementptr inbounds %struct.skcipher_request, %struct.skcipher_request* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = load i32*, i32** %9, align 8
  %83 = call i32 @skcipher_request_set_crypt(%struct.skcipher_request* %72, i32 %75, i32 %78, i32 %81, i32* %82)
  %84 = load %struct.skcipher_request*, %struct.skcipher_request** %8, align 8
  %85 = call i32 @crypto_skcipher_encrypt(%struct.skcipher_request* %84)
  ret i32 %85
}

declare dso_local %struct.crypto_skcipher* @crypto_skcipher_reqtfm(%struct.skcipher_request*) #1

declare dso_local %struct.crypto_rfc3686_ctx* @crypto_skcipher_ctx(%struct.crypto_skcipher*) #1

declare dso_local i64 @crypto_skcipher_alignmask(%struct.crypto_skcipher*) #1

declare dso_local i64 @PTR_ALIGN(i32*, i64) #1

declare dso_local i64 @skcipher_request_ctx(%struct.skcipher_request*) #1

declare dso_local i32 @memcpy(i32*, i32, i32) #1

declare dso_local i32 @cpu_to_be32(i32) #1

declare dso_local i32 @skcipher_request_set_tfm(%struct.skcipher_request*, %struct.crypto_skcipher*) #1

declare dso_local i32 @skcipher_request_set_callback(%struct.skcipher_request*, i32, i32, i32) #1

declare dso_local i32 @skcipher_request_set_crypt(%struct.skcipher_request*, i32, i32, i32, i32*) #1

declare dso_local i32 @crypto_skcipher_encrypt(%struct.skcipher_request*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
