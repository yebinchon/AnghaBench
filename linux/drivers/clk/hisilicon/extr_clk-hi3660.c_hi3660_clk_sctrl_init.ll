; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/hisilicon/extr_clk-hi3660.c_hi3660_clk_sctrl_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/hisilicon/extr_clk-hi3660.c_hi3660_clk_sctrl_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device_node = type { i32 }
%struct.hisi_clock_data = type { i32 }

@hi3660_sctrl_gate_clks = common dso_local global i32 0, align 4
@hi3660_sctrl_gate_sep_clks = common dso_local global i32 0, align 4
@hi3660_sctrl_mux_clks = common dso_local global i32 0, align 4
@hi3660_sctrl_divider_clks = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.device_node*)* @hi3660_clk_sctrl_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hi3660_clk_sctrl_init(%struct.device_node* %0) #0 {
  %2 = alloca %struct.device_node*, align 8
  %3 = alloca %struct.hisi_clock_data*, align 8
  %4 = alloca i32, align 4
  store %struct.device_node* %0, %struct.device_node** %2, align 8
  %5 = load i32, i32* @hi3660_sctrl_gate_clks, align 4
  %6 = call i32 @ARRAY_SIZE(i32 %5)
  %7 = load i32, i32* @hi3660_sctrl_gate_sep_clks, align 4
  %8 = call i32 @ARRAY_SIZE(i32 %7)
  %9 = add nsw i32 %6, %8
  %10 = load i32, i32* @hi3660_sctrl_mux_clks, align 4
  %11 = call i32 @ARRAY_SIZE(i32 %10)
  %12 = add nsw i32 %9, %11
  %13 = load i32, i32* @hi3660_sctrl_divider_clks, align 4
  %14 = call i32 @ARRAY_SIZE(i32 %13)
  %15 = add nsw i32 %12, %14
  store i32 %15, i32* %4, align 4
  %16 = load %struct.device_node*, %struct.device_node** %2, align 8
  %17 = load i32, i32* %4, align 4
  %18 = call %struct.hisi_clock_data* @hisi_clk_init(%struct.device_node* %16, i32 %17)
  store %struct.hisi_clock_data* %18, %struct.hisi_clock_data** %3, align 8
  %19 = load %struct.hisi_clock_data*, %struct.hisi_clock_data** %3, align 8
  %20 = icmp ne %struct.hisi_clock_data* %19, null
  br i1 %20, label %22, label %21

21:                                               ; preds = %1
  br label %43

22:                                               ; preds = %1
  %23 = load i32, i32* @hi3660_sctrl_gate_clks, align 4
  %24 = load i32, i32* @hi3660_sctrl_gate_clks, align 4
  %25 = call i32 @ARRAY_SIZE(i32 %24)
  %26 = load %struct.hisi_clock_data*, %struct.hisi_clock_data** %3, align 8
  %27 = call i32 @hisi_clk_register_gate(i32 %23, i32 %25, %struct.hisi_clock_data* %26)
  %28 = load i32, i32* @hi3660_sctrl_gate_sep_clks, align 4
  %29 = load i32, i32* @hi3660_sctrl_gate_sep_clks, align 4
  %30 = call i32 @ARRAY_SIZE(i32 %29)
  %31 = load %struct.hisi_clock_data*, %struct.hisi_clock_data** %3, align 8
  %32 = call i32 @hisi_clk_register_gate_sep(i32 %28, i32 %30, %struct.hisi_clock_data* %31)
  %33 = load i32, i32* @hi3660_sctrl_mux_clks, align 4
  %34 = load i32, i32* @hi3660_sctrl_mux_clks, align 4
  %35 = call i32 @ARRAY_SIZE(i32 %34)
  %36 = load %struct.hisi_clock_data*, %struct.hisi_clock_data** %3, align 8
  %37 = call i32 @hisi_clk_register_mux(i32 %33, i32 %35, %struct.hisi_clock_data* %36)
  %38 = load i32, i32* @hi3660_sctrl_divider_clks, align 4
  %39 = load i32, i32* @hi3660_sctrl_divider_clks, align 4
  %40 = call i32 @ARRAY_SIZE(i32 %39)
  %41 = load %struct.hisi_clock_data*, %struct.hisi_clock_data** %3, align 8
  %42 = call i32 @hisi_clk_register_divider(i32 %38, i32 %40, %struct.hisi_clock_data* %41)
  br label %43

43:                                               ; preds = %22, %21
  ret void
}

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local %struct.hisi_clock_data* @hisi_clk_init(%struct.device_node*, i32) #1

declare dso_local i32 @hisi_clk_register_gate(i32, i32, %struct.hisi_clock_data*) #1

declare dso_local i32 @hisi_clk_register_gate_sep(i32, i32, %struct.hisi_clock_data*) #1

declare dso_local i32 @hisi_clk_register_mux(i32, i32, %struct.hisi_clock_data*) #1

declare dso_local i32 @hisi_clk_register_divider(i32, i32, %struct.hisi_clock_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
