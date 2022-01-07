; ModuleID = '/home/carl/AnghaBench/linux/crypto/extr_gcm.c_crypto_rfc4106_crypt.c'
source_filename = "/home/carl/AnghaBench/linux/crypto/extr_gcm.c_crypto_rfc4106_crypt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aead_request = type { i64, i64, i64, i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i32, i32 }
%struct.crypto_rfc4106_req_ctx = type { %struct.scatterlist*, %struct.scatterlist*, %struct.aead_request }
%struct.scatterlist = type { i32 }
%struct.crypto_aead = type { i32 }
%struct.crypto_rfc4106_ctx = type { i32, %struct.crypto_aead* }

@GCM_AES_IV_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.aead_request* (%struct.aead_request*)* @crypto_rfc4106_crypt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.aead_request* @crypto_rfc4106_crypt(%struct.aead_request* %0) #0 {
  %2 = alloca %struct.aead_request*, align 8
  %3 = alloca %struct.crypto_rfc4106_req_ctx*, align 8
  %4 = alloca %struct.crypto_aead*, align 8
  %5 = alloca %struct.crypto_rfc4106_ctx*, align 8
  %6 = alloca %struct.aead_request*, align 8
  %7 = alloca %struct.crypto_aead*, align 8
  %8 = alloca %struct.scatterlist*, align 8
  %9 = alloca i32*, align 8
  store %struct.aead_request* %0, %struct.aead_request** %2, align 8
  %10 = load %struct.aead_request*, %struct.aead_request** %2, align 8
  %11 = call %struct.crypto_rfc4106_req_ctx* @aead_request_ctx(%struct.aead_request* %10)
  store %struct.crypto_rfc4106_req_ctx* %11, %struct.crypto_rfc4106_req_ctx** %3, align 8
  %12 = load %struct.aead_request*, %struct.aead_request** %2, align 8
  %13 = call %struct.crypto_aead* @crypto_aead_reqtfm(%struct.aead_request* %12)
  store %struct.crypto_aead* %13, %struct.crypto_aead** %4, align 8
  %14 = load %struct.crypto_aead*, %struct.crypto_aead** %4, align 8
  %15 = call %struct.crypto_rfc4106_ctx* @crypto_aead_ctx(%struct.crypto_aead* %14)
  store %struct.crypto_rfc4106_ctx* %15, %struct.crypto_rfc4106_ctx** %5, align 8
  %16 = load %struct.crypto_rfc4106_req_ctx*, %struct.crypto_rfc4106_req_ctx** %3, align 8
  %17 = getelementptr inbounds %struct.crypto_rfc4106_req_ctx, %struct.crypto_rfc4106_req_ctx* %16, i32 0, i32 2
  store %struct.aead_request* %17, %struct.aead_request** %6, align 8
  %18 = load %struct.crypto_rfc4106_ctx*, %struct.crypto_rfc4106_ctx** %5, align 8
  %19 = getelementptr inbounds %struct.crypto_rfc4106_ctx, %struct.crypto_rfc4106_ctx* %18, i32 0, i32 1
  %20 = load %struct.crypto_aead*, %struct.crypto_aead** %19, align 8
  store %struct.crypto_aead* %20, %struct.crypto_aead** %7, align 8
  %21 = load %struct.aead_request*, %struct.aead_request** %6, align 8
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
  %33 = load i32, i32* @GCM_AES_IV_SIZE, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i32, i32* %32, i64 %34
  %36 = load %struct.aead_request*, %struct.aead_request** %2, align 8
  %37 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load %struct.aead_request*, %struct.aead_request** %2, align 8
  %40 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %39, i32 0, i32 2
  %41 = load i64, i64* %40, align 8
  %42 = sub nsw i64 %41, 8
  %43 = call i32 @scatterwalk_map_and_copy(i32* %35, i64 %38, i32 0, i64 %42, i32 0)
  %44 = load i32*, i32** %9, align 8
  %45 = load %struct.crypto_rfc4106_ctx*, %struct.crypto_rfc4106_ctx** %5, align 8
  %46 = getelementptr inbounds %struct.crypto_rfc4106_ctx, %struct.crypto_rfc4106_ctx* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = call i32 @memcpy(i32* %44, i32 %47, i32 4)
  %49 = load i32*, i32** %9, align 8
  %50 = getelementptr inbounds i32, i32* %49, i64 4
  %51 = load %struct.aead_request*, %struct.aead_request** %2, align 8
  %52 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %51, i32 0, i32 5
  %53 = load i32, i32* %52, align 8
  %54 = call i32 @memcpy(i32* %50, i32 %53, i32 8)
  %55 = load %struct.crypto_rfc4106_req_ctx*, %struct.crypto_rfc4106_req_ctx** %3, align 8
  %56 = getelementptr inbounds %struct.crypto_rfc4106_req_ctx, %struct.crypto_rfc4106_req_ctx* %55, i32 0, i32 1
  %57 = load %struct.scatterlist*, %struct.scatterlist** %56, align 8
  %58 = call i32 @sg_init_table(%struct.scatterlist* %57, i32 3)
  %59 = load %struct.crypto_rfc4106_req_ctx*, %struct.crypto_rfc4106_req_ctx** %3, align 8
  %60 = getelementptr inbounds %struct.crypto_rfc4106_req_ctx, %struct.crypto_rfc4106_req_ctx* %59, i32 0, i32 1
  %61 = load %struct.scatterlist*, %struct.scatterlist** %60, align 8
  %62 = load i32*, i32** %9, align 8
  %63 = load i32, i32* @GCM_AES_IV_SIZE, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i32, i32* %62, i64 %64
  %66 = load %struct.aead_request*, %struct.aead_request** %2, align 8
  %67 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %66, i32 0, i32 2
  %68 = load i64, i64* %67, align 8
  %69 = sub nsw i64 %68, 8
  %70 = call i32 @sg_set_buf(%struct.scatterlist* %61, i32* %65, i64 %69)
  %71 = load %struct.crypto_rfc4106_req_ctx*, %struct.crypto_rfc4106_req_ctx** %3, align 8
  %72 = getelementptr inbounds %struct.crypto_rfc4106_req_ctx, %struct.crypto_rfc4106_req_ctx* %71, i32 0, i32 1
  %73 = load %struct.scatterlist*, %struct.scatterlist** %72, align 8
  %74 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %73, i64 1
  %75 = load %struct.aead_request*, %struct.aead_request** %2, align 8
  %76 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = load %struct.aead_request*, %struct.aead_request** %2, align 8
  %79 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %78, i32 0, i32 2
  %80 = load i64, i64* %79, align 8
  %81 = call %struct.scatterlist* @scatterwalk_ffwd(%struct.scatterlist* %74, i64 %77, i64 %80)
  store %struct.scatterlist* %81, %struct.scatterlist** %8, align 8
  %82 = load %struct.scatterlist*, %struct.scatterlist** %8, align 8
  %83 = load %struct.crypto_rfc4106_req_ctx*, %struct.crypto_rfc4106_req_ctx** %3, align 8
  %84 = getelementptr inbounds %struct.crypto_rfc4106_req_ctx, %struct.crypto_rfc4106_req_ctx* %83, i32 0, i32 1
  %85 = load %struct.scatterlist*, %struct.scatterlist** %84, align 8
  %86 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %85, i64 1
  %87 = icmp ne %struct.scatterlist* %82, %86
  br i1 %87, label %88, label %94

