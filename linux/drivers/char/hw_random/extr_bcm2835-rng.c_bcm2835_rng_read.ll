; ModuleID = '/home/carl/AnghaBench/linux/drivers/char/hw_random/extr_bcm2835-rng.c_bcm2835_rng_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/char/hw_random/extr_bcm2835-rng.c_bcm2835_rng_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hwrng = type { i32 }
%struct.bcm2835_rng_priv = type { i32 }

@RNG_STATUS = common dso_local global i32 0, align 4
@RNG_DATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hwrng*, i8*, i64, i32)* @bcm2835_rng_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bcm2835_rng_read(%struct.hwrng* %0, i8* %1, i64 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.hwrng*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.bcm2835_rng_priv*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  store %struct.hwrng* %0, %struct.hwrng** %6, align 8
  store i8* %1, i8** %7, align 8
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  %14 = load %struct.hwrng*, %struct.hwrng** %6, align 8
  %15 = call %struct.bcm2835_rng_priv* @to_rng_priv(%struct.hwrng* %14)
  store %struct.bcm2835_rng_priv* %15, %struct.bcm2835_rng_priv** %10, align 8
  %16 = load i64, i64* %8, align 8
  %17 = udiv i64 %16, 8
  store i64 %17, i64* %11, align 8
  br label %18

18:                                               ; preds = %28, %4
  %19 = load %struct.bcm2835_rng_priv*, %struct.bcm2835_rng_priv** %10, align 8
  %20 = load i32, i32* @RNG_STATUS, align 4
  %21 = call i32 @rng_readl(%struct.bcm2835_rng_priv* %19, i32 %20)
  %22 = ashr i32 %21, 24
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %30

24:                                               ; preds = %18
  %25 = load i32, i32* %9, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %28, label %27

27:                                               ; preds = %24
  store i32 0, i32* %5, align 4
  br label %62

28:                                               ; preds = %24
  %29 = call i32 (...) @cpu_relax()
  br label %18

30:                                               ; preds = %18
  %31 = load %struct.bcm2835_rng_priv*, %struct.bcm2835_rng_priv** %10, align 8
  %32 = load i32, i32* @RNG_STATUS, align 4
  %33 = call i32 @rng_readl(%struct.bcm2835_rng_priv* %31, i32 %32)
  %34 = ashr i32 %33, 24
  %35 = sext i32 %34 to i64
  store i64 %35, i64* %12, align 8
  %36 = load i64, i64* %12, align 8
  %37 = load i64, i64* %11, align 8
  %38 = icmp ugt i64 %36, %37
  br i1 %38, label %39, label %41

39:                                               ; preds = %30
  %40 = load i64, i64* %11, align 8
  store i64 %40, i64* %12, align 8
  br label %41

41:                                               ; preds = %39, %30
  store i64 0, i64* %13, align 8
  br label %42

42:                                               ; preds = %55, %41
  %43 = load i64, i64* %13, align 8
  %44 = load i64, i64* %12, align 8
  %45 = icmp ult i64 %43, %44
  br i1 %45, label %46, label %58

46:                                               ; preds = %42
  %47 = load %struct.bcm2835_rng_priv*, %struct.bcm2835_rng_priv** %10, align 8
  %48 = load i32, i32* @RNG_DATA, align 4
  %49 = call i32 @rng_readl(%struct.bcm2835_rng_priv* %47, i32 %48)
  %50 = sext i32 %49 to i64
  %51 = load i8*, i8** %7, align 8
  %52 = bitcast i8* %51 to i64*
  %53 = load i64, i64* %13, align 8
  %54 = getelementptr inbounds i64, i64* %52, i64 %53
  store i64 %50, i64* %54, align 8
  br label %55

55:                                               ; preds = %46
  %56 = load i64, i64* %13, align 8
  %57 = add i64 %56, 1
  store i64 %57, i64* %13, align 8
  br label %42

58:                                               ; preds = %42
  %59 = load i64, i64* %12, align 8
  %60 = mul i64 %59, 8
  %61 = trunc i64 %60 to i32
  store i32 %61, i32* %5, align 4
  br label %62

62:                                               ; preds = %58, %27
  %63 = load i32, i32* %5, align 4
  ret i32 %63
}

declare dso_local %struct.bcm2835_rng_priv* @to_rng_priv(%struct.hwrng*) #1

declare dso_local i32 @rng_readl(%struct.bcm2835_rng_priv*, i32) #1

declare dso_local i32 @cpu_relax(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
