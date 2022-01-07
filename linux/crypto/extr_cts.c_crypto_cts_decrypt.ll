; ModuleID = '/home/carl/AnghaBench/linux/crypto/extr_cts.c_crypto_cts_decrypt.c'
source_filename = "/home/carl/AnghaBench/linux/crypto/extr_cts.c_crypto_cts_decrypt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.skcipher_request = type { i32, i32, i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, %struct.skcipher_request*, i32 }
%struct.crypto_skcipher = type { i32 }
%struct.crypto_cts_reqctx = type { i32, %struct.skcipher_request }
%struct.crypto_cts_ctx = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@crypto_cts_decrypt_done = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.skcipher_request*)* @crypto_cts_decrypt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @crypto_cts_decrypt(%struct.skcipher_request* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.skcipher_request*, align 8
  %4 = alloca %struct.crypto_skcipher*, align 8
  %5 = alloca %struct.crypto_cts_reqctx*, align 8
  %6 = alloca %struct.crypto_cts_ctx*, align 8
  %7 = alloca %struct.skcipher_request*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  store %struct.skcipher_request* %0, %struct.skcipher_request** %3, align 8
  %12 = load %struct.skcipher_request*, %struct.skcipher_request** %3, align 8
  %13 = call %struct.crypto_skcipher* @crypto_skcipher_reqtfm(%struct.skcipher_request* %12)
  store %struct.crypto_skcipher* %13, %struct.crypto_skcipher** %4, align 8
  %14 = load %struct.skcipher_request*, %struct.skcipher_request** %3, align 8
  %15 = call %struct.crypto_cts_reqctx* @skcipher_request_ctx(%struct.skcipher_request* %14)
  store %struct.crypto_cts_reqctx* %15, %struct.crypto_cts_reqctx** %5, align 8
  %16 = load %struct.crypto_skcipher*, %struct.crypto_skcipher** %4, align 8
  %17 = call %struct.crypto_cts_ctx* @crypto_skcipher_ctx(%struct.crypto_skcipher* %16)
  store %struct.crypto_cts_ctx* %17, %struct.crypto_cts_ctx** %6, align 8
  %18 = load %struct.crypto_cts_reqctx*, %struct.crypto_cts_reqctx** %5, align 8
  %19 = getelementptr inbounds %struct.crypto_cts_reqctx, %struct.crypto_cts_reqctx* %18, i32 0, i32 1
  store %struct.skcipher_request* %19, %struct.skcipher_request** %7, align 8
  %20 = load %struct.crypto_skcipher*, %struct.crypto_skcipher** %4, align 8
  %21 = call i32 @crypto_skcipher_blocksize(%struct.crypto_skcipher* %20)
  store i32 %21, i32* %8, align 4
  %22 = load %struct.skcipher_request*, %struct.skcipher_request** %3, align 8
  %23 = getelementptr inbounds %struct.skcipher_request, %struct.skcipher_request* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  store i32 %24, i32* %9, align 4
  %25 = load %struct.skcipher_request*, %struct.skcipher_request** %7, align 8
  %26 = load %struct.crypto_cts_ctx*, %struct.crypto_cts_ctx** %6, align 8
  %27 = getelementptr inbounds %struct.crypto_cts_ctx, %struct.crypto_cts_ctx* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @skcipher_request_set_tfm(%struct.skcipher_request* %25, i32 %28)
  %30 = load i32, i32* %9, align 4
  %31 = load i32, i32* %8, align 4
  %32 = icmp ult i32 %30, %31
  br i1 %32, label %33, label %36

33:                                               ; preds = %1
  %34 = load i32, i32* @EINVAL, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %2, align 4
  br label %130

36:                                               ; preds = %1
  %37 = load i32, i32* %9, align 4
  %38 = load i32, i32* %8, align 4
  %39 = icmp eq i32 %37, %38
  br i1 %39, label %40, label %69

40:                                               ; preds = %36
  %41 = load %struct.skcipher_request*, %struct.skcipher_request** %7, align 8
  %42 = load %struct.skcipher_request*, %struct.skcipher_request** %3, align 8
  %43 = getelementptr inbounds %struct.skcipher_request, %struct.skcipher_request* %42, i32 0, i32 4
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = load %struct.skcipher_request*, %struct.skcipher_request** %3, align 8
  %47 = getelementptr inbounds %struct.skcipher_request, %struct.skcipher_request* %46, i32 0, i32 4
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 8
  %50 = load %struct.skcipher_request*, %struct.skcipher_request** %3, align 8
  %51 = getelementptr inbounds %struct.skcipher_request, %struct.skcipher_request* %50, i32 0, i32 4
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 1
  %53 = load %struct.skcipher_request*, %struct.skcipher_request** %52, align 8
  %54 = call i32 @skcipher_request_set_callback(%struct.skcipher_request* %41, i32 %45, i32 %49, %struct.skcipher_request* %53)
  %55 = load %struct.skcipher_request*, %struct.skcipher_request** %7, align 8
  %56 = load %struct.skcipher_request*, %struct.skcipher_request** %3, align 8
  %57 = getelementptr inbounds %struct.skcipher_request, %struct.skcipher_request* %56, i32 0, i32 3
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.skcipher_request*, %struct.skcipher_request** %3, align 8
  %60 = getelementptr inbounds %struct.skcipher_request, %struct.skcipher_request* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 8
  %62 = load i32, i32* %9, align 4
  %63 = load %struct.skcipher_request*, %struct.skcipher_request** %3, align 8
  %64 = getelementptr inbounds %struct.skcipher_request, %struct.skcipher_request* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @skcipher_request_set_crypt(%struct.skcipher_request* %55, i32 %58, i32 %61, i32 %62, i32 %65)
  %67 = load %struct.skcipher_request*, %struct.skcipher_request** %7, align 8
  %68 = call i32 @crypto_skcipher_decrypt(%struct.skcipher_request* %67)
  store i32 %68, i32* %2, align 4
  br label %130

69:                                               ; preds = %36
  %70 = load %struct.skcipher_request*, %struct.skcipher_request** %7, align 8
  %71 = load %struct.skcipher_request*, %struct.skcipher_request** %3, align 8
  %72 = getelementptr inbounds %struct.skcipher_request, %struct.skcipher_request* %71, i32 0, i32 4
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = load i32, i32* @crypto_cts_decrypt_done, align 4
  %76 = load %struct.skcipher_request*, %struct.skcipher_request** %3, align 8
  %77 = call i32 @skcipher_request_set_callback(%struct.skcipher_request* %70, i32 %74, i32 %75, %struct.skcipher_request* %76)
  %78 = load %struct.skcipher_request*, %struct.skcipher_request** %3, align 8
  %79 = call i32* @crypto_cts_reqctx_space(%struct.skcipher_request* %78)
  store i32* %79, i32** %11, align 8
  %80 = load i32, i32* %9, align 4
  %81 = sub i32 %80, 1
  %82 = load i32, i32* %8, align 4
  %83 = call i32 @rounddown(i32 %81, i32 %82)
  store i32 %83, i32* %10, align 4
  %84 = load i32, i32* %10, align 4
  %85 = load %struct.crypto_cts_reqctx*, %struct.crypto_cts_reqctx** %5, align 8
  %86 = getelementptr inbounds %struct.crypto_cts_reqctx, %struct.crypto_cts_reqctx* %85, i32 0, i32 0
  store i32 %84, i32* %86, align 8
  %87 = load i32, i32* %10, align 4
  %88 = load i32, i32* %8, align 4
  %89 = icmp ule i32 %87, %88
  br i1 %89, label %90, label %97

90:                                               ; preds = %69
  %91 = load i32*, i32** %11, align 8
  %92 = load %struct.skcipher_request*, %struct.skcipher_request** %3, align 8
  %93 = getelementptr inbounds %struct.skcipher_request, %struct.skcipher_request* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = load i32, i32* %8, align 4
  %96 = call i32 @memcpy(i32* %91, i32 %94, i32 %95)
  br label %108

97:                                               ; preds = %69
  %98 = load i32*, i32** %11, align 8
  %99 = load %struct.skcipher_request*, %struct.skcipher_request** %3, align 8
  %100 = getelementptr inbounds %struct.skcipher_request, %struct.skcipher_request* %99, i32 0, i32 3
  %101 = load i32, i32* %100, align 4
  %102 = load i32, i32* %10, align 4
  %103 = load i32, i32* %8, align 4
  %104 = mul nsw i32 2, %103
  %105 = sub i32 %102, %104
  %106 = load i32, i32* %8, align 4
  %107 = call i32 @scatterwalk_map_and_copy(i32* %98, i32 %101, i32 %105, i32 %106, i32 0)
  br label %108

108:                                              ; preds = %97, %90
  %109 = load %struct.skcipher_request*, %struct.skcipher_request** %7, align 8
  %110 = load %struct.skcipher_request*, %struct.skcipher_request** %3, align 8
  %111 = getelementptr inbounds %struct.skcipher_request, %struct.skcipher_request* %110, i32 0, i32 3
  %112 = load i32, i32* %111, align 4
  %113 = load %struct.skcipher_request*, %struct.skcipher_request** %3, align 8
  %114 = getelementptr inbounds %struct.skcipher_request, %struct.skcipher_request* %113, i32 0, i32 2
  %115 = load i32, i32* %114, align 8
  %116 = load i32, i32* %10, align 4
  %117 = load %struct.skcipher_request*, %struct.skcipher_request** %3, align 8
  %118 = getelementptr inbounds %struct.skcipher_request, %struct.skcipher_request* %117, i32 0, i32 1
  %119 = load i32, i32* %118, align 4
  %120 = call i32 @skcipher_request_set_crypt(%struct.skcipher_request* %109, i32 %112, i32 %115, i32 %116, i32 %119)
  %121 = load %struct.skcipher_request*, %struct.skcipher_request** %7, align 8
  %122 = call i32 @crypto_skcipher_decrypt(%struct.skcipher_request* %121)
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %125

124:                                              ; preds = %108
  br label %128

125:                                              ; preds = %108
  %126 = load %struct.skcipher_request*, %struct.skcipher_request** %3, align 8
  %127 = call i32 @cts_cbc_decrypt(%struct.skcipher_request* %126)
  br label %128

128:                                              ; preds = %125, %124
  %129 = phi i32 [ %122, %124 ], [ %127, %125 ]
  store i32 %129, i32* %2, align 4
  br label %130

130:                                              ; preds = %128, %40, %33
  %131 = load i32, i32* %2, align 4
  ret i32 %131
}