88:                                               ; preds = %1
  %89 = load %struct.crypto_rfc4106_req_ctx*, %struct.crypto_rfc4106_req_ctx** %3, align 8
  %90 = getelementptr inbounds %struct.crypto_rfc4106_req_ctx, %struct.crypto_rfc4106_req_ctx* %89, i32 0, i32 1
  %91 = load %struct.scatterlist*, %struct.scatterlist** %90, align 8
  %92 = load %struct.scatterlist*, %struct.scatterlist** %8, align 8
  %93 = call i32 @sg_chain(%struct.scatterlist* %91, i32 2, %struct.scatterlist* %92)
  br label %94

94:                                               ; preds = %88, %1
  %95 = load %struct.aead_request*, %struct.aead_request** %2, align 8
  %96 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = load %struct.aead_request*, %struct.aead_request** %2, align 8
  %99 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %98, i32 0, i32 1
  %100 = load i64, i64* %99, align 8
  %101 = icmp ne i64 %97, %100
  br i1 %101, label %102, label %143

102:                                              ; preds = %94
  %103 = load %struct.crypto_rfc4106_req_ctx*, %struct.crypto_rfc4106_req_ctx** %3, align 8
  %104 = getelementptr inbounds %struct.crypto_rfc4106_req_ctx, %struct.crypto_rfc4106_req_ctx* %103, i32 0, i32 0
  %105 = load %struct.scatterlist*, %struct.scatterlist** %104, align 8
  %106 = call i32 @sg_init_table(%struct.scatterlist* %105, i32 3)
  %107 = load %struct.crypto_rfc4106_req_ctx*, %struct.crypto_rfc4106_req_ctx** %3, align 8
  %108 = getelementptr inbounds %struct.crypto_rfc4106_req_ctx, %struct.crypto_rfc4106_req_ctx* %107, i32 0, i32 0
  %109 = load %struct.scatterlist*, %struct.scatterlist** %108, align 8
  %110 = load i32*, i32** %9, align 8
  %111 = load i32, i32* @GCM_AES_IV_SIZE, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds i32, i32* %110, i64 %112
  %114 = load %struct.aead_request*, %struct.aead_request** %2, align 8
  %115 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %114, i32 0, i32 2
  %116 = load i64, i64* %115, align 8
  %117 = sub nsw i64 %116, 8
  %118 = call i32 @sg_set_buf(%struct.scatterlist* %109, i32* %113, i64 %117)
  %119 = load %struct.crypto_rfc4106_req_ctx*, %struct.crypto_rfc4106_req_ctx** %3, align 8
  %120 = getelementptr inbounds %struct.crypto_rfc4106_req_ctx, %struct.crypto_rfc4106_req_ctx* %119, i32 0, i32 0
  %121 = load %struct.scatterlist*, %struct.scatterlist** %120, align 8
  %122 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %121, i64 1
  %123 = load %struct.aead_request*, %struct.aead_request** %2, align 8
  %124 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %123, i32 0, i32 1
  %125 = load i64, i64* %124, align 8
  %126 = load %struct.aead_request*, %struct.aead_request** %2, align 8
  %127 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %126, i32 0, i32 2
  %128 = load i64, i64* %127, align 8
  %129 = call %struct.scatterlist* @scatterwalk_ffwd(%struct.scatterlist* %122, i64 %125, i64 %128)
  store %struct.scatterlist* %129, %struct.scatterlist** %8, align 8
  %130 = load %struct.scatterlist*, %struct.scatterlist** %8, align 8
  %131 = load %struct.crypto_rfc4106_req_ctx*, %struct.crypto_rfc4106_req_ctx** %3, align 8
  %132 = getelementptr inbounds %struct.crypto_rfc4106_req_ctx, %struct.crypto_rfc4106_req_ctx* %131, i32 0, i32 0
  %133 = load %struct.scatterlist*, %struct.scatterlist** %132, align 8
  %134 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %133, i64 1
  %135 = icmp ne %struct.scatterlist* %130, %134
  br i1 %135, label %136, label %142

