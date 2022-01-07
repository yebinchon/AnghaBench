; ModuleID = '/home/carl/AnghaBench/linux/arch/arm/mach-ep93xx/extr_clock.c_set_div_rate.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm/mach-ep93xx/extr_clock.c_set_div_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk = type { i32 }

@EP93XX_SYSCON_CLKDIV_ESEL = common dso_local global i32 0, align 4
@EP93XX_SYSCON_CLKDIV_PSEL = common dso_local global i32 0, align 4
@EP93XX_SYSCON_CLKDIV_PDIV_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.clk*, i64)* @set_div_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_div_rate(%struct.clk* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.clk*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.clk* %0, %struct.clk** %4, align 8
  store i64 %1, i64* %5, align 8
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %12 = load %struct.clk*, %struct.clk** %4, align 8
  %13 = load i64, i64* %5, align 8
  %14 = call i32 @calc_clk_div(%struct.clk* %12, i64 %13, i32* %7, i32* %8, i32* %9, i32* %10)
  store i32 %14, i32* %6, align 4
  %15 = load i32, i32* %6, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %2
  %18 = load i32, i32* %6, align 4
  store i32 %18, i32* %3, align 4
  br label %54

19:                                               ; preds = %2
  %20 = load %struct.clk*, %struct.clk** %4, align 8
  %21 = getelementptr inbounds %struct.clk, %struct.clk* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @__raw_readl(i32 %22)
  store i32 %23, i32* %11, align 4
  %24 = load i32, i32* %11, align 4
  %25 = and i32 %24, -32768
  store i32 %25, i32* %11, align 4
  %26 = load i32, i32* %8, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %19
  %29 = load i32, i32* @EP93XX_SYSCON_CLKDIV_ESEL, align 4
  br label %31

30:                                               ; preds = %19
  br label %31

31:                                               ; preds = %30, %28
  %32 = phi i32 [ %29, %28 ], [ 0, %30 ]
  %33 = load i32, i32* %7, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %31
  %36 = load i32, i32* @EP93XX_SYSCON_CLKDIV_PSEL, align 4
  br label %38

37:                                               ; preds = %31
  br label %38

38:                                               ; preds = %37, %35
  %39 = phi i32 [ %36, %35 ], [ 0, %37 ]
  %40 = or i32 %32, %39
  %41 = load i32, i32* %9, align 4
  %42 = load i32, i32* @EP93XX_SYSCON_CLKDIV_PDIV_SHIFT, align 4
  %43 = shl i32 %41, %42
  %44 = or i32 %40, %43
  %45 = load i32, i32* %10, align 4
  %46 = or i32 %44, %45
  %47 = load i32, i32* %11, align 4
  %48 = or i32 %47, %46
  store i32 %48, i32* %11, align 4
  %49 = load i32, i32* %11, align 4
  %50 = load %struct.clk*, %struct.clk** %4, align 8
  %51 = getelementptr inbounds %struct.clk, %struct.clk* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @ep93xx_syscon_swlocked_write(i32 %49, i32 %52)
  store i32 0, i32* %3, align 4
  br label %54

54:                                               ; preds = %38, %17
  %55 = load i32, i32* %3, align 4
  ret i32 %55
}

declare dso_local i32 @calc_clk_div(%struct.clk*, i64, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @__raw_readl(i32) #1

declare dso_local i32 @ep93xx_syscon_swlocked_write(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
