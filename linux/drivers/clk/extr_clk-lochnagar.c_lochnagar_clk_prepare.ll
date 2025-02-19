; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/extr_clk-lochnagar.c_lochnagar_clk_prepare.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/extr_clk-lochnagar.c_lochnagar_clk_prepare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_hw = type { i32 }
%struct.lochnagar_clk = type { i32, i32, i32, %struct.lochnagar_clk_priv* }
%struct.lochnagar_clk_priv = type { i32, %struct.regmap* }
%struct.regmap = type { i32 }

@.str = private unnamed_addr constant [26 x i8] c"Failed to prepare %s: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.clk_hw*)* @lochnagar_clk_prepare to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lochnagar_clk_prepare(%struct.clk_hw* %0) #0 {
  %2 = alloca %struct.clk_hw*, align 8
  %3 = alloca %struct.lochnagar_clk*, align 8
  %4 = alloca %struct.lochnagar_clk_priv*, align 8
  %5 = alloca %struct.regmap*, align 8
  %6 = alloca i32, align 4
  store %struct.clk_hw* %0, %struct.clk_hw** %2, align 8
  %7 = load %struct.clk_hw*, %struct.clk_hw** %2, align 8
  %8 = call %struct.lochnagar_clk* @lochnagar_hw_to_lclk(%struct.clk_hw* %7)
  store %struct.lochnagar_clk* %8, %struct.lochnagar_clk** %3, align 8
  %9 = load %struct.lochnagar_clk*, %struct.lochnagar_clk** %3, align 8
  %10 = getelementptr inbounds %struct.lochnagar_clk, %struct.lochnagar_clk* %9, i32 0, i32 3
  %11 = load %struct.lochnagar_clk_priv*, %struct.lochnagar_clk_priv** %10, align 8
  store %struct.lochnagar_clk_priv* %11, %struct.lochnagar_clk_priv** %4, align 8
  %12 = load %struct.lochnagar_clk_priv*, %struct.lochnagar_clk_priv** %4, align 8
  %13 = getelementptr inbounds %struct.lochnagar_clk_priv, %struct.lochnagar_clk_priv* %12, i32 0, i32 1
  %14 = load %struct.regmap*, %struct.regmap** %13, align 8
  store %struct.regmap* %14, %struct.regmap** %5, align 8
  %15 = load %struct.regmap*, %struct.regmap** %5, align 8
  %16 = load %struct.lochnagar_clk*, %struct.lochnagar_clk** %3, align 8
  %17 = getelementptr inbounds %struct.lochnagar_clk, %struct.lochnagar_clk* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 8
  %19 = load %struct.lochnagar_clk*, %struct.lochnagar_clk** %3, align 8
  %20 = getelementptr inbounds %struct.lochnagar_clk, %struct.lochnagar_clk* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.lochnagar_clk*, %struct.lochnagar_clk** %3, align 8
  %23 = getelementptr inbounds %struct.lochnagar_clk, %struct.lochnagar_clk* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @regmap_update_bits(%struct.regmap* %15, i32 %18, i32 %21, i32 %24)
  store i32 %25, i32* %6, align 4
  %26 = load i32, i32* %6, align 4
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %28, label %37

28:                                               ; preds = %1
  %29 = load %struct.lochnagar_clk_priv*, %struct.lochnagar_clk_priv** %4, align 8
  %30 = getelementptr inbounds %struct.lochnagar_clk_priv, %struct.lochnagar_clk_priv* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = load %struct.lochnagar_clk*, %struct.lochnagar_clk** %3, align 8
  %33 = getelementptr inbounds %struct.lochnagar_clk, %struct.lochnagar_clk* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = load i32, i32* %6, align 4
  %36 = call i32 @dev_dbg(i32 %31, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %34, i32 %35)
  br label %37

37:                                               ; preds = %28, %1
  %38 = load i32, i32* %6, align 4
  ret i32 %38
}

declare dso_local %struct.lochnagar_clk* @lochnagar_hw_to_lclk(%struct.clk_hw*) #1

declare dso_local i32 @regmap_update_bits(%struct.regmap*, i32, i32, i32) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
