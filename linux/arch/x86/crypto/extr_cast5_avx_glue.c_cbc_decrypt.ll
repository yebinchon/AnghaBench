; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/crypto/extr_cast5_avx_glue.c_cbc_decrypt.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/crypto/extr_cast5_avx_glue.c_cbc_decrypt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.skcipher_request = type { i32 }
%struct.crypto_skcipher = type { i32 }
%struct.cast5_ctx = type { i32 }
%struct.skcipher_walk = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.skcipher_request*)* @cbc_decrypt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cbc_decrypt(%struct.skcipher_request* %0) #0 {
  %2 = alloca %struct.skcipher_request*, align 8
  %3 = alloca %struct.crypto_skcipher*, align 8
  %4 = alloca %struct.cast5_ctx*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.skcipher_walk, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.skcipher_request* %0, %struct.skcipher_request** %2, align 8
  %9 = load %struct.skcipher_request*, %struct.skcipher_request** %2, align 8
  %10 = call %struct.crypto_skcipher* @crypto_skcipher_reqtfm(%struct.skcipher_request* %9)
  store %struct.crypto_skcipher* %10, %struct.crypto_skcipher** %3, align 8
  %11 = load %struct.crypto_skcipher*, %struct.crypto_skcipher** %3, align 8
  %12 = call %struct.cast5_ctx* @crypto_skcipher_ctx(%struct.crypto_skcipher* %11)
  store %struct.cast5_ctx* %12, %struct.cast5_ctx** %4, align 8
  store i32 0, i32* %5, align 4
  %13 = load %struct.skcipher_request*, %struct.skcipher_request** %2, align 8
  %14 = call i32 @skcipher_walk_virt(%struct.skcipher_walk* %6, %struct.skcipher_request* %13, i32 0)
  store i32 %14, i32* %8, align 4
  br label %15

15:                                               ; preds = %19, %1
  %16 = getelementptr inbounds %struct.skcipher_walk, %struct.skcipher_walk* %6, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* %7, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %27

19:                                               ; preds = %15
  %20 = load i32, i32* %5, align 4
  %21 = load i32, i32* %7, align 4
  %22 = call i32 @cast5_fpu_begin(i32 %20, %struct.skcipher_walk* %6, i32 %21)
  store i32 %22, i32* %5, align 4
  %23 = load %struct.cast5_ctx*, %struct.cast5_ctx** %4, align 8
  %24 = call i32 @__cbc_decrypt(%struct.cast5_ctx* %23, %struct.skcipher_walk* %6)
  store i32 %24, i32* %7, align 4
  %25 = load i32, i32* %7, align 4
  %26 = call i32 @skcipher_walk_done(%struct.skcipher_walk* %6, i32 %25)
  store i32 %26, i32* %8, align 4
  br label %15

27:                                               ; preds = %15
  %28 = load i32, i32* %5, align 4
  %29 = call i32 @cast5_fpu_end(i32 %28)
  %30 = load i32, i32* %8, align 4
  ret i32 %30
}

declare dso_local %struct.crypto_skcipher* @crypto_skcipher_reqtfm(%struct.skcipher_request*) #1

declare dso_local %struct.cast5_ctx* @crypto_skcipher_ctx(%struct.crypto_skcipher*) #1

declare dso_local i32 @skcipher_walk_virt(%struct.skcipher_walk*, %struct.skcipher_request*, i32) #1

declare dso_local i32 @cast5_fpu_begin(i32, %struct.skcipher_walk*, i32) #1

declare dso_local i32 @__cbc_decrypt(%struct.cast5_ctx*, %struct.skcipher_walk*) #1

declare dso_local i32 @skcipher_walk_done(%struct.skcipher_walk*, i32) #1

declare dso_local i32 @cast5_fpu_end(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
