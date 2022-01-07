; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/extr_clk-lochnagar.c_lochnagar_clk_get_parent.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/extr_clk-lochnagar.c_lochnagar_clk_get_parent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_hw = type { i32 }
%struct.lochnagar_clk = type { i32, i32, i32, %struct.lochnagar_clk_priv* }
%struct.lochnagar_clk_priv = type { i32, %struct.regmap* }
%struct.regmap = type { i32 }

@.str = private unnamed_addr constant [33 x i8] c"Failed to read parent of %s: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.clk_hw*)* @lochnagar_clk_get_parent to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lochnagar_clk_get_parent(%struct.clk_hw* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.clk_hw*, align 8
  %4 = alloca %struct.lochnagar_clk*, align 8
  %5 = alloca %struct.lochnagar_clk_priv*, align 8
  %6 = alloca %struct.regmap*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.clk_hw* %0, %struct.clk_hw** %3, align 8
  %9 = load %struct.clk_hw*, %struct.clk_hw** %3, align 8
  %10 = call %struct.lochnagar_clk* @lochnagar_hw_to_lclk(%struct.clk_hw* %9)
  store %struct.lochnagar_clk* %10, %struct.lochnagar_clk** %4, align 8
  %11 = load %struct.lochnagar_clk*, %struct.lochnagar_clk** %4, align 8
  %12 = getelementptr inbounds %struct.lochnagar_clk, %struct.lochnagar_clk* %11, i32 0, i32 3
  %13 = load %struct.lochnagar_clk_priv*, %struct.lochnagar_clk_priv** %12, align 8
  store %struct.lochnagar_clk_priv* %13, %struct.lochnagar_clk_priv** %5, align 8
  %14 = load %struct.lochnagar_clk_priv*, %struct.lochnagar_clk_priv** %5, align 8
  %15 = getelementptr inbounds %struct.lochnagar_clk_priv, %struct.lochnagar_clk_priv* %14, i32 0, i32 1
  %16 = load %struct.regmap*, %struct.regmap** %15, align 8
  store %struct.regmap* %16, %struct.regmap** %6, align 8
  %17 = load %struct.regmap*, %struct.regmap** %6, align 8
  %18 = load %struct.lochnagar_clk*, %struct.lochnagar_clk** %4, align 8
  %19 = getelementptr inbounds %struct.lochnagar_clk, %struct.lochnagar_clk* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 8
  %21 = call i32 @regmap_read(%struct.regmap* %17, i32 %20, i32* %7)
  store i32 %21, i32* %8, align 4
  %22 = load i32, i32* %8, align 4
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %24, label %35

24:                                               ; preds = %1
  %25 = load %struct.lochnagar_clk_priv*, %struct.lochnagar_clk_priv** %5, align 8
  %26 = getelementptr inbounds %struct.lochnagar_clk_priv, %struct.lochnagar_clk_priv* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load %struct.lochnagar_clk*, %struct.lochnagar_clk** %4, align 8
  %29 = getelementptr inbounds %struct.lochnagar_clk, %struct.lochnagar_clk* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* %8, align 4
  %32 = call i32 @dev_dbg(i32 %27, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %30, i32 %31)
  %33 = load %struct.clk_hw*, %struct.clk_hw** %3, align 8
  %34 = call i32 @clk_hw_get_num_parents(%struct.clk_hw* %33)
  store i32 %34, i32* %2, align 4
  br label %42

35:                                               ; preds = %1
  %36 = load %struct.lochnagar_clk*, %struct.lochnagar_clk** %4, align 8
  %37 = getelementptr inbounds %struct.lochnagar_clk, %struct.lochnagar_clk* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = load i32, i32* %7, align 4
  %40 = and i32 %39, %38
  store i32 %40, i32* %7, align 4
  %41 = load i32, i32* %7, align 4
  store i32 %41, i32* %2, align 4
  br label %42

42:                                               ; preds = %35, %24
  %43 = load i32, i32* %2, align 4
  ret i32 %43
}

declare dso_local %struct.lochnagar_clk* @lochnagar_hw_to_lclk(%struct.clk_hw*) #1

declare dso_local i32 @regmap_read(%struct.regmap*, i32, i32*) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32, i32) #1

declare dso_local i32 @clk_hw_get_num_parents(%struct.clk_hw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
