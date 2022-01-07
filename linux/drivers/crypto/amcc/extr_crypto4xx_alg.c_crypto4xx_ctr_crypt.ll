; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/amcc/extr_crypto4xx_alg.c_crypto4xx_ctr_crypt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/amcc/extr_crypto4xx_alg.c_crypto4xx_ctr_crypt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.skcipher_request = type { i64, i32, i32, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.crypto_skcipher = type { i32 }
%struct.crypto4xx_ctx = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@AES_BLOCK_SIZE = common dso_local global i32 0, align 4
@subreq = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.skcipher_request*, i32)* @crypto4xx_ctr_crypt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @crypto4xx_ctr_crypt(%struct.skcipher_request* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.skcipher_request*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.crypto_skcipher*, align 8
  %7 = alloca %struct.crypto4xx_ctx*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.skcipher_request* %0, %struct.skcipher_request** %4, align 8
  store i32 %1, i32* %5, align 4
  %12 = load %struct.skcipher_request*, %struct.skcipher_request** %4, align 8
  %13 = call %struct.crypto_skcipher* @crypto_skcipher_reqtfm(%struct.skcipher_request* %12)
  store %struct.crypto_skcipher* %13, %struct.crypto_skcipher** %6, align 8
  %14 = load %struct.crypto_skcipher*, %struct.crypto_skcipher** %6, align 8
  %15 = call %struct.crypto4xx_ctx* @crypto_skcipher_ctx(%struct.crypto_skcipher* %14)
  store %struct.crypto4xx_ctx* %15, %struct.crypto4xx_ctx** %7, align 8
  %16 = load %struct.crypto_skcipher*, %struct.crypto_skcipher** %6, align 8
  %17 = call i64 @crypto_skcipher_ivsize(%struct.crypto_skcipher* %16)
  store i64 %17, i64* %8, align 8
  %18 = load %struct.skcipher_request*, %struct.skcipher_request** %4, align 8
  %19 = getelementptr inbounds %struct.skcipher_request, %struct.skcipher_request* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* %8, align 8
  %22 = add i64 %20, %21
  %23 = sub i64 %22, 4
  %24 = inttoptr i64 %23 to i32*
  %25 = call i32 @be32_to_cpup(i32* %24)
  store i32 %25, i32* %9, align 4
  %26 = load %struct.skcipher_request*, %struct.skcipher_request** %4, align 8
  %27 = getelementptr inbounds %struct.skcipher_request, %struct.skcipher_request* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* @AES_BLOCK_SIZE, align 4
  %30 = call i32 @ALIGN(i32 %28, i32 %29)
  %31 = load i32, i32* @AES_BLOCK_SIZE, align 4
  %32 = udiv i32 %30, %31
  store i32 %32, i32* %10, align 4
  %33 = load i32, i32* %9, align 4
  %34 = load i32, i32* %10, align 4
  %35 = add i32 %33, %34
  %36 = load i32, i32* %9, align 4
  %37 = icmp ult i32 %35, %36
  br i1 %37, label %38, label %84

38:                                               ; preds = %2
  %39 = load i32, i32* @subreq, align 4
  %40 = load %struct.crypto4xx_ctx*, %struct.crypto4xx_ctx** %7, align 8
  %41 = getelementptr inbounds %struct.crypto4xx_ctx, %struct.crypto4xx_ctx* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @SYNC_SKCIPHER_REQUEST_ON_STACK(i32 %39, i32 %43)
  %45 = load i32, i32* @subreq, align 4
  %46 = load %struct.crypto4xx_ctx*, %struct.crypto4xx_ctx** %7, align 8
  %47 = getelementptr inbounds %struct.crypto4xx_ctx, %struct.crypto4xx_ctx* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @skcipher_request_set_sync_tfm(i32 %45, i32 %49)
  %51 = load i32, i32* @subreq, align 4
  %52 = load %struct.skcipher_request*, %struct.skcipher_request** %4, align 8
  %53 = getelementptr inbounds %struct.skcipher_request, %struct.skcipher_request* %52, i32 0, i32 4
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @skcipher_request_set_callback(i32 %51, i32 %55, i32* null, i32* null)
  %57 = load i32, i32* @subreq, align 4
  %58 = load %struct.skcipher_request*, %struct.skcipher_request** %4, align 8
  %59 = getelementptr inbounds %struct.skcipher_request, %struct.skcipher_request* %58, i32 0, i32 3
  %60 = load i32, i32* %59, align 8
  %61 = load %struct.skcipher_request*, %struct.skcipher_request** %4, align 8
  %62 = getelementptr inbounds %struct.skcipher_request, %struct.skcipher_request* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.skcipher_request*, %struct.skcipher_request** %4, align 8
  %65 = getelementptr inbounds %struct.skcipher_request, %struct.skcipher_request* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 8
  %67 = load %struct.skcipher_request*, %struct.skcipher_request** %4, align 8
  %68 = getelementptr inbounds %struct.skcipher_request, %struct.skcipher_request* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = call i32 @skcipher_request_set_crypt(i32 %57, i32 %60, i32 %63, i32 %66, i64 %69)
  %71 = load i32, i32* %5, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %76

73:                                               ; preds = %38
  %74 = load i32, i32* @subreq, align 4
  %75 = call i32 @crypto_skcipher_encrypt(i32 %74)
  br label %79

76:                                               ; preds = %38
  %77 = load i32, i32* @subreq, align 4
  %78 = call i32 @crypto_skcipher_decrypt(i32 %77)
  br label %79

79:                                               ; preds = %76, %73
  %80 = phi i32 [ %75, %73 ], [ %78, %76 ]
  store i32 %80, i32* %11, align 4
  %81 = load i32, i32* @subreq, align 4
  %82 = call i32 @skcipher_request_zero(i32 %81)
  %83 = load i32, i32* %11, align 4
  store i32 %83, i32* %3, align 4
  br label %95

84:                                               ; preds = %2
  %85 = load i32, i32* %5, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %90

87:                                               ; preds = %84
  %88 = load %struct.skcipher_request*, %struct.skcipher_request** %4, align 8
  %89 = call i32 @crypto4xx_encrypt_iv_stream(%struct.skcipher_request* %88)
  br label %93

90:                                               ; preds = %84
  %91 = load %struct.skcipher_request*, %struct.skcipher_request** %4, align 8
  %92 = call i32 @crypto4xx_decrypt_iv_stream(%struct.skcipher_request* %91)
  br label %93

93:                                               ; preds = %90, %87
  %94 = phi i32 [ %89, %87 ], [ %92, %90 ]
  store i32 %94, i32* %3, align 4
  br label %95

95:                                               ; preds = %93, %79
  %96 = load i32, i32* %3, align 4
  ret i32 %96
}

