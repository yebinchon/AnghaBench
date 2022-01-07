; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/actions/extr_owl-pll.c_owl_pll_is_enabled.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/actions/extr_owl-pll.c_owl_pll_is_enabled.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_hw = type { i32 }
%struct.owl_pll = type { %struct.owl_clk_common, %struct.owl_pll_hw }
%struct.owl_clk_common = type { i32 }
%struct.owl_pll_hw = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.clk_hw*)* @owl_pll_is_enabled to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @owl_pll_is_enabled(%struct.clk_hw* %0) #0 {
  %2 = alloca %struct.clk_hw*, align 8
  %3 = alloca %struct.owl_pll*, align 8
  %4 = alloca %struct.owl_pll_hw*, align 8
  %5 = alloca %struct.owl_clk_common*, align 8
  %6 = alloca i32, align 4
  store %struct.clk_hw* %0, %struct.clk_hw** %2, align 8
  %7 = load %struct.clk_hw*, %struct.clk_hw** %2, align 8
  %8 = call %struct.owl_pll* @hw_to_owl_pll(%struct.clk_hw* %7)
  store %struct.owl_pll* %8, %struct.owl_pll** %3, align 8
  %9 = load %struct.owl_pll*, %struct.owl_pll** %3, align 8
  %10 = getelementptr inbounds %struct.owl_pll, %struct.owl_pll* %9, i32 0, i32 1
  store %struct.owl_pll_hw* %10, %struct.owl_pll_hw** %4, align 8
  %11 = load %struct.owl_pll*, %struct.owl_pll** %3, align 8
  %12 = getelementptr inbounds %struct.owl_pll, %struct.owl_pll* %11, i32 0, i32 0
  store %struct.owl_clk_common* %12, %struct.owl_clk_common** %5, align 8
  %13 = load %struct.owl_clk_common*, %struct.owl_clk_common** %5, align 8
  %14 = getelementptr inbounds %struct.owl_clk_common, %struct.owl_clk_common* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.owl_pll_hw*, %struct.owl_pll_hw** %4, align 8
  %17 = getelementptr inbounds %struct.owl_pll_hw, %struct.owl_pll_hw* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @regmap_read(i32 %15, i32 %18, i32* %6)
  %20 = load i32, i32* %6, align 4
  %21 = load %struct.owl_pll_hw*, %struct.owl_pll_hw** %4, align 8
  %22 = getelementptr inbounds %struct.owl_pll_hw, %struct.owl_pll_hw* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @BIT(i32 %23)
  %25 = and i32 %20, %24
  %26 = icmp ne i32 %25, 0
  %27 = xor i1 %26, true
  %28 = xor i1 %27, true
  %29 = zext i1 %28 to i32
  ret i32 %29
}

declare dso_local %struct.owl_pll* @hw_to_owl_pll(%struct.clk_hw*) #1

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

declare dso_local i32 @BIT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
