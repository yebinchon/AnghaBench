; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/extr_clk-axm5516.c_axxia_clkmux_get_parent.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/extr_clk-axm5516.c_axxia_clkmux_get_parent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_hw = type { i32 }
%struct.axxia_clk = type { i32 }
%struct.axxia_clkmux = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.clk_hw*)* @axxia_clkmux_get_parent to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @axxia_clkmux_get_parent(%struct.clk_hw* %0) #0 {
  %2 = alloca %struct.clk_hw*, align 8
  %3 = alloca %struct.axxia_clk*, align 8
  %4 = alloca %struct.axxia_clkmux*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.clk_hw* %0, %struct.clk_hw** %2, align 8
  %7 = load %struct.clk_hw*, %struct.clk_hw** %2, align 8
  %8 = call %struct.axxia_clk* @to_axxia_clk(%struct.clk_hw* %7)
  store %struct.axxia_clk* %8, %struct.axxia_clk** %3, align 8
  %9 = load %struct.axxia_clk*, %struct.axxia_clk** %3, align 8
  %10 = call %struct.axxia_clkmux* @to_axxia_clkmux(%struct.axxia_clk* %9)
  store %struct.axxia_clkmux* %10, %struct.axxia_clkmux** %4, align 8
  %11 = load %struct.axxia_clk*, %struct.axxia_clk** %3, align 8
  %12 = getelementptr inbounds %struct.axxia_clk, %struct.axxia_clk* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.axxia_clkmux*, %struct.axxia_clkmux** %4, align 8
  %15 = getelementptr inbounds %struct.axxia_clkmux, %struct.axxia_clkmux* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @regmap_read(i32 %13, i32 %16, i32* %5)
  %18 = load i32, i32* %5, align 4
  %19 = load %struct.axxia_clkmux*, %struct.axxia_clkmux** %4, align 8
  %20 = getelementptr inbounds %struct.axxia_clkmux, %struct.axxia_clkmux* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = ashr i32 %18, %21
  %23 = load %struct.axxia_clkmux*, %struct.axxia_clkmux** %4, align 8
  %24 = getelementptr inbounds %struct.axxia_clkmux, %struct.axxia_clkmux* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = shl i32 1, %25
  %27 = sub nsw i32 %26, 1
  %28 = and i32 %22, %27
  store i32 %28, i32* %6, align 4
  %29 = load i32, i32* %6, align 4
  ret i32 %29
}

declare dso_local %struct.axxia_clk* @to_axxia_clk(%struct.clk_hw*) #1

declare dso_local %struct.axxia_clkmux* @to_axxia_clkmux(%struct.axxia_clk*) #1

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
