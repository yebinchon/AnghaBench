; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/imx/extr_clk-busy.c_clk_busy_divider_set_rate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/imx/extr_clk-busy.c_clk_busy_divider_set_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_hw = type { i32 }
%struct.clk_busy_divider = type { i32, i32, %struct.TYPE_4__, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 (i32*, i64, i64)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.clk_hw*, i64, i64)* @clk_busy_divider_set_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @clk_busy_divider_set_rate(%struct.clk_hw* %0, i64 %1, i64 %2) #0 {
  %4 = alloca %struct.clk_hw*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.clk_busy_divider*, align 8
  %8 = alloca i32, align 4
  store %struct.clk_hw* %0, %struct.clk_hw** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  %9 = load %struct.clk_hw*, %struct.clk_hw** %4, align 8
  %10 = call %struct.clk_busy_divider* @to_clk_busy_divider(%struct.clk_hw* %9)
  store %struct.clk_busy_divider* %10, %struct.clk_busy_divider** %7, align 8
  %11 = load %struct.clk_busy_divider*, %struct.clk_busy_divider** %7, align 8
  %12 = getelementptr inbounds %struct.clk_busy_divider, %struct.clk_busy_divider* %11, i32 0, i32 3
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load i32 (i32*, i64, i64)*, i32 (i32*, i64, i64)** %14, align 8
  %16 = load %struct.clk_busy_divider*, %struct.clk_busy_divider** %7, align 8
  %17 = getelementptr inbounds %struct.clk_busy_divider, %struct.clk_busy_divider* %16, i32 0, i32 2
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load i64, i64* %5, align 8
  %20 = load i64, i64* %6, align 8
  %21 = call i32 %15(i32* %18, i64 %19, i64 %20)
  store i32 %21, i32* %8, align 4
  %22 = load i32, i32* %8, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %32, label %24

24:                                               ; preds = %3
  %25 = load %struct.clk_busy_divider*, %struct.clk_busy_divider** %7, align 8
  %26 = getelementptr inbounds %struct.clk_busy_divider, %struct.clk_busy_divider* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.clk_busy_divider*, %struct.clk_busy_divider** %7, align 8
  %29 = getelementptr inbounds %struct.clk_busy_divider, %struct.clk_busy_divider* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = call i32 @clk_busy_wait(i32 %27, i32 %30)
  store i32 %31, i32* %8, align 4
  br label %32

32:                                               ; preds = %24, %3
  %33 = load i32, i32* %8, align 4
  ret i32 %33
}

declare dso_local %struct.clk_busy_divider* @to_clk_busy_divider(%struct.clk_hw*) #1

declare dso_local i32 @clk_busy_wait(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
