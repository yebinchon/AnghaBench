; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/axs10x/extr_pll_clock.c_axs10x_pll_round_rate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/axs10x/extr_pll_clock.c_axs10x_pll_round_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_hw = type { i32 }
%struct.axs10x_pll_clk = type { %struct.axs10x_pll_cfg* }
%struct.axs10x_pll_cfg = type { i64 }

@EINVAL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.clk_hw*, i64, i64*)* @axs10x_pll_round_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @axs10x_pll_round_rate(%struct.clk_hw* %0, i64 %1, i64* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.clk_hw*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca %struct.axs10x_pll_clk*, align 8
  %11 = alloca %struct.axs10x_pll_cfg*, align 8
  store %struct.clk_hw* %0, %struct.clk_hw** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64* %2, i64** %7, align 8
  %12 = load %struct.clk_hw*, %struct.clk_hw** %5, align 8
  %13 = call %struct.axs10x_pll_clk* @to_axs10x_pll_clk(%struct.clk_hw* %12)
  store %struct.axs10x_pll_clk* %13, %struct.axs10x_pll_clk** %10, align 8
  %14 = load %struct.axs10x_pll_clk*, %struct.axs10x_pll_clk** %10, align 8
  %15 = getelementptr inbounds %struct.axs10x_pll_clk, %struct.axs10x_pll_clk* %14, i32 0, i32 0
  %16 = load %struct.axs10x_pll_cfg*, %struct.axs10x_pll_cfg** %15, align 8
  store %struct.axs10x_pll_cfg* %16, %struct.axs10x_pll_cfg** %11, align 8
  %17 = load %struct.axs10x_pll_cfg*, %struct.axs10x_pll_cfg** %11, align 8
  %18 = getelementptr inbounds %struct.axs10x_pll_cfg, %struct.axs10x_pll_cfg* %17, i64 0
  %19 = getelementptr inbounds %struct.axs10x_pll_cfg, %struct.axs10x_pll_cfg* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp eq i64 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %3
  %23 = load i64, i64* @EINVAL, align 8
  %24 = sub nsw i64 0, %23
  store i64 %24, i64* %4, align 8
  br label %66

25:                                               ; preds = %3
  %26 = load %struct.axs10x_pll_cfg*, %struct.axs10x_pll_cfg** %11, align 8
  %27 = getelementptr inbounds %struct.axs10x_pll_cfg, %struct.axs10x_pll_cfg* %26, i64 0
  %28 = getelementptr inbounds %struct.axs10x_pll_cfg, %struct.axs10x_pll_cfg* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  store i64 %29, i64* %9, align 8
  store i32 1, i32* %8, align 4
  br label %30

30:                                               ; preds = %61, %25
  %31 = load %struct.axs10x_pll_cfg*, %struct.axs10x_pll_cfg** %11, align 8
  %32 = load i32, i32* %8, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.axs10x_pll_cfg, %struct.axs10x_pll_cfg* %31, i64 %33
  %35 = getelementptr inbounds %struct.axs10x_pll_cfg, %struct.axs10x_pll_cfg* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %64

38:                                               ; preds = %30
  %39 = load i64, i64* %6, align 8
  %40 = load %struct.axs10x_pll_cfg*, %struct.axs10x_pll_cfg** %11, align 8
  %41 = load i32, i32* %8, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.axs10x_pll_cfg, %struct.axs10x_pll_cfg* %40, i64 %42
  %44 = getelementptr inbounds %struct.axs10x_pll_cfg, %struct.axs10x_pll_cfg* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = sub i64 %39, %45
  %47 = call i64 @abs(i64 %46)
  %48 = load i64, i64* %6, align 8
  %49 = load i64, i64* %9, align 8
  %50 = sub i64 %48, %49
  %51 = call i64 @abs(i64 %50)
  %52 = icmp slt i64 %47, %51
  br i1 %52, label %53, label %60

53:                                               ; preds = %38
  %54 = load %struct.axs10x_pll_cfg*, %struct.axs10x_pll_cfg** %11, align 8
  %55 = load i32, i32* %8, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds %struct.axs10x_pll_cfg, %struct.axs10x_pll_cfg* %54, i64 %56
  %58 = getelementptr inbounds %struct.axs10x_pll_cfg, %struct.axs10x_pll_cfg* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  store i64 %59, i64* %9, align 8
  br label %60

60:                                               ; preds = %53, %38
  br label %61

61:                                               ; preds = %60
  %62 = load i32, i32* %8, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %8, align 4
  br label %30

64:                                               ; preds = %30
  %65 = load i64, i64* %9, align 8
  store i64 %65, i64* %4, align 8
  br label %66

66:                                               ; preds = %64, %22
  %67 = load i64, i64* %4, align 8
  ret i64 %67
}

declare dso_local %struct.axs10x_pll_clk* @to_axs10x_pll_clk(%struct.clk_hw*) #1

declare dso_local i64 @abs(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
