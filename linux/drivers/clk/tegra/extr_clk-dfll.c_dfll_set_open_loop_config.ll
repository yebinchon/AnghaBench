; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/tegra/extr_clk-dfll.c_dfll_set_open_loop_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/tegra/extr_clk-dfll.c_dfll_set_open_loop_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tegra_dfll = type { i64 }

@DFLL_TUNE_LOW = common dso_local global i64 0, align 8
@DFLL_FREQ_REQ = common dso_local global i32 0, align 4
@DFLL_FREQ_REQ_SCALE_MASK = common dso_local global i32 0, align 4
@DFLL_FREQ_REQ_FORCE_ENABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tegra_dfll*)* @dfll_set_open_loop_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dfll_set_open_loop_config(%struct.tegra_dfll* %0) #0 {
  %2 = alloca %struct.tegra_dfll*, align 8
  %3 = alloca i32, align 4
  store %struct.tegra_dfll* %0, %struct.tegra_dfll** %2, align 8
  %4 = load %struct.tegra_dfll*, %struct.tegra_dfll** %2, align 8
  %5 = getelementptr inbounds %struct.tegra_dfll, %struct.tegra_dfll* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = load i64, i64* @DFLL_TUNE_LOW, align 8
  %8 = icmp ne i64 %6, %7
  br i1 %8, label %9, label %12

9:                                                ; preds = %1
  %10 = load %struct.tegra_dfll*, %struct.tegra_dfll** %2, align 8
  %11 = call i32 @dfll_tune_low(%struct.tegra_dfll* %10)
  br label %12

12:                                               ; preds = %9, %1
  %13 = load %struct.tegra_dfll*, %struct.tegra_dfll** %2, align 8
  %14 = load i32, i32* @DFLL_FREQ_REQ, align 4
  %15 = call i32 @dfll_readl(%struct.tegra_dfll* %13, i32 %14)
  store i32 %15, i32* %3, align 4
  %16 = load i32, i32* @DFLL_FREQ_REQ_SCALE_MASK, align 4
  %17 = load i32, i32* %3, align 4
  %18 = or i32 %17, %16
  store i32 %18, i32* %3, align 4
  %19 = load i32, i32* @DFLL_FREQ_REQ_FORCE_ENABLE, align 4
  %20 = xor i32 %19, -1
  %21 = load i32, i32* %3, align 4
  %22 = and i32 %21, %20
  store i32 %22, i32* %3, align 4
  %23 = load %struct.tegra_dfll*, %struct.tegra_dfll** %2, align 8
  %24 = load i32, i32* %3, align 4
  %25 = load i32, i32* @DFLL_FREQ_REQ, align 4
  %26 = call i32 @dfll_writel(%struct.tegra_dfll* %23, i32 %24, i32 %25)
  %27 = load %struct.tegra_dfll*, %struct.tegra_dfll** %2, align 8
  %28 = call i32 @dfll_wmb(%struct.tegra_dfll* %27)
  ret void
}

declare dso_local i32 @dfll_tune_low(%struct.tegra_dfll*) #1

declare dso_local i32 @dfll_readl(%struct.tegra_dfll*, i32) #1

declare dso_local i32 @dfll_writel(%struct.tegra_dfll*, i32, i32) #1

declare dso_local i32 @dfll_wmb(%struct.tegra_dfll*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
