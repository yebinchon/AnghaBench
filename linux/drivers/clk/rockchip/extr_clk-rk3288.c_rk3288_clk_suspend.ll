; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/rockchip/extr_clk-rk3288.c_rk3288_clk_suspend.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/rockchip/extr_clk-rk3288.c_rk3288_clk_suspend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@rk3288_saved_cru_reg_ids = common dso_local global i32* null, align 8
@rk3288_cru_base = common dso_local global i64 0, align 8
@rk3288_saved_cru_regs = common dso_local global i32* null, align 8
@RK3288_MODE_CON = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @rk3288_clk_suspend to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rk3288_clk_suspend() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  br label %3

3:                                                ; preds = %23, %0
  %4 = load i32, i32* %1, align 4
  %5 = load i32*, i32** @rk3288_saved_cru_reg_ids, align 8
  %6 = call i32 @ARRAY_SIZE(i32* %5)
  %7 = icmp slt i32 %4, %6
  br i1 %7, label %8, label %26

8:                                                ; preds = %3
  %9 = load i32*, i32** @rk3288_saved_cru_reg_ids, align 8
  %10 = load i32, i32* %1, align 4
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds i32, i32* %9, i64 %11
  %13 = load i32, i32* %12, align 4
  store i32 %13, i32* %2, align 4
  %14 = load i64, i64* @rk3288_cru_base, align 8
  %15 = load i32, i32* %2, align 4
  %16 = sext i32 %15 to i64
  %17 = add nsw i64 %14, %16
  %18 = call i32 @readl_relaxed(i64 %17)
  %19 = load i32*, i32** @rk3288_saved_cru_regs, align 8
  %20 = load i32, i32* %1, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i32, i32* %19, i64 %21
  store i32 %18, i32* %22, align 4
  br label %23

23:                                               ; preds = %8
  %24 = load i32, i32* %1, align 4
  %25 = add nsw i32 %24, 1
  store i32 %25, i32* %1, align 4
  br label %3

26:                                               ; preds = %3
  %27 = load i64, i64* @rk3288_cru_base, align 8
  %28 = call i64 @RK3288_CLKGATE_CON(i32 10)
  %29 = add nsw i64 %27, %28
  %30 = call i32 @writel_relaxed(i32 268435456, i64 %29)
  %31 = load i64, i64* @rk3288_cru_base, align 8
  %32 = load i64, i64* @RK3288_MODE_CON, align 8
  %33 = add nsw i64 %31, %32
  %34 = call i32 @writel_relaxed(i32 -217907200, i64 %33)
  ret i32 0
}

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @readl_relaxed(i64) #1

declare dso_local i32 @writel_relaxed(i32, i64) #1

declare dso_local i64 @RK3288_CLKGATE_CON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
