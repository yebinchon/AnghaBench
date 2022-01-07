; ModuleID = '/home/carl/AnghaBench/linux/crypto/extr_adiantum.c_adiantum_crypt.c'
source_filename = "/home/carl/AnghaBench/linux/crypto/extr_adiantum.c_adiantum_crypt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.skcipher_request = type { i32, %struct.TYPE_4__, i32, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.crypto_skcipher = type { i32 }
%struct.adiantum_tfm_ctx = type { i32, i32 }
%struct.adiantum_request_ctx = type { i32, %struct.TYPE_5__, %struct.TYPE_6__, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_6__ = type { i64*, i32, i32 }

@BLOCKCIPHER_BLOCK_SIZE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@XCHACHA_IV_SIZE = common dso_local global i32 0, align 4
@CHACHA_BLOCK_SIZE = common dso_local global i32 0, align 4
@adiantum_streamcipher_done = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.skcipher_request*, i32)* @adiantum_crypt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @adiantum_crypt(%struct.skcipher_request* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.skcipher_request*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.crypto_skcipher*, align 8
  %7 = alloca %struct.adiantum_tfm_ctx*, align 8
  %8 = alloca %struct.adiantum_request_ctx*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.skcipher_request* %0, %struct.skcipher_request** %4, align 8
  store i32 %1, i32* %5, align 4
  %13 = load %struct.skcipher_request*, %struct.skcipher_request** %4, align 8
  %14 = call %struct.crypto_skcipher* @crypto_skcipher_reqtfm(%struct.skcipher_request* %13)
  store %struct.crypto_skcipher* %14, %struct.crypto_skcipher** %6, align 8
  %15 = load %struct.crypto_skcipher*, %struct.crypto_skcipher** %6, align 8
  %16 = call %struct.adiantum_tfm_ctx* @crypto_skcipher_ctx(%struct.crypto_skcipher* %15)
  store %struct.adiantum_tfm_ctx* %16, %struct.adiantum_tfm_ctx** %7, align 8
  %17 = load %struct.skcipher_request*, %struct.skcipher_request** %4, align 8
  %18 = call %struct.adiantum_request_ctx* @skcipher_request_ctx(%struct.skcipher_request* %17)
  store %struct.adiantum_request_ctx* %18, %struct.adiantum_request_ctx** %8, align 8
  %19 = load %struct.skcipher_request*, %struct.skcipher_request** %4, align 8
  %20 = getelementptr inbounds %struct.skcipher_request, %struct.skcipher_request* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @BLOCKCIPHER_BLOCK_SIZE, align 4
  %23 = sub i32 %21, %22
  store i32 %23, i32* %9, align 4
  %24 = load %struct.skcipher_request*, %struct.skcipher_request** %4, align 8
  %25 = getelementptr inbounds %struct.skcipher_request, %struct.skcipher_request* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @BLOCKCIPHER_BLOCK_SIZE, align 4
  %28 = icmp ult i32 %26, %27
  br i1 %28, label %29, label %32

29:                                               ; preds = %2
  %30 = load i32, i32* @EINVAL, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %3, align 4
  br label %168

32:                                               ; preds = %2
  %33 = load i32, i32* %5, align 4
  %34 = load %struct.adiantum_request_ctx*, %struct.adiantum_request_ctx** %8, align 8
  %35 = getelementptr inbounds %struct.adiantum_request_ctx, %struct.adiantum_request_ctx* %34, i32 0, i32 0
  store i32 %33, i32* %35, align 8
  %36 = load %struct.skcipher_request*, %struct.skcipher_request** %4, align 8
  %37 = call i32 @adiantum_hash_header(%struct.skcipher_request* %36)
  %38 = load %struct.skcipher_request*, %struct.skcipher_request** %4, align 8
  %39 = load %struct.skcipher_request*, %struct.skcipher_request** %4, align 8
  %40 = getelementptr inbounds %struct.skcipher_request, %struct.skcipher_request* %39, i32 0, i32 3
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @adiantum_hash_message(%struct.skcipher_request* %38, i32 %41, i32* %11)
  store i32 %42, i32* %12, align 4
  %43 = load i32, i32* %12, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %32
  %46 = load i32, i32* %12, align 4
  store i32 %46, i32* %3, align 4
  br label %168

47:                                               ; preds = %32
  %48 = load %struct.adiantum_request_ctx*, %struct.adiantum_request_ctx** %8, align 8
  %49 = getelementptr inbounds %struct.adiantum_request_ctx, %struct.adiantum_request_ctx* %48, i32 0, i32 3
  %50 = call i32 @le128_add(i32* %11, i32* %11, i32* %49)
  %51 = load %struct.adiantum_request_ctx*, %struct.adiantum_request_ctx** %8, align 8
  %52 = getelementptr inbounds %struct.adiantum_request_ctx, %struct.adiantum_request_ctx* %51, i32 0, i32 2
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 2
  %54 = load %struct.skcipher_request*, %struct.skcipher_request** %4, align 8
  %55 = getelementptr inbounds %struct.skcipher_request, %struct.skcipher_request* %54, i32 0, i32 3
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* %9, align 4
  %58 = load i32, i32* @BLOCKCIPHER_BLOCK_SIZE, align 4
  %59 = call i32 @scatterwalk_map_and_copy(i32* %53, i32 %56, i32 %57, i32 %58, i32 0)
  %60 = load %struct.adiantum_request_ctx*, %struct.adiantum_request_ctx** %8, align 8
  %61 = getelementptr inbounds %struct.adiantum_request_ctx, %struct.adiantum_request_ctx* %60, i32 0, i32 2
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 2
  %63 = load %struct.adiantum_request_ctx*, %struct.adiantum_request_ctx** %8, align 8
  %64 = getelementptr inbounds %struct.adiantum_request_ctx, %struct.adiantum_request_ctx* %63, i32 0, i32 2
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i32 0, i32 2
  %66 = call i32 @le128_add(i32* %62, i32* %65, i32* %11)
  %67 = load i32, i32* %5, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %82

69:                                               ; preds = %47
  %70 = load %struct.adiantum_tfm_ctx*, %struct.adiantum_tfm_ctx** %7, align 8
  %71 = getelementptr inbounds %struct.adiantum_tfm_ctx, %struct.adiantum_tfm_ctx* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.adiantum_request_ctx*, %struct.adiantum_request_ctx** %8, align 8
  %74 = getelementptr inbounds %struct.adiantum_request_ctx, %struct.adiantum_request_ctx* %73, i32 0, i32 2
  %75 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 8
  %77 = load %struct.adiantum_request_ctx*, %struct.adiantum_request_ctx** %8, align 8
  %78 = getelementptr inbounds %struct.adiantum_request_ctx, %struct.adiantum_request_ctx* %77, i32 0, i32 2
  %79 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 8
  %81 = call i32 @crypto_cipher_encrypt_one(i32 %72, i32 %76, i32 %80)
  br label %82

82:                                               ; preds = %69, %47
  %83 = load i32, i32* @BLOCKCIPHER_BLOCK_SIZE, align 4
  %84 = icmp ne i32 %83, 16
  %85 = zext i1 %84 to i32
  %86 = call i32 @BUILD_BUG_ON(i32 %85)
  %87 = load i32, i32* @XCHACHA_IV_SIZE, align 4
  %88 = icmp ne i32 %87, 32
  %89 = zext i1 %88 to i32
  %90 = call i32 @BUILD_BUG_ON(i32 %89)
  %91 = call i64 @cpu_to_le32(i32 1)
  %92 = load %struct.adiantum_request_ctx*, %struct.adiantum_request_ctx** %8, align 8
  %93 = getelementptr inbounds %struct.adiantum_request_ctx, %struct.adiantum_request_ctx* %92, i32 0, i32 2
  %94 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %93, i32 0, i32 0
  %95 = load i64*, i64** %94, align 8
  %96 = getelementptr inbounds i64, i64* %95, i64 4
  store i64 %91, i64* %96, align 8
  %97 = load %struct.adiantum_request_ctx*, %struct.adiantum_request_ctx** %8, align 8
  %98 = getelementptr inbounds %struct.adiantum_request_ctx, %struct.adiantum_request_ctx* %97, i32 0, i32 2
  %99 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %98, i32 0, i32 0
  %100 = load i64*, i64** %99, align 8
  %101 = getelementptr inbounds i64, i64* %100, i64 5
  store i64 0, i64* %101, align 8
  %102 = load %struct.adiantum_request_ctx*, %struct.adiantum_request_ctx** %8, align 8
  %103 = getelementptr inbounds %struct.adiantum_request_ctx, %struct.adiantum_request_ctx* %102, i32 0, i32 2
  %104 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %103, i32 0, i32 0
  %105 = load i64*, i64** %104, align 8
  %106 = getelementptr inbounds i64, i64* %105, i64 6
  store i64 0, i64* %106, align 8
  %107 = load %struct.adiantum_request_ctx*, %struct.adiantum_request_ctx** %8, align 8
  %108 = getelementptr inbounds %struct.adiantum_request_ctx, %struct.adiantum_request_ctx* %107, i32 0, i32 2
  %109 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %108, i32 0, i32 0
  %110 = load i64*, i64** %109, align 8
  %111 = getelementptr inbounds i64, i64* %110, i64 7
  store i64 0, i64* %111, align 8
  %112 = load i32, i32* %9, align 4
  store i32 %112, i32* %10, align 4
  %113 = load i32, i32* %10, align 4
  %114 = load i32, i32* @CHACHA_BLOCK_SIZE, align 4
  %115 = call i32 @round_up(i32 %113, i32 %114)
  %116 = load %struct.skcipher_request*, %struct.skcipher_request** %4, align 8
  %117 = getelementptr inbounds %struct.skcipher_request, %struct.skcipher_request* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 4
  %119 = icmp ule i32 %115, %118
  br i1 %119, label %120, label %124

120:                                              ; preds = %82
  %121 = load i32, i32* %10, align 4
  %122 = load i32, i32* @CHACHA_BLOCK_SIZE, align 4
  %123 = call i32 @round_up(i32 %121, i32 %122)
  store i32 %123, i32* %10, align 4
  br label %124

124:                                              ; preds = %120, %82
  %125 = load %struct.adiantum_request_ctx*, %struct.adiantum_request_ctx** %8, align 8
  %126 = getelementptr inbounds %struct.adiantum_request_ctx, %struct.adiantum_request_ctx* %125, i32 0, i32 1
  %127 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %126, i32 0, i32 0
  %128 = load %struct.adiantum_tfm_ctx*, %struct.adiantum_tfm_ctx** %7, align 8
  %129 = getelementptr inbounds %struct.adiantum_tfm_ctx, %struct.adiantum_tfm_ctx* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 4
  %131 = call i32 @skcipher_request_set_tfm(i32* %127, i32 %130)
  %132 = load %struct.adiantum_request_ctx*, %struct.adiantum_request_ctx** %8, align 8
  %133 = getelementptr inbounds %struct.adiantum_request_ctx, %struct.adiantum_request_ctx* %132, i32 0, i32 1
  %134 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %133, i32 0, i32 0
  %135 = load %struct.skcipher_request*, %struct.skcipher_request** %4, align 8
  %136 = getelementptr inbounds %struct.skcipher_request, %struct.skcipher_request* %135, i32 0, i32 3
  %137 = load i32, i32* %136, align 4
  %138 = load %struct.skcipher_request*, %struct.skcipher_request** %4, align 8
  %139 = getelementptr inbounds %struct.skcipher_request, %struct.skcipher_request* %138, i32 0, i32 2
  %140 = load i32, i32* %139, align 4
  %141 = load i32, i32* %10, align 4
  %142 = load %struct.adiantum_request_ctx*, %struct.adiantum_request_ctx** %8, align 8
  %143 = getelementptr inbounds %struct.adiantum_request_ctx, %struct.adiantum_request_ctx* %142, i32 0, i32 2
  %144 = call i32 @skcipher_request_set_crypt(i32* %134, i32 %137, i32 %140, i32 %141, %struct.TYPE_6__* %143)
  %145 = load %struct.adiantum_request_ctx*, %struct.adiantum_request_ctx** %8, align 8
  %146 = getelementptr inbounds %struct.adiantum_request_ctx, %struct.adiantum_request_ctx* %145, i32 0, i32 1
  %147 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %146, i32 0, i32 0
  %148 = load %struct.skcipher_request*, %struct.skcipher_request** %4, align 8
  %149 = getelementptr inbounds %struct.skcipher_request, %struct.skcipher_request* %148, i32 0, i32 1
  %150 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 4
  %152 = load i32, i32* @adiantum_streamcipher_done, align 4
  %153 = load %struct.skcipher_request*, %struct.skcipher_request** %4, align 8
  %154 = call i32 @skcipher_request_set_callback(i32* %147, i32 %151, i32 %152, %struct.skcipher_request* %153)
  %155 = load %struct.adiantum_request_ctx*, %struct.adiantum_request_ctx** %8, align 8
  %156 = getelementptr inbounds %struct.adiantum_request_ctx, %struct.adiantum_request_ctx* %155, i32 0, i32 1
  %157 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %156, i32 0, i32 0
  %158 = call i64 @crypto_skcipher_encrypt(i32* %157)
  %159 = icmp ne i64 %158, 0
  br i1 %159, label %160, label %161

160:                                              ; preds = %124
  br label %165

161:                                              ; preds = %124
  %162 = load %struct.skcipher_request*, %struct.skcipher_request** %4, align 8
  %163 = call i32 @adiantum_finish(%struct.skcipher_request* %162)
  %164 = sext i32 %163 to i64
  br label %165

165:                                              ; preds = %161, %160
  %166 = phi i64 [ %158, %160 ], [ %164, %161 ]
  %167 = trunc i64 %166 to i32
  store i32 %167, i32* %3, align 4
  br label %168

168:                                              ; preds = %165, %45, %29
  %169 = load i32, i32* %3, align 4
  ret i32 %169
}

