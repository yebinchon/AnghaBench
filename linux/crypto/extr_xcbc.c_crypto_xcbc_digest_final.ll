; ModuleID = '/home/carl/AnghaBench/linux/crypto/extr_xcbc.c_crypto_xcbc_digest_final.c'
source_filename = "/home/carl/AnghaBench/linux/crypto/extr_xcbc.c_crypto_xcbc_digest_final.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.shash_desc = type { %struct.crypto_shash* }
%struct.crypto_shash = type { i32 }
%struct.xcbc_tfm_ctx = type { i32*, %struct.crypto_cipher* }
%struct.crypto_cipher = type { i32 }
%struct.xcbc_desc_ctx = type { i32, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.shash_desc*, i32*)* @crypto_xcbc_digest_final to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @crypto_xcbc_digest_final(%struct.shash_desc* %0, i32* %1) #0 {
  %3 = alloca %struct.shash_desc*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.crypto_shash*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.xcbc_tfm_ctx*, align 8
  %8 = alloca %struct.xcbc_desc_ctx*, align 8
  %9 = alloca %struct.crypto_cipher*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32*, align 8
  store %struct.shash_desc* %0, %struct.shash_desc** %3, align 8
  store i32* %1, i32** %4, align 8
  %17 = load %struct.shash_desc*, %struct.shash_desc** %3, align 8
  %18 = getelementptr inbounds %struct.shash_desc, %struct.shash_desc* %17, i32 0, i32 0
  %19 = load %struct.crypto_shash*, %struct.crypto_shash** %18, align 8
  store %struct.crypto_shash* %19, %struct.crypto_shash** %5, align 8
  %20 = load %struct.crypto_shash*, %struct.crypto_shash** %5, align 8
  %21 = call i64 @crypto_shash_alignmask(%struct.crypto_shash* %20)
  store i64 %21, i64* %6, align 8
  %22 = load %struct.crypto_shash*, %struct.crypto_shash** %5, align 8
  %23 = call %struct.xcbc_tfm_ctx* @crypto_shash_ctx(%struct.crypto_shash* %22)
  store %struct.xcbc_tfm_ctx* %23, %struct.xcbc_tfm_ctx** %7, align 8
  %24 = load %struct.shash_desc*, %struct.shash_desc** %3, align 8
  %25 = call %struct.xcbc_desc_ctx* @shash_desc_ctx(%struct.shash_desc* %24)
  store %struct.xcbc_desc_ctx* %25, %struct.xcbc_desc_ctx** %8, align 8
  %26 = load %struct.xcbc_tfm_ctx*, %struct.xcbc_tfm_ctx** %7, align 8
  %27 = getelementptr inbounds %struct.xcbc_tfm_ctx, %struct.xcbc_tfm_ctx* %26, i32 0, i32 1
  %28 = load %struct.crypto_cipher*, %struct.crypto_cipher** %27, align 8
  store %struct.crypto_cipher* %28, %struct.crypto_cipher** %9, align 8
  %29 = load %struct.crypto_shash*, %struct.crypto_shash** %5, align 8
  %30 = call i32 @crypto_shash_blocksize(%struct.crypto_shash* %29)
  store i32 %30, i32* %10, align 4
  %31 = load %struct.xcbc_tfm_ctx*, %struct.xcbc_tfm_ctx** %7, align 8
  %32 = getelementptr inbounds %struct.xcbc_tfm_ctx, %struct.xcbc_tfm_ctx* %31, i32 0, i32 0
  %33 = load i32*, i32** %32, align 8
  %34 = getelementptr inbounds i32, i32* %33, i64 0
  %35 = load i64, i64* %6, align 8
  %36 = add i64 %35, 1
  %37 = call i32* @PTR_ALIGN(i32* %34, i64 %36)
  store i32* %37, i32** %11, align 8
  %38 = load %struct.xcbc_desc_ctx*, %struct.xcbc_desc_ctx** %8, align 8
  %39 = getelementptr inbounds %struct.xcbc_desc_ctx, %struct.xcbc_desc_ctx* %38, i32 0, i32 1
  %40 = load i32*, i32** %39, align 8
  %41 = getelementptr inbounds i32, i32* %40, i64 0
  %42 = load i64, i64* %6, align 8
  %43 = add i64 %42, 1
  %44 = call i32* @PTR_ALIGN(i32* %41, i64 %43)
  store i32* %44, i32** %12, align 8
  %45 = load i32*, i32** %12, align 8
  %46 = load i32, i32* %10, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i32, i32* %45, i64 %47
  store i32* %48, i32** %13, align 8
  store i32 0, i32* %14, align 4
  %49 = load %struct.xcbc_desc_ctx*, %struct.xcbc_desc_ctx** %8, align 8
  %50 = getelementptr inbounds %struct.xcbc_desc_ctx, %struct.xcbc_desc_ctx* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = load i32, i32* %10, align 4
  %53 = icmp ne i32 %51, %52
  br i1 %53, label %54, label %80