136:                                              ; preds = %102
  %137 = load %struct.crypto_rfc4106_req_ctx*, %struct.crypto_rfc4106_req_ctx** %3, align 8
  %138 = getelementptr inbounds %struct.crypto_rfc4106_req_ctx, %struct.crypto_rfc4106_req_ctx* %137, i32 0, i32 0
  %139 = load %struct.scatterlist*, %struct.scatterlist** %138, align 8
  %140 = load %struct.scatterlist*, %struct.scatterlist** %8, align 8
  %141 = call i32 @sg_chain(%struct.scatterlist* %139, i32 2, %struct.scatterlist* %140)
  br label %142

142:                                              ; preds = %136, %102
  br label %143

143:                                              ; preds = %142, %94
  %144 = load %struct.aead_request*, %struct.aead_request** %6, align 8
  %145 = load %struct.crypto_aead*, %struct.crypto_aead** %7, align 8
  %146 = call i32 @aead_request_set_tfm(%struct.aead_request* %144, %struct.crypto_aead* %145)
  %147 = load %struct.aead_request*, %struct.aead_request** %6, align 8
  %148 = load %struct.aead_request*, %struct.aead_request** %2, align 8
  %149 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %148, i32 0, i32 4
  %150 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %149, i32 0, i32 2
  %151 = load i32, i32* %150, align 4
  %152 = load %struct.aead_request*, %struct.aead_request** %2, align 8
  %153 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %152, i32 0, i32 4
  %154 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %153, i32 0, i32 1
  %155 = load i32, i32* %154, align 4
  %156 = load %struct.aead_request*, %struct.aead_request** %2, align 8
  %157 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %156, i32 0, i32 4
  %158 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %157, i32 0, i32 0
  %159 = load i32, i32* %158, align 4
  %160 = call i32 @aead_request_set_callback(%struct.aead_request* %147, i32 %151, i32 %155, i32 %159)
  %161 = load %struct.aead_request*, %struct.aead_request** %6, align 8
  %162 = load %struct.crypto_rfc4106_req_ctx*, %struct.crypto_rfc4106_req_ctx** %3, align 8
  %163 = getelementptr inbounds %struct.crypto_rfc4106_req_ctx, %struct.crypto_rfc4106_req_ctx* %162, i32 0, i32 1
  %164 = load %struct.scatterlist*, %struct.scatterlist** %163, align 8
  %165 = load %struct.aead_request*, %struct.aead_request** %2, align 8
  %166 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %165, i32 0, i32 0
  %167 = load i64, i64* %166, align 8
  %168 = load %struct.aead_request*, %struct.aead_request** %2, align 8
  %169 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %168, i32 0, i32 1
  %170 = load i64, i64* %169, align 8
  %171 = icmp eq i64 %167, %170
  br i1 %171, label %172, label %176

