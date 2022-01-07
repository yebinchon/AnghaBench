; ModuleID = '/home/carl/AnghaBench/linux/crypto/extr_lz4hc.c_lz4hc_compress_crypto.c'
source_filename = "/home/carl/AnghaBench/linux/crypto/extr_lz4hc.c_lz4hc_compress_crypto.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crypto_tfm = type { i32 }
%struct.lz4hc_ctx = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.crypto_tfm*, i32*, i32, i32*, i32*)* @lz4hc_compress_crypto to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lz4hc_compress_crypto(%struct.crypto_tfm* %0, i32* %1, i32 %2, i32* %3, i32* %4) #0 {
  %6 = alloca %struct.crypto_tfm*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.lz4hc_ctx*, align 8
  store %struct.crypto_tfm* %0, %struct.crypto_tfm** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  store i32* %4, i32** %10, align 8
  %12 = load %struct.crypto_tfm*, %struct.crypto_tfm** %6, align 8
  %13 = call %struct.lz4hc_ctx* @crypto_tfm_ctx(%struct.crypto_tfm* %12)
  store %struct.lz4hc_ctx* %13, %struct.lz4hc_ctx** %11, align 8
  %14 = load i32*, i32** %7, align 8
  %15 = load i32, i32* %8, align 4
  %16 = load i32*, i32** %9, align 8
  %17 = load i32*, i32** %10, align 8
  %18 = load %struct.lz4hc_ctx*, %struct.lz4hc_ctx** %11, align 8
  %19 = getelementptr inbounds %struct.lz4hc_ctx, %struct.lz4hc_ctx* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @__lz4hc_compress_crypto(i32* %14, i32 %15, i32* %16, i32* %17, i32 %20)
  ret i32 %21
}

declare dso_local %struct.lz4hc_ctx* @crypto_tfm_ctx(%struct.crypto_tfm*) #1

declare dso_local i32 @__lz4hc_compress_crypto(i32*, i32, i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
