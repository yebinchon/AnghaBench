; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/sirf/extr_clk-atlas7.c_unit_clk_disable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/sirf/extr_clk-atlas7.c_unit_clk_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_hw = type { i32 }
%struct.clk_unit = type { i32, i64, i32, i32, i32 }

@SIRFSOC_CLKC_ROOT_CLK_EN0_CLR = common dso_local global i32 0, align 4
@SIRFSOC_CLKC_ROOT_CLK_EN0_SET = common dso_local global i32 0, align 4
@CLK_UNIT_NOC_CLOCK = common dso_local global i64 0, align 8
@SIRFSOC_NOC_CLK_IDLEREQ_SET = common dso_local global i32 0, align 4
@SIRFSOC_NOC_CLK_IDLE_STATUS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"unit NoC Clock disconnect Error:timeout\0A\00", align 1
@SIRFSOC_NOC_CLK_IDLEREQ_CLR = common dso_local global i32 0, align 4
@CLK_UNIT_NOC_SOCKET = common dso_local global i64 0, align 8
@SIRFSOC_NOC_CLK_SLVRDY_CLR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.clk_hw*)* @unit_clk_disable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @unit_clk_disable(%struct.clk_hw* %0) #0 {
  %2 = alloca %struct.clk_hw*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.clk_unit*, align 8
  %6 = alloca i64, align 8
  store %struct.clk_hw* %0, %struct.clk_hw** %2, align 8
  store i32 0, i32* %4, align 4
  %7 = load %struct.clk_hw*, %struct.clk_hw** %2, align 8
  %8 = call %struct.clk_unit* @to_unitclk(%struct.clk_hw* %7)
  store %struct.clk_unit* %8, %struct.clk_unit** %5, align 8
  %9 = load %struct.clk_unit*, %struct.clk_unit** %5, align 8
  %10 = getelementptr inbounds %struct.clk_unit, %struct.clk_unit* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = load i32, i32* @SIRFSOC_CLKC_ROOT_CLK_EN0_CLR, align 4
  %13 = add nsw i32 %11, %12
  %14 = load i32, i32* @SIRFSOC_CLKC_ROOT_CLK_EN0_SET, align 4
  %15 = sub nsw i32 %13, %14
  store i32 %15, i32* %3, align 4
  %16 = load %struct.clk_unit*, %struct.clk_unit** %5, align 8
  %17 = getelementptr inbounds %struct.clk_unit, %struct.clk_unit* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 8
  %19 = load i64, i64* %6, align 8
  %20 = call i32 @spin_lock_irqsave(i32 %18, i64 %19)
  %21 = load %struct.clk_unit*, %struct.clk_unit** %5, align 8
  %22 = getelementptr inbounds %struct.clk_unit, %struct.clk_unit* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @CLK_UNIT_NOC_CLOCK, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %63

26:                                               ; preds = %1
  %27 = load %struct.clk_unit*, %struct.clk_unit** %5, align 8
  %28 = getelementptr inbounds %struct.clk_unit, %struct.clk_unit* %27, i32 0, i32 4
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @BIT(i32 %29)
  %31 = load i32, i32* @SIRFSOC_NOC_CLK_IDLEREQ_SET, align 4
  %32 = call i32 @clkc_writel(i32 %30, i32 %31)
  br label %33

33:                                               ; preds = %48, %26
  %34 = load i32, i32* @SIRFSOC_NOC_CLK_IDLE_STATUS, align 4
  %35 = call i32 @clkc_readl(i32 %34)
  %36 = load %struct.clk_unit*, %struct.clk_unit** %5, align 8
  %37 = getelementptr inbounds %struct.clk_unit, %struct.clk_unit* %36, i32 0, i32 4
  %38 = load i32, i32* %37, align 8
  %39 = call i32 @BIT(i32 %38)
  %40 = and i32 %35, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %46, label %42

42:                                               ; preds = %33
  %43 = load i32, i32* %4, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %4, align 4
  %45 = icmp slt i32 %43, 100
  br label %46

46:                                               ; preds = %42, %33
  %47 = phi i1 [ false, %33 ], [ %45, %42 ]
  br i1 %47, label %48, label %51

48:                                               ; preds = %46
  %49 = call i32 (...) @cpu_relax()
  %50 = call i32 @udelay(i32 10)
  br label %33

51:                                               ; preds = %46
  %52 = load i32, i32* %4, align 4
  %53 = icmp eq i32 %52, 100
  br i1 %53, label %54, label %62

54:                                               ; preds = %51
  %55 = call i32 @pr_err(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  %56 = load %struct.clk_unit*, %struct.clk_unit** %5, align 8
  %57 = getelementptr inbounds %struct.clk_unit, %struct.clk_unit* %56, i32 0, i32 4
  %58 = load i32, i32* %57, align 8
  %59 = call i32 @BIT(i32 %58)
  %60 = load i32, i32* @SIRFSOC_NOC_CLK_IDLEREQ_CLR, align 4
  %61 = call i32 @clkc_writel(i32 %59, i32 %60)
  br label %84

62:                                               ; preds = %51
  br label %77

63:                                               ; preds = %1
  %64 = load %struct.clk_unit*, %struct.clk_unit** %5, align 8
  %65 = getelementptr inbounds %struct.clk_unit, %struct.clk_unit* %64, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = load i64, i64* @CLK_UNIT_NOC_SOCKET, align 8
  %68 = icmp eq i64 %66, %67
  br i1 %68, label %69, label %76

69:                                               ; preds = %63
  %70 = load %struct.clk_unit*, %struct.clk_unit** %5, align 8
  %71 = getelementptr inbounds %struct.clk_unit, %struct.clk_unit* %70, i32 0, i32 4
  %72 = load i32, i32* %71, align 8
  %73 = call i32 @BIT(i32 %72)
  %74 = load i32, i32* @SIRFSOC_NOC_CLK_SLVRDY_CLR, align 4
  %75 = call i32 @clkc_writel(i32 %73, i32 %74)
  br label %76

76:                                               ; preds = %69, %63
  br label %77

77:                                               ; preds = %76, %62
  %78 = load %struct.clk_unit*, %struct.clk_unit** %5, align 8
  %79 = getelementptr inbounds %struct.clk_unit, %struct.clk_unit* %78, i32 0, i32 3
  %80 = load i32, i32* %79, align 4
  %81 = call i32 @BIT(i32 %80)
  %82 = load i32, i32* %3, align 4
  %83 = call i32 @clkc_writel(i32 %81, i32 %82)
  br label %84

84:                                               ; preds = %77, %54
  %85 = load %struct.clk_unit*, %struct.clk_unit** %5, align 8
  %86 = getelementptr inbounds %struct.clk_unit, %struct.clk_unit* %85, i32 0, i32 2
  %87 = load i32, i32* %86, align 8
  %88 = load i64, i64* %6, align 8
  %89 = call i32 @spin_unlock_irqrestore(i32 %87, i64 %88)
  ret void
}

declare dso_local %struct.clk_unit* @to_unitclk(%struct.clk_hw*) #1

declare dso_local i32 @spin_lock_irqsave(i32, i64) #1

declare dso_local i32 @clkc_writel(i32, i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @clkc_readl(i32) #1

declare dso_local i32 @cpu_relax(...) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
