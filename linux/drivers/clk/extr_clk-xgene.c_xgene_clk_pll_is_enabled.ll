; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/extr_clk-xgene.c_xgene_clk_pll_is_enabled.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/extr_clk-xgene.c_xgene_clk_pll_is_enabled.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_hw = type { i32 }
%struct.xgene_clk_pll = type { i64, i64 }

@.str = private unnamed_addr constant [11 x i8] c"%s pll %s\0A\00", align 1
@REGSPEC_RESET_F1_MASK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c"disabled\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"enabled\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.clk_hw*)* @xgene_clk_pll_is_enabled to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xgene_clk_pll_is_enabled(%struct.clk_hw* %0) #0 {
  %2 = alloca %struct.clk_hw*, align 8
  %3 = alloca %struct.xgene_clk_pll*, align 8
  %4 = alloca i32, align 4
  store %struct.clk_hw* %0, %struct.clk_hw** %2, align 8
  %5 = load %struct.clk_hw*, %struct.clk_hw** %2, align 8
  %6 = call %struct.xgene_clk_pll* @to_xgene_clk_pll(%struct.clk_hw* %5)
  store %struct.xgene_clk_pll* %6, %struct.xgene_clk_pll** %3, align 8
  %7 = load %struct.xgene_clk_pll*, %struct.xgene_clk_pll** %3, align 8
  %8 = getelementptr inbounds %struct.xgene_clk_pll, %struct.xgene_clk_pll* %7, i32 0, i32 1
  %9 = load i64, i64* %8, align 8
  %10 = load %struct.xgene_clk_pll*, %struct.xgene_clk_pll** %3, align 8
  %11 = getelementptr inbounds %struct.xgene_clk_pll, %struct.xgene_clk_pll* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = add nsw i64 %9, %12
  %14 = call i32 @xgene_clk_read(i64 %13)
  store i32 %14, i32* %4, align 4
  %15 = load %struct.clk_hw*, %struct.clk_hw** %2, align 8
  %16 = call i32 @clk_hw_get_name(%struct.clk_hw* %15)
  %17 = load i32, i32* %4, align 4
  %18 = load i32, i32* @REGSPEC_RESET_F1_MASK, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  %21 = zext i1 %20 to i64
  %22 = select i1 %20, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0)
  %23 = call i32 @pr_debug(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 %16, i8* %22)
  %24 = load i32, i32* %4, align 4
  %25 = load i32, i32* @REGSPEC_RESET_F1_MASK, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  %28 = zext i1 %27 to i64
  %29 = select i1 %27, i32 0, i32 1
  ret i32 %29
}

declare dso_local %struct.xgene_clk_pll* @to_xgene_clk_pll(%struct.clk_hw*) #1

declare dso_local i32 @xgene_clk_read(i64) #1

declare dso_local i32 @pr_debug(i8*, i32, i8*) #1

declare dso_local i32 @clk_hw_get_name(%struct.clk_hw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
