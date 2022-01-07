; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/renesas/extr_rcar-gen3-cpg.c_cpg_z_clk_recalc_rate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/renesas/extr_rcar-gen3-cpg.c_cpg_z_clk_recalc_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_hw = type { i32 }
%struct.cpg_z_clk = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.clk_hw*, i64)* @cpg_z_clk_recalc_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @cpg_z_clk_recalc_rate(%struct.clk_hw* %0, i64 %1) #0 {
  %3 = alloca %struct.clk_hw*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.cpg_z_clk*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.clk_hw* %0, %struct.clk_hw** %3, align 8
  store i64 %1, i64* %4, align 8
  %8 = load %struct.clk_hw*, %struct.clk_hw** %3, align 8
  %9 = call %struct.cpg_z_clk* @to_z_clk(%struct.clk_hw* %8)
  store %struct.cpg_z_clk* %9, %struct.cpg_z_clk** %5, align 8
  %10 = load %struct.cpg_z_clk*, %struct.cpg_z_clk** %5, align 8
  %11 = getelementptr inbounds %struct.cpg_z_clk, %struct.cpg_z_clk* %10, i32 0, i32 2
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @readl(i32 %12)
  %14 = load %struct.cpg_z_clk*, %struct.cpg_z_clk** %5, align 8
  %15 = getelementptr inbounds %struct.cpg_z_clk, %struct.cpg_z_clk* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = and i32 %13, %16
  store i32 %17, i32* %7, align 4
  %18 = load i32, i32* %7, align 4
  %19 = load %struct.cpg_z_clk*, %struct.cpg_z_clk** %5, align 8
  %20 = getelementptr inbounds %struct.cpg_z_clk, %struct.cpg_z_clk* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @__ffs(i32 %21)
  %23 = ashr i32 %18, %22
  %24 = sub nsw i32 32, %23
  store i32 %24, i32* %6, align 4
  %25 = load i64, i64* %4, align 8
  %26 = trunc i64 %25 to i32
  %27 = load i32, i32* %6, align 4
  %28 = mul i32 %26, %27
  %29 = load %struct.cpg_z_clk*, %struct.cpg_z_clk** %5, align 8
  %30 = getelementptr inbounds %struct.cpg_z_clk, %struct.cpg_z_clk* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = mul nsw i32 32, %31
  %33 = call i64 @DIV_ROUND_CLOSEST_ULL(i32 %28, i32 %32)
  ret i64 %33
}

declare dso_local %struct.cpg_z_clk* @to_z_clk(%struct.clk_hw*) #1

declare dso_local i32 @readl(i32) #1

declare dso_local i32 @__ffs(i32) #1

declare dso_local i64 @DIV_ROUND_CLOSEST_ULL(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
