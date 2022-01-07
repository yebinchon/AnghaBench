; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/socfpga/extr_clk-gate.c_socfpga_clk_recalc_rate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/socfpga/extr_clk-gate.c_socfpga_clk_recalc_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_hw = type { i32 }
%struct.socfpga_gate_clk = type { i32, i32, i64, i64 }

@SOCFPGA_GPIO_DB_CLK_OFFSET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.clk_hw*, i64)* @socfpga_clk_recalc_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @socfpga_clk_recalc_rate(%struct.clk_hw* %0, i64 %1) #0 {
  %3 = alloca %struct.clk_hw*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.socfpga_gate_clk*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.clk_hw* %0, %struct.clk_hw** %3, align 8
  store i64 %1, i64* %4, align 8
  %8 = load %struct.clk_hw*, %struct.clk_hw** %3, align 8
  %9 = call %struct.socfpga_gate_clk* @to_socfpga_gate_clk(%struct.clk_hw* %8)
  store %struct.socfpga_gate_clk* %9, %struct.socfpga_gate_clk** %5, align 8
  store i32 1, i32* %6, align 4
  %10 = load %struct.socfpga_gate_clk*, %struct.socfpga_gate_clk** %5, align 8
  %11 = getelementptr inbounds %struct.socfpga_gate_clk, %struct.socfpga_gate_clk* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %18

14:                                               ; preds = %2
  %15 = load %struct.socfpga_gate_clk*, %struct.socfpga_gate_clk** %5, align 8
  %16 = getelementptr inbounds %struct.socfpga_gate_clk, %struct.socfpga_gate_clk* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  store i32 %17, i32* %6, align 4
  br label %54

18:                                               ; preds = %2
  %19 = load %struct.socfpga_gate_clk*, %struct.socfpga_gate_clk** %5, align 8
  %20 = getelementptr inbounds %struct.socfpga_gate_clk, %struct.socfpga_gate_clk* %19, i32 0, i32 2
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %53

23:                                               ; preds = %18
  %24 = load %struct.socfpga_gate_clk*, %struct.socfpga_gate_clk** %5, align 8
  %25 = getelementptr inbounds %struct.socfpga_gate_clk, %struct.socfpga_gate_clk* %24, i32 0, i32 2
  %26 = load i64, i64* %25, align 8
  %27 = call i32 @readl(i64 %26)
  %28 = load %struct.socfpga_gate_clk*, %struct.socfpga_gate_clk** %5, align 8
  %29 = getelementptr inbounds %struct.socfpga_gate_clk, %struct.socfpga_gate_clk* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = ashr i32 %27, %30
  store i32 %31, i32* %7, align 4
  %32 = load %struct.socfpga_gate_clk*, %struct.socfpga_gate_clk** %5, align 8
  %33 = getelementptr inbounds %struct.socfpga_gate_clk, %struct.socfpga_gate_clk* %32, i32 0, i32 3
  %34 = load i64, i64* %33, align 8
  %35 = sub nsw i64 %34, 1
  %36 = call i32 @GENMASK(i64 %35, i32 0)
  %37 = load i32, i32* %7, align 4
  %38 = and i32 %37, %36
  store i32 %38, i32* %7, align 4
  %39 = load %struct.socfpga_gate_clk*, %struct.socfpga_gate_clk** %5, align 8
  %40 = getelementptr inbounds %struct.socfpga_gate_clk, %struct.socfpga_gate_clk* %39, i32 0, i32 2
  %41 = load i64, i64* %40, align 8
  %42 = trunc i64 %41 to i32
  %43 = load i32, i32* @SOCFPGA_GPIO_DB_CLK_OFFSET, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %23
  %47 = load i32, i32* %7, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %6, align 4
  br label %52

49:                                               ; preds = %23
  %50 = load i32, i32* %7, align 4
  %51 = shl i32 1, %50
  store i32 %51, i32* %6, align 4
  br label %52

52:                                               ; preds = %49, %46
  br label %53

53:                                               ; preds = %52, %18
  br label %54

54:                                               ; preds = %53, %14
  %55 = load i64, i64* %4, align 8
  %56 = load i32, i32* %6, align 4
  %57 = sext i32 %56 to i64
  %58 = udiv i64 %55, %57
  ret i64 %58
}

declare dso_local %struct.socfpga_gate_clk* @to_socfpga_gate_clk(%struct.clk_hw*) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @GENMASK(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
