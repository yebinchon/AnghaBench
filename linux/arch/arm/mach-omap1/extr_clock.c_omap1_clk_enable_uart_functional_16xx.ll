; ModuleID = '/home/carl/AnghaBench/linux/arch/arm/mach-omap1/extr_clock.c_omap1_clk_enable_uart_functional_16xx.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm/mach-omap1/extr_clock.c_omap1_clk_enable_uart_functional_16xx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk = type { i32 }
%struct.uart_clk = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.clk*)* @omap1_clk_enable_uart_functional_16xx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @omap1_clk_enable_uart_functional_16xx(%struct.clk* %0) #0 {
  %2 = alloca %struct.clk*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.uart_clk*, align 8
  store %struct.clk* %0, %struct.clk** %2, align 8
  %5 = load %struct.clk*, %struct.clk** %2, align 8
  %6 = call i32 @omap1_clk_enable_generic(%struct.clk* %5)
  store i32 %6, i32* %3, align 4
  %7 = load i32, i32* %3, align 4
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %22

9:                                                ; preds = %1
  %10 = load %struct.clk*, %struct.clk** %2, align 8
  %11 = bitcast %struct.clk* %10 to %struct.uart_clk*
  store %struct.uart_clk* %11, %struct.uart_clk** %4, align 8
  %12 = load %struct.uart_clk*, %struct.uart_clk** %4, align 8
  %13 = getelementptr inbounds %struct.uart_clk, %struct.uart_clk* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @omap_readb(i32 %14)
  %16 = and i32 %15, -17
  %17 = or i32 %16, 8
  %18 = load %struct.uart_clk*, %struct.uart_clk** %4, align 8
  %19 = getelementptr inbounds %struct.uart_clk, %struct.uart_clk* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @omap_writeb(i32 %17, i32 %20)
  br label %22

22:                                               ; preds = %9, %1
  %23 = load i32, i32* %3, align 4
  ret i32 %23
}

declare dso_local i32 @omap1_clk_enable_generic(%struct.clk*) #1

declare dso_local i32 @omap_writeb(i32, i32) #1

declare dso_local i32 @omap_readb(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
