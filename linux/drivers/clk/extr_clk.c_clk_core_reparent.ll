; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/extr_clk.c_clk_core_reparent.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/extr_clk.c_clk_core_reparent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_core = type { i32 }

@POST_RATE_CHANGE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.clk_core*, %struct.clk_core*)* @clk_core_reparent to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @clk_core_reparent(%struct.clk_core* %0, %struct.clk_core* %1) #0 {
  %3 = alloca %struct.clk_core*, align 8
  %4 = alloca %struct.clk_core*, align 8
  store %struct.clk_core* %0, %struct.clk_core** %3, align 8
  store %struct.clk_core* %1, %struct.clk_core** %4, align 8
  %5 = load %struct.clk_core*, %struct.clk_core** %3, align 8
  %6 = load %struct.clk_core*, %struct.clk_core** %4, align 8
  %7 = call i32 @clk_reparent(%struct.clk_core* %5, %struct.clk_core* %6)
  %8 = load %struct.clk_core*, %struct.clk_core** %3, align 8
  %9 = call i32 @__clk_recalc_accuracies(%struct.clk_core* %8)
  %10 = load %struct.clk_core*, %struct.clk_core** %3, align 8
  %11 = load i32, i32* @POST_RATE_CHANGE, align 4
  %12 = call i32 @__clk_recalc_rates(%struct.clk_core* %10, i32 %11)
  ret void
}

declare dso_local i32 @clk_reparent(%struct.clk_core*, %struct.clk_core*) #1

declare dso_local i32 @__clk_recalc_accuracies(%struct.clk_core*) #1

declare dso_local i32 @__clk_recalc_rates(%struct.clk_core*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
