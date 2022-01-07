; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/axs10x/extr_pll_clock.c_axs10x_pll_set_rate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/axs10x/extr_pll_clock.c_axs10x_pll_set_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_hw = type { i32 }
%struct.axs10x_pll_clk = type { i32, i32, %struct.axs10x_pll_cfg* }
%struct.axs10x_pll_cfg = type { i64, i32, i32, i32 }

@PLL_REG_IDIV = common dso_local global i32 0, align 4
@PLL_REG_FBDIV = common dso_local global i32 0, align 4
@PLL_REG_ODIV = common dso_local global i32 0, align 4
@PLL_MAX_LOCK_TIME = common dso_local global i32 0, align 4
@PLL_LOCK = common dso_local global i32 0, align 4
@ETIMEDOUT = common dso_local global i32 0, align 4
@PLL_ERROR = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"invalid rate=%ld, parent_rate=%ld\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.clk_hw*, i64, i64)* @axs10x_pll_set_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @axs10x_pll_set_rate(%struct.clk_hw* %0, i64 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.clk_hw*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.axs10x_pll_clk*, align 8
  %10 = alloca %struct.axs10x_pll_cfg*, align 8
  store %struct.clk_hw* %0, %struct.clk_hw** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  %11 = load %struct.clk_hw*, %struct.clk_hw** %5, align 8
  %12 = call %struct.axs10x_pll_clk* @to_axs10x_pll_clk(%struct.clk_hw* %11)
  store %struct.axs10x_pll_clk* %12, %struct.axs10x_pll_clk** %9, align 8
  %13 = load %struct.axs10x_pll_clk*, %struct.axs10x_pll_clk** %9, align 8
  %14 = getelementptr inbounds %struct.axs10x_pll_clk, %struct.axs10x_pll_clk* %13, i32 0, i32 2
  %15 = load %struct.axs10x_pll_cfg*, %struct.axs10x_pll_cfg** %14, align 8
  store %struct.axs10x_pll_cfg* %15, %struct.axs10x_pll_cfg** %10, align 8
  store i32 0, i32* %8, align 4
  br label %16

16:                                               ; preds = %89, %3
  %17 = load %struct.axs10x_pll_cfg*, %struct.axs10x_pll_cfg** %10, align 8
  %18 = load i32, i32* %8, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds %struct.axs10x_pll_cfg, %struct.axs10x_pll_cfg* %17, i64 %19
  %21 = getelementptr inbounds %struct.axs10x_pll_cfg, %struct.axs10x_pll_cfg* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %92

24:                                               ; preds = %16
  %25 = load %struct.axs10x_pll_cfg*, %struct.axs10x_pll_cfg** %10, align 8
  %26 = load i32, i32* %8, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.axs10x_pll_cfg, %struct.axs10x_pll_cfg* %25, i64 %27
  %29 = getelementptr inbounds %struct.axs10x_pll_cfg, %struct.axs10x_pll_cfg* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* %6, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %88

