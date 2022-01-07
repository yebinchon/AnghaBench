; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/mvebu/extr_clk-cpu.c_clk_cpu_on_set_rate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/mvebu/extr_clk-cpu.c_clk_cpu_on_set_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_hw = type { i32 }
%struct.cpu_clk = type { i32, i64, i64 }

@ENODEV = common dso_local global i32 0, align 4
@SYS_CTRL_CLK_DIVIDER_CTRL2_OFFSET = common dso_local global i64 0, align 8
@SYS_CTRL_CLK_DIVIDER_CTRL2_NBCLK_RATIO_SHIFT = common dso_local global i64 0, align 8
@SYS_CTRL_CLK_DIVIDER_MASK = common dso_local global i64 0, align 8
@PMU_DFS_RATIO_MASK = common dso_local global i64 0, align 8
@PMU_DFS_RATIO_SHIFT = common dso_local global i64 0, align 8
@SYS_CTRL_CLK_DIVIDER_CTRL_OFFSET = common dso_local global i64 0, align 8
@SYS_CTRL_CLK_DIVIDER_CTRL_RESET_ALL = common dso_local global i64 0, align 8
@SYS_CTRL_CLK_DIVIDER_CTRL_RESET_SHIFT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.clk_hw*, i64, i64)* @clk_cpu_on_set_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @clk_cpu_on_set_rate(%struct.clk_hw* %0, i64 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.clk_hw*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.cpu_clk*, align 8
  store %struct.clk_hw* %0, %struct.clk_hw** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  %13 = load %struct.clk_hw*, %struct.clk_hw** %5, align 8
  %14 = call %struct.cpu_clk* @to_cpu_clk(%struct.clk_hw* %13)
  store %struct.cpu_clk* %14, %struct.cpu_clk** %12, align 8
  %15 = load %struct.cpu_clk*, %struct.cpu_clk** %12, align 8
  %16 = getelementptr inbounds %struct.cpu_clk, %struct.cpu_clk* %15, i32 0, i32 2
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %22, label %19

19:                                               ; preds = %3
  %20 = load i32, i32* @ENODEV, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %4, align 4
  br label %92

22:                                               ; preds = %3
  %23 = load %struct.clk_hw*, %struct.clk_hw** %5, align 8
  %24 = call i64 @clk_hw_get_rate(%struct.clk_hw* %23)
  store i64 %24, i64* %11, align 8
  %25 = load %struct.cpu_clk*, %struct.cpu_clk** %12, align 8
  %26 = getelementptr inbounds %struct.cpu_clk, %struct.cpu_clk* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @SYS_CTRL_CLK_DIVIDER_CTRL2_OFFSET, align 8
  %29 = add nsw i64 %27, %28
  %30 = call i64 @readl(i64 %29)
  store i64 %30, i64* %8, align 8
  %31 = load i64, i64* %8, align 8
  %32 = load i64, i64* @SYS_CTRL_CLK_DIVIDER_CTRL2_NBCLK_RATIO_SHIFT, align 8
  %33 = lshr i64 %31, %32
  %34 = load i64, i64* @SYS_CTRL_CLK_DIVIDER_MASK, align 8
  %35 = and i64 %33, %34
  store i64 %35, i64* %9, align 8
  %36 = load i64, i64* %6, align 8
  %37 = load i64, i64* %11, align 8
  %38 = mul i64 2, %37
  %39 = icmp eq i64 %36, %38
  br i1 %39, label %40, label %43

40:                                               ; preds = %22
  %41 = load i64, i64* %9, align 8
  %42 = udiv i64 %41, 2
  store i64 %42, i64* %10, align 8
  br label %45

43:                                               ; preds = %22
  %44 = load i64, i64* %9, align 8
  store i64 %44, i64* %10, align 8
  br label %45

45:                                               ; preds = %43, %40
  %46 = load i64, i64* %10, align 8
  %47 = icmp eq i64 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %45
  store i64 1, i64* %10, align 8
  br label %49

49:                                               ; preds = %48, %45
  %50 = load %struct.cpu_clk*, %struct.cpu_clk** %12, align 8
  %51 = getelementptr inbounds %struct.cpu_clk, %struct.cpu_clk* %50, i32 0, i32 2
  %52 = load i64, i64* %51, align 8
  %53 = call i64 @readl(i64 %52)
  store i64 %53, i64* %8, align 8
  %54 = load i64, i64* @PMU_DFS_RATIO_MASK, align 8
  %55 = load i64, i64* @PMU_DFS_RATIO_SHIFT, align 8
  %56 = shl i64 %54, %55
  %57 = xor i64 %56, -1
  %58 = load i64, i64* %8, align 8
  %59 = and i64 %58, %57
  store i64 %59, i64* %8, align 8
  %60 = load i64, i64* %10, align 8
  %61 = load i64, i64* @PMU_DFS_RATIO_SHIFT, align 8
  %62 = shl i64 %60, %61
  %63 = load i64, i64* %8, align 8
  %64 = or i64 %63, %62
  store i64 %64, i64* %8, align 8
  %65 = load i64, i64* %8, align 8
  %66 = load %struct.cpu_clk*, %struct.cpu_clk** %12, align 8
  %67 = getelementptr inbounds %struct.cpu_clk, %struct.cpu_clk* %66, i32 0, i32 2
  %68 = load i64, i64* %67, align 8
  %69 = call i32 @writel(i64 %65, i64 %68)
  %70 = load %struct.cpu_clk*, %struct.cpu_clk** %12, align 8
  %71 = getelementptr inbounds %struct.cpu_clk, %struct.cpu_clk* %70, i32 0, i32 1
  %72 = load i64, i64* %71, align 8
  %73 = load i64, i64* @SYS_CTRL_CLK_DIVIDER_CTRL_OFFSET, align 8
  %74 = add nsw i64 %72, %73
  %75 = call i64 @readl(i64 %74)
  store i64 %75, i64* %8, align 8
  %76 = load i64, i64* @SYS_CTRL_CLK_DIVIDER_CTRL_RESET_ALL, align 8
  %77 = load i64, i64* @SYS_CTRL_CLK_DIVIDER_CTRL_RESET_SHIFT, align 8
  %78 = shl i64 %76, %77
  %79 = load i64, i64* %8, align 8
  %80 = or i64 %79, %78
  store i64 %80, i64* %8, align 8
  %81 = load i64, i64* %8, align 8
  %82 = load %struct.cpu_clk*, %struct.cpu_clk** %12, align 8
  %83 = getelementptr inbounds %struct.cpu_clk, %struct.cpu_clk* %82, i32 0, i32 1
  %84 = load i64, i64* %83, align 8
  %85 = load i64, i64* @SYS_CTRL_CLK_DIVIDER_CTRL_OFFSET, align 8
  %86 = add nsw i64 %84, %85
  %87 = call i32 @writel(i64 %81, i64 %86)
  %88 = load %struct.cpu_clk*, %struct.cpu_clk** %12, align 8
  %89 = getelementptr inbounds %struct.cpu_clk, %struct.cpu_clk* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = call i32 @mvebu_pmsu_dfs_request(i32 %90)
  store i32 %91, i32* %4, align 4
  br label %92

92:                                               ; preds = %49, %19
  %93 = load i32, i32* %4, align 4
  ret i32 %93
}

declare dso_local %struct.cpu_clk* @to_cpu_clk(%struct.clk_hw*) #1

declare dso_local i64 @clk_hw_get_rate(%struct.clk_hw*) #1

declare dso_local i64 @readl(i64) #1

declare dso_local i32 @writel(i64, i64) #1

declare dso_local i32 @mvebu_pmsu_dfs_request(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
