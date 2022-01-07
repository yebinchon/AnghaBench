; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/zte/extr_clk.c_zx_pll_disable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/zte/extr_clk.c_zx_pll_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_hw = type { i32 }
%struct.clk_zx_pll = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.clk_hw*)* @zx_pll_disable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @zx_pll_disable(%struct.clk_hw* %0) #0 {
  %2 = alloca %struct.clk_hw*, align 8
  %3 = alloca %struct.clk_zx_pll*, align 8
  %4 = alloca i32, align 4
  store %struct.clk_hw* %0, %struct.clk_hw** %2, align 8
  %5 = load %struct.clk_hw*, %struct.clk_hw** %2, align 8
  %6 = call %struct.clk_zx_pll* @to_clk_zx_pll(%struct.clk_hw* %5)
  store %struct.clk_zx_pll* %6, %struct.clk_zx_pll** %3, align 8
  %7 = load %struct.clk_zx_pll*, %struct.clk_zx_pll** %3, align 8
  %8 = getelementptr inbounds %struct.clk_zx_pll, %struct.clk_zx_pll* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = icmp sgt i32 %9, 31
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  br label %27

12:                                               ; preds = %1
  %13 = load %struct.clk_zx_pll*, %struct.clk_zx_pll** %3, align 8
  %14 = getelementptr inbounds %struct.clk_zx_pll, %struct.clk_zx_pll* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @readl_relaxed(i32 %15)
  store i32 %16, i32* %4, align 4
  %17 = load i32, i32* %4, align 4
  %18 = load %struct.clk_zx_pll*, %struct.clk_zx_pll** %3, align 8
  %19 = getelementptr inbounds %struct.clk_zx_pll, %struct.clk_zx_pll* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @BIT(i32 %20)
  %22 = or i32 %17, %21
  %23 = load %struct.clk_zx_pll*, %struct.clk_zx_pll** %3, align 8
  %24 = getelementptr inbounds %struct.clk_zx_pll, %struct.clk_zx_pll* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @writel_relaxed(i32 %22, i32 %25)
  br label %27

27:                                               ; preds = %12, %11
  ret void
}

declare dso_local %struct.clk_zx_pll* @to_clk_zx_pll(%struct.clk_hw*) #1

declare dso_local i32 @readl_relaxed(i32) #1

declare dso_local i32 @writel_relaxed(i32, i32) #1

declare dso_local i32 @BIT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
