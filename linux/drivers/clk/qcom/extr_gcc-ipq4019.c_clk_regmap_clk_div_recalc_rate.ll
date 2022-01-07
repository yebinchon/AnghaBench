; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/qcom/extr_gcc-ipq4019.c_clk_regmap_clk_div_recalc_rate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/qcom/extr_gcc-ipq4019.c_clk_regmap_clk_div_recalc_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_hw = type { i32 }
%struct.clk_fepll = type { i32, %struct.clk_div_table*, %struct.TYPE_4__ }
%struct.clk_div_table = type { i32, i32 }
%struct.TYPE_4__ = type { i32, i32, i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.clk_hw*, i64)* @clk_regmap_clk_div_recalc_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @clk_regmap_clk_div_recalc_rate(%struct.clk_hw* %0, i64 %1) #0 {
  %3 = alloca %struct.clk_hw*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.clk_fepll*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca %struct.clk_div_table*, align 8
  store %struct.clk_hw* %0, %struct.clk_hw** %3, align 8
  store i64 %1, i64* %4, align 8
  %10 = load %struct.clk_hw*, %struct.clk_hw** %3, align 8
  %11 = call %struct.clk_fepll* @to_clk_fepll(%struct.clk_hw* %10)
  store %struct.clk_fepll* %11, %struct.clk_fepll** %5, align 8
  store i32 1, i32* %7, align 4
  %12 = load %struct.clk_fepll*, %struct.clk_fepll** %5, align 8
  %13 = getelementptr inbounds %struct.clk_fepll, %struct.clk_fepll* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %20

16:                                               ; preds = %2
  %17 = load %struct.clk_fepll*, %struct.clk_fepll** %5, align 8
  %18 = getelementptr inbounds %struct.clk_fepll, %struct.clk_fepll* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  store i32 %19, i32* %7, align 4
  br label %67

20:                                               ; preds = %2
  %21 = load %struct.clk_fepll*, %struct.clk_fepll** %5, align 8
  %22 = getelementptr inbounds %struct.clk_fepll, %struct.clk_fepll* %21, i32 0, i32 2
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 3
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.clk_fepll*, %struct.clk_fepll** %5, align 8
  %27 = getelementptr inbounds %struct.clk_fepll, %struct.clk_fepll* %26, i32 0, i32 2
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @regmap_read(i32 %25, i32 %29, i32* %6)
  %31 = load i32, i32* %6, align 4
  %32 = load %struct.clk_fepll*, %struct.clk_fepll** %5, align 8
  %33 = getelementptr inbounds %struct.clk_fepll, %struct.clk_fepll* %32, i32 0, i32 2
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = ashr i32 %31, %35
  %37 = load %struct.clk_fepll*, %struct.clk_fepll** %5, align 8
  %38 = getelementptr inbounds %struct.clk_fepll, %struct.clk_fepll* %37, i32 0, i32 2
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @BIT(i32 %40)
  %42 = sub nsw i32 %41, 1
  %43 = and i32 %36, %42
  store i32 %43, i32* %6, align 4
  %44 = load %struct.clk_fepll*, %struct.clk_fepll** %5, align 8
  %45 = getelementptr inbounds %struct.clk_fepll, %struct.clk_fepll* %44, i32 0, i32 1
  %46 = load %struct.clk_div_table*, %struct.clk_div_table** %45, align 8
  store %struct.clk_div_table* %46, %struct.clk_div_table** %9, align 8
  br label %47

47:                                               ; preds = %63, %20
  %48 = load %struct.clk_div_table*, %struct.clk_div_table** %9, align 8
  %49 = getelementptr inbounds %struct.clk_div_table, %struct.clk_div_table* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %66

52:                                               ; preds = %47
  %53 = load %struct.clk_div_table*, %struct.clk_div_table** %9, align 8
  %54 = getelementptr inbounds %struct.clk_div_table, %struct.clk_div_table* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* %6, align 4
  %57 = icmp eq i32 %55, %56
  br i1 %57, label %58, label %62

58:                                               ; preds = %52
  %59 = load %struct.clk_div_table*, %struct.clk_div_table** %9, align 8
  %60 = getelementptr inbounds %struct.clk_div_table, %struct.clk_div_table* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  store i32 %61, i32* %7, align 4
  br label %62

62:                                               ; preds = %58, %52
  br label %63

63:                                               ; preds = %62
  %64 = load %struct.clk_div_table*, %struct.clk_div_table** %9, align 8
  %65 = getelementptr inbounds %struct.clk_div_table, %struct.clk_div_table* %64, i32 1
  store %struct.clk_div_table* %65, %struct.clk_div_table** %9, align 8
  br label %47

66:                                               ; preds = %47
  br label %67

67:                                               ; preds = %66, %16
  %68 = load %struct.clk_fepll*, %struct.clk_fepll** %5, align 8
  %69 = load i64, i64* %4, align 8
  %70 = call i64 @clk_fepll_vco_calc_rate(%struct.clk_fepll* %68, i64 %69)
  store i64 %70, i64* %8, align 8
  %71 = load i64, i64* %8, align 8
  %72 = load i32, i32* %7, align 4
  %73 = call i32 @do_div(i64 %71, i32 %72)
  %74 = load i64, i64* %8, align 8
  ret i64 %74
}

declare dso_local %struct.clk_fepll* @to_clk_fepll(%struct.clk_hw*) #1

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i64 @clk_fepll_vco_calc_rate(%struct.clk_fepll*, i64) #1

declare dso_local i32 @do_div(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
