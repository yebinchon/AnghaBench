; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/crypto/extr_chacha_glue.c_chacha_simd.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/crypto/extr_chacha_glue.c_chacha_simd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.skcipher_request = type { i64, i32 }
%struct.crypto_skcipher = type { i32 }
%struct.chacha_ctx = type { i32 }
%struct.skcipher_walk = type { i32 }

@CHACHA_BLOCK_SIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.skcipher_request*)* @chacha_simd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @chacha_simd(%struct.skcipher_request* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.skcipher_request*, align 8
  %4 = alloca %struct.crypto_skcipher*, align 8
  %5 = alloca %struct.chacha_ctx*, align 8
  %6 = alloca %struct.skcipher_walk, align 4
  %7 = alloca i32, align 4
  store %struct.skcipher_request* %0, %struct.skcipher_request** %3, align 8
  %8 = load %struct.skcipher_request*, %struct.skcipher_request** %3, align 8
  %9 = call %struct.crypto_skcipher* @crypto_skcipher_reqtfm(%struct.skcipher_request* %8)
  store %struct.crypto_skcipher* %9, %struct.crypto_skcipher** %4, align 8
  %10 = load %struct.crypto_skcipher*, %struct.crypto_skcipher** %4, align 8
  %11 = call %struct.chacha_ctx* @crypto_skcipher_ctx(%struct.crypto_skcipher* %10)
  store %struct.chacha_ctx* %11, %struct.chacha_ctx** %5, align 8
  %12 = load %struct.skcipher_request*, %struct.skcipher_request** %3, align 8
  %13 = getelementptr inbounds %struct.skcipher_request, %struct.skcipher_request* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @CHACHA_BLOCK_SIZE, align 8
  %16 = icmp sle i64 %14, %15
  br i1 %16, label %20, label %17

17:                                               ; preds = %1
  %18 = call i32 (...) @crypto_simd_usable()
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %23, label %20

20:                                               ; preds = %17, %1
  %21 = load %struct.skcipher_request*, %struct.skcipher_request** %3, align 8
  %22 = call i32 @crypto_chacha_crypt(%struct.skcipher_request* %21)
  store i32 %22, i32* %2, align 4
  br label %39

23:                                               ; preds = %17
  %24 = load %struct.skcipher_request*, %struct.skcipher_request** %3, align 8
  %25 = call i32 @skcipher_walk_virt(%struct.skcipher_walk* %6, %struct.skcipher_request* %24, i32 1)
  store i32 %25, i32* %7, align 4
  %26 = load i32, i32* %7, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %23
  %29 = load i32, i32* %7, align 4
  store i32 %29, i32* %2, align 4
  br label %39

30:                                               ; preds = %23
  %31 = call i32 (...) @kernel_fpu_begin()
  %32 = load %struct.chacha_ctx*, %struct.chacha_ctx** %5, align 8
  %33 = load %struct.skcipher_request*, %struct.skcipher_request** %3, align 8
  %34 = getelementptr inbounds %struct.skcipher_request, %struct.skcipher_request* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  %36 = call i32 @chacha_simd_stream_xor(%struct.skcipher_walk* %6, %struct.chacha_ctx* %32, i32 %35)
  store i32 %36, i32* %7, align 4
  %37 = call i32 (...) @kernel_fpu_end()
  %38 = load i32, i32* %7, align 4
  store i32 %38, i32* %2, align 4
  br label %39

39:                                               ; preds = %30, %28, %20
  %40 = load i32, i32* %2, align 4
  ret i32 %40
}

declare dso_local %struct.crypto_skcipher* @crypto_skcipher_reqtfm(%struct.skcipher_request*) #1

declare dso_local %struct.chacha_ctx* @crypto_skcipher_ctx(%struct.crypto_skcipher*) #1

declare dso_local i32 @crypto_simd_usable(...) #1

declare dso_local i32 @crypto_chacha_crypt(%struct.skcipher_request*) #1

declare dso_local i32 @skcipher_walk_virt(%struct.skcipher_walk*, %struct.skcipher_request*, i32) #1

declare dso_local i32 @kernel_fpu_begin(...) #1

declare dso_local i32 @chacha_simd_stream_xor(%struct.skcipher_walk*, %struct.chacha_ctx*, i32) #1

declare dso_local i32 @kernel_fpu_end(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
