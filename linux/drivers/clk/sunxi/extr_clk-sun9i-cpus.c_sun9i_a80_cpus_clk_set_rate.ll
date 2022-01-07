; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/sunxi/extr_clk-sun9i-cpus.c_sun9i_a80_cpus_clk_set_rate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/sunxi/extr_clk-sun9i-cpus.c_sun9i_a80_cpus_clk_set_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_hw = type { i32 }
%struct.sun9i_a80_cpus_clk = type { i32 }

@sun9i_a80_cpus_lock = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.clk_hw*, i64, i64)* @sun9i_a80_cpus_clk_set_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sun9i_a80_cpus_clk_set_rate(%struct.clk_hw* %0, i64 %1, i64 %2) #0 {
  %4 = alloca %struct.clk_hw*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.sun9i_a80_cpus_clk*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.clk_hw* %0, %struct.clk_hw** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  %13 = load %struct.clk_hw*, %struct.clk_hw** %4, align 8
  %14 = call %struct.sun9i_a80_cpus_clk* @to_sun9i_a80_cpus_clk(%struct.clk_hw* %13)
  store %struct.sun9i_a80_cpus_clk* %14, %struct.sun9i_a80_cpus_clk** %7, align 8
  %15 = load i64, i64* %8, align 8
  %16 = call i32 @spin_lock_irqsave(i32* @sun9i_a80_cpus_lock, i64 %15)
  %17 = load %struct.sun9i_a80_cpus_clk*, %struct.sun9i_a80_cpus_clk** %7, align 8
  %18 = getelementptr inbounds %struct.sun9i_a80_cpus_clk, %struct.sun9i_a80_cpus_clk* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @readl(i32 %19)
  store i32 %20, i32* %12, align 4
  %21 = load i32, i32* %12, align 4
  %22 = call i32 @SUN9I_CPUS_MUX_GET_PARENT(i32 %21)
  store i32 %22, i32* %11, align 4
  %23 = load i64, i64* %5, align 8
  %24 = load i32, i32* %11, align 4
  %25 = load i64, i64* %6, align 8
  %26 = call i32 @sun9i_a80_cpus_clk_round(i64 %23, i32* %9, i32* %10, i32 %24, i64 %25)
  %27 = load i32, i32* %12, align 4
  %28 = load i32, i32* %9, align 4
  %29 = call i32 @SUN9I_CPUS_DIV_SET(i32 %27, i32 %28)
  store i32 %29, i32* %12, align 4
  %30 = load i32, i32* %12, align 4
  %31 = load i32, i32* %10, align 4
  %32 = call i32 @SUN9I_CPUS_PLL4_DIV_SET(i32 %30, i32 %31)
  store i32 %32, i32* %12, align 4
  %33 = load i32, i32* %12, align 4
  %34 = load %struct.sun9i_a80_cpus_clk*, %struct.sun9i_a80_cpus_clk** %7, align 8
  %35 = getelementptr inbounds %struct.sun9i_a80_cpus_clk, %struct.sun9i_a80_cpus_clk* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @writel(i32 %33, i32 %36)
  %38 = load i64, i64* %8, align 8
  %39 = call i32 @spin_unlock_irqrestore(i32* @sun9i_a80_cpus_lock, i64 %38)
  ret i32 0
}

declare dso_local %struct.sun9i_a80_cpus_clk* @to_sun9i_a80_cpus_clk(%struct.clk_hw*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @readl(i32) #1

declare dso_local i32 @SUN9I_CPUS_MUX_GET_PARENT(i32) #1

declare dso_local i32 @sun9i_a80_cpus_clk_round(i64, i32*, i32*, i32, i64) #1

declare dso_local i32 @SUN9I_CPUS_DIV_SET(i32, i32) #1

declare dso_local i32 @SUN9I_CPUS_PLL4_DIV_SET(i32, i32) #1

declare dso_local i32 @writel(i32, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
