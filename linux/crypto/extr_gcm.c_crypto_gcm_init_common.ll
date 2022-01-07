; ModuleID = '/home/carl/AnghaBench/linux/crypto/extr_gcm.c_crypto_gcm_init_common.c'
source_filename = "/home/carl/AnghaBench/linux/crypto/extr_gcm.c_crypto_gcm_init_common.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aead_request = type { i32, i32, i32, i32* }
%struct.crypto_gcm_req_priv_ctx = type { i32, %struct.scatterlist*, i32, %struct.scatterlist* }
%struct.scatterlist = type { i32 }

@GCM_AES_IV_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.aead_request*)* @crypto_gcm_init_common to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @crypto_gcm_init_common(%struct.aead_request* %0) #0 {
  %2 = alloca %struct.aead_request*, align 8
  %3 = alloca %struct.crypto_gcm_req_priv_ctx*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.scatterlist*, align 8
  store %struct.aead_request* %0, %struct.aead_request** %2, align 8
  %6 = load %struct.aead_request*, %struct.aead_request** %2, align 8
  %7 = call %struct.crypto_gcm_req_priv_ctx* @crypto_gcm_reqctx(%struct.aead_request* %6)
  store %struct.crypto_gcm_req_priv_ctx* %7, %struct.crypto_gcm_req_priv_ctx** %3, align 8
  %8 = call i32 @cpu_to_be32(i32 1)
  store i32 %8, i32* %4, align 4
  %9 = load %struct.crypto_gcm_req_priv_ctx*, %struct.crypto_gcm_req_priv_ctx** %3, align 8
  %10 = getelementptr inbounds %struct.crypto_gcm_req_priv_ctx, %struct.crypto_gcm_req_priv_ctx* %9, i32 0, i32 2
  %11 = load i32, i32* %10, align 8
  %12 = call i32 @memset(i32 %11, i32 0, i32 4)
  %13 = load %struct.crypto_gcm_req_priv_ctx*, %struct.crypto_gcm_req_priv_ctx** %3, align 8
  %14 = getelementptr inbounds %struct.crypto_gcm_req_priv_ctx, %struct.crypto_gcm_req_priv_ctx* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = load %struct.aead_request*, %struct.aead_request** %2, align 8
  %17 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %16, i32 0, i32 3
  %18 = load i32*, i32** %17, align 8
  %19 = load i32, i32* @GCM_AES_IV_SIZE, align 4
  %20 = call i32 @memcpy(i32 %15, i32* %18, i32 %19)
  %21 = load %struct.crypto_gcm_req_priv_ctx*, %struct.crypto_gcm_req_priv_ctx** %3, align 8
  %22 = getelementptr inbounds %struct.crypto_gcm_req_priv_ctx, %struct.crypto_gcm_req_priv_ctx* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* @GCM_AES_IV_SIZE, align 4
  %25 = add nsw i32 %23, %24
  %26 = call i32 @memcpy(i32 %25, i32* %4, i32 4)
  %27 = load %struct.crypto_gcm_req_priv_ctx*, %struct.crypto_gcm_req_priv_ctx** %3, align 8
  %28 = getelementptr inbounds %struct.crypto_gcm_req_priv_ctx, %struct.crypto_gcm_req_priv_ctx* %27, i32 0, i32 3
  %29 = load %struct.scatterlist*, %struct.scatterlist** %28, align 8
  %30 = call i32 @sg_init_table(%struct.scatterlist* %29, i32 3)
  %31 = load %struct.crypto_gcm_req_priv_ctx*, %struct.crypto_gcm_req_priv_ctx** %3, align 8
  %32 = getelementptr inbounds %struct.crypto_gcm_req_priv_ctx, %struct.crypto_gcm_req_priv_ctx* %31, i32 0, i32 3
  %33 = load %struct.scatterlist*, %struct.scatterlist** %32, align 8
  %34 = load %struct.crypto_gcm_req_priv_ctx*, %struct.crypto_gcm_req_priv_ctx** %3, align 8
  %35 = getelementptr inbounds %struct.crypto_gcm_req_priv_ctx, %struct.crypto_gcm_req_priv_ctx* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 8
  %37 = call i32 @sg_set_buf(%struct.scatterlist* %33, i32 %36, i32 4)
  %38 = load %struct.crypto_gcm_req_priv_ctx*, %struct.crypto_gcm_req_priv_ctx** %3, align 8
  %39 = getelementptr inbounds %struct.crypto_gcm_req_priv_ctx, %struct.crypto_gcm_req_priv_ctx* %38, i32 0, i32 3
  %40 = load %struct.scatterlist*, %struct.scatterlist** %39, align 8
  %41 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %40, i64 1
  %42 = load %struct.aead_request*, %struct.aead_request** %2, align 8
  %43 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 8
  %45 = load %struct.aead_request*, %struct.aead_request** %2, align 8
  %46 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = call %struct.scatterlist* @scatterwalk_ffwd(%struct.scatterlist* %41, i32 %44, i32 %47)
  store %struct.scatterlist* %48, %struct.scatterlist** %5, align 8
  %49 = load %struct.scatterlist*, %struct.scatterlist** %5, align 8
  %50 = load %struct.crypto_gcm_req_priv_ctx*, %struct.crypto_gcm_req_priv_ctx** %3, align 8
  %51 = getelementptr inbounds %struct.crypto_gcm_req_priv_ctx, %struct.crypto_gcm_req_priv_ctx* %50, i32 0, i32 3
  %52 = load %struct.scatterlist*, %struct.scatterlist** %51, align 8
  %53 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %52, i64 1
  %54 = icmp ne %struct.scatterlist* %49, %53
  br i1 %54, label %55, label %61

