; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/socfpga/extr_clk-gate-s10.c_socfpga_gate_clk_recalc_rate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/socfpga/extr_clk-gate-s10.c_socfpga_gate_clk_recalc_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_hw = type { i32 }
%struct.socfpga_gate_clk = type { i32, i32, i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.clk_hw*, i64)* @socfpga_gate_clk_recalc_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @socfpga_gate_clk_recalc_rate(%struct.clk_hw* %0, i64 %1) #0 {
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
  br label %42

18:                                               ; preds = %2
  %19 = load %struct.socfpga_gate_clk*, %struct.socfpga_gate_clk** %5, align 8
  %20 = getelementptr inbounds %struct.socfpga_gate_clk, %struct.socfpga_gate_clk* %19, i32 0, i32 3
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %41

23:                                               ; preds = %18
  %24 = load %struct.socfpga_gate_clk*, %struct.socfpga_gate_clk** %5, align 8
  %25 = getelementptr inbounds %struct.socfpga_gate_clk, %struct.socfpga_gate_clk* %24, i32 0, i32 3
  %26 = load i64, i64* %25, align 8
  %27 = call i32 @readl(i64 %26)
  %28 = load %struct.socfpga_gate_clk*, %struct.socfpga_gate_clk** %5, align 8
  %29 = getelementptr inbounds %struct.socfpga_gate_clk, %struct.socfpga_gate_clk* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = ashr i32 %27, %30
  store i32 %31, i32* %7, align 4
  %32 = load %struct.socfpga_gate_clk*, %struct.socfpga_gate_clk** %5, align 8
  %33 = getelementptr inbounds %struct.socfpga_gate_clk, %struct.socfpga_gate_clk* %32, i32 0, i32 2
  %34 = load i64, i64* %33, align 8
  %35 = sub nsw i64 %34, 1
  %36 = call i32 @GENMASK(i64 %35, i32 0)
  %37 = load i32, i32* %7, align 4
  %38 = and i32 %37, %36
  store i32 %38, i32* %7, align 4
  %39 = load i32, i32* %7, align 4
  %40 = shl i32 1, %39
  store i32 %40, i32* %6, align 4
  br label %41

41:                                               ; preds = %23, %18
  br label %42

42:                                               ; preds = %41, %14
  %43 = load i64, i64* %4, align 8
  %44 = load i32, i32* %6, align 4
  %45 = sext i32 %44 to i64
  %46 = udiv i64 %43, %45
  ret i64 %46
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
