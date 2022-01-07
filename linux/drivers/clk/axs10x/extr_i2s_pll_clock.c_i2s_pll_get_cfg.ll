; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/axs10x/extr_i2s_pll_clock.c_i2s_pll_get_cfg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/axs10x/extr_i2s_pll_clock.c_i2s_pll_get_cfg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2s_pll_cfg = type { i32 }

@i2s_pll_cfg_27m = common dso_local global %struct.i2s_pll_cfg* null, align 8
@i2s_pll_cfg_28m = common dso_local global %struct.i2s_pll_cfg* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.i2s_pll_cfg* (i64)* @i2s_pll_get_cfg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.i2s_pll_cfg* @i2s_pll_get_cfg(i64 %0) #0 {
  %2 = alloca %struct.i2s_pll_cfg*, align 8
  %3 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  %4 = load i64, i64* %3, align 8
  switch i64 %4, label %9 [
    i64 27000000, label %5
    i64 28224000, label %7
  ]

5:                                                ; preds = %1
  %6 = load %struct.i2s_pll_cfg*, %struct.i2s_pll_cfg** @i2s_pll_cfg_27m, align 8
  store %struct.i2s_pll_cfg* %6, %struct.i2s_pll_cfg** %2, align 8
  br label %10

7:                                                ; preds = %1
  %8 = load %struct.i2s_pll_cfg*, %struct.i2s_pll_cfg** @i2s_pll_cfg_28m, align 8
  store %struct.i2s_pll_cfg* %8, %struct.i2s_pll_cfg** %2, align 8
  br label %10

9:                                                ; preds = %1
  store %struct.i2s_pll_cfg* null, %struct.i2s_pll_cfg** %2, align 8
  br label %10

10:                                               ; preds = %9, %7, %5
  %11 = load %struct.i2s_pll_cfg*, %struct.i2s_pll_cfg** %2, align 8
  ret %struct.i2s_pll_cfg* %11
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
