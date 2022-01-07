; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/tegra/extr_clk-tegra114.c_tegra114_clock_tune_cpu_trimmers_low.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/tegra/extr_clk-tegra114.c_tegra114_clock_tune_cpu_trimmers_low.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CPU_FINETRIM_1_FCPU_1 = common dso_local global i32 0, align 4
@CPU_FINETRIM_1_FCPU_2 = common dso_local global i32 0, align 4
@CPU_FINETRIM_1_FCPU_3 = common dso_local global i32 0, align 4
@CPU_FINETRIM_1_FCPU_4 = common dso_local global i32 0, align 4
@CPU_FINETRIM_1_FCPU_5 = common dso_local global i32 0, align 4
@CPU_FINETRIM_1_FCPU_6 = common dso_local global i32 0, align 4
@clk_base = common dso_local global i64 0, align 8
@CPU_FINETRIM_SELECT = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tegra114_clock_tune_cpu_trimmers_low() #0 {
  %1 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %2 = load i32, i32* @CPU_FINETRIM_1_FCPU_1, align 4
  %3 = load i32, i32* @CPU_FINETRIM_1_FCPU_2, align 4
  %4 = or i32 %2, %3
  %5 = load i32, i32* @CPU_FINETRIM_1_FCPU_3, align 4
  %6 = or i32 %4, %5
  %7 = load i32, i32* @CPU_FINETRIM_1_FCPU_4, align 4
  %8 = or i32 %6, %7
  %9 = load i32, i32* @CPU_FINETRIM_1_FCPU_5, align 4
  %10 = or i32 %8, %9
  %11 = load i32, i32* @CPU_FINETRIM_1_FCPU_6, align 4
  %12 = or i32 %10, %11
  %13 = load i32, i32* %1, align 4
  %14 = or i32 %13, %12
  store i32 %14, i32* %1, align 4
  %15 = load i32, i32* %1, align 4
  %16 = load i64, i64* @clk_base, align 8
  %17 = load i64, i64* @CPU_FINETRIM_SELECT, align 8
  %18 = add nsw i64 %16, %17
  %19 = call i32 @writel_relaxed(i32 %15, i64 %18)
  %20 = call i32 (...) @tegra114_car_barrier()
  ret void
}

declare dso_local i32 @writel_relaxed(i32, i64) #1

declare dso_local i32 @tegra114_car_barrier(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
