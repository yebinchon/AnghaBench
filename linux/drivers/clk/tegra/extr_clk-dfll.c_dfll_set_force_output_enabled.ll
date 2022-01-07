; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/tegra/extr_clk-dfll.c_dfll_set_force_output_enabled.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/tegra/extr_clk-dfll.c_dfll_set_force_output_enabled.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tegra_dfll = type { i32 }

@DFLL_OUTPUT_FORCE = common dso_local global i32 0, align 4
@DFLL_OUTPUT_FORCE_ENABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tegra_dfll*, i32)* @dfll_set_force_output_enabled to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dfll_set_force_output_enabled(%struct.tegra_dfll* %0, i32 %1) #0 {
  %3 = alloca %struct.tegra_dfll*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.tegra_dfll* %0, %struct.tegra_dfll** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.tegra_dfll*, %struct.tegra_dfll** %3, align 8
  %7 = load i32, i32* @DFLL_OUTPUT_FORCE, align 4
  %8 = call i32 @dfll_readl(%struct.tegra_dfll* %6, i32 %7)
  store i32 %8, i32* %5, align 4
  %9 = load i32, i32* %4, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %15

11:                                               ; preds = %2
  %12 = load i32, i32* @DFLL_OUTPUT_FORCE_ENABLE, align 4
  %13 = load i32, i32* %5, align 4
  %14 = or i32 %13, %12
  store i32 %14, i32* %5, align 4
  br label %20

15:                                               ; preds = %2
  %16 = load i32, i32* @DFLL_OUTPUT_FORCE_ENABLE, align 4
  %17 = xor i32 %16, -1
  %18 = load i32, i32* %5, align 4
  %19 = and i32 %18, %17
  store i32 %19, i32* %5, align 4
  br label %20

20:                                               ; preds = %15, %11
  %21 = load %struct.tegra_dfll*, %struct.tegra_dfll** %3, align 8
  %22 = load i32, i32* %5, align 4
  %23 = load i32, i32* @DFLL_OUTPUT_FORCE, align 4
  %24 = call i32 @dfll_writel(%struct.tegra_dfll* %21, i32 %22, i32 %23)
  %25 = load %struct.tegra_dfll*, %struct.tegra_dfll** %3, align 8
  %26 = call i32 @dfll_wmb(%struct.tegra_dfll* %25)
  ret void
}

declare dso_local i32 @dfll_readl(%struct.tegra_dfll*, i32) #1

declare dso_local i32 @dfll_writel(%struct.tegra_dfll*, i32, i32) #1

declare dso_local i32 @dfll_wmb(%struct.tegra_dfll*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
