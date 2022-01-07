; ModuleID = '/home/carl/AnghaBench/lede/package/kernel/lantiq/ltq-deu/src/extr_ifxmips_aes.c_ctr_rfc3686_aes_decrypt.c'
source_filename = "/home/carl/AnghaBench/lede/package/kernel/lantiq/ltq-deu/src/extr_ifxmips_aes.c_ctr_rfc3686_aes_decrypt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.blkcipher_desc = type { i32 }
%struct.scatterlist = type { i32 }
%struct.aes_ctx = type { i32 }
%struct.blkcipher_walk = type { i32, %struct.TYPE_8__, %struct.TYPE_6__, i32 }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }

@CTR_RFC3686_NONCE_SIZE = common dso_local global i32 0, align 4
@CTR_RFC3686_IV_SIZE = common dso_local global i32 0, align 4
@CRYPTO_DIR_ENCRYPT = common dso_local global i32 0, align 4
@AES_BLOCK_SIZE = common dso_local global i32 0, align 4
@CRYPTO_DIR_DECRYPT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ctr_rfc3686_aes_decrypt(%struct.blkcipher_desc* %0, %struct.scatterlist* %1, %struct.scatterlist* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.blkcipher_desc*, align 8
  %7 = alloca %struct.scatterlist*, align 8
  %8 = alloca %struct.scatterlist*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.aes_ctx*, align 8
  %11 = alloca %struct.blkcipher_walk, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca [16 x i32], align 16
  store %struct.blkcipher_desc* %0, %struct.blkcipher_desc** %6, align 8
  store %struct.scatterlist* %1, %struct.scatterlist** %7, align 8
  store %struct.scatterlist* %2, %struct.scatterlist** %8, align 8
  store i32 %3, i32* %9, align 4
  %15 = load %struct.blkcipher_desc*, %struct.blkcipher_desc** %6, align 8
  %16 = getelementptr inbounds %struct.blkcipher_desc, %struct.blkcipher_desc* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call %struct.aes_ctx* @crypto_blkcipher_ctx(i32 %17)
  store %struct.aes_ctx* %18, %struct.aes_ctx** %10, align 8
  %19 = load i32, i32* %9, align 4
  store i32 %19, i32* %13, align 4
  %20 = load %struct.scatterlist*, %struct.scatterlist** %7, align 8
  %21 = load %struct.scatterlist*, %struct.scatterlist** %8, align 8
  %22 = load i32, i32* %9, align 4
  %23 = call i32 @blkcipher_walk_init(%struct.blkcipher_walk* %11, %struct.scatterlist* %20, %struct.scatterlist* %21, i32 %22)
  %24 = load %struct.blkcipher_desc*, %struct.blkcipher_desc** %6, align 8
  %25 = call i32 @blkcipher_walk_virt(%struct.blkcipher_desc* %24, %struct.blkcipher_walk* %11)
  store i32 %25, i32* %12, align 4
  %26 = getelementptr inbounds [16 x i32], [16 x i32]* %14, i64 0, i64 0
  %27 = load %struct.aes_ctx*, %struct.aes_ctx** %10, align 8
  %28 = getelementptr inbounds %struct.aes_ctx, %struct.aes_ctx* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @CTR_RFC3686_NONCE_SIZE, align 4
  %31 = call i32 @memcpy(i32* %26, i32 %29, i32 %30)
  %32 = getelementptr inbounds [16 x i32], [16 x i32]* %14, i64 0, i64 0
  %33 = load i32, i32* @CTR_RFC3686_NONCE_SIZE, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i32, i32* %32, i64 %34
  %36 = getelementptr inbounds %struct.blkcipher_walk, %struct.blkcipher_walk* %11, i32 0, i32 3
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @CTR_RFC3686_IV_SIZE, align 4
  %39 = call i32 @memcpy(i32* %35, i32 %37, i32 %38)
  %40 = call i32 @cpu_to_be32(i32 1)
  %41 = getelementptr inbounds [16 x i32], [16 x i32]* %14, i64 0, i64 0
  %42 = load i32, i32* @CTR_RFC3686_NONCE_SIZE, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i32, i32* %41, i64 %43
  %45 = load i32, i32* @CTR_RFC3686_IV_SIZE, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i32, i32* %44, i64 %46
  store i32 %40, i32* %47, align 4
  %48 = load i32, i32* %9, align 4
  %49 = getelementptr inbounds %struct.blkcipher_walk, %struct.blkcipher_walk* %11, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = icmp eq i32 %48, %50
  br i1 %51, label %52, label %74

52:                                               ; preds = %4
  %53 = load %struct.aes_ctx*, %struct.aes_ctx** %10, align 8
  %54 = getelementptr inbounds %struct.blkcipher_walk, %struct.blkcipher_walk* %11, i32 0, i32 2
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = getelementptr inbounds %struct.blkcipher_walk, %struct.blkcipher_walk* %11, i32 0, i32 1
  %59 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = getelementptr inbounds [16 x i32], [16 x i32]* %14, i64 0, i64 0
  %63 = load i32, i32* %9, align 4
  %64 = load i32, i32* @CRYPTO_DIR_ENCRYPT, align 4
  %65 = call i32 @ifx_deu_aes_ctr(%struct.aes_ctx* %53, i32 %57, i32 %61, i32* %62, i32 %63, i32 %64, i32 0)
  %66 = getelementptr inbounds %struct.blkcipher_walk, %struct.blkcipher_walk* %11, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* %9, align 4
  %69 = sub i32 %68, %67
  store i32 %69, i32* %9, align 4
  %70 = load %struct.blkcipher_desc*, %struct.blkcipher_desc** %6, align 8
  %71 = load i32, i32* %9, align 4
  %72 = call i32 @blkcipher_walk_done(%struct.blkcipher_desc* %70, %struct.blkcipher_walk* %11, i32 %71)
  store i32 %72, i32* %12, align 4
  %73 = load i32, i32* %12, align 4
  store i32 %73, i32* %5, align 4
  br label %133

74:                                               ; preds = %4
  br label %75

75:                                               ; preds = %85, %74
  %76 = getelementptr inbounds %struct.blkcipher_walk, %struct.blkcipher_walk* %11, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  store i32 %77, i32* %9, align 4
  %78 = getelementptr inbounds %struct.blkcipher_walk, %struct.blkcipher_walk* %11, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = load i32, i32* @AES_BLOCK_SIZE, align 4
  %81 = icmp uge i32 %79, %80
  %82 = zext i1 %81 to i32
  %83 = urem i32 %77, %82
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %110

85:                                               ; preds = %75
  %86 = load %struct.aes_ctx*, %struct.aes_ctx** %10, align 8
  %87 = getelementptr inbounds %struct.blkcipher_walk, %struct.blkcipher_walk* %11, i32 0, i32 2
  %88 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = getelementptr inbounds %struct.blkcipher_walk, %struct.blkcipher_walk* %11, i32 0, i32 1
  %92 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = getelementptr inbounds [16 x i32], [16 x i32]* %14, i64 0, i64 0
  %96 = load i32, i32* %9, align 4
  %97 = load i32, i32* @CRYPTO_DIR_DECRYPT, align 4
  %98 = call i32 @ifx_deu_aes_ctr(%struct.aes_ctx* %86, i32 %90, i32 %94, i32* %95, i32 %96, i32 %97, i32 0)
  %99 = getelementptr inbounds %struct.blkcipher_walk, %struct.blkcipher_walk* %11, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = load i32, i32* %9, align 4
  %102 = sub i32 %101, %100
  store i32 %102, i32* %9, align 4
  %103 = getelementptr inbounds %struct.blkcipher_walk, %struct.blkcipher_walk* %11, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = load i32, i32* %13, align 4
  %106 = sub i32 %105, %104
  store i32 %106, i32* %13, align 4
  %107 = load %struct.blkcipher_desc*, %struct.blkcipher_desc** %6, align 8
  %108 = load i32, i32* %9, align 4
  %109 = call i32 @blkcipher_walk_done(%struct.blkcipher_desc* %107, %struct.blkcipher_walk* %11, i32 %108)
  store i32 %109, i32* %12, align 4
  br label %75

110:                                              ; preds = %75
  %111 = getelementptr inbounds %struct.blkcipher_walk, %struct.blkcipher_walk* %11, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %131

114:                                              ; preds = %110
  %115 = load %struct.aes_ctx*, %struct.aes_ctx** %10, align 8
  %116 = getelementptr inbounds %struct.blkcipher_walk, %struct.blkcipher_walk* %11, i32 0, i32 2
  %117 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %116, i32 0, i32 0
  %118 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 4
  %120 = getelementptr inbounds %struct.blkcipher_walk, %struct.blkcipher_walk* %11, i32 0, i32 1
  %121 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %120, i32 0, i32 0
  %122 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 4
  %124 = getelementptr inbounds [16 x i32], [16 x i32]* %14, i64 0, i64 0
  %125 = getelementptr inbounds %struct.blkcipher_walk, %struct.blkcipher_walk* %11, i32 0, i32 0
  %126 = load i32, i32* %125, align 4
  %127 = load i32, i32* @CRYPTO_DIR_ENCRYPT, align 4
  %128 = call i32 @ifx_deu_aes_ctr(%struct.aes_ctx* %115, i32 %119, i32 %123, i32* %124, i32 %126, i32 %127, i32 0)
  %129 = load %struct.blkcipher_desc*, %struct.blkcipher_desc** %6, align 8
  %130 = call i32 @blkcipher_walk_done(%struct.blkcipher_desc* %129, %struct.blkcipher_walk* %11, i32 0)
  store i32 %130, i32* %12, align 4
  br label %131

131:                                              ; preds = %114, %110
  %132 = load i32, i32* %12, align 4
  store i32 %132, i32* %5, align 4
  br label %133

133:                                              ; preds = %131, %52
  %134 = load i32, i32* %5, align 4
  ret i32 %134
}

declare dso_local %struct.aes_ctx* @crypto_blkcipher_ctx(i32) #1

declare dso_local i32 @blkcipher_walk_init(%struct.blkcipher_walk*, %struct.scatterlist*, %struct.scatterlist*, i32) #1

declare dso_local i32 @blkcipher_walk_virt(%struct.blkcipher_desc*, %struct.blkcipher_walk*) #1

declare dso_local i32 @memcpy(i32*, i32, i32) #1

declare dso_local i32 @cpu_to_be32(i32) #1

declare dso_local i32 @ifx_deu_aes_ctr(%struct.aes_ctx*, i32, i32, i32*, i32, i32, i32) #1

declare dso_local i32 @blkcipher_walk_done(%struct.blkcipher_desc*, %struct.blkcipher_walk*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
