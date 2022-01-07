; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/tegra/extr_clk-periph-gate.c_clk_periph_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/tegra/extr_clk-periph-gate.c_clk_periph_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_hw = type { i32 }
%struct.tegra_clk_periph_gate = type { i32*, i64, i32, i64 }

@periph_ref_lock = common dso_local global i32 0, align 4
@TEGRA_PERIPH_NO_RESET = common dso_local global i32 0, align 4
@TEGRA_PERIPH_MANUAL_RESET = common dso_local global i32 0, align 4
@TEGRA_PERIPH_WAR_1005168 = common dso_local global i32 0, align 4
@LVL2_CLK_GATE_OVRE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.clk_hw*)* @clk_periph_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @clk_periph_enable(%struct.clk_hw* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.clk_hw*, align 8
  %4 = alloca %struct.tegra_clk_periph_gate*, align 8
  %5 = alloca i64, align 8
  store %struct.clk_hw* %0, %struct.clk_hw** %3, align 8
  %6 = load %struct.clk_hw*, %struct.clk_hw** %3, align 8
  %7 = call %struct.tegra_clk_periph_gate* @to_clk_periph_gate(%struct.clk_hw* %6)
  store %struct.tegra_clk_periph_gate* %7, %struct.tegra_clk_periph_gate** %4, align 8
  store i64 0, i64* %5, align 8
  %8 = load i64, i64* %5, align 8
  %9 = call i32 @spin_lock_irqsave(i32* @periph_ref_lock, i64 %8)
  %10 = load %struct.tegra_clk_periph_gate*, %struct.tegra_clk_periph_gate** %4, align 8
  %11 = getelementptr inbounds %struct.tegra_clk_periph_gate, %struct.tegra_clk_periph_gate* %10, i32 0, i32 0
  %12 = load i32*, i32** %11, align 8
  %13 = load %struct.tegra_clk_periph_gate*, %struct.tegra_clk_periph_gate** %4, align 8
  %14 = getelementptr inbounds %struct.tegra_clk_periph_gate, %struct.tegra_clk_periph_gate* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = getelementptr inbounds i32, i32* %12, i64 %15
  %17 = load i32, i32* %16, align 4
  %18 = add nsw i32 %17, 1
  store i32 %18, i32* %16, align 4
  %19 = load %struct.tegra_clk_periph_gate*, %struct.tegra_clk_periph_gate** %4, align 8
  %20 = getelementptr inbounds %struct.tegra_clk_periph_gate, %struct.tegra_clk_periph_gate* %19, i32 0, i32 0
  %21 = load i32*, i32** %20, align 8
  %22 = load %struct.tegra_clk_periph_gate*, %struct.tegra_clk_periph_gate** %4, align 8
  %23 = getelementptr inbounds %struct.tegra_clk_periph_gate, %struct.tegra_clk_periph_gate* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = getelementptr inbounds i32, i32* %21, i64 %24
  %26 = load i32, i32* %25, align 4
  %27 = icmp sgt i32 %26, 1
  br i1 %27, label %28, label %31

28:                                               ; preds = %1
  %29 = load i64, i64* %5, align 8
  %30 = call i32 @spin_unlock_irqrestore(i32* @periph_ref_lock, i64 %29)
  store i32 0, i32* %2, align 4
  br label %95

31:                                               ; preds = %1
  %32 = load %struct.tegra_clk_periph_gate*, %struct.tegra_clk_periph_gate** %4, align 8
  %33 = call i32 @periph_clk_to_bit(%struct.tegra_clk_periph_gate* %32)
  %34 = load %struct.tegra_clk_periph_gate*, %struct.tegra_clk_periph_gate** %4, align 8
  %35 = call i32 @write_enb_set(i32 %33, %struct.tegra_clk_periph_gate* %34)
  %36 = call i32 @udelay(i32 2)
  %37 = load %struct.tegra_clk_periph_gate*, %struct.tegra_clk_periph_gate** %4, align 8
  %38 = getelementptr inbounds %struct.tegra_clk_periph_gate, %struct.tegra_clk_periph_gate* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 8
  %40 = load i32, i32* @TEGRA_PERIPH_NO_RESET, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %64, label %43

43:                                               ; preds = %31
  %44 = load %struct.tegra_clk_periph_gate*, %struct.tegra_clk_periph_gate** %4, align 8
  %45 = getelementptr inbounds %struct.tegra_clk_periph_gate, %struct.tegra_clk_periph_gate* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 8
  %47 = load i32, i32* @TEGRA_PERIPH_MANUAL_RESET, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %64, label %50

50:                                               ; preds = %43
  %51 = load %struct.tegra_clk_periph_gate*, %struct.tegra_clk_periph_gate** %4, align 8
  %52 = call i32 @read_rst(%struct.tegra_clk_periph_gate* %51)
  %53 = load %struct.tegra_clk_periph_gate*, %struct.tegra_clk_periph_gate** %4, align 8
  %54 = call i32 @periph_clk_to_bit(%struct.tegra_clk_periph_gate* %53)
  %55 = and i32 %52, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %63

57:                                               ; preds = %50
  %58 = call i32 @udelay(i32 5)
  %59 = load %struct.tegra_clk_periph_gate*, %struct.tegra_clk_periph_gate** %4, align 8
  %60 = call i32 @periph_clk_to_bit(%struct.tegra_clk_periph_gate* %59)
  %61 = load %struct.tegra_clk_periph_gate*, %struct.tegra_clk_periph_gate** %4, align 8
  %62 = call i32 @write_rst_clr(i32 %60, %struct.tegra_clk_periph_gate* %61)
  br label %63

63:                                               ; preds = %57, %50
  br label %64

64:                                               ; preds = %63, %43, %31
  %65 = load %struct.tegra_clk_periph_gate*, %struct.tegra_clk_periph_gate** %4, align 8
  %66 = getelementptr inbounds %struct.tegra_clk_periph_gate, %struct.tegra_clk_periph_gate* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 8
  %68 = load i32, i32* @TEGRA_PERIPH_WAR_1005168, align 4
  %69 = and i32 %67, %68
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %92

71:                                               ; preds = %64
  %72 = load %struct.tegra_clk_periph_gate*, %struct.tegra_clk_periph_gate** %4, align 8
  %73 = getelementptr inbounds %struct.tegra_clk_periph_gate, %struct.tegra_clk_periph_gate* %72, i32 0, i32 3
  %74 = load i64, i64* %73, align 8
  %75 = load i64, i64* @LVL2_CLK_GATE_OVRE, align 8
  %76 = add nsw i64 %74, %75
  %77 = call i32 @writel_relaxed(i32 0, i64 %76)
  %78 = call i32 @BIT(i32 22)
  %79 = load %struct.tegra_clk_periph_gate*, %struct.tegra_clk_periph_gate** %4, align 8
  %80 = getelementptr inbounds %struct.tegra_clk_periph_gate, %struct.tegra_clk_periph_gate* %79, i32 0, i32 3
  %81 = load i64, i64* %80, align 8
  %82 = load i64, i64* @LVL2_CLK_GATE_OVRE, align 8
  %83 = add nsw i64 %81, %82
  %84 = call i32 @writel_relaxed(i32 %78, i64 %83)
  %85 = call i32 @udelay(i32 1)
  %86 = load %struct.tegra_clk_periph_gate*, %struct.tegra_clk_periph_gate** %4, align 8
  %87 = getelementptr inbounds %struct.tegra_clk_periph_gate, %struct.tegra_clk_periph_gate* %86, i32 0, i32 3
  %88 = load i64, i64* %87, align 8
  %89 = load i64, i64* @LVL2_CLK_GATE_OVRE, align 8
  %90 = add nsw i64 %88, %89
  %91 = call i32 @writel_relaxed(i32 0, i64 %90)
  br label %92

92:                                               ; preds = %71, %64
  %93 = load i64, i64* %5, align 8
  %94 = call i32 @spin_unlock_irqrestore(i32* @periph_ref_lock, i64 %93)
  store i32 0, i32* %2, align 4
  br label %95

95:                                               ; preds = %92, %28
  %96 = load i32, i32* %2, align 4
  ret i32 %96
}

declare dso_local %struct.tegra_clk_periph_gate* @to_clk_periph_gate(%struct.clk_hw*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @write_enb_set(i32, %struct.tegra_clk_periph_gate*) #1

declare dso_local i32 @periph_clk_to_bit(%struct.tegra_clk_periph_gate*) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @read_rst(%struct.tegra_clk_periph_gate*) #1

declare dso_local i32 @write_rst_clr(i32, %struct.tegra_clk_periph_gate*) #1

declare dso_local i32 @writel_relaxed(i32, i64) #1

declare dso_local i32 @BIT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
