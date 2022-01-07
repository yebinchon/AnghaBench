; ModuleID = '/home/carl/AnghaBench/linux/crypto/extr_gcm.c_crypto_rfc4543_setkey.c'
source_filename = "/home/carl/AnghaBench/linux/crypto/extr_gcm.c_crypto_rfc4543_setkey.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crypto_aead = type { i32 }
%struct.crypto_rfc4543_ctx = type { i32, %struct.crypto_aead* }

@EINVAL = common dso_local global i32 0, align 4
@CRYPTO_TFM_REQ_MASK = common dso_local global i32 0, align 4
@CRYPTO_TFM_RES_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.crypto_aead*, i32*, i32)* @crypto_rfc4543_setkey to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @crypto_rfc4543_setkey(%struct.crypto_aead* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.crypto_aead*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.crypto_rfc4543_ctx*, align 8
  %9 = alloca %struct.crypto_aead*, align 8
  %10 = alloca i32, align 4
  store %struct.crypto_aead* %0, %struct.crypto_aead** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load %struct.crypto_aead*, %struct.crypto_aead** %5, align 8
  %12 = call %struct.crypto_rfc4543_ctx* @crypto_aead_ctx(%struct.crypto_aead* %11)
  store %struct.crypto_rfc4543_ctx* %12, %struct.crypto_rfc4543_ctx** %8, align 8
  %13 = load %struct.crypto_rfc4543_ctx*, %struct.crypto_rfc4543_ctx** %8, align 8
  %14 = getelementptr inbounds %struct.crypto_rfc4543_ctx, %struct.crypto_rfc4543_ctx* %13, i32 0, i32 1
  %15 = load %struct.crypto_aead*, %struct.crypto_aead** %14, align 8
  store %struct.crypto_aead* %15, %struct.crypto_aead** %9, align 8
  %16 = load i32, i32* %7, align 4
  %17 = icmp ult i32 %16, 4
  br i1 %17, label %18, label %21

18:                                               ; preds = %3
  %19 = load i32, i32* @EINVAL, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %4, align 4
  br label %52

21:                                               ; preds = %3
  %22 = load i32, i32* %7, align 4
  %23 = sub i32 %22, 4
  store i32 %23, i32* %7, align 4
  %24 = load %struct.crypto_rfc4543_ctx*, %struct.crypto_rfc4543_ctx** %8, align 8
  %25 = getelementptr inbounds %struct.crypto_rfc4543_ctx, %struct.crypto_rfc4543_ctx* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load i32*, i32** %6, align 8
  %28 = load i32, i32* %7, align 4
  %29 = zext i32 %28 to i64
  %30 = getelementptr inbounds i32, i32* %27, i64 %29
  %31 = call i32 @memcpy(i32 %26, i32* %30, i32 4)
  %32 = load %struct.crypto_aead*, %struct.crypto_aead** %9, align 8
  %33 = load i32, i32* @CRYPTO_TFM_REQ_MASK, align 4
  %34 = call i32 @crypto_aead_clear_flags(%struct.crypto_aead* %32, i32 %33)
  %35 = load %struct.crypto_aead*, %struct.crypto_aead** %9, align 8
  %36 = load %struct.crypto_aead*, %struct.crypto_aead** %5, align 8
  %37 = call i32 @crypto_aead_get_flags(%struct.crypto_aead* %36)
  %38 = load i32, i32* @CRYPTO_TFM_REQ_MASK, align 4
  %39 = and i32 %37, %38
  %40 = call i32 @crypto_aead_set_flags(%struct.crypto_aead* %35, i32 %39)
  %41 = load %struct.crypto_aead*, %struct.crypto_aead** %9, align 8
  %42 = load i32*, i32** %6, align 8
  %43 = load i32, i32* %7, align 4
  %44 = call i32 @crypto_aead_setkey(%struct.crypto_aead* %41, i32* %42, i32 %43)
  store i32 %44, i32* %10, align 4
  %45 = load %struct.crypto_aead*, %struct.crypto_aead** %5, align 8
  %46 = load %struct.crypto_aead*, %struct.crypto_aead** %9, align 8
  %47 = call i32 @crypto_aead_get_flags(%struct.crypto_aead* %46)
  %48 = load i32, i32* @CRYPTO_TFM_RES_MASK, align 4
  %49 = and i32 %47, %48
  %50 = call i32 @crypto_aead_set_flags(%struct.crypto_aead* %45, i32 %49)
  %51 = load i32, i32* %10, align 4
  store i32 %51, i32* %4, align 4
  br label %52

52:                                               ; preds = %21, %18
  %53 = load i32, i32* %4, align 4
  ret i32 %53
}

declare dso_local %struct.crypto_rfc4543_ctx* @crypto_aead_ctx(%struct.crypto_aead*) #1

declare dso_local i32 @memcpy(i32, i32*, i32) #1

declare dso_local i32 @crypto_aead_clear_flags(%struct.crypto_aead*, i32) #1

declare dso_local i32 @crypto_aead_set_flags(%struct.crypto_aead*, i32) #1

declare dso_local i32 @crypto_aead_get_flags(%struct.crypto_aead*) #1

declare dso_local i32 @crypto_aead_setkey(%struct.crypto_aead*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