54:                                               ; preds = %2
  %55 = load i32*, i32** %12, align 8
  %56 = load %struct.xcbc_desc_ctx*, %struct.xcbc_desc_ctx** %8, align 8
  %57 = getelementptr inbounds %struct.xcbc_desc_ctx, %struct.xcbc_desc_ctx* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i32, i32* %55, i64 %59
  store i32* %60, i32** %16, align 8
  %61 = load i32*, i32** %16, align 8
  store i32 128, i32* %61, align 4
  %62 = load i32*, i32** %16, align 8
  %63 = getelementptr inbounds i32, i32* %62, i32 1
  store i32* %63, i32** %16, align 8
  %64 = load i32, i32* %10, align 4
  %65 = load %struct.xcbc_desc_ctx*, %struct.xcbc_desc_ctx** %8, align 8
  %66 = getelementptr inbounds %struct.xcbc_desc_ctx, %struct.xcbc_desc_ctx* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = sub nsw i32 %64, %67
  %69 = sub nsw i32 %68, 1
  store i32 %69, i32* %15, align 4
  %70 = load i32, i32* %15, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %76

72:                                               ; preds = %54
  %73 = load i32*, i32** %16, align 8
  %74 = load i32, i32* %15, align 4
  %75 = call i32 @memset(i32* %73, i32 0, i32 %74)
  br label %76

76:                                               ; preds = %72, %54
  %77 = load i32, i32* %10, align 4
  %78 = load i32, i32* %14, align 4
  %79 = add i32 %78, %77
  store i32 %79, i32* %14, align 4
  br label %80

80:                                               ; preds = %76, %2
  %81 = load i32*, i32** %13, align 8
  %82 = load i32*, i32** %12, align 8
  %83 = load i32, i32* %10, align 4
  %84 = call i32 @crypto_xor(i32* %81, i32* %82, i32 %83)
  %85 = load i32*, i32** %13, align 8
  %86 = load i32*, i32** %11, align 8
  %87 = load i32, i32* %14, align 4
  %88 = zext i32 %87 to i64
  %89 = getelementptr inbounds i32, i32* %86, i64 %88
  %90 = load i32, i32* %10, align 4
  %91 = call i32 @crypto_xor(i32* %85, i32* %89, i32 %90)
  %92 = load %struct.crypto_cipher*, %struct.crypto_cipher** %9, align 8
  %93 = load i32*, i32** %4, align 8
  %94 = load i32*, i32** %13, align 8
  %95 = call i32 @crypto_cipher_encrypt_one(%struct.crypto_cipher* %92, i32* %93, i32* %94)
  ret i32 0
}

declare dso_local i64 @crypto_shash_alignmask(%struct.crypto_shash*) #1

declare dso_local %struct.xcbc_tfm_ctx* @crypto_shash_ctx(%struct.crypto_shash*) #1

declare dso_local %struct.xcbc_desc_ctx* @shash_desc_ctx(%struct.shash_desc*) #1

declare dso_local i32 @crypto_shash_blocksize(%struct.crypto_shash*) #1

declare dso_local i32* @PTR_ALIGN(i32*, i64) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @crypto_xor(i32*, i32*, i32) #1

declare dso_local i32 @crypto_cipher_encrypt_one(%struct.crypto_cipher*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
