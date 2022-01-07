; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/extr_clk-xgene.c_xgene_clk_pll_recalc_rate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/extr_clk-xgene.c_xgene_clk_pll_recalc_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_hw = type { i32 }
%struct.xgene_clk_pll = type { i32, i64, i64, i64 }

@PLL_TYPE_PCP = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [46 x i8] c"%s pll recalc rate %ld parent %ld version %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.clk_hw*, i64)* @xgene_clk_pll_recalc_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @xgene_clk_pll_recalc_rate(%struct.clk_hw* %0, i64 %1) #0 {
  %3 = alloca %struct.clk_hw*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.xgene_clk_pll*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store %struct.clk_hw* %0, %struct.clk_hw** %3, align 8
  store i64 %1, i64* %4, align 8
  %12 = load %struct.clk_hw*, %struct.clk_hw** %3, align 8
  %13 = call %struct.xgene_clk_pll* @to_xgene_clk_pll(%struct.clk_hw* %12)
  store %struct.xgene_clk_pll* %13, %struct.xgene_clk_pll** %5, align 8
  %14 = load %struct.xgene_clk_pll*, %struct.xgene_clk_pll** %5, align 8
  %15 = getelementptr inbounds %struct.xgene_clk_pll, %struct.xgene_clk_pll* %14, i32 0, i32 3
  %16 = load i64, i64* %15, align 8
  %17 = load %struct.xgene_clk_pll*, %struct.xgene_clk_pll** %5, align 8
  %18 = getelementptr inbounds %struct.xgene_clk_pll, %struct.xgene_clk_pll* %17, i32 0, i32 2
  %19 = load i64, i64* %18, align 8
  %20 = add nsw i64 %16, %19
  %21 = call i64 @xgene_clk_read(i64 %20)
  store i64 %21, i64* %8, align 8
  %22 = load %struct.xgene_clk_pll*, %struct.xgene_clk_pll** %5, align 8
  %23 = getelementptr inbounds %struct.xgene_clk_pll, %struct.xgene_clk_pll* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = icmp sle i32 %24, 1
  br i1 %25, label %26, label %56

26:                                               ; preds = %2
  %27 = load %struct.xgene_clk_pll*, %struct.xgene_clk_pll** %5, align 8
  %28 = getelementptr inbounds %struct.xgene_clk_pll, %struct.xgene_clk_pll* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @PLL_TYPE_PCP, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %39

32:                                               ; preds = %26
  store i64 2, i64* %10, align 8
  %33 = load i64, i64* %4, align 8
  %34 = load i64, i64* %8, align 8
  %35 = call i32 @N_DIV_RD(i64 %34)
  %36 = add nsw i32 %35, 4
  %37 = sext i32 %36 to i64
  %38 = mul i64 %33, %37
  store i64 %38, i64* %7, align 8
  br label %55

39:                                               ; preds = %26
  %40 = load i64, i64* %8, align 8
  %41 = call i64 @CLKR_RD(i64 %40)
  %42 = add i64 %41, 1
  store i64 %42, i64* %9, align 8
  %43 = load i64, i64* %8, align 8
  %44 = call i32 @CLKOD_RD(i64 %43)
  %45 = add nsw i32 %44, 1
  %46 = sext i32 %45 to i64
  store i64 %46, i64* %10, align 8
  %47 = load i64, i64* %8, align 8
  %48 = call i64 @CLKF_RD(i64 %47)
  store i64 %48, i64* %11, align 8
  %49 = load i64, i64* %4, align 8
  %50 = load i64, i64* %9, align 8
  %51 = udiv i64 %49, %50
  store i64 %51, i64* %6, align 8
  %52 = load i64, i64* %6, align 8
  %53 = load i64, i64* %11, align 8
  %54 = mul i64 %52, %53
  store i64 %54, i64* %7, align 8
  br label %55

55:                                               ; preds = %39, %32
  br label %67

56:                                               ; preds = %2
  %57 = load i64, i64* %8, align 8
  %58 = call i64 @SC_OUTDIV2(i64 %57)
  %59 = icmp ne i64 %58, 0
  %60 = zext i1 %59 to i64
  %61 = select i1 %59, i32 2, i32 3
  %62 = sext i32 %61 to i64
  store i64 %62, i64* %10, align 8
  %63 = load i64, i64* %4, align 8
  %64 = load i64, i64* %8, align 8
  %65 = call i64 @SC_N_DIV_RD(i64 %64)
  %66 = mul i64 %63, %65
  store i64 %66, i64* %7, align 8
  br label %67

67:                                               ; preds = %56, %55
  %68 = load %struct.clk_hw*, %struct.clk_hw** %3, align 8
  %69 = call i32 @clk_hw_get_name(%struct.clk_hw* %68)
  %70 = load i64, i64* %7, align 8
  %71 = load i64, i64* %10, align 8
  %72 = udiv i64 %70, %71
  %73 = load i64, i64* %4, align 8
  %74 = load %struct.xgene_clk_pll*, %struct.xgene_clk_pll** %5, align 8
  %75 = getelementptr inbounds %struct.xgene_clk_pll, %struct.xgene_clk_pll* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = call i32 @pr_debug(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i32 %69, i64 %72, i64 %73, i32 %76)
  %78 = load i64, i64* %7, align 8
  %79 = load i64, i64* %10, align 8
  %80 = udiv i64 %78, %79
  ret i64 %80
}

declare dso_local %struct.xgene_clk_pll* @to_xgene_clk_pll(%struct.clk_hw*) #1

declare dso_local i64 @xgene_clk_read(i64) #1

declare dso_local i32 @N_DIV_RD(i64) #1

declare dso_local i64 @CLKR_RD(i64) #1

declare dso_local i32 @CLKOD_RD(i64) #1

declare dso_local i64 @CLKF_RD(i64) #1

declare dso_local i64 @SC_OUTDIV2(i64) #1

declare dso_local i64 @SC_N_DIV_RD(i64) #1

declare dso_local i32 @pr_debug(i8*, i32, i64, i64, i32) #1

declare dso_local i32 @clk_hw_get_name(%struct.clk_hw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
