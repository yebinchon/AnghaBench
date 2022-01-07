; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/spear/extr_clk-frac-synth.c_clk_frac_recalc_rate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/spear/extr_clk-frac-synth.c_clk_frac_recalc_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_hw = type { i32 }
%struct.clk_frac = type { i64, i32 }

@DIV_FACTOR_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.clk_hw*, i64)* @clk_frac_recalc_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @clk_frac_recalc_rate(%struct.clk_hw* %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.clk_hw*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.clk_frac*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.clk_hw* %0, %struct.clk_hw** %4, align 8
  store i64 %1, i64* %5, align 8
  %10 = load %struct.clk_hw*, %struct.clk_hw** %4, align 8
  %11 = call %struct.clk_frac* @to_clk_frac(%struct.clk_hw* %10)
  store %struct.clk_frac* %11, %struct.clk_frac** %6, align 8
  store i64 0, i64* %7, align 8
  store i32 1, i32* %8, align 4
  %12 = load %struct.clk_frac*, %struct.clk_frac** %6, align 8
  %13 = getelementptr inbounds %struct.clk_frac, %struct.clk_frac* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %22

16:                                               ; preds = %2
  %17 = load %struct.clk_frac*, %struct.clk_frac** %6, align 8
  %18 = getelementptr inbounds %struct.clk_frac, %struct.clk_frac* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* %7, align 8
  %21 = call i32 @spin_lock_irqsave(i64 %19, i64 %20)
  br label %22

22:                                               ; preds = %16, %2
  %23 = load %struct.clk_frac*, %struct.clk_frac** %6, align 8
  %24 = getelementptr inbounds %struct.clk_frac, %struct.clk_frac* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = call i32 @readl_relaxed(i32 %25)
  store i32 %26, i32* %9, align 4
  %27 = load %struct.clk_frac*, %struct.clk_frac** %6, align 8
  %28 = getelementptr inbounds %struct.clk_frac, %struct.clk_frac* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %37

31:                                               ; preds = %22
  %32 = load %struct.clk_frac*, %struct.clk_frac** %6, align 8
  %33 = getelementptr inbounds %struct.clk_frac, %struct.clk_frac* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* %7, align 8
  %36 = call i32 @spin_unlock_irqrestore(i64 %34, i64 %35)
  br label %37

37:                                               ; preds = %31, %22
  %38 = load i32, i32* %9, align 4
  %39 = load i32, i32* @DIV_FACTOR_MASK, align 4
  %40 = and i32 %38, %39
  store i32 %40, i32* %8, align 4
  %41 = load i32, i32* %8, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %44, label %43

43:                                               ; preds = %37
  store i64 0, i64* %3, align 8
  br label %55

44:                                               ; preds = %37
  %45 = load i64, i64* %5, align 8
  %46 = udiv i64 %45, 10000
  store i64 %46, i64* %5, align 8
  %47 = load i64, i64* %5, align 8
  %48 = shl i64 %47, 14
  %49 = load i32, i32* %8, align 4
  %50 = mul i32 2, %49
  %51 = zext i32 %50 to i64
  %52 = udiv i64 %48, %51
  store i64 %52, i64* %5, align 8
  %53 = load i64, i64* %5, align 8
  %54 = mul i64 %53, 10000
  store i64 %54, i64* %3, align 8
  br label %55

55:                                               ; preds = %44, %43
  %56 = load i64, i64* %3, align 8
  ret i64 %56
}

declare dso_local %struct.clk_frac* @to_clk_frac(%struct.clk_hw*) #1

declare dso_local i32 @spin_lock_irqsave(i64, i64) #1

declare dso_local i32 @readl_relaxed(i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
