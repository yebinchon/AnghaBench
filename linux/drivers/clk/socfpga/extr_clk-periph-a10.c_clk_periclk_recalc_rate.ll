; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/socfpga/extr_clk-periph-a10.c_clk_periclk_recalc_rate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/socfpga/extr_clk-periph-a10.c_clk_periclk_recalc_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_hw = type { i32 }
%struct.socfpga_periph_clk = type { i32, i32, %struct.TYPE_2__, i64, i64 }
%struct.TYPE_2__ = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.clk_hw*, i64)* @clk_periclk_recalc_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @clk_periclk_recalc_rate(%struct.clk_hw* %0, i64 %1) #0 {
  %3 = alloca %struct.clk_hw*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.socfpga_periph_clk*, align 8
  %6 = alloca i32, align 4
  store %struct.clk_hw* %0, %struct.clk_hw** %3, align 8
  store i64 %1, i64* %4, align 8
  %7 = load %struct.clk_hw*, %struct.clk_hw** %3, align 8
  %8 = call %struct.socfpga_periph_clk* @to_socfpga_periph_clk(%struct.clk_hw* %7)
  store %struct.socfpga_periph_clk* %8, %struct.socfpga_periph_clk** %5, align 8
  %9 = load %struct.socfpga_periph_clk*, %struct.socfpga_periph_clk** %5, align 8
  %10 = getelementptr inbounds %struct.socfpga_periph_clk, %struct.socfpga_periph_clk* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %17

13:                                               ; preds = %2
  %14 = load %struct.socfpga_periph_clk*, %struct.socfpga_periph_clk** %5, align 8
  %15 = getelementptr inbounds %struct.socfpga_periph_clk, %struct.socfpga_periph_clk* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  store i32 %16, i32* %6, align 4
  br label %49

17:                                               ; preds = %2
  %18 = load %struct.socfpga_periph_clk*, %struct.socfpga_periph_clk** %5, align 8
  %19 = getelementptr inbounds %struct.socfpga_periph_clk, %struct.socfpga_periph_clk* %18, i32 0, i32 4
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %40

22:                                               ; preds = %17
  %23 = load %struct.socfpga_periph_clk*, %struct.socfpga_periph_clk** %5, align 8
  %24 = getelementptr inbounds %struct.socfpga_periph_clk, %struct.socfpga_periph_clk* %23, i32 0, i32 4
  %25 = load i64, i64* %24, align 8
  %26 = call i32 @readl(i64 %25)
  %27 = load %struct.socfpga_periph_clk*, %struct.socfpga_periph_clk** %5, align 8
  %28 = getelementptr inbounds %struct.socfpga_periph_clk, %struct.socfpga_periph_clk* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = ashr i32 %26, %29
  store i32 %30, i32* %6, align 4
  %31 = load %struct.socfpga_periph_clk*, %struct.socfpga_periph_clk** %5, align 8
  %32 = getelementptr inbounds %struct.socfpga_periph_clk, %struct.socfpga_periph_clk* %31, i32 0, i32 3
  %33 = load i64, i64* %32, align 8
  %34 = sub nsw i64 %33, 1
  %35 = call i32 @GENMASK(i64 %34, i32 0)
  %36 = load i32, i32* %6, align 4
  %37 = and i32 %36, %35
  store i32 %37, i32* %6, align 4
  %38 = load i32, i32* %6, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %6, align 4
  br label %48

40:                                               ; preds = %17
  %41 = load %struct.socfpga_periph_clk*, %struct.socfpga_periph_clk** %5, align 8
  %42 = getelementptr inbounds %struct.socfpga_periph_clk, %struct.socfpga_periph_clk* %41, i32 0, i32 2
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = call i32 @readl(i64 %44)
  %46 = and i32 %45, 2047
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %6, align 4
  br label %48

48:                                               ; preds = %40, %22
  br label %49

49:                                               ; preds = %48, %13
  %50 = load i64, i64* %4, align 8
  %51 = load i32, i32* %6, align 4
  %52 = sext i32 %51 to i64
  %53 = udiv i64 %50, %52
  ret i64 %53
}

declare dso_local %struct.socfpga_periph_clk* @to_socfpga_periph_clk(%struct.clk_hw*) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @GENMASK(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
