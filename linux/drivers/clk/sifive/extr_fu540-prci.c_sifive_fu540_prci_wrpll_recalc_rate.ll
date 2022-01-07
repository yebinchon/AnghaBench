; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/sifive/extr_fu540-prci.c_sifive_fu540_prci_wrpll_recalc_rate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/sifive/extr_fu540-prci.c_sifive_fu540_prci_wrpll_recalc_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_hw = type { i32 }
%struct.__prci_clock = type { %struct.__prci_wrpll_data* }
%struct.__prci_wrpll_data = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.clk_hw*, i64)* @sifive_fu540_prci_wrpll_recalc_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @sifive_fu540_prci_wrpll_recalc_rate(%struct.clk_hw* %0, i64 %1) #0 {
  %3 = alloca %struct.clk_hw*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.__prci_clock*, align 8
  %6 = alloca %struct.__prci_wrpll_data*, align 8
  store %struct.clk_hw* %0, %struct.clk_hw** %3, align 8
  store i64 %1, i64* %4, align 8
  %7 = load %struct.clk_hw*, %struct.clk_hw** %3, align 8
  %8 = call %struct.__prci_clock* @clk_hw_to_prci_clock(%struct.clk_hw* %7)
  store %struct.__prci_clock* %8, %struct.__prci_clock** %5, align 8
  %9 = load %struct.__prci_clock*, %struct.__prci_clock** %5, align 8
  %10 = getelementptr inbounds %struct.__prci_clock, %struct.__prci_clock* %9, i32 0, i32 0
  %11 = load %struct.__prci_wrpll_data*, %struct.__prci_wrpll_data** %10, align 8
  store %struct.__prci_wrpll_data* %11, %struct.__prci_wrpll_data** %6, align 8
  %12 = load %struct.__prci_wrpll_data*, %struct.__prci_wrpll_data** %6, align 8
  %13 = getelementptr inbounds %struct.__prci_wrpll_data, %struct.__prci_wrpll_data* %12, i32 0, i32 0
  %14 = load i64, i64* %4, align 8
  %15 = call i64 @wrpll_calc_output_rate(i32* %13, i64 %14)
  ret i64 %15
}

declare dso_local %struct.__prci_clock* @clk_hw_to_prci_clock(%struct.clk_hw*) #1

declare dso_local i64 @wrpll_calc_output_rate(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
