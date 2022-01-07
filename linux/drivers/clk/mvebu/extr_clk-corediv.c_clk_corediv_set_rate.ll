; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/mvebu/extr_clk-corediv.c_clk_corediv_set_rate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/mvebu/extr_clk-corediv.c_clk_corediv_set_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_hw = type { i32 }
%struct.clk_corediv = type { i32, i64, %struct.clk_corediv_desc*, %struct.clk_corediv_soc_desc* }
%struct.clk_corediv_desc = type { i32, i32, i32 }
%struct.clk_corediv_soc_desc = type { i32, i64 }

@CORE_CLK_DIV_RATIO_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.clk_hw*, i64, i64)* @clk_corediv_set_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @clk_corediv_set_rate(%struct.clk_hw* %0, i64 %1, i64 %2) #0 {
  %4 = alloca %struct.clk_hw*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.clk_corediv*, align 8
  %8 = alloca %struct.clk_corediv_soc_desc*, align 8
  %9 = alloca %struct.clk_corediv_desc*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.clk_hw* %0, %struct.clk_hw** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  %13 = load %struct.clk_hw*, %struct.clk_hw** %4, align 8
  %14 = call %struct.clk_corediv* @to_corediv_clk(%struct.clk_hw* %13)
  store %struct.clk_corediv* %14, %struct.clk_corediv** %7, align 8
  %15 = load %struct.clk_corediv*, %struct.clk_corediv** %7, align 8
  %16 = getelementptr inbounds %struct.clk_corediv, %struct.clk_corediv* %15, i32 0, i32 3
  %17 = load %struct.clk_corediv_soc_desc*, %struct.clk_corediv_soc_desc** %16, align 8
  store %struct.clk_corediv_soc_desc* %17, %struct.clk_corediv_soc_desc** %8, align 8
  %18 = load %struct.clk_corediv*, %struct.clk_corediv** %7, align 8
  %19 = getelementptr inbounds %struct.clk_corediv, %struct.clk_corediv* %18, i32 0, i32 2
  %20 = load %struct.clk_corediv_desc*, %struct.clk_corediv_desc** %19, align 8
  store %struct.clk_corediv_desc* %20, %struct.clk_corediv_desc** %9, align 8
  store i64 0, i64* %10, align 8
  %21 = load i64, i64* %6, align 8
  %22 = load i64, i64* %5, align 8
  %23 = udiv i64 %21, %22
  %24 = trunc i64 %23 to i32
  store i32 %24, i32* %12, align 4
  %25 = load %struct.clk_corediv*, %struct.clk_corediv** %7, align 8
  %26 = getelementptr inbounds %struct.clk_corediv, %struct.clk_corediv* %25, i32 0, i32 0
  %27 = load i64, i64* %10, align 8
  %28 = call i32 @spin_lock_irqsave(i32* %26, i64 %27)
  %29 = load %struct.clk_corediv*, %struct.clk_corediv** %7, align 8
  %30 = getelementptr inbounds %struct.clk_corediv, %struct.clk_corediv* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = load %struct.clk_corediv_soc_desc*, %struct.clk_corediv_soc_desc** %8, align 8
  %33 = getelementptr inbounds %struct.clk_corediv_soc_desc, %struct.clk_corediv_soc_desc* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = add nsw i64 %31, %34
  %36 = call i32 @readl(i64 %35)
  store i32 %36, i32* %11, align 4
  %37 = load %struct.clk_corediv_desc*, %struct.clk_corediv_desc** %9, align 8
  %38 = getelementptr inbounds %struct.clk_corediv_desc, %struct.clk_corediv_desc* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.clk_corediv_desc*, %struct.clk_corediv_desc** %9, align 8
  %41 = getelementptr inbounds %struct.clk_corediv_desc, %struct.clk_corediv_desc* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = shl i32 %39, %42
  %44 = xor i32 %43, -1
  %45 = load i32, i32* %11, align 4
  %46 = and i32 %45, %44
  store i32 %46, i32* %11, align 4
  %47 = load i32, i32* %12, align 4
  %48 = load %struct.clk_corediv_desc*, %struct.clk_corediv_desc** %9, align 8
  %49 = getelementptr inbounds %struct.clk_corediv_desc, %struct.clk_corediv_desc* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = and i32 %47, %50
  %52 = load %struct.clk_corediv_desc*, %struct.clk_corediv_desc** %9, align 8
  %53 = getelementptr inbounds %struct.clk_corediv_desc, %struct.clk_corediv_desc* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = shl i32 %51, %54
  %56 = load i32, i32* %11, align 4
  %57 = or i32 %56, %55
  store i32 %57, i32* %11, align 4
  %58 = load i32, i32* %11, align 4
  %59 = load %struct.clk_corediv*, %struct.clk_corediv** %7, align 8
  %60 = getelementptr inbounds %struct.clk_corediv, %struct.clk_corediv* %59, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  %62 = load %struct.clk_corediv_soc_desc*, %struct.clk_corediv_soc_desc** %8, align 8
  %63 = getelementptr inbounds %struct.clk_corediv_soc_desc, %struct.clk_corediv_soc_desc* %62, i32 0, i32 1
  %64 = load i64, i64* %63, align 8
  %65 = add nsw i64 %61, %64
  %66 = call i32 @writel(i32 %58, i64 %65)
  %67 = load %struct.clk_corediv*, %struct.clk_corediv** %7, align 8
  %68 = getelementptr inbounds %struct.clk_corediv, %struct.clk_corediv* %67, i32 0, i32 1
  %69 = load i64, i64* %68, align 8
  %70 = call i32 @readl(i64 %69)
  %71 = load %struct.clk_corediv_desc*, %struct.clk_corediv_desc** %9, align 8
  %72 = getelementptr inbounds %struct.clk_corediv_desc, %struct.clk_corediv_desc* %71, i32 0, i32 2
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @BIT(i32 %73)
  %75 = or i32 %70, %74
  store i32 %75, i32* %11, align 4
  %76 = load i32, i32* %11, align 4
  %77 = load %struct.clk_corediv*, %struct.clk_corediv** %7, align 8
  %78 = getelementptr inbounds %struct.clk_corediv, %struct.clk_corediv* %77, i32 0, i32 1
  %79 = load i64, i64* %78, align 8
  %80 = call i32 @writel(i32 %76, i64 %79)
  %81 = load %struct.clk_corediv*, %struct.clk_corediv** %7, align 8
  %82 = getelementptr inbounds %struct.clk_corediv, %struct.clk_corediv* %81, i32 0, i32 1
  %83 = load i64, i64* %82, align 8
  %84 = call i32 @readl(i64 %83)
  %85 = load %struct.clk_corediv_soc_desc*, %struct.clk_corediv_soc_desc** %8, align 8
  %86 = getelementptr inbounds %struct.clk_corediv_soc_desc, %struct.clk_corediv_soc_desc* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = or i32 %84, %87
  store i32 %88, i32* %11, align 4
  %89 = load i32, i32* %11, align 4
  %90 = load %struct.clk_corediv*, %struct.clk_corediv** %7, align 8
  %91 = getelementptr inbounds %struct.clk_corediv, %struct.clk_corediv* %90, i32 0, i32 1
  %92 = load i64, i64* %91, align 8
  %93 = call i32 @writel(i32 %89, i64 %92)
  %94 = call i32 @udelay(i32 1000)
  %95 = load i32, i32* @CORE_CLK_DIV_RATIO_MASK, align 4
  %96 = load %struct.clk_corediv_soc_desc*, %struct.clk_corediv_soc_desc** %8, align 8
  %97 = getelementptr inbounds %struct.clk_corediv_soc_desc, %struct.clk_corediv_soc_desc* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = or i32 %95, %98
  %100 = xor i32 %99, -1
  %101 = load i32, i32* %11, align 4
  %102 = and i32 %101, %100
  store i32 %102, i32* %11, align 4
  %103 = load i32, i32* %11, align 4
  %104 = load %struct.clk_corediv*, %struct.clk_corediv** %7, align 8
  %105 = getelementptr inbounds %struct.clk_corediv, %struct.clk_corediv* %104, i32 0, i32 1
  %106 = load i64, i64* %105, align 8
  %107 = call i32 @writel(i32 %103, i64 %106)
  %108 = call i32 @udelay(i32 1000)
  %109 = load %struct.clk_corediv*, %struct.clk_corediv** %7, align 8
  %110 = getelementptr inbounds %struct.clk_corediv, %struct.clk_corediv* %109, i32 0, i32 0
  %111 = load i64, i64* %10, align 8
  %112 = call i32 @spin_unlock_irqrestore(i32* %110, i64 %111)
  ret i32 0
}

declare dso_local %struct.clk_corediv* @to_corediv_clk(%struct.clk_hw*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
