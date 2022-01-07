; ModuleID = '/home/carl/AnghaBench/linux/crypto/extr_ccm.c_crypto_rfc4309_crypt.c'
source_filename = "/home/carl/AnghaBench/linux/crypto/extr_ccm.c_crypto_rfc4309_crypt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aead_request = type { i64, i64, i64, i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i32, i32 }
%struct.crypto_rfc4309_req_ctx = type { %struct.scatterlist*, %struct.scatterlist*, %struct.aead_request }
%struct.scatterlist = type { i32 }
%struct.crypto_aead = type { i32 }
%struct.crypto_rfc4309_ctx = type { i32, %struct.crypto_aead* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.aead_request* (%struct.aead_request*)* @crypto_rfc4309_crypt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.aead_request* @crypto_rfc4309_crypt(%struct.aead_request* %0) #0 {
  %2 = alloca %struct.aead_request*, align 8
  %3 = alloca %struct.crypto_rfc4309_req_ctx*, align 8
  %4 = alloca %struct.aead_request*, align 8
  %5 = alloca %struct.crypto_aead*, align 8
  %6 = alloca %struct.crypto_rfc4309_ctx*, align 8
  %7 = alloca %struct.crypto_aead*, align 8
  %8 = alloca %struct.scatterlist*, align 8
  %9 = alloca i32*, align 8
  store %struct.aead_request* %0, %struct.aead_request** %2, align 8
  %10 = load %struct.aead_request*, %struct.aead_request** %2, align 8
  %11 = call %struct.crypto_rfc4309_req_ctx* @aead_request_ctx(%struct.aead_request* %10)
  store %struct.crypto_rfc4309_req_ctx* %11, %struct.crypto_rfc4309_req_ctx** %3, align 8
  %12 = load %struct.crypto_rfc4309_req_ctx*, %struct.crypto_rfc4309_req_ctx** %3, align 8
  %13 = getelementptr inbounds %struct.crypto_rfc4309_req_ctx, %struct.crypto_rfc4309_req_ctx* %12, i32 0, i32 2
  store %struct.aead_request* %13, %struct.aead_request** %4, align 8
  %14 = load %struct.aead_request*, %struct.aead_request** %2, align 8
  %15 = call %struct.crypto_aead* @crypto_aead_reqtfm(%struct.aead_request* %14)
  store %struct.crypto_aead* %15, %struct.crypto_aead** %5, align 8
  %16 = load %struct.crypto_aead*, %struct.crypto_aead** %5, align 8
  %17 = call %struct.crypto_rfc4309_ctx* @crypto_aead_ctx(%struct.crypto_aead* %16)
  store %struct.crypto_rfc4309_ctx* %17, %struct.crypto_rfc4309_ctx** %6, align 8
  %18 = load %struct.crypto_rfc4309_ctx*, %struct.crypto_rfc4309_ctx** %6, align 8
  %19 = getelementptr inbounds %struct.crypto_rfc4309_ctx, %struct.crypto_rfc4309_ctx* %18, i32 0, i32 1
  %20 = load %struct.crypto_aead*, %struct.crypto_aead** %19, align 8
  store %struct.crypto_aead* %20, %struct.crypto_aead** %7, align 8
  %21 = load %struct.aead_request*, %struct.aead_request** %4, align 8
  %22 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %21, i64 1
  %23 = bitcast %struct.aead_request* %22 to i32*
  %24 = load %struct.crypto_aead*, %struct.crypto_aead** %7, align 8
  %25 = call i32 @crypto_aead_reqsize(%struct.crypto_aead* %24)
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i32, i32* %23, i64 %26
  %28 = load %struct.crypto_aead*, %struct.crypto_aead** %7, align 8
  %29 = call i64 @crypto_aead_alignmask(%struct.crypto_aead* %28)
  %30 = add nsw i64 %29, 1
  %31 = call i32* @PTR_ALIGN(i32* %27, i64 %30)
  store i32* %31, i32** %9, align 8
  %32 = load i32*, i32** %9, align 8
  %33 = getelementptr inbounds i32, i32* %32, i64 0
  store i32 3, i32* %33, align 4
  %34 = load i32*, i32** %9, align 8
  %35 = getelementptr inbounds i32, i32* %34, i64 1
  %36 = load %struct.crypto_rfc4309_ctx*, %struct.crypto_rfc4309_ctx** %6, align 8
  %37 = getelementptr inbounds %struct.crypto_rfc4309_ctx, %struct.crypto_rfc4309_ctx* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = call i32 @memcpy(i32* %35, i32 %38, i32 3)
  %40 = load i32*, i32** %9, align 8
  %41 = getelementptr inbounds i32, i32* %40, i64 4
  %42 = load %struct.aead_request*, %struct.aead_request** %2, align 8
  %43 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %42, i32 0, i32 5
  %44 = load i32, i32* %43, align 8
  %45 = call i32 @memcpy(i32* %41, i32 %44, i32 8)
  %46 = load i32*, i32** %9, align 8
  %47 = getelementptr inbounds i32, i32* %46, i64 16
  %48 = load %struct.aead_request*, %struct.aead_request** %2, align 8
  %49 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load %struct.aead_request*, %struct.aead_request** %2, align 8
  %52 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %51, i32 0, i32 2
  %53 = load i64, i64* %52, align 8
  %54 = sub nsw i64 %53, 8
  %55 = call i32 @scatterwalk_map_and_copy(i32* %47, i64 %50, i32 0, i64 %54, i32 0)
  %56 = load %struct.crypto_rfc4309_req_ctx*, %struct.crypto_rfc4309_req_ctx** %3, align 8
  %57 = getelementptr inbounds %struct.crypto_rfc4309_req_ctx, %struct.crypto_rfc4309_req_ctx* %56, i32 0, i32 1
  %58 = load %struct.scatterlist*, %struct.scatterlist** %57, align 8
  %59 = call i32 @sg_init_table(%struct.scatterlist* %58, i32 3)
  %60 = load %struct.crypto_rfc4309_req_ctx*, %struct.crypto_rfc4309_req_ctx** %3, align 8
  %61 = getelementptr inbounds %struct.crypto_rfc4309_req_ctx, %struct.crypto_rfc4309_req_ctx* %60, i32 0, i32 1
  %62 = load %struct.scatterlist*, %struct.scatterlist** %61, align 8
  %63 = load i32*, i32** %9, align 8
  %64 = getelementptr inbounds i32, i32* %63, i64 16
  %65 = load %struct.aead_request*, %struct.aead_request** %2, align 8
  %66 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %65, i32 0, i32 2
  %67 = load i64, i64* %66, align 8
  %68 = sub nsw i64 %67, 8
  %69 = call i32 @sg_set_buf(%struct.scatterlist* %62, i32* %64, i64 %68)
  %70 = load %struct.crypto_rfc4309_req_ctx*, %struct.crypto_rfc4309_req_ctx** %3, align 8
  %71 = getelementptr inbounds %struct.crypto_rfc4309_req_ctx, %struct.crypto_rfc4309_req_ctx* %70, i32 0, i32 1
  %72 = load %struct.scatterlist*, %struct.scatterlist** %71, align 8
  %73 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %72, i64 1
  %74 = load %struct.aead_request*, %struct.aead_request** %2, align 8
  %75 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = load %struct.aead_request*, %struct.aead_request** %2, align 8
  %78 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %77, i32 0, i32 2
  %79 = load i64, i64* %78, align 8
  %80 = call %struct.scatterlist* @scatterwalk_ffwd(%struct.scatterlist* %73, i64 %76, i64 %79)
  store %struct.scatterlist* %80, %struct.scatterlist** %8, align 8
  %81 = load %struct.scatterlist*, %struct.scatterlist** %8, align 8
  %82 = load %struct.crypto_rfc4309_req_ctx*, %struct.crypto_rfc4309_req_ctx** %3, align 8
  %83 = getelementptr inbounds %struct.crypto_rfc4309_req_ctx, %struct.crypto_rfc4309_req_ctx* %82, i32 0, i32 1
  %84 = load %struct.scatterlist*, %struct.scatterlist** %83, align 8
  %85 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %84, i64 1
  %86 = icmp ne %struct.scatterlist* %81, %85
  br i1 %86, label %87, label %93

87:                                               ; preds = %1
  %88 = load %struct.crypto_rfc4309_req_ctx*, %struct.crypto_rfc4309_req_ctx** %3, align 8
  %89 = getelementptr inbounds %struct.crypto_rfc4309_req_ctx, %struct.crypto_rfc4309_req_ctx* %88, i32 0, i32 1
  %90 = load %struct.scatterlist*, %struct.scatterlist** %89, align 8
  %91 = load %struct.scatterlist*, %struct.scatterlist** %8, align 8
  %92 = call i32 @sg_chain(%struct.scatterlist* %90, i32 2, %struct.scatterlist* %91)
  br label %93

93:                                               ; preds = %87, %1
  %94 = load %struct.aead_request*, %struct.aead_request** %2, align 8
  %95 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = load %struct.aead_request*, %struct.aead_request** %2, align 8
  %98 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %97, i32 0, i32 1
  %99 = load i64, i64* %98, align 8
  %100 = icmp ne i64 %96, %99
  br i1 %100, label %101, label %140

101:                                              ; preds = %93
  %102 = load %struct.crypto_rfc4309_req_ctx*, %struct.crypto_rfc4309_req_ctx** %3, align 8
  %103 = getelementptr inbounds %struct.crypto_rfc4309_req_ctx, %struct.crypto_rfc4309_req_ctx* %102, i32 0, i32 0
  %104 = load %struct.scatterlist*, %struct.scatterlist** %103, align 8
  %105 = call i32 @sg_init_table(%struct.scatterlist* %104, i32 3)
  %106 = load %struct.crypto_rfc4309_req_ctx*, %struct.crypto_rfc4309_req_ctx** %3, align 8
  %107 = getelementptr inbounds %struct.crypto_rfc4309_req_ctx, %struct.crypto_rfc4309_req_ctx* %106, i32 0, i32 0
  %108 = load %struct.scatterlist*, %struct.scatterlist** %107, align 8
  %109 = load i32*, i32** %9, align 8
  %110 = getelementptr inbounds i32, i32* %109, i64 16
  %111 = load %struct.aead_request*, %struct.aead_request** %2, align 8
  %112 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %111, i32 0, i32 2
  %113 = load i64, i64* %112, align 8
  %114 = sub nsw i64 %113, 8
  %115 = call i32 @sg_set_buf(%struct.scatterlist* %108, i32* %110, i64 %114)
  %116 = load %struct.crypto_rfc4309_req_ctx*, %struct.crypto_rfc4309_req_ctx** %3, align 8
  %117 = getelementptr inbounds %struct.crypto_rfc4309_req_ctx, %struct.crypto_rfc4309_req_ctx* %116, i32 0, i32 0
  %118 = load %struct.scatterlist*, %struct.scatterlist** %117, align 8
  %119 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %118, i64 1
  %120 = load %struct.aead_request*, %struct.aead_request** %2, align 8
  %121 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %120, i32 0, i32 1
  %122 = load i64, i64* %121, align 8
  %123 = load %struct.aead_request*, %struct.aead_request** %2, align 8
  %124 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %123, i32 0, i32 2
  %125 = load i64, i64* %124, align 8
  %126 = call %struct.scatterlist* @scatterwalk_ffwd(%struct.scatterlist* %119, i64 %122, i64 %125)
  store %struct.scatterlist* %126, %struct.scatterlist** %8, align 8
  %127 = load %struct.scatterlist*, %struct.scatterlist** %8, align 8
  %128 = load %struct.crypto_rfc4309_req_ctx*, %struct.crypto_rfc4309_req_ctx** %3, align 8
  %129 = getelementptr inbounds %struct.crypto_rfc4309_req_ctx, %struct.crypto_rfc4309_req_ctx* %128, i32 0, i32 0
  %130 = load %struct.scatterlist*, %struct.scatterlist** %129, align 8
  %131 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %130, i64 1
  %132 = icmp ne %struct.scatterlist* %127, %131
  br i1 %132, label %133, label %139

133:                                              ; preds = %101
  %134 = load %struct.crypto_rfc4309_req_ctx*, %struct.crypto_rfc4309_req_ctx** %3, align 8
  %135 = getelementptr inbounds %struct.crypto_rfc4309_req_ctx, %struct.crypto_rfc4309_req_ctx* %134, i32 0, i32 0
  %136 = load %struct.scatterlist*, %struct.scatterlist** %135, align 8
  %137 = load %struct.scatterlist*, %struct.scatterlist** %8, align 8
  %138 = call i32 @sg_chain(%struct.scatterlist* %136, i32 2, %struct.scatterlist* %137)
  br label %139

139:                                              ; preds = %133, %101
  br label %140

140:                                              ; preds = %139, %93
  %141 = load %struct.aead_request*, %struct.aead_request** %4, align 8
  %142 = load %struct.crypto_aead*, %struct.crypto_aead** %7, align 8
  %143 = call i32 @aead_request_set_tfm(%struct.aead_request* %141, %struct.crypto_aead* %142)
  %144 = load %struct.aead_request*, %struct.aead_request** %4, align 8
  %145 = load %struct.aead_request*, %struct.aead_request** %2, align 8
  %146 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %145, i32 0, i32 4
  %147 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %146, i32 0, i32 2
  %148 = load i32, i32* %147, align 4
  %149 = load %struct.aead_request*, %struct.aead_request** %2, align 8
  %150 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %149, i32 0, i32 4
  %151 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %150, i32 0, i32 1
  %152 = load i32, i32* %151, align 4
  %153 = load %struct.aead_request*, %struct.aead_request** %2, align 8
  %154 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %153, i32 0, i32 4
  %155 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 4
  %157 = call i32 @aead_request_set_callback(%struct.aead_request* %144, i32 %148, i32 %152, i32 %156)
  %158 = load %struct.aead_request*, %struct.aead_request** %4, align 8
  %159 = load %struct.crypto_rfc4309_req_ctx*, %struct.crypto_rfc4309_req_ctx** %3, align 8
  %160 = getelementptr inbounds %struct.crypto_rfc4309_req_ctx, %struct.crypto_rfc4309_req_ctx* %159, i32 0, i32 1
  %161 = load %struct.scatterlist*, %struct.scatterlist** %160, align 8
  %162 = load %struct.aead_request*, %struct.aead_request** %2, align 8
  %163 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %162, i32 0, i32 0
  %164 = load i64, i64* %163, align 8
  %165 = load %struct.aead_request*, %struct.aead_request** %2, align 8
  %166 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %165, i32 0, i32 1
  %167 = load i64, i64* %166, align 8
  %168 = icmp eq i64 %164, %167
  br i1 %168, label %169, label %173

169:                                              ; preds = %140
  %170 = load %struct.crypto_rfc4309_req_ctx*, %struct.crypto_rfc4309_req_ctx** %3, align 8
  %171 = getelementptr inbounds %struct.crypto_rfc4309_req_ctx, %struct.crypto_rfc4309_req_ctx* %170, i32 0, i32 1
  %172 = load %struct.scatterlist*, %struct.scatterlist** %171, align 8
  br label %177

173:                                              ; preds = %140
  %174 = load %struct.crypto_rfc4309_req_ctx*, %struct.crypto_rfc4309_req_ctx** %3, align 8
  %175 = getelementptr inbounds %struct.crypto_rfc4309_req_ctx, %struct.crypto_rfc4309_req_ctx* %174, i32 0, i32 0
  %176 = load %struct.scatterlist*, %struct.scatterlist** %175, align 8
  br label %177

177:                                              ; preds = %173, %169
  %178 = phi %struct.scatterlist* [ %172, %169 ], [ %176, %173 ]
  %179 = load %struct.aead_request*, %struct.aead_request** %2, align 8
  %180 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %179, i32 0, i32 3
  %181 = load i32, i32* %180, align 8
  %182 = load i32*, i32** %9, align 8
  %183 = call i32 @aead_request_set_crypt(%struct.aead_request* %158, %struct.scatterlist* %161, %struct.scatterlist* %178, i32 %181, i32* %182)
  %184 = load %struct.aead_request*, %struct.aead_request** %4, align 8
  %185 = load %struct.aead_request*, %struct.aead_request** %2, align 8
  %186 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %185, i32 0, i32 2
  %187 = load i64, i64* %186, align 8
  %188 = sub nsw i64 %187, 8
  %189 = call i32 @aead_request_set_ad(%struct.aead_request* %184, i64 %188)
  %190 = load %struct.aead_request*, %struct.aead_request** %4, align 8
  ret %struct.aead_request* %190
}

