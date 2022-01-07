; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/amcc/extr_crypto4xx_alg.c_crypto4xx_setkey_aes_ccm.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/amcc/extr_crypto4xx_alg.c_crypto4xx_setkey_aes_ccm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crypto_aead = type { i32 }
%struct.crypto_tfm = type { i32 }
%struct.crypto4xx_ctx = type { i32, i64, i64 }
%struct.dynamic_sa_ctl = type { %struct.TYPE_6__, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32 }

@SA_AES128_CCM_LEN = common dso_local global i64 0, align 8
@SA_AES_CCM_CONTENTS = common dso_local global i32 0, align 4
@SA_SAVE_HASH = common dso_local global i32 0, align 4
@SA_NOT_SAVE_IV = common dso_local global i32 0, align 4
@SA_LOAD_HASH_FROM_SA = common dso_local global i32 0, align 4
@SA_LOAD_IV_FROM_STATE = common dso_local global i32 0, align 4
@SA_NO_HEADER_PROC = common dso_local global i32 0, align 4
@SA_HASH_ALG_CBC_MAC = common dso_local global i32 0, align 4
@SA_CIPHER_ALG_AES = common dso_local global i32 0, align 4
@SA_PAD_TYPE_ZERO = common dso_local global i32 0, align 4
@SA_OP_GROUP_BASIC = common dso_local global i32 0, align 4
@SA_OPCODE_HASH_DECRYPT = common dso_local global i32 0, align 4
@DIR_INBOUND = common dso_local global i32 0, align 4
@CRYPTO_MODE_CTR = common dso_local global i32 0, align 4
@SA_HASH_MODE_HASH = common dso_local global i32 0, align 4
@CRYPTO_FEEDBACK_MODE_NO_FB = common dso_local global i32 0, align 4
@SA_EXTENDED_SN_OFF = common dso_local global i32 0, align 4
@SA_SEQ_MASK_OFF = common dso_local global i32 0, align 4
@SA_MC_ENABLE = common dso_local global i32 0, align 4
@SA_NOT_COPY_PAD = common dso_local global i32 0, align 4
@SA_COPY_PAYLOAD = common dso_local global i32 0, align 4
@SA_NOT_COPY_HDR = common dso_local global i32 0, align 4
@SA_OPCODE_ENCRYPT_HASH = common dso_local global i32 0, align 4
@DIR_OUTBOUND = common dso_local global i32 0, align 4
@SA_COPY_PAD = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @crypto4xx_setkey_aes_ccm(%struct.crypto_aead* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.crypto_aead*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.crypto_tfm*, align 8
  %9 = alloca %struct.crypto4xx_ctx*, align 8
  %10 = alloca %struct.dynamic_sa_ctl*, align 8
  %11 = alloca i32, align 4
  store %struct.crypto_aead* %0, %struct.crypto_aead** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %12 = load %struct.crypto_aead*, %struct.crypto_aead** %5, align 8
  %13 = call %struct.crypto_tfm* @crypto_aead_tfm(%struct.crypto_aead* %12)
  store %struct.crypto_tfm* %13, %struct.crypto_tfm** %8, align 8
  %14 = load %struct.crypto_tfm*, %struct.crypto_tfm** %8, align 8
  %15 = call %struct.crypto4xx_ctx* @crypto_tfm_ctx(%struct.crypto_tfm* %14)
  store %struct.crypto4xx_ctx* %15, %struct.crypto4xx_ctx** %9, align 8
  store i32 0, i32* %11, align 4
  %16 = load %struct.crypto4xx_ctx*, %struct.crypto4xx_ctx** %9, align 8
  %17 = load %struct.crypto_aead*, %struct.crypto_aead** %5, align 8
  %18 = load i32*, i32** %6, align 8
  %19 = load i32, i32* %7, align 4
  %20 = call i32 @crypto4xx_aead_setup_fallback(%struct.crypto4xx_ctx* %16, %struct.crypto_aead* %17, i32* %18, i32 %19)
  store i32 %20, i32* %11, align 4
  %21 = load i32, i32* %11, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %3
  %24 = load i32, i32* %11, align 4
  store i32 %24, i32* %4, align 4
  br label %143

25:                                               ; preds = %3
  %26 = load %struct.crypto4xx_ctx*, %struct.crypto4xx_ctx** %9, align 8
  %27 = getelementptr inbounds %struct.crypto4xx_ctx, %struct.crypto4xx_ctx* %26, i32 0, i32 2
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %35, label %30

30:                                               ; preds = %25
  %31 = load %struct.crypto4xx_ctx*, %struct.crypto4xx_ctx** %9, align 8
  %32 = getelementptr inbounds %struct.crypto4xx_ctx, %struct.crypto4xx_ctx* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %30, %25
  %36 = load %struct.crypto4xx_ctx*, %struct.crypto4xx_ctx** %9, align 8
  %37 = call i32 @crypto4xx_free_sa(%struct.crypto4xx_ctx* %36)
  br label %38

38:                                               ; preds = %35, %30
  %39 = load %struct.crypto4xx_ctx*, %struct.crypto4xx_ctx** %9, align 8
  %40 = load i64, i64* @SA_AES128_CCM_LEN, align 8
  %41 = load i32, i32* %7, align 4
  %42 = sub i32 %41, 16
  %43 = udiv i32 %42, 4
  %44 = zext i32 %43 to i64
  %45 = add nsw i64 %40, %44
  %46 = call i32 @crypto4xx_alloc_sa(%struct.crypto4xx_ctx* %39, i64 %45)
  store i32 %46, i32* %11, align 4
  %47 = load i32, i32* %11, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %38
  %50 = load i32, i32* %11, align 4
  store i32 %50, i32* %4, align 4
  br label %143

51:                                               ; preds = %38
  %52 = load %struct.crypto4xx_ctx*, %struct.crypto4xx_ctx** %9, align 8
  %53 = getelementptr inbounds %struct.crypto4xx_ctx, %struct.crypto4xx_ctx* %52, i32 0, i32 2
  %54 = load i64, i64* %53, align 8
  %55 = inttoptr i64 %54 to %struct.dynamic_sa_ctl*
  store %struct.dynamic_sa_ctl* %55, %struct.dynamic_sa_ctl** %10, align 8
  %56 = load i32, i32* @SA_AES_CCM_CONTENTS, align 4
  %57 = load i32, i32* %7, align 4
  %58 = shl i32 %57, 2
  %59 = or i32 %56, %58
  %60 = load %struct.dynamic_sa_ctl*, %struct.dynamic_sa_ctl** %10, align 8
  %61 = getelementptr inbounds %struct.dynamic_sa_ctl, %struct.dynamic_sa_ctl* %60, i32 0, i32 1
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 0
  store i32 %59, i32* %62, align 4
  %63 = load %struct.dynamic_sa_ctl*, %struct.dynamic_sa_ctl** %10, align 8
  %64 = load i32, i32* @SA_SAVE_HASH, align 4
  %65 = load i32, i32* @SA_NOT_SAVE_IV, align 4
  %66 = load i32, i32* @SA_LOAD_HASH_FROM_SA, align 4
  %67 = load i32, i32* @SA_LOAD_IV_FROM_STATE, align 4
  %68 = load i32, i32* @SA_NO_HEADER_PROC, align 4
  %69 = load i32, i32* @SA_HASH_ALG_CBC_MAC, align 4
  %70 = load i32, i32* @SA_CIPHER_ALG_AES, align 4
  %71 = load i32, i32* @SA_PAD_TYPE_ZERO, align 4
  %72 = load i32, i32* @SA_OP_GROUP_BASIC, align 4
  %73 = load i32, i32* @SA_OPCODE_HASH_DECRYPT, align 4
  %74 = load i32, i32* @DIR_INBOUND, align 4
  %75 = call i32 @set_dynamic_sa_command_0(%struct.dynamic_sa_ctl* %63, i32 %64, i32 %65, i32 %66, i32 %67, i32 %68, i32 %69, i32 %70, i32 %71, i32 %72, i32 %73, i32 %74)
  %76 = load %struct.dynamic_sa_ctl*, %struct.dynamic_sa_ctl** %10, align 8
  %77 = load i32, i32* @CRYPTO_MODE_CTR, align 4
  %78 = load i32, i32* @SA_HASH_MODE_HASH, align 4
  %79 = load i32, i32* @CRYPTO_FEEDBACK_MODE_NO_FB, align 4
  %80 = load i32, i32* @SA_EXTENDED_SN_OFF, align 4
  %81 = load i32, i32* @SA_SEQ_MASK_OFF, align 4
  %82 = load i32, i32* @SA_MC_ENABLE, align 4
  %83 = load i32, i32* @SA_NOT_COPY_PAD, align 4
  %84 = load i32, i32* @SA_COPY_PAYLOAD, align 4
  %85 = load i32, i32* @SA_NOT_COPY_HDR, align 4
  %86 = call i32 @set_dynamic_sa_command_1(%struct.dynamic_sa_ctl* %76, i32 %77, i32 %78, i32 %79, i32 %80, i32 %81, i32 %82, i32 %83, i32 %84, i32 %85)
  %87 = load i32, i32* %7, align 4
  %88 = lshr i32 %87, 3
  %89 = load %struct.dynamic_sa_ctl*, %struct.dynamic_sa_ctl** %10, align 8
  %90 = getelementptr inbounds %struct.dynamic_sa_ctl, %struct.dynamic_sa_ctl* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %91, i32 0, i32 0
  store i32 %88, i32* %92, align 4
  %93 = load %struct.dynamic_sa_ctl*, %struct.dynamic_sa_ctl** %10, align 8
  %94 = call i32 @get_dynamic_sa_key_field(%struct.dynamic_sa_ctl* %93)
  %95 = load i32*, i32** %6, align 8
  %96 = load i32, i32* %7, align 4
  %97 = call i32 @crypto4xx_memcpy_to_le32(i32 %94, i32* %95, i32 %96)
  %98 = load %struct.crypto4xx_ctx*, %struct.crypto4xx_ctx** %9, align 8
  %99 = getelementptr inbounds %struct.crypto4xx_ctx, %struct.crypto4xx_ctx* %98, i32 0, i32 1
  %100 = load i64, i64* %99, align 8
  %101 = load %struct.crypto4xx_ctx*, %struct.crypto4xx_ctx** %9, align 8
  %102 = getelementptr inbounds %struct.crypto4xx_ctx, %struct.crypto4xx_ctx* %101, i32 0, i32 2
  %103 = load i64, i64* %102, align 8
  %104 = load %struct.crypto4xx_ctx*, %struct.crypto4xx_ctx** %9, align 8
  %105 = getelementptr inbounds %struct.crypto4xx_ctx, %struct.crypto4xx_ctx* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = mul nsw i32 %106, 4
  %108 = call i32 @memcpy(i64 %100, i64 %103, i32 %107)
  %109 = load %struct.crypto4xx_ctx*, %struct.crypto4xx_ctx** %9, align 8
  %110 = getelementptr inbounds %struct.crypto4xx_ctx, %struct.crypto4xx_ctx* %109, i32 0, i32 1
  %111 = load i64, i64* %110, align 8
  %112 = inttoptr i64 %111 to %struct.dynamic_sa_ctl*
  store %struct.dynamic_sa_ctl* %112, %struct.dynamic_sa_ctl** %10, align 8
  %113 = load %struct.dynamic_sa_ctl*, %struct.dynamic_sa_ctl** %10, align 8
  %114 = load i32, i32* @SA_SAVE_HASH, align 4
  %115 = load i32, i32* @SA_NOT_SAVE_IV, align 4
  %116 = load i32, i32* @SA_LOAD_HASH_FROM_SA, align 4
  %117 = load i32, i32* @SA_LOAD_IV_FROM_STATE, align 4
  %118 = load i32, i32* @SA_NO_HEADER_PROC, align 4
  %119 = load i32, i32* @SA_HASH_ALG_CBC_MAC, align 4
  %120 = load i32, i32* @SA_CIPHER_ALG_AES, align 4
  %121 = load i32, i32* @SA_PAD_TYPE_ZERO, align 4
  %122 = load i32, i32* @SA_OP_GROUP_BASIC, align 4
  %123 = load i32, i32* @SA_OPCODE_ENCRYPT_HASH, align 4
  %124 = load i32, i32* @DIR_OUTBOUND, align 4
  %125 = call i32 @set_dynamic_sa_command_0(%struct.dynamic_sa_ctl* %113, i32 %114, i32 %115, i32 %116, i32 %117, i32 %118, i32 %119, i32 %120, i32 %121, i32 %122, i32 %123, i32 %124)
  %126 = load %struct.dynamic_sa_ctl*, %struct.dynamic_sa_ctl** %10, align 8
  %127 = load i32, i32* @CRYPTO_MODE_CTR, align 4
  %128 = load i32, i32* @SA_HASH_MODE_HASH, align 4
  %129 = load i32, i32* @CRYPTO_FEEDBACK_MODE_NO_FB, align 4
  %130 = load i32, i32* @SA_EXTENDED_SN_OFF, align 4
  %131 = load i32, i32* @SA_SEQ_MASK_OFF, align 4
  %132 = load i32, i32* @SA_MC_ENABLE, align 4
  %133 = load i32, i32* @SA_COPY_PAD, align 4
  %134 = load i32, i32* @SA_COPY_PAYLOAD, align 4
  %135 = load i32, i32* @SA_NOT_COPY_HDR, align 4
  %136 = call i32 @set_dynamic_sa_command_1(%struct.dynamic_sa_ctl* %126, i32 %127, i32 %128, i32 %129, i32 %130, i32 %131, i32 %132, i32 %133, i32 %134, i32 %135)
  %137 = load i32, i32* %7, align 4
  %138 = lshr i32 %137, 3
  %139 = load %struct.dynamic_sa_ctl*, %struct.dynamic_sa_ctl** %10, align 8
  %140 = getelementptr inbounds %struct.dynamic_sa_ctl, %struct.dynamic_sa_ctl* %139, i32 0, i32 0
  %141 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %140, i32 0, i32 0
  %142 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %141, i32 0, i32 0
  store i32 %138, i32* %142, align 4
  store i32 0, i32* %4, align 4
  br label %143

143:                                              ; preds = %51, %49, %23
  %144 = load i32, i32* %4, align 4
  ret i32 %144
}

declare dso_local %struct.crypto_tfm* @crypto_aead_tfm(%struct.crypto_aead*) #1

declare dso_local %struct.crypto4xx_ctx* @crypto_tfm_ctx(%struct.crypto_tfm*) #1

declare dso_local i32 @crypto4xx_aead_setup_fallback(%struct.crypto4xx_ctx*, %struct.crypto_aead*, i32*, i32) #1

declare dso_local i32 @crypto4xx_free_sa(%struct.crypto4xx_ctx*) #1

declare dso_local i32 @crypto4xx_alloc_sa(%struct.crypto4xx_ctx*, i64) #1

declare dso_local i32 @set_dynamic_sa_command_0(%struct.dynamic_sa_ctl*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @set_dynamic_sa_command_1(%struct.dynamic_sa_ctl*, i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @crypto4xx_memcpy_to_le32(i32, i32*, i32) #1

declare dso_local i32 @get_dynamic_sa_key_field(%struct.dynamic_sa_ctl*) #1

declare dso_local i32 @memcpy(i64, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
