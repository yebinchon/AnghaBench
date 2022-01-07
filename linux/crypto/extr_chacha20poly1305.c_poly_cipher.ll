; ModuleID = '/home/carl/AnghaBench/linux/crypto/extr_chacha20poly1305.c_poly_cipher.c'
source_filename = "/home/carl/AnghaBench/linux/crypto/extr_chacha20poly1305.c_poly_cipher.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aead_request = type { i64, i32, %struct.scatterlist*, %struct.scatterlist* }
%struct.scatterlist = type { i32 }
%struct.chachapoly_ctx = type { i32 }
%struct.chachapoly_req_ctx = type { i64, i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.poly_req }
%struct.poly_req = type { i32 }

@poly_cipher_done = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.aead_request*)* @poly_cipher to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @poly_cipher(%struct.aead_request* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.aead_request*, align 8
  %4 = alloca %struct.chachapoly_ctx*, align 8
  %5 = alloca %struct.chachapoly_req_ctx*, align 8
  %6 = alloca %struct.poly_req*, align 8
  %7 = alloca %struct.scatterlist*, align 8
  %8 = alloca i32, align 4
  store %struct.aead_request* %0, %struct.aead_request** %3, align 8
  %9 = load %struct.aead_request*, %struct.aead_request** %3, align 8
  %10 = call i32 @crypto_aead_reqtfm(%struct.aead_request* %9)
  %11 = call %struct.chachapoly_ctx* @crypto_aead_ctx(i32 %10)
  store %struct.chachapoly_ctx* %11, %struct.chachapoly_ctx** %4, align 8
  %12 = load %struct.aead_request*, %struct.aead_request** %3, align 8
  %13 = call %struct.chachapoly_req_ctx* @aead_request_ctx(%struct.aead_request* %12)
  store %struct.chachapoly_req_ctx* %13, %struct.chachapoly_req_ctx** %5, align 8
  %14 = load %struct.chachapoly_req_ctx*, %struct.chachapoly_req_ctx** %5, align 8
  %15 = getelementptr inbounds %struct.chachapoly_req_ctx, %struct.chachapoly_req_ctx* %14, i32 0, i32 3
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  store %struct.poly_req* %16, %struct.poly_req** %6, align 8
  %17 = load %struct.aead_request*, %struct.aead_request** %3, align 8
  %18 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %17, i32 0, i32 3
  %19 = load %struct.scatterlist*, %struct.scatterlist** %18, align 8
  store %struct.scatterlist* %19, %struct.scatterlist** %7, align 8
  %20 = load %struct.chachapoly_req_ctx*, %struct.chachapoly_req_ctx** %5, align 8
  %21 = getelementptr inbounds %struct.chachapoly_req_ctx, %struct.chachapoly_req_ctx* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load %struct.aead_request*, %struct.aead_request** %3, align 8
  %24 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp eq i64 %22, %25
  br i1 %26, label %27, label %31

27:                                               ; preds = %1
  %28 = load %struct.aead_request*, %struct.aead_request** %3, align 8
  %29 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %28, i32 0, i32 2
  %30 = load %struct.scatterlist*, %struct.scatterlist** %29, align 8
  store %struct.scatterlist* %30, %struct.scatterlist** %7, align 8
  br label %31

31:                                               ; preds = %27, %1
  %32 = load %struct.chachapoly_req_ctx*, %struct.chachapoly_req_ctx** %5, align 8
  %33 = getelementptr inbounds %struct.chachapoly_req_ctx, %struct.chachapoly_req_ctx* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.scatterlist*, %struct.scatterlist** %7, align 8
  %36 = load %struct.aead_request*, %struct.aead_request** %3, align 8
  %37 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 8
  %39 = call %struct.scatterlist* @scatterwalk_ffwd(i32 %34, %struct.scatterlist* %35, i32 %38)
  store %struct.scatterlist* %39, %struct.scatterlist** %7, align 8
  %40 = load %struct.poly_req*, %struct.poly_req** %6, align 8
  %41 = getelementptr inbounds %struct.poly_req, %struct.poly_req* %40, i32 0, i32 0
  %42 = load %struct.chachapoly_req_ctx*, %struct.chachapoly_req_ctx** %5, align 8
  %43 = getelementptr inbounds %struct.chachapoly_req_ctx, %struct.chachapoly_req_ctx* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 8
  %45 = load i32, i32* @poly_cipher_done, align 4
  %46 = load %struct.aead_request*, %struct.aead_request** %3, align 8
  %47 = call i32 @ahash_request_set_callback(i32* %41, i32 %44, i32 %45, %struct.aead_request* %46)
  %48 = load %struct.poly_req*, %struct.poly_req** %6, align 8
  %49 = getelementptr inbounds %struct.poly_req, %struct.poly_req* %48, i32 0, i32 0
  %50 = load %struct.chachapoly_ctx*, %struct.chachapoly_ctx** %4, align 8
  %51 = getelementptr inbounds %struct.chachapoly_ctx, %struct.chachapoly_ctx* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @ahash_request_set_tfm(i32* %49, i32 %52)
  %54 = load %struct.poly_req*, %struct.poly_req** %6, align 8
  %55 = getelementptr inbounds %struct.poly_req, %struct.poly_req* %54, i32 0, i32 0
  %56 = load %struct.scatterlist*, %struct.scatterlist** %7, align 8
  %57 = load %struct.chachapoly_req_ctx*, %struct.chachapoly_req_ctx** %5, align 8
  %58 = getelementptr inbounds %struct.chachapoly_req_ctx, %struct.chachapoly_req_ctx* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = call i32 @ahash_request_set_crypt(i32* %55, %struct.scatterlist* %56, i32* null, i64 %59)
  %61 = load %struct.poly_req*, %struct.poly_req** %6, align 8
  %62 = getelementptr inbounds %struct.poly_req, %struct.poly_req* %61, i32 0, i32 0
  %63 = call i32 @crypto_ahash_update(i32* %62)
  store i32 %63, i32* %8, align 4
  %64 = load i32, i32* %8, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %68

66:                                               ; preds = %31
  %67 = load i32, i32* %8, align 4
  store i32 %67, i32* %2, align 4
  br label %71

68:                                               ; preds = %31
  %69 = load %struct.aead_request*, %struct.aead_request** %3, align 8
  %70 = call i32 @poly_cipherpad(%struct.aead_request* %69)
  store i32 %70, i32* %2, align 4
  br label %71

71:                                               ; preds = %68, %66
  %72 = load i32, i32* %2, align 4
  ret i32 %72
}

declare dso_local %struct.chachapoly_ctx* @crypto_aead_ctx(i32) #1

declare dso_local i32 @crypto_aead_reqtfm(%struct.aead_request*) #1

declare dso_local %struct.chachapoly_req_ctx* @aead_request_ctx(%struct.aead_request*) #1

declare dso_local %struct.scatterlist* @scatterwalk_ffwd(i32, %struct.scatterlist*, i32) #1

declare dso_local i32 @ahash_request_set_callback(i32*, i32, i32, %struct.aead_request*) #1

declare dso_local i32 @ahash_request_set_tfm(i32*, i32) #1

declare dso_local i32 @ahash_request_set_crypt(i32*, %struct.scatterlist*, i32*, i64) #1

declare dso_local i32 @crypto_ahash_update(i32*) #1

declare dso_local i32 @poly_cipherpad(%struct.aead_request*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
