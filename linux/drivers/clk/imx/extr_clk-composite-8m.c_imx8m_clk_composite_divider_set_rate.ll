; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/imx/extr_clk-composite-8m.c_imx8m_clk_composite_divider_set_rate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/imx/extr_clk-composite-8m.c_imx8m_clk_composite_divider_set_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_hw = type { i32 }
%struct.clk_divider = type { i32, i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@PCG_DIV_WIDTH = common dso_local global i32 0, align 4
@PCG_DIV_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.clk_hw*, i64, i64)* @imx8m_clk_composite_divider_set_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @imx8m_clk_composite_divider_set_rate(%struct.clk_hw* %0, i64 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.clk_hw*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.clk_divider*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.clk_hw* %0, %struct.clk_hw** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  %14 = load %struct.clk_hw*, %struct.clk_hw** %5, align 8
  %15 = call %struct.clk_divider* @to_clk_divider(%struct.clk_hw* %14)
  store %struct.clk_divider* %15, %struct.clk_divider** %8, align 8
  store i64 0, i64* %9, align 8
  %16 = load i64, i64* %6, align 8
  %17 = load i64, i64* %7, align 8
  %18 = call i32 @imx8m_clk_composite_compute_dividers(i64 %16, i64 %17, i32* %10, i32* %11)
  store i32 %18, i32* %12, align 4
  %19 = load i32, i32* %12, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %3
  %22 = load i32, i32* @EINVAL, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %4, align 4
  br label %75

24:                                               ; preds = %3
  %25 = load %struct.clk_divider*, %struct.clk_divider** %8, align 8
  %26 = getelementptr inbounds %struct.clk_divider, %struct.clk_divider* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = load i64, i64* %9, align 8
  %29 = call i32 @spin_lock_irqsave(i32 %27, i64 %28)
  %30 = load %struct.clk_divider*, %struct.clk_divider** %8, align 8
  %31 = getelementptr inbounds %struct.clk_divider, %struct.clk_divider* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @readl(i32 %32)
  store i32 %33, i32* %13, align 4
  %34 = load %struct.clk_divider*, %struct.clk_divider** %8, align 8
  %35 = getelementptr inbounds %struct.clk_divider, %struct.clk_divider* %34, i32 0, i32 3
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @clk_div_mask(i32 %36)
  %38 = load %struct.clk_divider*, %struct.clk_divider** %8, align 8
  %39 = getelementptr inbounds %struct.clk_divider, %struct.clk_divider* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = shl i32 %37, %40
  %42 = load i32, i32* @PCG_DIV_WIDTH, align 4
  %43 = call i32 @clk_div_mask(i32 %42)
  %44 = load i32, i32* @PCG_DIV_SHIFT, align 4
  %45 = shl i32 %43, %44
  %46 = or i32 %41, %45
  %47 = xor i32 %46, -1
  %48 = load i32, i32* %13, align 4
  %49 = and i32 %48, %47
  store i32 %49, i32* %13, align 4
  %50 = load i32, i32* %10, align 4
  %51 = sub nsw i32 %50, 1
  %52 = load %struct.clk_divider*, %struct.clk_divider** %8, align 8
  %53 = getelementptr inbounds %struct.clk_divider, %struct.clk_divider* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = shl i32 %51, %54
  %56 = load i32, i32* %13, align 4
  %57 = or i32 %56, %55
  store i32 %57, i32* %13, align 4
  %58 = load i32, i32* %11, align 4
  %59 = sub nsw i32 %58, 1
  %60 = load i32, i32* @PCG_DIV_SHIFT, align 4
  %61 = shl i32 %59, %60
  %62 = load i32, i32* %13, align 4
  %63 = or i32 %62, %61
  store i32 %63, i32* %13, align 4
  %64 = load i32, i32* %13, align 4
  %65 = load %struct.clk_divider*, %struct.clk_divider** %8, align 8
  %66 = getelementptr inbounds %struct.clk_divider, %struct.clk_divider* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @writel(i32 %64, i32 %67)
  %69 = load %struct.clk_divider*, %struct.clk_divider** %8, align 8
  %70 = getelementptr inbounds %struct.clk_divider, %struct.clk_divider* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = load i64, i64* %9, align 8
  %73 = call i32 @spin_unlock_irqrestore(i32 %71, i64 %72)
  %74 = load i32, i32* %12, align 4
  store i32 %74, i32* %4, align 4
  br label %75

75:                                               ; preds = %24, %21
  %76 = load i32, i32* %4, align 4
  ret i32 %76
}

declare dso_local %struct.clk_divider* @to_clk_divider(%struct.clk_hw*) #1

declare dso_local i32 @imx8m_clk_composite_compute_dividers(i64, i64, i32*, i32*) #1

declare dso_local i32 @spin_lock_irqsave(i32, i64) #1

declare dso_local i32 @readl(i32) #1

declare dso_local i32 @clk_div_mask(i32) #1

declare dso_local i32 @writel(i32, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
