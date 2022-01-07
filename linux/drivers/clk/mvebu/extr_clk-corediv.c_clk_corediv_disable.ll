; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/mvebu/extr_clk-corediv.c_clk_corediv_disable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/mvebu/extr_clk-corediv.c_clk_corediv_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_hw = type { i32 }
%struct.clk_corediv = type { i32, i32, %struct.clk_corediv_desc*, %struct.clk_corediv_soc_desc* }
%struct.clk_corediv_desc = type { i32 }
%struct.clk_corediv_soc_desc = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.clk_hw*)* @clk_corediv_disable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @clk_corediv_disable(%struct.clk_hw* %0) #0 {
  %2 = alloca %struct.clk_hw*, align 8
  %3 = alloca %struct.clk_corediv*, align 8
  %4 = alloca %struct.clk_corediv_soc_desc*, align 8
  %5 = alloca %struct.clk_corediv_desc*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.clk_hw* %0, %struct.clk_hw** %2, align 8
  %8 = load %struct.clk_hw*, %struct.clk_hw** %2, align 8
  %9 = call %struct.clk_corediv* @to_corediv_clk(%struct.clk_hw* %8)
  store %struct.clk_corediv* %9, %struct.clk_corediv** %3, align 8
  %10 = load %struct.clk_corediv*, %struct.clk_corediv** %3, align 8
  %11 = getelementptr inbounds %struct.clk_corediv, %struct.clk_corediv* %10, i32 0, i32 3
  %12 = load %struct.clk_corediv_soc_desc*, %struct.clk_corediv_soc_desc** %11, align 8
  store %struct.clk_corediv_soc_desc* %12, %struct.clk_corediv_soc_desc** %4, align 8
  %13 = load %struct.clk_corediv*, %struct.clk_corediv** %3, align 8
  %14 = getelementptr inbounds %struct.clk_corediv, %struct.clk_corediv* %13, i32 0, i32 2
  %15 = load %struct.clk_corediv_desc*, %struct.clk_corediv_desc** %14, align 8
  store %struct.clk_corediv_desc* %15, %struct.clk_corediv_desc** %5, align 8
  store i64 0, i64* %6, align 8
  %16 = load %struct.clk_corediv*, %struct.clk_corediv** %3, align 8
  %17 = getelementptr inbounds %struct.clk_corediv, %struct.clk_corediv* %16, i32 0, i32 0
  %18 = load i64, i64* %6, align 8
  %19 = call i32 @spin_lock_irqsave(i32* %17, i64 %18)
  %20 = load %struct.clk_corediv*, %struct.clk_corediv** %3, align 8
  %21 = getelementptr inbounds %struct.clk_corediv, %struct.clk_corediv* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @readl(i32 %22)
  store i32 %23, i32* %7, align 4
  %24 = load %struct.clk_corediv_desc*, %struct.clk_corediv_desc** %5, align 8
  %25 = getelementptr inbounds %struct.clk_corediv_desc, %struct.clk_corediv_desc* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @BIT(i32 %26)
  %28 = load %struct.clk_corediv_soc_desc*, %struct.clk_corediv_soc_desc** %4, align 8
  %29 = getelementptr inbounds %struct.clk_corediv_soc_desc, %struct.clk_corediv_soc_desc* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = shl i32 %27, %30
  %32 = xor i32 %31, -1
  %33 = load i32, i32* %7, align 4
  %34 = and i32 %33, %32
  store i32 %34, i32* %7, align 4
  %35 = load i32, i32* %7, align 4
  %36 = load %struct.clk_corediv*, %struct.clk_corediv** %3, align 8
  %37 = getelementptr inbounds %struct.clk_corediv, %struct.clk_corediv* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @writel(i32 %35, i32 %38)
  %40 = load %struct.clk_corediv*, %struct.clk_corediv** %3, align 8
  %41 = getelementptr inbounds %struct.clk_corediv, %struct.clk_corediv* %40, i32 0, i32 0
  %42 = load i64, i64* %6, align 8
  %43 = call i32 @spin_unlock_irqrestore(i32* %41, i64 %42)
  ret void
}

declare dso_local %struct.clk_corediv* @to_corediv_clk(%struct.clk_hw*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @readl(i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @writel(i32, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
