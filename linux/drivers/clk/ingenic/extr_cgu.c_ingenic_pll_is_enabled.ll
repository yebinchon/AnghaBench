; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/ingenic/extr_cgu.c_ingenic_pll_is_enabled.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/ingenic/extr_cgu.c_ingenic_pll_is_enabled.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_hw = type { i32 }
%struct.ingenic_clk = type { %struct.ingenic_cgu* }
%struct.ingenic_cgu = type { i32, i64 }
%struct.ingenic_cgu_clk_info = type { %struct.ingenic_cgu_pll_info }
%struct.ingenic_cgu_pll_info = type { i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.clk_hw*)* @ingenic_pll_is_enabled to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ingenic_pll_is_enabled(%struct.clk_hw* %0) #0 {
  %2 = alloca %struct.clk_hw*, align 8
  %3 = alloca %struct.ingenic_clk*, align 8
  %4 = alloca %struct.ingenic_cgu*, align 8
  %5 = alloca %struct.ingenic_cgu_clk_info*, align 8
  %6 = alloca %struct.ingenic_cgu_pll_info*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.clk_hw* %0, %struct.clk_hw** %2, align 8
  %9 = load %struct.clk_hw*, %struct.clk_hw** %2, align 8
  %10 = call %struct.ingenic_clk* @to_ingenic_clk(%struct.clk_hw* %9)
  store %struct.ingenic_clk* %10, %struct.ingenic_clk** %3, align 8
  %11 = load %struct.ingenic_clk*, %struct.ingenic_clk** %3, align 8
  %12 = getelementptr inbounds %struct.ingenic_clk, %struct.ingenic_clk* %11, i32 0, i32 0
  %13 = load %struct.ingenic_cgu*, %struct.ingenic_cgu** %12, align 8
  store %struct.ingenic_cgu* %13, %struct.ingenic_cgu** %4, align 8
  %14 = load %struct.ingenic_clk*, %struct.ingenic_clk** %3, align 8
  %15 = call %struct.ingenic_cgu_clk_info* @to_clk_info(%struct.ingenic_clk* %14)
  store %struct.ingenic_cgu_clk_info* %15, %struct.ingenic_cgu_clk_info** %5, align 8
  %16 = load %struct.ingenic_cgu_clk_info*, %struct.ingenic_cgu_clk_info** %5, align 8
  %17 = getelementptr inbounds %struct.ingenic_cgu_clk_info, %struct.ingenic_cgu_clk_info* %16, i32 0, i32 0
  store %struct.ingenic_cgu_pll_info* %17, %struct.ingenic_cgu_pll_info** %6, align 8
  %18 = load %struct.ingenic_cgu*, %struct.ingenic_cgu** %4, align 8
  %19 = getelementptr inbounds %struct.ingenic_cgu, %struct.ingenic_cgu* %18, i32 0, i32 0
  %20 = load i64, i64* %7, align 8
  %21 = call i32 @spin_lock_irqsave(i32* %19, i64 %20)
  %22 = load %struct.ingenic_cgu*, %struct.ingenic_cgu** %4, align 8
  %23 = getelementptr inbounds %struct.ingenic_cgu, %struct.ingenic_cgu* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = load %struct.ingenic_cgu_pll_info*, %struct.ingenic_cgu_pll_info** %6, align 8
  %26 = getelementptr inbounds %struct.ingenic_cgu_pll_info, %struct.ingenic_cgu_pll_info* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = add nsw i64 %24, %27
  %29 = call i32 @readl(i64 %28)
  store i32 %29, i32* %8, align 4
  %30 = load %struct.ingenic_cgu*, %struct.ingenic_cgu** %4, align 8
  %31 = getelementptr inbounds %struct.ingenic_cgu, %struct.ingenic_cgu* %30, i32 0, i32 0
  %32 = load i64, i64* %7, align 8
  %33 = call i32 @spin_unlock_irqrestore(i32* %31, i64 %32)
  %34 = load i32, i32* %8, align 4
  %35 = load %struct.ingenic_cgu_pll_info*, %struct.ingenic_cgu_pll_info** %6, align 8
  %36 = getelementptr inbounds %struct.ingenic_cgu_pll_info, %struct.ingenic_cgu_pll_info* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = call i32 @BIT(i32 %37)
  %39 = and i32 %34, %38
  %40 = icmp ne i32 %39, 0
  %41 = xor i1 %40, true
  %42 = xor i1 %41, true
  %43 = zext i1 %42 to i32
  ret i32 %43
}

declare dso_local %struct.ingenic_clk* @to_ingenic_clk(%struct.clk_hw*) #1

declare dso_local %struct.ingenic_cgu_clk_info* @to_clk_info(%struct.ingenic_clk*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @BIT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