55:                                               ; preds = %1
  %56 = load %struct.crypto_gcm_req_priv_ctx*, %struct.crypto_gcm_req_priv_ctx** %3, align 8
  %57 = getelementptr inbounds %struct.crypto_gcm_req_priv_ctx, %struct.crypto_gcm_req_priv_ctx* %56, i32 0, i32 3
  %58 = load %struct.scatterlist*, %struct.scatterlist** %57, align 8
  %59 = load %struct.scatterlist*, %struct.scatterlist** %5, align 8
  %60 = call i32 @sg_chain(%struct.scatterlist* %58, i32 2, %struct.scatterlist* %59)
  br label %61

61:                                               ; preds = %55, %1
  %62 = load %struct.aead_request*, %struct.aead_request** %2, align 8
  %63 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 8
  %65 = load %struct.aead_request*, %struct.aead_request** %2, align 8
  %66 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = icmp ne i32 %64, %67
  br i1 %68, label %69, label %105

69:                                               ; preds = %61
  %70 = load %struct.crypto_gcm_req_priv_ctx*, %struct.crypto_gcm_req_priv_ctx** %3, align 8
  %71 = getelementptr inbounds %struct.crypto_gcm_req_priv_ctx, %struct.crypto_gcm_req_priv_ctx* %70, i32 0, i32 1
  %72 = load %struct.scatterlist*, %struct.scatterlist** %71, align 8
  %73 = call i32 @sg_init_table(%struct.scatterlist* %72, i32 3)
  %74 = load %struct.crypto_gcm_req_priv_ctx*, %struct.crypto_gcm_req_priv_ctx** %3, align 8
  %75 = getelementptr inbounds %struct.crypto_gcm_req_priv_ctx, %struct.crypto_gcm_req_priv_ctx* %74, i32 0, i32 1
  %76 = load %struct.scatterlist*, %struct.scatterlist** %75, align 8
  %77 = load %struct.crypto_gcm_req_priv_ctx*, %struct.crypto_gcm_req_priv_ctx** %3, align 8
  %78 = getelementptr inbounds %struct.crypto_gcm_req_priv_ctx, %struct.crypto_gcm_req_priv_ctx* %77, i32 0, i32 2
  %79 = load i32, i32* %78, align 8
  %80 = call i32 @sg_set_buf(%struct.scatterlist* %76, i32 %79, i32 4)
  %81 = load %struct.crypto_gcm_req_priv_ctx*, %struct.crypto_gcm_req_priv_ctx** %3, align 8
  %82 = getelementptr inbounds %struct.crypto_gcm_req_priv_ctx, %struct.crypto_gcm_req_priv_ctx* %81, i32 0, i32 1
  %83 = load %struct.scatterlist*, %struct.scatterlist** %82, align 8
  %84 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %83, i64 1
  %85 = load %struct.aead_request*, %struct.aead_request** %2, align 8
  %86 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = load %struct.aead_request*, %struct.aead_request** %2, align 8
  %89 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = call %struct.scatterlist* @scatterwalk_ffwd(%struct.scatterlist* %84, i32 %87, i32 %90)
  store %struct.scatterlist* %91, %struct.scatterlist** %5, align 8
  %92 = load %struct.scatterlist*, %struct.scatterlist** %5, align 8
  %93 = load %struct.crypto_gcm_req_priv_ctx*, %struct.crypto_gcm_req_priv_ctx** %3, align 8
  %94 = getelementptr inbounds %struct.crypto_gcm_req_priv_ctx, %struct.crypto_gcm_req_priv_ctx* %93, i32 0, i32 1
  %95 = load %struct.scatterlist*, %struct.scatterlist** %94, align 8
  %96 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %95, i64 1
  %97 = icmp ne %struct.scatterlist* %92, %96
  br i1 %97, label %98, label %104

98:                                               ; preds = %69
  %99 = load %struct.crypto_gcm_req_priv_ctx*, %struct.crypto_gcm_req_priv_ctx** %3, align 8
  %100 = getelementptr inbounds %struct.crypto_gcm_req_priv_ctx, %struct.crypto_gcm_req_priv_ctx* %99, i32 0, i32 1
  %101 = load %struct.scatterlist*, %struct.scatterlist** %100, align 8
  %102 = load %struct.scatterlist*, %struct.scatterlist** %5, align 8
  %103 = call i32 @sg_chain(%struct.scatterlist* %101, i32 2, %struct.scatterlist* %102)
  br label %104

104:                                              ; preds = %98, %69
  br label %105

105:                                              ; preds = %104, %61
  ret void
}

declare dso_local %struct.crypto_gcm_req_priv_ctx* @crypto_gcm_reqctx(%struct.aead_request*) #1

declare dso_local i32 @cpu_to_be32(i32) #1

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i32 @memcpy(i32, i32*, i32) #1

declare dso_local i32 @sg_init_table(%struct.scatterlist*, i32) #1

declare dso_local i32 @sg_set_buf(%struct.scatterlist*, i32, i32) #1

declare dso_local %struct.scatterlist* @scatterwalk_ffwd(%struct.scatterlist*, i32, i32) #1

declare dso_local i32 @sg_chain(%struct.scatterlist*, i32, %struct.scatterlist*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
