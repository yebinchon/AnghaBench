; ModuleID = '/home/carl/AnghaBench/lede/package/kernel/lantiq/ltq-deu/src/extr_ifxmips_aes.c_ctr_rfc3686_aes_set_key.c'
source_filename = "/home/carl/AnghaBench/lede/package/kernel/lantiq/ltq-deu/src/extr_ifxmips_aes.c_ctr_rfc3686_aes_set_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crypto_tfm = type { i32 }
%struct.aes_ctx = type { i32, i64, i32* }

@CTR_RFC3686_NONCE_SIZE = common dso_local global i32 0, align 4
@CRYPTO_TFM_RES_BAD_KEY_LEN = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ctr_rfc3686_aes_set_key(%struct.crypto_tfm* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.crypto_tfm*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.aes_ctx*, align 8
  %9 = alloca i64*, align 8
  store %struct.crypto_tfm* %0, %struct.crypto_tfm** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load %struct.crypto_tfm*, %struct.crypto_tfm** %5, align 8
  %11 = call %struct.aes_ctx* @crypto_tfm_ctx(%struct.crypto_tfm* %10)
  store %struct.aes_ctx* %11, %struct.aes_ctx** %8, align 8
  %12 = load %struct.crypto_tfm*, %struct.crypto_tfm** %5, align 8
  %13 = getelementptr inbounds %struct.crypto_tfm, %struct.crypto_tfm* %12, i32 0, i32 0
  %14 = bitcast i32* %13 to i64*
  store i64* %14, i64** %9, align 8
  %15 = load %struct.aes_ctx*, %struct.aes_ctx** %8, align 8
  %16 = getelementptr inbounds %struct.aes_ctx, %struct.aes_ctx* %15, i32 0, i32 2
  %17 = load i32*, i32** %16, align 8
  %18 = load i32*, i32** %6, align 8
  %19 = load i32, i32* %7, align 4
  %20 = load i32, i32* @CTR_RFC3686_NONCE_SIZE, align 4
  %21 = sub i32 %19, %20
  %22 = zext i32 %21 to i64
  %23 = getelementptr inbounds i32, i32* %18, i64 %22
  %24 = load i32, i32* @CTR_RFC3686_NONCE_SIZE, align 4
  %25 = call i32 @memcpy(i32* %17, i32* %23, i32 %24)
  %26 = load i32, i32* @CTR_RFC3686_NONCE_SIZE, align 4
  %27 = load i32, i32* %7, align 4
  %28 = sub i32 %27, %26
  store i32 %28, i32* %7, align 4
  %29 = load i32, i32* %7, align 4
  %30 = icmp ne i32 %29, 16
  br i1 %30, label %31, label %44

31:                                               ; preds = %3
  %32 = load i32, i32* %7, align 4
  %33 = icmp ne i32 %32, 24
  br i1 %33, label %34, label %44

34:                                               ; preds = %31
  %35 = load i32, i32* %7, align 4
  %36 = icmp ne i32 %35, 32
  br i1 %36, label %37, label %44

37:                                               ; preds = %34
  %38 = load i64, i64* @CRYPTO_TFM_RES_BAD_KEY_LEN, align 8
  %39 = load i64*, i64** %9, align 8
  %40 = load i64, i64* %39, align 8
  %41 = or i64 %40, %38
  store i64 %41, i64* %39, align 8
  %42 = load i32, i32* @EINVAL, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %4, align 4
  br label %55

44:                                               ; preds = %34, %31, %3
  %45 = load i32, i32* %7, align 4
  %46 = load %struct.aes_ctx*, %struct.aes_ctx** %8, align 8
  %47 = getelementptr inbounds %struct.aes_ctx, %struct.aes_ctx* %46, i32 0, i32 0
  store i32 %45, i32* %47, align 8
  %48 = load %struct.aes_ctx*, %struct.aes_ctx** %8, align 8
  %49 = getelementptr inbounds %struct.aes_ctx, %struct.aes_ctx* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = inttoptr i64 %50 to i32*
  %52 = load i32*, i32** %6, align 8
  %53 = load i32, i32* %7, align 4
  %54 = call i32 @memcpy(i32* %51, i32* %52, i32 %53)
  store i32 0, i32* %4, align 4
  br label %55

55:                                               ; preds = %44, %37
  %56 = load i32, i32* %4, align 4
  ret i32 %56
}

declare dso_local %struct.aes_ctx* @crypto_tfm_ctx(%struct.crypto_tfm*) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
