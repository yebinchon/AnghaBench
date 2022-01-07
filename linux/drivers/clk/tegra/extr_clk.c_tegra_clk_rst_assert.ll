; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/tegra/extr_clk.c_tegra_clk_rst_assert.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/tegra/extr_clk.c_tegra_clk_rst_assert.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }
%struct.reset_controller_dev = type { i32 }

@periph_banks = common dso_local global i32 0, align 4
@clk_base = common dso_local global i64 0, align 8
@periph_regs = common dso_local global %struct.TYPE_2__* null, align 8
@num_special_reset = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.reset_controller_dev*, i64)* @tegra_clk_rst_assert to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tegra_clk_rst_assert(%struct.reset_controller_dev* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.reset_controller_dev*, align 8
  %5 = alloca i64, align 8
  store %struct.reset_controller_dev* %0, %struct.reset_controller_dev** %4, align 8
  store i64 %1, i64* %5, align 8
  %6 = call i32 (...) @tegra_read_chipid()
  %7 = load i64, i64* %5, align 8
  %8 = load i32, i32* @periph_banks, align 4
  %9 = mul nsw i32 %8, 32
  %10 = sext i32 %9 to i64
  %11 = icmp ult i64 %7, %10
  br i1 %11, label %12, label %25

12:                                               ; preds = %2
  %13 = load i64, i64* %5, align 8
  %14 = urem i64 %13, 32
  %15 = call i32 @BIT(i64 %14)
  %16 = load i64, i64* @clk_base, align 8
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** @periph_regs, align 8
  %18 = load i64, i64* %5, align 8
  %19 = udiv i64 %18, 32
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i64 %19
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = add nsw i64 %16, %22
  %24 = call i32 @writel_relaxed(i32 %15, i64 %23)
  store i32 0, i32* %3, align 4
  br label %40

25:                                               ; preds = %2
  %26 = load i64, i64* %5, align 8
  %27 = load i32, i32* @periph_banks, align 4
  %28 = mul nsw i32 %27, 32
  %29 = load i32, i32* @num_special_reset, align 4
  %30 = add nsw i32 %28, %29
  %31 = sext i32 %30 to i64
  %32 = icmp ult i64 %26, %31
  br i1 %32, label %33, label %36

33:                                               ; preds = %25
  %34 = load i64, i64* %5, align 8
  %35 = call i32 @special_reset_assert(i64 %34)
  store i32 %35, i32* %3, align 4
  br label %40

36:                                               ; preds = %25
  br label %37

37:                                               ; preds = %36
  %38 = load i32, i32* @EINVAL, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %3, align 4
  br label %40

40:                                               ; preds = %37, %33, %12
  %41 = load i32, i32* %3, align 4
  ret i32 %41
}

declare dso_local i32 @tegra_read_chipid(...) #1

declare dso_local i32 @writel_relaxed(i32, i64) #1

declare dso_local i32 @BIT(i64) #1

declare dso_local i32 @special_reset_assert(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
