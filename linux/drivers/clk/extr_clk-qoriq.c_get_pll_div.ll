; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/extr_clk-qoriq.c_get_pll_div.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/extr_clk-qoriq.c_get_pll_div.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clockgen_pll_div = type { i32 }
%struct.clockgen = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.clockgen_pll_div* }
%struct.mux_hwclock = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32, i32, i32 }

@CLKSEL_VALID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.clockgen_pll_div* (%struct.clockgen*, %struct.mux_hwclock*, i32)* @get_pll_div to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.clockgen_pll_div* @get_pll_div(%struct.clockgen* %0, %struct.mux_hwclock* %1, i32 %2) #0 {
  %4 = alloca %struct.clockgen_pll_div*, align 8
  %5 = alloca %struct.clockgen*, align 8
  %6 = alloca %struct.mux_hwclock*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.clockgen* %0, %struct.clockgen** %5, align 8
  store %struct.mux_hwclock* %1, %struct.mux_hwclock** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load %struct.mux_hwclock*, %struct.mux_hwclock** %6, align 8
  %11 = getelementptr inbounds %struct.mux_hwclock, %struct.mux_hwclock* %10, i32 0, i32 0
  %12 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 0
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %15 = load i32, i32* %7, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i64 %16
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @CLKSEL_VALID, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %3
  store %struct.clockgen_pll_div* null, %struct.clockgen_pll_div** %4, align 8
  br label %56

24:                                               ; preds = %3
  %25 = load %struct.mux_hwclock*, %struct.mux_hwclock** %6, align 8
  %26 = getelementptr inbounds %struct.mux_hwclock, %struct.mux_hwclock* %25, i32 0, i32 0
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 0
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %28, align 8
  %30 = load i32, i32* %7, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i64 %31
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  store i32 %34, i32* %8, align 4
  %35 = load %struct.mux_hwclock*, %struct.mux_hwclock** %6, align 8
  %36 = getelementptr inbounds %struct.mux_hwclock, %struct.mux_hwclock* %35, i32 0, i32 0
  %37 = load %struct.TYPE_5__*, %struct.TYPE_5__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 0
  %39 = load %struct.TYPE_6__*, %struct.TYPE_6__** %38, align 8
  %40 = load i32, i32* %7, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i64 %41
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 4
  store i32 %44, i32* %9, align 4
  %45 = load %struct.clockgen*, %struct.clockgen** %5, align 8
  %46 = getelementptr inbounds %struct.clockgen, %struct.clockgen* %45, i32 0, i32 0
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** %46, align 8
  %48 = load i32, i32* %8, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i64 %49
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 0
  %52 = load %struct.clockgen_pll_div*, %struct.clockgen_pll_div** %51, align 8
  %53 = load i32, i32* %9, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds %struct.clockgen_pll_div, %struct.clockgen_pll_div* %52, i64 %54
  store %struct.clockgen_pll_div* %55, %struct.clockgen_pll_div** %4, align 8
  br label %56

56:                                               ; preds = %24, %23
  %57 = load %struct.clockgen_pll_div*, %struct.clockgen_pll_div** %4, align 8
  ret %struct.clockgen_pll_div* %57
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
