; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/h8300/extr_clk-h8s2678.c_pll_set_rate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/h8300/extr_clk-h8s2678.c_pll_set_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_hw = type { i32 }
%struct.pll_clock = type { i32, i32 }

@clklock = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.clk_hw*, i64, i64)* @pll_set_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pll_set_rate(%struct.clk_hw* %0, i64 %1, i64 %2) #0 {
  %4 = alloca %struct.clk_hw*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8, align 1
  %9 = alloca i64, align 8
  %10 = alloca %struct.pll_clock*, align 8
  store %struct.clk_hw* %0, %struct.clk_hw** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  %11 = load %struct.clk_hw*, %struct.clk_hw** %4, align 8
  %12 = call %struct.pll_clock* @to_pll_clock(%struct.clk_hw* %11)
  store %struct.pll_clock* %12, %struct.pll_clock** %10, align 8
  %13 = load i64, i64* %5, align 8
  %14 = load i64, i64* %6, align 8
  %15 = udiv i64 %13, %14
  %16 = udiv i64 %15, 2
  %17 = and i64 %16, 3
  %18 = trunc i64 %17 to i32
  store i32 %18, i32* %7, align 4
  %19 = load i64, i64* %9, align 8
  %20 = call i32 @spin_lock_irqsave(i32* @clklock, i64 %19)
  %21 = load %struct.pll_clock*, %struct.pll_clock** %10, align 8
  %22 = getelementptr inbounds %struct.pll_clock, %struct.pll_clock* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = call zeroext i8 @readb(i32 %23)
  store i8 %24, i8* %8, align 1
  %25 = load i8, i8* %8, align 1
  %26 = zext i8 %25 to i32
  %27 = or i32 %26, 8
  %28 = trunc i32 %27 to i8
  store i8 %28, i8* %8, align 1
  %29 = load i8, i8* %8, align 1
  %30 = load %struct.pll_clock*, %struct.pll_clock** %10, align 8
  %31 = getelementptr inbounds %struct.pll_clock, %struct.pll_clock* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @writeb(i8 zeroext %29, i32 %32)
  %34 = load %struct.pll_clock*, %struct.pll_clock** %10, align 8
  %35 = getelementptr inbounds %struct.pll_clock, %struct.pll_clock* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call zeroext i8 @readb(i32 %36)
  store i8 %37, i8* %8, align 1
  %38 = load i8, i8* %8, align 1
  %39 = zext i8 %38 to i32
  %40 = and i32 %39, -4
  %41 = trunc i32 %40 to i8
  store i8 %41, i8* %8, align 1
  %42 = load i32, i32* %7, align 4
  %43 = load i8, i8* %8, align 1
  %44 = zext i8 %43 to i32
  %45 = or i32 %44, %42
  %46 = trunc i32 %45 to i8
  store i8 %46, i8* %8, align 1
  %47 = load i8, i8* %8, align 1
  %48 = load %struct.pll_clock*, %struct.pll_clock** %10, align 8
  %49 = getelementptr inbounds %struct.pll_clock, %struct.pll_clock* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @writeb(i8 zeroext %47, i32 %50)
  %52 = load i64, i64* %9, align 8
  %53 = call i32 @spin_unlock_irqrestore(i32* @clklock, i64 %52)
  ret i32 0
}

declare dso_local %struct.pll_clock* @to_pll_clock(%struct.clk_hw*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local zeroext i8 @readb(i32) #1

declare dso_local i32 @writeb(i8 zeroext, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
