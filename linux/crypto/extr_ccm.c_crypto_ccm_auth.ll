; ModuleID = '/home/carl/AnghaBench/linux/crypto/extr_ccm.c_crypto_ccm_auth.c'
source_filename = "/home/carl/AnghaBench/linux/crypto/extr_ccm.c_crypto_ccm_auth.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aead_request = type { i32, %struct.scatterlist* }
%struct.scatterlist = type { i32 }
%struct.crypto_ccm_req_priv_ctx = type { i32*, i32, i32*, %struct.ahash_request }
%struct.ahash_request = type { i32 }
%struct.crypto_aead = type { i32 }
%struct.crypto_ccm_ctx = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.aead_request*, %struct.scatterlist*, i32)* @crypto_ccm_auth to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @crypto_ccm_auth(%struct.aead_request* %0, %struct.scatterlist* %1, i32 %2) #0 {
  %4 = alloca %struct.aead_request*, align 8
  %5 = alloca %struct.scatterlist*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.crypto_ccm_req_priv_ctx*, align 8
  %8 = alloca %struct.crypto_aead*, align 8
  %9 = alloca %struct.crypto_ccm_ctx*, align 8
  %10 = alloca %struct.ahash_request*, align 8
  %11 = alloca i32, align 4
  %12 = alloca [3 x %struct.scatterlist], align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.aead_request* %0, %struct.aead_request** %4, align 8
  store %struct.scatterlist* %1, %struct.scatterlist** %5, align 8
  store i32 %2, i32* %6, align 4
  %17 = load %struct.aead_request*, %struct.aead_request** %4, align 8
  %18 = call %struct.crypto_ccm_req_priv_ctx* @crypto_ccm_reqctx(%struct.aead_request* %17)
  store %struct.crypto_ccm_req_priv_ctx* %18, %struct.crypto_ccm_req_priv_ctx** %7, align 8
  %19 = load %struct.aead_request*, %struct.aead_request** %4, align 8
  %20 = call %struct.crypto_aead* @crypto_aead_reqtfm(%struct.aead_request* %19)
  store %struct.crypto_aead* %20, %struct.crypto_aead** %8, align 8
  %21 = load %struct.crypto_aead*, %struct.crypto_aead** %8, align 8
  %22 = call %struct.crypto_ccm_ctx* @crypto_aead_ctx(%struct.crypto_aead* %21)
  store %struct.crypto_ccm_ctx* %22, %struct.crypto_ccm_ctx** %9, align 8
  %23 = load %struct.crypto_ccm_req_priv_ctx*, %struct.crypto_ccm_req_priv_ctx** %7, align 8
  %24 = getelementptr inbounds %struct.crypto_ccm_req_priv_ctx, %struct.crypto_ccm_req_priv_ctx* %23, i32 0, i32 3
  store %struct.ahash_request* %24, %struct.ahash_request** %10, align 8
  %25 = load %struct.aead_request*, %struct.aead_request** %4, align 8
  %26 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  store i32 %27, i32* %11, align 4
  %28 = load %struct.crypto_ccm_req_priv_ctx*, %struct.crypto_ccm_req_priv_ctx** %7, align 8
  %29 = getelementptr inbounds %struct.crypto_ccm_req_priv_ctx, %struct.crypto_ccm_req_priv_ctx* %28, i32 0, i32 0
  %30 = load i32*, i32** %29, align 8
  store i32* %30, i32** %13, align 8
  %31 = load %struct.crypto_ccm_req_priv_ctx*, %struct.crypto_ccm_req_priv_ctx** %7, align 8
  %32 = getelementptr inbounds %struct.crypto_ccm_req_priv_ctx, %struct.crypto_ccm_req_priv_ctx* %31, i32 0, i32 2
  %33 = load i32*, i32** %32, align 8
  store i32* %33, i32** %14, align 8
  %34 = load i32*, i32** %13, align 8
  %35 = load %struct.aead_request*, %struct.aead_request** %4, align 8
  %36 = load i32, i32* %6, align 4
  %37 = call i32 @format_input(i32* %34, %struct.aead_request* %35, i32 %36)
  store i32 %37, i32* %16, align 4
  %38 = load i32, i32* %16, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %3
  br label %136

