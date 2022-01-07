; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/socfpga/extr_clk-gate-s10.c_socfpga_gate_get_parent.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/socfpga/extr_clk-gate-s10.c_socfpga_gate_get_parent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_hw = type { i32 }
%struct.socfpga_gate_clk = type { i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.clk_hw*)* @socfpga_gate_get_parent to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @socfpga_gate_get_parent(%struct.clk_hw* %0) #0 {
  %2 = alloca %struct.clk_hw*, align 8
  %3 = alloca %struct.socfpga_gate_clk*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.clk_hw* %0, %struct.clk_hw** %2, align 8
  %6 = load %struct.clk_hw*, %struct.clk_hw** %2, align 8
  %7 = call %struct.socfpga_gate_clk* @to_socfpga_gate_clk(%struct.clk_hw* %6)
  store %struct.socfpga_gate_clk* %7, %struct.socfpga_gate_clk** %3, align 8
  store i32 0, i32* %5, align 4
  %8 = load %struct.socfpga_gate_clk*, %struct.socfpga_gate_clk** %3, align 8
  %9 = getelementptr inbounds %struct.socfpga_gate_clk, %struct.socfpga_gate_clk* %8, i32 0, i32 1
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %27

12:                                               ; preds = %1
  %13 = load %struct.socfpga_gate_clk*, %struct.socfpga_gate_clk** %3, align 8
  %14 = getelementptr inbounds %struct.socfpga_gate_clk, %struct.socfpga_gate_clk* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = shl i32 1, %15
  store i32 %16, i32* %4, align 4
  %17 = load %struct.socfpga_gate_clk*, %struct.socfpga_gate_clk** %3, align 8
  %18 = getelementptr inbounds %struct.socfpga_gate_clk, %struct.socfpga_gate_clk* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = call i32 @readl(i64 %19)
  %21 = load i32, i32* %4, align 4
  %22 = and i32 %20, %21
  %23 = load %struct.socfpga_gate_clk*, %struct.socfpga_gate_clk** %3, align 8
  %24 = getelementptr inbounds %struct.socfpga_gate_clk, %struct.socfpga_gate_clk* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = ashr i32 %22, %25
  store i32 %26, i32* %5, align 4
  br label %27

27:                                               ; preds = %12, %1
  %28 = load i32, i32* %5, align 4
  ret i32 %28
}

declare dso_local %struct.socfpga_gate_clk* @to_socfpga_gate_clk(%struct.clk_hw*) #1

declare dso_local i32 @readl(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
