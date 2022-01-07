; ModuleID = '/home/carl/AnghaBench/linux/arch/arm/crypto/extr_aes-ce-glue.c_cts_cbc_decrypt.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm/crypto/extr_aes-ce-glue.c_cts_cbc_decrypt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.skcipher_request = type { i32, i32, %struct.scatterlist*, %struct.scatterlist* }
%struct.scatterlist = type { i32 }
%struct.crypto_skcipher = type { i32 }
%struct.crypto_aes_ctx = type { i32 }
%struct.skcipher_walk = type { i32, i32, %struct.TYPE_8__, %struct.TYPE_6__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }

@AES_BLOCK_SIZE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.skcipher_request*)* @cts_cbc_decrypt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cts_cbc_decrypt(%struct.skcipher_request* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.skcipher_request*, align 8
  %4 = alloca %struct.crypto_skcipher*, align 8
  %5 = alloca %struct.crypto_aes_ctx*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.scatterlist*, align 8
  %8 = alloca %struct.scatterlist*, align 8
  %9 = alloca [2 x %struct.scatterlist], align 4
  %10 = alloca [2 x %struct.scatterlist], align 4
  %11 = alloca %struct.skcipher_request, align 8
  %12 = alloca %struct.skcipher_walk, align 4
  %13 = alloca i32, align 4
  store %struct.skcipher_request* %0, %struct.skcipher_request** %3, align 8
  %14 = load %struct.skcipher_request*, %struct.skcipher_request** %3, align 8
  %15 = call %struct.crypto_skcipher* @crypto_skcipher_reqtfm(%struct.skcipher_request* %14)
  store %struct.crypto_skcipher* %15, %struct.crypto_skcipher** %4, align 8
  %16 = load %struct.crypto_skcipher*, %struct.crypto_skcipher** %4, align 8
  %17 = call %struct.crypto_aes_ctx* @crypto_skcipher_ctx(%struct.crypto_skcipher* %16)
  store %struct.crypto_aes_ctx* %17, %struct.crypto_aes_ctx** %5, align 8
  %18 = load %struct.skcipher_request*, %struct.skcipher_request** %3, align 8
  %19 = getelementptr inbounds %struct.skcipher_request, %struct.skcipher_request* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* @AES_BLOCK_SIZE, align 4
  %22 = call i32 @DIV_ROUND_UP(i32 %20, i32 %21)
  %23 = sub nsw i32 %22, 2
  store i32 %23, i32* %6, align 4
  %24 = load %struct.skcipher_request*, %struct.skcipher_request** %3, align 8
  %25 = getelementptr inbounds %struct.skcipher_request, %struct.skcipher_request* %24, i32 0, i32 3
  %26 = load %struct.scatterlist*, %struct.scatterlist** %25, align 8
  store %struct.scatterlist* %26, %struct.scatterlist** %7, align 8
  %27 = load %struct.skcipher_request*, %struct.skcipher_request** %3, align 8
  %28 = getelementptr inbounds %struct.skcipher_request, %struct.skcipher_request* %27, i32 0, i32 2
  %29 = load %struct.scatterlist*, %struct.scatterlist** %28, align 8
  store %struct.scatterlist* %29, %struct.scatterlist** %8, align 8
  %30 = load %struct.crypto_skcipher*, %struct.crypto_skcipher** %4, align 8
  %31 = call i32 @skcipher_request_set_tfm(%struct.skcipher_request* %11, %struct.crypto_skcipher* %30)
  %32 = load %struct.skcipher_request*, %struct.skcipher_request** %3, align 8
  %33 = call i32 @skcipher_request_flags(%struct.skcipher_request* %32)
  %34 = call i32 @skcipher_request_set_callback(%struct.skcipher_request* %11, i32 %33, i32* null, i32* null)
  %35 = load %struct.skcipher_request*, %struct.skcipher_request** %3, align 8
  %36 = getelementptr inbounds %struct.skcipher_request, %struct.skcipher_request* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load i32, i32* @AES_BLOCK_SIZE, align 4
  %39 = icmp sle i32 %37, %38
  br i1 %39, label %40, label %50

40:                                               ; preds = %1
  %41 = load %struct.skcipher_request*, %struct.skcipher_request** %3, align 8
  %42 = getelementptr inbounds %struct.skcipher_request, %struct.skcipher_request* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = load i32, i32* @AES_BLOCK_SIZE, align 4
  %45 = icmp slt i32 %43, %44
  br i1 %45, label %46, label %49

46:                                               ; preds = %40
  %47 = load i32, i32* @EINVAL, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %2, align 4
  br label %150

49:                                               ; preds = %40
  store i32 1, i32* %6, align 4
  br label %50

50:                                               ; preds = %49, %1
  %51 = load i32, i32* %6, align 4
  %52 = icmp sgt i32 %51, 0
  br i1 %52, label %53, label %109

53:                                               ; preds = %50
  %54 = load %struct.skcipher_request*, %struct.skcipher_request** %3, align 8
  %55 = getelementptr inbounds %struct.skcipher_request, %struct.skcipher_request* %54, i32 0, i32 3
  %56 = load %struct.scatterlist*, %struct.scatterlist** %55, align 8
  %57 = load %struct.skcipher_request*, %struct.skcipher_request** %3, align 8
  %58 = getelementptr inbounds %struct.skcipher_request, %struct.skcipher_request* %57, i32 0, i32 2
  %59 = load %struct.scatterlist*, %struct.scatterlist** %58, align 8
  %60 = load i32, i32* %6, align 4
  %61 = load i32, i32* @AES_BLOCK_SIZE, align 4
  %62 = mul nsw i32 %60, %61
  %63 = load %struct.skcipher_request*, %struct.skcipher_request** %3, align 8
  %64 = getelementptr inbounds %struct.skcipher_request, %struct.skcipher_request* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @skcipher_request_set_crypt(%struct.skcipher_request* %11, %struct.scatterlist* %56, %struct.scatterlist* %59, i32 %62, i32 %65)
  %67 = call i32 @skcipher_walk_virt(%struct.skcipher_walk* %12, %struct.skcipher_request* %11, i32 0)
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %53
  br label %72

70:                                               ; preds = %53
  %71 = call i32 @cbc_decrypt_walk(%struct.skcipher_request* %11, %struct.skcipher_walk* %12)
  br label %72

72:                                               ; preds = %70, %69
  %73 = phi i32 [ %67, %69 ], [ %71, %70 ]
  store i32 %73, i32* %13, align 4
  %74 = load i32, i32* %13, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %78

76:                                               ; preds = %72
  %77 = load i32, i32* %13, align 4
  store i32 %77, i32* %2, align 4
  br label %150

78:                                               ; preds = %72
  %79 = load %struct.skcipher_request*, %struct.skcipher_request** %3, align 8
  %80 = getelementptr inbounds %struct.skcipher_request, %struct.skcipher_request* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = load i32, i32* @AES_BLOCK_SIZE, align 4
  %83 = icmp eq i32 %81, %82
  br i1 %83, label %84, label %85

84:                                               ; preds = %78
  store i32 0, i32* %2, align 4
  br label %150

85:                                               ; preds = %78
  %86 = getelementptr inbounds [2 x %struct.scatterlist], [2 x %struct.scatterlist]* %9, i64 0, i64 0
  %87 = load %struct.skcipher_request*, %struct.skcipher_request** %3, align 8
  %88 = getelementptr inbounds %struct.skcipher_request, %struct.skcipher_request* %87, i32 0, i32 3
  %89 = load %struct.scatterlist*, %struct.scatterlist** %88, align 8
  %90 = getelementptr inbounds %struct.skcipher_request, %struct.skcipher_request* %11, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = call %struct.scatterlist* @scatterwalk_ffwd(%struct.scatterlist* %86, %struct.scatterlist* %89, i32 %91)
  store %struct.scatterlist* %92, %struct.scatterlist** %7, align 8
  store %struct.scatterlist* %92, %struct.scatterlist** %8, align 8
  %93 = load %struct.skcipher_request*, %struct.skcipher_request** %3, align 8
  %94 = getelementptr inbounds %struct.skcipher_request, %struct.skcipher_request* %93, i32 0, i32 2
  %95 = load %struct.scatterlist*, %struct.scatterlist** %94, align 8
  %96 = load %struct.skcipher_request*, %struct.skcipher_request** %3, align 8
  %97 = getelementptr inbounds %struct.skcipher_request, %struct.skcipher_request* %96, i32 0, i32 3
  %98 = load %struct.scatterlist*, %struct.scatterlist** %97, align 8
  %99 = icmp ne %struct.scatterlist* %95, %98
  br i1 %99, label %100, label %108

100:                                              ; preds = %85
  %101 = getelementptr inbounds [2 x %struct.scatterlist], [2 x %struct.scatterlist]* %10, i64 0, i64 0
  %102 = load %struct.skcipher_request*, %struct.skcipher_request** %3, align 8
  %103 = getelementptr inbounds %struct.skcipher_request, %struct.skcipher_request* %102, i32 0, i32 2
  %104 = load %struct.scatterlist*, %struct.scatterlist** %103, align 8
  %105 = getelementptr inbounds %struct.skcipher_request, %struct.skcipher_request* %11, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = call %struct.scatterlist* @scatterwalk_ffwd(%struct.scatterlist* %101, %struct.scatterlist* %104, i32 %106)
  store %struct.scatterlist* %107, %struct.scatterlist** %8, align 8
  br label %108

108:                                              ; preds = %100, %85
  br label %109

109:                                              ; preds = %108, %50
  %110 = load %struct.scatterlist*, %struct.scatterlist** %7, align 8
  %111 = load %struct.scatterlist*, %struct.scatterlist** %8, align 8
  %112 = load %struct.skcipher_request*, %struct.skcipher_request** %3, align 8
  %113 = getelementptr inbounds %struct.skcipher_request, %struct.skcipher_request* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  %115 = load i32, i32* %6, align 4
  %116 = load i32, i32* @AES_BLOCK_SIZE, align 4
  %117 = mul nsw i32 %115, %116
  %118 = sub nsw i32 %114, %117
  %119 = load %struct.skcipher_request*, %struct.skcipher_request** %3, align 8
  %120 = getelementptr inbounds %struct.skcipher_request, %struct.skcipher_request* %119, i32 0, i32 1
  %121 = load i32, i32* %120, align 4
  %122 = call i32 @skcipher_request_set_crypt(%struct.skcipher_request* %11, %struct.scatterlist* %110, %struct.scatterlist* %111, i32 %118, i32 %121)
  %123 = call i32 @skcipher_walk_virt(%struct.skcipher_walk* %12, %struct.skcipher_request* %11, i32 0)
  store i32 %123, i32* %13, align 4
  %124 = load i32, i32* %13, align 4
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %128

126:                                              ; preds = %109
  %127 = load i32, i32* %13, align 4
  store i32 %127, i32* %2, align 4
  br label %150

128:                                              ; preds = %109
  %129 = call i32 (...) @kernel_neon_begin()
  %130 = getelementptr inbounds %struct.skcipher_walk, %struct.skcipher_walk* %12, i32 0, i32 3
  %131 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %130, i32 0, i32 0
  %132 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 4
  %134 = getelementptr inbounds %struct.skcipher_walk, %struct.skcipher_walk* %12, i32 0, i32 2
  %135 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %134, i32 0, i32 0
  %136 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 4
  %138 = load %struct.crypto_aes_ctx*, %struct.crypto_aes_ctx** %5, align 8
  %139 = getelementptr inbounds %struct.crypto_aes_ctx, %struct.crypto_aes_ctx* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 4
  %141 = load %struct.crypto_aes_ctx*, %struct.crypto_aes_ctx** %5, align 8
  %142 = call i32 @num_rounds(%struct.crypto_aes_ctx* %141)
  %143 = getelementptr inbounds %struct.skcipher_walk, %struct.skcipher_walk* %12, i32 0, i32 1
  %144 = load i32, i32* %143, align 4
  %145 = getelementptr inbounds %struct.skcipher_walk, %struct.skcipher_walk* %12, i32 0, i32 0
  %146 = load i32, i32* %145, align 4
  %147 = call i32 @ce_aes_cbc_cts_decrypt(i32 %133, i32 %137, i32 %140, i32 %142, i32 %144, i32 %146)
  %148 = call i32 (...) @kernel_neon_end()
  %149 = call i32 @skcipher_walk_done(%struct.skcipher_walk* %12, i32 0)
  store i32 %149, i32* %2, align 4
  br label %150

150:                                              ; preds = %128, %126, %84, %76, %46
  %151 = load i32, i32* %2, align 4
  ret i32 %151
}

