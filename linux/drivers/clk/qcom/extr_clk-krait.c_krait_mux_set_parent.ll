; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/qcom/extr_clk-krait.c_krait_mux_set_parent.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/qcom/extr_clk-krait.c_krait_mux_set_parent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_hw = type { i32 }
%struct.krait_mux_clk = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.clk_hw*, i32)* @krait_mux_set_parent to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @krait_mux_set_parent(%struct.clk_hw* %0, i32 %1) #0 {
  %3 = alloca %struct.clk_hw*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.krait_mux_clk*, align 8
  %6 = alloca i32, align 4
  store %struct.clk_hw* %0, %struct.clk_hw** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.clk_hw*, %struct.clk_hw** %3, align 8
  %8 = call %struct.krait_mux_clk* @to_krait_mux_clk(%struct.clk_hw* %7)
  store %struct.krait_mux_clk* %8, %struct.krait_mux_clk** %5, align 8
  %9 = load %struct.krait_mux_clk*, %struct.krait_mux_clk** %5, align 8
  %10 = getelementptr inbounds %struct.krait_mux_clk, %struct.krait_mux_clk* %9, i32 0, i32 2
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* %4, align 4
  %13 = call i32 @clk_mux_index_to_val(i32 %11, i32 0, i32 %12)
  store i32 %13, i32* %6, align 4
  %14 = load i32, i32* %6, align 4
  %15 = load %struct.krait_mux_clk*, %struct.krait_mux_clk** %5, align 8
  %16 = getelementptr inbounds %struct.krait_mux_clk, %struct.krait_mux_clk* %15, i32 0, i32 1
  store i32 %14, i32* %16, align 4
  %17 = load %struct.clk_hw*, %struct.clk_hw** %3, align 8
  %18 = getelementptr inbounds %struct.clk_hw, %struct.clk_hw* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i64 @__clk_is_enabled(i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %2
  %23 = load %struct.krait_mux_clk*, %struct.krait_mux_clk** %5, align 8
  %24 = load i32, i32* %6, align 4
  %25 = call i32 @__krait_mux_set_sel(%struct.krait_mux_clk* %23, i32 %24)
  br label %26

26:                                               ; preds = %22, %2
  %27 = load %struct.krait_mux_clk*, %struct.krait_mux_clk** %5, align 8
  %28 = getelementptr inbounds %struct.krait_mux_clk, %struct.krait_mux_clk* %27, i32 0, i32 0
  store i32 1, i32* %28, align 4
  ret i32 0
}

declare dso_local %struct.krait_mux_clk* @to_krait_mux_clk(%struct.clk_hw*) #1

declare dso_local i32 @clk_mux_index_to_val(i32, i32, i32) #1

declare dso_local i64 @__clk_is_enabled(i32) #1

declare dso_local i32 @__krait_mux_set_sel(%struct.krait_mux_clk*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
