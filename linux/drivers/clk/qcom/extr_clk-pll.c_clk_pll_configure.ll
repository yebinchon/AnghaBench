; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/qcom/extr_clk-pll.c_clk_pll_configure.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/qcom/extr_clk-pll.c_clk_pll_configure.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_pll = type { i32, i32, i32, i32 }
%struct.regmap = type { i32 }
%struct.pll_config = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.clk_pll*, %struct.regmap*, %struct.pll_config*)* @clk_pll_configure to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @clk_pll_configure(%struct.clk_pll* %0, %struct.regmap* %1, %struct.pll_config* %2) #0 {
  %4 = alloca %struct.clk_pll*, align 8
  %5 = alloca %struct.regmap*, align 8
  %6 = alloca %struct.pll_config*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.clk_pll* %0, %struct.clk_pll** %4, align 8
  store %struct.regmap* %1, %struct.regmap** %5, align 8
  store %struct.pll_config* %2, %struct.pll_config** %6, align 8
  %9 = load %struct.regmap*, %struct.regmap** %5, align 8
  %10 = load %struct.clk_pll*, %struct.clk_pll** %4, align 8
  %11 = getelementptr inbounds %struct.clk_pll, %struct.clk_pll* %10, i32 0, i32 3
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.pll_config*, %struct.pll_config** %6, align 8
  %14 = getelementptr inbounds %struct.pll_config, %struct.pll_config* %13, i32 0, i32 11
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @regmap_write(%struct.regmap* %9, i32 %12, i32 %15)
  %17 = load %struct.regmap*, %struct.regmap** %5, align 8
  %18 = load %struct.clk_pll*, %struct.clk_pll** %4, align 8
  %19 = getelementptr inbounds %struct.clk_pll, %struct.clk_pll* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.pll_config*, %struct.pll_config** %6, align 8
  %22 = getelementptr inbounds %struct.pll_config, %struct.pll_config* %21, i32 0, i32 10
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @regmap_write(%struct.regmap* %17, i32 %20, i32 %23)
  %25 = load %struct.regmap*, %struct.regmap** %5, align 8
  %26 = load %struct.clk_pll*, %struct.clk_pll** %4, align 8
  %27 = getelementptr inbounds %struct.clk_pll, %struct.clk_pll* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.pll_config*, %struct.pll_config** %6, align 8
  %30 = getelementptr inbounds %struct.pll_config, %struct.pll_config* %29, i32 0, i32 9
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @regmap_write(%struct.regmap* %25, i32 %28, i32 %31)
  %33 = load %struct.pll_config*, %struct.pll_config** %6, align 8
  %34 = getelementptr inbounds %struct.pll_config, %struct.pll_config* %33, i32 0, i32 8
  %35 = load i32, i32* %34, align 4
  store i32 %35, i32* %7, align 4
  %36 = load %struct.pll_config*, %struct.pll_config** %6, align 8
  %37 = getelementptr inbounds %struct.pll_config, %struct.pll_config* %36, i32 0, i32 7
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* %7, align 4
  %40 = or i32 %39, %38
  store i32 %40, i32* %7, align 4
  %41 = load %struct.pll_config*, %struct.pll_config** %6, align 8
  %42 = getelementptr inbounds %struct.pll_config, %struct.pll_config* %41, i32 0, i32 6
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* %7, align 4
  %45 = or i32 %44, %43
  store i32 %45, i32* %7, align 4
  %46 = load %struct.pll_config*, %struct.pll_config** %6, align 8
  %47 = getelementptr inbounds %struct.pll_config, %struct.pll_config* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* %7, align 4
  %50 = or i32 %49, %48
  store i32 %50, i32* %7, align 4
  %51 = load %struct.pll_config*, %struct.pll_config** %6, align 8
  %52 = getelementptr inbounds %struct.pll_config, %struct.pll_config* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* %7, align 4
  %55 = or i32 %54, %53
  store i32 %55, i32* %7, align 4
  %56 = load %struct.pll_config*, %struct.pll_config** %6, align 8
  %57 = getelementptr inbounds %struct.pll_config, %struct.pll_config* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* %7, align 4
  %60 = or i32 %59, %58
  store i32 %60, i32* %7, align 4
  %61 = load %struct.pll_config*, %struct.pll_config** %6, align 8
  %62 = getelementptr inbounds %struct.pll_config, %struct.pll_config* %61, i32 0, i32 5
  %63 = load i32, i32* %62, align 4
  store i32 %63, i32* %8, align 4
  %64 = load %struct.pll_config*, %struct.pll_config** %6, align 8
  %65 = getelementptr inbounds %struct.pll_config, %struct.pll_config* %64, i32 0, i32 4
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* %8, align 4
  %68 = or i32 %67, %66
  store i32 %68, i32* %8, align 4
  %69 = load %struct.pll_config*, %struct.pll_config** %6, align 8
  %70 = getelementptr inbounds %struct.pll_config, %struct.pll_config* %69, i32 0, i32 3
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* %8, align 4
  %73 = or i32 %72, %71
  store i32 %73, i32* %8, align 4
  %74 = load %struct.pll_config*, %struct.pll_config** %6, align 8
  %75 = getelementptr inbounds %struct.pll_config, %struct.pll_config* %74, i32 0, i32 2
  %76 = load i32, i32* %75, align 4
  %77 = load i32, i32* %8, align 4
  %78 = or i32 %77, %76
  store i32 %78, i32* %8, align 4
  %79 = load %struct.pll_config*, %struct.pll_config** %6, align 8
  %80 = getelementptr inbounds %struct.pll_config, %struct.pll_config* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = load i32, i32* %8, align 4
  %83 = or i32 %82, %81
  store i32 %83, i32* %8, align 4
  %84 = load %struct.pll_config*, %struct.pll_config** %6, align 8
  %85 = getelementptr inbounds %struct.pll_config, %struct.pll_config* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = load i32, i32* %8, align 4
  %88 = or i32 %87, %86
  store i32 %88, i32* %8, align 4
  %89 = load %struct.regmap*, %struct.regmap** %5, align 8
  %90 = load %struct.clk_pll*, %struct.clk_pll** %4, align 8
  %91 = getelementptr inbounds %struct.clk_pll, %struct.clk_pll* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = load i32, i32* %8, align 4
  %94 = load i32, i32* %7, align 4
  %95 = call i32 @regmap_update_bits(%struct.regmap* %89, i32 %92, i32 %93, i32 %94)
  ret void
}

declare dso_local i32 @regmap_write(%struct.regmap*, i32, i32) #1

declare dso_local i32 @regmap_update_bits(%struct.regmap*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