declare dso_local %struct.crypto_skcipher* @crypto_skcipher_reqtfm(%struct.skcipher_request*) #1

declare dso_local %struct.crypto_aes_ctx* @crypto_skcipher_ctx(%struct.crypto_skcipher*) #1

declare dso_local i32 @DIV_ROUND_UP(i32, i32) #1

declare dso_local i32 @skcipher_request_set_tfm(%struct.skcipher_request*, %struct.crypto_skcipher*) #1

declare dso_local i32 @skcipher_request_set_callback(%struct.skcipher_request*, i32, i32*, i32*) #1

declare dso_local i32 @skcipher_request_flags(%struct.skcipher_request*) #1

declare dso_local i32 @skcipher_request_set_crypt(%struct.skcipher_request*, %struct.scatterlist*, %struct.scatterlist*, i32, i32) #1

declare dso_local i32 @skcipher_walk_virt(%struct.skcipher_walk*, %struct.skcipher_request*, i32) #1

declare dso_local i32 @cbc_decrypt_walk(%struct.skcipher_request*, %struct.skcipher_walk*) #1

declare dso_local %struct.scatterlist* @scatterwalk_ffwd(%struct.scatterlist*, %struct.scatterlist*, i32) #1

declare dso_local i32 @kernel_neon_begin(...) #1

declare dso_local i32 @ce_aes_cbc_cts_decrypt(i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @num_rounds(%struct.crypto_aes_ctx*) #1

declare dso_local i32 @kernel_neon_end(...) #1

declare dso_local i32 @skcipher_walk_done(%struct.skcipher_walk*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
