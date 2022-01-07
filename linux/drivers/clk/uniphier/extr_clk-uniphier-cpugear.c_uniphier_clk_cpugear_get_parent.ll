; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/uniphier/extr_clk-uniphier-cpugear.c_uniphier_clk_cpugear_get_parent.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/uniphier/extr_clk-uniphier-cpugear.c_uniphier_clk_cpugear_get_parent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_hw = type { i32 }
%struct.uniphier_clk_cpugear = type { i32, i64, i32 }

@UNIPHIER_CLK_CPUGEAR_STAT = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.clk_hw*)* @uniphier_clk_cpugear_get_parent to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uniphier_clk_cpugear_get_parent(%struct.clk_hw* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.clk_hw*, align 8
  %4 = alloca %struct.uniphier_clk_cpugear*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.clk_hw* %0, %struct.clk_hw** %3, align 8
  %8 = load %struct.clk_hw*, %struct.clk_hw** %3, align 8
  %9 = call %struct.uniphier_clk_cpugear* @to_uniphier_clk_cpugear(%struct.clk_hw* %8)
  store %struct.uniphier_clk_cpugear* %9, %struct.uniphier_clk_cpugear** %4, align 8
  %10 = load %struct.clk_hw*, %struct.clk_hw** %3, align 8
  %11 = call i32 @clk_hw_get_num_parents(%struct.clk_hw* %10)
  store i32 %11, i32* %5, align 4
  %12 = load %struct.uniphier_clk_cpugear*, %struct.uniphier_clk_cpugear** %4, align 8
  %13 = getelementptr inbounds %struct.uniphier_clk_cpugear, %struct.uniphier_clk_cpugear* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 8
  %15 = load %struct.uniphier_clk_cpugear*, %struct.uniphier_clk_cpugear** %4, align 8
  %16 = getelementptr inbounds %struct.uniphier_clk_cpugear, %struct.uniphier_clk_cpugear* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @UNIPHIER_CLK_CPUGEAR_STAT, align 8
  %19 = add nsw i64 %17, %18
  %20 = call i32 @regmap_read(i32 %14, i64 %19, i32* %7)
  store i32 %20, i32* %6, align 4
  %21 = load i32, i32* %6, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %1
  %24 = load i32, i32* %6, align 4
  store i32 %24, i32* %2, align 4
  br label %41

25:                                               ; preds = %1
  %26 = load %struct.uniphier_clk_cpugear*, %struct.uniphier_clk_cpugear** %4, align 8
  %27 = getelementptr inbounds %struct.uniphier_clk_cpugear, %struct.uniphier_clk_cpugear* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* %7, align 4
  %30 = and i32 %29, %28
  store i32 %30, i32* %7, align 4
  %31 = load i32, i32* %7, align 4
  %32 = load i32, i32* %5, align 4
  %33 = icmp ult i32 %31, %32
  br i1 %33, label %34, label %36

34:                                               ; preds = %25
  %35 = load i32, i32* %7, align 4
  br label %39

36:                                               ; preds = %25
  %37 = load i32, i32* @EINVAL, align 4
  %38 = sub nsw i32 0, %37
  br label %39

39:                                               ; preds = %36, %34
  %40 = phi i32 [ %35, %34 ], [ %38, %36 ]
  store i32 %40, i32* %2, align 4
  br label %41

41:                                               ; preds = %39, %23
  %42 = load i32, i32* %2, align 4
  ret i32 %42
}

declare dso_local %struct.uniphier_clk_cpugear* @to_uniphier_clk_cpugear(%struct.clk_hw*) #1

declare dso_local i32 @clk_hw_get_num_parents(%struct.clk_hw*) #1

declare dso_local i32 @regmap_read(i32, i64, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
