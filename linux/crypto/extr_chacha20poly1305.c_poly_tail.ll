; ModuleID = '/home/carl/AnghaBench/linux/crypto/extr_chacha20poly1305.c_poly_tail.c'
source_filename = "/home/carl/AnghaBench/linux/crypto/extr_chacha20poly1305.c_poly_tail.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aead_request = type { i32 }
%struct.crypto_aead = type { i32 }
%struct.chachapoly_ctx = type { i32 }
%struct.chachapoly_req_ctx = type { i32, i32, i32, i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.poly_req }
%struct.poly_req = type { i32, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i8*, i8* }

@poly_tail_done = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.aead_request*)* @poly_tail to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @poly_tail(%struct.aead_request* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.aead_request*, align 8
  %4 = alloca %struct.crypto_aead*, align 8
  %5 = alloca %struct.chachapoly_ctx*, align 8
  %6 = alloca %struct.chachapoly_req_ctx*, align 8
  %7 = alloca %struct.poly_req*, align 8
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
  %16 = getelementptr inbounds %struct.chachapoly_req_ctx, %struct.chachapoly_req_ctx* %15, i32 0, i32 4
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  store %struct.poly_req* %17, %struct.poly_req** %7, align 8
  %18 = load %struct.chachapoly_req_ctx*, %struct.chachapoly_req_ctx** %6, align 8
  %19 = getelementptr inbounds %struct.chachapoly_req_ctx, %struct.chachapoly_req_ctx* %18, i32 0, i32 3
  %20 = load i32, i32* %19, align 4
  %21 = call i8* @cpu_to_le64(i32 %20)
  %22 = load %struct.poly_req*, %struct.poly_req** %7, align 8
  %23 = getelementptr inbounds %struct.poly_req, %struct.poly_req* %22, i32 0, i32 2
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 1
  store i8* %21, i8** %24, align 8
  %25 = load %struct.chachapoly_req_ctx*, %struct.chachapoly_req_ctx** %6, align 8
  %26 = getelementptr inbounds %struct.chachapoly_req_ctx, %struct.chachapoly_req_ctx* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 8
  %28 = call i8* @cpu_to_le64(i32 %27)
  %29 = load %struct.poly_req*, %struct.poly_req** %7, align 8
  %30 = getelementptr inbounds %struct.poly_req, %struct.poly_req* %29, i32 0, i32 2
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  store i8* %28, i8** %31, align 8
  %32 = load %struct.poly_req*, %struct.poly_req** %7, align 8
  %33 = getelementptr inbounds %struct.poly_req, %struct.poly_req* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.poly_req*, %struct.poly_req** %7, align 8
  %36 = getelementptr inbounds %struct.poly_req, %struct.poly_req* %35, i32 0, i32 2
  %37 = call i32 @sg_init_one(i32 %34, %struct.TYPE_4__* %36, i32 16)
  %38 = load %struct.poly_req*, %struct.poly_req** %7, align 8
  %39 = getelementptr inbounds %struct.poly_req, %struct.poly_req* %38, i32 0, i32 0
  %40 = load %struct.chachapoly_req_ctx*, %struct.chachapoly_req_ctx** %6, align 8
  %41 = getelementptr inbounds %struct.chachapoly_req_ctx, %struct.chachapoly_req_ctx* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @poly_tail_done, align 4
  %44 = load %struct.aead_request*, %struct.aead_request** %3, align 8
  %45 = call i32 @ahash_request_set_callback(i32* %39, i32 %42, i32 %43, %struct.aead_request* %44)
  %46 = load %struct.poly_req*, %struct.poly_req** %7, align 8
  %47 = getelementptr inbounds %struct.poly_req, %struct.poly_req* %46, i32 0, i32 0
  %48 = load %struct.chachapoly_ctx*, %struct.chachapoly_ctx** %5, align 8
  %49 = getelementptr inbounds %struct.chachapoly_ctx, %struct.chachapoly_ctx* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @ahash_request_set_tfm(i32* %47, i32 %50)
  %52 = load %struct.poly_req*, %struct.poly_req** %7, align 8
  %53 = getelementptr inbounds %struct.poly_req, %struct.poly_req* %52, i32 0, i32 0
  %54 = load %struct.poly_req*, %struct.poly_req** %7, align 8
  %55 = getelementptr inbounds %struct.poly_req, %struct.poly_req* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.chachapoly_req_ctx*, %struct.chachapoly_req_ctx** %6, align 8
  %58 = getelementptr inbounds %struct.chachapoly_req_ctx, %struct.chachapoly_req_ctx* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = call i32 @ahash_request_set_crypt(i32* %53, i32 %56, i32 %59, i32 16)
  %61 = load %struct.poly_req*, %struct.poly_req** %7, align 8
  %62 = getelementptr inbounds %struct.poly_req, %struct.poly_req* %61, i32 0, i32 0
  %63 = call i32 @crypto_ahash_finup(i32* %62)
  store i32 %63, i32* %8, align 4
  %64 = load i32, i32* %8, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %68

66:                                               ; preds = %1
  %67 = load i32, i32* %8, align 4
  store i32 %67, i32* %2, align 4
  br label %71

68:                                               ; preds = %1
  %69 = load %struct.aead_request*, %struct.aead_request** %3, align 8
  %70 = call i32 @poly_tail_continue(%struct.aead_request* %69)
  store i32 %70, i32* %2, align 4
  br label %71

71:                                               ; preds = %68, %66
  %72 = load i32, i32* %2, align 4
  ret i32 %72
}

declare dso_local %struct.crypto_aead* @crypto_aead_reqtfm(%struct.aead_request*) #1

declare dso_local %struct.chachapoly_ctx* @crypto_aead_ctx(%struct.crypto_aead*) #1

declare dso_local %struct.chachapoly_req_ctx* @aead_request_ctx(%struct.aead_request*) #1

declare dso_local i8* @cpu_to_le64(i32) #1

declare dso_local i32 @sg_init_one(i32, %struct.TYPE_4__*, i32) #1

declare dso_local i32 @ahash_request_set_callback(i32*, i32, i32, %struct.aead_request*) #1

declare dso_local i32 @ahash_request_set_tfm(i32*, i32) #1

declare dso_local i32 @ahash_request_set_crypt(i32*, i32, i32, i32) #1

declare dso_local i32 @crypto_ahash_finup(i32*) #1

declare dso_local i32 @poly_tail_continue(%struct.aead_request*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