declare dso_local %struct.crypto_skcipher* @crypto_skcipher_reqtfm(%struct.skcipher_request*) #1

declare dso_local %struct.adiantum_tfm_ctx* @crypto_skcipher_ctx(%struct.crypto_skcipher*) #1

declare dso_local %struct.adiantum_request_ctx* @skcipher_request_ctx(%struct.skcipher_request*) #1

declare dso_local i32 @adiantum_hash_header(%struct.skcipher_request*) #1

declare dso_local i32 @adiantum_hash_message(%struct.skcipher_request*, i32, i32*) #1

declare dso_local i32 @le128_add(i32*, i32*, i32*) #1

declare dso_local i32 @scatterwalk_map_and_copy(i32*, i32, i32, i32, i32) #1

declare dso_local i32 @crypto_cipher_encrypt_one(i32, i32, i32) #1

declare dso_local i32 @BUILD_BUG_ON(i32) #1

declare dso_local i64 @cpu_to_le32(i32) #1

declare dso_local i32 @round_up(i32, i32) #1

declare dso_local i32 @skcipher_request_set_tfm(i32*, i32) #1

declare dso_local i32 @skcipher_request_set_crypt(i32*, i32, i32, i32, %struct.TYPE_6__*) #1

declare dso_local i32 @skcipher_request_set_callback(i32*, i32, i32, %struct.skcipher_request*) #1

declare dso_local i64 @crypto_skcipher_encrypt(i32*) #1

declare dso_local i32 @adiantum_finish(%struct.skcipher_request*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
