; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/extr_clk-aspeed.c_aspeed_clk_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/extr_clk-aspeed.c_aspeed_clk_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_hw = type { i32 }
%struct.aspeed_clk_gate = type { i64, i64, i64, i32, i32 }

@ASPEED_RESET_CTRL = common dso_local global i32 0, align 4
@CLK_GATE_SET_TO_DISABLE = common dso_local global i64 0, align 8
@ASPEED_CLK_STOP_CTRL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.clk_hw*)* @aspeed_clk_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @aspeed_clk_enable(%struct.clk_hw* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.clk_hw*, align 8
  %4 = alloca %struct.aspeed_clk_gate*, align 8
  %5 = alloca i64, align 8
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
  store i32 %14, i32* %6, align 4
  %15 = load %struct.aspeed_clk_gate*, %struct.aspeed_clk_gate** %4, align 8
  %16 = getelementptr inbounds %struct.aspeed_clk_gate, %struct.aspeed_clk_gate* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = call i32 @BIT(i64 %17)
  store i32 %18, i32* %7, align 4
  %19 = load %struct.aspeed_clk_gate*, %struct.aspeed_clk_gate** %4, align 8
  %20 = getelementptr inbounds %struct.aspeed_clk_gate, %struct.aspeed_clk_gate* %19, i32 0, i32 3
  %21 = load i32, i32* %20, align 8
  %22 = load i64, i64* %5, align 8
  %23 = call i32 @spin_lock_irqsave(i32 %21, i64 %22)
  %24 = load %struct.clk_hw*, %struct.clk_hw** %3, align 8
  %25 = call i64 @aspeed_clk_is_enabled(%struct.clk_hw* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %33

27:                                               ; preds = %1
  %28 = load %struct.aspeed_clk_gate*, %struct.aspeed_clk_gate** %4, align 8
  %29 = getelementptr inbounds %struct.aspeed_clk_gate, %struct.aspeed_clk_gate* %28, i32 0, i32 3
  %30 = load i32, i32* %29, align 8
  %31 = load i64, i64* %5, align 8
  %32 = call i32 @spin_unlock_irqrestore(i32 %30, i64 %31)
  store i32 0, i32* %2, align 4
  br label %84

33:                                               ; preds = %1
  %34 = load %struct.aspeed_clk_gate*, %struct.aspeed_clk_gate** %4, align 8
  %35 = getelementptr inbounds %struct.aspeed_clk_gate, %struct.aspeed_clk_gate* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = icmp sge i64 %36, 0
  br i1 %37, label %38, label %47

38:                                               ; preds = %33
  %39 = load %struct.aspeed_clk_gate*, %struct.aspeed_clk_gate** %4, align 8
  %40 = getelementptr inbounds %struct.aspeed_clk_gate, %struct.aspeed_clk_gate* %39, i32 0, i32 4
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @ASPEED_RESET_CTRL, align 4
  %43 = load i32, i32* %7, align 4
  %44 = load i32, i32* %7, align 4
  %45 = call i32 @regmap_update_bits(i32 %41, i32 %42, i32 %43, i32 %44)
  %46 = call i32 @udelay(i32 100)
  br label %47

47:                                               ; preds = %38, %33
  %48 = load %struct.aspeed_clk_gate*, %struct.aspeed_clk_gate** %4, align 8
  %49 = getelementptr inbounds %struct.aspeed_clk_gate, %struct.aspeed_clk_gate* %48, i32 0, i32 2
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @CLK_GATE_SET_TO_DISABLE, align 8
  %52 = and i64 %50, %51
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %47
  br label %57

55:                                               ; preds = %47
  %56 = load i32, i32* %6, align 4
  br label %57

57:                                               ; preds = %55, %54
  %58 = phi i32 [ 0, %54 ], [ %56, %55 ]
  store i32 %58, i32* %8, align 4
  %59 = load %struct.aspeed_clk_gate*, %struct.aspeed_clk_gate** %4, align 8
  %60 = getelementptr inbounds %struct.aspeed_clk_gate, %struct.aspeed_clk_gate* %59, i32 0, i32 4
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* @ASPEED_CLK_STOP_CTRL, align 4
  %63 = load i32, i32* %6, align 4
  %64 = load i32, i32* %8, align 4
  %65 = call i32 @regmap_update_bits(i32 %61, i32 %62, i32 %63, i32 %64)
  %66 = load %struct.aspeed_clk_gate*, %struct.aspeed_clk_gate** %4, align 8
  %67 = getelementptr inbounds %struct.aspeed_clk_gate, %struct.aspeed_clk_gate* %66, i32 0, i32 1
  %68 = load i64, i64* %67, align 8
  %69 = icmp sge i64 %68, 0
  br i1 %69, label %70, label %78

70:                                               ; preds = %57
  %71 = call i32 @mdelay(i32 10)
  %72 = load %struct.aspeed_clk_gate*, %struct.aspeed_clk_gate** %4, align 8
  %73 = getelementptr inbounds %struct.aspeed_clk_gate, %struct.aspeed_clk_gate* %72, i32 0, i32 4
  %74 = load i32, i32* %73, align 4
  %75 = load i32, i32* @ASPEED_RESET_CTRL, align 4
  %76 = load i32, i32* %7, align 4
  %77 = call i32 @regmap_update_bits(i32 %74, i32 %75, i32 %76, i32 0)
  br label %78

78:                                               ; preds = %70, %57
  %79 = load %struct.aspeed_clk_gate*, %struct.aspeed_clk_gate** %4, align 8
  %80 = getelementptr inbounds %struct.aspeed_clk_gate, %struct.aspeed_clk_gate* %79, i32 0, i32 3
  %81 = load i32, i32* %80, align 8
  %82 = load i64, i64* %5, align 8
  %83 = call i32 @spin_unlock_irqrestore(i32 %81, i64 %82)
  store i32 0, i32* %2, align 4
  br label %84

84:                                               ; preds = %78, %27
  %85 = load i32, i32* %2, align 4
  ret i32 %85
}

declare dso_local %struct.aspeed_clk_gate* @to_aspeed_clk_gate(%struct.clk_hw*) #1

declare dso_local i32 @BIT(i64) #1

declare dso_local i32 @spin_lock_irqsave(i32, i64) #1

declare dso_local i64 @aspeed_clk_is_enabled(%struct.clk_hw*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32, i64) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @mdelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
