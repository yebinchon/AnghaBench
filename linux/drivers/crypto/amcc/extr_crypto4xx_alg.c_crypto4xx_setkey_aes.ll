; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/amcc/extr_crypto4xx_alg.c_crypto4xx_setkey_aes.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/amcc/extr_crypto4xx_alg.c_crypto4xx_setkey_aes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crypto_skcipher = type { i32 }
%struct.crypto4xx_ctx = type { i32, %struct.dynamic_sa_ctl*, %struct.dynamic_sa_ctl* }
%struct.dynamic_sa_ctl = type { %struct.TYPE_10__, %struct.TYPE_8__, %struct.TYPE_6__ }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32, i32 }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i32 }

@AES_KEYSIZE_256 = common dso_local global i32 0, align 4
@AES_KEYSIZE_192 = common dso_local global i32 0, align 4
@AES_KEYSIZE_128 = common dso_local global i32 0, align 4
@CRYPTO_TFM_RES_BAD_KEY_LEN = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@SA_AES128_LEN = common dso_local global i64 0, align 8
@SA_NOT_SAVE_HASH = common dso_local global i32 0, align 4
@CRYPTO_MODE_ECB = common dso_local global i8 0, align 1
@SA_NOT_SAVE_IV = common dso_local global i32 0, align 4
@SA_SAVE_IV = common dso_local global i32 0, align 4
@SA_NOT_LOAD_HASH = common dso_local global i32 0, align 4
@SA_LOAD_IV_FROM_SA = common dso_local global i32 0, align 4
@SA_LOAD_IV_FROM_STATE = common dso_local global i32 0, align 4
@SA_NO_HEADER_PROC = common dso_local global i32 0, align 4
@SA_HASH_ALG_NULL = common dso_local global i32 0, align 4
@SA_CIPHER_ALG_AES = common dso_local global i32 0, align 4
@SA_PAD_TYPE_ZERO = common dso_local global i32 0, align 4
@SA_OP_GROUP_BASIC = common dso_local global i32 0, align 4
@SA_OPCODE_DECRYPT = common dso_local global i32 0, align 4
@DIR_INBOUND = common dso_local global i32 0, align 4
@SA_HASH_MODE_HASH = common dso_local global i32 0, align 4
@SA_EXTENDED_SN_OFF = common dso_local global i32 0, align 4
@SA_SEQ_MASK_OFF = common dso_local global i32 0, align 4
@SA_MC_ENABLE = common dso_local global i32 0, align 4
@SA_NOT_COPY_PAD = common dso_local global i32 0, align 4
@SA_NOT_COPY_PAYLOAD = common dso_local global i32 0, align 4
@SA_NOT_COPY_HDR = common dso_local global i32 0, align 4
@SA_AES_CONTENTS = common dso_local global i32 0, align 4
@DIR_OUTBOUND = common dso_local global i32 0, align 4
@SA_OPCODE_ENCRYPT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.crypto_skcipher*, i32*, i32, i8, i32)* @crypto4xx_setkey_aes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @crypto4xx_setkey_aes(%struct.crypto_skcipher* %0, i32* %1, i32 %2, i8 zeroext %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.crypto_skcipher*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8, align 1
  %11 = alloca i32, align 4
  %12 = alloca %struct.crypto4xx_ctx*, align 8
  %13 = alloca %struct.dynamic_sa_ctl*, align 8
  %14 = alloca i32, align 4
  store %struct.crypto_skcipher* %0, %struct.crypto_skcipher** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32 %2, i32* %9, align 4
  store i8 %3, i8* %10, align 1
  store i32 %4, i32* %11, align 4
  %15 = load %struct.crypto_skcipher*, %struct.crypto_skcipher** %7, align 8
  %16 = call %struct.crypto4xx_ctx* @crypto_skcipher_ctx(%struct.crypto_skcipher* %15)
  store %struct.crypto4xx_ctx* %16, %struct.crypto4xx_ctx** %12, align 8
  %17 = load i32, i32* %9, align 4
  %18 = load i32, i32* @AES_KEYSIZE_256, align 4
  %19 = icmp ne i32 %17, %18
  br i1 %19, label %20, label %34

20:                                               ; preds = %5
  %21 = load i32, i32* %9, align 4
  %22 = load i32, i32* @AES_KEYSIZE_192, align 4
  %23 = icmp ne i32 %21, %22
  br i1 %23, label %24, label %34

24:                                               ; preds = %20
  %25 = load i32, i32* %9, align 4
  %26 = load i32, i32* @AES_KEYSIZE_128, align 4
  %27 = icmp ne i32 %25, %26
  br i1 %27, label %28, label %34

28:                                               ; preds = %24
  %29 = load %struct.crypto_skcipher*, %struct.crypto_skcipher** %7, align 8
  %30 = load i32, i32* @CRYPTO_TFM_RES_BAD_KEY_LEN, align 4
  %31 = call i32 @crypto_skcipher_set_flags(%struct.crypto_skcipher* %29, i32 %30)
  %32 = load i32, i32* @EINVAL, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %6, align 4
  br label %150

34:                                               ; preds = %24, %20, %5
  %35 = load %struct.crypto4xx_ctx*, %struct.crypto4xx_ctx** %12, align 8
  %36 = getelementptr inbounds %struct.crypto4xx_ctx, %struct.crypto4xx_ctx* %35, i32 0, i32 2
  %37 = load %struct.dynamic_sa_ctl*, %struct.dynamic_sa_ctl** %36, align 8
  %38 = icmp ne %struct.dynamic_sa_ctl* %37, null
  br i1 %38, label %44, label %39

39:                                               ; preds = %34
  %40 = load %struct.crypto4xx_ctx*, %struct.crypto4xx_ctx** %12, align 8
  %41 = getelementptr inbounds %struct.crypto4xx_ctx, %struct.crypto4xx_ctx* %40, i32 0, i32 1
  %42 = load %struct.dynamic_sa_ctl*, %struct.dynamic_sa_ctl** %41, align 8
  %43 = icmp ne %struct.dynamic_sa_ctl* %42, null
  br i1 %43, label %44, label %47

44:                                               ; preds = %39, %34
  %45 = load %struct.crypto4xx_ctx*, %struct.crypto4xx_ctx** %12, align 8
  %46 = call i32 @crypto4xx_free_sa(%struct.crypto4xx_ctx* %45)
  br label %47

47:                                               ; preds = %44, %39
  %48 = load %struct.crypto4xx_ctx*, %struct.crypto4xx_ctx** %12, align 8
  %49 = load i64, i64* @SA_AES128_LEN, align 8
  %50 = load i32, i32* %9, align 4
  %51 = sub i32 %50, 16
  %52 = udiv i32 %51, 4
  %53 = zext i32 %52 to i64
  %54 = add nsw i64 %49, %53
  %55 = call i32 @crypto4xx_alloc_sa(%struct.crypto4xx_ctx* %48, i64 %54)
  store i32 %55, i32* %14, align 4
  %56 = load i32, i32* %14, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %60

58:                                               ; preds = %47
  %59 = load i32, i32* %14, align 4
  store i32 %59, i32* %6, align 4
  br label %150

60:                                               ; preds = %47
  %61 = load %struct.crypto4xx_ctx*, %struct.crypto4xx_ctx** %12, align 8
  %62 = getelementptr inbounds %struct.crypto4xx_ctx, %struct.crypto4xx_ctx* %61, i32 0, i32 2
  %63 = load %struct.dynamic_sa_ctl*, %struct.dynamic_sa_ctl** %62, align 8
  store %struct.dynamic_sa_ctl* %63, %struct.dynamic_sa_ctl** %13, align 8
  %64 = load %struct.dynamic_sa_ctl*, %struct.dynamic_sa_ctl** %13, align 8
  %65 = load i32, i32* @SA_NOT_SAVE_HASH, align 4
  %66 = load i8, i8* %10, align 1
  %67 = zext i8 %66 to i32
  %68 = load i8, i8* @CRYPTO_MODE_ECB, align 1
  %69 = zext i8 %68 to i32
  %70 = icmp eq i32 %67, %69
  br i1 %70, label %71, label %73

71:                                               ; preds = %60
  %72 = load i32, i32* @SA_NOT_SAVE_IV, align 4
  br label %75

73:                                               ; preds = %60
  %74 = load i32, i32* @SA_SAVE_IV, align 4
  br label %75

75:                                               ; preds = %73, %71
  %76 = phi i32 [ %72, %71 ], [ %74, %73 ]
  %77 = load i32, i32* @SA_NOT_LOAD_HASH, align 4
  %78 = load i8, i8* %10, align 1
  %79 = zext i8 %78 to i32
  %80 = load i8, i8* @CRYPTO_MODE_ECB, align 1
  %81 = zext i8 %80 to i32
  %82 = icmp eq i32 %79, %81
  br i1 %82, label %83, label %85

83:                                               ; preds = %75
  %84 = load i32, i32* @SA_LOAD_IV_FROM_SA, align 4
  br label %87

85:                                               ; preds = %75
  %86 = load i32, i32* @SA_LOAD_IV_FROM_STATE, align 4
  br label %87

87:                                               ; preds = %85, %83
  %88 = phi i32 [ %84, %83 ], [ %86, %85 ]
  %89 = load i32, i32* @SA_NO_HEADER_PROC, align 4
  %90 = load i32, i32* @SA_HASH_ALG_NULL, align 4
  %91 = load i32, i32* @SA_CIPHER_ALG_AES, align 4
  %92 = load i32, i32* @SA_PAD_TYPE_ZERO, align 4
  %93 = load i32, i32* @SA_OP_GROUP_BASIC, align 4
  %94 = load i32, i32* @SA_OPCODE_DECRYPT, align 4
  %95 = load i32, i32* @DIR_INBOUND, align 4
  %96 = call i32 @set_dynamic_sa_command_0(%struct.dynamic_sa_ctl* %64, i32 %65, i32 %76, i32 %77, i32 %88, i32 %89, i32 %90, i32 %91, i32 %92, i32 %93, i32 %94, i32 %95)
  %97 = load %struct.dynamic_sa_ctl*, %struct.dynamic_sa_ctl** %13, align 8
  %98 = load i8, i8* %10, align 1
  %99 = load i32, i32* @SA_HASH_MODE_HASH, align 4
  %100 = load i32, i32* %11, align 4
  %101 = load i32, i32* @SA_EXTENDED_SN_OFF, align 4
  %102 = load i32, i32* @SA_SEQ_MASK_OFF, align 4
  %103 = load i32, i32* @SA_MC_ENABLE, align 4
  %104 = load i32, i32* @SA_NOT_COPY_PAD, align 4
  %105 = load i32, i32* @SA_NOT_COPY_PAYLOAD, align 4
  %106 = load i32, i32* @SA_NOT_COPY_HDR, align 4
  %107 = call i32 @set_dynamic_sa_command_1(%struct.dynamic_sa_ctl* %97, i8 zeroext %98, i32 %99, i32 %100, i32 %101, i32 %102, i32 %103, i32 %104, i32 %105, i32 %106)
  %108 = load %struct.dynamic_sa_ctl*, %struct.dynamic_sa_ctl** %13, align 8
  %109 = call i32 @get_dynamic_sa_key_field(%struct.dynamic_sa_ctl* %108)
  %110 = load i32*, i32** %8, align 8
  %111 = load i32, i32* %9, align 4
  %112 = call i32 @crypto4xx_memcpy_to_le32(i32 %109, i32* %110, i32 %111)
  %113 = load i32, i32* @SA_AES_CONTENTS, align 4
  %114 = load i32, i32* %9, align 4
  %115 = shl i32 %114, 2
  %116 = or i32 %113, %115
  %117 = load %struct.dynamic_sa_ctl*, %struct.dynamic_sa_ctl** %13, align 8
  %118 = getelementptr inbounds %struct.dynamic_sa_ctl, %struct.dynamic_sa_ctl* %117, i32 0, i32 2
  %119 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %118, i32 0, i32 0
  store i32 %116, i32* %119, align 4
  %120 = load i32, i32* %9, align 4
  %121 = lshr i32 %120, 3
  %122 = load %struct.dynamic_sa_ctl*, %struct.dynamic_sa_ctl** %13, align 8
  %123 = getelementptr inbounds %struct.dynamic_sa_ctl, %struct.dynamic_sa_ctl* %122, i32 0, i32 1
  %124 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %123, i32 0, i32 0
  %125 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %124, i32 0, i32 0
  store i32 %121, i32* %125, align 4
  %126 = load %struct.crypto4xx_ctx*, %struct.crypto4xx_ctx** %12, align 8
  %127 = getelementptr inbounds %struct.crypto4xx_ctx, %struct.crypto4xx_ctx* %126, i32 0, i32 1
  %128 = load %struct.dynamic_sa_ctl*, %struct.dynamic_sa_ctl** %127, align 8
  %129 = load %struct.crypto4xx_ctx*, %struct.crypto4xx_ctx** %12, align 8
  %130 = getelementptr inbounds %struct.crypto4xx_ctx, %struct.crypto4xx_ctx* %129, i32 0, i32 2
  %131 = load %struct.dynamic_sa_ctl*, %struct.dynamic_sa_ctl** %130, align 8
  %132 = load %struct.crypto4xx_ctx*, %struct.crypto4xx_ctx** %12, align 8
  %133 = getelementptr inbounds %struct.crypto4xx_ctx, %struct.crypto4xx_ctx* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 8
  %135 = mul nsw i32 %134, 4
  %136 = call i32 @memcpy(%struct.dynamic_sa_ctl* %128, %struct.dynamic_sa_ctl* %131, i32 %135)
  %137 = load %struct.crypto4xx_ctx*, %struct.crypto4xx_ctx** %12, align 8
  %138 = getelementptr inbounds %struct.crypto4xx_ctx, %struct.crypto4xx_ctx* %137, i32 0, i32 1
  %139 = load %struct.dynamic_sa_ctl*, %struct.dynamic_sa_ctl** %138, align 8
  store %struct.dynamic_sa_ctl* %139, %struct.dynamic_sa_ctl** %13, align 8
  %140 = load i32, i32* @DIR_OUTBOUND, align 4
  %141 = load %struct.dynamic_sa_ctl*, %struct.dynamic_sa_ctl** %13, align 8
  %142 = getelementptr inbounds %struct.dynamic_sa_ctl, %struct.dynamic_sa_ctl* %141, i32 0, i32 0
  %143 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %142, i32 0, i32 0
  %144 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %143, i32 0, i32 1
  store i32 %140, i32* %144, align 4
  %145 = load i32, i32* @SA_OPCODE_ENCRYPT, align 4
  %146 = load %struct.dynamic_sa_ctl*, %struct.dynamic_sa_ctl** %13, align 8
  %147 = getelementptr inbounds %struct.dynamic_sa_ctl, %struct.dynamic_sa_ctl* %146, i32 0, i32 0
  %148 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %147, i32 0, i32 0
  %149 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %148, i32 0, i32 0
  store i32 %145, i32* %149, align 4
  store i32 0, i32* %6, align 4
  br label %150

150:                                              ; preds = %87, %58, %28
  %151 = load i32, i32* %6, align 4
  ret i32 %151
}

declare dso_local %struct.crypto4xx_ctx* @crypto_skcipher_ctx(%struct.crypto_skcipher*) #1

declare dso_local i32 @crypto_skcipher_set_flags(%struct.crypto_skcipher*, i32) #1

declare dso_local i32 @crypto4xx_free_sa(%struct.crypto4xx_ctx*) #1

declare dso_local i32 @crypto4xx_alloc_sa(%struct.crypto4xx_ctx*, i64) #1

declare dso_local i32 @set_dynamic_sa_command_0(%struct.dynamic_sa_ctl*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @set_dynamic_sa_command_1(%struct.dynamic_sa_ctl*, i8 zeroext, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @crypto4xx_memcpy_to_le32(i32, i32*, i32) #1

declare dso_local i32 @get_dynamic_sa_key_field(%struct.dynamic_sa_ctl*) #1

declare dso_local i32 @memcpy(%struct.dynamic_sa_ctl*, %struct.dynamic_sa_ctl*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
