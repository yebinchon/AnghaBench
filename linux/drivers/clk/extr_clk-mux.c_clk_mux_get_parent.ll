; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/extr_clk-mux.c_clk_mux_get_parent.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/extr_clk-mux.c_clk_mux_get_parent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_hw = type { i32 }
%struct.clk_mux = type { i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.clk_hw*)* @clk_mux_get_parent to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @clk_mux_get_parent(%struct.clk_hw* %0) #0 {
  %2 = alloca %struct.clk_hw*, align 8
  %3 = alloca %struct.clk_mux*, align 8
  %4 = alloca i32, align 4
  store %struct.clk_hw* %0, %struct.clk_hw** %2, align 8
  %5 = load %struct.clk_hw*, %struct.clk_hw** %2, align 8
  %6 = call %struct.clk_mux* @to_clk_mux(%struct.clk_hw* %5)
  store %struct.clk_mux* %6, %struct.clk_mux** %3, align 8
  %7 = load %struct.clk_mux*, %struct.clk_mux** %3, align 8
  %8 = call i32 @clk_mux_readl(%struct.clk_mux* %7)
  %9 = load %struct.clk_mux*, %struct.clk_mux** %3, align 8
  %10 = getelementptr inbounds %struct.clk_mux, %struct.clk_mux* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = ashr i32 %8, %11
  store i32 %12, i32* %4, align 4
  %13 = load %struct.clk_mux*, %struct.clk_mux** %3, align 8
  %14 = getelementptr inbounds %struct.clk_mux, %struct.clk_mux* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* %4, align 4
  %17 = and i32 %16, %15
  store i32 %17, i32* %4, align 4
  %18 = load %struct.clk_hw*, %struct.clk_hw** %2, align 8
  %19 = load %struct.clk_mux*, %struct.clk_mux** %3, align 8
  %20 = getelementptr inbounds %struct.clk_mux, %struct.clk_mux* %19, i32 0, i32 3
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.clk_mux*, %struct.clk_mux** %3, align 8
  %23 = getelementptr inbounds %struct.clk_mux, %struct.clk_mux* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* %4, align 4
  %26 = call i32 @clk_mux_val_to_index(%struct.clk_hw* %18, i32 %21, i32 %24, i32 %25)
  ret i32 %26
}

declare dso_local %struct.clk_mux* @to_clk_mux(%struct.clk_hw*) #1

declare dso_local i32 @clk_mux_readl(%struct.clk_mux*) #1

declare dso_local i32 @clk_mux_val_to_index(%struct.clk_hw*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
