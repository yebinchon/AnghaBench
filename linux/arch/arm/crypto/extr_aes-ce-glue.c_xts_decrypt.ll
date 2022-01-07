; ModuleID = '/home/carl/AnghaBench/linux/arch/arm/crypto/extr_aes-ce-glue.c_xts_decrypt.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm/crypto/extr_aes-ce-glue.c_xts_decrypt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.skcipher_request = type { i32, i32, %struct.scatterlist*, %struct.scatterlist* }
%struct.scatterlist = type { i32 }
%struct.crypto_skcipher = type { i32 }
%struct.crypto_aes_xts_ctx = type { %struct.TYPE_11__, %struct.TYPE_12__ }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_12__ = type { i32 }
%struct.skcipher_walk = type { i32, i32, i32, %struct.TYPE_10__, %struct.TYPE_8__ }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }

@AES_BLOCK_SIZE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.skcipher_request*)* @xts_decrypt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xts_decrypt(%struct.skcipher_request* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.skcipher_request*, align 8
  %4 = alloca %struct.crypto_skcipher*, align 8
  %5 = alloca %struct.crypto_aes_xts_ctx*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca [2 x %struct.scatterlist], align 4
  %11 = alloca [2 x %struct.scatterlist], align 4
  %12 = alloca %struct.skcipher_request, align 8
  %13 = alloca %struct.scatterlist*, align 8
  %14 = alloca %struct.scatterlist*, align 8
  %15 = alloca %struct.skcipher_walk, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.skcipher_request* %0, %struct.skcipher_request** %3, align 8
  %18 = load %struct.skcipher_request*, %struct.skcipher_request** %3, align 8
  %19 = call %struct.crypto_skcipher* @crypto_skcipher_reqtfm(%struct.skcipher_request* %18)
  store %struct.crypto_skcipher* %19, %struct.crypto_skcipher** %4, align 8
  %20 = load %struct.crypto_skcipher*, %struct.crypto_skcipher** %4, align 8
  %21 = call %struct.crypto_aes_xts_ctx* @crypto_skcipher_ctx(%struct.crypto_skcipher* %20)
  store %struct.crypto_aes_xts_ctx* %21, %struct.crypto_aes_xts_ctx** %5, align 8
  %22 = load %struct.crypto_aes_xts_ctx*, %struct.crypto_aes_xts_ctx** %5, align 8
  %23 = getelementptr inbounds %struct.crypto_aes_xts_ctx, %struct.crypto_aes_xts_ctx* %22, i32 0, i32 1
  %24 = call i32 @num_rounds(%struct.TYPE_12__* %23)
  store i32 %24, i32* %8, align 4
  %25 = load %struct.skcipher_request*, %struct.skcipher_request** %3, align 8
  %26 = getelementptr inbounds %struct.skcipher_request, %struct.skcipher_request* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* @AES_BLOCK_SIZE, align 4
  %29 = srem i32 %27, %28
  store i32 %29, i32* %9, align 4
  %30 = load %struct.skcipher_request*, %struct.skcipher_request** %3, align 8
  %31 = getelementptr inbounds %struct.skcipher_request, %struct.skcipher_request* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* @AES_BLOCK_SIZE, align 4
  %34 = icmp slt i32 %32, %33
  br i1 %34, label %35, label %38

35:                                               ; preds = %1
  %36 = load i32, i32* @EINVAL, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %2, align 4
  br label %215

38:                                               ; preds = %1
  %39 = load %struct.skcipher_request*, %struct.skcipher_request** %3, align 8
  %40 = call i32 @skcipher_walk_virt(%struct.skcipher_walk* %15, %struct.skcipher_request* %39, i32 0)
  store i32 %40, i32* %6, align 4
  %41 = load i32, i32* %9, align 4
  %42 = icmp sgt i32 %41, 0
  br i1 %42, label %43, label %49

43:                                               ; preds = %38
  %44 = getelementptr inbounds %struct.skcipher_walk, %struct.skcipher_walk* %15, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = getelementptr inbounds %struct.skcipher_walk, %struct.skcipher_walk* %15, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = icmp slt i32 %45, %47
  br label %49

49:                                               ; preds = %43, %38
  %50 = phi i1 [ false, %38 ], [ %48, %43 ]
  %51 = zext i1 %50 to i32
  %52 = call i64 @unlikely(i32 %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %82

54:                                               ; preds = %49
  %55 = load %struct.skcipher_request*, %struct.skcipher_request** %3, align 8
  %56 = getelementptr inbounds %struct.skcipher_request, %struct.skcipher_request* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = load i32, i32* @AES_BLOCK_SIZE, align 4
  %59 = call i32 @DIV_ROUND_UP(i32 %57, i32 %58)
  %60 = sub nsw i32 %59, 2
  store i32 %60, i32* %16, align 4
  %61 = call i32 @skcipher_walk_abort(%struct.skcipher_walk* %15)
  %62 = load %struct.crypto_skcipher*, %struct.crypto_skcipher** %4, align 8
  %63 = call i32 @skcipher_request_set_tfm(%struct.skcipher_request* %12, %struct.crypto_skcipher* %62)
  %64 = load %struct.skcipher_request*, %struct.skcipher_request** %3, align 8
  %65 = call i32 @skcipher_request_flags(%struct.skcipher_request* %64)
  %66 = call i32 @skcipher_request_set_callback(%struct.skcipher_request* %12, i32 %65, i32* null, i32* null)
  %67 = load %struct.skcipher_request*, %struct.skcipher_request** %3, align 8
  %68 = getelementptr inbounds %struct.skcipher_request, %struct.skcipher_request* %67, i32 0, i32 3
  %69 = load %struct.scatterlist*, %struct.scatterlist** %68, align 8
  %70 = load %struct.skcipher_request*, %struct.skcipher_request** %3, align 8
  %71 = getelementptr inbounds %struct.skcipher_request, %struct.skcipher_request* %70, i32 0, i32 2
  %72 = load %struct.scatterlist*, %struct.scatterlist** %71, align 8
  %73 = load i32, i32* %16, align 4
  %74 = load i32, i32* @AES_BLOCK_SIZE, align 4
  %75 = mul nsw i32 %73, %74
  %76 = load %struct.skcipher_request*, %struct.skcipher_request** %3, align 8
  %77 = getelementptr inbounds %struct.skcipher_request, %struct.skcipher_request* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @skcipher_request_set_crypt(%struct.skcipher_request* %12, %struct.scatterlist* %69, %struct.scatterlist* %72, i32 %75, i32 %78)
  store %struct.skcipher_request* %12, %struct.skcipher_request** %3, align 8
  %80 = load %struct.skcipher_request*, %struct.skcipher_request** %3, align 8
  %81 = call i32 @skcipher_walk_virt(%struct.skcipher_walk* %15, %struct.skcipher_request* %80, i32 0)
  store i32 %81, i32* %6, align 4
  br label %83

82:                                               ; preds = %49
  store i32 0, i32* %9, align 4
  br label %83

83:                                               ; preds = %82, %54
  store i32 1, i32* %7, align 4
  br label %84

84:                                               ; preds = %133, %83
  %85 = getelementptr inbounds %struct.skcipher_walk, %struct.skcipher_walk* %15, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = load i32, i32* @AES_BLOCK_SIZE, align 4
  %88 = icmp sge i32 %86, %87
  br i1 %88, label %89, label %134

89:                                               ; preds = %84
  %90 = getelementptr inbounds %struct.skcipher_walk, %struct.skcipher_walk* %15, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  store i32 %91, i32* %17, align 4
  %92 = getelementptr inbounds %struct.skcipher_walk, %struct.skcipher_walk* %15, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = getelementptr inbounds %struct.skcipher_walk, %struct.skcipher_walk* %15, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  %96 = icmp slt i32 %93, %95
  br i1 %96, label %97, label %103

97:                                               ; preds = %89
  %98 = load i32, i32* @AES_BLOCK_SIZE, align 4
  %99 = sub nsw i32 %98, 1
  %100 = xor i32 %99, -1
  %101 = load i32, i32* %17, align 4
  %102 = and i32 %101, %100
  store i32 %102, i32* %17, align 4
  br label %103

103:                                              ; preds = %97, %89
  %104 = call i32 (...) @kernel_neon_begin()
  %105 = getelementptr inbounds %struct.skcipher_walk, %struct.skcipher_walk* %15, i32 0, i32 4
  %106 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %105, i32 0, i32 0
  %107 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = getelementptr inbounds %struct.skcipher_walk, %struct.skcipher_walk* %15, i32 0, i32 3
  %110 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %109, i32 0, i32 0
  %111 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  %113 = load %struct.crypto_aes_xts_ctx*, %struct.crypto_aes_xts_ctx** %5, align 8
  %114 = getelementptr inbounds %struct.crypto_aes_xts_ctx, %struct.crypto_aes_xts_ctx* %113, i32 0, i32 1
  %115 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 4
  %117 = load i32, i32* %8, align 4
  %118 = load i32, i32* %17, align 4
  %119 = getelementptr inbounds %struct.skcipher_walk, %struct.skcipher_walk* %15, i32 0, i32 2
  %120 = load i32, i32* %119, align 4
  %121 = load %struct.crypto_aes_xts_ctx*, %struct.crypto_aes_xts_ctx** %5, align 8
  %122 = getelementptr inbounds %struct.crypto_aes_xts_ctx, %struct.crypto_aes_xts_ctx* %121, i32 0, i32 0
  %123 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 4
  %125 = load i32, i32* %7, align 4
  %126 = call i32 @ce_aes_xts_decrypt(i32 %108, i32 %112, i32 %116, i32 %117, i32 %118, i32 %120, i32 %124, i32 %125)
  %127 = call i32 (...) @kernel_neon_end()
  %128 = getelementptr inbounds %struct.skcipher_walk, %struct.skcipher_walk* %15, i32 0, i32 0
  %129 = load i32, i32* %128, align 4
  %130 = load i32, i32* %17, align 4
  %131 = sub nsw i32 %129, %130
  %132 = call i32 @skcipher_walk_done(%struct.skcipher_walk* %15, i32 %131)
  store i32 %132, i32* %6, align 4
  br label %133

133:                                              ; preds = %103
  store i32 0, i32* %7, align 4
  br label %84

134:                                              ; preds = %84
  %135 = load i32, i32* %6, align 4
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %144, label %137

137:                                              ; preds = %134
  %138 = load i32, i32* %9, align 4
  %139 = icmp ne i32 %138, 0
  %140 = xor i1 %139, true
  %141 = zext i1 %140 to i32
  %142 = call i64 @likely(i32 %141)
  %143 = icmp ne i64 %142, 0
  br i1 %143, label %144, label %146

144:                                              ; preds = %137, %134
  %145 = load i32, i32* %6, align 4
  store i32 %145, i32* %2, align 4
  br label %215

146:                                              ; preds = %137
  %147 = getelementptr inbounds [2 x %struct.scatterlist], [2 x %struct.scatterlist]* %10, i64 0, i64 0
  %148 = load %struct.skcipher_request*, %struct.skcipher_request** %3, align 8
  %149 = getelementptr inbounds %struct.skcipher_request, %struct.skcipher_request* %148, i32 0, i32 3
  %150 = load %struct.scatterlist*, %struct.scatterlist** %149, align 8
  %151 = load %struct.skcipher_request*, %struct.skcipher_request** %3, align 8
  %152 = getelementptr inbounds %struct.skcipher_request, %struct.skcipher_request* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 8
  %154 = call %struct.scatterlist* @scatterwalk_ffwd(%struct.scatterlist* %147, %struct.scatterlist* %150, i32 %153)
  store %struct.scatterlist* %154, %struct.scatterlist** %13, align 8
  store %struct.scatterlist* %154, %struct.scatterlist** %14, align 8
  %155 = load %struct.skcipher_request*, %struct.skcipher_request** %3, align 8
  %156 = getelementptr inbounds %struct.skcipher_request, %struct.skcipher_request* %155, i32 0, i32 2
  %157 = load %struct.scatterlist*, %struct.scatterlist** %156, align 8
  %158 = load %struct.skcipher_request*, %struct.skcipher_request** %3, align 8
  %159 = getelementptr inbounds %struct.skcipher_request, %struct.skcipher_request* %158, i32 0, i32 3
  %160 = load %struct.scatterlist*, %struct.scatterlist** %159, align 8
  %161 = icmp ne %struct.scatterlist* %157, %160
  br i1 %161, label %162, label %171

162:                                              ; preds = %146
  %163 = getelementptr inbounds [2 x %struct.scatterlist], [2 x %struct.scatterlist]* %11, i64 0, i64 0
  %164 = load %struct.skcipher_request*, %struct.skcipher_request** %3, align 8
  %165 = getelementptr inbounds %struct.skcipher_request, %struct.skcipher_request* %164, i32 0, i32 2
  %166 = load %struct.scatterlist*, %struct.scatterlist** %165, align 8
  %167 = load %struct.skcipher_request*, %struct.skcipher_request** %3, align 8
  %168 = getelementptr inbounds %struct.skcipher_request, %struct.skcipher_request* %167, i32 0, i32 0
  %169 = load i32, i32* %168, align 8
  %170 = call %struct.scatterlist* @scatterwalk_ffwd(%struct.scatterlist* %163, %struct.scatterlist* %166, i32 %169)
  store %struct.scatterlist* %170, %struct.scatterlist** %14, align 8
  br label %171

171:                                              ; preds = %162, %146
  %172 = load %struct.skcipher_request*, %struct.skcipher_request** %3, align 8
  %173 = load %struct.scatterlist*, %struct.scatterlist** %13, align 8
  %174 = load %struct.scatterlist*, %struct.scatterlist** %14, align 8
  %175 = load i32, i32* @AES_BLOCK_SIZE, align 4
  %176 = load i32, i32* %9, align 4
  %177 = add nsw i32 %175, %176
  %178 = load %struct.skcipher_request*, %struct.skcipher_request** %3, align 8
  %179 = getelementptr inbounds %struct.skcipher_request, %struct.skcipher_request* %178, i32 0, i32 1
  %180 = load i32, i32* %179, align 4
  %181 = call i32 @skcipher_request_set_crypt(%struct.skcipher_request* %172, %struct.scatterlist* %173, %struct.scatterlist* %174, i32 %177, i32 %180)
  %182 = load %struct.skcipher_request*, %struct.skcipher_request** %3, align 8
  %183 = call i32 @skcipher_walk_virt(%struct.skcipher_walk* %15, %struct.skcipher_request* %182, i32 0)
  store i32 %183, i32* %6, align 4
  %184 = load i32, i32* %6, align 4
  %185 = icmp ne i32 %184, 0
  br i1 %185, label %186, label %188

186:                                              ; preds = %171
  %187 = load i32, i32* %6, align 4
  store i32 %187, i32* %2, align 4
  br label %215

188:                                              ; preds = %171
  %189 = call i32 (...) @kernel_neon_begin()
  %190 = getelementptr inbounds %struct.skcipher_walk, %struct.skcipher_walk* %15, i32 0, i32 4
  %191 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %190, i32 0, i32 0
  %192 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %191, i32 0, i32 0
  %193 = load i32, i32* %192, align 4
  %194 = getelementptr inbounds %struct.skcipher_walk, %struct.skcipher_walk* %15, i32 0, i32 3
  %195 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %194, i32 0, i32 0
  %196 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %195, i32 0, i32 0
  %197 = load i32, i32* %196, align 4
  %198 = load %struct.crypto_aes_xts_ctx*, %struct.crypto_aes_xts_ctx** %5, align 8
  %199 = getelementptr inbounds %struct.crypto_aes_xts_ctx, %struct.crypto_aes_xts_ctx* %198, i32 0, i32 1
  %200 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %199, i32 0, i32 0
  %201 = load i32, i32* %200, align 4
  %202 = load i32, i32* %8, align 4
  %203 = getelementptr inbounds %struct.skcipher_walk, %struct.skcipher_walk* %15, i32 0, i32 0
  %204 = load i32, i32* %203, align 4
  %205 = getelementptr inbounds %struct.skcipher_walk, %struct.skcipher_walk* %15, i32 0, i32 2
  %206 = load i32, i32* %205, align 4
  %207 = load %struct.crypto_aes_xts_ctx*, %struct.crypto_aes_xts_ctx** %5, align 8
  %208 = getelementptr inbounds %struct.crypto_aes_xts_ctx, %struct.crypto_aes_xts_ctx* %207, i32 0, i32 0
  %209 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %208, i32 0, i32 0
  %210 = load i32, i32* %209, align 4
  %211 = load i32, i32* %7, align 4
  %212 = call i32 @ce_aes_xts_decrypt(i32 %193, i32 %197, i32 %201, i32 %202, i32 %204, i32 %206, i32 %210, i32 %211)
  %213 = call i32 (...) @kernel_neon_end()
  %214 = call i32 @skcipher_walk_done(%struct.skcipher_walk* %15, i32 0)
  store i32 %214, i32* %2, align 4
  br label %215

215:                                              ; preds = %188, %186, %144, %35
  %216 = load i32, i32* %2, align 4
  ret i32 %216
}

declare dso_local %struct.crypto_skcipher* @crypto_skcipher_reqtfm(%struct.skcipher_request*) #1

declare dso_local %struct.crypto_aes_xts_ctx* @crypto_skcipher_ctx(%struct.crypto_skcipher*) #1

declare dso_local i32 @num_rounds(%struct.TYPE_12__*) #1

declare dso_local i32 @skcipher_walk_virt(%struct.skcipher_walk*, %struct.skcipher_request*, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @DIV_ROUND_UP(i32, i32) #1

declare dso_local i32 @skcipher_walk_abort(%struct.skcipher_walk*) #1

declare dso_local i32 @skcipher_request_set_tfm(%struct.skcipher_request*, %struct.crypto_skcipher*) #1

declare dso_local i32 @skcipher_request_set_callback(%struct.skcipher_request*, i32, i32*, i32*) #1

declare dso_local i32 @skcipher_request_flags(%struct.skcipher_request*) #1

declare dso_local i32 @skcipher_request_set_crypt(%struct.skcipher_request*, %struct.scatterlist*, %struct.scatterlist*, i32, i32) #1

declare dso_local i32 @kernel_neon_begin(...) #1

declare dso_local i32 @ce_aes_xts_decrypt(i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @kernel_neon_end(...) #1

declare dso_local i32 @skcipher_walk_done(%struct.skcipher_walk*, i32) #1

declare dso_local i64 @likely(i32) #1

declare dso_local %struct.scatterlist* @scatterwalk_ffwd(%struct.scatterlist*, %struct.scatterlist*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