172:                                              ; preds = %143
  %173 = load %struct.crypto_rfc4106_req_ctx*, %struct.crypto_rfc4106_req_ctx** %3, align 8
  %174 = getelementptr inbounds %struct.crypto_rfc4106_req_ctx, %struct.crypto_rfc4106_req_ctx* %173, i32 0, i32 1
  %175 = load %struct.scatterlist*, %struct.scatterlist** %174, align 8
  br label %180

176:                                              ; preds = %143
  %177 = load %struct.crypto_rfc4106_req_ctx*, %struct.crypto_rfc4106_req_ctx** %3, align 8
  %178 = getelementptr inbounds %struct.crypto_rfc4106_req_ctx, %struct.crypto_rfc4106_req_ctx* %177, i32 0, i32 0
  %179 = load %struct.scatterlist*, %struct.scatterlist** %178, align 8
  br label %180

180:                                              ; preds = %176, %172
  %181 = phi %struct.scatterlist* [ %175, %172 ], [ %179, %176 ]
  %182 = load %struct.aead_request*, %struct.aead_request** %2, align 8
  %183 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %182, i32 0, i32 3
  %184 = load i32, i32* %183, align 8
  %185 = load i32*, i32** %9, align 8
  %186 = call i32 @aead_request_set_crypt(%struct.aead_request* %161, %struct.scatterlist* %164, %struct.scatterlist* %181, i32 %184, i32* %185)
  %187 = load %struct.aead_request*, %struct.aead_request** %6, align 8
  %188 = load %struct.aead_request*, %struct.aead_request** %2, align 8
  %189 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %188, i32 0, i32 2
  %190 = load i64, i64* %189, align 8
  %191 = sub nsw i64 %190, 8
  %192 = call i32 @aead_request_set_ad(%struct.aead_request* %187, i64 %191)
  %193 = load %struct.aead_request*, %struct.aead_request** %6, align 8
  ret %struct.aead_request* %193
}

declare dso_local %struct.crypto_rfc4106_req_ctx* @aead_request_ctx(%struct.aead_request*) #1

declare dso_local %struct.crypto_aead* @crypto_aead_reqtfm(%struct.aead_request*) #1

declare dso_local %struct.crypto_rfc4106_ctx* @crypto_aead_ctx(%struct.crypto_aead*) #1

declare dso_local i32* @PTR_ALIGN(i32*, i64) #1

declare dso_local i32 @crypto_aead_reqsize(%struct.crypto_aead*) #1

declare dso_local i64 @crypto_aead_alignmask(%struct.crypto_aead*) #1

declare dso_local i32 @scatterwalk_map_and_copy(i32*, i64, i32, i64, i32) #1

declare dso_local i32 @memcpy(i32*, i32, i32) #1

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
