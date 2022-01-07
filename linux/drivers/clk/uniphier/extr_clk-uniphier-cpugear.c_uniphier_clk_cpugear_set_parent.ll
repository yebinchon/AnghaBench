; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/uniphier/extr_clk-uniphier-cpugear.c_uniphier_clk_cpugear_set_parent.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/uniphier/extr_clk-uniphier-cpugear.c_uniphier_clk_cpugear_set_parent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_hw = type { i32 }
%struct.uniphier_clk_cpugear = type { i32, i64, i32 }

@UNIPHIER_CLK_CPUGEAR_SET = common dso_local global i64 0, align 8
@UNIPHIER_CLK_CPUGEAR_UPD = common dso_local global i64 0, align 8
@UNIPHIER_CLK_CPUGEAR_UPD_BIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.clk_hw*, i32)* @uniphier_clk_cpugear_set_parent to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uniphier_clk_cpugear_set_parent(%struct.clk_hw* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.clk_hw*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.uniphier_clk_cpugear*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.clk_hw* %0, %struct.clk_hw** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.clk_hw*, %struct.clk_hw** %4, align 8
  %10 = call %struct.uniphier_clk_cpugear* @to_uniphier_clk_cpugear(%struct.clk_hw* %9)
  store %struct.uniphier_clk_cpugear* %10, %struct.uniphier_clk_cpugear** %6, align 8
  %11 = load %struct.uniphier_clk_cpugear*, %struct.uniphier_clk_cpugear** %6, align 8
  %12 = getelementptr inbounds %struct.uniphier_clk_cpugear, %struct.uniphier_clk_cpugear* %11, i32 0, i32 2
  %13 = load i32, i32* %12, align 8
  %14 = load %struct.uniphier_clk_cpugear*, %struct.uniphier_clk_cpugear** %6, align 8
  %15 = getelementptr inbounds %struct.uniphier_clk_cpugear, %struct.uniphier_clk_cpugear* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @UNIPHIER_CLK_CPUGEAR_SET, align 8
  %18 = add nsw i64 %16, %17
  %19 = load %struct.uniphier_clk_cpugear*, %struct.uniphier_clk_cpugear** %6, align 8
  %20 = getelementptr inbounds %struct.uniphier_clk_cpugear, %struct.uniphier_clk_cpugear* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* %5, align 4
  %23 = call i32 @regmap_write_bits(i32 %13, i64 %18, i32 %21, i32 %22)
  store i32 %23, i32* %7, align 4
  %24 = load i32, i32* %7, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %2
  %27 = load i32, i32* %7, align 4
  store i32 %27, i32* %3, align 4
  br label %61

28:                                               ; preds = %2
  %29 = load %struct.uniphier_clk_cpugear*, %struct.uniphier_clk_cpugear** %6, align 8
  %30 = getelementptr inbounds %struct.uniphier_clk_cpugear, %struct.uniphier_clk_cpugear* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 8
  %32 = load %struct.uniphier_clk_cpugear*, %struct.uniphier_clk_cpugear** %6, align 8
  %33 = getelementptr inbounds %struct.uniphier_clk_cpugear, %struct.uniphier_clk_cpugear* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @UNIPHIER_CLK_CPUGEAR_UPD, align 8
  %36 = add nsw i64 %34, %35
  %37 = load i32, i32* @UNIPHIER_CLK_CPUGEAR_UPD_BIT, align 4
  %38 = load i32, i32* @UNIPHIER_CLK_CPUGEAR_UPD_BIT, align 4
  %39 = call i32 @regmap_write_bits(i32 %31, i64 %36, i32 %37, i32 %38)
  store i32 %39, i32* %7, align 4
  %40 = load i32, i32* %7, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %28
  %43 = load i32, i32* %7, align 4
  store i32 %43, i32* %3, align 4
  br label %61

44:                                               ; preds = %28
  %45 = load %struct.uniphier_clk_cpugear*, %struct.uniphier_clk_cpugear** %6, align 8
  %46 = getelementptr inbounds %struct.uniphier_clk_cpugear, %struct.uniphier_clk_cpugear* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 8
  %48 = load %struct.uniphier_clk_cpugear*, %struct.uniphier_clk_cpugear** %6, align 8
  %49 = getelementptr inbounds %struct.uniphier_clk_cpugear, %struct.uniphier_clk_cpugear* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @UNIPHIER_CLK_CPUGEAR_UPD, align 8
  %52 = add nsw i64 %50, %51
  %53 = load i32, i32* %8, align 4
  %54 = load i32, i32* %8, align 4
  %55 = load i32, i32* @UNIPHIER_CLK_CPUGEAR_UPD_BIT, align 4
  %56 = and i32 %54, %55
  %57 = icmp ne i32 %56, 0
  %58 = xor i1 %57, true
  %59 = zext i1 %58 to i32
  %60 = call i32 @regmap_read_poll_timeout(i32 %47, i64 %52, i32 %53, i32 %59, i32 0, i32 1)
  store i32 %60, i32* %3, align 4
  br label %61

61:                                               ; preds = %44, %42, %26
  %62 = load i32, i32* %3, align 4
  ret i32 %62
}

declare dso_local %struct.uniphier_clk_cpugear* @to_uniphier_clk_cpugear(%struct.clk_hw*) #1

declare dso_local i32 @regmap_write_bits(i32, i64, i32, i32) #1

declare dso_local i32 @regmap_read_poll_timeout(i32, i64, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
