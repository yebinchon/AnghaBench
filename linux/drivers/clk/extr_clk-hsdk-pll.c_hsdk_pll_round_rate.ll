; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/extr_clk-hsdk-pll.c_hsdk_pll_round_rate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/extr_clk-hsdk-pll.c_hsdk_pll_round_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_hw = type { i32 }
%struct.hsdk_pll_clk = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.hsdk_pll_cfg* }
%struct.hsdk_pll_cfg = type { i64 }

@EINVAL = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [23 x i8] c"chosen best rate: %lu\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.clk_hw*, i64, i64*)* @hsdk_pll_round_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @hsdk_pll_round_rate(%struct.clk_hw* %0, i64 %1, i64* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.clk_hw*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca %struct.hsdk_pll_clk*, align 8
  %11 = alloca %struct.hsdk_pll_cfg*, align 8
  store %struct.clk_hw* %0, %struct.clk_hw** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64* %2, i64** %7, align 8
  %12 = load %struct.clk_hw*, %struct.clk_hw** %5, align 8
  %13 = call %struct.hsdk_pll_clk* @to_hsdk_pll_clk(%struct.clk_hw* %12)
  store %struct.hsdk_pll_clk* %13, %struct.hsdk_pll_clk** %10, align 8
  %14 = load %struct.hsdk_pll_clk*, %struct.hsdk_pll_clk** %10, align 8
  %15 = getelementptr inbounds %struct.hsdk_pll_clk, %struct.hsdk_pll_clk* %14, i32 0, i32 1
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load %struct.hsdk_pll_cfg*, %struct.hsdk_pll_cfg** %17, align 8
  store %struct.hsdk_pll_cfg* %18, %struct.hsdk_pll_cfg** %11, align 8
  %19 = load %struct.hsdk_pll_cfg*, %struct.hsdk_pll_cfg** %11, align 8
  %20 = getelementptr inbounds %struct.hsdk_pll_cfg, %struct.hsdk_pll_cfg* %19, i64 0
  %21 = getelementptr inbounds %struct.hsdk_pll_cfg, %struct.hsdk_pll_cfg* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp eq i64 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %3
  %25 = load i64, i64* @EINVAL, align 8
  %26 = sub nsw i64 0, %25
  store i64 %26, i64* %4, align 8
  br label %73

27:                                               ; preds = %3
  %28 = load %struct.hsdk_pll_cfg*, %struct.hsdk_pll_cfg** %11, align 8
  %29 = getelementptr inbounds %struct.hsdk_pll_cfg, %struct.hsdk_pll_cfg* %28, i64 0
  %30 = getelementptr inbounds %struct.hsdk_pll_cfg, %struct.hsdk_pll_cfg* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  store i64 %31, i64* %9, align 8
  store i32 1, i32* %8, align 4
  br label %32

32:                                               ; preds = %63, %27
  %33 = load %struct.hsdk_pll_cfg*, %struct.hsdk_pll_cfg** %11, align 8
  %34 = load i32, i32* %8, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.hsdk_pll_cfg, %struct.hsdk_pll_cfg* %33, i64 %35
  %37 = getelementptr inbounds %struct.hsdk_pll_cfg, %struct.hsdk_pll_cfg* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %66

40:                                               ; preds = %32
  %41 = load i64, i64* %6, align 8
  %42 = load %struct.hsdk_pll_cfg*, %struct.hsdk_pll_cfg** %11, align 8
  %43 = load i32, i32* %8, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds %struct.hsdk_pll_cfg, %struct.hsdk_pll_cfg* %42, i64 %44
  %46 = getelementptr inbounds %struct.hsdk_pll_cfg, %struct.hsdk_pll_cfg* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = sub i64 %41, %47
  %49 = call i64 @abs(i64 %48)
  %50 = load i64, i64* %6, align 8
  %51 = load i64, i64* %9, align 8
  %52 = sub i64 %50, %51
  %53 = call i64 @abs(i64 %52)
  %54 = icmp slt i64 %49, %53
  br i1 %54, label %55, label %62

55:                                               ; preds = %40
  %56 = load %struct.hsdk_pll_cfg*, %struct.hsdk_pll_cfg** %11, align 8
  %57 = load i32, i32* %8, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds %struct.hsdk_pll_cfg, %struct.hsdk_pll_cfg* %56, i64 %58
  %60 = getelementptr inbounds %struct.hsdk_pll_cfg, %struct.hsdk_pll_cfg* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  store i64 %61, i64* %9, align 8
  br label %62

62:                                               ; preds = %55, %40
  br label %63

63:                                               ; preds = %62
  %64 = load i32, i32* %8, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %8, align 4
  br label %32

66:                                               ; preds = %32
  %67 = load %struct.hsdk_pll_clk*, %struct.hsdk_pll_clk** %10, align 8
  %68 = getelementptr inbounds %struct.hsdk_pll_clk, %struct.hsdk_pll_clk* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = load i64, i64* %9, align 8
  %71 = call i32 @dev_dbg(i32 %69, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i64 %70)
  %72 = load i64, i64* %9, align 8
  store i64 %72, i64* %4, align 8
  br label %73

73:                                               ; preds = %66, %24
  %74 = load i64, i64* %4, align 8
  ret i64 %74
}

declare dso_local %struct.hsdk_pll_clk* @to_hsdk_pll_clk(%struct.clk_hw*) #1

declare dso_local i64 @abs(i64) #1

declare dso_local i32 @dev_dbg(i32, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
