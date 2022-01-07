; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/imx/extr_clk-sccg-pll.c___clk_sccg_pll_determine_rate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/imx/extr_clk-sccg-pll.c___clk_sccg_pll_determine_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_hw = type { i32 }
%struct.clk_rate_request = type { i32, i32, %struct.clk_hw*, i8*, i8* }
%struct.clk_sccg_pll = type { i32, i32, i32, %struct.clk_sccg_pll_setup }
%struct.clk_sccg_pll_setup = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.clk_hw*, %struct.clk_rate_request*, i8*, i8*, i8*, i32)* @__clk_sccg_pll_determine_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__clk_sccg_pll_determine_rate(%struct.clk_hw* %0, %struct.clk_rate_request* %1, i8* %2, i8* %3, i8* %4, i32 %5) #0 {
  %7 = alloca %struct.clk_hw*, align 8
  %8 = alloca %struct.clk_rate_request*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.clk_sccg_pll*, align 8
  %14 = alloca %struct.clk_sccg_pll_setup*, align 8
  %15 = alloca %struct.clk_hw*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.clk_hw* %0, %struct.clk_hw** %7, align 8
  store %struct.clk_rate_request* %1, %struct.clk_rate_request** %8, align 8
  store i8* %2, i8** %9, align 8
  store i8* %3, i8** %10, align 8
  store i8* %4, i8** %11, align 8
  store i32 %5, i32* %12, align 4
  %18 = load %struct.clk_hw*, %struct.clk_hw** %7, align 8
  %19 = call %struct.clk_sccg_pll* @to_clk_sccg_pll(%struct.clk_hw* %18)
  store %struct.clk_sccg_pll* %19, %struct.clk_sccg_pll** %13, align 8
  %20 = load %struct.clk_sccg_pll*, %struct.clk_sccg_pll** %13, align 8
  %21 = getelementptr inbounds %struct.clk_sccg_pll, %struct.clk_sccg_pll* %20, i32 0, i32 3
  store %struct.clk_sccg_pll_setup* %21, %struct.clk_sccg_pll_setup** %14, align 8
  store %struct.clk_hw* null, %struct.clk_hw** %15, align 8
  %22 = load i32, i32* @EINVAL, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %17, align 4
  %24 = load i8*, i8** %10, align 8
  %25 = load %struct.clk_rate_request*, %struct.clk_rate_request** %8, align 8
  %26 = getelementptr inbounds %struct.clk_rate_request, %struct.clk_rate_request* %25, i32 0, i32 4
  store i8* %24, i8** %26, align 8
  %27 = load i8*, i8** %9, align 8
  %28 = load %struct.clk_rate_request*, %struct.clk_rate_request** %8, align 8
  %29 = getelementptr inbounds %struct.clk_rate_request, %struct.clk_rate_request* %28, i32 0, i32 3
  store i8* %27, i8** %29, align 8
  %30 = load i32, i32* %12, align 4
  switch i32 %30, label %39 [
    i32 128, label %31
    i32 129, label %35
  ]

31:                                               ; preds = %6
  %32 = load %struct.clk_sccg_pll*, %struct.clk_sccg_pll** %13, align 8
  %33 = getelementptr inbounds %struct.clk_sccg_pll, %struct.clk_sccg_pll* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  store i32 %34, i32* %16, align 4
  br label %43

35:                                               ; preds = %6
  %36 = load %struct.clk_sccg_pll*, %struct.clk_sccg_pll** %13, align 8
  %37 = getelementptr inbounds %struct.clk_sccg_pll, %struct.clk_sccg_pll* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  store i32 %38, i32* %16, align 4
  br label %43

39:                                               ; preds = %6
  %40 = load %struct.clk_sccg_pll*, %struct.clk_sccg_pll** %13, align 8
  %41 = getelementptr inbounds %struct.clk_sccg_pll, %struct.clk_sccg_pll* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 4
  store i32 %42, i32* %16, align 4
  br label %43

43:                                               ; preds = %39, %35, %31
  %44 = load %struct.clk_hw*, %struct.clk_hw** %7, align 8
  %45 = load i32, i32* %16, align 4
  %46 = call %struct.clk_hw* @clk_hw_get_parent_by_index(%struct.clk_hw* %44, i32 %45)
  store %struct.clk_hw* %46, %struct.clk_hw** %15, align 8
  %47 = load %struct.clk_hw*, %struct.clk_hw** %15, align 8
  %48 = load %struct.clk_rate_request*, %struct.clk_rate_request** %8, align 8
  %49 = call i32 @__clk_determine_rate(%struct.clk_hw* %47, %struct.clk_rate_request* %48)
  store i32 %49, i32* %17, align 4
  %50 = load i32, i32* %17, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %60, label %52

52:                                               ; preds = %43
  %53 = load %struct.clk_sccg_pll_setup*, %struct.clk_sccg_pll_setup** %14, align 8
  %54 = load %struct.clk_rate_request*, %struct.clk_rate_request** %8, align 8
  %55 = getelementptr inbounds %struct.clk_rate_request, %struct.clk_rate_request* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = load i8*, i8** %11, align 8
  %58 = load i32, i32* %12, align 4
  %59 = call i32 @clk_sccg_pll_find_setup(%struct.clk_sccg_pll_setup* %53, i32 %56, i8* %57, i32 %58)
  store i32 %59, i32* %17, align 4
  br label %60

60:                                               ; preds = %52, %43
  %61 = load %struct.clk_hw*, %struct.clk_hw** %15, align 8
  %62 = load %struct.clk_rate_request*, %struct.clk_rate_request** %8, align 8
  %63 = getelementptr inbounds %struct.clk_rate_request, %struct.clk_rate_request* %62, i32 0, i32 2
  store %struct.clk_hw* %61, %struct.clk_hw** %63, align 8
  %64 = load %struct.clk_rate_request*, %struct.clk_rate_request** %8, align 8
  %65 = getelementptr inbounds %struct.clk_rate_request, %struct.clk_rate_request* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = load %struct.clk_rate_request*, %struct.clk_rate_request** %8, align 8
  %68 = getelementptr inbounds %struct.clk_rate_request, %struct.clk_rate_request* %67, i32 0, i32 1
  store i32 %66, i32* %68, align 4
  %69 = load %struct.clk_sccg_pll_setup*, %struct.clk_sccg_pll_setup** %14, align 8
  %70 = getelementptr inbounds %struct.clk_sccg_pll_setup, %struct.clk_sccg_pll_setup* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.clk_rate_request*, %struct.clk_rate_request** %8, align 8
  %73 = getelementptr inbounds %struct.clk_rate_request, %struct.clk_rate_request* %72, i32 0, i32 0
  store i32 %71, i32* %73, align 8
  %74 = load i32, i32* %17, align 4
  ret i32 %74
}

declare dso_local %struct.clk_sccg_pll* @to_clk_sccg_pll(%struct.clk_hw*) #1

declare dso_local %struct.clk_hw* @clk_hw_get_parent_by_index(%struct.clk_hw*, i32) #1

declare dso_local i32 @__clk_determine_rate(%struct.clk_hw*, %struct.clk_rate_request*) #1

declare dso_local i32 @clk_sccg_pll_find_setup(%struct.clk_sccg_pll_setup*, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
