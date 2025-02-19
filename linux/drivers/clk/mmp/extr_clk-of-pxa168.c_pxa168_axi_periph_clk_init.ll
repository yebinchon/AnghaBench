; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/mmp/extr_clk-of-pxa168.c_pxa168_axi_periph_clk_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/mmp/extr_clk-of-pxa168.c_pxa168_axi_periph_clk_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pxa168_clk_unit = type { i32, %struct.mmp_clk_unit }
%struct.mmp_clk_unit = type { i32 }

@apmu_mux_clks = common dso_local global i32 0, align 4
@apmu_div_clks = common dso_local global i32 0, align 4
@apmu_gate_clks = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pxa168_clk_unit*)* @pxa168_axi_periph_clk_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pxa168_axi_periph_clk_init(%struct.pxa168_clk_unit* %0) #0 {
  %2 = alloca %struct.pxa168_clk_unit*, align 8
  %3 = alloca %struct.mmp_clk_unit*, align 8
  store %struct.pxa168_clk_unit* %0, %struct.pxa168_clk_unit** %2, align 8
  %4 = load %struct.pxa168_clk_unit*, %struct.pxa168_clk_unit** %2, align 8
  %5 = getelementptr inbounds %struct.pxa168_clk_unit, %struct.pxa168_clk_unit* %4, i32 0, i32 1
  store %struct.mmp_clk_unit* %5, %struct.mmp_clk_unit** %3, align 8
  %6 = load %struct.mmp_clk_unit*, %struct.mmp_clk_unit** %3, align 8
  %7 = load i32, i32* @apmu_mux_clks, align 4
  %8 = load %struct.pxa168_clk_unit*, %struct.pxa168_clk_unit** %2, align 8
  %9 = getelementptr inbounds %struct.pxa168_clk_unit, %struct.pxa168_clk_unit* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* @apmu_mux_clks, align 4
  %12 = call i32 @ARRAY_SIZE(i32 %11)
  %13 = call i32 @mmp_register_mux_clks(%struct.mmp_clk_unit* %6, i32 %7, i32 %10, i32 %12)
  %14 = load %struct.mmp_clk_unit*, %struct.mmp_clk_unit** %3, align 8
  %15 = load i32, i32* @apmu_div_clks, align 4
  %16 = load %struct.pxa168_clk_unit*, %struct.pxa168_clk_unit** %2, align 8
  %17 = getelementptr inbounds %struct.pxa168_clk_unit, %struct.pxa168_clk_unit* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @apmu_div_clks, align 4
  %20 = call i32 @ARRAY_SIZE(i32 %19)
  %21 = call i32 @mmp_register_div_clks(%struct.mmp_clk_unit* %14, i32 %15, i32 %18, i32 %20)
  %22 = load %struct.mmp_clk_unit*, %struct.mmp_clk_unit** %3, align 8
  %23 = load i32, i32* @apmu_gate_clks, align 4
  %24 = load %struct.pxa168_clk_unit*, %struct.pxa168_clk_unit** %2, align 8
  %25 = getelementptr inbounds %struct.pxa168_clk_unit, %struct.pxa168_clk_unit* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @apmu_gate_clks, align 4
  %28 = call i32 @ARRAY_SIZE(i32 %27)
  %29 = call i32 @mmp_register_gate_clks(%struct.mmp_clk_unit* %22, i32 %23, i32 %26, i32 %28)
  ret void
}

declare dso_local i32 @mmp_register_mux_clks(%struct.mmp_clk_unit*, i32, i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i32 @mmp_register_div_clks(%struct.mmp_clk_unit*, i32, i32, i32) #1

declare dso_local i32 @mmp_register_gate_clks(%struct.mmp_clk_unit*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