declare dso_local %struct.crypto_rfc4309_req_ctx* @aead_request_ctx(%struct.aead_request*) #1

declare dso_local %struct.crypto_aead* @crypto_aead_reqtfm(%struct.aead_request*) #1

declare dso_local %struct.crypto_rfc4309_ctx* @crypto_aead_ctx(%struct.crypto_aead*) #1

declare dso_local i32* @PTR_ALIGN(i32*, i64) #1

declare dso_local i32 @crypto_aead_reqsize(%struct.crypto_aead*) #1

declare dso_local i64 @crypto_aead_alignmask(%struct.crypto_aead*) #1

declare dso_local i32 @memcpy(i32*, i32, i32) #1

declare dso_local i32 @scatterwalk_map_and_copy(i32*, i64, i32, i64, i32) #1

declare dso_local i32 @sg_init_table(%struct.scatterlist*, i32) #1

declare dso_local i32 @sg_set_buf(%struct.scatterlist*, i32*, i64) #1

declare dso_local %struct.scatterlist* @scatterwalk_ffwd(%struct.scatterlist*, i64, i64) #1

declare dso_local i32 @sg_chain(%struct.scatterlist*, i32, %struct.scatterlist*) #1

declare dso_local i32 @aead_request_set_tfm(%struct.aead_request*, %struct.crypto_aead*) #1

declare dso_local i32 @aead_request_set_callback(%struct.aead_request*, i32, i32, i32) #1

declare dso_local i32 @aead_request_set_crypt(%struct.aead_request*, %struct.scatterlist*, %struct.scatterlist*, i32, i32*) #1

declare dso_local i32 @aead_request_set_ad(%struct.aead_request*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
