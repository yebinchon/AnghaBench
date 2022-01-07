; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/crypto/extr_cast6_avx_glue.c_xts_cast6_setkey.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/crypto/extr_cast6_avx_glue.c_xts_cast6_setkey.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crypto_skcipher = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.cast6_xts_ctx = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.crypto_skcipher*, i32*, i32)* @xts_cast6_setkey to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xts_cast6_setkey(%struct.crypto_skcipher* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.crypto_skcipher*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.cast6_xts_ctx*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  store %struct.crypto_skcipher* %0, %struct.crypto_skcipher** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load %struct.crypto_skcipher*, %struct.crypto_skcipher** %5, align 8
  %12 = call %struct.cast6_xts_ctx* @crypto_skcipher_ctx(%struct.crypto_skcipher* %11)
  store %struct.cast6_xts_ctx* %12, %struct.cast6_xts_ctx** %8, align 8
  %13 = load %struct.crypto_skcipher*, %struct.crypto_skcipher** %5, align 8
  %14 = getelementptr inbounds %struct.crypto_skcipher, %struct.crypto_skcipher* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  store i32* %15, i32** %9, align 8
  %16 = load %struct.crypto_skcipher*, %struct.crypto_skcipher** %5, align 8
  %17 = load i32*, i32** %6, align 8
  %18 = load i32, i32* %7, align 4
  %19 = call i32 @xts_verify_key(%struct.crypto_skcipher* %16, i32* %17, i32 %18)
  store i32 %19, i32* %10, align 4
  %20 = load i32, i32* %10, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %3
  %23 = load i32, i32* %10, align 4
  store i32 %23, i32* %4, align 4
  br label %48

24:                                               ; preds = %3
  %25 = load %struct.cast6_xts_ctx*, %struct.cast6_xts_ctx** %8, align 8
  %26 = getelementptr inbounds %struct.cast6_xts_ctx, %struct.cast6_xts_ctx* %25, i32 0, i32 1
  %27 = load i32*, i32** %6, align 8
  %28 = load i32, i32* %7, align 4
  %29 = udiv i32 %28, 2
  %30 = load i32*, i32** %9, align 8
  %31 = call i32 @__cast6_setkey(i32* %26, i32* %27, i32 %29, i32* %30)
  store i32 %31, i32* %10, align 4
  %32 = load i32, i32* %10, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %24
  %35 = load i32, i32* %10, align 4
  store i32 %35, i32* %4, align 4
  br label %48

36:                                               ; preds = %24
  %37 = load %struct.cast6_xts_ctx*, %struct.cast6_xts_ctx** %8, align 8
  %38 = getelementptr inbounds %struct.cast6_xts_ctx, %struct.cast6_xts_ctx* %37, i32 0, i32 0
  %39 = load i32*, i32** %6, align 8
  %40 = load i32, i32* %7, align 4
  %41 = udiv i32 %40, 2
  %42 = zext i32 %41 to i64
  %43 = getelementptr inbounds i32, i32* %39, i64 %42
  %44 = load i32, i32* %7, align 4
  %45 = udiv i32 %44, 2
  %46 = load i32*, i32** %9, align 8
  %47 = call i32 @__cast6_setkey(i32* %38, i32* %43, i32 %45, i32* %46)
  store i32 %47, i32* %4, align 4
  br label %48

48:                                               ; preds = %36, %34, %22
  %49 = load i32, i32* %4, align 4
  ret i32 %49
}

declare dso_local %struct.cast6_xts_ctx* @crypto_skcipher_ctx(%struct.crypto_skcipher*) #1

declare dso_local i32 @xts_verify_key(%struct.crypto_skcipher*, i32*, i32) #1

declare dso_local i32 @__cast6_setkey(i32*, i32*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
