; ModuleID = '/home/carl/AnghaBench/linux/drivers/char/hw_random/extr_amd-rng.c_amd_rng_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/char/hw_random/extr_amd-rng.c_amd_rng_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hwrng = type { i64 }
%struct.amd768_priv = type { i64 }

@RNGDONE = common dso_local global i64 0, align 8
@RNGDATA = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hwrng*, i8*, i64, i32)* @amd_rng_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @amd_rng_read(%struct.hwrng* %0, i8* %1, i64 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.hwrng*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64*, align 8
  %11 = alloca %struct.amd768_priv*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store %struct.hwrng* %0, %struct.hwrng** %6, align 8
  store i8* %1, i8** %7, align 8
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  %14 = load i8*, i8** %7, align 8
  %15 = bitcast i8* %14 to i64*
  store i64* %15, i64** %10, align 8
  %16 = load %struct.hwrng*, %struct.hwrng** %6, align 8
  %17 = getelementptr inbounds %struct.hwrng, %struct.hwrng* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = inttoptr i64 %18 to %struct.amd768_priv*
  store %struct.amd768_priv* %19, %struct.amd768_priv** %11, align 8
  store i64 0, i64* %12, align 8
  %20 = load i64, i64* %8, align 8
  %21 = udiv i64 %20, 4
  %22 = add i64 %21, 1
  %23 = trunc i64 %22 to i32
  store i32 %23, i32* %13, align 4
  br label %24

24:                                               ; preds = %62, %4
  %25 = load i64, i64* %12, align 8
  %26 = load i64, i64* %8, align 8
  %27 = icmp ult i64 %25, %26
  br i1 %27, label %28, label %63

28:                                               ; preds = %24
  %29 = load %struct.amd768_priv*, %struct.amd768_priv** %11, align 8
  %30 = getelementptr inbounds %struct.amd768_priv, %struct.amd768_priv* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @RNGDONE, align 8
  %33 = add nsw i64 %31, %32
  %34 = call i64 @ioread32(i64 %33)
  %35 = icmp eq i64 %34, 0
  br i1 %35, label %36, label %50

36:                                               ; preds = %28
  %37 = load i32, i32* %9, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %48

39:                                               ; preds = %36
  %40 = call i32 @usleep_range(i32 128, i32 196)
  %41 = load i32, i32* %13, align 4
  %42 = add nsw i32 %41, -1
  store i32 %42, i32* %13, align 4
  %43 = icmp eq i32 %41, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %39
  %45 = load i64, i64* %12, align 8
  %46 = trunc i64 %45 to i32
  store i32 %46, i32* %5, align 4
  br label %66

47:                                               ; preds = %39
  br label %49

48:                                               ; preds = %36
  store i32 0, i32* %5, align 4
  br label %66

49:                                               ; preds = %47
  br label %62

50:                                               ; preds = %28
  %51 = load %struct.amd768_priv*, %struct.amd768_priv** %11, align 8
  %52 = getelementptr inbounds %struct.amd768_priv, %struct.amd768_priv* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* @RNGDATA, align 8
  %55 = add nsw i64 %53, %54
  %56 = call i64 @ioread32(i64 %55)
  %57 = load i64*, i64** %10, align 8
  store i64 %56, i64* %57, align 8
  %58 = load i64*, i64** %10, align 8
  %59 = getelementptr inbounds i64, i64* %58, i32 1
  store i64* %59, i64** %10, align 8
  %60 = load i64, i64* %12, align 8
  %61 = add i64 %60, 4
  store i64 %61, i64* %12, align 8
  br label %62

62:                                               ; preds = %50, %49
  br label %24

63:                                               ; preds = %24
  %64 = load i64, i64* %12, align 8
  %65 = trunc i64 %64 to i32
  store i32 %65, i32* %5, align 4
  br label %66

66:                                               ; preds = %63, %48, %44
  %67 = load i32, i32* %5, align 4
  ret i32 %67
}

declare dso_local i64 @ioread32(i64) #1

declare dso_local i32 @usleep_range(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
