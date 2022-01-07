; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/mmp/extr_clk-frac.c_clk_factor_recalc_rate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/mmp/extr_clk-frac.c_clk_factor_recalc_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_hw = type { i32 }
%struct.mmp_clk_factor = type { %struct.mmp_clk_factor_masks*, i32 }
%struct.mmp_clk_factor_masks = type { i32, i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.clk_hw*, i64)* @clk_factor_recalc_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @clk_factor_recalc_rate(%struct.clk_hw* %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.clk_hw*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.mmp_clk_factor*, align 8
  %7 = alloca %struct.mmp_clk_factor_masks*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.clk_hw* %0, %struct.clk_hw** %4, align 8
  store i64 %1, i64* %5, align 8
  %11 = load %struct.clk_hw*, %struct.clk_hw** %4, align 8
  %12 = call %struct.mmp_clk_factor* @to_clk_factor(%struct.clk_hw* %11)
  store %struct.mmp_clk_factor* %12, %struct.mmp_clk_factor** %6, align 8
  %13 = load %struct.mmp_clk_factor*, %struct.mmp_clk_factor** %6, align 8
  %14 = getelementptr inbounds %struct.mmp_clk_factor, %struct.mmp_clk_factor* %13, i32 0, i32 0
  %15 = load %struct.mmp_clk_factor_masks*, %struct.mmp_clk_factor_masks** %14, align 8
  store %struct.mmp_clk_factor_masks* %15, %struct.mmp_clk_factor_masks** %7, align 8
  %16 = load %struct.mmp_clk_factor*, %struct.mmp_clk_factor** %6, align 8
  %17 = getelementptr inbounds %struct.mmp_clk_factor, %struct.mmp_clk_factor* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 8
  %19 = call i32 @readl_relaxed(i32 %18)
  store i32 %19, i32* %8, align 4
  %20 = load i32, i32* %8, align 4
  %21 = load %struct.mmp_clk_factor_masks*, %struct.mmp_clk_factor_masks** %7, align 8
  %22 = getelementptr inbounds %struct.mmp_clk_factor_masks, %struct.mmp_clk_factor_masks* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = lshr i32 %20, %23
  %25 = load %struct.mmp_clk_factor_masks*, %struct.mmp_clk_factor_masks** %7, align 8
  %26 = getelementptr inbounds %struct.mmp_clk_factor_masks, %struct.mmp_clk_factor_masks* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = and i32 %24, %27
  store i32 %28, i32* %9, align 4
  %29 = load i32, i32* %8, align 4
  %30 = load %struct.mmp_clk_factor_masks*, %struct.mmp_clk_factor_masks** %7, align 8
  %31 = getelementptr inbounds %struct.mmp_clk_factor_masks, %struct.mmp_clk_factor_masks* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 4
  %33 = lshr i32 %29, %32
  %34 = load %struct.mmp_clk_factor_masks*, %struct.mmp_clk_factor_masks** %7, align 8
  %35 = getelementptr inbounds %struct.mmp_clk_factor_masks, %struct.mmp_clk_factor_masks* %34, i32 0, i32 3
  %36 = load i32, i32* %35, align 4
  %37 = and i32 %33, %36
  store i32 %37, i32* %10, align 4
  %38 = load i32, i32* %10, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %41, label %40

40:                                               ; preds = %2
  store i64 0, i64* %3, align 8
  br label %57

41:                                               ; preds = %2
  %42 = load i64, i64* %5, align 8
  %43 = udiv i64 %42, 10000
  %44 = load i32, i32* %10, align 4
  %45 = zext i32 %44 to i64
  %46 = mul i64 %43, %45
  %47 = load i32, i32* %9, align 4
  %48 = load %struct.mmp_clk_factor*, %struct.mmp_clk_factor** %6, align 8
  %49 = getelementptr inbounds %struct.mmp_clk_factor, %struct.mmp_clk_factor* %48, i32 0, i32 0
  %50 = load %struct.mmp_clk_factor_masks*, %struct.mmp_clk_factor_masks** %49, align 8
  %51 = getelementptr inbounds %struct.mmp_clk_factor_masks, %struct.mmp_clk_factor_masks* %50, i32 0, i32 4
  %52 = load i32, i32* %51, align 4
  %53 = mul i32 %47, %52
  %54 = zext i32 %53 to i64
  %55 = udiv i64 %46, %54
  %56 = mul i64 %55, 10000
  store i64 %56, i64* %3, align 8
  br label %57

57:                                               ; preds = %41, %40
  %58 = load i64, i64* %3, align 8
  ret i64 %58
}

declare dso_local %struct.mmp_clk_factor* @to_clk_factor(%struct.clk_hw*) #1

declare dso_local i32 @readl_relaxed(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
