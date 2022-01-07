; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/tegra/extr_clk-divider.c_get_div.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/tegra/extr_clk-divider.c_get_div.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tegra_clk_frac_div = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tegra_clk_frac_div*, i64, i64)* @get_div to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_div(%struct.tegra_clk_frac_div* %0, i64 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.tegra_clk_frac_div*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.tegra_clk_frac_div* %0, %struct.tegra_clk_frac_div** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  %9 = load i64, i64* %6, align 8
  %10 = load i64, i64* %7, align 8
  %11 = load %struct.tegra_clk_frac_div*, %struct.tegra_clk_frac_div** %5, align 8
  %12 = getelementptr inbounds %struct.tegra_clk_frac_div, %struct.tegra_clk_frac_div* %11, i32 0, i32 2
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.tegra_clk_frac_div*, %struct.tegra_clk_frac_div** %5, align 8
  %15 = getelementptr inbounds %struct.tegra_clk_frac_div, %struct.tegra_clk_frac_div* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.tegra_clk_frac_div*, %struct.tegra_clk_frac_div** %5, align 8
  %18 = getelementptr inbounds %struct.tegra_clk_frac_div, %struct.tegra_clk_frac_div* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @div_frac_get(i64 %9, i64 %10, i32 %13, i32 %16, i32 %19)
  store i32 %20, i32* %8, align 4
  %21 = load i32, i32* %8, align 4
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %26

24:                                               ; preds = %3
  %25 = load i32, i32* %8, align 4
  store i32 %25, i32* %4, align 4
  br label %26

26:                                               ; preds = %24, %23
  %27 = load i32, i32* %4, align 4
  ret i32 %27
}

declare dso_local i32 @div_frac_get(i64, i64, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
