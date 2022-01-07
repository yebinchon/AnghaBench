; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/hisilicon/extr_clk-hi3670.c_hi3670_clk_iomcu_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/hisilicon/extr_clk-hi3670.c_hi3670_clk_iomcu_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device_node = type { i32 }
%struct.hisi_clock_data = type { i32 }

@hi3670_iomcu_gate_sep_clks = common dso_local global i32 0, align 4
@hi3670_iomcu_fixed_factor_clks = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.device_node*)* @hi3670_clk_iomcu_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hi3670_clk_iomcu_init(%struct.device_node* %0) #0 {
  %2 = alloca %struct.device_node*, align 8
  %3 = alloca %struct.hisi_clock_data*, align 8
  %4 = alloca i32, align 4
  store %struct.device_node* %0, %struct.device_node** %2, align 8
  %5 = load i32, i32* @hi3670_iomcu_gate_sep_clks, align 4
  %6 = call i32 @ARRAY_SIZE(i32 %5)
  %7 = load i32, i32* @hi3670_iomcu_fixed_factor_clks, align 4
  %8 = call i32 @ARRAY_SIZE(i32 %7)
  %9 = add nsw i32 %6, %8
  store i32 %9, i32* %4, align 4
  %10 = load %struct.device_node*, %struct.device_node** %2, align 8
  %11 = load i32, i32* %4, align 4
  %12 = call %struct.hisi_clock_data* @hisi_clk_init(%struct.device_node* %10, i32 %11)
  store %struct.hisi_clock_data* %12, %struct.hisi_clock_data** %3, align 8
  %13 = load %struct.hisi_clock_data*, %struct.hisi_clock_data** %3, align 8
  %14 = icmp ne %struct.hisi_clock_data* %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %1
  br label %27

16:                                               ; preds = %1
  %17 = load i32, i32* @hi3670_iomcu_gate_sep_clks, align 4
  %18 = load i32, i32* @hi3670_iomcu_gate_sep_clks, align 4
  %19 = call i32 @ARRAY_SIZE(i32 %18)
  %20 = load %struct.hisi_clock_data*, %struct.hisi_clock_data** %3, align 8
  %21 = call i32 @hisi_clk_register_gate(i32 %17, i32 %19, %struct.hisi_clock_data* %20)
  %22 = load i32, i32* @hi3670_iomcu_fixed_factor_clks, align 4
  %23 = load i32, i32* @hi3670_iomcu_fixed_factor_clks, align 4
  %24 = call i32 @ARRAY_SIZE(i32 %23)
  %25 = load %struct.hisi_clock_data*, %struct.hisi_clock_data** %3, align 8
  %26 = call i32 @hisi_clk_register_fixed_factor(i32 %22, i32 %24, %struct.hisi_clock_data* %25)
  br label %27

27:                                               ; preds = %16, %15
  ret void
}

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local %struct.hisi_clock_data* @hisi_clk_init(%struct.device_node*, i32) #1

declare dso_local i32 @hisi_clk_register_gate(i32, i32, %struct.hisi_clock_data*) #1

declare dso_local i32 @hisi_clk_register_fixed_factor(i32, i32, %struct.hisi_clock_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
