; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/extr_clk.c_clk_recalc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/extr_clk.c_clk_recalc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_core = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 (i32, i64)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.clk_core*, i64)* @clk_recalc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @clk_recalc(%struct.clk_core* %0, i64 %1) #0 {
  %3 = alloca %struct.clk_core*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store %struct.clk_core* %0, %struct.clk_core** %3, align 8
  store i64 %1, i64* %4, align 8
  %6 = load i64, i64* %4, align 8
  store i64 %6, i64* %5, align 8
  %7 = load %struct.clk_core*, %struct.clk_core** %3, align 8
  %8 = getelementptr inbounds %struct.clk_core, %struct.clk_core* %7, i32 0, i32 1
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i64 (i32, i64)*, i64 (i32, i64)** %10, align 8
  %12 = icmp ne i64 (i32, i64)* %11, null
  br i1 %12, label %13, label %30

13:                                               ; preds = %2
  %14 = load %struct.clk_core*, %struct.clk_core** %3, align 8
  %15 = call i32 @clk_pm_runtime_get(%struct.clk_core* %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %30, label %17

17:                                               ; preds = %13
  %18 = load %struct.clk_core*, %struct.clk_core** %3, align 8
  %19 = getelementptr inbounds %struct.clk_core, %struct.clk_core* %18, i32 0, i32 1
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i64 (i32, i64)*, i64 (i32, i64)** %21, align 8
  %23 = load %struct.clk_core*, %struct.clk_core** %3, align 8
  %24 = getelementptr inbounds %struct.clk_core, %struct.clk_core* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load i64, i64* %4, align 8
  %27 = call i64 %22(i32 %25, i64 %26)
  store i64 %27, i64* %5, align 8
  %28 = load %struct.clk_core*, %struct.clk_core** %3, align 8
  %29 = call i32 @clk_pm_runtime_put(%struct.clk_core* %28)
  br label %30

30:                                               ; preds = %17, %13, %2
  %31 = load i64, i64* %5, align 8
  ret i64 %31
}

declare dso_local i32 @clk_pm_runtime_get(%struct.clk_core*) #1

declare dso_local i32 @clk_pm_runtime_put(%struct.clk_core*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
