; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/extr_clk-axi-clkgen.c_axi_clkgen_calc_clk_params.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/extr_clk-axi-clkgen.c_axi_clkgen_calc_clk_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32*, i32*, i32*, i32*)* @axi_clkgen_calc_clk_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @axi_clkgen_calc_clk_params(i32 %0, i32* %1, i32* %2, i32* %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  store i32 %0, i32* %6, align 4
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  store i32* %4, i32** %10, align 8
  %11 = load i32, i32* %6, align 4
  %12 = icmp eq i32 %11, 1
  br i1 %12, label %13, label %15

13:                                               ; preds = %5
  %14 = load i32*, i32** %10, align 8
  store i32 1, i32* %14, align 4
  br label %17

15:                                               ; preds = %5
  %16 = load i32*, i32** %10, align 8
  store i32 0, i32* %16, align 4
  br label %17

17:                                               ; preds = %15, %13
  %18 = load i32, i32* %6, align 4
  %19 = udiv i32 %18, 2
  %20 = load i32*, i32** %8, align 8
  store i32 %19, i32* %20, align 4
  %21 = load i32, i32* %6, align 4
  %22 = urem i32 %21, 2
  %23 = load i32*, i32** %9, align 8
  store i32 %22, i32* %23, align 4
  %24 = load i32, i32* %6, align 4
  %25 = load i32*, i32** %8, align 8
  %26 = load i32, i32* %25, align 4
  %27 = sub i32 %24, %26
  %28 = load i32*, i32** %7, align 8
  store i32 %27, i32* %28, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
