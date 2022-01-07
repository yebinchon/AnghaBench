; ModuleID = '/home/carl/AnghaBench/linux/crypto/extr_gcm.c_crypto_rfc4543_crypt.c'
source_filename = "/home/carl/AnghaBench/linux/crypto/extr_gcm.c_crypto_rfc4543_crypt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aead_request = type { i64, i64, i32, i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i32, i32 }
%struct.crypto_aead = type { i32 }
%struct.crypto_rfc4543_ctx = type { i32, i32 }
%struct.crypto_rfc4543_req_ctx = type { %struct.aead_request }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.aead_request*, i32)* @crypto_rfc4543_crypt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @crypto_rfc4543_crypt(%struct.aead_request* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.aead_request*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.crypto_aead*, align 8
  %7 = alloca %struct.crypto_rfc4543_ctx*, align 8
  %8 = alloca %struct.crypto_rfc4543_req_ctx*, align 8
  %9 = alloca %struct.aead_request*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  store %struct.aead_request* %0, %struct.aead_request** %4, align 8
  store i32 %1, i32* %5, align 4
  %13 = load %struct.aead_request*, %struct.aead_request** %4, align 8
  %14 = call %struct.crypto_aead* @crypto_aead_reqtfm(%struct.aead_request* %13)
  store %struct.crypto_aead* %14, %struct.crypto_aead** %6, align 8
  %15 = load %struct.crypto_aead*, %struct.crypto_aead** %6, align 8
  %16 = call %struct.crypto_rfc4543_ctx* @crypto_aead_ctx(%struct.crypto_aead* %15)
  store %struct.crypto_rfc4543_ctx* %16, %struct.crypto_rfc4543_ctx** %7, align 8
  %17 = load %struct.aead_request*, %struct.aead_request** %4, align 8
  %18 = call %struct.crypto_rfc4543_req_ctx* @aead_request_ctx(%struct.aead_request* %17)
  store %struct.crypto_rfc4543_req_ctx* %18, %struct.crypto_rfc4543_req_ctx** %8, align 8
  %19 = load %struct.crypto_rfc4543_req_ctx*, %struct.crypto_rfc4543_req_ctx** %8, align 8
  %20 = getelementptr inbounds %struct.crypto_rfc4543_req_ctx, %struct.crypto_rfc4543_req_ctx* %19, i32 0, i32 0
  store %struct.aead_request* %20, %struct.aead_request** %9, align 8
  %21 = load %struct.crypto_aead*, %struct.crypto_aead** %6, align 8
  %22 = call i32 @crypto_aead_authsize(%struct.crypto_aead* %21)
  store i32 %22, i32* %10, align 4
  %23 = load %struct.crypto_rfc4543_req_ctx*, %struct.crypto_rfc4543_req_ctx** %8, align 8
  %24 = getelementptr inbounds %struct.crypto_rfc4543_req_ctx, %struct.crypto_rfc4543_req_ctx* %23, i64 1
  %25 = bitcast %struct.crypto_rfc4543_req_ctx* %24 to i32*
  %26 = load %struct.crypto_rfc4543_ctx*, %struct.crypto_rfc4543_ctx** %7, align 8
  %27 = getelementptr inbounds %struct.crypto_rfc4543_ctx, %struct.crypto_rfc4543_ctx* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @crypto_aead_reqsize(i32 %28)
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i32, i32* %25, i64 %30
  %32 = load %struct.crypto_rfc4543_ctx*, %struct.crypto_rfc4543_ctx** %7, align 8
  %33 = getelementptr inbounds %struct.crypto_rfc4543_ctx, %struct.crypto_rfc4543_ctx* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i64 @crypto_aead_alignmask(i32 %34)
  %36 = add nsw i64 %35, 1
  %37 = call i32* @PTR_ALIGN(i32* %31, i64 %36)
  store i32* %37, i32** %11, align 8
  %38 = load %struct.aead_request*, %struct.aead_request** %4, align 8
  %39 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %38, i32 0, i32 3
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.aead_request*, %struct.aead_request** %4, align 8
  %42 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 8
  %44 = icmp ne i32 %40, %43
  br i1 %44, label %45, label %54

45:                                               ; preds = %2
  %46 = load %struct.aead_request*, %struct.aead_request** %4, align 8
  %47 = load i32, i32* %5, align 4
  %48 = call i32 @crypto_rfc4543_copy_src_to_dst(%struct.aead_request* %46, i32 %47)
  store i32 %48, i32* %12, align 4
  %49 = load i32, i32* %12, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %45
  %52 = load i32, i32* %12, align 4
  store i32 %52, i32* %3, align 4
  br label %124

53:                                               ; preds = %45
  br label %54

54:                                               ; preds = %53, %2
  %55 = load i32*, i32** %11, align 8
  %56 = load %struct.crypto_rfc4543_ctx*, %struct.crypto_rfc4543_ctx** %7, align 8
  %57 = getelementptr inbounds %struct.crypto_rfc4543_ctx, %struct.crypto_rfc4543_ctx* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @memcpy(i32* %55, i32 %58, i32 4)
  %60 = load i32*, i32** %11, align 8
  %61 = getelementptr inbounds i32, i32* %60, i64 4
  %62 = load %struct.aead_request*, %struct.aead_request** %4, align 8
  %63 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %62, i32 0, i32 5
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @memcpy(i32* %61, i32 %64, i32 8)
  %66 = load %struct.aead_request*, %struct.aead_request** %9, align 8
  %67 = load %struct.crypto_rfc4543_ctx*, %struct.crypto_rfc4543_ctx** %7, align 8
  %68 = getelementptr inbounds %struct.crypto_rfc4543_ctx, %struct.crypto_rfc4543_ctx* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @aead_request_set_tfm(%struct.aead_request* %66, i32 %69)
  %71 = load %struct.aead_request*, %struct.aead_request** %9, align 8
  %72 = load %struct.aead_request*, %struct.aead_request** %4, align 8
  %73 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %72, i32 0, i32 4
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i32 0, i32 2
  %75 = load i32, i32* %74, align 8
  %76 = load %struct.aead_request*, %struct.aead_request** %4, align 8
  %77 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %76, i32 0, i32 4
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.aead_request*, %struct.aead_request** %4, align 8
  %81 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %80, i32 0, i32 4
  %82 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = call i32 @aead_request_set_callback(%struct.aead_request* %71, i32 %75, i32 %79, i32 %83)
  %85 = load %struct.aead_request*, %struct.aead_request** %9, align 8
  %86 = load %struct.aead_request*, %struct.aead_request** %4, align 8
  %87 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %86, i32 0, i32 3
  %88 = load i32, i32* %87, align 4
  %89 = load %struct.aead_request*, %struct.aead_request** %4, align 8
  %90 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %89, i32 0, i32 2
  %91 = load i32, i32* %90, align 8
  %92 = load i32, i32* %5, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %95

94:                                               ; preds = %54
  br label %97

95:                                               ; preds = %54
  %96 = load i32, i32* %10, align 4
  br label %97

97:                                               ; preds = %95, %94
  %98 = phi i32 [ 0, %94 ], [ %96, %95 ]
  %99 = load i32*, i32** %11, align 8
  %100 = call i32 @aead_request_set_crypt(%struct.aead_request* %85, i32 %88, i32 %91, i32 %98, i32* %99)
  %101 = load %struct.aead_request*, %struct.aead_request** %9, align 8
  %102 = load %struct.aead_request*, %struct.aead_request** %4, align 8
  %103 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %102, i32 0, i32 1
  %104 = load i64, i64* %103, align 8
  %105 = load %struct.aead_request*, %struct.aead_request** %4, align 8
  %106 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %105, i32 0, i32 0
  %107 = load i64, i64* %106, align 8
  %108 = add nsw i64 %104, %107
  %109 = load %struct.aead_request*, %struct.aead_request** %9, align 8
  %110 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %109, i32 0, i32 0
  %111 = load i64, i64* %110, align 8
  %112 = sub nsw i64 %108, %111
  %113 = call i32 @aead_request_set_ad(%struct.aead_request* %101, i64 %112)
  %114 = load i32, i32* %5, align 4
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %119

116:                                              ; preds = %97
  %117 = load %struct.aead_request*, %struct.aead_request** %9, align 8
  %118 = call i32 @crypto_aead_encrypt(%struct.aead_request* %117)
  br label %122

119:                                              ; preds = %97
  %120 = load %struct.aead_request*, %struct.aead_request** %9, align 8
  %121 = call i32 @crypto_aead_decrypt(%struct.aead_request* %120)
  br label %122

122:                                              ; preds = %119, %116
  %123 = phi i32 [ %118, %116 ], [ %121, %119 ]
  store i32 %123, i32* %3, align 4
  br label %124

124:                                              ; preds = %122, %51
  %125 = load i32, i32* %3, align 4
  ret i32 %125
}

