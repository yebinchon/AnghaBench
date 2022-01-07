; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/extr_clk-aspeed.c_aspeed_clk_is_enabled.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/extr_clk-aspeed.c_aspeed_clk_is_enabled.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_hw = type { i32 }
%struct.aspeed_clk_gate = type { i64, i64, i32, i32 }

@CLK_GATE_SET_TO_DISABLE = common dso_local global i32 0, align 4
@ASPEED_RESET_CTRL = common dso_local global i32 0, align 4
@ASPEED_CLK_STOP_CTRL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.clk_hw*)* @aspeed_clk_is_enabled to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @aspeed_clk_is_enabled(%struct.clk_hw* %0) #0 {
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
  %14 = call i32 @BIT(i64 %13)
  store i32 %14, i32* %5, align 4
  %15 = load %struct.aspeed_clk_gate*, %struct.aspeed_clk_gate** %4, align 8
  %16 = getelementptr inbounds %struct.aspeed_clk_gate, %struct.aspeed_clk_gate* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = call i32 @BIT(i64 %17)
  store i32 %18, i32* %6, align 4
  %19 = load %struct.aspeed_clk_gate*, %struct.aspeed_clk_gate** %4, align 8
  %20 = getelementptr inbounds %struct.aspeed_clk_gate, %struct.aspeed_clk_gate* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* @CLK_GATE_SET_TO_DISABLE, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %1
  br label %28

26:                                               ; preds = %1
  %27 = load i32, i32* %5, align 4
  br label %28

28:                                               ; preds = %26, %25
  %29 = phi i32 [ 0, %25 ], [ %27, %26 ]
  store i32 %29, i32* %7, align 4
  %30 = load %struct.aspeed_clk_gate*, %struct.aspeed_clk_gate** %4, align 8
  %31 = getelementptr inbounds %struct.aspeed_clk_gate, %struct.aspeed_clk_gate* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = icmp sge i64 %32, 0
  br i1 %33, label %34, label %46

34:                                               ; preds = %28
  %35 = load %struct.aspeed_clk_gate*, %struct.aspeed_clk_gate** %4, align 8
  %36 = getelementptr inbounds %struct.aspeed_clk_gate, %struct.aspeed_clk_gate* %35, i32 0, i32 3
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @ASPEED_RESET_CTRL, align 4
  %39 = call i32 @regmap_read(i32 %37, i32 %38, i32* %8)
  %40 = load i32, i32* %8, align 4
  %41 = load i32, i32* %6, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %34
  store i32 0, i32* %2, align 4
  br label %59

45:                                               ; preds = %34
  br label %46

46:                                               ; preds = %45, %28
  %47 = load %struct.aspeed_clk_gate*, %struct.aspeed_clk_gate** %4, align 8
  %48 = getelementptr inbounds %struct.aspeed_clk_gate, %struct.aspeed_clk_gate* %47, i32 0, i32 3
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* @ASPEED_CLK_STOP_CTRL, align 4
  %51 = call i32 @regmap_read(i32 %49, i32 %50, i32* %8)
  %52 = load i32, i32* %8, align 4
  %53 = load i32, i32* %5, align 4
  %54 = and i32 %52, %53
  %55 = load i32, i32* %7, align 4
  %56 = icmp eq i32 %54, %55
  %57 = zext i1 %56 to i64
  %58 = select i1 %56, i32 1, i32 0
  store i32 %58, i32* %2, align 4
  br label %59

59:                                               ; preds = %46, %44
  %60 = load i32, i32* %2, align 4
  ret i32 %60
}

declare dso_local %struct.aspeed_clk_gate* @to_aspeed_clk_gate(%struct.clk_hw*) #1

declare dso_local i32 @BIT(i64) #1

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
