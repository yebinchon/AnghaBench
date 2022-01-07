; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/imx/extr_clk-pllv4.c_clk_pllv4_set_rate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/imx/extr_clk-pllv4.c_clk_pllv4_set_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_hw = type { i32 }
%struct.clk_pllv4 = type { i64 }

@DEFAULT_MFD = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@MAX_MFD = common dso_local global i64 0, align 8
@PLL_CFG_OFFSET = common dso_local global i64 0, align 8
@BM_PLL_MULT = common dso_local global i64 0, align 8
@BP_PLL_MULT = common dso_local global i64 0, align 8
@PLL_NUM_OFFSET = common dso_local global i64 0, align 8
@PLL_DENOM_OFFSET = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.clk_hw*, i64, i64)* @clk_pllv4_set_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @clk_pllv4_set_rate(%struct.clk_hw* %0, i64 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.clk_hw*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.clk_pllv4*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  store %struct.clk_hw* %0, %struct.clk_hw** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  %14 = load %struct.clk_hw*, %struct.clk_hw** %5, align 8
  %15 = call %struct.clk_pllv4* @to_clk_pllv4(%struct.clk_hw* %14)
  store %struct.clk_pllv4* %15, %struct.clk_pllv4** %8, align 8
  %16 = load i64, i64* @DEFAULT_MFD, align 8
  store i64 %16, i64* %12, align 8
  %17 = load i64, i64* %6, align 8
  %18 = load i64, i64* %7, align 8
  %19 = udiv i64 %17, %18
  store i64 %19, i64* %10, align 8
  %20 = load i64, i64* %10, align 8
  %21 = call i32 @clk_pllv4_is_valid_mult(i64 %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %26, label %23

23:                                               ; preds = %3
  %24 = load i32, i32* @EINVAL, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %4, align 4
  br label %81

26:                                               ; preds = %3
  %27 = load i64, i64* %7, align 8
  %28 = load i64, i64* @MAX_MFD, align 8
  %29 = icmp ule i64 %27, %28
  br i1 %29, label %30, label %32

30:                                               ; preds = %26
  %31 = load i64, i64* %7, align 8
  store i64 %31, i64* %12, align 8
  br label %32

32:                                               ; preds = %30, %26
  %33 = load i64, i64* %6, align 8
  %34 = load i64, i64* %10, align 8
  %35 = load i64, i64* %7, align 8
  %36 = mul i64 %34, %35
  %37 = sub i64 %33, %36
  store i64 %37, i64* %13, align 8
  %38 = load i64, i64* %12, align 8
  %39 = load i64, i64* %13, align 8
  %40 = mul i64 %39, %38
  store i64 %40, i64* %13, align 8
  %41 = load i64, i64* %13, align 8
  %42 = load i64, i64* %7, align 8
  %43 = call i32 @do_div(i64 %41, i64 %42)
  %44 = load i64, i64* %13, align 8
  store i64 %44, i64* %11, align 8
  %45 = load %struct.clk_pllv4*, %struct.clk_pllv4** %8, align 8
  %46 = getelementptr inbounds %struct.clk_pllv4, %struct.clk_pllv4* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @PLL_CFG_OFFSET, align 8
  %49 = add nsw i64 %47, %48
  %50 = call i64 @readl_relaxed(i64 %49)
  store i64 %50, i64* %9, align 8
  %51 = load i64, i64* @BM_PLL_MULT, align 8
  %52 = xor i64 %51, -1
  %53 = load i64, i64* %9, align 8
  %54 = and i64 %53, %52
  store i64 %54, i64* %9, align 8
  %55 = load i64, i64* %10, align 8
  %56 = load i64, i64* @BP_PLL_MULT, align 8
  %57 = shl i64 %55, %56
  %58 = load i64, i64* %9, align 8
  %59 = or i64 %58, %57
  store i64 %59, i64* %9, align 8
  %60 = load i64, i64* %9, align 8
  %61 = load %struct.clk_pllv4*, %struct.clk_pllv4** %8, align 8
  %62 = getelementptr inbounds %struct.clk_pllv4, %struct.clk_pllv4* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* @PLL_CFG_OFFSET, align 8
  %65 = add nsw i64 %63, %64
  %66 = call i32 @writel_relaxed(i64 %60, i64 %65)
  %67 = load i64, i64* %11, align 8
  %68 = load %struct.clk_pllv4*, %struct.clk_pllv4** %8, align 8
  %69 = getelementptr inbounds %struct.clk_pllv4, %struct.clk_pllv4* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = load i64, i64* @PLL_NUM_OFFSET, align 8
  %72 = add nsw i64 %70, %71
  %73 = call i32 @writel_relaxed(i64 %67, i64 %72)
  %74 = load i64, i64* %12, align 8
  %75 = load %struct.clk_pllv4*, %struct.clk_pllv4** %8, align 8
  %76 = getelementptr inbounds %struct.clk_pllv4, %struct.clk_pllv4* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = load i64, i64* @PLL_DENOM_OFFSET, align 8
  %79 = add nsw i64 %77, %78
  %80 = call i32 @writel_relaxed(i64 %74, i64 %79)
  store i32 0, i32* %4, align 4
  br label %81

81:                                               ; preds = %32, %23
  %82 = load i32, i32* %4, align 4
  ret i32 %82
}

declare dso_local %struct.clk_pllv4* @to_clk_pllv4(%struct.clk_hw*) #1

declare dso_local i32 @clk_pllv4_is_valid_mult(i64) #1

declare dso_local i32 @do_div(i64, i64) #1

declare dso_local i64 @readl_relaxed(i64) #1

declare dso_local i32 @writel_relaxed(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