declare dso_local %struct.crypto_skcipher* @crypto_skcipher_reqtfm(%struct.skcipher_request*) #1

declare dso_local %struct.crypto4xx_ctx* @crypto_skcipher_ctx(%struct.crypto_skcipher*) #1

declare dso_local i64 @crypto_skcipher_ivsize(%struct.crypto_skcipher*) #1

declare dso_local i32 @be32_to_cpup(i32*) #1

declare dso_local i32 @ALIGN(i32, i32) #1

declare dso_local i32 @SYNC_SKCIPHER_REQUEST_ON_STACK(i32, i32) #1

declare dso_local i32 @skcipher_request_set_sync_tfm(i32, i32) #1

declare dso_local i32 @skcipher_request_set_callback(i32, i32, i32*, i32*) #1

declare dso_local i32 @skcipher_request_set_crypt(i32, i32, i32, i32, i64) #1

declare dso_local i32 @crypto_skcipher_encrypt(i32) #1

declare dso_local i32 @crypto_skcipher_decrypt(i32) #1

declare dso_local i32 @skcipher_request_zero(i32) #1

declare dso_local i32 @crypto4xx_encrypt_iv_stream(%struct.skcipher_request*) #1

declare dso_local i32 @crypto4xx_decrypt_iv_stream(%struct.skcipher_request*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
