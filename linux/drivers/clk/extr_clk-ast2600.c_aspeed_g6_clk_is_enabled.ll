; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/extr_clk-ast2600.c_aspeed_g6_clk_is_enabled.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/extr_clk-ast2600.c_aspeed_g6_clk_is_enabled.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_hw = type { i32 }
%struct.aspeed_clk_gate = type { i64, i64, i32, i32 }

@CLK_GATE_SET_TO_DISABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.clk_hw*)* @aspeed_g6_clk_is_enabled to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @aspeed_g6_clk_is_enabled(%struct.clk_hw* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.clk_hw*, align 8
  %4 = alloca %struct.aspeed_clk_gate*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.clk_hw* %0, %struct.clk_hw** %3, align 8
  %9 = load %struct.clk_hw*, %struct.clk_hw** %3, align 8
  %10 = call %struct.aspeed_clk_gate* @to_aspeed_clk_gate(%struct.clk_hw* %9)
  store %struct.aspeed_clk_gate* %10, %struct.aspeed_clk_gate** %4, align 8
  %11 = load %struct.aspeed_clk_gate*, %struct.aspeed_clk_gate** %4, align 8
  %12 = getelementptr inbounds %struct.aspeed_clk_gate, %struct.aspeed_clk_gate* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = call i32 @get_bit(i64 %13)
  store i32 %14, i32* %5, align 4
  %15 = load %struct.aspeed_clk_gate*, %struct.aspeed_clk_gate** %4, align 8
  %16 = getelementptr inbounds %struct.aspeed_clk_gate, %struct.aspeed_clk_gate* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = call i32 @get_bit(i64 %17)
  store i32 %18, i32* %6, align 4
  %19 = load %struct.aspeed_clk_gate*, %struct.aspeed_clk_gate** %4, align 8
  %20 = getelementptr inbounds %struct.aspeed_clk_gate, %struct.aspeed_clk_gate* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = icmp sge i64 %21, 0
  br i1 %22, label %23, label %36

23:                                               ; preds = %1
  %24 = load %struct.aspeed_clk_gate*, %struct.aspeed_clk_gate** %4, align 8
  %25 = getelementptr inbounds %struct.aspeed_clk_gate, %struct.aspeed_clk_gate* %24, i32 0, i32 3
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.aspeed_clk_gate*, %struct.aspeed_clk_gate** %4, align 8
  %28 = call i32 @get_reset_reg(%struct.aspeed_clk_gate* %27)
  %29 = call i32 @regmap_read(i32 %26, i32 %28, i32* %7)
  %30 = load i32, i32* %7, align 4
  %31 = load i32, i32* %6, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %23
  store i32 0, i32* %2, align 4
  br label %61

35:                                               ; preds = %23
  br label %36

36:                                               ; preds = %35, %1
  %37 = load %struct.aspeed_clk_gate*, %struct.aspeed_clk_gate** %4, align 8
  %38 = getelementptr inbounds %struct.aspeed_clk_gate, %struct.aspeed_clk_gate* %37, i32 0, i32 3
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.aspeed_clk_gate*, %struct.aspeed_clk_gate** %4, align 8
  %41 = call i32 @get_clock_reg(%struct.aspeed_clk_gate* %40)
  %42 = call i32 @regmap_read(i32 %39, i32 %41, i32* %7)
  %43 = load %struct.aspeed_clk_gate*, %struct.aspeed_clk_gate** %4, align 8
  %44 = getelementptr inbounds %struct.aspeed_clk_gate, %struct.aspeed_clk_gate* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 8
  %46 = load i32, i32* @CLK_GATE_SET_TO_DISABLE, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %36
  br label %52

50:                                               ; preds = %36
  %51 = load i32, i32* %5, align 4
  br label %52

52:                                               ; preds = %50, %49
  %53 = phi i32 [ 0, %49 ], [ %51, %50 ]
  store i32 %53, i32* %8, align 4
  %54 = load i32, i32* %7, align 4
  %55 = load i32, i32* %5, align 4
  %56 = and i32 %54, %55
  %57 = load i32, i32* %8, align 4
  %58 = icmp eq i32 %56, %57
  %59 = zext i1 %58 to i64
  %60 = select i1 %58, i32 1, i32 0
  store i32 %60, i32* %2, align 4
  br label %61

61:                                               ; preds = %52, %34
  %62 = load i32, i32* %2, align 4
  ret i32 %62
}

declare dso_local %struct.aspeed_clk_gate* @to_aspeed_clk_gate(%struct.clk_hw*) #1

declare dso_local i32 @get_bit(i64) #1

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

declare dso_local i32 @get_reset_reg(%struct.aspeed_clk_gate*) #1

declare dso_local i32 @get_clock_reg(%struct.aspeed_clk_gate*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
