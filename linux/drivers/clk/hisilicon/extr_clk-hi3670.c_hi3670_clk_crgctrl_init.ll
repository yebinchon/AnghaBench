; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/hisilicon/extr_clk-hi3670.c_hi3670_clk_crgctrl_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/hisilicon/extr_clk-hi3670.c_hi3670_clk_crgctrl_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device_node = type { i32 }
%struct.hisi_clock_data = type { i32 }

@hi3670_fixed_rate_clks = common dso_local global i32 0, align 4
@hi3670_crgctrl_gate_sep_clks = common dso_local global i32 0, align 4
@hi3670_crgctrl_gate_clks = common dso_local global i32 0, align 4
@hi3670_crgctrl_mux_clks = common dso_local global i32 0, align 4
@hi3670_crg_fixed_factor_clks = common dso_local global i32 0, align 4
@hi3670_crgctrl_divider_clks = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.device_node*)* @hi3670_clk_crgctrl_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hi3670_clk_crgctrl_init(%struct.device_node* %0) #0 {
  %2 = alloca %struct.device_node*, align 8
  %3 = alloca %struct.hisi_clock_data*, align 8
  %4 = alloca i32, align 4
  store %struct.device_node* %0, %struct.device_node** %2, align 8
  %5 = load i32, i32* @hi3670_fixed_rate_clks, align 4
  %6 = call i32 @ARRAY_SIZE(i32 %5)
  %7 = load i32, i32* @hi3670_crgctrl_gate_sep_clks, align 4
  %8 = call i32 @ARRAY_SIZE(i32 %7)
  %9 = add nsw i32 %6, %8
  %10 = load i32, i32* @hi3670_crgctrl_gate_clks, align 4
  %11 = call i32 @ARRAY_SIZE(i32 %10)
  %12 = add nsw i32 %9, %11
  %13 = load i32, i32* @hi3670_crgctrl_mux_clks, align 4
  %14 = call i32 @ARRAY_SIZE(i32 %13)
  %15 = add nsw i32 %12, %14
  %16 = load i32, i32* @hi3670_crg_fixed_factor_clks, align 4
  %17 = call i32 @ARRAY_SIZE(i32 %16)
  %18 = add nsw i32 %15, %17
  %19 = load i32, i32* @hi3670_crgctrl_divider_clks, align 4
  %20 = call i32 @ARRAY_SIZE(i32 %19)
  %21 = add nsw i32 %18, %20
  store i32 %21, i32* %4, align 4
  %22 = load %struct.device_node*, %struct.device_node** %2, align 8
  %23 = load i32, i32* %4, align 4
  %24 = call %struct.hisi_clock_data* @hisi_clk_init(%struct.device_node* %22, i32 %23)
  store %struct.hisi_clock_data* %24, %struct.hisi_clock_data** %3, align 8
  %25 = load %struct.hisi_clock_data*, %struct.hisi_clock_data** %3, align 8
  %26 = icmp ne %struct.hisi_clock_data* %25, null
  br i1 %26, label %28, label %27

27:                                               ; preds = %1
  br label %59

28:                                               ; preds = %1
  %29 = load i32, i32* @hi3670_fixed_rate_clks, align 4
  %30 = load i32, i32* @hi3670_fixed_rate_clks, align 4
  %31 = call i32 @ARRAY_SIZE(i32 %30)
  %32 = load %struct.hisi_clock_data*, %struct.hisi_clock_data** %3, align 8
  %33 = call i32 @hisi_clk_register_fixed_rate(i32 %29, i32 %31, %struct.hisi_clock_data* %32)
  %34 = load i32, i32* @hi3670_crgctrl_gate_sep_clks, align 4
  %35 = load i32, i32* @hi3670_crgctrl_gate_sep_clks, align 4
  %36 = call i32 @ARRAY_SIZE(i32 %35)
  %37 = load %struct.hisi_clock_data*, %struct.hisi_clock_data** %3, align 8
  %38 = call i32 @hisi_clk_register_gate_sep(i32 %34, i32 %36, %struct.hisi_clock_data* %37)
  %39 = load i32, i32* @hi3670_crgctrl_gate_clks, align 4
  %40 = load i32, i32* @hi3670_crgctrl_gate_clks, align 4
  %41 = call i32 @ARRAY_SIZE(i32 %40)
  %42 = load %struct.hisi_clock_data*, %struct.hisi_clock_data** %3, align 8
  %43 = call i32 @hisi_clk_register_gate(i32 %39, i32 %41, %struct.hisi_clock_data* %42)
  %44 = load i32, i32* @hi3670_crgctrl_mux_clks, align 4
  %45 = load i32, i32* @hi3670_crgctrl_mux_clks, align 4
  %46 = call i32 @ARRAY_SIZE(i32 %45)
  %47 = load %struct.hisi_clock_data*, %struct.hisi_clock_data** %3, align 8
  %48 = call i32 @hisi_clk_register_mux(i32 %44, i32 %46, %struct.hisi_clock_data* %47)
  %49 = load i32, i32* @hi3670_crg_fixed_factor_clks, align 4
  %50 = load i32, i32* @hi3670_crg_fixed_factor_clks, align 4
  %51 = call i32 @ARRAY_SIZE(i32 %50)
  %52 = load %struct.hisi_clock_data*, %struct.hisi_clock_data** %3, align 8
  %53 = call i32 @hisi_clk_register_fixed_factor(i32 %49, i32 %51, %struct.hisi_clock_data* %52)
  %54 = load i32, i32* @hi3670_crgctrl_divider_clks, align 4
  %55 = load i32, i32* @hi3670_crgctrl_divider_clks, align 4
  %56 = call i32 @ARRAY_SIZE(i32 %55)
  %57 = load %struct.hisi_clock_data*, %struct.hisi_clock_data** %3, align 8
  %58 = call i32 @hisi_clk_register_divider(i32 %54, i32 %56, %struct.hisi_clock_data* %57)
  br label %59

59:                                               ; preds = %28, %27
  ret void
}

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local %struct.hisi_clock_data* @hisi_clk_init(%struct.device_node*, i32) #1

declare dso_local i32 @hisi_clk_register_fixed_rate(i32, i32, %struct.hisi_clock_data*) #1

declare dso_local i32 @hisi_clk_register_gate_sep(i32, i32, %struct.hisi_clock_data*) #1

declare dso_local i32 @hisi_clk_register_gate(i32, i32, %struct.hisi_clock_data*) #1

declare dso_local i32 @hisi_clk_register_mux(i32, i32, %struct.hisi_clock_data*) #1

declare dso_local i32 @hisi_clk_register_fixed_factor(i32, i32, %struct.hisi_clock_data*) #1

declare dso_local i32 @hisi_clk_register_divider(i32, i32, %struct.hisi_clock_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
