; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/sirf/extr_clk-atlas7.c_unit_clk_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/sirf/extr_clk-atlas7.c_unit_clk_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_hw = type { i32 }
%struct.clk_unit = type { i64, i32, i32, i32, i32 }

@CLK_UNIT_NOC_CLOCK = common dso_local global i64 0, align 8
@SIRFSOC_NOC_CLK_IDLEREQ_CLR = common dso_local global i32 0, align 4
@CLK_UNIT_NOC_SOCKET = common dso_local global i64 0, align 8
@SIRFSOC_NOC_CLK_SLVRDY_SET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.clk_hw*)* @unit_clk_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @unit_clk_enable(%struct.clk_hw* %0) #0 {
  %2 = alloca %struct.clk_hw*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.clk_unit*, align 8
  %5 = alloca i64, align 8
  store %struct.clk_hw* %0, %struct.clk_hw** %2, align 8
  %6 = load %struct.clk_hw*, %struct.clk_hw** %2, align 8
  %7 = call %struct.clk_unit* @to_unitclk(%struct.clk_hw* %6)
  store %struct.clk_unit* %7, %struct.clk_unit** %4, align 8
  %8 = load %struct.clk_unit*, %struct.clk_unit** %4, align 8
  %9 = getelementptr inbounds %struct.clk_unit, %struct.clk_unit* %8, i32 0, i32 4
  %10 = load i32, i32* %9, align 4
  store i32 %10, i32* %3, align 4
  %11 = load %struct.clk_unit*, %struct.clk_unit** %4, align 8
  %12 = getelementptr inbounds %struct.clk_unit, %struct.clk_unit* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 8
  %14 = load i64, i64* %5, align 8
  %15 = call i32 @spin_lock_irqsave(i32 %13, i64 %14)
  %16 = load %struct.clk_unit*, %struct.clk_unit** %4, align 8
  %17 = getelementptr inbounds %struct.clk_unit, %struct.clk_unit* %16, i32 0, i32 3
  %18 = load i32, i32* %17, align 8
  %19 = call i32 @BIT(i32 %18)
  %20 = load i32, i32* %3, align 4
  %21 = call i32 @clkc_writel(i32 %19, i32 %20)
  %22 = load %struct.clk_unit*, %struct.clk_unit** %4, align 8
  %23 = getelementptr inbounds %struct.clk_unit, %struct.clk_unit* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @CLK_UNIT_NOC_CLOCK, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %34

27:                                               ; preds = %1
  %28 = load %struct.clk_unit*, %struct.clk_unit** %4, align 8
  %29 = getelementptr inbounds %struct.clk_unit, %struct.clk_unit* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @BIT(i32 %30)
  %32 = load i32, i32* @SIRFSOC_NOC_CLK_IDLEREQ_CLR, align 4
  %33 = call i32 @clkc_writel(i32 %31, i32 %32)
  br label %48

34:                                               ; preds = %1
  %35 = load %struct.clk_unit*, %struct.clk_unit** %4, align 8
  %36 = getelementptr inbounds %struct.clk_unit, %struct.clk_unit* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @CLK_UNIT_NOC_SOCKET, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %47

40:                                               ; preds = %34
  %41 = load %struct.clk_unit*, %struct.clk_unit** %4, align 8
  %42 = getelementptr inbounds %struct.clk_unit, %struct.clk_unit* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @BIT(i32 %43)
  %45 = load i32, i32* @SIRFSOC_NOC_CLK_SLVRDY_SET, align 4
  %46 = call i32 @clkc_writel(i32 %44, i32 %45)
  br label %47

47:                                               ; preds = %40, %34
  br label %48

48:                                               ; preds = %47, %27
  %49 = load %struct.clk_unit*, %struct.clk_unit** %4, align 8
  %50 = getelementptr inbounds %struct.clk_unit, %struct.clk_unit* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 8
  %52 = load i64, i64* %5, align 8
  %53 = call i32 @spin_unlock_irqrestore(i32 %51, i64 %52)
  ret i32 0
}

declare dso_local %struct.clk_unit* @to_unitclk(%struct.clk_hw*) #1

declare dso_local i32 @spin_lock_irqsave(i32, i64) #1

declare dso_local i32 @clkc_writel(i32, i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
