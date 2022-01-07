; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/extr_clk-hsdk-pll.c_hsdk_pll_set_rate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/extr_clk-hsdk-pll.c_hsdk_pll_set_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_hw = type { i32 }
%struct.hsdk_pll_clk = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.hsdk_pll_clk*, i64, %struct.hsdk_pll_cfg*)*, %struct.hsdk_pll_cfg* }
%struct.hsdk_pll_cfg = type { i64 }

@.str = private unnamed_addr constant [35 x i8] c"invalid rate=%ld, parent_rate=%ld\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.clk_hw*, i64, i64)* @hsdk_pll_set_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hsdk_pll_set_rate(%struct.clk_hw* %0, i64 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.clk_hw*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.hsdk_pll_clk*, align 8
  %10 = alloca %struct.hsdk_pll_cfg*, align 8
  store %struct.clk_hw* %0, %struct.clk_hw** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  %11 = load %struct.clk_hw*, %struct.clk_hw** %5, align 8
  %12 = call %struct.hsdk_pll_clk* @to_hsdk_pll_clk(%struct.clk_hw* %11)
  store %struct.hsdk_pll_clk* %12, %struct.hsdk_pll_clk** %9, align 8
  %13 = load %struct.hsdk_pll_clk*, %struct.hsdk_pll_clk** %9, align 8
  %14 = getelementptr inbounds %struct.hsdk_pll_clk, %struct.hsdk_pll_clk* %13, i32 0, i32 1
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 1
  %17 = load %struct.hsdk_pll_cfg*, %struct.hsdk_pll_cfg** %16, align 8
  store %struct.hsdk_pll_cfg* %17, %struct.hsdk_pll_cfg** %10, align 8
  store i32 0, i32* %8, align 4
  br label %18

18:                                               ; preds = %49, %3
  %19 = load %struct.hsdk_pll_cfg*, %struct.hsdk_pll_cfg** %10, align 8
  %20 = load i32, i32* %8, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.hsdk_pll_cfg, %struct.hsdk_pll_cfg* %19, i64 %21
  %23 = getelementptr inbounds %struct.hsdk_pll_cfg, %struct.hsdk_pll_cfg* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %52

26:                                               ; preds = %18
  %27 = load %struct.hsdk_pll_cfg*, %struct.hsdk_pll_cfg** %10, align 8
  %28 = load i32, i32* %8, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.hsdk_pll_cfg, %struct.hsdk_pll_cfg* %27, i64 %29
  %31 = getelementptr inbounds %struct.hsdk_pll_cfg, %struct.hsdk_pll_cfg* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* %6, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %48

35:                                               ; preds = %26
  %36 = load %struct.hsdk_pll_clk*, %struct.hsdk_pll_clk** %9, align 8
  %37 = getelementptr inbounds %struct.hsdk_pll_clk, %struct.hsdk_pll_clk* %36, i32 0, i32 1
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = load i32 (%struct.hsdk_pll_clk*, i64, %struct.hsdk_pll_cfg*)*, i32 (%struct.hsdk_pll_clk*, i64, %struct.hsdk_pll_cfg*)** %39, align 8
  %41 = load %struct.hsdk_pll_clk*, %struct.hsdk_pll_clk** %9, align 8
  %42 = load i64, i64* %6, align 8
  %43 = load %struct.hsdk_pll_cfg*, %struct.hsdk_pll_cfg** %10, align 8
  %44 = load i32, i32* %8, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.hsdk_pll_cfg, %struct.hsdk_pll_cfg* %43, i64 %45
  %47 = call i32 %40(%struct.hsdk_pll_clk* %41, i64 %42, %struct.hsdk_pll_cfg* %46)
  store i32 %47, i32* %4, align 4
  br label %61

48:                                               ; preds = %26
  br label %49

49:                                               ; preds = %48
  %50 = load i32, i32* %8, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %8, align 4
  br label %18

52:                                               ; preds = %18
  %53 = load %struct.hsdk_pll_clk*, %struct.hsdk_pll_clk** %9, align 8
  %54 = getelementptr inbounds %struct.hsdk_pll_clk, %struct.hsdk_pll_clk* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = load i64, i64* %6, align 8
  %57 = load i64, i64* %7, align 8
  %58 = call i32 @dev_err(i32 %55, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i64 %56, i64 %57)
  %59 = load i32, i32* @EINVAL, align 4
  %60 = sub nsw i32 0, %59
  store i32 %60, i32* %4, align 4
  br label %61

61:                                               ; preds = %52, %35
  %62 = load i32, i32* %4, align 4
  ret i32 %62
}

declare dso_local %struct.hsdk_pll_clk* @to_hsdk_pll_clk(%struct.clk_hw*) #1

declare dso_local i32 @dev_err(i32, i8*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
