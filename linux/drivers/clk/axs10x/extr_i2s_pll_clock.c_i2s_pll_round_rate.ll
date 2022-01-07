; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/axs10x/extr_i2s_pll_clock.c_i2s_pll_round_rate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/axs10x/extr_i2s_pll_clock.c_i2s_pll_round_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_hw = type { i32 }
%struct.i2s_pll_clk = type { i32 }
%struct.i2s_pll_cfg = type { i64 }

@.str = private unnamed_addr constant [25 x i8] c"invalid parent rate=%ld\0A\00", align 1
@EINVAL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.clk_hw*, i64, i64*)* @i2s_pll_round_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @i2s_pll_round_rate(%struct.clk_hw* %0, i64 %1, i64* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.clk_hw*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64*, align 8
  %8 = alloca %struct.i2s_pll_clk*, align 8
  %9 = alloca %struct.i2s_pll_cfg*, align 8
  %10 = alloca i32, align 4
  store %struct.clk_hw* %0, %struct.clk_hw** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64* %2, i64** %7, align 8
  %11 = load %struct.clk_hw*, %struct.clk_hw** %5, align 8
  %12 = call %struct.i2s_pll_clk* @to_i2s_pll_clk(%struct.clk_hw* %11)
  store %struct.i2s_pll_clk* %12, %struct.i2s_pll_clk** %8, align 8
  %13 = load i64*, i64** %7, align 8
  %14 = load i64, i64* %13, align 8
  %15 = call %struct.i2s_pll_cfg* @i2s_pll_get_cfg(i64 %14)
  store %struct.i2s_pll_cfg* %15, %struct.i2s_pll_cfg** %9, align 8
  %16 = load %struct.i2s_pll_cfg*, %struct.i2s_pll_cfg** %9, align 8
  %17 = icmp ne %struct.i2s_pll_cfg* %16, null
  br i1 %17, label %27, label %18

18:                                               ; preds = %3
  %19 = load %struct.i2s_pll_clk*, %struct.i2s_pll_clk** %8, align 8
  %20 = getelementptr inbounds %struct.i2s_pll_clk, %struct.i2s_pll_clk* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i64*, i64** %7, align 8
  %23 = load i64, i64* %22, align 8
  %24 = call i32 @dev_err(i32 %21, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i64 %23)
  %25 = load i64, i64* @EINVAL, align 8
  %26 = sub nsw i64 0, %25
  store i64 %26, i64* %4, align 8
  br label %54

27:                                               ; preds = %3
  store i32 0, i32* %10, align 4
  br label %28

28:                                               ; preds = %48, %27
  %29 = load %struct.i2s_pll_cfg*, %struct.i2s_pll_cfg** %9, align 8
  %30 = load i32, i32* %10, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.i2s_pll_cfg, %struct.i2s_pll_cfg* %29, i64 %31
  %33 = getelementptr inbounds %struct.i2s_pll_cfg, %struct.i2s_pll_cfg* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %51

36:                                               ; preds = %28
  %37 = load %struct.i2s_pll_cfg*, %struct.i2s_pll_cfg** %9, align 8
  %38 = load i32, i32* %10, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.i2s_pll_cfg, %struct.i2s_pll_cfg* %37, i64 %39
  %41 = getelementptr inbounds %struct.i2s_pll_cfg, %struct.i2s_pll_cfg* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* %6, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %45, label %47

45:                                               ; preds = %36
  %46 = load i64, i64* %6, align 8
  store i64 %46, i64* %4, align 8
  br label %54

47:                                               ; preds = %36
  br label %48

48:                                               ; preds = %47
  %49 = load i32, i32* %10, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %10, align 4
  br label %28

51:                                               ; preds = %28
  %52 = load i64, i64* @EINVAL, align 8
  %53 = sub nsw i64 0, %52
  store i64 %53, i64* %4, align 8
  br label %54

54:                                               ; preds = %51, %45, %18
  %55 = load i64, i64* %4, align 8
  ret i64 %55
}

declare dso_local %struct.i2s_pll_clk* @to_i2s_pll_clk(%struct.clk_hw*) #1

declare dso_local %struct.i2s_pll_cfg* @i2s_pll_get_cfg(i64) #1

declare dso_local i32 @dev_err(i32, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
