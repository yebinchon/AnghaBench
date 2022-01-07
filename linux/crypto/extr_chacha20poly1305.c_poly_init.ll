; ModuleID = '/home/carl/AnghaBench/linux/crypto/extr_chacha20poly1305.c_poly_init.c'
source_filename = "/home/carl/AnghaBench/linux/crypto/extr_chacha20poly1305.c_poly_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aead_request = type { i32 }
%struct.chachapoly_ctx = type { i32 }
%struct.chachapoly_req_ctx = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.poly_req }
%struct.poly_req = type { i32 }

@poly_init_done = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.aead_request*)* @poly_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @poly_init(%struct.aead_request* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.aead_request*, align 8
  %4 = alloca %struct.chachapoly_ctx*, align 8
  %5 = alloca %struct.chachapoly_req_ctx*, align 8
  %6 = alloca %struct.poly_req*, align 8
  %7 = alloca i32, align 4
  store %struct.aead_request* %0, %struct.aead_request** %3, align 8
  %8 = load %struct.aead_request*, %struct.aead_request** %3, align 8
  %9 = call i32 @crypto_aead_reqtfm(%struct.aead_request* %8)
  %10 = call %struct.chachapoly_ctx* @crypto_aead_ctx(i32 %9)
  store %struct.chachapoly_ctx* %10, %struct.chachapoly_ctx** %4, align 8
  %11 = load %struct.aead_request*, %struct.aead_request** %3, align 8
  %12 = call %struct.chachapoly_req_ctx* @aead_request_ctx(%struct.aead_request* %11)
  store %struct.chachapoly_req_ctx* %12, %struct.chachapoly_req_ctx** %5, align 8
  %13 = load %struct.chachapoly_req_ctx*, %struct.chachapoly_req_ctx** %5, align 8
  %14 = getelementptr inbounds %struct.chachapoly_req_ctx, %struct.chachapoly_req_ctx* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  store %struct.poly_req* %15, %struct.poly_req** %6, align 8
  %16 = load %struct.poly_req*, %struct.poly_req** %6, align 8
  %17 = getelementptr inbounds %struct.poly_req, %struct.poly_req* %16, i32 0, i32 0
  %18 = load %struct.chachapoly_req_ctx*, %struct.chachapoly_req_ctx** %5, align 8
  %19 = getelementptr inbounds %struct.chachapoly_req_ctx, %struct.chachapoly_req_ctx* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @poly_init_done, align 4
  %22 = load %struct.aead_request*, %struct.aead_request** %3, align 8
  %23 = call i32 @ahash_request_set_callback(i32* %17, i32 %20, i32 %21, %struct.aead_request* %22)
  %24 = load %struct.poly_req*, %struct.poly_req** %6, align 8
  %25 = getelementptr inbounds %struct.poly_req, %struct.poly_req* %24, i32 0, i32 0
  %26 = load %struct.chachapoly_ctx*, %struct.chachapoly_ctx** %4, align 8
  %27 = getelementptr inbounds %struct.chachapoly_ctx, %struct.chachapoly_ctx* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @ahash_request_set_tfm(i32* %25, i32 %28)
  %30 = load %struct.poly_req*, %struct.poly_req** %6, align 8
  %31 = getelementptr inbounds %struct.poly_req, %struct.poly_req* %30, i32 0, i32 0
  %32 = call i32 @crypto_ahash_init(i32* %31)
  store i32 %32, i32* %7, align 4
  %33 = load i32, i32* %7, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %1
  %36 = load i32, i32* %7, align 4
  store i32 %36, i32* %2, align 4
  br label %40

37:                                               ; preds = %1
  %38 = load %struct.aead_request*, %struct.aead_request** %3, align 8
  %39 = call i32 @poly_setkey(%struct.aead_request* %38)
  store i32 %39, i32* %2, align 4
  br label %40

40:                                               ; preds = %37, %35
  %41 = load i32, i32* %2, align 4
  ret i32 %41
}

declare dso_local %struct.chachapoly_ctx* @crypto_aead_ctx(i32) #1

declare dso_local i32 @crypto_aead_reqtfm(%struct.aead_request*) #1

declare dso_local %struct.chachapoly_req_ctx* @aead_request_ctx(%struct.aead_request*) #1

declare dso_local i32 @ahash_request_set_callback(i32*, i32, i32, %struct.aead_request*) #1

declare dso_local i32 @ahash_request_set_tfm(i32*, i32) #1

declare dso_local i32 @crypto_ahash_init(i32*) #1

declare dso_local i32 @poly_setkey(%struct.aead_request*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
