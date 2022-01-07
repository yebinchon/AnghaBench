; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/bcm/extr_clk-iproc-pll.c_iproc_pll_set_rate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/bcm/extr_clk-iproc-pll.c_iproc_pll_set_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_hw = type { i32 }
%struct.iproc_clk = type { %struct.iproc_pll* }
%struct.iproc_pll = type { %struct.iproc_pll_vco_param*, %struct.iproc_pll_ctrl* }
%struct.iproc_pll_vco_param = type { i32 }
%struct.iproc_pll_ctrl = type { i32 }

@IPROC_CLK_PLL_CALC_PARAM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.clk_hw*, i64, i64)* @iproc_pll_set_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iproc_pll_set_rate(%struct.clk_hw* %0, i64 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.clk_hw*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.iproc_clk*, align 8
  %9 = alloca %struct.iproc_pll*, align 8
  %10 = alloca %struct.iproc_pll_ctrl*, align 8
  %11 = alloca %struct.iproc_pll_vco_param, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.clk_hw* %0, %struct.clk_hw** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  %14 = load %struct.clk_hw*, %struct.clk_hw** %5, align 8
  %15 = call %struct.iproc_clk* @to_iproc_clk(%struct.clk_hw* %14)
  store %struct.iproc_clk* %15, %struct.iproc_clk** %8, align 8
  %16 = load %struct.iproc_clk*, %struct.iproc_clk** %8, align 8
  %17 = getelementptr inbounds %struct.iproc_clk, %struct.iproc_clk* %16, i32 0, i32 0
  %18 = load %struct.iproc_pll*, %struct.iproc_pll** %17, align 8
  store %struct.iproc_pll* %18, %struct.iproc_pll** %9, align 8
  %19 = load %struct.iproc_pll*, %struct.iproc_pll** %9, align 8
  %20 = getelementptr inbounds %struct.iproc_pll, %struct.iproc_pll* %19, i32 0, i32 1
  %21 = load %struct.iproc_pll_ctrl*, %struct.iproc_pll_ctrl** %20, align 8
  store %struct.iproc_pll_ctrl* %21, %struct.iproc_pll_ctrl** %10, align 8
  %22 = load %struct.iproc_pll_ctrl*, %struct.iproc_pll_ctrl** %10, align 8
  %23 = getelementptr inbounds %struct.iproc_pll_ctrl, %struct.iproc_pll_ctrl* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @IPROC_CLK_PLL_CALC_PARAM, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %37

28:                                               ; preds = %3
  %29 = load i64, i64* %6, align 8
  %30 = load i64, i64* %7, align 8
  %31 = call i32 @pll_calc_param(i64 %29, i64 %30, %struct.iproc_pll_vco_param* %11)
  store i32 %31, i32* %13, align 4
  %32 = load i32, i32* %13, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %28
  %35 = load i32, i32* %13, align 4
  store i32 %35, i32* %4, align 4
  br label %59

36:                                               ; preds = %28
  br label %54

37:                                               ; preds = %3
  %38 = load %struct.iproc_pll*, %struct.iproc_pll** %9, align 8
  %39 = load i64, i64* %6, align 8
  %40 = call i32 @pll_get_rate_index(%struct.iproc_pll* %38, i64 %39)
  store i32 %40, i32* %12, align 4
  %41 = load i32, i32* %12, align 4
  %42 = icmp slt i32 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %37
  %44 = load i32, i32* %12, align 4
  store i32 %44, i32* %4, align 4
  br label %59

45:                                               ; preds = %37
  %46 = load %struct.iproc_pll*, %struct.iproc_pll** %9, align 8
  %47 = getelementptr inbounds %struct.iproc_pll, %struct.iproc_pll* %46, i32 0, i32 0
  %48 = load %struct.iproc_pll_vco_param*, %struct.iproc_pll_vco_param** %47, align 8
  %49 = load i32, i32* %12, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds %struct.iproc_pll_vco_param, %struct.iproc_pll_vco_param* %48, i64 %50
  %52 = bitcast %struct.iproc_pll_vco_param* %11 to i8*
  %53 = bitcast %struct.iproc_pll_vco_param* %51 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %52, i8* align 4 %53, i64 4, i1 false)
  br label %54

54:                                               ; preds = %45, %36
  %55 = load %struct.iproc_clk*, %struct.iproc_clk** %8, align 8
  %56 = load i64, i64* %7, align 8
  %57 = call i32 @pll_set_rate(%struct.iproc_clk* %55, %struct.iproc_pll_vco_param* %11, i64 %56)
  store i32 %57, i32* %13, align 4
  %58 = load i32, i32* %13, align 4
  store i32 %58, i32* %4, align 4
  br label %59

59:                                               ; preds = %54, %43, %34
  %60 = load i32, i32* %4, align 4
  ret i32 %60
}

declare dso_local %struct.iproc_clk* @to_iproc_clk(%struct.clk_hw*) #1

declare dso_local i32 @pll_calc_param(i64, i64, %struct.iproc_pll_vco_param*) #1

declare dso_local i32 @pll_get_rate_index(%struct.iproc_pll*, i64) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @pll_set_rate(%struct.iproc_clk*, %struct.iproc_pll_vco_param*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
