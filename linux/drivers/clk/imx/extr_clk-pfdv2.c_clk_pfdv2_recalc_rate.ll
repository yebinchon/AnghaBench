; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/imx/extr_clk-pfdv2.c_clk_pfdv2_recalc_rate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/imx/extr_clk-pfdv2.c_clk_pfdv2_recalc_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_hw = type { i32 }
%struct.clk_pfdv2 = type { i32, i32 }

@CLK_PFDV2_FRAC_MASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"clk_pfdv2: %s invalid pfd frac value 0\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.clk_hw*, i64)* @clk_pfdv2_recalc_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @clk_pfdv2_recalc_rate(%struct.clk_hw* %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.clk_hw*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.clk_pfdv2*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.clk_hw* %0, %struct.clk_hw** %4, align 8
  store i64 %1, i64* %5, align 8
  %9 = load %struct.clk_hw*, %struct.clk_hw** %4, align 8
  %10 = call %struct.clk_pfdv2* @to_clk_pfdv2(%struct.clk_hw* %9)
  store %struct.clk_pfdv2* %10, %struct.clk_pfdv2** %6, align 8
  %11 = load i64, i64* %5, align 8
  %12 = trunc i64 %11 to i32
  store i32 %12, i32* %7, align 4
  %13 = load %struct.clk_pfdv2*, %struct.clk_pfdv2** %6, align 8
  %14 = getelementptr inbounds %struct.clk_pfdv2, %struct.clk_pfdv2* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @readl_relaxed(i32 %15)
  %17 = load %struct.clk_pfdv2*, %struct.clk_pfdv2** %6, align 8
  %18 = getelementptr inbounds %struct.clk_pfdv2, %struct.clk_pfdv2* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = ashr i32 %16, %19
  %21 = load i32, i32* @CLK_PFDV2_FRAC_MASK, align 4
  %22 = and i32 %20, %21
  store i32 %22, i32* %8, align 4
  %23 = load i32, i32* %8, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %29, label %25

25:                                               ; preds = %2
  %26 = load %struct.clk_hw*, %struct.clk_hw** %4, align 8
  %27 = call i32 @clk_hw_get_name(%struct.clk_hw* %26)
  %28 = call i32 @pr_debug(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %27)
  store i64 0, i64* %3, align 8
  br label %37

29:                                               ; preds = %2
  %30 = load i32, i32* %7, align 4
  %31 = mul nsw i32 %30, 18
  store i32 %31, i32* %7, align 4
  %32 = load i32, i32* %7, align 4
  %33 = load i32, i32* %8, align 4
  %34 = call i32 @do_div(i32 %32, i32 %33)
  %35 = load i32, i32* %7, align 4
  %36 = sext i32 %35 to i64
  store i64 %36, i64* %3, align 8
  br label %37

37:                                               ; preds = %29, %25
  %38 = load i64, i64* %3, align 8
  ret i64 %38
}

declare dso_local %struct.clk_pfdv2* @to_clk_pfdv2(%struct.clk_hw*) #1

declare dso_local i32 @readl_relaxed(i32) #1

declare dso_local i32 @pr_debug(i8*, i32) #1

declare dso_local i32 @clk_hw_get_name(%struct.clk_hw*) #1

declare dso_local i32 @do_div(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