declare dso_local %struct.crypto_aead* @crypto_aead_reqtfm(%struct.aead_request*) #1

declare dso_local %struct.crypto_rfc4543_ctx* @crypto_aead_ctx(%struct.crypto_aead*) #1

declare dso_local %struct.crypto_rfc4543_req_ctx* @aead_request_ctx(%struct.aead_request*) #1

declare dso_local i32 @crypto_aead_authsize(%struct.crypto_aead*) #1

declare dso_local i32* @PTR_ALIGN(i32*, i64) #1

declare dso_local i32 @crypto_aead_reqsize(i32) #1

declare dso_local i64 @crypto_aead_alignmask(i32) #1

declare dso_local i32 @crypto_rfc4543_copy_src_to_dst(%struct.aead_request*, i32) #1

declare dso_local i32 @memcpy(i32*, i32, i32) #1

declare dso_local i32 @aead_request_set_tfm(%struct.aead_request*, i32) #1

declare dso_local i32 @aead_request_set_callback(%struct.aead_request*, i32, i32, i32) #1

declare dso_local i32 @aead_request_set_crypt(%struct.aead_request*, i32, i32, i32, i32*) #1

declare dso_local i32 @aead_request_set_ad(%struct.aead_request*, i64) #1

declare dso_local i32 @crypto_aead_encrypt(%struct.aead_request*) #1

declare dso_local i32 @crypto_aead_decrypt(%struct.aead_request*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
