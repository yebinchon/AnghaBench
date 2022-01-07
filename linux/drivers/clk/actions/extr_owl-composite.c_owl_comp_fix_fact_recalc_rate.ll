; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/actions/extr_owl-composite.c_owl_comp_fix_fact_recalc_rate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/actions/extr_owl-composite.c_owl_comp_fix_fact_recalc_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_hw = type { i32 }
%struct.owl_composite = type { %struct.TYPE_4__*, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i64 (i32*, i64)* }
%struct.TYPE_3__ = type { %struct.clk_fixed_factor }
%struct.clk_fixed_factor = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.clk_hw*, i64)* @owl_comp_fix_fact_recalc_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @owl_comp_fix_fact_recalc_rate(%struct.clk_hw* %0, i64 %1) #0 {
  %3 = alloca %struct.clk_hw*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.owl_composite*, align 8
  %6 = alloca %struct.clk_fixed_factor*, align 8
  store %struct.clk_hw* %0, %struct.clk_hw** %3, align 8
  store i64 %1, i64* %4, align 8
  %7 = load %struct.clk_hw*, %struct.clk_hw** %3, align 8
  %8 = call %struct.owl_composite* @hw_to_owl_comp(%struct.clk_hw* %7)
  store %struct.owl_composite* %8, %struct.owl_composite** %5, align 8
  %9 = load %struct.owl_composite*, %struct.owl_composite** %5, align 8
  %10 = getelementptr inbounds %struct.owl_composite, %struct.owl_composite* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  store %struct.clk_fixed_factor* %11, %struct.clk_fixed_factor** %6, align 8
  %12 = load %struct.owl_composite*, %struct.owl_composite** %5, align 8
  %13 = getelementptr inbounds %struct.owl_composite, %struct.owl_composite* %12, i32 0, i32 0
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load i64 (i32*, i64)*, i64 (i32*, i64)** %15, align 8
  %17 = load %struct.clk_fixed_factor*, %struct.clk_fixed_factor** %6, align 8
  %18 = getelementptr inbounds %struct.clk_fixed_factor, %struct.clk_fixed_factor* %17, i32 0, i32 0
  %19 = load i64, i64* %4, align 8
  %20 = call i64 %16(i32* %18, i64 %19)
  ret i64 %20
}

declare dso_local %struct.owl_composite* @hw_to_owl_comp(%struct.clk_hw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
