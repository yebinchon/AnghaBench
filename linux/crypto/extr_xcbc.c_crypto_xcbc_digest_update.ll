; ModuleID = '/home/carl/AnghaBench/linux/crypto/extr_xcbc.c_crypto_xcbc_digest_update.c'
source_filename = "/home/carl/AnghaBench/linux/crypto/extr_xcbc.c_crypto_xcbc_digest_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.shash_desc = type { %struct.crypto_shash* }
%struct.crypto_shash = type { i32 }
%struct.xcbc_tfm_ctx = type { %struct.crypto_cipher* }
%struct.crypto_cipher = type { i32 }
%struct.xcbc_desc_ctx = type { i32, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.shash_desc*, i32*, i32)* @crypto_xcbc_digest_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @crypto_xcbc_digest_update(%struct.shash_desc* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.shash_desc*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.crypto_shash*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.xcbc_tfm_ctx*, align 8
  %11 = alloca %struct.xcbc_desc_ctx*, align 8
  %12 = alloca %struct.crypto_cipher*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  store %struct.shash_desc* %0, %struct.shash_desc** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %16 = load %struct.shash_desc*, %struct.shash_desc** %5, align 8
  %17 = getelementptr inbounds %struct.shash_desc, %struct.shash_desc* %16, i32 0, i32 0
  %18 = load %struct.crypto_shash*, %struct.crypto_shash** %17, align 8
  store %struct.crypto_shash* %18, %struct.crypto_shash** %8, align 8
  %19 = load %struct.crypto_shash*, %struct.crypto_shash** %8, align 8
  %20 = call i64 @crypto_shash_alignmask(%struct.crypto_shash* %19)
  store i64 %20, i64* %9, align 8
  %21 = load %struct.crypto_shash*, %struct.crypto_shash** %8, align 8
  %22 = call %struct.xcbc_tfm_ctx* @crypto_shash_ctx(%struct.crypto_shash* %21)
  store %struct.xcbc_tfm_ctx* %22, %struct.xcbc_tfm_ctx** %10, align 8
  %23 = load %struct.shash_desc*, %struct.shash_desc** %5, align 8
  %24 = call %struct.xcbc_desc_ctx* @shash_desc_ctx(%struct.shash_desc* %23)
  store %struct.xcbc_desc_ctx* %24, %struct.xcbc_desc_ctx** %11, align 8
  %25 = load %struct.xcbc_tfm_ctx*, %struct.xcbc_tfm_ctx** %10, align 8
  %26 = getelementptr inbounds %struct.xcbc_tfm_ctx, %struct.xcbc_tfm_ctx* %25, i32 0, i32 0
  %27 = load %struct.crypto_cipher*, %struct.crypto_cipher** %26, align 8
  store %struct.crypto_cipher* %27, %struct.crypto_cipher** %12, align 8
  %28 = load %struct.crypto_shash*, %struct.crypto_shash** %8, align 8
  %29 = call i32 @crypto_shash_blocksize(%struct.crypto_shash* %28)
  store i32 %29, i32* %13, align 4
  %30 = load %struct.xcbc_desc_ctx*, %struct.xcbc_desc_ctx** %11, align 8
  %31 = getelementptr inbounds %struct.xcbc_desc_ctx, %struct.xcbc_desc_ctx* %30, i32 0, i32 1
  %32 = load i32*, i32** %31, align 8
  %33 = getelementptr inbounds i32, i32* %32, i64 0
  %34 = load i64, i64* %9, align 8
  %35 = add i64 %34, 1
  %36 = call i32* @PTR_ALIGN(i32* %33, i64 %35)
  store i32* %36, i32** %14, align 8
  %37 = load i32*, i32** %14, align 8
  %38 = load i32, i32* %13, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i32, i32* %37, i64 %39
  store i32* %40, i32** %15, align 8
  %41 = load %struct.xcbc_desc_ctx*, %struct.xcbc_desc_ctx** %11, align 8
  %42 = getelementptr inbounds %struct.xcbc_desc_ctx, %struct.xcbc_desc_ctx* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = load i32, i32* %7, align 4
  %45 = add i32 %43, %44
  %46 = load i32, i32* %13, align 4
  %47 = icmp ule i32 %45, %46
  br i1 %47, label %48, label %63

48:                                               ; preds = %3
  %49 = load i32*, i32** %14, align 8
  %50 = load %struct.xcbc_desc_ctx*, %struct.xcbc_desc_ctx** %11, align 8
  %51 = getelementptr inbounds %struct.xcbc_desc_ctx, %struct.xcbc_desc_ctx* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = zext i32 %52 to i64
  %54 = getelementptr inbounds i32, i32* %49, i64 %53
  %55 = load i32*, i32** %6, align 8
  %56 = load i32, i32* %7, align 4
  %57 = call i32 @memcpy(i32* %54, i32* %55, i32 %56)
  %58 = load i32, i32* %7, align 4
  %59 = load %struct.xcbc_desc_ctx*, %struct.xcbc_desc_ctx** %11, align 8
  %60 = getelementptr inbounds %struct.xcbc_desc_ctx, %struct.xcbc_desc_ctx* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = add i32 %61, %58
  store i32 %62, i32* %60, align 8
  store i32 0, i32* %4, align 4
  br label %134

63:                                               ; preds = %3
  %64 = load i32*, i32** %14, align 8
  %65 = load %struct.xcbc_desc_ctx*, %struct.xcbc_desc_ctx** %11, align 8
  %66 = getelementptr inbounds %struct.xcbc_desc_ctx, %struct.xcbc_desc_ctx* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = zext i32 %67 to i64
  %69 = getelementptr inbounds i32, i32* %64, i64 %68
  %70 = load i32*, i32** %6, align 8
  %71 = load i32, i32* %13, align 4
  %72 = load %struct.xcbc_desc_ctx*, %struct.xcbc_desc_ctx** %11, align 8
  %73 = getelementptr inbounds %struct.xcbc_desc_ctx, %struct.xcbc_desc_ctx* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = sub i32 %71, %74
  %76 = call i32 @memcpy(i32* %69, i32* %70, i32 %75)
  %77 = load i32, i32* %13, align 4
  %78 = load %struct.xcbc_desc_ctx*, %struct.xcbc_desc_ctx** %11, align 8
  %79 = getelementptr inbounds %struct.xcbc_desc_ctx, %struct.xcbc_desc_ctx* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = sub i32 %77, %80
  %82 = load i32, i32* %7, align 4
  %83 = sub i32 %82, %81
  store i32 %83, i32* %7, align 4
  %84 = load i32, i32* %13, align 4
  %85 = load %struct.xcbc_desc_ctx*, %struct.xcbc_desc_ctx** %11, align 8
  %86 = getelementptr inbounds %struct.xcbc_desc_ctx, %struct.xcbc_desc_ctx* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = sub i32 %84, %87
  %89 = load i32*, i32** %6, align 8
  %90 = zext i32 %88 to i64
  %91 = getelementptr inbounds i32, i32* %89, i64 %90
  store i32* %91, i32** %6, align 8
  %92 = load i32*, i32** %15, align 8
  %93 = load i32*, i32** %14, align 8
  %94 = load i32, i32* %13, align 4
  %95 = call i32 @crypto_xor(i32* %92, i32* %93, i32 %94)
  %96 = load %struct.crypto_cipher*, %struct.crypto_cipher** %12, align 8
  %97 = load i32*, i32** %15, align 8
  %98 = load i32*, i32** %15, align 8
  %99 = call i32 @crypto_cipher_encrypt_one(%struct.crypto_cipher* %96, i32* %97, i32* %98)
  %100 = load %struct.xcbc_desc_ctx*, %struct.xcbc_desc_ctx** %11, align 8
  %101 = getelementptr inbounds %struct.xcbc_desc_ctx, %struct.xcbc_desc_ctx* %100, i32 0, i32 0
  store i32 0, i32* %101, align 8
  br label %102

102:                                              ; preds = %106, %63
  %103 = load i32, i32* %7, align 4
  %104 = load i32, i32* %13, align 4
  %105 = icmp ugt i32 %103, %104
  br i1 %105, label %106, label %122

106:                                              ; preds = %102
  %107 = load i32*, i32** %15, align 8
  %108 = load i32*, i32** %6, align 8
  %109 = load i32, i32* %13, align 4
  %110 = call i32 @crypto_xor(i32* %107, i32* %108, i32 %109)
  %111 = load %struct.crypto_cipher*, %struct.crypto_cipher** %12, align 8
  %112 = load i32*, i32** %15, align 8
  %113 = load i32*, i32** %15, align 8
  %114 = call i32 @crypto_cipher_encrypt_one(%struct.crypto_cipher* %111, i32* %112, i32* %113)
  %115 = load i32, i32* %13, align 4
  %116 = load i32*, i32** %6, align 8
  %117 = sext i32 %115 to i64
  %118 = getelementptr inbounds i32, i32* %116, i64 %117
  store i32* %118, i32** %6, align 8
  %119 = load i32, i32* %13, align 4
  %120 = load i32, i32* %7, align 4
  %121 = sub i32 %120, %119
  store i32 %121, i32* %7, align 4
  br label %102

122:                                              ; preds = %102
  %123 = load i32, i32* %7, align 4
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %133

125:                                              ; preds = %122
  %126 = load i32*, i32** %14, align 8
  %127 = load i32*, i32** %6, align 8
  %128 = load i32, i32* %7, align 4
  %129 = call i32 @memcpy(i32* %126, i32* %127, i32 %128)
  %130 = load i32, i32* %7, align 4
  %131 = load %struct.xcbc_desc_ctx*, %struct.xcbc_desc_ctx** %11, align 8
  %132 = getelementptr inbounds %struct.xcbc_desc_ctx, %struct.xcbc_desc_ctx* %131, i32 0, i32 0
  store i32 %130, i32* %132, align 8
  br label %133

133:                                              ; preds = %125, %122
  store i32 0, i32* %4, align 4
  br label %134

134:                                              ; preds = %133, %48
  %135 = load i32, i32* %4, align 4
  ret i32 %135
}

declare dso_local i64 @crypto_shash_alignmask(%struct.crypto_shash*) #1

declare dso_local %struct.xcbc_tfm_ctx* @crypto_shash_ctx(%struct.crypto_shash*) #1

declare dso_local %struct.xcbc_desc_ctx* @shash_desc_ctx(%struct.shash_desc*) #1

declare dso_local i32 @crypto_shash_blocksize(%struct.crypto_shash*) #1

declare dso_local i32* @PTR_ALIGN(i32*, i64) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @crypto_xor(i32*, i32*, i32) #1

declare dso_local i32 @crypto_cipher_encrypt_one(%struct.crypto_cipher*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
