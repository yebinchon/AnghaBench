; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/extr_clk-rk808.c_rkpmic_get_ops.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/extr_clk-rk808.c_rkpmic_get_ops.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_ops = type { i32 }

@rk817_clkout2_ops = common dso_local global %struct.clk_ops zeroinitializer, align 4
@rk808_clkout2_ops = common dso_local global %struct.clk_ops zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.clk_ops* (i64)* @rkpmic_get_ops to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.clk_ops* @rkpmic_get_ops(i64 %0) #0 {
  %2 = alloca %struct.clk_ops*, align 8
  %3 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  %4 = load i64, i64* %3, align 8
  switch i64 %4, label %6 [
    i64 129, label %5
    i64 128, label %5
  ]

5:                                                ; preds = %1, %1
  store %struct.clk_ops* @rk817_clkout2_ops, %struct.clk_ops** %2, align 8
  br label %7

6:                                                ; preds = %1
  store %struct.clk_ops* @rk808_clkout2_ops, %struct.clk_ops** %2, align 8
  br label %7

7:                                                ; preds = %6, %5
  %8 = load %struct.clk_ops*, %struct.clk_ops** %2, align 8
  ret %struct.clk_ops* %8
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
