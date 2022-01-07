; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/actions/extr_owl-mux.c_owl_mux_helper_get_parent.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/actions/extr_owl-mux.c_owl_mux_helper_get_parent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.owl_clk_common = type { i32 }
%struct.owl_mux_hw = type { i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @owl_mux_helper_get_parent(%struct.owl_clk_common* %0, %struct.owl_mux_hw* %1) #0 {
  %3 = alloca %struct.owl_clk_common*, align 8
  %4 = alloca %struct.owl_mux_hw*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.owl_clk_common* %0, %struct.owl_clk_common** %3, align 8
  store %struct.owl_mux_hw* %1, %struct.owl_mux_hw** %4, align 8
  %7 = load %struct.owl_clk_common*, %struct.owl_clk_common** %3, align 8
  %8 = getelementptr inbounds %struct.owl_clk_common, %struct.owl_clk_common* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load %struct.owl_mux_hw*, %struct.owl_mux_hw** %4, align 8
  %11 = getelementptr inbounds %struct.owl_mux_hw, %struct.owl_mux_hw* %10, i32 0, i32 2
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @regmap_read(i32 %9, i32 %12, i32* %5)
  %14 = load i32, i32* %5, align 4
  %15 = load %struct.owl_mux_hw*, %struct.owl_mux_hw** %4, align 8
  %16 = getelementptr inbounds %struct.owl_mux_hw, %struct.owl_mux_hw* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = ashr i32 %14, %17
  store i32 %18, i32* %6, align 4
  %19 = load %struct.owl_mux_hw*, %struct.owl_mux_hw** %4, align 8
  %20 = getelementptr inbounds %struct.owl_mux_hw, %struct.owl_mux_hw* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @BIT(i32 %21)
  %23 = sub nsw i32 %22, 1
  %24 = load i32, i32* %6, align 4
  %25 = and i32 %24, %23
  store i32 %25, i32* %6, align 4
  %26 = load i32, i32* %6, align 4
  ret i32 %26
}

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

declare dso_local i32 @BIT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
