; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/nxp/extr_clk-lpc32xx.c_clk_ddram_is_enabled.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/nxp/extr_clk-lpc32xx.c_clk_ddram_is_enabled.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_hw = type { i32 }
%struct.lpc32xx_clk = type { i32, i32, i32 }

@clk_regmap = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.clk_hw*)* @clk_ddram_is_enabled to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @clk_ddram_is_enabled(%struct.clk_hw* %0) #0 {
  %2 = alloca %struct.clk_hw*, align 8
  %3 = alloca %struct.lpc32xx_clk*, align 8
  %4 = alloca i32, align 4
  store %struct.clk_hw* %0, %struct.clk_hw** %2, align 8
  %5 = load %struct.clk_hw*, %struct.clk_hw** %2, align 8
  %6 = call %struct.lpc32xx_clk* @to_lpc32xx_clk(%struct.clk_hw* %5)
  store %struct.lpc32xx_clk* %6, %struct.lpc32xx_clk** %3, align 8
  %7 = load i32, i32* @clk_regmap, align 4
  %8 = load %struct.lpc32xx_clk*, %struct.lpc32xx_clk** %3, align 8
  %9 = getelementptr inbounds %struct.lpc32xx_clk, %struct.lpc32xx_clk* %8, i32 0, i32 2
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @regmap_read(i32 %7, i32 %10, i32* %4)
  %12 = load %struct.lpc32xx_clk*, %struct.lpc32xx_clk** %3, align 8
  %13 = getelementptr inbounds %struct.lpc32xx_clk, %struct.lpc32xx_clk* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.lpc32xx_clk*, %struct.lpc32xx_clk** %3, align 8
  %16 = getelementptr inbounds %struct.lpc32xx_clk, %struct.lpc32xx_clk* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = or i32 %14, %17
  %19 = load i32, i32* %4, align 4
  %20 = and i32 %19, %18
  store i32 %20, i32* %4, align 4
  %21 = load i32, i32* %4, align 4
  %22 = call i32 @BIT(i32 7)
  %23 = call i32 @BIT(i32 0)
  %24 = or i32 %22, %23
  %25 = icmp eq i32 %21, %24
  br i1 %25, label %32, label %26

26:                                               ; preds = %1
  %27 = load i32, i32* %4, align 4
  %28 = call i32 @BIT(i32 8)
  %29 = call i32 @BIT(i32 1)
  %30 = or i32 %28, %29
  %31 = icmp eq i32 %27, %30
  br label %32

32:                                               ; preds = %26, %1
  %33 = phi i1 [ true, %1 ], [ %31, %26 ]
  %34 = zext i1 %33 to i32
  ret i32 %34
}

declare dso_local %struct.lpc32xx_clk* @to_lpc32xx_clk(%struct.clk_hw*) #1

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

declare dso_local i32 @BIT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
