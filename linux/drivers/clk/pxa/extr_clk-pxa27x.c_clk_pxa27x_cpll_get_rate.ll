; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/pxa/extr_clk-pxa27x.c_clk_pxa27x_cpll_get_rate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/pxa/extr_clk-pxa27x.c_clk_pxa27x_cpll_get_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_hw = type { i32 }

@CCSR = common dso_local global i32 0, align 4
@CCSR_L_MASK = common dso_local global i64 0, align 8
@CCSR_N2_MASK = common dso_local global i64 0, align 8
@CCSR_N2_SHIFT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.clk_hw*, i64)* @clk_pxa27x_cpll_get_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @clk_pxa27x_cpll_get_rate(%struct.clk_hw* %0, i64 %1) #0 {
  %3 = alloca %struct.clk_hw*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  store %struct.clk_hw* %0, %struct.clk_hw** %3, align 8
  store i64 %1, i64* %4, align 8
  %13 = load i32, i32* @CCSR, align 4
  %14 = call i64 @readl(i32 %13)
  store i64 %14, i64* %12, align 8
  %15 = call i64 asm "mrc\09p14, 0, $0, c6, c0, 0", "=r,~{dirflag},~{fpsr},~{flags}"() #2, !srcloc !2
  store i64 %15, i64* %5, align 8
  %16 = load i64, i64* %5, align 8
  %17 = and i64 %16, 1
  %18 = trunc i64 %17 to i32
  store i32 %18, i32* %6, align 4
  %19 = load i64, i64* %5, align 8
  %20 = and i64 %19, 4
  %21 = trunc i64 %20 to i32
  store i32 %21, i32* %7, align 4
  %22 = load i64, i64* %12, align 8
  %23 = load i64, i64* @CCSR_L_MASK, align 8
  %24 = and i64 %22, %23
  %25 = trunc i64 %24 to i32
  store i32 %25, i32* %8, align 4
  %26 = load i64, i64* %12, align 8
  %27 = load i64, i64* @CCSR_N2_MASK, align 8
  %28 = and i64 %26, %27
  %29 = load i64, i64* @CCSR_N2_SHIFT, align 8
  %30 = lshr i64 %28, %29
  %31 = trunc i64 %30 to i32
  store i32 %31, i32* %10, align 4
  %32 = load i32, i32* %8, align 4
  %33 = zext i32 %32 to i64
  %34 = load i64, i64* %4, align 8
  %35 = mul i64 %33, %34
  %36 = trunc i64 %35 to i32
  store i32 %36, i32* %9, align 4
  %37 = load i32, i32* %9, align 4
  %38 = load i32, i32* %10, align 4
  %39 = mul i32 %37, %38
  %40 = udiv i32 %39, 2
  store i32 %40, i32* %11, align 4
  %41 = load i32, i32* %11, align 4
  %42 = zext i32 %41 to i64
  ret i64 %42
}

declare dso_local i64 @readl(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
!2 = !{i32 533}
