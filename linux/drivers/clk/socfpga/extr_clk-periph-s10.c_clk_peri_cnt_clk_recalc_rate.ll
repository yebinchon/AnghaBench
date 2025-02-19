; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/socfpga/extr_clk-periph-s10.c_clk_peri_cnt_clk_recalc_rate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/socfpga/extr_clk-periph-s10.c_clk_peri_cnt_clk_recalc_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_hw = type { i32 }
%struct.socfpga_periph_clk = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.clk_hw*, i64)* @clk_peri_cnt_clk_recalc_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @clk_peri_cnt_clk_recalc_rate(%struct.clk_hw* %0, i64 %1) #0 {
  %3 = alloca %struct.clk_hw*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.socfpga_periph_clk*, align 8
  %6 = alloca i64, align 8
  store %struct.clk_hw* %0, %struct.clk_hw** %3, align 8
  store i64 %1, i64* %4, align 8
  %7 = load %struct.clk_hw*, %struct.clk_hw** %3, align 8
  %8 = call %struct.socfpga_periph_clk* @to_periph_clk(%struct.clk_hw* %7)
  store %struct.socfpga_periph_clk* %8, %struct.socfpga_periph_clk** %5, align 8
  store i64 1, i64* %6, align 8
  %9 = load %struct.socfpga_periph_clk*, %struct.socfpga_periph_clk** %5, align 8
  %10 = getelementptr inbounds %struct.socfpga_periph_clk, %struct.socfpga_periph_clk* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %17

13:                                               ; preds = %2
  %14 = load %struct.socfpga_periph_clk*, %struct.socfpga_periph_clk** %5, align 8
  %15 = getelementptr inbounds %struct.socfpga_periph_clk, %struct.socfpga_periph_clk* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  store i64 %16, i64* %6, align 8
  br label %33

17:                                               ; preds = %2
  %18 = load %struct.socfpga_periph_clk*, %struct.socfpga_periph_clk** %5, align 8
  %19 = getelementptr inbounds %struct.socfpga_periph_clk, %struct.socfpga_periph_clk* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %32

23:                                               ; preds = %17
  %24 = load %struct.socfpga_periph_clk*, %struct.socfpga_periph_clk** %5, align 8
  %25 = getelementptr inbounds %struct.socfpga_periph_clk, %struct.socfpga_periph_clk* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = call i32 @readl(i64 %27)
  %29 = and i32 %28, 2047
  %30 = add nsw i32 %29, 1
  %31 = sext i32 %30 to i64
  store i64 %31, i64* %6, align 8
  br label %32

32:                                               ; preds = %23, %17
  br label %33

33:                                               ; preds = %32, %13
  %34 = load i64, i64* %4, align 8
  %35 = load i64, i64* %6, align 8
  %36 = udiv i64 %34, %35
  ret i64 %36
}

declare dso_local %struct.socfpga_periph_clk* @to_periph_clk(%struct.clk_hw*) #1

declare dso_local i32 @readl(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
