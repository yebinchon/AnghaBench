; ModuleID = '/home/carl/AnghaBench/linux/crypto/extr_cts.c_crypto_cts_encrypt.c'
source_filename = "/home/carl/AnghaBench/linux/crypto/extr_cts.c_crypto_cts_encrypt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.skcipher_request = type { i32, i32, i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, %struct.skcipher_request*, i32 }
%struct.crypto_skcipher = type { i32 }
%struct.crypto_cts_reqctx = type { i32, %struct.skcipher_request }
%struct.crypto_cts_ctx = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@crypto_cts_encrypt_done = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.skcipher_request*)* @crypto_cts_encrypt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @crypto_cts_encrypt(%struct.skcipher_request* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.skcipher_request*, align 8
  %4 = alloca %struct.crypto_skcipher*, align 8
  %5 = alloca %struct.crypto_cts_reqctx*, align 8
  %6 = alloca %struct.crypto_cts_ctx*, align 8
  %7 = alloca %struct.skcipher_request*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.skcipher_request* %0, %struct.skcipher_request** %3, align 8
  %11 = load %struct.skcipher_request*, %struct.skcipher_request** %3, align 8
  %12 = call %struct.crypto_skcipher* @crypto_skcipher_reqtfm(%struct.skcipher_request* %11)
  store %struct.crypto_skcipher* %12, %struct.crypto_skcipher** %4, align 8
  %13 = load %struct.skcipher_request*, %struct.skcipher_request** %3, align 8
  %14 = call %struct.crypto_cts_reqctx* @skcipher_request_ctx(%struct.skcipher_request* %13)
  store %struct.crypto_cts_reqctx* %14, %struct.crypto_cts_reqctx** %5, align 8
  %15 = load %struct.crypto_skcipher*, %struct.crypto_skcipher** %4, align 8
  %16 = call %struct.crypto_cts_ctx* @crypto_skcipher_ctx(%struct.crypto_skcipher* %15)
  store %struct.crypto_cts_ctx* %16, %struct.crypto_cts_ctx** %6, align 8
  %17 = load %struct.crypto_cts_reqctx*, %struct.crypto_cts_reqctx** %5, align 8
  %18 = getelementptr inbounds %struct.crypto_cts_reqctx, %struct.crypto_cts_reqctx* %17, i32 0, i32 1
  store %struct.skcipher_request* %18, %struct.skcipher_request** %7, align 8
  %19 = load %struct.crypto_skcipher*, %struct.crypto_skcipher** %4, align 8
  %20 = call i32 @crypto_skcipher_blocksize(%struct.crypto_skcipher* %19)
  store i32 %20, i32* %8, align 4
  %21 = load %struct.skcipher_request*, %struct.skcipher_request** %3, align 8
  %22 = getelementptr inbounds %struct.skcipher_request, %struct.skcipher_request* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  store i32 %23, i32* %9, align 4
  %24 = load %struct.skcipher_request*, %struct.skcipher_request** %7, align 8
  %25 = load %struct.crypto_cts_ctx*, %struct.crypto_cts_ctx** %6, align 8
  %26 = getelementptr inbounds %struct.crypto_cts_ctx, %struct.crypto_cts_ctx* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @skcipher_request_set_tfm(%struct.skcipher_request* %24, i32 %27)
  %29 = load i32, i32* %9, align 4
  %30 = load i32, i32* %8, align 4
  %31 = icmp ult i32 %29, %30
  br i1 %31, label %32, label %35

32:                                               ; preds = %1
  %33 = load i32, i32* @EINVAL, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %2, align 4
  br label %105

35:                                               ; preds = %1
  %36 = load i32, i32* %9, align 4
  %37 = load i32, i32* %8, align 4
  %38 = icmp eq i32 %36, %37
  br i1 %38, label %39, label %68

39:                                               ; preds = %35
  %40 = load %struct.skcipher_request*, %struct.skcipher_request** %7, align 8
  %41 = load %struct.skcipher_request*, %struct.skcipher_request** %3, align 8
  %42 = getelementptr inbounds %struct.skcipher_request, %struct.skcipher_request* %41, i32 0, i32 4
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = load %struct.skcipher_request*, %struct.skcipher_request** %3, align 8
  %46 = getelementptr inbounds %struct.skcipher_request, %struct.skcipher_request* %45, i32 0, i32 4
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 8
  %49 = load %struct.skcipher_request*, %struct.skcipher_request** %3, align 8
  %50 = getelementptr inbounds %struct.skcipher_request, %struct.skcipher_request* %49, i32 0, i32 4
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 1
  %52 = load %struct.skcipher_request*, %struct.skcipher_request** %51, align 8
  %53 = call i32 @skcipher_request_set_callback(%struct.skcipher_request* %40, i32 %44, i32 %48, %struct.skcipher_request* %52)
  %54 = load %struct.skcipher_request*, %struct.skcipher_request** %7, align 8
  %55 = load %struct.skcipher_request*, %struct.skcipher_request** %3, align 8
  %56 = getelementptr inbounds %struct.skcipher_request, %struct.skcipher_request* %55, i32 0, i32 3
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.skcipher_request*, %struct.skcipher_request** %3, align 8
  %59 = getelementptr inbounds %struct.skcipher_request, %struct.skcipher_request* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 8
  %61 = load i32, i32* %9, align 4
  %62 = load %struct.skcipher_request*, %struct.skcipher_request** %3, align 8
  %63 = getelementptr inbounds %struct.skcipher_request, %struct.skcipher_request* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @skcipher_request_set_crypt(%struct.skcipher_request* %54, i32 %57, i32 %60, i32 %61, i32 %64)
  %66 = load %struct.skcipher_request*, %struct.skcipher_request** %7, align 8
  %67 = call i32 @crypto_skcipher_encrypt(%struct.skcipher_request* %66)
  store i32 %67, i32* %2, align 4
  br label %105

68:                                               ; preds = %35
  %69 = load i32, i32* %9, align 4
  %70 = sub i32 %69, 1
  %71 = load i32, i32* %8, align 4
  %72 = call i32 @rounddown(i32 %70, i32 %71)
  store i32 %72, i32* %10, align 4
  %73 = load i32, i32* %10, align 4
  %74 = load %struct.crypto_cts_reqctx*, %struct.crypto_cts_reqctx** %5, align 8
  %75 = getelementptr inbounds %struct.crypto_cts_reqctx, %struct.crypto_cts_reqctx* %74, i32 0, i32 0
  store i32 %73, i32* %75, align 8
  %76 = load %struct.skcipher_request*, %struct.skcipher_request** %7, align 8
  %77 = load %struct.skcipher_request*, %struct.skcipher_request** %3, align 8
  %78 = getelementptr inbounds %struct.skcipher_request, %struct.skcipher_request* %77, i32 0, i32 4
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = load i32, i32* @crypto_cts_encrypt_done, align 4
  %82 = load %struct.skcipher_request*, %struct.skcipher_request** %3, align 8
  %83 = call i32 @skcipher_request_set_callback(%struct.skcipher_request* %76, i32 %80, i32 %81, %struct.skcipher_request* %82)
  %84 = load %struct.skcipher_request*, %struct.skcipher_request** %7, align 8
  %85 = load %struct.skcipher_request*, %struct.skcipher_request** %3, align 8
  %86 = getelementptr inbounds %struct.skcipher_request, %struct.skcipher_request* %85, i32 0, i32 3
  %87 = load i32, i32* %86, align 4
  %88 = load %struct.skcipher_request*, %struct.skcipher_request** %3, align 8
  %89 = getelementptr inbounds %struct.skcipher_request, %struct.skcipher_request* %88, i32 0, i32 2
  %90 = load i32, i32* %89, align 8
  %91 = load i32, i32* %10, align 4
  %92 = load %struct.skcipher_request*, %struct.skcipher_request** %3, align 8
  %93 = getelementptr inbounds %struct.skcipher_request, %struct.skcipher_request* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = call i32 @skcipher_request_set_crypt(%struct.skcipher_request* %84, i32 %87, i32 %90, i32 %91, i32 %94)
  %96 = load %struct.skcipher_request*, %struct.skcipher_request** %7, align 8
  %97 = call i32 @crypto_skcipher_encrypt(%struct.skcipher_request* %96)
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %100

99:                                               ; preds = %68
  br label %103

100:                                              ; preds = %68
  %101 = load %struct.skcipher_request*, %struct.skcipher_request** %3, align 8
  %102 = call i32 @cts_cbc_encrypt(%struct.skcipher_request* %101)
  br label %103

103:                                              ; preds = %100, %99
  %104 = phi i32 [ %97, %99 ], [ %102, %100 ]
  store i32 %104, i32* %2, align 4
  br label %105

105:                                              ; preds = %103, %39, %32
  %106 = load i32, i32* %2, align 4
  ret i32 %106
}

declare dso_local %struct.crypto_skcipher* @crypto_skcipher_reqtfm(%struct.skcipher_request*) #1

declare dso_local %struct.crypto_cts_reqctx* @skcipher_request_ctx(%struct.skcipher_request*) #1

declare dso_local %struct.crypto_cts_ctx* @crypto_skcipher_ctx(%struct.crypto_skcipher*) #1

declare dso_local i32 @crypto_skcipher_blocksize(%struct.crypto_skcipher*) #1

declare dso_local i32 @skcipher_request_set_tfm(%struct.skcipher_request*, i32) #1

declare dso_local i32 @skcipher_request_set_callback(%struct.skcipher_request*, i32, i32, %struct.skcipher_request*) #1

declare dso_local i32 @skcipher_request_set_crypt(%struct.skcipher_request*, i32, i32, i32, i32) #1

declare dso_local i32 @crypto_skcipher_encrypt(%struct.skcipher_request*) #1

declare dso_local i32 @rounddown(i32, i32) #1

declare dso_local i32 @cts_cbc_encrypt(%struct.skcipher_request*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
