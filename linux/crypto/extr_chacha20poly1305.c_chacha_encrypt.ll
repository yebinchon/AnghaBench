; ModuleID = '/home/carl/AnghaBench/linux/crypto/extr_chacha20poly1305.c_chacha_encrypt.c'
source_filename = "/home/carl/AnghaBench/linux/crypto/extr_chacha20poly1305.c_chacha_encrypt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aead_request = type { i32, i32, i32, i32 }
%struct.chachapoly_ctx = type { i32 }
%struct.chachapoly_req_ctx = type { i32, i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.chacha_req }
%struct.chacha_req = type { i32, i32 }
%struct.scatterlist = type { i32 }

@chacha_encrypt_done = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.aead_request*)* @chacha_encrypt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @chacha_encrypt(%struct.aead_request* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.aead_request*, align 8
  %4 = alloca %struct.chachapoly_ctx*, align 8
  %5 = alloca %struct.chachapoly_req_ctx*, align 8
  %6 = alloca %struct.chacha_req*, align 8
  %7 = alloca %struct.scatterlist*, align 8
  %8 = alloca %struct.scatterlist*, align 8
  %9 = alloca i32, align 4
  store %struct.aead_request* %0, %struct.aead_request** %3, align 8
  %10 = load %struct.aead_request*, %struct.aead_request** %3, align 8
  %11 = call i32 @crypto_aead_reqtfm(%struct.aead_request* %10)
  %12 = call %struct.chachapoly_ctx* @crypto_aead_ctx(i32 %11)
  store %struct.chachapoly_ctx* %12, %struct.chachapoly_ctx** %4, align 8
  %13 = load %struct.aead_request*, %struct.aead_request** %3, align 8
  %14 = call %struct.chachapoly_req_ctx* @aead_request_ctx(%struct.aead_request* %13)
  store %struct.chachapoly_req_ctx* %14, %struct.chachapoly_req_ctx** %5, align 8
  %15 = load %struct.chachapoly_req_ctx*, %struct.chachapoly_req_ctx** %5, align 8
  %16 = getelementptr inbounds %struct.chachapoly_req_ctx, %struct.chachapoly_req_ctx* %15, i32 0, i32 3
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  store %struct.chacha_req* %17, %struct.chacha_req** %6, align 8
  %18 = load %struct.aead_request*, %struct.aead_request** %3, align 8
  %19 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %1
  br label %92

23:                                               ; preds = %1
  %24 = load %struct.chacha_req*, %struct.chacha_req** %6, align 8
  %25 = getelementptr inbounds %struct.chacha_req, %struct.chacha_req* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.aead_request*, %struct.aead_request** %3, align 8
  %28 = call i32 @chacha_iv(i32 %26, %struct.aead_request* %27, i32 1)
  %29 = load %struct.chachapoly_req_ctx*, %struct.chachapoly_req_ctx** %5, align 8
  %30 = getelementptr inbounds %struct.chachapoly_req_ctx, %struct.chachapoly_req_ctx* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.aead_request*, %struct.aead_request** %3, align 8
  %33 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %32, i32 0, i32 3
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.aead_request*, %struct.aead_request** %3, align 8
  %36 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = call %struct.scatterlist* @scatterwalk_ffwd(i32 %31, i32 %34, i32 %37)
  store %struct.scatterlist* %38, %struct.scatterlist** %7, align 8
  %39 = load %struct.scatterlist*, %struct.scatterlist** %7, align 8
  store %struct.scatterlist* %39, %struct.scatterlist** %8, align 8
  %40 = load %struct.aead_request*, %struct.aead_request** %3, align 8
  %41 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %40, i32 0, i32 3
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.aead_request*, %struct.aead_request** %3, align 8
  %44 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 4
  %46 = icmp ne i32 %42, %45
  br i1 %46, label %47, label %58

47:                                               ; preds = %23
  %48 = load %struct.chachapoly_req_ctx*, %struct.chachapoly_req_ctx** %5, align 8
  %49 = getelementptr inbounds %struct.chachapoly_req_ctx, %struct.chachapoly_req_ctx* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.aead_request*, %struct.aead_request** %3, align 8
  %52 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.aead_request*, %struct.aead_request** %3, align 8
  %55 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = call %struct.scatterlist* @scatterwalk_ffwd(i32 %50, i32 %53, i32 %56)
  store %struct.scatterlist* %57, %struct.scatterlist** %8, align 8
  br label %58

58:                                               ; preds = %47, %23
  %59 = load %struct.chacha_req*, %struct.chacha_req** %6, align 8
  %60 = getelementptr inbounds %struct.chacha_req, %struct.chacha_req* %59, i32 0, i32 0
  %61 = load %struct.chachapoly_req_ctx*, %struct.chachapoly_req_ctx** %5, align 8
  %62 = getelementptr inbounds %struct.chachapoly_req_ctx, %struct.chachapoly_req_ctx* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* @chacha_encrypt_done, align 4
  %65 = load %struct.aead_request*, %struct.aead_request** %3, align 8
  %66 = call i32 @skcipher_request_set_callback(i32* %60, i32 %63, i32 %64, %struct.aead_request* %65)
  %67 = load %struct.chacha_req*, %struct.chacha_req** %6, align 8
  %68 = getelementptr inbounds %struct.chacha_req, %struct.chacha_req* %67, i32 0, i32 0
  %69 = load %struct.chachapoly_ctx*, %struct.chachapoly_ctx** %4, align 8
  %70 = getelementptr inbounds %struct.chachapoly_ctx, %struct.chachapoly_ctx* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @skcipher_request_set_tfm(i32* %68, i32 %71)
  %73 = load %struct.chacha_req*, %struct.chacha_req** %6, align 8
  %74 = getelementptr inbounds %struct.chacha_req, %struct.chacha_req* %73, i32 0, i32 0
  %75 = load %struct.scatterlist*, %struct.scatterlist** %7, align 8
  %76 = load %struct.scatterlist*, %struct.scatterlist** %8, align 8
  %77 = load %struct.aead_request*, %struct.aead_request** %3, align 8
  %78 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.chacha_req*, %struct.chacha_req** %6, align 8
  %81 = getelementptr inbounds %struct.chacha_req, %struct.chacha_req* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = call i32 @skcipher_request_set_crypt(i32* %74, %struct.scatterlist* %75, %struct.scatterlist* %76, i32 %79, i32 %82)
  %84 = load %struct.chacha_req*, %struct.chacha_req** %6, align 8
  %85 = getelementptr inbounds %struct.chacha_req, %struct.chacha_req* %84, i32 0, i32 0
  %86 = call i32 @crypto_skcipher_encrypt(i32* %85)
  store i32 %86, i32* %9, align 4
  %87 = load i32, i32* %9, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %91

89:                                               ; preds = %58
  %90 = load i32, i32* %9, align 4
  store i32 %90, i32* %2, align 4
  br label %95

91:                                               ; preds = %58
  br label %92

92:                                               ; preds = %91, %22
  %93 = load %struct.aead_request*, %struct.aead_request** %3, align 8
  %94 = call i32 @poly_genkey(%struct.aead_request* %93)
  store i32 %94, i32* %2, align 4
  br label %95

95:                                               ; preds = %92, %89
  %96 = load i32, i32* %2, align 4
  ret i32 %96
}

declare dso_local %struct.chachapoly_ctx* @crypto_aead_ctx(i32) #1

declare dso_local i32 @crypto_aead_reqtfm(%struct.aead_request*) #1

declare dso_local %struct.chachapoly_req_ctx* @aead_request_ctx(%struct.aead_request*) #1

declare dso_local i32 @chacha_iv(i32, %struct.aead_request*, i32) #1

declare dso_local %struct.scatterlist* @scatterwalk_ffwd(i32, i32, i32) #1

declare dso_local i32 @skcipher_request_set_callback(i32*, i32, i32, %struct.aead_request*) #1

declare dso_local i32 @skcipher_request_set_tfm(i32*, i32) #1

declare dso_local i32 @skcipher_request_set_crypt(i32*, %struct.scatterlist*, %struct.scatterlist*, i32, i32) #1

declare dso_local i32 @crypto_skcipher_encrypt(i32*) #1

declare dso_local i32 @poly_genkey(%struct.aead_request*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
