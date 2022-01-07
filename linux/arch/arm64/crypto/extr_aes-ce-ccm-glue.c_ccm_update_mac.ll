; ModuleID = '/home/carl/AnghaBench/linux/arch/arm64/crypto/extr_aes-ce-ccm-glue.c_ccm_update_mac.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm64/crypto/extr_aes-ce-ccm-glue.c_ccm_update_mac.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crypto_aes_ctx = type { i32 }

@AES_BLOCK_SIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.crypto_aes_ctx*, i32*, i32*, i64, i64*)* @ccm_update_mac to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ccm_update_mac(%struct.crypto_aes_ctx* %0, i32* %1, i32* %2, i64 %3, i64* %4) #0 {
  %6 = alloca %struct.crypto_aes_ctx*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i32, align 4
  store %struct.crypto_aes_ctx* %0, %struct.crypto_aes_ctx** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i64 %3, i64* %9, align 8
  store i64* %4, i64** %10, align 8
  %12 = call i64 (...) @crypto_simd_usable()
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %27

14:                                               ; preds = %5
  %15 = call i32 (...) @kernel_neon_begin()
  %16 = load i32*, i32** %7, align 8
  %17 = load i32*, i32** %8, align 8
  %18 = load i64, i64* %9, align 8
  %19 = load i64*, i64** %10, align 8
  %20 = load %struct.crypto_aes_ctx*, %struct.crypto_aes_ctx** %6, align 8
  %21 = getelementptr inbounds %struct.crypto_aes_ctx, %struct.crypto_aes_ctx* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.crypto_aes_ctx*, %struct.crypto_aes_ctx** %6, align 8
  %24 = call i32 @num_rounds(%struct.crypto_aes_ctx* %23)
  %25 = call i32 @ce_aes_ccm_auth_data(i32* %16, i32* %17, i64 %18, i64* %19, i32 %22, i32 %24)
  %26 = call i32 (...) @kernel_neon_end()
  br label %99

27:                                               ; preds = %5
  %28 = load i64*, i64** %10, align 8
  %29 = load i64, i64* %28, align 8
  %30 = icmp ugt i64 %29, 0
  br i1 %30, label %31, label %64

31:                                               ; preds = %27
  %32 = load i64*, i64** %10, align 8
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @AES_BLOCK_SIZE, align 8
  %35 = icmp ult i64 %33, %34
  br i1 %35, label %36, label %64

36:                                               ; preds = %31
  %37 = load i64, i64* %9, align 8
  %38 = load i64, i64* @AES_BLOCK_SIZE, align 8
  %39 = load i64*, i64** %10, align 8
  %40 = load i64, i64* %39, align 8
  %41 = sub i64 %38, %40
  %42 = call i32 @min(i64 %37, i64 %41)
  store i32 %42, i32* %11, align 4
  %43 = load i32*, i32** %7, align 8
  %44 = load i64*, i64** %10, align 8
  %45 = load i64, i64* %44, align 8
  %46 = getelementptr inbounds i32, i32* %43, i64 %45
  %47 = load i32*, i32** %8, align 8
  %48 = load i32, i32* %11, align 4
  %49 = sext i32 %48 to i64
  %50 = call i32 @crypto_xor(i32* %46, i32* %47, i64 %49)
  %51 = load i32, i32* %11, align 4
  %52 = sext i32 %51 to i64
  %53 = load i64*, i64** %10, align 8
  %54 = load i64, i64* %53, align 8
  %55 = add i64 %54, %52
  store i64 %55, i64* %53, align 8
  %56 = load i32, i32* %11, align 4
  %57 = load i32*, i32** %8, align 8
  %58 = sext i32 %56 to i64
  %59 = getelementptr inbounds i32, i32* %57, i64 %58
  store i32* %59, i32** %8, align 8
  %60 = load i32, i32* %11, align 4
  %61 = sext i32 %60 to i64
  %62 = load i64, i64* %9, align 8
  %63 = sub i64 %62, %61
  store i64 %63, i64* %9, align 8
  br label %64

64:                                               ; preds = %36, %31, %27
  br label %65

65:                                               ; preds = %69, %64
  %66 = load i64, i64* %9, align 8
  %67 = load i64, i64* @AES_BLOCK_SIZE, align 8
  %68 = icmp uge i64 %66, %67
  br i1 %68, label %69, label %84

69:                                               ; preds = %65
  %70 = load %struct.crypto_aes_ctx*, %struct.crypto_aes_ctx** %6, align 8
  %71 = load i32*, i32** %7, align 8
  %72 = load i32*, i32** %7, align 8
  %73 = call i32 @aes_encrypt(%struct.crypto_aes_ctx* %70, i32* %71, i32* %72)
  %74 = load i32*, i32** %7, align 8
  %75 = load i32*, i32** %8, align 8
  %76 = load i64, i64* @AES_BLOCK_SIZE, align 8
  %77 = call i32 @crypto_xor(i32* %74, i32* %75, i64 %76)
  %78 = load i64, i64* @AES_BLOCK_SIZE, align 8
  %79 = load i32*, i32** %8, align 8
  %80 = getelementptr inbounds i32, i32* %79, i64 %78
  store i32* %80, i32** %8, align 8
  %81 = load i64, i64* @AES_BLOCK_SIZE, align 8
  %82 = load i64, i64* %9, align 8
  %83 = sub i64 %82, %81
  store i64 %83, i64* %9, align 8
  br label %65

84:                                               ; preds = %65
  %85 = load i64, i64* %9, align 8
  %86 = icmp ugt i64 %85, 0
  br i1 %86, label %87, label %98

87:                                               ; preds = %84
  %88 = load %struct.crypto_aes_ctx*, %struct.crypto_aes_ctx** %6, align 8
  %89 = load i32*, i32** %7, align 8
  %90 = load i32*, i32** %7, align 8
  %91 = call i32 @aes_encrypt(%struct.crypto_aes_ctx* %88, i32* %89, i32* %90)
  %92 = load i32*, i32** %7, align 8
  %93 = load i32*, i32** %8, align 8
  %94 = load i64, i64* %9, align 8
  %95 = call i32 @crypto_xor(i32* %92, i32* %93, i64 %94)
  %96 = load i64, i64* %9, align 8
  %97 = load i64*, i64** %10, align 8
  store i64 %96, i64* %97, align 8
  br label %98

98:                                               ; preds = %87, %84
  br label %99

99:                                               ; preds = %98, %14
  ret void
}

declare dso_local i64 @crypto_simd_usable(...) #1

declare dso_local i32 @kernel_neon_begin(...) #1

declare dso_local i32 @ce_aes_ccm_auth_data(i32*, i32*, i64, i64*, i32, i32) #1

declare dso_local i32 @num_rounds(%struct.crypto_aes_ctx*) #1

declare dso_local i32 @kernel_neon_end(...) #1

declare dso_local i32 @min(i64, i64) #1

declare dso_local i32 @crypto_xor(i32*, i32*, i64) #1

declare dso_local i32 @aes_encrypt(%struct.crypto_aes_ctx*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
