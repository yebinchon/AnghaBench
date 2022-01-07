; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/extr_clk-nomadik.c_pll_clk_recalc_rate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/extr_clk-nomadik.c_pll_clk_recalc_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_hw = type { i32 }
%struct.clk_pll = type { i32 }

@src_base = common dso_local global i64 0, align 8
@SRC_PLLFR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.clk_hw*, i64)* @pll_clk_recalc_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @pll_clk_recalc_rate(%struct.clk_hw* %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.clk_hw*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.clk_pll*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.clk_hw* %0, %struct.clk_hw** %4, align 8
  store i64 %1, i64* %5, align 8
  %11 = load %struct.clk_hw*, %struct.clk_hw** %4, align 8
  %12 = call %struct.clk_pll* @to_pll(%struct.clk_hw* %11)
  store %struct.clk_pll* %12, %struct.clk_pll** %6, align 8
  %13 = load i64, i64* @src_base, align 8
  %14 = load i64, i64* @SRC_PLLFR, align 8
  %15 = add nsw i64 %13, %14
  %16 = call i32 @readl(i64 %15)
  store i32 %16, i32* %7, align 4
  %17 = load %struct.clk_pll*, %struct.clk_pll** %6, align 8
  %18 = getelementptr inbounds %struct.clk_pll, %struct.clk_pll* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = icmp eq i32 %19, 1
  br i1 %20, label %21, label %36

21:                                               ; preds = %2
  %22 = load i32, i32* %7, align 4
  %23 = ashr i32 %22, 8
  %24 = and i32 %23, 63
  store i32 %24, i32* %8, align 4
  %25 = load i32, i32* %8, align 4
  %26 = add nsw i32 %25, 2
  store i32 %26, i32* %8, align 4
  %27 = load i32, i32* %7, align 4
  %28 = and i32 %27, 7
  store i32 %28, i32* %9, align 4
  %29 = load i64, i64* %5, align 8
  %30 = load i32, i32* %8, align 4
  %31 = sext i32 %30 to i64
  %32 = mul i64 %29, %31
  %33 = load i32, i32* %9, align 4
  %34 = zext i32 %33 to i64
  %35 = lshr i64 %32, %34
  store i64 %35, i64* %3, align 8
  br label %52

36:                                               ; preds = %2
  %37 = load %struct.clk_pll*, %struct.clk_pll** %6, align 8
  %38 = getelementptr inbounds %struct.clk_pll, %struct.clk_pll* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = icmp eq i32 %39, 2
  br i1 %40, label %41, label %51

41:                                               ; preds = %36
  %42 = load i32, i32* %7, align 4
  %43 = ashr i32 %42, 24
  %44 = and i32 %43, 63
  store i32 %44, i32* %10, align 4
  %45 = load i32, i32* %10, align 4
  %46 = add nsw i32 %45, 2
  store i32 %46, i32* %10, align 4
  %47 = load i64, i64* %5, align 8
  %48 = load i32, i32* %10, align 4
  %49 = sext i32 %48 to i64
  %50 = mul i64 %47, %49
  store i64 %50, i64* %3, align 8
  br label %52

51:                                               ; preds = %36
  store i64 0, i64* %3, align 8
  br label %52

52:                                               ; preds = %51, %41, %21
  %53 = load i64, i64* %3, align 8
  ret i64 %53
}

declare dso_local %struct.clk_pll* @to_pll(%struct.clk_hw*) #1

declare dso_local i32 @readl(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
