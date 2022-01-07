; ModuleID = '/home/carl/AnghaBench/linux/crypto/extr_xts.c_cts_final.c'
source_filename = "/home/carl/AnghaBench/linux/crypto/extr_xts.c_cts_final.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.skcipher_request = type { i32, %struct.TYPE_2__, i32, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.priv = type { i32 }
%struct.rctx = type { i32, i32, i32, %struct.skcipher_request }

@XTS_BLOCK_SIZE = common dso_local global i32 0, align 4
@cts_done = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.skcipher_request*, i32 (%struct.skcipher_request*)*)* @cts_final to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cts_final(%struct.skcipher_request* %0, i32 (%struct.skcipher_request*)* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.skcipher_request*, align 8
  %5 = alloca i32 (%struct.skcipher_request*)*, align 8
  %6 = alloca %struct.priv*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.rctx*, align 8
  %9 = alloca %struct.skcipher_request*, align 8
  %10 = alloca i32, align 4
  %11 = alloca [2 x i32], align 4
  %12 = alloca i32, align 4
  store %struct.skcipher_request* %0, %struct.skcipher_request** %4, align 8
  store i32 (%struct.skcipher_request*)* %1, i32 (%struct.skcipher_request*)** %5, align 8
  %13 = load %struct.skcipher_request*, %struct.skcipher_request** %4, align 8
  %14 = call i32 @crypto_skcipher_reqtfm(%struct.skcipher_request* %13)
  %15 = call %struct.priv* @crypto_skcipher_ctx(i32 %14)
  store %struct.priv* %15, %struct.priv** %6, align 8
  %16 = load %struct.skcipher_request*, %struct.skcipher_request** %4, align 8
  %17 = getelementptr inbounds %struct.skcipher_request, %struct.skcipher_request* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @XTS_BLOCK_SIZE, align 4
  %20 = sub nsw i32 %19, 1
  %21 = xor i32 %20, -1
  %22 = and i32 %18, %21
  store i32 %22, i32* %7, align 4
  %23 = load %struct.skcipher_request*, %struct.skcipher_request** %4, align 8
  %24 = call %struct.rctx* @skcipher_request_ctx(%struct.skcipher_request* %23)
  store %struct.rctx* %24, %struct.rctx** %8, align 8
  %25 = load %struct.rctx*, %struct.rctx** %8, align 8
  %26 = getelementptr inbounds %struct.rctx, %struct.rctx* %25, i32 0, i32 3
  store %struct.skcipher_request* %26, %struct.skcipher_request** %9, align 8
  %27 = load %struct.skcipher_request*, %struct.skcipher_request** %4, align 8
  %28 = getelementptr inbounds %struct.skcipher_request, %struct.skcipher_request* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @XTS_BLOCK_SIZE, align 4
  %31 = srem i32 %29, %30
  store i32 %31, i32* %10, align 4
  %32 = load %struct.rctx*, %struct.rctx** %8, align 8
  %33 = getelementptr inbounds %struct.rctx, %struct.rctx* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.skcipher_request*, %struct.skcipher_request** %4, align 8
  %36 = getelementptr inbounds %struct.skcipher_request, %struct.skcipher_request* %35, i32 0, i32 3
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* %7, align 4
  %39 = load i32, i32* @XTS_BLOCK_SIZE, align 4
  %40 = sub nsw i32 %38, %39
  %41 = call i32 @scatterwalk_ffwd(i32 %34, i32 %37, i32 %40)
  %42 = load %struct.rctx*, %struct.rctx** %8, align 8
  %43 = getelementptr inbounds %struct.rctx, %struct.rctx* %42, i32 0, i32 0
  store i32 %41, i32* %43, align 4
  %44 = getelementptr inbounds [2 x i32], [2 x i32]* %11, i64 0, i64 0
  %45 = load %struct.rctx*, %struct.rctx** %8, align 8
  %46 = getelementptr inbounds %struct.rctx, %struct.rctx* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @XTS_BLOCK_SIZE, align 4
  %49 = call i32 @scatterwalk_map_and_copy(i32* %44, i32 %47, i32 0, i32 %48, i32 0)
  %50 = getelementptr inbounds [2 x i32], [2 x i32]* %11, i64 0, i64 0
  %51 = getelementptr inbounds i32, i32* %50, i64 1
  %52 = getelementptr inbounds [2 x i32], [2 x i32]* %11, i64 0, i64 0
  %53 = load i32, i32* %10, align 4
  %54 = call i32 @memcpy(i32* %51, i32* %52, i32 %53)
  %55 = getelementptr inbounds [2 x i32], [2 x i32]* %11, i64 0, i64 0
  %56 = load %struct.skcipher_request*, %struct.skcipher_request** %4, align 8
  %57 = getelementptr inbounds %struct.skcipher_request, %struct.skcipher_request* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* %7, align 4
  %60 = load i32, i32* %10, align 4
  %61 = call i32 @scatterwalk_map_and_copy(i32* %55, i32 %58, i32 %59, i32 %60, i32 0)
  %62 = getelementptr inbounds [2 x i32], [2 x i32]* %11, i64 0, i64 0
  %63 = load %struct.rctx*, %struct.rctx** %8, align 8
  %64 = getelementptr inbounds %struct.rctx, %struct.rctx* %63, i32 0, i32 1
  %65 = getelementptr inbounds [2 x i32], [2 x i32]* %11, i64 0, i64 0
  %66 = call i32 @le128_xor(i32* %62, i32* %64, i32* %65)
  %67 = getelementptr inbounds [2 x i32], [2 x i32]* %11, i64 0, i64 0
  %68 = load %struct.rctx*, %struct.rctx** %8, align 8
  %69 = getelementptr inbounds %struct.rctx, %struct.rctx* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* @XTS_BLOCK_SIZE, align 4
  %72 = load i32, i32* %10, align 4
  %73 = add nsw i32 %71, %72
  %74 = call i32 @scatterwalk_map_and_copy(i32* %67, i32 %70, i32 0, i32 %73, i32 1)
  %75 = load %struct.skcipher_request*, %struct.skcipher_request** %9, align 8
  %76 = load %struct.priv*, %struct.priv** %6, align 8
  %77 = getelementptr inbounds %struct.priv, %struct.priv* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @skcipher_request_set_tfm(%struct.skcipher_request* %75, i32 %78)
  %80 = load %struct.skcipher_request*, %struct.skcipher_request** %9, align 8
  %81 = load %struct.skcipher_request*, %struct.skcipher_request** %4, align 8
  %82 = getelementptr inbounds %struct.skcipher_request, %struct.skcipher_request* %81, i32 0, i32 1
  %83 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = load i32, i32* @cts_done, align 4
  %86 = load %struct.skcipher_request*, %struct.skcipher_request** %4, align 8
  %87 = call i32 @skcipher_request_set_callback(%struct.skcipher_request* %80, i32 %84, i32 %85, %struct.skcipher_request* %86)
  %88 = load %struct.skcipher_request*, %struct.skcipher_request** %9, align 8
  %89 = load %struct.rctx*, %struct.rctx** %8, align 8
  %90 = getelementptr inbounds %struct.rctx, %struct.rctx* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = load %struct.rctx*, %struct.rctx** %8, align 8
  %93 = getelementptr inbounds %struct.rctx, %struct.rctx* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = load i32, i32* @XTS_BLOCK_SIZE, align 4
  %96 = call i32 @skcipher_request_set_crypt(%struct.skcipher_request* %88, i32 %91, i32 %94, i32 %95, i32* null)
  %97 = load i32 (%struct.skcipher_request*)*, i32 (%struct.skcipher_request*)** %5, align 8
  %98 = load %struct.skcipher_request*, %struct.skcipher_request** %9, align 8
  %99 = call i32 %97(%struct.skcipher_request* %98)
  store i32 %99, i32* %12, align 4
  %100 = load i32, i32* %12, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %104

102:                                              ; preds = %2
  %103 = load i32, i32* %12, align 4
  store i32 %103, i32* %3, align 4
  br label %122

104:                                              ; preds = %2
  %105 = getelementptr inbounds [2 x i32], [2 x i32]* %11, i64 0, i64 0
  %106 = load %struct.rctx*, %struct.rctx** %8, align 8
  %107 = getelementptr inbounds %struct.rctx, %struct.rctx* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = load i32, i32* @XTS_BLOCK_SIZE, align 4
  %110 = call i32 @scatterwalk_map_and_copy(i32* %105, i32 %108, i32 0, i32 %109, i32 0)
  %111 = getelementptr inbounds [2 x i32], [2 x i32]* %11, i64 0, i64 0
  %112 = load %struct.rctx*, %struct.rctx** %8, align 8
  %113 = getelementptr inbounds %struct.rctx, %struct.rctx* %112, i32 0, i32 1
  %114 = getelementptr inbounds [2 x i32], [2 x i32]* %11, i64 0, i64 0
  %115 = call i32 @le128_xor(i32* %111, i32* %113, i32* %114)
  %116 = getelementptr inbounds [2 x i32], [2 x i32]* %11, i64 0, i64 0
  %117 = load %struct.rctx*, %struct.rctx** %8, align 8
  %118 = getelementptr inbounds %struct.rctx, %struct.rctx* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 4
  %120 = load i32, i32* @XTS_BLOCK_SIZE, align 4
  %121 = call i32 @scatterwalk_map_and_copy(i32* %116, i32 %119, i32 0, i32 %120, i32 1)
  store i32 0, i32* %3, align 4
  br label %122

122:                                              ; preds = %104, %102
  %123 = load i32, i32* %3, align 4
  ret i32 %123
}

declare dso_local %struct.priv* @crypto_skcipher_ctx(i32) #1

declare dso_local i32 @crypto_skcipher_reqtfm(%struct.skcipher_request*) #1

declare dso_local %struct.rctx* @skcipher_request_ctx(%struct.skcipher_request*) #1

declare dso_local i32 @scatterwalk_ffwd(i32, i32, i32) #1

declare dso_local i32 @scatterwalk_map_and_copy(i32*, i32, i32, i32, i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @le128_xor(i32*, i32*, i32*) #1

declare dso_local i32 @skcipher_request_set_tfm(%struct.skcipher_request*, i32) #1

declare dso_local i32 @skcipher_request_set_callback(%struct.skcipher_request*, i32, i32, %struct.skcipher_request*) #1

declare dso_local i32 @skcipher_request_set_crypt(%struct.skcipher_request*, i32, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
