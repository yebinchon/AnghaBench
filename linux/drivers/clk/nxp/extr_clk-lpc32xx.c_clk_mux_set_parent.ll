; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/nxp/extr_clk-lpc32xx.c_clk_mux_set_parent.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/nxp/extr_clk-lpc32xx.c_clk_mux_set_parent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_hw = type { i32 }
%struct.lpc32xx_clk_mux = type { i64*, i32, i32, i32 }

@clk_regmap = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.clk_hw*, i64)* @clk_mux_set_parent to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @clk_mux_set_parent(%struct.clk_hw* %0, i64 %1) #0 {
  %3 = alloca %struct.clk_hw*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.lpc32xx_clk_mux*, align 8
  store %struct.clk_hw* %0, %struct.clk_hw** %3, align 8
  store i64 %1, i64* %4, align 8
  %6 = load %struct.clk_hw*, %struct.clk_hw** %3, align 8
  %7 = call %struct.lpc32xx_clk_mux* @to_lpc32xx_mux(%struct.clk_hw* %6)
  store %struct.lpc32xx_clk_mux* %7, %struct.lpc32xx_clk_mux** %5, align 8
  %8 = load %struct.lpc32xx_clk_mux*, %struct.lpc32xx_clk_mux** %5, align 8
  %9 = getelementptr inbounds %struct.lpc32xx_clk_mux, %struct.lpc32xx_clk_mux* %8, i32 0, i32 0
  %10 = load i64*, i64** %9, align 8
  %11 = icmp ne i64* %10, null
  br i1 %11, label %12, label %19

12:                                               ; preds = %2
  %13 = load %struct.lpc32xx_clk_mux*, %struct.lpc32xx_clk_mux** %5, align 8
  %14 = getelementptr inbounds %struct.lpc32xx_clk_mux, %struct.lpc32xx_clk_mux* %13, i32 0, i32 0
  %15 = load i64*, i64** %14, align 8
  %16 = load i64, i64* %4, align 8
  %17 = getelementptr inbounds i64, i64* %15, i64 %16
  %18 = load i64, i64* %17, align 8
  store i64 %18, i64* %4, align 8
  br label %19

19:                                               ; preds = %12, %2
  %20 = load i32, i32* @clk_regmap, align 4
  %21 = load %struct.lpc32xx_clk_mux*, %struct.lpc32xx_clk_mux** %5, align 8
  %22 = getelementptr inbounds %struct.lpc32xx_clk_mux, %struct.lpc32xx_clk_mux* %21, i32 0, i32 3
  %23 = load i32, i32* %22, align 8
  %24 = load %struct.lpc32xx_clk_mux*, %struct.lpc32xx_clk_mux** %5, align 8
  %25 = getelementptr inbounds %struct.lpc32xx_clk_mux, %struct.lpc32xx_clk_mux* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 8
  %27 = load %struct.lpc32xx_clk_mux*, %struct.lpc32xx_clk_mux** %5, align 8
  %28 = getelementptr inbounds %struct.lpc32xx_clk_mux, %struct.lpc32xx_clk_mux* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 4
  %30 = shl i32 %26, %29
  %31 = load i64, i64* %4, align 8
  %32 = load %struct.lpc32xx_clk_mux*, %struct.lpc32xx_clk_mux** %5, align 8
  %33 = getelementptr inbounds %struct.lpc32xx_clk_mux, %struct.lpc32xx_clk_mux* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 4
  %35 = zext i32 %34 to i64
  %36 = shl i64 %31, %35
  %37 = call i32 @regmap_update_bits(i32 %20, i32 %23, i32 %30, i64 %36)
  ret i32 %37
}

declare dso_local %struct.lpc32xx_clk_mux* @to_lpc32xx_mux(%struct.clk_hw*) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
