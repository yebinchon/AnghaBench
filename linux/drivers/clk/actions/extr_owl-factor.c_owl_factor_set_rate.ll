; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/actions/extr_owl-factor.c_owl_factor_set_rate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/actions/extr_owl-factor.c_owl_factor_set_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_hw = type { i32 }
%struct.owl_factor = type { %struct.owl_clk_common, %struct.owl_factor_hw }
%struct.owl_clk_common = type { i32 }
%struct.owl_factor_hw = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.clk_hw*, i64, i64)* @owl_factor_set_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @owl_factor_set_rate(%struct.clk_hw* %0, i64 %1, i64 %2) #0 {
  %4 = alloca %struct.clk_hw*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.owl_factor*, align 8
  %8 = alloca %struct.owl_factor_hw*, align 8
  %9 = alloca %struct.owl_clk_common*, align 8
  store %struct.clk_hw* %0, %struct.clk_hw** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  %10 = load %struct.clk_hw*, %struct.clk_hw** %4, align 8
  %11 = call %struct.owl_factor* @hw_to_owl_factor(%struct.clk_hw* %10)
  store %struct.owl_factor* %11, %struct.owl_factor** %7, align 8
  %12 = load %struct.owl_factor*, %struct.owl_factor** %7, align 8
  %13 = getelementptr inbounds %struct.owl_factor, %struct.owl_factor* %12, i32 0, i32 1
  store %struct.owl_factor_hw* %13, %struct.owl_factor_hw** %8, align 8
  %14 = load %struct.owl_factor*, %struct.owl_factor** %7, align 8
  %15 = getelementptr inbounds %struct.owl_factor, %struct.owl_factor* %14, i32 0, i32 0
  store %struct.owl_clk_common* %15, %struct.owl_clk_common** %9, align 8
  %16 = load %struct.owl_clk_common*, %struct.owl_clk_common** %9, align 8
  %17 = load %struct.owl_factor_hw*, %struct.owl_factor_hw** %8, align 8
  %18 = load i64, i64* %5, align 8
  %19 = load i64, i64* %6, align 8
  %20 = call i32 @owl_factor_helper_set_rate(%struct.owl_clk_common* %16, %struct.owl_factor_hw* %17, i64 %18, i64 %19)
  ret i32 %20
}

declare dso_local %struct.owl_factor* @hw_to_owl_factor(%struct.clk_hw*) #1

declare dso_local i32 @owl_factor_helper_set_rate(%struct.owl_clk_common*, %struct.owl_factor_hw*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
