; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/actions/extr_owl-divider.c_owl_divider_helper_recalc_rate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/actions/extr_owl-divider.c_owl_divider_helper_recalc_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.owl_clk_common = type { i32, i32 }
%struct.owl_divider_hw = type { i32, i32, i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @owl_divider_helper_recalc_rate(%struct.owl_clk_common* %0, %struct.owl_divider_hw* %1, i64 %2) #0 {
  %4 = alloca %struct.owl_clk_common*, align 8
  %5 = alloca %struct.owl_divider_hw*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.owl_clk_common* %0, %struct.owl_clk_common** %4, align 8
  store %struct.owl_divider_hw* %1, %struct.owl_divider_hw** %5, align 8
  store i64 %2, i64* %6, align 8
  %9 = load %struct.owl_clk_common*, %struct.owl_clk_common** %4, align 8
  %10 = getelementptr inbounds %struct.owl_clk_common, %struct.owl_clk_common* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = load %struct.owl_divider_hw*, %struct.owl_divider_hw** %5, align 8
  %13 = getelementptr inbounds %struct.owl_divider_hw, %struct.owl_divider_hw* %12, i32 0, i32 4
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @regmap_read(i32 %11, i32 %14, i32* %8)
  %16 = load i32, i32* %8, align 4
  %17 = load %struct.owl_divider_hw*, %struct.owl_divider_hw** %5, align 8
  %18 = getelementptr inbounds %struct.owl_divider_hw, %struct.owl_divider_hw* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = lshr i32 %16, %19
  %21 = zext i32 %20 to i64
  store i64 %21, i64* %7, align 8
  %22 = load %struct.owl_divider_hw*, %struct.owl_divider_hw** %5, align 8
  %23 = getelementptr inbounds %struct.owl_divider_hw, %struct.owl_divider_hw* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = shl i32 1, %24
  %26 = sub nsw i32 %25, 1
  %27 = sext i32 %26 to i64
  %28 = load i64, i64* %7, align 8
  %29 = and i64 %28, %27
  store i64 %29, i64* %7, align 8
  %30 = load %struct.owl_clk_common*, %struct.owl_clk_common** %4, align 8
  %31 = getelementptr inbounds %struct.owl_clk_common, %struct.owl_clk_common* %30, i32 0, i32 0
  %32 = load i64, i64* %6, align 8
  %33 = load i64, i64* %7, align 8
  %34 = load %struct.owl_divider_hw*, %struct.owl_divider_hw** %5, align 8
  %35 = getelementptr inbounds %struct.owl_divider_hw, %struct.owl_divider_hw* %34, i32 0, i32 3
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.owl_divider_hw*, %struct.owl_divider_hw** %5, align 8
  %38 = getelementptr inbounds %struct.owl_divider_hw, %struct.owl_divider_hw* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.owl_divider_hw*, %struct.owl_divider_hw** %5, align 8
  %41 = getelementptr inbounds %struct.owl_divider_hw, %struct.owl_divider_hw* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = call i64 @divider_recalc_rate(i32* %31, i64 %32, i64 %33, i32 %36, i32 %39, i32 %42)
  ret i64 %43
}

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

declare dso_local i64 @divider_recalc_rate(i32*, i64, i64, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
