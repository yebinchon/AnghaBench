; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/mvebu/extr_clk-cpu.c_clk_cpu_off_set_rate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/mvebu/extr_clk-cpu.c_clk_cpu_off_set_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_hw = type { i32 }
%struct.cpu_clk = type { i32, i64 }

@SYS_CTRL_CLK_DIVIDER_VALUE_OFFSET = common dso_local global i64 0, align 8
@SYS_CTRL_CLK_DIVIDER_MASK = common dso_local global i32 0, align 4
@SYS_CTRL_CLK_DIVIDER_CTRL_OFFSET = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.clk_hw*, i64, i64)* @clk_cpu_off_set_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @clk_cpu_off_set_rate(%struct.clk_hw* %0, i64 %1, i64 %2) #0 {
  %4 = alloca %struct.clk_hw*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.cpu_clk*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.clk_hw* %0, %struct.clk_hw** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  %11 = load %struct.clk_hw*, %struct.clk_hw** %4, align 8
  %12 = call %struct.cpu_clk* @to_cpu_clk(%struct.clk_hw* %11)
  store %struct.cpu_clk* %12, %struct.cpu_clk** %7, align 8
  %13 = load i64, i64* %6, align 8
  %14 = load i64, i64* %5, align 8
  %15 = udiv i64 %13, %14
  %16 = trunc i64 %15 to i32
  store i32 %16, i32* %9, align 4
  %17 = load %struct.cpu_clk*, %struct.cpu_clk** %7, align 8
  %18 = getelementptr inbounds %struct.cpu_clk, %struct.cpu_clk* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @SYS_CTRL_CLK_DIVIDER_VALUE_OFFSET, align 8
  %21 = add nsw i64 %19, %20
  %22 = call i32 @readl(i64 %21)
  %23 = load i32, i32* @SYS_CTRL_CLK_DIVIDER_MASK, align 4
  %24 = load %struct.cpu_clk*, %struct.cpu_clk** %7, align 8
  %25 = getelementptr inbounds %struct.cpu_clk, %struct.cpu_clk* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = mul nsw i32 %26, 8
  %28 = shl i32 %23, %27
  %29 = xor i32 %28, -1
  %30 = and i32 %22, %29
  %31 = load i32, i32* %9, align 4
  %32 = load %struct.cpu_clk*, %struct.cpu_clk** %7, align 8
  %33 = getelementptr inbounds %struct.cpu_clk, %struct.cpu_clk* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = mul nsw i32 %34, 8
  %36 = shl i32 %31, %35
  %37 = or i32 %30, %36
  store i32 %37, i32* %8, align 4
  %38 = load i32, i32* %8, align 4
  %39 = load %struct.cpu_clk*, %struct.cpu_clk** %7, align 8
  %40 = getelementptr inbounds %struct.cpu_clk, %struct.cpu_clk* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @SYS_CTRL_CLK_DIVIDER_VALUE_OFFSET, align 8
  %43 = add nsw i64 %41, %42
  %44 = call i32 @writel(i32 %38, i64 %43)
  %45 = load %struct.cpu_clk*, %struct.cpu_clk** %7, align 8
  %46 = getelementptr inbounds %struct.cpu_clk, %struct.cpu_clk* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = add nsw i32 20, %47
  %49 = shl i32 1, %48
  store i32 %49, i32* %10, align 4
  %50 = load %struct.cpu_clk*, %struct.cpu_clk** %7, align 8
  %51 = getelementptr inbounds %struct.cpu_clk, %struct.cpu_clk* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @SYS_CTRL_CLK_DIVIDER_CTRL_OFFSET, align 8
  %54 = add nsw i64 %52, %53
  %55 = call i32 @readl(i64 %54)
  %56 = load i32, i32* %10, align 4
  %57 = or i32 %55, %56
  store i32 %57, i32* %8, align 4
  %58 = load i32, i32* %8, align 4
  %59 = load %struct.cpu_clk*, %struct.cpu_clk** %7, align 8
  %60 = getelementptr inbounds %struct.cpu_clk, %struct.cpu_clk* %59, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* @SYS_CTRL_CLK_DIVIDER_CTRL_OFFSET, align 8
  %63 = add nsw i64 %61, %62
  %64 = call i32 @writel(i32 %58, i64 %63)
  %65 = load %struct.cpu_clk*, %struct.cpu_clk** %7, align 8
  %66 = getelementptr inbounds %struct.cpu_clk, %struct.cpu_clk* %65, i32 0, i32 1
  %67 = load i64, i64* %66, align 8
  %68 = load i64, i64* @SYS_CTRL_CLK_DIVIDER_CTRL_OFFSET, align 8
  %69 = add nsw i64 %67, %68
  %70 = call i32 @readl(i64 %69)
  %71 = or i32 %70, 16777216
  store i32 %71, i32* %8, align 4
  %72 = load i32, i32* %8, align 4
  %73 = load %struct.cpu_clk*, %struct.cpu_clk** %7, align 8
  %74 = getelementptr inbounds %struct.cpu_clk, %struct.cpu_clk* %73, i32 0, i32 1
  %75 = load i64, i64* %74, align 8
  %76 = load i64, i64* @SYS_CTRL_CLK_DIVIDER_CTRL_OFFSET, align 8
  %77 = add nsw i64 %75, %76
  %78 = call i32 @writel(i32 %72, i64 %77)
  %79 = call i32 @udelay(i32 1000)
  %80 = load i32, i32* %10, align 4
  %81 = or i32 %80, 16777216
  %82 = xor i32 %81, -1
  %83 = load i32, i32* %8, align 4
  %84 = and i32 %83, %82
  store i32 %84, i32* %8, align 4
  %85 = load i32, i32* %8, align 4
  %86 = load %struct.cpu_clk*, %struct.cpu_clk** %7, align 8
  %87 = getelementptr inbounds %struct.cpu_clk, %struct.cpu_clk* %86, i32 0, i32 1
  %88 = load i64, i64* %87, align 8
  %89 = load i64, i64* @SYS_CTRL_CLK_DIVIDER_CTRL_OFFSET, align 8
  %90 = add nsw i64 %88, %89
  %91 = call i32 @writel(i32 %85, i64 %90)
  %92 = call i32 @udelay(i32 1000)
  ret i32 0
}

declare dso_local %struct.cpu_clk* @to_cpu_clk(%struct.clk_hw*) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @udelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
