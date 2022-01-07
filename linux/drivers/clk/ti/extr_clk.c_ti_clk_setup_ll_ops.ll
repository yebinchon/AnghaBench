; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/ti/extr_clk.c_ti_clk_setup_ll_ops.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/ti/extr_clk.c_ti_clk_setup_ll_ops.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ti_clk_ll_ops = type { i32, i32, i32 }

@ti_clk_ll_ops = common dso_local global %struct.ti_clk_ll_ops* null, align 8
@.str = private unnamed_addr constant [44 x i8] c"Attempt to register ll_ops multiple times.\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@clk_memmap_readl = common dso_local global i32 0, align 4
@clk_memmap_writel = common dso_local global i32 0, align 4
@clk_memmap_rmw = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ti_clk_setup_ll_ops(%struct.ti_clk_ll_ops* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ti_clk_ll_ops*, align 8
  store %struct.ti_clk_ll_ops* %0, %struct.ti_clk_ll_ops** %3, align 8
  %4 = load %struct.ti_clk_ll_ops*, %struct.ti_clk_ll_ops** @ti_clk_ll_ops, align 8
  %5 = icmp ne %struct.ti_clk_ll_ops* %4, null
  br i1 %5, label %6, label %10

6:                                                ; preds = %1
  %7 = call i32 @pr_err(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0))
  %8 = load i32, i32* @EBUSY, align 4
  %9 = sub nsw i32 0, %8
  store i32 %9, i32* %2, align 4
  br label %21

10:                                               ; preds = %1
  %11 = load %struct.ti_clk_ll_ops*, %struct.ti_clk_ll_ops** %3, align 8
  store %struct.ti_clk_ll_ops* %11, %struct.ti_clk_ll_ops** @ti_clk_ll_ops, align 8
  %12 = load i32, i32* @clk_memmap_readl, align 4
  %13 = load %struct.ti_clk_ll_ops*, %struct.ti_clk_ll_ops** %3, align 8
  %14 = getelementptr inbounds %struct.ti_clk_ll_ops, %struct.ti_clk_ll_ops* %13, i32 0, i32 2
  store i32 %12, i32* %14, align 4
  %15 = load i32, i32* @clk_memmap_writel, align 4
  %16 = load %struct.ti_clk_ll_ops*, %struct.ti_clk_ll_ops** %3, align 8
  %17 = getelementptr inbounds %struct.ti_clk_ll_ops, %struct.ti_clk_ll_ops* %16, i32 0, i32 1
  store i32 %15, i32* %17, align 4
  %18 = load i32, i32* @clk_memmap_rmw, align 4
  %19 = load %struct.ti_clk_ll_ops*, %struct.ti_clk_ll_ops** %3, align 8
  %20 = getelementptr inbounds %struct.ti_clk_ll_ops, %struct.ti_clk_ll_ops* %19, i32 0, i32 0
  store i32 %18, i32* %20, align 4
  store i32 0, i32* %2, align 4
  br label %21

21:                                               ; preds = %10, %6
  %22 = load i32, i32* %2, align 4
  ret i32 %22
}

declare dso_local i32 @pr_err(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
