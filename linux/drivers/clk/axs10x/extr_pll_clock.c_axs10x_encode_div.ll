; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/axs10x/extr_pll_clock.c_axs10x_encode_div.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/axs10x/extr_pll_clock.c_axs10x_encode_div.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @axs10x_encode_div to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @axs10x_encode_div(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %6 = load i32, i32* %5, align 4
  %7 = load i32, i32* %3, align 4
  %8 = urem i32 %7, 2
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %13

10:                                               ; preds = %2
  %11 = load i32, i32* %3, align 4
  %12 = lshr i32 %11, 1
  br label %17

13:                                               ; preds = %2
  %14 = load i32, i32* %3, align 4
  %15 = lshr i32 %14, 1
  %16 = add i32 %15, 1
  br label %17

17:                                               ; preds = %13, %10
  %18 = phi i32 [ %12, %10 ], [ %16, %13 ]
  %19 = call i32 @PLL_REG_SET_LOW(i32 %6, i32 %18)
  %20 = load i32, i32* %5, align 4
  %21 = load i32, i32* %3, align 4
  %22 = lshr i32 %21, 1
  %23 = call i32 @PLL_REG_SET_HIGH(i32 %20, i32 %22)
  %24 = load i32, i32* %5, align 4
  %25 = load i32, i32* %3, align 4
  %26 = urem i32 %25, 2
  %27 = call i32 @PLL_REG_SET_EDGE(i32 %24, i32 %26)
  %28 = load i32, i32* %5, align 4
  %29 = load i32, i32* %3, align 4
  %30 = icmp eq i32 %29, 1
  %31 = zext i1 %30 to i64
  %32 = select i1 %30, i32 1, i32 0
  %33 = call i32 @PLL_REG_SET_BYPASS(i32 %28, i32 %32)
  %34 = load i32, i32* %5, align 4
  %35 = load i32, i32* %4, align 4
  %36 = icmp eq i32 %35, 0
  %37 = zext i1 %36 to i64
  %38 = select i1 %36, i32 1, i32 0
  %39 = call i32 @PLL_REG_SET_NOUPD(i32 %34, i32 %38)
  %40 = load i32, i32* %5, align 4
  ret i32 %40
}

declare dso_local i32 @PLL_REG_SET_LOW(i32, i32) #1

declare dso_local i32 @PLL_REG_SET_HIGH(i32, i32) #1

declare dso_local i32 @PLL_REG_SET_EDGE(i32, i32) #1

declare dso_local i32 @PLL_REG_SET_BYPASS(i32, i32) #1

declare dso_local i32 @PLL_REG_SET_NOUPD(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
