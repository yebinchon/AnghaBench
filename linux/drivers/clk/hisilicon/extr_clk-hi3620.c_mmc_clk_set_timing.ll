; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/hisilicon/extr_clk-hi3620.c_mmc_clk_set_timing.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/hisilicon/extr_clk-hi3620.c_mmc_clk_set_timing.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_hw = type { i32 }
%struct.clk_mmc = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@mmc_clk_set_timing.mmc_clk_lock = internal global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.clk_hw*, i64)* @mmc_clk_set_timing to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mmc_clk_set_timing(%struct.clk_hw* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.clk_hw*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.clk_mmc*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.clk_hw* %0, %struct.clk_hw** %4, align 8
  store i64 %1, i64* %5, align 8
  %12 = load %struct.clk_hw*, %struct.clk_hw** %4, align 8
  %13 = call %struct.clk_mmc* @to_mmc(%struct.clk_hw* %12)
  store %struct.clk_mmc* %13, %struct.clk_mmc** %6, align 8
  %14 = load i64, i64* %5, align 8
  switch i64 %14, label %20 [
    i64 13000000, label %15
    i64 25000000, label %16
    i64 50000000, label %17
    i64 100000000, label %18
    i64 180000000, label %19
  ]

15:                                               ; preds = %2
  store i32 3, i32* %8, align 4
  store i32 1, i32* %9, align 4
  store i32 1, i32* %10, align 4
  br label %23

16:                                               ; preds = %2
  store i32 13, i32* %8, align 4
  store i32 6, i32* %9, align 4
  store i32 6, i32* %10, align 4
  br label %23

17:                                               ; preds = %2
  store i32 3, i32* %8, align 4
  store i32 6, i32* %9, align 4
  store i32 6, i32* %10, align 4
  br label %23

18:                                               ; preds = %2
  store i32 6, i32* %8, align 4
  store i32 4, i32* %9, align 4
  store i32 6, i32* %10, align 4
  br label %23

19:                                               ; preds = %2
  store i32 6, i32* %8, align 4
  store i32 4, i32* %9, align 4
  store i32 7, i32* %10, align 4
  br label %23

20:                                               ; preds = %2
  %21 = load i32, i32* @EINVAL, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %3, align 4
  br label %113

23:                                               ; preds = %19, %18, %17, %16, %15
  %24 = load i64, i64* %7, align 8
  %25 = call i32 @spin_lock_irqsave(i32* @mmc_clk_set_timing.mmc_clk_lock, i64 %24)
  %26 = load %struct.clk_mmc*, %struct.clk_mmc** %6, align 8
  %27 = getelementptr inbounds %struct.clk_mmc, %struct.clk_mmc* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @readl_relaxed(i32 %28)
  store i32 %29, i32* %11, align 4
  %30 = load %struct.clk_mmc*, %struct.clk_mmc** %6, align 8
  %31 = getelementptr inbounds %struct.clk_mmc, %struct.clk_mmc* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = shl i32 1, %32
  %34 = xor i32 %33, -1
  %35 = load i32, i32* %11, align 4
  %36 = and i32 %35, %34
  store i32 %36, i32* %11, align 4
  %37 = load i32, i32* %11, align 4
  %38 = load %struct.clk_mmc*, %struct.clk_mmc** %6, align 8
  %39 = getelementptr inbounds %struct.clk_mmc, %struct.clk_mmc* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @writel_relaxed(i32 %37, i32 %40)
  %42 = load %struct.clk_mmc*, %struct.clk_mmc** %6, align 8
  %43 = getelementptr inbounds %struct.clk_mmc, %struct.clk_mmc* %42, i32 0, i32 8
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @readl_relaxed(i32 %44)
  store i32 %45, i32* %11, align 4
  %46 = load i32, i32* %11, align 4
  %47 = load i32, i32* %8, align 4
  %48 = load %struct.clk_mmc*, %struct.clk_mmc** %6, align 8
  %49 = getelementptr inbounds %struct.clk_mmc, %struct.clk_mmc* %48, i32 0, i32 10
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.clk_mmc*, %struct.clk_mmc** %6, align 8
  %52 = getelementptr inbounds %struct.clk_mmc, %struct.clk_mmc* %51, i32 0, i32 9
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @mmc_clk_delay(i32 %46, i32 %47, i32 %50, i32 %53)
  store i32 %54, i32* %11, align 4
  %55 = load i32, i32* %11, align 4
  %56 = load %struct.clk_mmc*, %struct.clk_mmc** %6, align 8
  %57 = getelementptr inbounds %struct.clk_mmc, %struct.clk_mmc* %56, i32 0, i32 8
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @writel_relaxed(i32 %55, i32 %58)
  %60 = load %struct.clk_mmc*, %struct.clk_mmc** %6, align 8
  %61 = getelementptr inbounds %struct.clk_mmc, %struct.clk_mmc* %60, i32 0, i32 5
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @readl_relaxed(i32 %62)
  store i32 %63, i32* %11, align 4
  %64 = load i32, i32* %11, align 4
  %65 = load i32, i32* %9, align 4
  %66 = load %struct.clk_mmc*, %struct.clk_mmc** %6, align 8
  %67 = getelementptr inbounds %struct.clk_mmc, %struct.clk_mmc* %66, i32 0, i32 7
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.clk_mmc*, %struct.clk_mmc** %6, align 8
  %70 = getelementptr inbounds %struct.clk_mmc, %struct.clk_mmc* %69, i32 0, i32 6
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @mmc_clk_delay(i32 %64, i32 %65, i32 %68, i32 %71)
  store i32 %72, i32* %11, align 4
  %73 = load i32, i32* %11, align 4
  %74 = load %struct.clk_mmc*, %struct.clk_mmc** %6, align 8
  %75 = getelementptr inbounds %struct.clk_mmc, %struct.clk_mmc* %74, i32 0, i32 5
  %76 = load i32, i32* %75, align 4
  %77 = call i32 @writel_relaxed(i32 %73, i32 %76)
  %78 = load %struct.clk_mmc*, %struct.clk_mmc** %6, align 8
  %79 = getelementptr inbounds %struct.clk_mmc, %struct.clk_mmc* %78, i32 0, i32 2
  %80 = load i32, i32* %79, align 4
  %81 = call i32 @readl_relaxed(i32 %80)
  store i32 %81, i32* %11, align 4
  %82 = load i32, i32* %11, align 4
  %83 = load i32, i32* %10, align 4
  %84 = load %struct.clk_mmc*, %struct.clk_mmc** %6, align 8
  %85 = getelementptr inbounds %struct.clk_mmc, %struct.clk_mmc* %84, i32 0, i32 4
  %86 = load i32, i32* %85, align 4
  %87 = load %struct.clk_mmc*, %struct.clk_mmc** %6, align 8
  %88 = getelementptr inbounds %struct.clk_mmc, %struct.clk_mmc* %87, i32 0, i32 3
  %89 = load i32, i32* %88, align 4
  %90 = call i32 @mmc_clk_delay(i32 %82, i32 %83, i32 %86, i32 %89)
  store i32 %90, i32* %11, align 4
  %91 = load i32, i32* %11, align 4
  %92 = load %struct.clk_mmc*, %struct.clk_mmc** %6, align 8
  %93 = getelementptr inbounds %struct.clk_mmc, %struct.clk_mmc* %92, i32 0, i32 2
  %94 = load i32, i32* %93, align 4
  %95 = call i32 @writel_relaxed(i32 %91, i32 %94)
  %96 = load %struct.clk_mmc*, %struct.clk_mmc** %6, align 8
  %97 = getelementptr inbounds %struct.clk_mmc, %struct.clk_mmc* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = call i32 @readl_relaxed(i32 %98)
  store i32 %99, i32* %11, align 4
  %100 = load %struct.clk_mmc*, %struct.clk_mmc** %6, align 8
  %101 = getelementptr inbounds %struct.clk_mmc, %struct.clk_mmc* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = shl i32 1, %102
  %104 = load i32, i32* %11, align 4
  %105 = or i32 %104, %103
  store i32 %105, i32* %11, align 4
  %106 = load i32, i32* %11, align 4
  %107 = load %struct.clk_mmc*, %struct.clk_mmc** %6, align 8
  %108 = getelementptr inbounds %struct.clk_mmc, %struct.clk_mmc* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 4
  %110 = call i32 @writel_relaxed(i32 %106, i32 %109)
  %111 = load i64, i64* %7, align 8
  %112 = call i32 @spin_unlock_irqrestore(i32* @mmc_clk_set_timing.mmc_clk_lock, i64 %111)
  store i32 0, i32* %3, align 4
  br label %113

113:                                              ; preds = %23, %20
  %114 = load i32, i32* %3, align 4
  ret i32 %114
}

declare dso_local %struct.clk_mmc* @to_mmc(%struct.clk_hw*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @readl_relaxed(i32) #1

declare dso_local i32 @writel_relaxed(i32, i32) #1

declare dso_local i32 @mmc_clk_delay(i32, i32, i32, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
