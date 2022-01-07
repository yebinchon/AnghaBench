; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/extr_clk-milbeaut.c_m10v_clk_divider_round_rate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/extr_clk-milbeaut.c_m10v_clk_divider_round_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_hw = type { i32 }
%struct.m10v_clk_divider = type { i32, i32, i32, i32, i32 }

@CLK_DIVIDER_READ_ONLY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.clk_hw*, i64, i64*)* @m10v_clk_divider_round_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @m10v_clk_divider_round_rate(%struct.clk_hw* %0, i64 %1, i64* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.clk_hw*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64*, align 8
  %8 = alloca %struct.m10v_clk_divider*, align 8
  %9 = alloca i32, align 4
  store %struct.clk_hw* %0, %struct.clk_hw** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64* %2, i64** %7, align 8
  %10 = load %struct.clk_hw*, %struct.clk_hw** %5, align 8
  %11 = call %struct.m10v_clk_divider* @to_m10v_div(%struct.clk_hw* %10)
  store %struct.m10v_clk_divider* %11, %struct.m10v_clk_divider** %8, align 8
  %12 = load %struct.m10v_clk_divider*, %struct.m10v_clk_divider** %8, align 8
  %13 = getelementptr inbounds %struct.m10v_clk_divider, %struct.m10v_clk_divider* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @CLK_DIVIDER_READ_ONLY, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %47

18:                                               ; preds = %3
  %19 = load %struct.m10v_clk_divider*, %struct.m10v_clk_divider** %8, align 8
  %20 = getelementptr inbounds %struct.m10v_clk_divider, %struct.m10v_clk_divider* %19, i32 0, i32 4
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @readl(i32 %21)
  %23 = load %struct.m10v_clk_divider*, %struct.m10v_clk_divider** %8, align 8
  %24 = getelementptr inbounds %struct.m10v_clk_divider, %struct.m10v_clk_divider* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = ashr i32 %22, %25
  store i32 %26, i32* %9, align 4
  %27 = load %struct.m10v_clk_divider*, %struct.m10v_clk_divider** %8, align 8
  %28 = getelementptr inbounds %struct.m10v_clk_divider, %struct.m10v_clk_divider* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @clk_div_mask(i32 %29)
  %31 = load i32, i32* %9, align 4
  %32 = and i32 %31, %30
  store i32 %32, i32* %9, align 4
  %33 = load %struct.clk_hw*, %struct.clk_hw** %5, align 8
  %34 = load i64, i64* %6, align 8
  %35 = load i64*, i64** %7, align 8
  %36 = load %struct.m10v_clk_divider*, %struct.m10v_clk_divider** %8, align 8
  %37 = getelementptr inbounds %struct.m10v_clk_divider, %struct.m10v_clk_divider* %36, i32 0, i32 3
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.m10v_clk_divider*, %struct.m10v_clk_divider** %8, align 8
  %40 = getelementptr inbounds %struct.m10v_clk_divider, %struct.m10v_clk_divider* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.m10v_clk_divider*, %struct.m10v_clk_divider** %8, align 8
  %43 = getelementptr inbounds %struct.m10v_clk_divider, %struct.m10v_clk_divider* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* %9, align 4
  %46 = call i64 @divider_ro_round_rate(%struct.clk_hw* %33, i64 %34, i64* %35, i32 %38, i32 %41, i32 %44, i32 %45)
  store i64 %46, i64* %4, align 8
  br label %61

47:                                               ; preds = %3
  %48 = load %struct.clk_hw*, %struct.clk_hw** %5, align 8
  %49 = load i64, i64* %6, align 8
  %50 = load i64*, i64** %7, align 8
  %51 = load %struct.m10v_clk_divider*, %struct.m10v_clk_divider** %8, align 8
  %52 = getelementptr inbounds %struct.m10v_clk_divider, %struct.m10v_clk_divider* %51, i32 0, i32 3
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.m10v_clk_divider*, %struct.m10v_clk_divider** %8, align 8
  %55 = getelementptr inbounds %struct.m10v_clk_divider, %struct.m10v_clk_divider* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.m10v_clk_divider*, %struct.m10v_clk_divider** %8, align 8
  %58 = getelementptr inbounds %struct.m10v_clk_divider, %struct.m10v_clk_divider* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = call i64 @divider_round_rate(%struct.clk_hw* %48, i64 %49, i64* %50, i32 %53, i32 %56, i32 %59)
  store i64 %60, i64* %4, align 8
  br label %61

61:                                               ; preds = %47, %18
  %62 = load i64, i64* %4, align 8
  ret i64 %62
}

declare dso_local %struct.m10v_clk_divider* @to_m10v_div(%struct.clk_hw*) #1

declare dso_local i32 @readl(i32) #1

declare dso_local i32 @clk_div_mask(i32) #1

declare dso_local i64 @divider_ro_round_rate(%struct.clk_hw*, i64, i64*, i32, i32, i32, i32) #1

declare dso_local i64 @divider_round_rate(%struct.clk_hw*, i64, i64*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