41:                                               ; preds = %3
  %42 = getelementptr inbounds [3 x %struct.scatterlist], [3 x %struct.scatterlist]* %12, i64 0, i64 0
  %43 = call i32 @sg_init_table(%struct.scatterlist* %42, i32 3)
  %44 = getelementptr inbounds [3 x %struct.scatterlist], [3 x %struct.scatterlist]* %12, i64 0, i64 0
  %45 = load i32*, i32** %13, align 8
  %46 = call i32 @sg_set_buf(%struct.scatterlist* %44, i32* %45, i32 16)
  %47 = load i32, i32* %11, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %62

49:                                               ; preds = %41
  %50 = load i32*, i32** %14, align 8
  %51 = load i32, i32* %11, align 4
  %52 = call i32 @format_adata(i32* %50, i32 %51)
  store i32 %52, i32* %15, align 4
  %53 = getelementptr inbounds [3 x %struct.scatterlist], [3 x %struct.scatterlist]* %12, i64 0, i64 1
  %54 = load i32*, i32** %14, align 8
  %55 = load i32, i32* %15, align 4
  %56 = call i32 @sg_set_buf(%struct.scatterlist* %53, i32* %54, i32 %55)
  %57 = getelementptr inbounds [3 x %struct.scatterlist], [3 x %struct.scatterlist]* %12, i64 0, i64 0
  %58 = load %struct.aead_request*, %struct.aead_request** %4, align 8
  %59 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %58, i32 0, i32 1
  %60 = load %struct.scatterlist*, %struct.scatterlist** %59, align 8
  %61 = call i32 @sg_chain(%struct.scatterlist* %57, i32 3, %struct.scatterlist* %60)
  br label %68

62:                                               ; preds = %41
  store i32 0, i32* %15, align 4
  %63 = getelementptr inbounds [3 x %struct.scatterlist], [3 x %struct.scatterlist]* %12, i64 0, i64 0
  %64 = load %struct.aead_request*, %struct.aead_request** %4, align 8
  %65 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %64, i32 0, i32 1
  %66 = load %struct.scatterlist*, %struct.scatterlist** %65, align 8
  %67 = call i32 @sg_chain(%struct.scatterlist* %63, i32 2, %struct.scatterlist* %66)
  br label %68

68:                                               ; preds = %62, %49
  %69 = load %struct.ahash_request*, %struct.ahash_request** %10, align 8
  %70 = load %struct.crypto_ccm_ctx*, %struct.crypto_ccm_ctx** %9, align 8
  %71 = getelementptr inbounds %struct.crypto_ccm_ctx, %struct.crypto_ccm_ctx* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @ahash_request_set_tfm(%struct.ahash_request* %69, i32 %72)
  %74 = load %struct.ahash_request*, %struct.ahash_request** %10, align 8
  %75 = load %struct.crypto_ccm_req_priv_ctx*, %struct.crypto_ccm_req_priv_ctx** %7, align 8
  %76 = getelementptr inbounds %struct.crypto_ccm_req_priv_ctx, %struct.crypto_ccm_req_priv_ctx* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 8
  %78 = call i32 @ahash_request_set_callback(%struct.ahash_request* %74, i32 %77, i32* null, i32* null)
  %79 = load %struct.ahash_request*, %struct.ahash_request** %10, align 8
  %80 = getelementptr inbounds [3 x %struct.scatterlist], [3 x %struct.scatterlist]* %12, i64 0, i64 0
  %81 = load i32, i32* %11, align 4
  %82 = load i32, i32* %15, align 4
  %83 = add i32 %81, %82
  %84 = add i32 %83, 16
  %85 = call i32 @ahash_request_set_crypt(%struct.ahash_request* %79, %struct.scatterlist* %80, i32* null, i32 %84)
  %86 = load %struct.ahash_request*, %struct.ahash_request** %10, align 8
  %87 = call i32 @crypto_ahash_init(%struct.ahash_request* %86)
  store i32 %87, i32* %16, align 4
  %88 = load i32, i32* %16, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %91

90:                                               ; preds = %68
  br label %136

91:                                               ; preds = %68
  %92 = load %struct.ahash_request*, %struct.ahash_request** %10, align 8
  %93 = call i32 @crypto_ahash_update(%struct.ahash_request* %92)
  store i32 %93, i32* %16, align 4
  %94 = load i32, i32* %16, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %97

96:                                               ; preds = %91
  br label %136

97:                                               ; preds = %91
  %98 = load i32, i32* %11, align 4
  %99 = load i32, i32* %15, align 4
  %100 = add i32 %98, %99
  %101 = urem i32 %100, 16
  %102 = sub i32 16, %101
  store i32 %102, i32* %15, align 4
  %103 = load i32, i32* %15, align 4
  %104 = icmp slt i32 %103, 16
  br i1 %104, label %105, label %126

