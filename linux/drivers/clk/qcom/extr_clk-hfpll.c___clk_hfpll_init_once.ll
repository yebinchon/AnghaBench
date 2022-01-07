; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/qcom/extr_clk-hfpll.c___clk_hfpll_init_once.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/qcom/extr_clk-hfpll.c___clk_hfpll_init_once.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_hw = type { i32 }
%struct.clk_hfpll = type { i32, %struct.TYPE_2__, %struct.hfpll_data* }
%struct.TYPE_2__ = type { %struct.regmap* }
%struct.regmap = type { i32 }
%struct.hfpll_data = type { i32, i32, i32, i64, i32, i64, i64, i64, i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.clk_hw*)* @__clk_hfpll_init_once to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__clk_hfpll_init_once(%struct.clk_hw* %0) #0 {
  %2 = alloca %struct.clk_hw*, align 8
  %3 = alloca %struct.clk_hfpll*, align 8
  %4 = alloca %struct.hfpll_data*, align 8
  %5 = alloca %struct.regmap*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store %struct.clk_hw* %0, %struct.clk_hw** %2, align 8
  %8 = load %struct.clk_hw*, %struct.clk_hw** %2, align 8
  %9 = call %struct.clk_hfpll* @to_clk_hfpll(%struct.clk_hw* %8)
  store %struct.clk_hfpll* %9, %struct.clk_hfpll** %3, align 8
  %10 = load %struct.clk_hfpll*, %struct.clk_hfpll** %3, align 8
  %11 = getelementptr inbounds %struct.clk_hfpll, %struct.clk_hfpll* %10, i32 0, i32 2
  %12 = load %struct.hfpll_data*, %struct.hfpll_data** %11, align 8
  store %struct.hfpll_data* %12, %struct.hfpll_data** %4, align 8
  %13 = load %struct.clk_hfpll*, %struct.clk_hfpll** %3, align 8
  %14 = getelementptr inbounds %struct.clk_hfpll, %struct.clk_hfpll* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load %struct.regmap*, %struct.regmap** %15, align 8
  store %struct.regmap* %16, %struct.regmap** %5, align 8
  %17 = load %struct.clk_hfpll*, %struct.clk_hfpll** %3, align 8
  %18 = getelementptr inbounds %struct.clk_hfpll, %struct.clk_hfpll* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = call i64 @likely(i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %1
  br label %98

23:                                               ; preds = %1
  %24 = load %struct.hfpll_data*, %struct.hfpll_data** %4, align 8
  %25 = getelementptr inbounds %struct.hfpll_data, %struct.hfpll_data* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %37

28:                                               ; preds = %23
  %29 = load %struct.regmap*, %struct.regmap** %5, align 8
  %30 = load %struct.hfpll_data*, %struct.hfpll_data** %4, align 8
  %31 = getelementptr inbounds %struct.hfpll_data, %struct.hfpll_data* %30, i32 0, i32 9
  %32 = load i64, i64* %31, align 8
  %33 = load %struct.hfpll_data*, %struct.hfpll_data** %4, align 8
  %34 = getelementptr inbounds %struct.hfpll_data, %struct.hfpll_data* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = call i32 @regmap_write(%struct.regmap* %29, i64 %32, i32 %35)
  br label %37

37:                                               ; preds = %28, %23
  %38 = load %struct.regmap*, %struct.regmap** %5, align 8
  %39 = load %struct.hfpll_data*, %struct.hfpll_data** %4, align 8
  %40 = getelementptr inbounds %struct.hfpll_data, %struct.hfpll_data* %39, i32 0, i32 8
  %41 = load i64, i64* %40, align 8
  %42 = call i32 @regmap_write(%struct.regmap* %38, i64 %41, i32 0)
  %43 = load %struct.regmap*, %struct.regmap** %5, align 8
  %44 = load %struct.hfpll_data*, %struct.hfpll_data** %4, align 8
  %45 = getelementptr inbounds %struct.hfpll_data, %struct.hfpll_data* %44, i32 0, i32 7
  %46 = load i64, i64* %45, align 8
  %47 = call i32 @regmap_write(%struct.regmap* %43, i64 %46, i32 1)
  %48 = load %struct.hfpll_data*, %struct.hfpll_data** %4, align 8
  %49 = getelementptr inbounds %struct.hfpll_data, %struct.hfpll_data* %48, i32 0, i32 6
  %50 = load i64, i64* %49, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %81

52:                                               ; preds = %37
  %53 = load %struct.hfpll_data*, %struct.hfpll_data** %4, align 8
  %54 = getelementptr inbounds %struct.hfpll_data, %struct.hfpll_data* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  store i32 %55, i32* %6, align 4
  %56 = load %struct.clk_hw*, %struct.clk_hw** %2, align 8
  %57 = call i64 @clk_hw_get_rate(%struct.clk_hw* %56)
  store i64 %57, i64* %7, align 8
  %58 = load %struct.hfpll_data*, %struct.hfpll_data** %4, align 8
  %59 = getelementptr inbounds %struct.hfpll_data, %struct.hfpll_data* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 8
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %74

62:                                               ; preds = %52
  %63 = load i64, i64* %7, align 8
  %64 = load %struct.hfpll_data*, %struct.hfpll_data** %4, align 8
  %65 = getelementptr inbounds %struct.hfpll_data, %struct.hfpll_data* %64, i32 0, i32 3
  %66 = load i64, i64* %65, align 8
  %67 = icmp ugt i64 %63, %66
  br i1 %67, label %68, label %74

68:                                               ; preds = %62
  %69 = load %struct.hfpll_data*, %struct.hfpll_data** %4, align 8
  %70 = getelementptr inbounds %struct.hfpll_data, %struct.hfpll_data* %69, i32 0, i32 2
  %71 = load i32, i32* %70, align 8
  %72 = load i32, i32* %6, align 4
  %73 = or i32 %72, %71
  store i32 %73, i32* %6, align 4
  br label %74

74:                                               ; preds = %68, %62, %52
  %75 = load %struct.regmap*, %struct.regmap** %5, align 8
  %76 = load %struct.hfpll_data*, %struct.hfpll_data** %4, align 8
  %77 = getelementptr inbounds %struct.hfpll_data, %struct.hfpll_data* %76, i32 0, i32 6
  %78 = load i64, i64* %77, align 8
  %79 = load i32, i32* %6, align 4
  %80 = call i32 @regmap_write(%struct.regmap* %75, i64 %78, i32 %79)
  br label %81

81:                                               ; preds = %74, %37
  %82 = load %struct.hfpll_data*, %struct.hfpll_data** %4, align 8
  %83 = getelementptr inbounds %struct.hfpll_data, %struct.hfpll_data* %82, i32 0, i32 5
  %84 = load i64, i64* %83, align 8
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %95

86:                                               ; preds = %81
  %87 = load %struct.regmap*, %struct.regmap** %5, align 8
  %88 = load %struct.hfpll_data*, %struct.hfpll_data** %4, align 8
  %89 = getelementptr inbounds %struct.hfpll_data, %struct.hfpll_data* %88, i32 0, i32 5
  %90 = load i64, i64* %89, align 8
  %91 = load %struct.hfpll_data*, %struct.hfpll_data** %4, align 8
  %92 = getelementptr inbounds %struct.hfpll_data, %struct.hfpll_data* %91, i32 0, i32 4
  %93 = load i32, i32* %92, align 8
  %94 = call i32 @regmap_write(%struct.regmap* %87, i64 %90, i32 %93)
  br label %95

95:                                               ; preds = %86, %81
  %96 = load %struct.clk_hfpll*, %struct.clk_hfpll** %3, align 8
  %97 = getelementptr inbounds %struct.clk_hfpll, %struct.clk_hfpll* %96, i32 0, i32 0
  store i32 1, i32* %97, align 8
  br label %98

98:                                               ; preds = %95, %22
  ret void
}

declare dso_local %struct.clk_hfpll* @to_clk_hfpll(%struct.clk_hw*) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @regmap_write(%struct.regmap*, i64, i32) #1

declare dso_local i64 @clk_hw_get_rate(%struct.clk_hw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
