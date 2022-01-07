; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/nxp/extr_clk-lpc18xx-cgu.c_lpc18xx_pll0_mdec2msel.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/nxp/extr_clk-lpc18xx-cgu.c_lpc18xx_pll0_mdec2msel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@LPC18XX_PLL0_MSEL_MAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @lpc18xx_pll0_mdec2msel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lpc18xx_pll0_mdec2msel(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %5 = load i32, i32* %3, align 4
  switch i32 %5, label %8 [
    i32 98307, label %6
    i32 65539, label %7
  ]

6:                                                ; preds = %1
  store i32 1, i32* %2, align 4
  br label %34

7:                                                ; preds = %1
  store i32 2, i32* %2, align 4
  br label %34

8:                                                ; preds = %1
  %9 = load i32, i32* @LPC18XX_PLL0_MSEL_MAX, align 4
  %10 = add nsw i32 %9, 1
  store i32 %10, i32* %4, align 4
  br label %11

11:                                               ; preds = %29, %8
  %12 = load i32, i32* %3, align 4
  %13 = icmp ne i32 %12, 16384
  br i1 %13, label %14, label %17

14:                                               ; preds = %11
  %15 = load i32, i32* %4, align 4
  %16 = icmp sgt i32 %15, 0
  br label %17

17:                                               ; preds = %14, %11
  %18 = phi i1 [ false, %11 ], [ %16, %14 ]
  br i1 %18, label %19, label %32

19:                                               ; preds = %17
  %20 = load i32, i32* %3, align 4
  %21 = load i32, i32* %3, align 4
  %22 = ashr i32 %21, 14
  %23 = xor i32 %20, %22
  %24 = and i32 %23, 1
  %25 = load i32, i32* %3, align 4
  %26 = shl i32 %25, 1
  %27 = and i32 %26, 32767
  %28 = or i32 %24, %27
  store i32 %28, i32* %3, align 4
  br label %29

29:                                               ; preds = %19
  %30 = load i32, i32* %4, align 4
  %31 = add nsw i32 %30, -1
  store i32 %31, i32* %4, align 4
  br label %11

32:                                               ; preds = %17
  %33 = load i32, i32* %4, align 4
  store i32 %33, i32* %2, align 4
  br label %34

34:                                               ; preds = %32, %7, %6
  %35 = load i32, i32* %2, align 4
  ret i32 %35
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
