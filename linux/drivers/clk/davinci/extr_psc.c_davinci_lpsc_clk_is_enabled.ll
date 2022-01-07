; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/davinci/extr_psc.c_davinci_lpsc_clk_is_enabled.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/davinci/extr_psc.c_davinci_lpsc_clk_is_enabled.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_hw = type { i32 }
%struct.davinci_lpsc_clk = type { i32, i32 }

@MDSTAT_MCKOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.clk_hw*)* @davinci_lpsc_clk_is_enabled to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @davinci_lpsc_clk_is_enabled(%struct.clk_hw* %0) #0 {
  %2 = alloca %struct.clk_hw*, align 8
  %3 = alloca %struct.davinci_lpsc_clk*, align 8
  %4 = alloca i32, align 4
  store %struct.clk_hw* %0, %struct.clk_hw** %2, align 8
  %5 = load %struct.clk_hw*, %struct.clk_hw** %2, align 8
  %6 = call %struct.davinci_lpsc_clk* @to_davinci_lpsc_clk(%struct.clk_hw* %5)
  store %struct.davinci_lpsc_clk* %6, %struct.davinci_lpsc_clk** %3, align 8
  %7 = load %struct.davinci_lpsc_clk*, %struct.davinci_lpsc_clk** %3, align 8
  %8 = getelementptr inbounds %struct.davinci_lpsc_clk, %struct.davinci_lpsc_clk* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 4
  %10 = load %struct.davinci_lpsc_clk*, %struct.davinci_lpsc_clk** %3, align 8
  %11 = getelementptr inbounds %struct.davinci_lpsc_clk, %struct.davinci_lpsc_clk* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @MDSTAT(i32 %12)
  %14 = call i32 @regmap_read(i32 %9, i32 %13, i32* %4)
  %15 = load i32, i32* %4, align 4
  %16 = load i32, i32* @MDSTAT_MCKOUT, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  %19 = zext i1 %18 to i64
  %20 = select i1 %18, i32 1, i32 0
  ret i32 %20
}

declare dso_local %struct.davinci_lpsc_clk* @to_davinci_lpsc_clk(%struct.clk_hw*) #1

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

declare dso_local i32 @MDSTAT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
