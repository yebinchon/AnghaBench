; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/tegra/extr_clk-tegra210.c_tegra210_put_utmipll_in_iddq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/tegra/extr_clk-tegra210.c_tegra210_put_utmipll_in_iddq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@clk_base = common dso_local global i64 0, align 8
@UTMIPLL_HW_PWRDN_CFG0 = common dso_local global i64 0, align 8
@UTMIPLL_HW_PWRDN_CFG0_UTMIPLL_LOCK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [47 x i8] c"trying to assert IDDQ while UTMIPLL is locked\0A\00", align 1
@UTMIPLL_HW_PWRDN_CFG0_IDDQ_OVERRIDE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tegra210_put_utmipll_in_iddq() #0 {
  %1 = alloca i32, align 4
  %2 = load i64, i64* @clk_base, align 8
  %3 = load i64, i64* @UTMIPLL_HW_PWRDN_CFG0, align 8
  %4 = add nsw i64 %2, %3
  %5 = call i32 @readl_relaxed(i64 %4)
  store i32 %5, i32* %1, align 4
  %6 = load i32, i32* %1, align 4
  %7 = load i32, i32* @UTMIPLL_HW_PWRDN_CFG0_UTMIPLL_LOCK, align 4
  %8 = and i32 %6, %7
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %0
  %11 = call i32 @pr_err(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0))
  br label %21

12:                                               ; preds = %0
  %13 = load i32, i32* @UTMIPLL_HW_PWRDN_CFG0_IDDQ_OVERRIDE, align 4
  %14 = load i32, i32* %1, align 4
  %15 = or i32 %14, %13
  store i32 %15, i32* %1, align 4
  %16 = load i32, i32* %1, align 4
  %17 = load i64, i64* @clk_base, align 8
  %18 = load i64, i64* @UTMIPLL_HW_PWRDN_CFG0, align 8
  %19 = add nsw i64 %17, %18
  %20 = call i32 @writel_relaxed(i32 %16, i64 %19)
  br label %21

21:                                               ; preds = %12, %10
  ret void
}

declare dso_local i32 @readl_relaxed(i64) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @writel_relaxed(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