105:                                              ; preds = %97
  %106 = load i32*, i32** %14, align 8
  %107 = load i32, i32* %15, align 4
  %108 = call i32 @memset(i32* %106, i32 0, i32 %107)
  %109 = getelementptr inbounds [3 x %struct.scatterlist], [3 x %struct.scatterlist]* %12, i64 0, i64 0
  %110 = call i32 @sg_init_table(%struct.scatterlist* %109, i32 2)
  %111 = getelementptr inbounds [3 x %struct.scatterlist], [3 x %struct.scatterlist]* %12, i64 0, i64 0
  %112 = load i32*, i32** %14, align 8
  %113 = load i32, i32* %15, align 4
  %114 = call i32 @sg_set_buf(%struct.scatterlist* %111, i32* %112, i32 %113)
  %115 = load %struct.scatterlist*, %struct.scatterlist** %5, align 8
  %116 = icmp ne %struct.scatterlist* %115, null
  br i1 %116, label %117, label %121

117:                                              ; preds = %105
  %118 = getelementptr inbounds [3 x %struct.scatterlist], [3 x %struct.scatterlist]* %12, i64 0, i64 0
  %119 = load %struct.scatterlist*, %struct.scatterlist** %5, align 8
  %120 = call i32 @sg_chain(%struct.scatterlist* %118, i32 2, %struct.scatterlist* %119)
  br label %121

121:                                              ; preds = %117, %105
  %122 = getelementptr inbounds [3 x %struct.scatterlist], [3 x %struct.scatterlist]* %12, i64 0, i64 0
  store %struct.scatterlist* %122, %struct.scatterlist** %5, align 8
  %123 = load i32, i32* %15, align 4
  %124 = load i32, i32* %6, align 4
  %125 = add i32 %124, %123
  store i32 %125, i32* %6, align 4
  br label %126

126:                                              ; preds = %121, %97
  %127 = load %struct.ahash_request*, %struct.ahash_request** %10, align 8
  %128 = load %struct.scatterlist*, %struct.scatterlist** %5, align 8
  %129 = load %struct.crypto_ccm_req_priv_ctx*, %struct.crypto_ccm_req_priv_ctx** %7, align 8
  %130 = getelementptr inbounds %struct.crypto_ccm_req_priv_ctx, %struct.crypto_ccm_req_priv_ctx* %129, i32 0, i32 0
  %131 = load i32*, i32** %130, align 8
  %132 = load i32, i32* %6, align 4
  %133 = call i32 @ahash_request_set_crypt(%struct.ahash_request* %127, %struct.scatterlist* %128, i32* %131, i32 %132)
  %134 = load %struct.ahash_request*, %struct.ahash_request** %10, align 8
  %135 = call i32 @crypto_ahash_finup(%struct.ahash_request* %134)
  store i32 %135, i32* %16, align 4
  br label %136

136:                                              ; preds = %126, %96, %90, %40
  %137 = load i32, i32* %16, align 4
  ret i32 %137
}

declare dso_local %struct.crypto_ccm_req_priv_ctx* @crypto_ccm_reqctx(%struct.aead_request*) #1

declare dso_local %struct.crypto_aead* @crypto_aead_reqtfm(%struct.aead_request*) #1

declare dso_local %struct.crypto_ccm_ctx* @crypto_aead_ctx(%struct.crypto_aead*) #1

declare dso_local i32 @format_input(i32*, %struct.aead_request*, i32) #1

declare dso_local i32 @sg_init_table(%struct.scatterlist*, i32) #1

declare dso_local i32 @sg_set_buf(%struct.scatterlist*, i32*, i32) #1

declare dso_local i32 @format_adata(i32*, i32) #1

declare dso_local i32 @sg_chain(%struct.scatterlist*, i32, %struct.scatterlist*) #1

declare dso_local i32 @ahash_request_set_tfm(%struct.ahash_request*, i32) #1

declare dso_local i32 @ahash_request_set_callback(%struct.ahash_request*, i32, i32*, i32*) #1

declare dso_local i32 @ahash_request_set_crypt(%struct.ahash_request*, %struct.scatterlist*, i32*, i32) #1

declare dso_local i32 @crypto_ahash_init(%struct.ahash_request*) #1

declare dso_local i32 @crypto_ahash_update(%struct.ahash_request*) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @crypto_ahash_finup(%struct.ahash_request*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
