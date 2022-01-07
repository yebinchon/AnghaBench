; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/spear/extr_clk-frac-synth.c_clk_frac_set_rate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/spear/extr_clk-frac-synth.c_clk_frac_set_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_hw = type { i32 }
%struct.clk_frac = type { i64, i32, i32, %struct.frac_rate_tbl* }
%struct.frac_rate_tbl = type { i64 }

@frac_calc_rate = common dso_local global i32 0, align 4
@DIV_FACTOR_MASK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.clk_hw*, i64, i64)* @clk_frac_set_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @clk_frac_set_rate(%struct.clk_hw* %0, i64 %1, i64 %2) #0 {
  %4 = alloca %struct.clk_hw*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.clk_frac*, align 8
  %8 = alloca %struct.frac_rate_tbl*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store %struct.clk_hw* %0, %struct.clk_hw** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  %12 = load %struct.clk_hw*, %struct.clk_hw** %4, align 8
  %13 = call %struct.clk_frac* @to_clk_frac(%struct.clk_hw* %12)
  store %struct.clk_frac* %13, %struct.clk_frac** %7, align 8
  %14 = load %struct.clk_frac*, %struct.clk_frac** %7, align 8
  %15 = getelementptr inbounds %struct.clk_frac, %struct.clk_frac* %14, i32 0, i32 3
  %16 = load %struct.frac_rate_tbl*, %struct.frac_rate_tbl** %15, align 8
  store %struct.frac_rate_tbl* %16, %struct.frac_rate_tbl** %8, align 8
  store i64 0, i64* %9, align 8
  %17 = load %struct.clk_hw*, %struct.clk_hw** %4, align 8
  %18 = load i64, i64* %5, align 8
  %19 = load i64, i64* %6, align 8
  %20 = load i32, i32* @frac_calc_rate, align 4
  %21 = load %struct.clk_frac*, %struct.clk_frac** %7, align 8
  %22 = getelementptr inbounds %struct.clk_frac, %struct.clk_frac* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @clk_round_rate_index(%struct.clk_hw* %17, i64 %18, i64 %19, i32 %20, i32 %23, i32* %11)
  %25 = load %struct.clk_frac*, %struct.clk_frac** %7, align 8
  %26 = getelementptr inbounds %struct.clk_frac, %struct.clk_frac* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %35

29:                                               ; preds = %3
  %30 = load %struct.clk_frac*, %struct.clk_frac** %7, align 8
  %31 = getelementptr inbounds %struct.clk_frac, %struct.clk_frac* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* %9, align 8
  %34 = call i32 @spin_lock_irqsave(i64 %32, i64 %33)
  br label %35

35:                                               ; preds = %29, %3
  %36 = load %struct.clk_frac*, %struct.clk_frac** %7, align 8
  %37 = getelementptr inbounds %struct.clk_frac, %struct.clk_frac* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 8
  %39 = call i64 @readl_relaxed(i32 %38)
  %40 = load i64, i64* @DIV_FACTOR_MASK, align 8
  %41 = xor i64 %40, -1
  %42 = and i64 %39, %41
  store i64 %42, i64* %10, align 8
  %43 = load %struct.frac_rate_tbl*, %struct.frac_rate_tbl** %8, align 8
  %44 = load i32, i32* %11, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.frac_rate_tbl, %struct.frac_rate_tbl* %43, i64 %45
  %47 = getelementptr inbounds %struct.frac_rate_tbl, %struct.frac_rate_tbl* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @DIV_FACTOR_MASK, align 8
  %50 = and i64 %48, %49
  %51 = load i64, i64* %10, align 8
  %52 = or i64 %51, %50
  store i64 %52, i64* %10, align 8
  %53 = load i64, i64* %10, align 8
  %54 = load %struct.clk_frac*, %struct.clk_frac** %7, align 8
  %55 = getelementptr inbounds %struct.clk_frac, %struct.clk_frac* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 8
  %57 = call i32 @writel_relaxed(i64 %53, i32 %56)
  %58 = load %struct.clk_frac*, %struct.clk_frac** %7, align 8
  %59 = getelementptr inbounds %struct.clk_frac, %struct.clk_frac* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %68

62:                                               ; preds = %35
  %63 = load %struct.clk_frac*, %struct.clk_frac** %7, align 8
  %64 = getelementptr inbounds %struct.clk_frac, %struct.clk_frac* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = load i64, i64* %9, align 8
  %67 = call i32 @spin_unlock_irqrestore(i64 %65, i64 %66)
  br label %68

68:                                               ; preds = %62, %35
  ret i32 0
}

declare dso_local %struct.clk_frac* @to_clk_frac(%struct.clk_hw*) #1

declare dso_local i32 @clk_round_rate_index(%struct.clk_hw*, i64, i64, i32, i32, i32*) #1

declare dso_local i32 @spin_lock_irqsave(i64, i64) #1

declare dso_local i64 @readl_relaxed(i32) #1

declare dso_local i32 @writel_relaxed(i64, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
