; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/pxa/extr_clk-pxa25x.c_clk_pxa25x_cpll_get_rate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/pxa/extr_clk-pxa25x.c_clk_pxa25x_cpll_get_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_hw = type { i32 }

@CCCR = common dso_local global i32 0, align 4
@L_clk_mult = common dso_local global i32* null, align 8
@M_clk_mult = common dso_local global i32* null, align 8
@N2_clk_mult = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.clk_hw*, i64)* @clk_pxa25x_cpll_get_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @clk_pxa25x_cpll_get_rate(%struct.clk_hw* %0, i64 %1) #0 {
  %3 = alloca %struct.clk_hw*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.clk_hw* %0, %struct.clk_hw** %3, align 8
  store i64 %1, i64* %4, align 8
  %11 = load i32, i32* @CCCR, align 4
  %12 = call i64 @readl(i32 %11)
  store i64 %12, i64* %6, align 8
  %13 = call i64 asm "mrc\09p14, 0, $0, c6, c0, 0", "=r,~{dirflag},~{fpsr},~{flags}"() #2, !srcloc !2
  store i64 %13, i64* %5, align 8
  %14 = load i64, i64* %5, align 8
  %15 = and i64 %14, 1
  %16 = trunc i64 %15 to i32
  store i32 %16, i32* %10, align 4
  %17 = load i32*, i32** @L_clk_mult, align 8
  %18 = load i64, i64* %6, align 8
  %19 = lshr i64 %18, 0
  %20 = and i64 %19, 31
  %21 = getelementptr inbounds i32, i32* %17, i64 %20
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* %7, align 4
  %23 = load i32*, i32** @M_clk_mult, align 8
  %24 = load i64, i64* %6, align 8
  %25 = lshr i64 %24, 5
  %26 = and i64 %25, 3
  %27 = getelementptr inbounds i32, i32* %23, i64 %26
  %28 = load i32, i32* %27, align 4
  store i32 %28, i32* %8, align 4
  %29 = load i32*, i32** @N2_clk_mult, align 8
  %30 = load i64, i64* %6, align 8
  %31 = lshr i64 %30, 7
  %32 = and i64 %31, 7
  %33 = getelementptr inbounds i32, i32* %29, i64 %32
  %34 = load i32, i32* %33, align 4
  store i32 %34, i32* %9, align 4
  %35 = load i32, i32* %8, align 4
  %36 = load i32, i32* %7, align 4
  %37 = mul i32 %35, %36
  %38 = load i32, i32* %9, align 4
  %39 = mul i32 %37, %38
  %40 = zext i32 %39 to i64
  %41 = load i64, i64* %4, align 8
  %42 = mul i64 %40, %41
  %43 = udiv i64 %42, 2
  ret i64 %43
}

declare dso_local i64 @readl(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
!2 = !{i32 492}
