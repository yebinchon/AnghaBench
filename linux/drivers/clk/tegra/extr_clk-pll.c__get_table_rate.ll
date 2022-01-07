; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/tegra/extr_clk-pll.c__get_table_rate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/tegra/extr_clk-pll.c__get_table_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_hw = type { i32 }
%struct.tegra_clk_pll_freq_table = type { i64, i64, i32, i32, i32, i32, i32 }
%struct.tegra_clk_pll = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64, %struct.tegra_clk_pll_freq_table* }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.clk_hw*, %struct.tegra_clk_pll_freq_table*, i64, i64)* @_get_table_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_get_table_rate(%struct.clk_hw* %0, %struct.tegra_clk_pll_freq_table* %1, i64 %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.clk_hw*, align 8
  %7 = alloca %struct.tegra_clk_pll_freq_table*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.tegra_clk_pll*, align 8
  %11 = alloca %struct.tegra_clk_pll_freq_table*, align 8
  %12 = alloca i32, align 4
  store %struct.clk_hw* %0, %struct.clk_hw** %6, align 8
  store %struct.tegra_clk_pll_freq_table* %1, %struct.tegra_clk_pll_freq_table** %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  %13 = load %struct.clk_hw*, %struct.clk_hw** %6, align 8
  %14 = call %struct.tegra_clk_pll* @to_clk_pll(%struct.clk_hw* %13)
  store %struct.tegra_clk_pll* %14, %struct.tegra_clk_pll** %10, align 8
  %15 = load %struct.tegra_clk_pll*, %struct.tegra_clk_pll** %10, align 8
  %16 = getelementptr inbounds %struct.tegra_clk_pll, %struct.tegra_clk_pll* %15, i32 0, i32 0
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 1
  %19 = load %struct.tegra_clk_pll_freq_table*, %struct.tegra_clk_pll_freq_table** %18, align 8
  store %struct.tegra_clk_pll_freq_table* %19, %struct.tegra_clk_pll_freq_table** %11, align 8
  br label %20

20:                                               ; preds = %39, %4
  %21 = load %struct.tegra_clk_pll_freq_table*, %struct.tegra_clk_pll_freq_table** %11, align 8
  %22 = getelementptr inbounds %struct.tegra_clk_pll_freq_table, %struct.tegra_clk_pll_freq_table* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %42

25:                                               ; preds = %20
  %26 = load %struct.tegra_clk_pll_freq_table*, %struct.tegra_clk_pll_freq_table** %11, align 8
  %27 = getelementptr inbounds %struct.tegra_clk_pll_freq_table, %struct.tegra_clk_pll_freq_table* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* %9, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %38

31:                                               ; preds = %25
  %32 = load %struct.tegra_clk_pll_freq_table*, %struct.tegra_clk_pll_freq_table** %11, align 8
  %33 = getelementptr inbounds %struct.tegra_clk_pll_freq_table, %struct.tegra_clk_pll_freq_table* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* %8, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %38

37:                                               ; preds = %31
  br label %42

38:                                               ; preds = %31, %25
  br label %39

39:                                               ; preds = %38
  %40 = load %struct.tegra_clk_pll_freq_table*, %struct.tegra_clk_pll_freq_table** %11, align 8
  %41 = getelementptr inbounds %struct.tegra_clk_pll_freq_table, %struct.tegra_clk_pll_freq_table* %40, i32 1
  store %struct.tegra_clk_pll_freq_table* %41, %struct.tegra_clk_pll_freq_table** %11, align 8
  br label %20

42:                                               ; preds = %37, %20
  %43 = load %struct.tegra_clk_pll_freq_table*, %struct.tegra_clk_pll_freq_table** %11, align 8
  %44 = getelementptr inbounds %struct.tegra_clk_pll_freq_table, %struct.tegra_clk_pll_freq_table* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = icmp eq i64 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %42
  %48 = load i32, i32* @EINVAL, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %5, align 4
  br label %107

50:                                               ; preds = %42
  %51 = load %struct.tegra_clk_pll*, %struct.tegra_clk_pll** %10, align 8
  %52 = getelementptr inbounds %struct.tegra_clk_pll, %struct.tegra_clk_pll* %51, i32 0, i32 0
  %53 = load %struct.TYPE_2__*, %struct.TYPE_2__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %68

57:                                               ; preds = %50
  %58 = load %struct.clk_hw*, %struct.clk_hw** %6, align 8
  %59 = load %struct.tegra_clk_pll_freq_table*, %struct.tegra_clk_pll_freq_table** %11, align 8
  %60 = getelementptr inbounds %struct.tegra_clk_pll_freq_table, %struct.tegra_clk_pll_freq_table* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 8
  %62 = call i32 @_p_div_to_hw(%struct.clk_hw* %58, i32 %61)
  store i32 %62, i32* %12, align 4
  %63 = load i32, i32* %12, align 4
  %64 = icmp slt i32 %63, 0
  br i1 %64, label %65, label %67

65:                                               ; preds = %57
  %66 = load i32, i32* %12, align 4
  store i32 %66, i32* %5, align 4
  br label %107

67:                                               ; preds = %57
  br label %73

68:                                               ; preds = %50
  %69 = load %struct.tegra_clk_pll_freq_table*, %struct.tegra_clk_pll_freq_table** %11, align 8
  %70 = getelementptr inbounds %struct.tegra_clk_pll_freq_table, %struct.tegra_clk_pll_freq_table* %69, i32 0, i32 2
  %71 = load i32, i32* %70, align 8
  %72 = call i32 @ilog2(i32 %71)
  store i32 %72, i32* %12, align 4
  br label %73

73:                                               ; preds = %68, %67
  %74 = load %struct.tegra_clk_pll_freq_table*, %struct.tegra_clk_pll_freq_table** %11, align 8
  %75 = getelementptr inbounds %struct.tegra_clk_pll_freq_table, %struct.tegra_clk_pll_freq_table* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = load %struct.tegra_clk_pll_freq_table*, %struct.tegra_clk_pll_freq_table** %7, align 8
  %78 = getelementptr inbounds %struct.tegra_clk_pll_freq_table, %struct.tegra_clk_pll_freq_table* %77, i32 0, i32 0
  store i64 %76, i64* %78, align 8
  %79 = load %struct.tegra_clk_pll_freq_table*, %struct.tegra_clk_pll_freq_table** %11, align 8
  %80 = getelementptr inbounds %struct.tegra_clk_pll_freq_table, %struct.tegra_clk_pll_freq_table* %79, i32 0, i32 1
  %81 = load i64, i64* %80, align 8
  %82 = load %struct.tegra_clk_pll_freq_table*, %struct.tegra_clk_pll_freq_table** %7, align 8
  %83 = getelementptr inbounds %struct.tegra_clk_pll_freq_table, %struct.tegra_clk_pll_freq_table* %82, i32 0, i32 1
  store i64 %81, i64* %83, align 8
  %84 = load %struct.tegra_clk_pll_freq_table*, %struct.tegra_clk_pll_freq_table** %11, align 8
  %85 = getelementptr inbounds %struct.tegra_clk_pll_freq_table, %struct.tegra_clk_pll_freq_table* %84, i32 0, i32 6
  %86 = load i32, i32* %85, align 8
  %87 = load %struct.tegra_clk_pll_freq_table*, %struct.tegra_clk_pll_freq_table** %7, align 8
  %88 = getelementptr inbounds %struct.tegra_clk_pll_freq_table, %struct.tegra_clk_pll_freq_table* %87, i32 0, i32 6
  store i32 %86, i32* %88, align 8
  %89 = load %struct.tegra_clk_pll_freq_table*, %struct.tegra_clk_pll_freq_table** %11, align 8
  %90 = getelementptr inbounds %struct.tegra_clk_pll_freq_table, %struct.tegra_clk_pll_freq_table* %89, i32 0, i32 5
  %91 = load i32, i32* %90, align 4
  %92 = load %struct.tegra_clk_pll_freq_table*, %struct.tegra_clk_pll_freq_table** %7, align 8
  %93 = getelementptr inbounds %struct.tegra_clk_pll_freq_table, %struct.tegra_clk_pll_freq_table* %92, i32 0, i32 5
  store i32 %91, i32* %93, align 4
  %94 = load i32, i32* %12, align 4
  %95 = load %struct.tegra_clk_pll_freq_table*, %struct.tegra_clk_pll_freq_table** %7, align 8
  %96 = getelementptr inbounds %struct.tegra_clk_pll_freq_table, %struct.tegra_clk_pll_freq_table* %95, i32 0, i32 2
  store i32 %94, i32* %96, align 8
  %97 = load %struct.tegra_clk_pll_freq_table*, %struct.tegra_clk_pll_freq_table** %11, align 8
  %98 = getelementptr inbounds %struct.tegra_clk_pll_freq_table, %struct.tegra_clk_pll_freq_table* %97, i32 0, i32 4
  %99 = load i32, i32* %98, align 8
  %100 = load %struct.tegra_clk_pll_freq_table*, %struct.tegra_clk_pll_freq_table** %7, align 8
  %101 = getelementptr inbounds %struct.tegra_clk_pll_freq_table, %struct.tegra_clk_pll_freq_table* %100, i32 0, i32 4
  store i32 %99, i32* %101, align 8
  %102 = load %struct.tegra_clk_pll_freq_table*, %struct.tegra_clk_pll_freq_table** %11, align 8
  %103 = getelementptr inbounds %struct.tegra_clk_pll_freq_table, %struct.tegra_clk_pll_freq_table* %102, i32 0, i32 3
  %104 = load i32, i32* %103, align 4
  %105 = load %struct.tegra_clk_pll_freq_table*, %struct.tegra_clk_pll_freq_table** %7, align 8
  %106 = getelementptr inbounds %struct.tegra_clk_pll_freq_table, %struct.tegra_clk_pll_freq_table* %105, i32 0, i32 3
  store i32 %104, i32* %106, align 4
  store i32 0, i32* %5, align 4
  br label %107

107:                                              ; preds = %73, %65, %47
  %108 = load i32, i32* %5, align 4
  ret i32 %108
}

declare dso_local %struct.tegra_clk_pll* @to_clk_pll(%struct.clk_hw*) #1

declare dso_local i32 @_p_div_to_hw(%struct.clk_hw*, i32) #1

declare dso_local i32 @ilog2(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
