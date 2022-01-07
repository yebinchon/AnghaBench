; ModuleID = '/home/carl/AnghaBench/linux/crypto/extr_xts.c_cts_done.c'
source_filename = "/home/carl/AnghaBench/linux/crypto/extr_xts.c_cts_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crypto_async_request = type { %struct.skcipher_request* }
%struct.skcipher_request = type { i32 }
%struct.rctx = type { i32, i32 }

@XTS_BLOCK_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.crypto_async_request*, i32)* @cts_done to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cts_done(%struct.crypto_async_request* %0, i32 %1) #0 {
  %3 = alloca %struct.crypto_async_request*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.skcipher_request*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.rctx*, align 8
  store %struct.crypto_async_request* %0, %struct.crypto_async_request** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.crypto_async_request*, %struct.crypto_async_request** %3, align 8
  %9 = getelementptr inbounds %struct.crypto_async_request, %struct.crypto_async_request* %8, i32 0, i32 0
  %10 = load %struct.skcipher_request*, %struct.skcipher_request** %9, align 8
  store %struct.skcipher_request* %10, %struct.skcipher_request** %5, align 8
  %11 = load i32, i32* %4, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %29, label %13

13:                                               ; preds = %2
  %14 = load %struct.skcipher_request*, %struct.skcipher_request** %5, align 8
  %15 = call %struct.rctx* @skcipher_request_ctx(%struct.skcipher_request* %14)
  store %struct.rctx* %15, %struct.rctx** %7, align 8
  %16 = load %struct.rctx*, %struct.rctx** %7, align 8
  %17 = getelementptr inbounds %struct.rctx, %struct.rctx* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @XTS_BLOCK_SIZE, align 4
  %20 = call i32 @scatterwalk_map_and_copy(i32* %6, i32 %18, i32 0, i32 %19, i32 0)
  %21 = load %struct.rctx*, %struct.rctx** %7, align 8
  %22 = getelementptr inbounds %struct.rctx, %struct.rctx* %21, i32 0, i32 1
  %23 = call i32 @le128_xor(i32* %6, i32* %22, i32* %6)
  %24 = load %struct.rctx*, %struct.rctx** %7, align 8
  %25 = getelementptr inbounds %struct.rctx, %struct.rctx* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @XTS_BLOCK_SIZE, align 4
  %28 = call i32 @scatterwalk_map_and_copy(i32* %6, i32 %26, i32 0, i32 %27, i32 1)
  br label %29

29:                                               ; preds = %13, %2
  %30 = load %struct.skcipher_request*, %struct.skcipher_request** %5, align 8
  %31 = load i32, i32* %4, align 4
  %32 = call i32 @skcipher_request_complete(%struct.skcipher_request* %30, i32 %31)
  ret void
}

declare dso_local %struct.rctx* @skcipher_request_ctx(%struct.skcipher_request*) #1

declare dso_local i32 @scatterwalk_map_and_copy(i32*, i32, i32, i32, i32) #1

declare dso_local i32 @le128_xor(i32*, i32*, i32*) #1

declare dso_local i32 @skcipher_request_complete(%struct.skcipher_request*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
