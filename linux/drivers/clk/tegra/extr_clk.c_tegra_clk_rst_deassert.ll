; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/tegra/extr_clk.c_tegra_clk_rst_deassert.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/tegra/extr_clk.c_tegra_clk_rst_deassert.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }
%struct.reset_controller_dev = type { i32 }

@periph_banks = common dso_local global i32 0, align 4
@clk_base = common dso_local global i64 0, align 8
@periph_regs = common dso_local global %struct.TYPE_2__* null, align 8
@num_special_reset = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.reset_controller_dev*, i64)* @tegra_clk_rst_deassert to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tegra_clk_rst_deassert(%struct.reset_controller_dev* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.reset_controller_dev*, align 8
  %5 = alloca i64, align 8
  store %struct.reset_controller_dev* %0, %struct.reset_controller_dev** %4, align 8
  store i64 %1, i64* %5, align 8
  %6 = load i64, i64* %5, align 8
  %7 = load i32, i32* @periph_banks, align 4
  %8 = mul nsw i32 %7, 32
  %9 = sext i32 %8 to i64
  %10 = icmp ult i64 %6, %9
  br i1 %10, label %11, label %24

11:                                               ; preds = %2
  %12 = load i64, i64* %5, align 8
  %13 = urem i64 %12, 32
  %14 = call i32 @BIT(i64 %13)
  %15 = load i64, i64* @clk_base, align 8
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** @periph_regs, align 8
  %17 = load i64, i64* %5, align 8
  %18 = udiv i64 %17, 32
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i64 %18
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = add nsw i64 %15, %21
  %23 = call i32 @writel_relaxed(i32 %14, i64 %22)
  store i32 0, i32* %3, align 4
  br label %39

24:                                               ; preds = %2
  %25 = load i64, i64* %5, align 8
  %26 = load i32, i32* @periph_banks, align 4
  %27 = mul nsw i32 %26, 32
  %28 = load i32, i32* @num_special_reset, align 4
  %29 = add nsw i32 %27, %28
  %30 = sext i32 %29 to i64
  %31 = icmp ult i64 %25, %30
  br i1 %31, label %32, label %35

32:                                               ; preds = %24
  %33 = load i64, i64* %5, align 8
  %34 = call i32 @special_reset_deassert(i64 %33)
  store i32 %34, i32* %3, align 4
  br label %39

35:                                               ; preds = %24
  br label %36

36:                                               ; preds = %35
  %37 = load i32, i32* @EINVAL, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %3, align 4
  br label %39

39:                                               ; preds = %36, %32, %11
  %40 = load i32, i32* %3, align 4
  ret i32 %40
}

declare dso_local i32 @writel_relaxed(i32, i64) #1

declare dso_local i32 @BIT(i64) #1

declare dso_local i32 @special_reset_deassert(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
