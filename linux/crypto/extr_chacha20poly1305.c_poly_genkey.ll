; ModuleID = '/home/carl/AnghaBench/linux/crypto/extr_chacha20poly1305.c_poly_genkey.c'
source_filename = "/home/carl/AnghaBench/linux/crypto/extr_chacha20poly1305.c_poly_genkey.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aead_request = type { i32 }
%struct.crypto_aead = type { i32 }
%struct.chachapoly_ctx = type { i32 }
%struct.chachapoly_req_ctx = type { i32, i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.chacha_req }
%struct.chacha_req = type { i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@poly_genkey_done = common dso_local global i32 0, align 4
@POLY1305_KEY_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.aead_request*)* @poly_genkey to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @poly_genkey(%struct.aead_request* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.aead_request*, align 8
  %4 = alloca %struct.crypto_aead*, align 8
  %5 = alloca %struct.chachapoly_ctx*, align 8
  %6 = alloca %struct.chachapoly_req_ctx*, align 8
  %7 = alloca %struct.chacha_req*, align 8
  %8 = alloca i32, align 4
  store %struct.aead_request* %0, %struct.aead_request** %3, align 8
  %9 = load %struct.aead_request*, %struct.aead_request** %3, align 8
  %10 = call %struct.crypto_aead* @crypto_aead_reqtfm(%struct.aead_request* %9)
  store %struct.crypto_aead* %10, %struct.crypto_aead** %4, align 8
  %11 = load %struct.crypto_aead*, %struct.crypto_aead** %4, align 8
  %12 = call %struct.chachapoly_ctx* @crypto_aead_ctx(%struct.crypto_aead* %11)
  store %struct.chachapoly_ctx* %12, %struct.chachapoly_ctx** %5, align 8
  %13 = load %struct.aead_request*, %struct.aead_request** %3, align 8
  %14 = call %struct.chachapoly_req_ctx* @aead_request_ctx(%struct.aead_request* %13)
  store %struct.chachapoly_req_ctx* %14, %struct.chachapoly_req_ctx** %6, align 8
  %15 = load %struct.chachapoly_req_ctx*, %struct.chachapoly_req_ctx** %6, align 8
  %16 = getelementptr inbounds %struct.chachapoly_req_ctx, %struct.chachapoly_req_ctx* %15, i32 0, i32 3
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  store %struct.chacha_req* %17, %struct.chacha_req** %7, align 8
  %18 = load %struct.aead_request*, %struct.aead_request** %3, align 8
  %19 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.chachapoly_req_ctx*, %struct.chachapoly_req_ctx** %6, align 8
  %22 = getelementptr inbounds %struct.chachapoly_req_ctx, %struct.chachapoly_req_ctx* %21, i32 0, i32 0
  store i32 %20, i32* %22, align 4
  %23 = load %struct.crypto_aead*, %struct.crypto_aead** %4, align 8
  %24 = call i32 @crypto_aead_ivsize(%struct.crypto_aead* %23)
  %25 = icmp eq i32 %24, 8
  br i1 %25, label %26, label %39

26:                                               ; preds = %1
  %27 = load %struct.chachapoly_req_ctx*, %struct.chachapoly_req_ctx** %6, align 8
  %28 = getelementptr inbounds %struct.chachapoly_req_ctx, %struct.chachapoly_req_ctx* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = icmp slt i32 %29, 8
  br i1 %30, label %31, label %34

31:                                               ; preds = %26
  %32 = load i32, i32* @EINVAL, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %2, align 4
  br label %93

34:                                               ; preds = %26
  %35 = load %struct.chachapoly_req_ctx*, %struct.chachapoly_req_ctx** %6, align 8
  %36 = getelementptr inbounds %struct.chachapoly_req_ctx, %struct.chachapoly_req_ctx* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = sub nsw i32 %37, 8
  store i32 %38, i32* %36, align 4
  br label %39

39:                                               ; preds = %34, %1
  %40 = load %struct.chachapoly_req_ctx*, %struct.chachapoly_req_ctx** %6, align 8
  %41 = getelementptr inbounds %struct.chachapoly_req_ctx, %struct.chachapoly_req_ctx* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @memset(i32 %42, i32 0, i32 4)
  %44 = load %struct.chacha_req*, %struct.chacha_req** %7, align 8
  %45 = getelementptr inbounds %struct.chacha_req, %struct.chacha_req* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.chachapoly_req_ctx*, %struct.chachapoly_req_ctx** %6, align 8
  %48 = getelementptr inbounds %struct.chachapoly_req_ctx, %struct.chachapoly_req_ctx* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @sg_init_one(i32 %46, i32 %49, i32 4)
  %51 = load %struct.chacha_req*, %struct.chacha_req** %7, align 8
  %52 = getelementptr inbounds %struct.chacha_req, %struct.chacha_req* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.aead_request*, %struct.aead_request** %3, align 8
  %55 = call i32 @chacha_iv(i32 %53, %struct.aead_request* %54, i32 0)
  %56 = load %struct.chacha_req*, %struct.chacha_req** %7, align 8
  %57 = getelementptr inbounds %struct.chacha_req, %struct.chacha_req* %56, i32 0, i32 0
  %58 = load %struct.chachapoly_req_ctx*, %struct.chachapoly_req_ctx** %6, align 8
  %59 = getelementptr inbounds %struct.chachapoly_req_ctx, %struct.chachapoly_req_ctx* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* @poly_genkey_done, align 4
  %62 = load %struct.aead_request*, %struct.aead_request** %3, align 8
  %63 = call i32 @skcipher_request_set_callback(i32* %57, i32 %60, i32 %61, %struct.aead_request* %62)
  %64 = load %struct.chacha_req*, %struct.chacha_req** %7, align 8
  %65 = getelementptr inbounds %struct.chacha_req, %struct.chacha_req* %64, i32 0, i32 0
  %66 = load %struct.chachapoly_ctx*, %struct.chachapoly_ctx** %5, align 8
  %67 = getelementptr inbounds %struct.chachapoly_ctx, %struct.chachapoly_ctx* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @skcipher_request_set_tfm(i32* %65, i32 %68)
  %70 = load %struct.chacha_req*, %struct.chacha_req** %7, align 8
  %71 = getelementptr inbounds %struct.chacha_req, %struct.chacha_req* %70, i32 0, i32 0
  %72 = load %struct.chacha_req*, %struct.chacha_req** %7, align 8
  %73 = getelementptr inbounds %struct.chacha_req, %struct.chacha_req* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.chacha_req*, %struct.chacha_req** %7, align 8
  %76 = getelementptr inbounds %struct.chacha_req, %struct.chacha_req* %75, i32 0, i32 2
  %77 = load i32, i32* %76, align 4
  %78 = load i32, i32* @POLY1305_KEY_SIZE, align 4
  %79 = load %struct.chacha_req*, %struct.chacha_req** %7, align 8
  %80 = getelementptr inbounds %struct.chacha_req, %struct.chacha_req* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = call i32 @skcipher_request_set_crypt(i32* %71, i32 %74, i32 %77, i32 %78, i32 %81)
  %83 = load %struct.chacha_req*, %struct.chacha_req** %7, align 8
  %84 = getelementptr inbounds %struct.chacha_req, %struct.chacha_req* %83, i32 0, i32 0
  %85 = call i32 @crypto_skcipher_decrypt(i32* %84)
  store i32 %85, i32* %8, align 4
  %86 = load i32, i32* %8, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %90

88:                                               ; preds = %39
  %89 = load i32, i32* %8, align 4
  store i32 %89, i32* %2, align 4
  br label %93

90:                                               ; preds = %39
  %91 = load %struct.aead_request*, %struct.aead_request** %3, align 8
  %92 = call i32 @poly_init(%struct.aead_request* %91)
  store i32 %92, i32* %2, align 4
  br label %93

93:                                               ; preds = %90, %88, %31
  %94 = load i32, i32* %2, align 4
  ret i32 %94
}

declare dso_local %struct.crypto_aead* @crypto_aead_reqtfm(%struct.aead_request*) #1

declare dso_local %struct.chachapoly_ctx* @crypto_aead_ctx(%struct.crypto_aead*) #1

declare dso_local %struct.chachapoly_req_ctx* @aead_request_ctx(%struct.aead_request*) #1

declare dso_local i32 @crypto_aead_ivsize(%struct.crypto_aead*) #1

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i32 @sg_init_one(i32, i32, i32) #1

declare dso_local i32 @chacha_iv(i32, %struct.aead_request*, i32) #1

declare dso_local i32 @skcipher_request_set_callback(i32*, i32, i32, %struct.aead_request*) #1

declare dso_local i32 @skcipher_request_set_tfm(i32*, i32) #1

declare dso_local i32 @skcipher_request_set_crypt(i32*, i32, i32, i32, i32) #1

declare dso_local i32 @crypto_skcipher_decrypt(i32*) #1

declare dso_local i32 @poly_init(%struct.aead_request*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
