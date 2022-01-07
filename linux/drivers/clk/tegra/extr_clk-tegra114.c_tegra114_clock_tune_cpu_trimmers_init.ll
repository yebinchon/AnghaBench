; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/tegra/extr_clk-tegra114.c_tegra114_clock_tune_cpu_trimmers_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/tegra/extr_clk-tegra114.c_tegra114_clock_tune_cpu_trimmers_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CPU_FINETRIM_R_FCPU_1_MASK = common dso_local global i32 0, align 4
@CPU_FINETRIM_R_FCPU_2_MASK = common dso_local global i32 0, align 4
@CPU_FINETRIM_R_FCPU_3_MASK = common dso_local global i32 0, align 4
@CPU_FINETRIM_R_FCPU_4_MASK = common dso_local global i32 0, align 4
@CPU_FINETRIM_R_FCPU_5_MASK = common dso_local global i32 0, align 4
@CPU_FINETRIM_R_FCPU_6_MASK = common dso_local global i32 0, align 4
@clk_base = common dso_local global i64 0, align 8
@CPU_FINETRIM_R = common dso_local global i64 0, align 8
@CPU_FINETRIM_1_FCPU_1 = common dso_local global i32 0, align 4
@CPU_FINETRIM_1_FCPU_2 = common dso_local global i32 0, align 4
@CPU_FINETRIM_1_FCPU_3 = common dso_local global i32 0, align 4
@CPU_FINETRIM_1_FCPU_4 = common dso_local global i32 0, align 4
@CPU_FINETRIM_1_FCPU_5 = common dso_local global i32 0, align 4
@CPU_FINETRIM_1_FCPU_6 = common dso_local global i32 0, align 4
@CPU_FINETRIM_DR = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tegra114_clock_tune_cpu_trimmers_init() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  store i32 0, i32* %2, align 4
  %3 = load i32, i32* @CPU_FINETRIM_R_FCPU_1_MASK, align 4
  %4 = load i32, i32* @CPU_FINETRIM_R_FCPU_2_MASK, align 4
  %5 = or i32 %3, %4
  %6 = load i32, i32* @CPU_FINETRIM_R_FCPU_3_MASK, align 4
  %7 = or i32 %5, %6
  %8 = load i32, i32* @CPU_FINETRIM_R_FCPU_4_MASK, align 4
  %9 = or i32 %7, %8
  %10 = load i32, i32* @CPU_FINETRIM_R_FCPU_5_MASK, align 4
  %11 = or i32 %9, %10
  %12 = load i32, i32* @CPU_FINETRIM_R_FCPU_6_MASK, align 4
  %13 = or i32 %11, %12
  %14 = load i32, i32* %2, align 4
  %15 = or i32 %14, %13
  store i32 %15, i32* %2, align 4
  %16 = load i32, i32* %2, align 4
  %17 = load i64, i64* @clk_base, align 8
  %18 = load i64, i64* @CPU_FINETRIM_R, align 8
  %19 = add nsw i64 %17, %18
  %20 = call i32 @writel_relaxed(i32 %16, i64 %19)
  %21 = load i32, i32* @CPU_FINETRIM_1_FCPU_1, align 4
  %22 = load i32, i32* @CPU_FINETRIM_1_FCPU_2, align 4
  %23 = or i32 %21, %22
  %24 = load i32, i32* @CPU_FINETRIM_1_FCPU_3, align 4
  %25 = or i32 %23, %24
  %26 = load i32, i32* @CPU_FINETRIM_1_FCPU_4, align 4
  %27 = or i32 %25, %26
  %28 = load i32, i32* @CPU_FINETRIM_1_FCPU_5, align 4
  %29 = or i32 %27, %28
  %30 = load i32, i32* @CPU_FINETRIM_1_FCPU_6, align 4
  %31 = or i32 %29, %30
  %32 = load i32, i32* %1, align 4
  %33 = or i32 %32, %31
  store i32 %33, i32* %1, align 4
  %34 = load i32, i32* %1, align 4
  %35 = load i64, i64* @clk_base, align 8
  %36 = load i64, i64* @CPU_FINETRIM_DR, align 8
  %37 = add nsw i64 %35, %36
  %38 = call i32 @writel_relaxed(i32 %34, i64 %37)
  %39 = call i32 (...) @tegra114_clock_tune_cpu_trimmers_low()
  ret void
}

declare dso_local i32 @writel_relaxed(i32, i64) #1

declare dso_local i32 @tegra114_clock_tune_cpu_trimmers_low(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
