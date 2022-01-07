; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/mvebu/extr_clk-corediv.c_clk_corediv_recalc_rate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/mvebu/extr_clk-corediv.c_clk_corediv_recalc_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_hw = type { i32 }
%struct.clk_corediv = type { i64, %struct.clk_corediv_desc*, %struct.clk_corediv_soc_desc* }
%struct.clk_corediv_desc = type { i64, i64 }
%struct.clk_corediv_soc_desc = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.clk_hw*, i64)* @clk_corediv_recalc_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @clk_corediv_recalc_rate(%struct.clk_hw* %0, i64 %1) #0 {
  %3 = alloca %struct.clk_hw*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.clk_corediv*, align 8
  %6 = alloca %struct.clk_corediv_soc_desc*, align 8
  %7 = alloca %struct.clk_corediv_desc*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store %struct.clk_hw* %0, %struct.clk_hw** %3, align 8
  store i64 %1, i64* %4, align 8
  %10 = load %struct.clk_hw*, %struct.clk_hw** %3, align 8
  %11 = call %struct.clk_corediv* @to_corediv_clk(%struct.clk_hw* %10)
  store %struct.clk_corediv* %11, %struct.clk_corediv** %5, align 8
  %12 = load %struct.clk_corediv*, %struct.clk_corediv** %5, align 8
  %13 = getelementptr inbounds %struct.clk_corediv, %struct.clk_corediv* %12, i32 0, i32 2
  %14 = load %struct.clk_corediv_soc_desc*, %struct.clk_corediv_soc_desc** %13, align 8
  store %struct.clk_corediv_soc_desc* %14, %struct.clk_corediv_soc_desc** %6, align 8
  %15 = load %struct.clk_corediv*, %struct.clk_corediv** %5, align 8
  %16 = getelementptr inbounds %struct.clk_corediv, %struct.clk_corediv* %15, i32 0, i32 1
  %17 = load %struct.clk_corediv_desc*, %struct.clk_corediv_desc** %16, align 8
  store %struct.clk_corediv_desc* %17, %struct.clk_corediv_desc** %7, align 8
  %18 = load %struct.clk_corediv*, %struct.clk_corediv** %5, align 8
  %19 = getelementptr inbounds %struct.clk_corediv, %struct.clk_corediv* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load %struct.clk_corediv_soc_desc*, %struct.clk_corediv_soc_desc** %6, align 8
  %22 = getelementptr inbounds %struct.clk_corediv_soc_desc, %struct.clk_corediv_soc_desc* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = add nsw i64 %20, %23
  %25 = call i64 @readl(i64 %24)
  store i64 %25, i64* %8, align 8
  %26 = load i64, i64* %8, align 8
  %27 = load %struct.clk_corediv_desc*, %struct.clk_corediv_desc** %7, align 8
  %28 = getelementptr inbounds %struct.clk_corediv_desc, %struct.clk_corediv_desc* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = lshr i64 %26, %29
  %31 = load %struct.clk_corediv_desc*, %struct.clk_corediv_desc** %7, align 8
  %32 = getelementptr inbounds %struct.clk_corediv_desc, %struct.clk_corediv_desc* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = and i64 %30, %33
  store i64 %34, i64* %9, align 8
  %35 = load i64, i64* %4, align 8
  %36 = load i64, i64* %9, align 8
  %37 = udiv i64 %35, %36
  ret i64 %37
}

declare dso_local %struct.clk_corediv* @to_corediv_clk(%struct.clk_hw*) #1

declare dso_local i64 @readl(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
