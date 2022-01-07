; ModuleID = '/home/carl/AnghaBench/linux/crypto/extr_ccm.c_crypto_ccm_init_crypt.c'
source_filename = "/home/carl/AnghaBench/linux/crypto/extr_ccm.c_crypto_ccm_init_crypt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aead_request = type { i32*, i32, i32, i32 }
%struct.crypto_ccm_req_priv_ctx = type { %struct.scatterlist*, %struct.scatterlist*, i32 }
%struct.scatterlist = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.aead_request*, i32*)* @crypto_ccm_init_crypt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @crypto_ccm_init_crypt(%struct.aead_request* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.aead_request*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.crypto_ccm_req_priv_ctx*, align 8
  %7 = alloca %struct.scatterlist*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  store %struct.aead_request* %0, %struct.aead_request** %4, align 8
  store i32* %1, i32** %5, align 8
  %10 = load %struct.aead_request*, %struct.aead_request** %4, align 8
  %11 = call %struct.crypto_ccm_req_priv_ctx* @crypto_ccm_reqctx(%struct.aead_request* %10)
  store %struct.crypto_ccm_req_priv_ctx* %11, %struct.crypto_ccm_req_priv_ctx** %6, align 8
  %12 = load %struct.aead_request*, %struct.aead_request** %4, align 8
  %13 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %12, i32 0, i32 0
  %14 = load i32*, i32** %13, align 8
  store i32* %14, i32** %8, align 8
  %15 = load i32*, i32** %8, align 8
  %16 = call i32 @crypto_ccm_check_iv(i32* %15)
  store i32 %16, i32* %9, align 4
  %17 = load i32, i32* %9, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %2
  %20 = load i32, i32* %9, align 4
  store i32 %20, i32* %3, align 4
  br label %114

21:                                               ; preds = %2
  %22 = load %struct.aead_request*, %struct.aead_request** %4, align 8
  %23 = call i32 @aead_request_flags(%struct.aead_request* %22)
  %24 = load %struct.crypto_ccm_req_priv_ctx*, %struct.crypto_ccm_req_priv_ctx** %6, align 8
  %25 = getelementptr inbounds %struct.crypto_ccm_req_priv_ctx, %struct.crypto_ccm_req_priv_ctx* %24, i32 0, i32 2
  store i32 %23, i32* %25, align 8
  %26 = load i32*, i32** %8, align 8
  %27 = getelementptr inbounds i32, i32* %26, i64 15
  %28 = load i32*, i32** %8, align 8
  %29 = getelementptr inbounds i32, i32* %28, i64 0
  %30 = load i32, i32* %29, align 4
  %31 = sext i32 %30 to i64
  %32 = sub i64 0, %31
  %33 = getelementptr inbounds i32, i32* %27, i64 %32
  %34 = load i32*, i32** %8, align 8
  %35 = getelementptr inbounds i32, i32* %34, i64 0
  %36 = load i32, i32* %35, align 4
  %37 = add nsw i32 %36, 1
  %38 = call i32 @memset(i32* %33, i32 0, i32 %37)
  %39 = load %struct.crypto_ccm_req_priv_ctx*, %struct.crypto_ccm_req_priv_ctx** %6, align 8
  %40 = getelementptr inbounds %struct.crypto_ccm_req_priv_ctx, %struct.crypto_ccm_req_priv_ctx* %39, i32 0, i32 1
  %41 = load %struct.scatterlist*, %struct.scatterlist** %40, align 8
  %42 = call i32 @sg_init_table(%struct.scatterlist* %41, i32 3)
  %43 = load %struct.crypto_ccm_req_priv_ctx*, %struct.crypto_ccm_req_priv_ctx** %6, align 8
  %44 = getelementptr inbounds %struct.crypto_ccm_req_priv_ctx, %struct.crypto_ccm_req_priv_ctx* %43, i32 0, i32 1
  %45 = load %struct.scatterlist*, %struct.scatterlist** %44, align 8
  %46 = load i32*, i32** %5, align 8
  %47 = call i32 @sg_set_buf(%struct.scatterlist* %45, i32* %46, i32 16)
  %48 = load %struct.crypto_ccm_req_priv_ctx*, %struct.crypto_ccm_req_priv_ctx** %6, align 8
  %49 = getelementptr inbounds %struct.crypto_ccm_req_priv_ctx, %struct.crypto_ccm_req_priv_ctx* %48, i32 0, i32 1
  %50 = load %struct.scatterlist*, %struct.scatterlist** %49, align 8
  %51 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %50, i64 1
  %52 = load %struct.aead_request*, %struct.aead_request** %4, align 8
  %53 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %52, i32 0, i32 3
  %54 = load i32, i32* %53, align 8
  %55 = load %struct.aead_request*, %struct.aead_request** %4, align 8
  %56 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 8
  %58 = call %struct.scatterlist* @scatterwalk_ffwd(%struct.scatterlist* %51, i32 %54, i32 %57)
  store %struct.scatterlist* %58, %struct.scatterlist** %7, align 8
  %59 = load %struct.scatterlist*, %struct.scatterlist** %7, align 8
  %60 = load %struct.crypto_ccm_req_priv_ctx*, %struct.crypto_ccm_req_priv_ctx** %6, align 8
  %61 = getelementptr inbounds %struct.crypto_ccm_req_priv_ctx, %struct.crypto_ccm_req_priv_ctx* %60, i32 0, i32 1
  %62 = load %struct.scatterlist*, %struct.scatterlist** %61, align 8
  %63 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %62, i64 1
  %64 = icmp ne %struct.scatterlist* %59, %63
  br i1 %64, label %65, label %71

65:                                               ; preds = %21
  %66 = load %struct.crypto_ccm_req_priv_ctx*, %struct.crypto_ccm_req_priv_ctx** %6, align 8
  %67 = getelementptr inbounds %struct.crypto_ccm_req_priv_ctx, %struct.crypto_ccm_req_priv_ctx* %66, i32 0, i32 1
  %68 = load %struct.scatterlist*, %struct.scatterlist** %67, align 8
  %69 = load %struct.scatterlist*, %struct.scatterlist** %7, align 8
  %70 = call i32 @sg_chain(%struct.scatterlist* %68, i32 2, %struct.scatterlist* %69)
  br label %71

71:                                               ; preds = %65, %21
  %72 = load %struct.aead_request*, %struct.aead_request** %4, align 8
  %73 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %72, i32 0, i32 3
  %74 = load i32, i32* %73, align 8
  %75 = load %struct.aead_request*, %struct.aead_request** %4, align 8
  %76 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %75, i32 0, i32 2
  %77 = load i32, i32* %76, align 4
  %78 = icmp ne i32 %74, %77
  br i1 %78, label %79, label %113

79:                                               ; preds = %71
  %80 = load %struct.crypto_ccm_req_priv_ctx*, %struct.crypto_ccm_req_priv_ctx** %6, align 8
  %81 = getelementptr inbounds %struct.crypto_ccm_req_priv_ctx, %struct.crypto_ccm_req_priv_ctx* %80, i32 0, i32 0
  %82 = load %struct.scatterlist*, %struct.scatterlist** %81, align 8
  %83 = call i32 @sg_init_table(%struct.scatterlist* %82, i32 3)
  %84 = load %struct.crypto_ccm_req_priv_ctx*, %struct.crypto_ccm_req_priv_ctx** %6, align 8
  %85 = getelementptr inbounds %struct.crypto_ccm_req_priv_ctx, %struct.crypto_ccm_req_priv_ctx* %84, i32 0, i32 0
  %86 = load %struct.scatterlist*, %struct.scatterlist** %85, align 8
  %87 = load i32*, i32** %5, align 8
  %88 = call i32 @sg_set_buf(%struct.scatterlist* %86, i32* %87, i32 16)
  %89 = load %struct.crypto_ccm_req_priv_ctx*, %struct.crypto_ccm_req_priv_ctx** %6, align 8
  %90 = getelementptr inbounds %struct.crypto_ccm_req_priv_ctx, %struct.crypto_ccm_req_priv_ctx* %89, i32 0, i32 0
  %91 = load %struct.scatterlist*, %struct.scatterlist** %90, align 8
  %92 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %91, i64 1
  %93 = load %struct.aead_request*, %struct.aead_request** %4, align 8
  %94 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %93, i32 0, i32 2
  %95 = load i32, i32* %94, align 4
  %96 = load %struct.aead_request*, %struct.aead_request** %4, align 8
  %97 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 8
  %99 = call %struct.scatterlist* @scatterwalk_ffwd(%struct.scatterlist* %92, i32 %95, i32 %98)
  store %struct.scatterlist* %99, %struct.scatterlist** %7, align 8
  %100 = load %struct.scatterlist*, %struct.scatterlist** %7, align 8
  %101 = load %struct.crypto_ccm_req_priv_ctx*, %struct.crypto_ccm_req_priv_ctx** %6, align 8
  %102 = getelementptr inbounds %struct.crypto_ccm_req_priv_ctx, %struct.crypto_ccm_req_priv_ctx* %101, i32 0, i32 0
  %103 = load %struct.scatterlist*, %struct.scatterlist** %102, align 8
  %104 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %103, i64 1
  %105 = icmp ne %struct.scatterlist* %100, %104
  br i1 %105, label %106, label %112

106:                                              ; preds = %79
  %107 = load %struct.crypto_ccm_req_priv_ctx*, %struct.crypto_ccm_req_priv_ctx** %6, align 8
  %108 = getelementptr inbounds %struct.crypto_ccm_req_priv_ctx, %struct.crypto_ccm_req_priv_ctx* %107, i32 0, i32 0
  %109 = load %struct.scatterlist*, %struct.scatterlist** %108, align 8
  %110 = load %struct.scatterlist*, %struct.scatterlist** %7, align 8
  %111 = call i32 @sg_chain(%struct.scatterlist* %109, i32 2, %struct.scatterlist* %110)
  br label %112

112:                                              ; preds = %106, %79
  br label %113

113:                                              ; preds = %112, %71
  store i32 0, i32* %3, align 4
  br label %114

114:                                              ; preds = %113, %19
  %115 = load i32, i32* %3, align 4
  ret i32 %115
}

declare dso_local %struct.crypto_ccm_req_priv_ctx* @crypto_ccm_reqctx(%struct.aead_request*) #1

declare dso_local i32 @crypto_ccm_check_iv(i32*) #1

declare dso_local i32 @aead_request_flags(%struct.aead_request*) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @sg_init_table(%struct.scatterlist*, i32) #1

declare dso_local i32 @sg_set_buf(%struct.scatterlist*, i32*, i32) #1

declare dso_local %struct.scatterlist* @scatterwalk_ffwd(%struct.scatterlist*, i32, i32) #1

declare dso_local i32 @sg_chain(%struct.scatterlist*, i32, %struct.scatterlist*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