declare dso_local %struct.crypto_skcipher* @crypto_skcipher_reqtfm(%struct.skcipher_request*) #1

declare dso_local %struct.crypto_cts_reqctx* @skcipher_request_ctx(%struct.skcipher_request*) #1

declare dso_local %struct.crypto_cts_ctx* @crypto_skcipher_ctx(%struct.crypto_skcipher*) #1

declare dso_local i32 @crypto_skcipher_blocksize(%struct.crypto_skcipher*) #1

declare dso_local i32 @skcipher_request_set_tfm(%struct.skcipher_request*, i32) #1

declare dso_local i32 @skcipher_request_set_callback(%struct.skcipher_request*, i32, i32, %struct.skcipher_request*) #1

declare dso_local i32 @skcipher_request_set_crypt(%struct.skcipher_request*, i32, i32, i32, i32) #1

declare dso_local i32 @crypto_skcipher_decrypt(%struct.skcipher_request*) #1

declare dso_local i32* @crypto_cts_reqctx_space(%struct.skcipher_request*) #1

declare dso_local i32 @rounddown(i32, i32) #1

declare dso_local i32 @memcpy(i32*, i32, i32) #1

declare dso_local i32 @scatterwalk_map_and_copy(i32*, i32, i32, i32, i32) #1

declare dso_local i32 @cts_cbc_decrypt(%struct.skcipher_request*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
