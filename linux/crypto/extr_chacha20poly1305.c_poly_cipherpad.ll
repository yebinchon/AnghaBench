; ModuleID = '/home/carl/AnghaBench/linux/crypto/extr_chacha20poly1305.c_poly_cipherpad.c'
source_filename = "/home/carl/AnghaBench/linux/crypto/extr_chacha20poly1305.c_poly_cipherpad.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aead_request = type { i32 }
%struct.chachapoly_ctx = type { i32 }
%struct.chachapoly_req_ctx = type { i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.poly_req }
%struct.poly_req = type { i32, i32, i32 }

@POLY1305_BLOCK_SIZE = common dso_local global i32 0, align 4
@poly_cipherpad_done = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.aead_request*)* @poly_cipherpad to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @poly_cipherpad(%struct.aead_request* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.aead_request*, align 8
  %4 = alloca %struct.chachapoly_ctx*, align 8
  %5 = alloca %struct.chachapoly_req_ctx*, align 8
  %6 = alloca %struct.poly_req*, align 8
  %7 = alloca i32, align 4
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
  %15 = getelementptr inbounds %struct.chachapoly_req_ctx, %struct.chachapoly_req_ctx* %14, i32 0, i32 2
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  store %struct.poly_req* %16, %struct.poly_req** %6, align 8
  %17 = load %struct.chachapoly_req_ctx*, %struct.chachapoly_req_ctx** %5, align 8
  %18 = getelementptr inbounds %struct.chachapoly_req_ctx, %struct.chachapoly_req_ctx* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = sub i32 0, %19
  %21 = load i32, i32* @POLY1305_BLOCK_SIZE, align 4
  %22 = urem i32 %20, %21
  store i32 %22, i32* %7, align 4
  %23 = load %struct.poly_req*, %struct.poly_req** %6, align 8
  %24 = getelementptr inbounds %struct.poly_req, %struct.poly_req* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @memset(i32 %25, i32 0, i32 4)
  %27 = load %struct.poly_req*, %struct.poly_req** %6, align 8
  %28 = getelementptr inbounds %struct.poly_req, %struct.poly_req* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.poly_req*, %struct.poly_req** %6, align 8
  %31 = getelementptr inbounds %struct.poly_req, %struct.poly_req* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* %7, align 4
  %34 = call i32 @sg_init_one(i32 %29, i32 %32, i32 %33)
  %35 = load %struct.poly_req*, %struct.poly_req** %6, align 8
  %36 = getelementptr inbounds %struct.poly_req, %struct.poly_req* %35, i32 0, i32 0
  %37 = load %struct.chachapoly_req_ctx*, %struct.chachapoly_req_ctx** %5, align 8
  %38 = getelementptr inbounds %struct.chachapoly_req_ctx, %struct.chachapoly_req_ctx* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @poly_cipherpad_done, align 4
  %41 = load %struct.aead_request*, %struct.aead_request** %3, align 8
  %42 = call i32 @ahash_request_set_callback(i32* %36, i32 %39, i32 %40, %struct.aead_request* %41)
  %43 = load %struct.poly_req*, %struct.poly_req** %6, align 8
  %44 = getelementptr inbounds %struct.poly_req, %struct.poly_req* %43, i32 0, i32 0
  %45 = load %struct.chachapoly_ctx*, %struct.chachapoly_ctx** %4, align 8
  %46 = getelementptr inbounds %struct.chachapoly_ctx, %struct.chachapoly_ctx* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @ahash_request_set_tfm(i32* %44, i32 %47)
  %49 = load %struct.poly_req*, %struct.poly_req** %6, align 8
  %50 = getelementptr inbounds %struct.poly_req, %struct.poly_req* %49, i32 0, i32 0
  %51 = load %struct.poly_req*, %struct.poly_req** %6, align 8
  %52 = getelementptr inbounds %struct.poly_req, %struct.poly_req* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* %7, align 4
  %55 = call i32 @ahash_request_set_crypt(i32* %50, i32 %53, i32* null, i32 %54)
  %56 = load %struct.poly_req*, %struct.poly_req** %6, align 8
  %57 = getelementptr inbounds %struct.poly_req, %struct.poly_req* %56, i32 0, i32 0
  %58 = call i32 @crypto_ahash_update(i32* %57)
  store i32 %58, i32* %8, align 4
  %59 = load i32, i32* %8, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %63

61:                                               ; preds = %1
  %62 = load i32, i32* %8, align 4
  store i32 %62, i32* %2, align 4
  br label %66

63:                                               ; preds = %1
  %64 = load %struct.aead_request*, %struct.aead_request** %3, align 8
  %65 = call i32 @poly_tail(%struct.aead_request* %64)
  store i32 %65, i32* %2, align 4
  br label %66

66:                                               ; preds = %63, %61
  %67 = load i32, i32* %2, align 4
  ret i32 %67
}

declare dso_local %struct.chachapoly_ctx* @crypto_aead_ctx(i32) #1

declare dso_local i32 @crypto_aead_reqtfm(%struct.aead_request*) #1

declare dso_local %struct.chachapoly_req_ctx* @aead_request_ctx(%struct.aead_request*) #1

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i32 @sg_init_one(i32, i32, i32) #1

declare dso_local i32 @ahash_request_set_callback(i32*, i32, i32, %struct.aead_request*) #1

declare dso_local i32 @ahash_request_set_tfm(i32*, i32) #1

declare dso_local i32 @ahash_request_set_crypt(i32*, i32, i32*, i32) #1

declare dso_local i32 @crypto_ahash_update(i32*) #1

declare dso_local i32 @poly_tail(%struct.aead_request*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
