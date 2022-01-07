; ModuleID = '/home/carl/AnghaBench/linux/crypto/extr_essiv.c_essiv_aead_setkey.c'
source_filename = "/home/carl/AnghaBench/linux/crypto/extr_essiv.c_essiv_aead_setkey.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 }
%struct.crypto_aead = type { i32 }
%struct.essiv_tfm_ctx = type { i32, i32, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.crypto_aead* }
%struct.crypto_authenc_keys = type { i32, i32, i32, i32 }

@desc = common dso_local global %struct.TYPE_8__* null, align 8
@HASH_MAX_DIGESTSIZE = common dso_local global i32 0, align 4
@CRYPTO_TFM_REQ_MASK = common dso_local global i32 0, align 4
@CRYPTO_TFM_RES_MASK = common dso_local global i32 0, align 4
@CRYPTO_TFM_RES_BAD_KEY_LEN = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.crypto_aead*, i32*, i32)* @essiv_aead_setkey to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @essiv_aead_setkey(%struct.crypto_aead* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.crypto_aead*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.essiv_tfm_ctx*, align 8
  %9 = alloca %struct.crypto_authenc_keys, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.crypto_aead* %0, %struct.crypto_aead** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %14 = load %struct.crypto_aead*, %struct.crypto_aead** %5, align 8
  %15 = call %struct.essiv_tfm_ctx* @crypto_aead_ctx(%struct.crypto_aead* %14)
  store %struct.essiv_tfm_ctx* %15, %struct.essiv_tfm_ctx** %8, align 8
  %16 = load %struct.TYPE_8__*, %struct.TYPE_8__** @desc, align 8
  %17 = load %struct.essiv_tfm_ctx*, %struct.essiv_tfm_ctx** %8, align 8
  %18 = getelementptr inbounds %struct.essiv_tfm_ctx, %struct.essiv_tfm_ctx* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @SHASH_DESC_ON_STACK(%struct.TYPE_8__* %16, i32 %19)
  %21 = load i32, i32* @HASH_MAX_DIGESTSIZE, align 4
  %22 = zext i32 %21 to i64
  %23 = call i8* @llvm.stacksave()
  store i8* %23, i8** %10, align 8
  %24 = alloca i32, i64 %22, align 16
  store i64 %22, i64* %11, align 8
  %25 = load %struct.essiv_tfm_ctx*, %struct.essiv_tfm_ctx** %8, align 8
  %26 = getelementptr inbounds %struct.essiv_tfm_ctx, %struct.essiv_tfm_ctx* %25, i32 0, i32 2
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %26, i32 0, i32 0
  %28 = load %struct.crypto_aead*, %struct.crypto_aead** %27, align 8
  %29 = load i32, i32* @CRYPTO_TFM_REQ_MASK, align 4
  %30 = call i32 @crypto_aead_clear_flags(%struct.crypto_aead* %28, i32 %29)
  %31 = load %struct.essiv_tfm_ctx*, %struct.essiv_tfm_ctx** %8, align 8
  %32 = getelementptr inbounds %struct.essiv_tfm_ctx, %struct.essiv_tfm_ctx* %31, i32 0, i32 2
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i32 0, i32 0
  %34 = load %struct.crypto_aead*, %struct.crypto_aead** %33, align 8
  %35 = load %struct.crypto_aead*, %struct.crypto_aead** %5, align 8
  %36 = call i32 @crypto_aead_get_flags(%struct.crypto_aead* %35)
  %37 = load i32, i32* @CRYPTO_TFM_REQ_MASK, align 4
  %38 = and i32 %36, %37
  %39 = call i32 @crypto_aead_set_flags(%struct.crypto_aead* %34, i32 %38)
  %40 = load %struct.essiv_tfm_ctx*, %struct.essiv_tfm_ctx** %8, align 8
  %41 = getelementptr inbounds %struct.essiv_tfm_ctx, %struct.essiv_tfm_ctx* %40, i32 0, i32 2
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %41, i32 0, i32 0
  %43 = load %struct.crypto_aead*, %struct.crypto_aead** %42, align 8
  %44 = load i32*, i32** %6, align 8
  %45 = load i32, i32* %7, align 4
  %46 = call i32 @crypto_aead_setkey(%struct.crypto_aead* %43, i32* %44, i32 %45)
  store i32 %46, i32* %12, align 4
  %47 = load %struct.crypto_aead*, %struct.crypto_aead** %5, align 8
  %48 = load %struct.essiv_tfm_ctx*, %struct.essiv_tfm_ctx** %8, align 8
  %49 = getelementptr inbounds %struct.essiv_tfm_ctx, %struct.essiv_tfm_ctx* %48, i32 0, i32 2
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %49, i32 0, i32 0
  %51 = load %struct.crypto_aead*, %struct.crypto_aead** %50, align 8
  %52 = call i32 @crypto_aead_get_flags(%struct.crypto_aead* %51)
  %53 = load i32, i32* @CRYPTO_TFM_RES_MASK, align 4
  %54 = and i32 %52, %53
  %55 = call i32 @crypto_aead_set_flags(%struct.crypto_aead* %47, i32 %54)
  %56 = load i32, i32* %12, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %60

58:                                               ; preds = %3
  %59 = load i32, i32* %12, align 4
  store i32 %59, i32* %4, align 4
  store i32 1, i32* %13, align 4
  br label %138

60:                                               ; preds = %3
  %61 = load i32*, i32** %6, align 8
  %62 = load i32, i32* %7, align 4
  %63 = call i64 @crypto_authenc_extractkeys(%struct.crypto_authenc_keys* %9, i32* %61, i32 %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %71

65:                                               ; preds = %60
  %66 = load %struct.crypto_aead*, %struct.crypto_aead** %5, align 8
  %67 = load i32, i32* @CRYPTO_TFM_RES_BAD_KEY_LEN, align 4
  %68 = call i32 @crypto_aead_set_flags(%struct.crypto_aead* %66, i32 %67)
  %69 = load i32, i32* @EINVAL, align 4
  %70 = sub nsw i32 0, %69
  store i32 %70, i32* %4, align 4
  store i32 1, i32* %13, align 4
  br label %138

71:                                               ; preds = %60
  %72 = load %struct.essiv_tfm_ctx*, %struct.essiv_tfm_ctx** %8, align 8
  %73 = getelementptr inbounds %struct.essiv_tfm_ctx, %struct.essiv_tfm_ctx* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.TYPE_8__*, %struct.TYPE_8__** @desc, align 8
  %76 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %75, i32 0, i32 0
  store i32 %74, i32* %76, align 4
  %77 = load %struct.TYPE_8__*, %struct.TYPE_8__** @desc, align 8
  %78 = call i64 @crypto_shash_init(%struct.TYPE_8__* %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %81

80:                                               ; preds = %71
  br label %100

81:                                               ; preds = %71
  %82 = load %struct.TYPE_8__*, %struct.TYPE_8__** @desc, align 8
  %83 = getelementptr inbounds %struct.crypto_authenc_keys, %struct.crypto_authenc_keys* %9, i32 0, i32 3
  %84 = load i32, i32* %83, align 4
  %85 = getelementptr inbounds %struct.crypto_authenc_keys, %struct.crypto_authenc_keys* %9, i32 0, i32 2
  %86 = load i32, i32* %85, align 4
  %87 = call i64 @crypto_shash_update(%struct.TYPE_8__* %82, i32 %84, i32 %86)
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %90

89:                                               ; preds = %81
  br label %98

90:                                               ; preds = %81
  %91 = load %struct.TYPE_8__*, %struct.TYPE_8__** @desc, align 8
  %92 = getelementptr inbounds %struct.crypto_authenc_keys, %struct.crypto_authenc_keys* %9, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = getelementptr inbounds %struct.crypto_authenc_keys, %struct.crypto_authenc_keys* %9, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = call i32 @crypto_shash_finup(%struct.TYPE_8__* %91, i32 %93, i32 %95, i32* %24)
  %97 = sext i32 %96 to i64
  br label %98

98:                                               ; preds = %90, %89
  %99 = phi i64 [ %87, %89 ], [ %97, %90 ]
  br label %100

100:                                              ; preds = %98, %80
  %101 = phi i64 [ %78, %80 ], [ %99, %98 ]
  %102 = trunc i64 %101 to i32
  store i32 %102, i32* %12, align 4
  %103 = load i32, i32* %12, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %107

105:                                              ; preds = %100
  %106 = load i32, i32* %12, align 4
  store i32 %106, i32* %4, align 4
  store i32 1, i32* %13, align 4
  br label %138

107:                                              ; preds = %100
  %108 = load %struct.essiv_tfm_ctx*, %struct.essiv_tfm_ctx** %8, align 8
  %109 = getelementptr inbounds %struct.essiv_tfm_ctx, %struct.essiv_tfm_ctx* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  %111 = load i32, i32* @CRYPTO_TFM_REQ_MASK, align 4
  %112 = call i32 @crypto_cipher_clear_flags(i32 %110, i32 %111)
  %113 = load %struct.essiv_tfm_ctx*, %struct.essiv_tfm_ctx** %8, align 8
  %114 = getelementptr inbounds %struct.essiv_tfm_ctx, %struct.essiv_tfm_ctx* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 8
  %116 = load %struct.crypto_aead*, %struct.crypto_aead** %5, align 8
  %117 = call i32 @crypto_aead_get_flags(%struct.crypto_aead* %116)
  %118 = load i32, i32* @CRYPTO_TFM_REQ_MASK, align 4
  %119 = and i32 %117, %118
  %120 = call i32 @crypto_cipher_set_flags(i32 %115, i32 %119)
  %121 = load %struct.essiv_tfm_ctx*, %struct.essiv_tfm_ctx** %8, align 8
  %122 = getelementptr inbounds %struct.essiv_tfm_ctx, %struct.essiv_tfm_ctx* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 8
  %124 = load %struct.essiv_tfm_ctx*, %struct.essiv_tfm_ctx** %8, align 8
  %125 = getelementptr inbounds %struct.essiv_tfm_ctx, %struct.essiv_tfm_ctx* %124, i32 0, i32 1
  %126 = load i32, i32* %125, align 4
  %127 = call i32 @crypto_shash_digestsize(i32 %126)
  %128 = call i32 @crypto_cipher_setkey(i32 %123, i32* %24, i32 %127)
  store i32 %128, i32* %12, align 4
  %129 = load %struct.crypto_aead*, %struct.crypto_aead** %5, align 8
  %130 = load %struct.essiv_tfm_ctx*, %struct.essiv_tfm_ctx** %8, align 8
  %131 = getelementptr inbounds %struct.essiv_tfm_ctx, %struct.essiv_tfm_ctx* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 8
  %133 = call i32 @crypto_cipher_get_flags(i32 %132)
  %134 = load i32, i32* @CRYPTO_TFM_RES_MASK, align 4
  %135 = and i32 %133, %134
  %136 = call i32 @crypto_aead_set_flags(%struct.crypto_aead* %129, i32 %135)
  %137 = load i32, i32* %12, align 4
  store i32 %137, i32* %4, align 4
  store i32 1, i32* %13, align 4
  br label %138

138:                                              ; preds = %107, %105, %65, %58
  %139 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %139)
  %140 = load i32, i32* %4, align 4
  ret i32 %140
}

declare dso_local %struct.essiv_tfm_ctx* @crypto_aead_ctx(%struct.crypto_aead*) #1

declare dso_local i32 @SHASH_DESC_ON_STACK(%struct.TYPE_8__*, i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @crypto_aead_clear_flags(%struct.crypto_aead*, i32) #1

declare dso_local i32 @crypto_aead_set_flags(%struct.crypto_aead*, i32) #1

declare dso_local i32 @crypto_aead_get_flags(%struct.crypto_aead*) #1

declare dso_local i32 @crypto_aead_setkey(%struct.crypto_aead*, i32*, i32) #1

declare dso_local i64 @crypto_authenc_extractkeys(%struct.crypto_authenc_keys*, i32*, i32) #1

declare dso_local i64 @crypto_shash_init(%struct.TYPE_8__*) #1

declare dso_local i64 @crypto_shash_update(%struct.TYPE_8__*, i32, i32) #1

declare dso_local i32 @crypto_shash_finup(%struct.TYPE_8__*, i32, i32, i32*) #1

declare dso_local i32 @crypto_cipher_clear_flags(i32, i32) #1

declare dso_local i32 @crypto_cipher_set_flags(i32, i32) #1

declare dso_local i32 @crypto_cipher_setkey(i32, i32*, i32) #1

declare dso_local i32 @crypto_shash_digestsize(i32) #1

declare dso_local i32 @crypto_cipher_get_flags(i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
