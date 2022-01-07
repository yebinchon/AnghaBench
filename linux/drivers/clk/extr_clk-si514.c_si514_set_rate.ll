; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/extr_clk-si514.c_si514_set_rate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/extr_clk-si514.c_si514_set_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_hw = type { i32 }
%struct.clk_si514 = type { i32 }
%struct.clk_si514_muldiv = type { i32 }

@SI514_REG_CONTROL = common dso_local global i32 0, align 4
@SI514_CONTROL_FCAL = common dso_local global i32 0, align 4
@SI514_CONTROL_OE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.clk_hw*, i64, i64)* @si514_set_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @si514_set_rate(%struct.clk_hw* %0, i64 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.clk_hw*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.clk_si514*, align 8
  %9 = alloca %struct.clk_si514_muldiv, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.clk_hw* %0, %struct.clk_hw** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  %12 = load %struct.clk_hw*, %struct.clk_hw** %5, align 8
  %13 = call %struct.clk_si514* @to_clk_si514(%struct.clk_hw* %12)
  store %struct.clk_si514* %13, %struct.clk_si514** %8, align 8
  %14 = load i64, i64* %6, align 8
  %15 = call i32 @si514_calc_muldiv(%struct.clk_si514_muldiv* %9, i64 %14)
  store i32 %15, i32* %11, align 4
  %16 = load i32, i32* %11, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %3
  %19 = load i32, i32* %11, align 4
  store i32 %19, i32* %4, align 4
  br label %61

20:                                               ; preds = %3
  %21 = load %struct.clk_si514*, %struct.clk_si514** %8, align 8
  %22 = getelementptr inbounds %struct.clk_si514, %struct.clk_si514* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @SI514_REG_CONTROL, align 4
  %25 = call i32 @regmap_read(i32 %23, i32 %24, i32* %10)
  store i32 %25, i32* %11, align 4
  %26 = load i32, i32* %11, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %20
  %29 = load i32, i32* %11, align 4
  store i32 %29, i32* %4, align 4
  br label %61

30:                                               ; preds = %20
  %31 = load %struct.clk_si514*, %struct.clk_si514** %8, align 8
  %32 = call i32 @si514_enable_output(%struct.clk_si514* %31, i32 0)
  %33 = load %struct.clk_si514*, %struct.clk_si514** %8, align 8
  %34 = call i32 @si514_set_muldiv(%struct.clk_si514* %33, %struct.clk_si514_muldiv* %9)
  store i32 %34, i32* %11, align 4
  %35 = load i32, i32* %11, align 4
  %36 = icmp slt i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %30
  %38 = load i32, i32* %11, align 4
  store i32 %38, i32* %4, align 4
  br label %61

39:                                               ; preds = %30
  %40 = load %struct.clk_si514*, %struct.clk_si514** %8, align 8
  %41 = getelementptr inbounds %struct.clk_si514, %struct.clk_si514* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @SI514_REG_CONTROL, align 4
  %44 = load i32, i32* @SI514_CONTROL_FCAL, align 4
  %45 = call i32 @regmap_write(i32 %42, i32 %43, i32 %44)
  store i32 %45, i32* %11, align 4
  %46 = load i32, i32* %11, align 4
  %47 = icmp slt i32 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %39
  %49 = load i32, i32* %11, align 4
  store i32 %49, i32* %4, align 4
  br label %61

50:                                               ; preds = %39
  %51 = call i32 @usleep_range(i32 10000, i32 12000)
  %52 = load i32, i32* %10, align 4
  %53 = load i32, i32* @SI514_CONTROL_OE, align 4
  %54 = and i32 %52, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %59

56:                                               ; preds = %50
  %57 = load %struct.clk_si514*, %struct.clk_si514** %8, align 8
  %58 = call i32 @si514_enable_output(%struct.clk_si514* %57, i32 1)
  br label %59

59:                                               ; preds = %56, %50
  %60 = load i32, i32* %11, align 4
  store i32 %60, i32* %4, align 4
  br label %61

61:                                               ; preds = %59, %48, %37, %28, %18
  %62 = load i32, i32* %4, align 4
  ret i32 %62
}

declare dso_local %struct.clk_si514* @to_clk_si514(%struct.clk_hw*) #1

declare dso_local i32 @si514_calc_muldiv(%struct.clk_si514_muldiv*, i64) #1

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

declare dso_local i32 @si514_enable_output(%struct.clk_si514*, i32) #1

declare dso_local i32 @si514_set_muldiv(%struct.clk_si514*, %struct.clk_si514_muldiv*) #1

declare dso_local i32 @regmap_write(i32, i32, i32) #1

declare dso_local i32 @usleep_range(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
