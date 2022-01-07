; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/nxp/extr_clk-lpc32xx.c_clk_mask_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/nxp/extr_clk-lpc32xx.c_clk_mask_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_hw = type { i32 }
%struct.lpc32xx_clk = type { i32, i32, i32, i32, i32 }

@clk_regmap = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.clk_hw*)* @clk_mask_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @clk_mask_enable(%struct.clk_hw* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.clk_hw*, align 8
  %4 = alloca %struct.lpc32xx_clk*, align 8
  %5 = alloca i32, align 4
  store %struct.clk_hw* %0, %struct.clk_hw** %3, align 8
  %6 = load %struct.clk_hw*, %struct.clk_hw** %3, align 8
  %7 = call %struct.lpc32xx_clk* @to_lpc32xx_clk(%struct.clk_hw* %6)
  store %struct.lpc32xx_clk* %7, %struct.lpc32xx_clk** %4, align 8
  %8 = load i32, i32* @clk_regmap, align 4
  %9 = load %struct.lpc32xx_clk*, %struct.lpc32xx_clk** %4, align 8
  %10 = getelementptr inbounds %struct.lpc32xx_clk, %struct.lpc32xx_clk* %9, i32 0, i32 4
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @regmap_read(i32 %8, i32 %11, i32* %5)
  %13 = load %struct.lpc32xx_clk*, %struct.lpc32xx_clk** %4, align 8
  %14 = getelementptr inbounds %struct.lpc32xx_clk, %struct.lpc32xx_clk* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %30

17:                                               ; preds = %1
  %18 = load i32, i32* %5, align 4
  %19 = load %struct.lpc32xx_clk*, %struct.lpc32xx_clk** %4, align 8
  %20 = getelementptr inbounds %struct.lpc32xx_clk, %struct.lpc32xx_clk* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = and i32 %18, %21
  %23 = load %struct.lpc32xx_clk*, %struct.lpc32xx_clk** %4, align 8
  %24 = getelementptr inbounds %struct.lpc32xx_clk, %struct.lpc32xx_clk* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = icmp eq i32 %22, %25
  br i1 %26, label %27, label %30

27:                                               ; preds = %17
  %28 = load i32, i32* @EBUSY, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %2, align 4
  br label %42

30:                                               ; preds = %17, %1
  %31 = load i32, i32* @clk_regmap, align 4
  %32 = load %struct.lpc32xx_clk*, %struct.lpc32xx_clk** %4, align 8
  %33 = getelementptr inbounds %struct.lpc32xx_clk, %struct.lpc32xx_clk* %32, i32 0, i32 4
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.lpc32xx_clk*, %struct.lpc32xx_clk** %4, align 8
  %36 = getelementptr inbounds %struct.lpc32xx_clk, %struct.lpc32xx_clk* %35, i32 0, i32 3
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.lpc32xx_clk*, %struct.lpc32xx_clk** %4, align 8
  %39 = getelementptr inbounds %struct.lpc32xx_clk, %struct.lpc32xx_clk* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @regmap_update_bits(i32 %31, i32 %34, i32 %37, i32 %40)
  store i32 %41, i32* %2, align 4
  br label %42

42:                                               ; preds = %30, %27
  %43 = load i32, i32* %2, align 4
  ret i32 %43
}

declare dso_local %struct.lpc32xx_clk* @to_lpc32xx_clk(%struct.clk_hw*) #1

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