33:                                               ; preds = %24
  %34 = load %struct.axs10x_pll_clk*, %struct.axs10x_pll_clk** %9, align 8
  %35 = load i32, i32* @PLL_REG_IDIV, align 4
  %36 = load %struct.axs10x_pll_cfg*, %struct.axs10x_pll_cfg** %10, align 8
  %37 = load i32, i32* %8, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.axs10x_pll_cfg, %struct.axs10x_pll_cfg* %36, i64 %38
  %40 = getelementptr inbounds %struct.axs10x_pll_cfg, %struct.axs10x_pll_cfg* %39, i32 0, i32 3
  %41 = load i32, i32* %40, align 8
  %42 = call i32 @axs10x_encode_div(i32 %41, i32 0)
  %43 = call i32 @axs10x_pll_write(%struct.axs10x_pll_clk* %34, i32 %35, i32 %42)
  %44 = load %struct.axs10x_pll_clk*, %struct.axs10x_pll_clk** %9, align 8
  %45 = load i32, i32* @PLL_REG_FBDIV, align 4
  %46 = load %struct.axs10x_pll_cfg*, %struct.axs10x_pll_cfg** %10, align 8
  %47 = load i32, i32* %8, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.axs10x_pll_cfg, %struct.axs10x_pll_cfg* %46, i64 %48
  %50 = getelementptr inbounds %struct.axs10x_pll_cfg, %struct.axs10x_pll_cfg* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @axs10x_encode_div(i32 %51, i32 0)
  %53 = call i32 @axs10x_pll_write(%struct.axs10x_pll_clk* %44, i32 %45, i32 %52)
  %54 = load %struct.axs10x_pll_clk*, %struct.axs10x_pll_clk** %9, align 8
  %55 = load i32, i32* @PLL_REG_ODIV, align 4
  %56 = load %struct.axs10x_pll_cfg*, %struct.axs10x_pll_cfg** %10, align 8
  %57 = load i32, i32* %8, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds %struct.axs10x_pll_cfg, %struct.axs10x_pll_cfg* %56, i64 %58
  %60 = getelementptr inbounds %struct.axs10x_pll_cfg, %struct.axs10x_pll_cfg* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 8
  %62 = call i32 @axs10x_encode_div(i32 %61, i32 1)
  %63 = call i32 @axs10x_pll_write(%struct.axs10x_pll_clk* %54, i32 %55, i32 %62)
  %64 = load i32, i32* @PLL_MAX_LOCK_TIME, align 4
  %65 = call i32 @udelay(i32 %64)
  %66 = load %struct.axs10x_pll_clk*, %struct.axs10x_pll_clk** %9, align 8
  %67 = getelementptr inbounds %struct.axs10x_pll_clk, %struct.axs10x_pll_clk* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @ioread32(i32 %68)
  %70 = load i32, i32* @PLL_LOCK, align 4
  %71 = and i32 %69, %70
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %76, label %73

73:                                               ; preds = %33
  %74 = load i32, i32* @ETIMEDOUT, align 4
  %75 = sub nsw i32 0, %74
  store i32 %75, i32* %4, align 4
  br label %101

76:                                               ; preds = %33
  %77 = load %struct.axs10x_pll_clk*, %struct.axs10x_pll_clk** %9, align 8
  %78 = getelementptr inbounds %struct.axs10x_pll_clk, %struct.axs10x_pll_clk* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @ioread32(i32 %79)
  %81 = load i32, i32* @PLL_ERROR, align 4
  %82 = and i32 %80, %81
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %87

84:                                               ; preds = %76
  %85 = load i32, i32* @EINVAL, align 4
  %86 = sub nsw i32 0, %85
  store i32 %86, i32* %4, align 4
  br label %101

87:                                               ; preds = %76
  store i32 0, i32* %4, align 4
  br label %101

88:                                               ; preds = %24
  br label %89

89:                                               ; preds = %88
  %90 = load i32, i32* %8, align 4
  %91 = add nsw i32 %90, 1
  store i32 %91, i32* %8, align 4
  br label %16

92:                                               ; preds = %16
  %93 = load %struct.axs10x_pll_clk*, %struct.axs10x_pll_clk** %9, align 8
  %94 = getelementptr inbounds %struct.axs10x_pll_clk, %struct.axs10x_pll_clk* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = load i64, i64* %6, align 8
  %97 = load i64, i64* %7, align 8
  %98 = call i32 @dev_err(i32 %95, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i64 %96, i64 %97)
  %99 = load i32, i32* @EINVAL, align 4
  %100 = sub nsw i32 0, %99
  store i32 %100, i32* %4, align 4
  br label %101

101:                                              ; preds = %92, %87, %84, %73
  %102 = load i32, i32* %4, align 4
  ret i32 %102
}

declare dso_local %struct.axs10x_pll_clk* @to_axs10x_pll_clk(%struct.clk_hw*) #1

declare dso_local i32 @axs10x_pll_write(%struct.axs10x_pll_clk*, i32, i32) #1

declare dso_local i32 @axs10x_encode_div(i32, i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @ioread32(i32) #1

declare dso_local i32 @dev_err(i32, i8*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
