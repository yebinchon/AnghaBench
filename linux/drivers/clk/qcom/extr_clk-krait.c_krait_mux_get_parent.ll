; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/qcom/extr_clk-krait.c_krait_mux_get_parent.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/qcom/extr_clk-krait.c_krait_mux_get_parent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_hw = type { i32 }
%struct.krait_mux_clk = type { i32, i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.clk_hw*)* @krait_mux_get_parent to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @krait_mux_get_parent(%struct.clk_hw* %0) #0 {
  %2 = alloca %struct.clk_hw*, align 8
  %3 = alloca %struct.krait_mux_clk*, align 8
  %4 = alloca i32, align 4
  store %struct.clk_hw* %0, %struct.clk_hw** %2, align 8
  %5 = load %struct.clk_hw*, %struct.clk_hw** %2, align 8
  %6 = call %struct.krait_mux_clk* @to_krait_mux_clk(%struct.clk_hw* %5)
  store %struct.krait_mux_clk* %6, %struct.krait_mux_clk** %3, align 8
  %7 = load %struct.krait_mux_clk*, %struct.krait_mux_clk** %3, align 8
  %8 = getelementptr inbounds %struct.krait_mux_clk, %struct.krait_mux_clk* %7, i32 0, i32 4
  %9 = load i32, i32* %8, align 4
  %10 = call i32 @krait_get_l2_indirect_reg(i32 %9)
  store i32 %10, i32* %4, align 4
  %11 = load %struct.krait_mux_clk*, %struct.krait_mux_clk** %3, align 8
  %12 = getelementptr inbounds %struct.krait_mux_clk, %struct.krait_mux_clk* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* %4, align 4
  %15 = ashr i32 %14, %13
  store i32 %15, i32* %4, align 4
  %16 = load %struct.krait_mux_clk*, %struct.krait_mux_clk** %3, align 8
  %17 = getelementptr inbounds %struct.krait_mux_clk, %struct.krait_mux_clk* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* %4, align 4
  %20 = and i32 %19, %18
  store i32 %20, i32* %4, align 4
  %21 = load i32, i32* %4, align 4
  %22 = load %struct.krait_mux_clk*, %struct.krait_mux_clk** %3, align 8
  %23 = getelementptr inbounds %struct.krait_mux_clk, %struct.krait_mux_clk* %22, i32 0, i32 2
  store i32 %21, i32* %23, align 4
  %24 = load %struct.clk_hw*, %struct.clk_hw** %2, align 8
  %25 = load %struct.krait_mux_clk*, %struct.krait_mux_clk** %3, align 8
  %26 = getelementptr inbounds %struct.krait_mux_clk, %struct.krait_mux_clk* %25, i32 0, i32 3
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* %4, align 4
  %29 = call i32 @clk_mux_val_to_index(%struct.clk_hw* %24, i32 %27, i32 0, i32 %28)
  ret i32 %29
}

declare dso_local %struct.krait_mux_clk* @to_krait_mux_clk(%struct.clk_hw*) #1

declare dso_local i32 @krait_get_l2_indirect_reg(i32) #1

declare dso_local i32 @clk_mux_val_to_index(%struct.clk_hw*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
