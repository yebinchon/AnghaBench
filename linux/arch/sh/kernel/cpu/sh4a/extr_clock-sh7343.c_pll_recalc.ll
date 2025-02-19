; ModuleID = '/home/carl/AnghaBench/linux/arch/sh/kernel/cpu/sh4a/extr_clock-sh7343.c_pll_recalc.c'
source_filename = "/home/carl/AnghaBench/linux/arch/sh/kernel/cpu/sh4a/extr_clock-sh7343.c_pll_recalc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@PLLCR = common dso_local global i32 0, align 4
@FRQCR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.clk*)* @pll_recalc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @pll_recalc(%struct.clk* %0) #0 {
  %2 = alloca %struct.clk*, align 8
  %3 = alloca i64, align 8
  store %struct.clk* %0, %struct.clk** %2, align 8
  store i64 1, i64* %3, align 8
  %4 = load i32, i32* @PLLCR, align 4
  %5 = call i32 @__raw_readl(i32 %4)
  %6 = and i32 %5, 16384
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %8, label %15

8:                                                ; preds = %1
  %9 = load i32, i32* @FRQCR, align 4
  %10 = call i32 @__raw_readl(i32 %9)
  %11 = ashr i32 %10, 24
  %12 = and i32 %11, 31
  %13 = add nsw i32 %12, 1
  %14 = sext i32 %13 to i64
  store i64 %14, i64* %3, align 8
  br label %15

15:                                               ; preds = %8, %1
  %16 = load %struct.clk*, %struct.clk** %2, align 8
  %17 = getelementptr inbounds %struct.clk, %struct.clk* %16, i32 0, i32 0
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* %3, align 8
  %22 = mul i64 %20, %21
  ret i64 %22
}

declare dso_local i32 @__raw_readl(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
