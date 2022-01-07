; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/mvebu/extr_clk-corediv.c_clk_corediv_is_enabled.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/mvebu/extr_clk-corediv.c_clk_corediv_is_enabled.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_hw = type { i32 }
%struct.clk_corediv = type { i32, %struct.clk_corediv_desc*, %struct.clk_corediv_soc_desc* }
%struct.clk_corediv_desc = type { i32 }
%struct.clk_corediv_soc_desc = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.clk_hw*)* @clk_corediv_is_enabled to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @clk_corediv_is_enabled(%struct.clk_hw* %0) #0 {
  %2 = alloca %struct.clk_hw*, align 8
  %3 = alloca %struct.clk_corediv*, align 8
  %4 = alloca %struct.clk_corediv_soc_desc*, align 8
  %5 = alloca %struct.clk_corediv_desc*, align 8
  %6 = alloca i32, align 4
  store %struct.clk_hw* %0, %struct.clk_hw** %2, align 8
  %7 = load %struct.clk_hw*, %struct.clk_hw** %2, align 8
  %8 = call %struct.clk_corediv* @to_corediv_clk(%struct.clk_hw* %7)
  store %struct.clk_corediv* %8, %struct.clk_corediv** %3, align 8
  %9 = load %struct.clk_corediv*, %struct.clk_corediv** %3, align 8
  %10 = getelementptr inbounds %struct.clk_corediv, %struct.clk_corediv* %9, i32 0, i32 2
  %11 = load %struct.clk_corediv_soc_desc*, %struct.clk_corediv_soc_desc** %10, align 8
  store %struct.clk_corediv_soc_desc* %11, %struct.clk_corediv_soc_desc** %4, align 8
  %12 = load %struct.clk_corediv*, %struct.clk_corediv** %3, align 8
  %13 = getelementptr inbounds %struct.clk_corediv, %struct.clk_corediv* %12, i32 0, i32 1
  %14 = load %struct.clk_corediv_desc*, %struct.clk_corediv_desc** %13, align 8
  store %struct.clk_corediv_desc* %14, %struct.clk_corediv_desc** %5, align 8
  %15 = load %struct.clk_corediv_desc*, %struct.clk_corediv_desc** %5, align 8
  %16 = getelementptr inbounds %struct.clk_corediv_desc, %struct.clk_corediv_desc* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @BIT(i32 %17)
  %19 = load %struct.clk_corediv_soc_desc*, %struct.clk_corediv_soc_desc** %4, align 8
  %20 = getelementptr inbounds %struct.clk_corediv_soc_desc, %struct.clk_corediv_soc_desc* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = shl i32 %18, %21
  store i32 %22, i32* %6, align 4
  %23 = load %struct.clk_corediv*, %struct.clk_corediv** %3, align 8
  %24 = getelementptr inbounds %struct.clk_corediv, %struct.clk_corediv* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = call i32 @readl(i32 %25)
  %27 = load i32, i32* %6, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  %30 = xor i1 %29, true
  %31 = xor i1 %30, true
  %32 = zext i1 %31 to i32
  ret i32 %32
}

declare dso_local %struct.clk_corediv* @to_corediv_clk(%struct.clk_hw*) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @readl(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
