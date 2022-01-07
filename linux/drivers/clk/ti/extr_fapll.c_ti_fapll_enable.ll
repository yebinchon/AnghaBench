; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/ti/extr_fapll.c_ti_fapll_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/ti/extr_fapll.c_ti_fapll_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_hw = type { i32 }
%struct.fapll_data = type { i32 }

@FAPLL_MAIN_PLLEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.clk_hw*)* @ti_fapll_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ti_fapll_enable(%struct.clk_hw* %0) #0 {
  %2 = alloca %struct.clk_hw*, align 8
  %3 = alloca %struct.fapll_data*, align 8
  %4 = alloca i32, align 4
  store %struct.clk_hw* %0, %struct.clk_hw** %2, align 8
  %5 = load %struct.clk_hw*, %struct.clk_hw** %2, align 8
  %6 = call %struct.fapll_data* @to_fapll(%struct.clk_hw* %5)
  store %struct.fapll_data* %6, %struct.fapll_data** %3, align 8
  %7 = load %struct.fapll_data*, %struct.fapll_data** %3, align 8
  %8 = getelementptr inbounds %struct.fapll_data, %struct.fapll_data* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call i32 @readl_relaxed(i32 %9)
  store i32 %10, i32* %4, align 4
  %11 = load i32, i32* @FAPLL_MAIN_PLLEN, align 4
  %12 = load i32, i32* %4, align 4
  %13 = or i32 %12, %11
  store i32 %13, i32* %4, align 4
  %14 = load i32, i32* %4, align 4
  %15 = load %struct.fapll_data*, %struct.fapll_data** %3, align 8
  %16 = getelementptr inbounds %struct.fapll_data, %struct.fapll_data* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @writel_relaxed(i32 %14, i32 %17)
  %19 = load %struct.fapll_data*, %struct.fapll_data** %3, align 8
  %20 = call i32 @ti_fapll_wait_lock(%struct.fapll_data* %19)
  ret i32 0
}

declare dso_local %struct.fapll_data* @to_fapll(%struct.clk_hw*) #1

declare dso_local i32 @readl_relaxed(i32) #1

declare dso_local i32 @writel_relaxed(i32, i32) #1

declare dso_local i32 @ti_fapll_wait_lock(%struct.fapll_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
