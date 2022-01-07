; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/imx/extr_clk.c_imx_register_uart_clocks.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/imx/extr_clk.c_imx_register_uart_clocks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk = type { i32 }

@imx_keep_uart_clocks = common dso_local global i64 0, align 8
@imx_uart_clocks = common dso_local global %struct.clk*** null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @imx_register_uart_clocks(%struct.clk*** %0) #0 {
  %2 = alloca %struct.clk***, align 8
  %3 = alloca i32, align 4
  store %struct.clk*** %0, %struct.clk**** %2, align 8
  %4 = load i64, i64* @imx_keep_uart_clocks, align 8
  %5 = icmp ne i64 %4, 0
  br i1 %5, label %6, label %27

6:                                                ; preds = %1
  %7 = load %struct.clk***, %struct.clk**** %2, align 8
  store %struct.clk*** %7, %struct.clk**** @imx_uart_clocks, align 8
  store i32 0, i32* %3, align 4
  br label %8

8:                                                ; preds = %23, %6
  %9 = load %struct.clk***, %struct.clk**** @imx_uart_clocks, align 8
  %10 = load i32, i32* %3, align 4
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds %struct.clk**, %struct.clk*** %9, i64 %11
  %13 = load %struct.clk**, %struct.clk*** %12, align 8
  %14 = icmp ne %struct.clk** %13, null
  br i1 %14, label %15, label %26

15:                                               ; preds = %8
  %16 = load %struct.clk***, %struct.clk**** @imx_uart_clocks, align 8
  %17 = load i32, i32* %3, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds %struct.clk**, %struct.clk*** %16, i64 %18
  %20 = load %struct.clk**, %struct.clk*** %19, align 8
  %21 = load %struct.clk*, %struct.clk** %20, align 8
  %22 = call i32 @clk_prepare_enable(%struct.clk* %21)
  br label %23

23:                                               ; preds = %15
  %24 = load i32, i32* %3, align 4
  %25 = add nsw i32 %24, 1
  store i32 %25, i32* %3, align 4
  br label %8

26:                                               ; preds = %8
  br label %27

27:                                               ; preds = %26, %1
  ret void
}

declare dso_local i32 @clk_prepare_enable(%struct.clk*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
