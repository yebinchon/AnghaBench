; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/zte/extr_clk.c_zx_pll_set_rate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/zte/extr_clk.c_zx_pll_set_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_hw = type { i32 }
%struct.clk_zx_pll = type { i64, %struct.zx_pll_config* }
%struct.zx_pll_config = type { i32, i32 }

@CFG0_CFG1_OFFSET = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.clk_hw*, i64, i64)* @zx_pll_set_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zx_pll_set_rate(%struct.clk_hw* %0, i64 %1, i64 %2) #0 {
  %4 = alloca %struct.clk_hw*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.clk_zx_pll*, align 8
  %8 = alloca %struct.zx_pll_config*, align 8
  %9 = alloca i32, align 4
  store %struct.clk_hw* %0, %struct.clk_hw** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  %10 = load %struct.clk_hw*, %struct.clk_hw** %4, align 8
  %11 = call %struct.clk_zx_pll* @to_clk_zx_pll(%struct.clk_hw* %10)
  store %struct.clk_zx_pll* %11, %struct.clk_zx_pll** %7, align 8
  %12 = load %struct.clk_zx_pll*, %struct.clk_zx_pll** %7, align 8
  %13 = load i64, i64* %5, align 8
  %14 = call i32 @rate_to_idx(%struct.clk_zx_pll* %12, i64 %13)
  store i32 %14, i32* %9, align 4
  %15 = load %struct.clk_zx_pll*, %struct.clk_zx_pll** %7, align 8
  %16 = getelementptr inbounds %struct.clk_zx_pll, %struct.clk_zx_pll* %15, i32 0, i32 1
  %17 = load %struct.zx_pll_config*, %struct.zx_pll_config** %16, align 8
  %18 = load i32, i32* %9, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds %struct.zx_pll_config, %struct.zx_pll_config* %17, i64 %19
  store %struct.zx_pll_config* %20, %struct.zx_pll_config** %8, align 8
  %21 = load %struct.zx_pll_config*, %struct.zx_pll_config** %8, align 8
  %22 = getelementptr inbounds %struct.zx_pll_config, %struct.zx_pll_config* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.clk_zx_pll*, %struct.clk_zx_pll** %7, align 8
  %25 = getelementptr inbounds %struct.clk_zx_pll, %struct.clk_zx_pll* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = call i32 @writel_relaxed(i32 %23, i64 %26)
  %28 = load %struct.zx_pll_config*, %struct.zx_pll_config** %8, align 8
  %29 = getelementptr inbounds %struct.zx_pll_config, %struct.zx_pll_config* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.clk_zx_pll*, %struct.clk_zx_pll** %7, align 8
  %32 = getelementptr inbounds %struct.clk_zx_pll, %struct.clk_zx_pll* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @CFG0_CFG1_OFFSET, align 8
  %35 = add nsw i64 %33, %34
  %36 = call i32 @writel_relaxed(i32 %30, i64 %35)
  ret i32 0
}

declare dso_local %struct.clk_zx_pll* @to_clk_zx_pll(%struct.clk_hw*) #1

declare dso_local i32 @rate_to_idx(%struct.clk_zx_pll*, i64) #1

declare dso_local i32 @writel_relaxed(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
