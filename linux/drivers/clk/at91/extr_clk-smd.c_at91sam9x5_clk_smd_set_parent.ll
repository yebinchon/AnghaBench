; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/at91/extr_clk-smd.c_at91sam9x5_clk_smd_set_parent.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/at91/extr_clk-smd.c_at91sam9x5_clk_smd_set_parent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_hw = type { i32 }
%struct.at91sam9x5_clk_smd = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@AT91_PMC_SMD = common dso_local global i32 0, align 4
@AT91_PMC_SMDS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.clk_hw*, i32)* @at91sam9x5_clk_smd_set_parent to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @at91sam9x5_clk_smd_set_parent(%struct.clk_hw* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.clk_hw*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.at91sam9x5_clk_smd*, align 8
  store %struct.clk_hw* %0, %struct.clk_hw** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.clk_hw*, %struct.clk_hw** %4, align 8
  %8 = call %struct.at91sam9x5_clk_smd* @to_at91sam9x5_clk_smd(%struct.clk_hw* %7)
  store %struct.at91sam9x5_clk_smd* %8, %struct.at91sam9x5_clk_smd** %6, align 8
  %9 = load i32, i32* %5, align 4
  %10 = icmp sgt i32 %9, 1
  br i1 %10, label %11, label %14

11:                                               ; preds = %2
  %12 = load i32, i32* @EINVAL, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %3, align 4
  br label %28

14:                                               ; preds = %2
  %15 = load %struct.at91sam9x5_clk_smd*, %struct.at91sam9x5_clk_smd** %6, align 8
  %16 = getelementptr inbounds %struct.at91sam9x5_clk_smd, %struct.at91sam9x5_clk_smd* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @AT91_PMC_SMD, align 4
  %19 = load i32, i32* @AT91_PMC_SMDS, align 4
  %20 = load i32, i32* %5, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %14
  %23 = load i32, i32* @AT91_PMC_SMDS, align 4
  br label %25

24:                                               ; preds = %14
  br label %25

25:                                               ; preds = %24, %22
  %26 = phi i32 [ %23, %22 ], [ 0, %24 ]
  %27 = call i32 @regmap_update_bits(i32 %17, i32 %18, i32 %19, i32 %26)
  store i32 0, i32* %3, align 4
  br label %28

28:                                               ; preds = %25, %11
  %29 = load i32, i32* %3, align 4
  ret i32 %29
}

declare dso_local %struct.at91sam9x5_clk_smd* @to_at91sam9x5_clk_smd(%struct.clk_hw*) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
