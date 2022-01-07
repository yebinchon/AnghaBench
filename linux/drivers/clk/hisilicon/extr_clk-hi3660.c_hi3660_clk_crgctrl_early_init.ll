; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/hisilicon/extr_clk-hi3660.c_hi3660_clk_crgctrl_early_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/hisilicon/extr_clk-hi3660.c_hi3660_clk_crgctrl_early_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32* }
%struct.device_node = type { i32 }

@hi3660_fixed_rate_clks = common dso_local global i32 0, align 4
@hi3660_crgctrl_gate_sep_clks = common dso_local global i32 0, align 4
@hi3660_crgctrl_gate_clks = common dso_local global i32 0, align 4
@hi3660_crgctrl_mux_clks = common dso_local global i32 0, align 4
@hi3660_crg_fixed_factor_clks = common dso_local global i32 0, align 4
@hi3660_crgctrl_divider_clks = common dso_local global i32 0, align 4
@clk_crgctrl_data = common dso_local global %struct.TYPE_6__* null, align 8
@EPROBE_DEFER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.device_node*)* @hi3660_clk_crgctrl_early_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hi3660_clk_crgctrl_early_init(%struct.device_node* %0) #0 {
  %2 = alloca %struct.device_node*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.device_node* %0, %struct.device_node** %2, align 8
  %5 = load i32, i32* @hi3660_fixed_rate_clks, align 4
  %6 = call i32 @ARRAY_SIZE(i32 %5)
  %7 = load i32, i32* @hi3660_crgctrl_gate_sep_clks, align 4
  %8 = call i32 @ARRAY_SIZE(i32 %7)
  %9 = add nsw i32 %6, %8
  %10 = load i32, i32* @hi3660_crgctrl_gate_clks, align 4
  %11 = call i32 @ARRAY_SIZE(i32 %10)
  %12 = add nsw i32 %9, %11
  %13 = load i32, i32* @hi3660_crgctrl_mux_clks, align 4
  %14 = call i32 @ARRAY_SIZE(i32 %13)
  %15 = add nsw i32 %12, %14
  %16 = load i32, i32* @hi3660_crg_fixed_factor_clks, align 4
  %17 = call i32 @ARRAY_SIZE(i32 %16)
  %18 = add nsw i32 %15, %17
  %19 = load i32, i32* @hi3660_crgctrl_divider_clks, align 4
  %20 = call i32 @ARRAY_SIZE(i32 %19)
  %21 = add nsw i32 %18, %20
  store i32 %21, i32* %3, align 4
  %22 = load %struct.device_node*, %struct.device_node** %2, align 8
  %23 = load i32, i32* %3, align 4
  %24 = call %struct.TYPE_6__* @hisi_clk_init(%struct.device_node* %22, i32 %23)
  store %struct.TYPE_6__* %24, %struct.TYPE_6__** @clk_crgctrl_data, align 8
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** @clk_crgctrl_data, align 8
  %26 = icmp ne %struct.TYPE_6__* %25, null
  br i1 %26, label %28, label %27

27:                                               ; preds = %1
  br label %53

28:                                               ; preds = %1
  store i32 0, i32* %4, align 4
  br label %29

29:                                               ; preds = %44, %28
  %30 = load i32, i32* %4, align 4
  %31 = load i32, i32* %3, align 4
  %32 = icmp slt i32 %30, %31
  br i1 %32, label %33, label %47

33:                                               ; preds = %29
  %34 = load i32, i32* @EPROBE_DEFER, align 4
  %35 = sub nsw i32 0, %34
  %36 = call i32 @ERR_PTR(i32 %35)
  %37 = load %struct.TYPE_6__*, %struct.TYPE_6__** @clk_crgctrl_data, align 8
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 0
  %40 = load i32*, i32** %39, align 8
  %41 = load i32, i32* %4, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i32, i32* %40, i64 %42
  store i32 %36, i32* %43, align 4
  br label %44

44:                                               ; preds = %33
  %45 = load i32, i32* %4, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %4, align 4
  br label %29

47:                                               ; preds = %29
  %48 = load i32, i32* @hi3660_fixed_rate_clks, align 4
  %49 = load i32, i32* @hi3660_fixed_rate_clks, align 4
  %50 = call i32 @ARRAY_SIZE(i32 %49)
  %51 = load %struct.TYPE_6__*, %struct.TYPE_6__** @clk_crgctrl_data, align 8
  %52 = call i32 @hisi_clk_register_fixed_rate(i32 %48, i32 %50, %struct.TYPE_6__* %51)
  br label %53

53:                                               ; preds = %47, %27
  ret void
}

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local %struct.TYPE_6__* @hisi_clk_init(%struct.device_node*, i32) #1

declare dso_local i32 @ERR_PTR(i32) #1

declare dso_local i32 @hisi_clk_register_fixed_rate(i32, i32, %struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
