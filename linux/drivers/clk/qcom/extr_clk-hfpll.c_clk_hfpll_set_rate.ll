; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/qcom/extr_clk-hfpll.c_clk_hfpll_set_rate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/qcom/extr_clk-hfpll.c_clk_hfpll_set_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_hw = type { i32 }
%struct.clk_hfpll = type { i32, %struct.TYPE_2__, %struct.hfpll_data* }
%struct.TYPE_2__ = type { %struct.regmap* }
%struct.regmap = type { i32 }
%struct.hfpll_data = type { i64, i64, i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.clk_hw*, i64, i64)* @clk_hfpll_set_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @clk_hfpll_set_rate(%struct.clk_hw* %0, i64 %1, i64 %2) #0 {
  %4 = alloca %struct.clk_hw*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.clk_hfpll*, align 8
  %8 = alloca %struct.hfpll_data*, align 8
  %9 = alloca %struct.regmap*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store %struct.clk_hw* %0, %struct.clk_hw** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  %14 = load %struct.clk_hw*, %struct.clk_hw** %4, align 8
  %15 = call %struct.clk_hfpll* @to_clk_hfpll(%struct.clk_hw* %14)
  store %struct.clk_hfpll* %15, %struct.clk_hfpll** %7, align 8
  %16 = load %struct.clk_hfpll*, %struct.clk_hfpll** %7, align 8
  %17 = getelementptr inbounds %struct.clk_hfpll, %struct.clk_hfpll* %16, i32 0, i32 2
  %18 = load %struct.hfpll_data*, %struct.hfpll_data** %17, align 8
  store %struct.hfpll_data* %18, %struct.hfpll_data** %8, align 8
  %19 = load %struct.clk_hfpll*, %struct.clk_hfpll** %7, align 8
  %20 = getelementptr inbounds %struct.clk_hfpll, %struct.clk_hfpll* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load %struct.regmap*, %struct.regmap** %21, align 8
  store %struct.regmap* %22, %struct.regmap** %9, align 8
  %23 = load i64, i64* %5, align 8
  %24 = load i64, i64* %6, align 8
  %25 = udiv i64 %23, %24
  store i64 %25, i64* %11, align 8
  %26 = load %struct.clk_hfpll*, %struct.clk_hfpll** %7, align 8
  %27 = getelementptr inbounds %struct.clk_hfpll, %struct.clk_hfpll* %26, i32 0, i32 0
  %28 = load i64, i64* %10, align 8
  %29 = call i32 @spin_lock_irqsave(i32* %27, i64 %28)
  %30 = load %struct.clk_hw*, %struct.clk_hw** %4, align 8
  %31 = getelementptr inbounds %struct.clk_hw, %struct.clk_hw* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @__clk_is_enabled(i32 %32)
  store i32 %33, i32* %13, align 4
  %34 = load i32, i32* %13, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %3
  %37 = load %struct.clk_hfpll*, %struct.clk_hfpll** %7, align 8
  %38 = call i32 @__clk_hfpll_disable(%struct.clk_hfpll* %37)
  br label %39

39:                                               ; preds = %36, %3
  %40 = load %struct.hfpll_data*, %struct.hfpll_data** %8, align 8
  %41 = getelementptr inbounds %struct.hfpll_data, %struct.hfpll_data* %40, i32 0, i32 3
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %80

44:                                               ; preds = %39
  %45 = load %struct.hfpll_data*, %struct.hfpll_data** %8, align 8
  %46 = getelementptr inbounds %struct.hfpll_data, %struct.hfpll_data* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %80

49:                                               ; preds = %44
  %50 = load %struct.regmap*, %struct.regmap** %9, align 8
  %51 = load %struct.hfpll_data*, %struct.hfpll_data** %8, align 8
  %52 = getelementptr inbounds %struct.hfpll_data, %struct.hfpll_data* %51, i32 0, i32 3
  %53 = load i64, i64* %52, align 8
  %54 = call i32 @regmap_read(%struct.regmap* %50, i64 %53, i64* %12)
  %55 = load i64, i64* %5, align 8
  %56 = load %struct.hfpll_data*, %struct.hfpll_data** %8, align 8
  %57 = getelementptr inbounds %struct.hfpll_data, %struct.hfpll_data* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = icmp ule i64 %55, %58
  br i1 %59, label %60, label %67

60:                                               ; preds = %49
  %61 = load %struct.hfpll_data*, %struct.hfpll_data** %8, align 8
  %62 = getelementptr inbounds %struct.hfpll_data, %struct.hfpll_data* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = xor i64 %63, -1
  %65 = load i64, i64* %12, align 8
  %66 = and i64 %65, %64
  store i64 %66, i64* %12, align 8
  br label %73

67:                                               ; preds = %49
  %68 = load %struct.hfpll_data*, %struct.hfpll_data** %8, align 8
  %69 = getelementptr inbounds %struct.hfpll_data, %struct.hfpll_data* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = load i64, i64* %12, align 8
  %72 = or i64 %71, %70
  store i64 %72, i64* %12, align 8
  br label %73

73:                                               ; preds = %67, %60
  %74 = load %struct.regmap*, %struct.regmap** %9, align 8
  %75 = load %struct.hfpll_data*, %struct.hfpll_data** %8, align 8
  %76 = getelementptr inbounds %struct.hfpll_data, %struct.hfpll_data* %75, i32 0, i32 3
  %77 = load i64, i64* %76, align 8
  %78 = load i64, i64* %12, align 8
  %79 = call i32 @regmap_write(%struct.regmap* %74, i64 %77, i64 %78)
  br label %80

80:                                               ; preds = %73, %44, %39
  %81 = load %struct.regmap*, %struct.regmap** %9, align 8
  %82 = load %struct.hfpll_data*, %struct.hfpll_data** %8, align 8
  %83 = getelementptr inbounds %struct.hfpll_data, %struct.hfpll_data* %82, i32 0, i32 2
  %84 = load i64, i64* %83, align 8
  %85 = load i64, i64* %11, align 8
  %86 = call i32 @regmap_write(%struct.regmap* %81, i64 %84, i64 %85)
  %87 = load i32, i32* %13, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %92

89:                                               ; preds = %80
  %90 = load %struct.clk_hw*, %struct.clk_hw** %4, align 8
  %91 = call i32 @__clk_hfpll_enable(%struct.clk_hw* %90)
  br label %92

92:                                               ; preds = %89, %80
  %93 = load %struct.clk_hfpll*, %struct.clk_hfpll** %7, align 8
  %94 = getelementptr inbounds %struct.clk_hfpll, %struct.clk_hfpll* %93, i32 0, i32 0
  %95 = load i64, i64* %10, align 8
  %96 = call i32 @spin_unlock_irqrestore(i32* %94, i64 %95)
  ret i32 0
}

declare dso_local %struct.clk_hfpll* @to_clk_hfpll(%struct.clk_hw*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @__clk_is_enabled(i32) #1

declare dso_local i32 @__clk_hfpll_disable(%struct.clk_hfpll*) #1

declare dso_local i32 @regmap_read(%struct.regmap*, i64, i64*) #1

declare dso_local i32 @regmap_write(%struct.regmap*, i64, i64) #1

declare dso_local i32 @__clk_hfpll_enable(%struct.clk_hw*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
