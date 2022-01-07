; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/imx/extr_clk-busy.c_clk_busy_mux_set_parent.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/imx/extr_clk-busy.c_clk_busy_mux_set_parent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_hw = type { i32 }
%struct.clk_busy_mux = type { i32, i32, %struct.TYPE_4__, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 (i32*, i32)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.clk_hw*, i32)* @clk_busy_mux_set_parent to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @clk_busy_mux_set_parent(%struct.clk_hw* %0, i32 %1) #0 {
  %3 = alloca %struct.clk_hw*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.clk_busy_mux*, align 8
  %6 = alloca i32, align 4
  store %struct.clk_hw* %0, %struct.clk_hw** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.clk_hw*, %struct.clk_hw** %3, align 8
  %8 = call %struct.clk_busy_mux* @to_clk_busy_mux(%struct.clk_hw* %7)
  store %struct.clk_busy_mux* %8, %struct.clk_busy_mux** %5, align 8
  %9 = load %struct.clk_busy_mux*, %struct.clk_busy_mux** %5, align 8
  %10 = getelementptr inbounds %struct.clk_busy_mux, %struct.clk_busy_mux* %9, i32 0, i32 3
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = load i32 (i32*, i32)*, i32 (i32*, i32)** %12, align 8
  %14 = load %struct.clk_busy_mux*, %struct.clk_busy_mux** %5, align 8
  %15 = getelementptr inbounds %struct.clk_busy_mux, %struct.clk_busy_mux* %14, i32 0, i32 2
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load i32, i32* %4, align 4
  %18 = call i32 %13(i32* %16, i32 %17)
  store i32 %18, i32* %6, align 4
  %19 = load i32, i32* %6, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %29, label %21

21:                                               ; preds = %2
  %22 = load %struct.clk_busy_mux*, %struct.clk_busy_mux** %5, align 8
  %23 = getelementptr inbounds %struct.clk_busy_mux, %struct.clk_busy_mux* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.clk_busy_mux*, %struct.clk_busy_mux** %5, align 8
  %26 = getelementptr inbounds %struct.clk_busy_mux, %struct.clk_busy_mux* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = call i32 @clk_busy_wait(i32 %24, i32 %27)
  store i32 %28, i32* %6, align 4
  br label %29

29:                                               ; preds = %21, %2
  %30 = load i32, i32* %6, align 4
  ret i32 %30
}

declare dso_local %struct.clk_busy_mux* @to_clk_busy_mux(%struct.clk_hw*) #1

declare dso_local i32 @clk_busy_wait(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
