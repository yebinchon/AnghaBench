; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/tegra/extr_clk-pll.c__tegra_clk_register_pll.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/tegra/extr_clk-pll.c__tegra_clk_register_pll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk = type { i32 }
%struct.tegra_clk_pll = type { %struct.TYPE_4__, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { %struct.clk_init_data* }
%struct.clk_init_data = type { i8*, i64, i8**, i32, %struct.clk_ops* }
%struct.TYPE_3__ = type { i32, i32 (%struct.tegra_clk_pll*)*, i64 }
%struct.clk_ops = type { i32 }

@TEGRA_PLLM = common dso_local global i32 0, align 4
@_calc_dynamic_ramp_rate = common dso_local global i64 0, align 8
@_calc_rate = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.clk* (%struct.tegra_clk_pll*, i8*, i8*, i64, %struct.clk_ops*)* @_tegra_clk_register_pll to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.clk* @_tegra_clk_register_pll(%struct.tegra_clk_pll* %0, i8* %1, i8* %2, i64 %3, %struct.clk_ops* %4) #0 {
  %6 = alloca %struct.tegra_clk_pll*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.clk_ops*, align 8
  %11 = alloca %struct.clk_init_data, align 8
  store %struct.tegra_clk_pll* %0, %struct.tegra_clk_pll** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  store %struct.clk_ops* %4, %struct.clk_ops** %10, align 8
  %12 = load i8*, i8** %7, align 8
  %13 = getelementptr inbounds %struct.clk_init_data, %struct.clk_init_data* %11, i32 0, i32 0
  store i8* %12, i8** %13, align 8
  %14 = load %struct.clk_ops*, %struct.clk_ops** %10, align 8
  %15 = getelementptr inbounds %struct.clk_init_data, %struct.clk_init_data* %11, i32 0, i32 4
  store %struct.clk_ops* %14, %struct.clk_ops** %15, align 8
  %16 = load i64, i64* %9, align 8
  %17 = getelementptr inbounds %struct.clk_init_data, %struct.clk_init_data* %11, i32 0, i32 1
  store i64 %16, i64* %17, align 8
  %18 = load i8*, i8** %8, align 8
  %19 = icmp ne i8* %18, null
  br i1 %19, label %20, label %21

20:                                               ; preds = %5
  br label %22

21:                                               ; preds = %5
  br label %22

22:                                               ; preds = %21, %20
  %23 = phi i8** [ %8, %20 ], [ null, %21 ]
  %24 = getelementptr inbounds %struct.clk_init_data, %struct.clk_init_data* %11, i32 0, i32 2
  store i8** %23, i8*** %24, align 8
  %25 = load i8*, i8** %8, align 8
  %26 = icmp ne i8* %25, null
  %27 = zext i1 %26 to i64
  %28 = select i1 %26, i32 1, i32 0
  %29 = getelementptr inbounds %struct.clk_init_data, %struct.clk_init_data* %11, i32 0, i32 3
  store i32 %28, i32* %29, align 8
  %30 = load %struct.tegra_clk_pll*, %struct.tegra_clk_pll** %6, align 8
  %31 = getelementptr inbounds %struct.tegra_clk_pll, %struct.tegra_clk_pll* %30, i32 0, i32 1
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 2
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %58, label %36

36:                                               ; preds = %22
  %37 = load %struct.tegra_clk_pll*, %struct.tegra_clk_pll** %6, align 8
  %38 = getelementptr inbounds %struct.tegra_clk_pll, %struct.tegra_clk_pll* %37, i32 0, i32 1
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = load i32, i32* @TEGRA_PLLM, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %51

45:                                               ; preds = %36
  %46 = load i64, i64* @_calc_dynamic_ramp_rate, align 8
  %47 = load %struct.tegra_clk_pll*, %struct.tegra_clk_pll** %6, align 8
  %48 = getelementptr inbounds %struct.tegra_clk_pll, %struct.tegra_clk_pll* %47, i32 0, i32 1
  %49 = load %struct.TYPE_3__*, %struct.TYPE_3__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 2
  store i64 %46, i64* %50, align 8
  br label %57

51:                                               ; preds = %36
  %52 = load i64, i64* @_calc_rate, align 8
  %53 = load %struct.tegra_clk_pll*, %struct.tegra_clk_pll** %6, align 8
  %54 = getelementptr inbounds %struct.tegra_clk_pll, %struct.tegra_clk_pll* %53, i32 0, i32 1
  %55 = load %struct.TYPE_3__*, %struct.TYPE_3__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 2
  store i64 %52, i64* %56, align 8
  br label %57

57:                                               ; preds = %51, %45
  br label %58

58:                                               ; preds = %57, %22
  %59 = load %struct.tegra_clk_pll*, %struct.tegra_clk_pll** %6, align 8
  %60 = getelementptr inbounds %struct.tegra_clk_pll, %struct.tegra_clk_pll* %59, i32 0, i32 1
  %61 = load %struct.TYPE_3__*, %struct.TYPE_3__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i32 0, i32 1
  %63 = load i32 (%struct.tegra_clk_pll*)*, i32 (%struct.tegra_clk_pll*)** %62, align 8
  %64 = icmp ne i32 (%struct.tegra_clk_pll*)* %63, null
  br i1 %64, label %65, label %73

65:                                               ; preds = %58
  %66 = load %struct.tegra_clk_pll*, %struct.tegra_clk_pll** %6, align 8
  %67 = getelementptr inbounds %struct.tegra_clk_pll, %struct.tegra_clk_pll* %66, i32 0, i32 1
  %68 = load %struct.TYPE_3__*, %struct.TYPE_3__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %68, i32 0, i32 1
  %70 = load i32 (%struct.tegra_clk_pll*)*, i32 (%struct.tegra_clk_pll*)** %69, align 8
  %71 = load %struct.tegra_clk_pll*, %struct.tegra_clk_pll** %6, align 8
  %72 = call i32 %70(%struct.tegra_clk_pll* %71)
  br label %73

73:                                               ; preds = %65, %58
  %74 = load %struct.tegra_clk_pll*, %struct.tegra_clk_pll** %6, align 8
  %75 = getelementptr inbounds %struct.tegra_clk_pll, %struct.tegra_clk_pll* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 0
  store %struct.clk_init_data* %11, %struct.clk_init_data** %76, align 8
  %77 = load %struct.tegra_clk_pll*, %struct.tegra_clk_pll** %6, align 8
  %78 = getelementptr inbounds %struct.tegra_clk_pll, %struct.tegra_clk_pll* %77, i32 0, i32 0
  %79 = call %struct.clk* @clk_register(i32* null, %struct.TYPE_4__* %78)
  ret %struct.clk* %79
}

declare dso_local %struct.clk* @clk_register(i32*, %struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
