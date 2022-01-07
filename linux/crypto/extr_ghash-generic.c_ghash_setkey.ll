; ModuleID = '/home/carl/AnghaBench/linux/crypto/extr_ghash-generic.c_ghash_setkey.c'
source_filename = "/home/carl/AnghaBench/linux/crypto/extr_ghash-generic.c_ghash_setkey.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crypto_shash = type { i32 }
%struct.ghash_ctx = type { i64 }

@GHASH_BLOCK_SIZE = common dso_local global i32 0, align 4
@CRYPTO_TFM_RES_BAD_KEY_LEN = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.crypto_shash*, i32*, i32)* @ghash_setkey to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ghash_setkey(%struct.crypto_shash* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.crypto_shash*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.ghash_ctx*, align 8
  %9 = alloca i32, align 4
  store %struct.crypto_shash* %0, %struct.crypto_shash** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load %struct.crypto_shash*, %struct.crypto_shash** %5, align 8
  %11 = call %struct.ghash_ctx* @crypto_shash_ctx(%struct.crypto_shash* %10)
  store %struct.ghash_ctx* %11, %struct.ghash_ctx** %8, align 8
  %12 = load i32, i32* %7, align 4
  %13 = load i32, i32* @GHASH_BLOCK_SIZE, align 4
  %14 = icmp ne i32 %12, %13
  br i1 %14, label %15, label %21

15:                                               ; preds = %3
  %16 = load %struct.crypto_shash*, %struct.crypto_shash** %5, align 8
  %17 = load i32, i32* @CRYPTO_TFM_RES_BAD_KEY_LEN, align 4
  %18 = call i32 @crypto_shash_set_flags(%struct.crypto_shash* %16, i32 %17)
  %19 = load i32, i32* @EINVAL, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %4, align 4
  br label %53

21:                                               ; preds = %3
  %22 = load %struct.ghash_ctx*, %struct.ghash_ctx** %8, align 8
  %23 = getelementptr inbounds %struct.ghash_ctx, %struct.ghash_ctx* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %31

26:                                               ; preds = %21
  %27 = load %struct.ghash_ctx*, %struct.ghash_ctx** %8, align 8
  %28 = getelementptr inbounds %struct.ghash_ctx, %struct.ghash_ctx* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = call i32 @gf128mul_free_4k(i64 %29)
  br label %31

31:                                               ; preds = %26, %21
  %32 = load i32, i32* @GHASH_BLOCK_SIZE, align 4
  %33 = zext i32 %32 to i64
  %34 = icmp ne i64 4, %33
  %35 = zext i1 %34 to i32
  %36 = call i32 @BUILD_BUG_ON(i32 %35)
  %37 = load i32*, i32** %6, align 8
  %38 = load i32, i32* @GHASH_BLOCK_SIZE, align 4
  %39 = call i32 @memcpy(i32* %9, i32* %37, i32 %38)
  %40 = call i64 @gf128mul_init_4k_lle(i32* %9)
  %41 = load %struct.ghash_ctx*, %struct.ghash_ctx** %8, align 8
  %42 = getelementptr inbounds %struct.ghash_ctx, %struct.ghash_ctx* %41, i32 0, i32 0
  store i64 %40, i64* %42, align 8
  %43 = load i32, i32* @GHASH_BLOCK_SIZE, align 4
  %44 = call i32 @memzero_explicit(i32* %9, i32 %43)
  %45 = load %struct.ghash_ctx*, %struct.ghash_ctx** %8, align 8
  %46 = getelementptr inbounds %struct.ghash_ctx, %struct.ghash_ctx* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %52, label %49

49:                                               ; preds = %31
  %50 = load i32, i32* @ENOMEM, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %4, align 4
  br label %53

52:                                               ; preds = %31
  store i32 0, i32* %4, align 4
  br label %53

53:                                               ; preds = %52, %49, %15
  %54 = load i32, i32* %4, align 4
  ret i32 %54
}

declare dso_local %struct.ghash_ctx* @crypto_shash_ctx(%struct.crypto_shash*) #1

declare dso_local i32 @crypto_shash_set_flags(%struct.crypto_shash*, i32) #1

declare dso_local i32 @gf128mul_free_4k(i64) #1

declare dso_local i32 @BUILD_BUG_ON(i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i64 @gf128mul_init_4k_lle(i32*) #1

declare dso_local i32 @memzero_explicit(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
