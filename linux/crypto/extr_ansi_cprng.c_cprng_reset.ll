; ModuleID = '/home/carl/AnghaBench/linux/crypto/extr_ansi_cprng.c_cprng_reset.c'
source_filename = "/home/carl/AnghaBench/linux/crypto/extr_ansi_cprng.c_cprng_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crypto_rng = type { i32 }
%struct.prng_context = type { i32 }

@DEFAULT_BLK_SZ = common dso_local global i32 0, align 4
@DEFAULT_PRNG_KSZ = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@PRNG_NEED_RESET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.crypto_rng*, i32*, i32)* @cprng_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cprng_reset(%struct.crypto_rng* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.crypto_rng*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.prng_context*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  store %struct.crypto_rng* %0, %struct.crypto_rng** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load %struct.crypto_rng*, %struct.crypto_rng** %5, align 8
  %12 = call %struct.prng_context* @crypto_rng_ctx(%struct.crypto_rng* %11)
  store %struct.prng_context* %12, %struct.prng_context** %8, align 8
  %13 = load i32*, i32** %6, align 8
  %14 = load i32, i32* @DEFAULT_BLK_SZ, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds i32, i32* %13, i64 %15
  store i32* %16, i32** %9, align 8
  store i32* null, i32** %10, align 8
  %17 = load i32, i32* %7, align 4
  %18 = load i32, i32* @DEFAULT_PRNG_KSZ, align 4
  %19 = load i32, i32* @DEFAULT_BLK_SZ, align 4
  %20 = add nsw i32 %18, %19
  %21 = icmp ult i32 %17, %20
  br i1 %21, label %22, label %25

22:                                               ; preds = %3
  %23 = load i32, i32* @EINVAL, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %4, align 4
  br label %54

25:                                               ; preds = %3
  %26 = load i32, i32* %7, align 4
  %27 = load i32, i32* @DEFAULT_BLK_SZ, align 4
  %28 = mul nsw i32 2, %27
  %29 = load i32, i32* @DEFAULT_PRNG_KSZ, align 4
  %30 = add nsw i32 %28, %29
  %31 = icmp uge i32 %26, %30
  br i1 %31, label %32, label %37

32:                                               ; preds = %25
  %33 = load i32*, i32** %9, align 8
  %34 = load i32, i32* @DEFAULT_PRNG_KSZ, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i32, i32* %33, i64 %35
  store i32* %36, i32** %10, align 8
  br label %37

37:                                               ; preds = %32, %25
  %38 = load %struct.prng_context*, %struct.prng_context** %8, align 8
  %39 = load i32*, i32** %9, align 8
  %40 = load i32, i32* @DEFAULT_PRNG_KSZ, align 4
  %41 = load i32*, i32** %6, align 8
  %42 = load i32*, i32** %10, align 8
  %43 = call i32 @reset_prng_context(%struct.prng_context* %38, i32* %39, i32 %40, i32* %41, i32* %42)
  %44 = load %struct.prng_context*, %struct.prng_context** %8, align 8
  %45 = getelementptr inbounds %struct.prng_context, %struct.prng_context* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* @PRNG_NEED_RESET, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %37
  %51 = load i32, i32* @EINVAL, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %4, align 4
  br label %54

53:                                               ; preds = %37
  store i32 0, i32* %4, align 4
  br label %54

54:                                               ; preds = %53, %50, %22
  %55 = load i32, i32* %4, align 4
  ret i32 %55
}

declare dso_local %struct.prng_context* @crypto_rng_ctx(%struct.crypto_rng*) #1

declare dso_local i32 @reset_prng_context(%struct.prng_context*, i32*, i32, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
