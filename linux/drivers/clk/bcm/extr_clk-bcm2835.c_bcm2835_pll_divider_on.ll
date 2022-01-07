; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/bcm/extr_clk-bcm2835.c_bcm2835_pll_divider_on.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/bcm/extr_clk-bcm2835.c_bcm2835_pll_divider_on.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_hw = type { i32 }
%struct.bcm2835_pll_divider = type { %struct.bcm2835_pll_divider_data*, %struct.bcm2835_cprman* }
%struct.bcm2835_pll_divider_data = type { i32, i32, i32 }
%struct.bcm2835_cprman = type { i32 }

@A2W_PLL_CHANNEL_DISABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.clk_hw*)* @bcm2835_pll_divider_on to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bcm2835_pll_divider_on(%struct.clk_hw* %0) #0 {
  %2 = alloca %struct.clk_hw*, align 8
  %3 = alloca %struct.bcm2835_pll_divider*, align 8
  %4 = alloca %struct.bcm2835_cprman*, align 8
  %5 = alloca %struct.bcm2835_pll_divider_data*, align 8
  store %struct.clk_hw* %0, %struct.clk_hw** %2, align 8
  %6 = load %struct.clk_hw*, %struct.clk_hw** %2, align 8
  %7 = call %struct.bcm2835_pll_divider* @bcm2835_pll_divider_from_hw(%struct.clk_hw* %6)
  store %struct.bcm2835_pll_divider* %7, %struct.bcm2835_pll_divider** %3, align 8
  %8 = load %struct.bcm2835_pll_divider*, %struct.bcm2835_pll_divider** %3, align 8
  %9 = getelementptr inbounds %struct.bcm2835_pll_divider, %struct.bcm2835_pll_divider* %8, i32 0, i32 1
  %10 = load %struct.bcm2835_cprman*, %struct.bcm2835_cprman** %9, align 8
  store %struct.bcm2835_cprman* %10, %struct.bcm2835_cprman** %4, align 8
  %11 = load %struct.bcm2835_pll_divider*, %struct.bcm2835_pll_divider** %3, align 8
  %12 = getelementptr inbounds %struct.bcm2835_pll_divider, %struct.bcm2835_pll_divider* %11, i32 0, i32 0
  %13 = load %struct.bcm2835_pll_divider_data*, %struct.bcm2835_pll_divider_data** %12, align 8
  store %struct.bcm2835_pll_divider_data* %13, %struct.bcm2835_pll_divider_data** %5, align 8
  %14 = load %struct.bcm2835_cprman*, %struct.bcm2835_cprman** %4, align 8
  %15 = getelementptr inbounds %struct.bcm2835_cprman, %struct.bcm2835_cprman* %14, i32 0, i32 0
  %16 = call i32 @spin_lock(i32* %15)
  %17 = load %struct.bcm2835_cprman*, %struct.bcm2835_cprman** %4, align 8
  %18 = load %struct.bcm2835_pll_divider_data*, %struct.bcm2835_pll_divider_data** %5, align 8
  %19 = getelementptr inbounds %struct.bcm2835_pll_divider_data, %struct.bcm2835_pll_divider_data* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.bcm2835_cprman*, %struct.bcm2835_cprman** %4, align 8
  %22 = load %struct.bcm2835_pll_divider_data*, %struct.bcm2835_pll_divider_data** %5, align 8
  %23 = getelementptr inbounds %struct.bcm2835_pll_divider_data, %struct.bcm2835_pll_divider_data* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @cprman_read(%struct.bcm2835_cprman* %21, i32 %24)
  %26 = load i32, i32* @A2W_PLL_CHANNEL_DISABLE, align 4
  %27 = xor i32 %26, -1
  %28 = and i32 %25, %27
  %29 = call i32 @cprman_write(%struct.bcm2835_cprman* %17, i32 %20, i32 %28)
  %30 = load %struct.bcm2835_cprman*, %struct.bcm2835_cprman** %4, align 8
  %31 = load %struct.bcm2835_pll_divider_data*, %struct.bcm2835_pll_divider_data** %5, align 8
  %32 = getelementptr inbounds %struct.bcm2835_pll_divider_data, %struct.bcm2835_pll_divider_data* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.bcm2835_cprman*, %struct.bcm2835_cprman** %4, align 8
  %35 = load %struct.bcm2835_pll_divider_data*, %struct.bcm2835_pll_divider_data** %5, align 8
  %36 = getelementptr inbounds %struct.bcm2835_pll_divider_data, %struct.bcm2835_pll_divider_data* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @cprman_read(%struct.bcm2835_cprman* %34, i32 %37)
  %39 = load %struct.bcm2835_pll_divider_data*, %struct.bcm2835_pll_divider_data** %5, align 8
  %40 = getelementptr inbounds %struct.bcm2835_pll_divider_data, %struct.bcm2835_pll_divider_data* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = xor i32 %41, -1
  %43 = and i32 %38, %42
  %44 = call i32 @cprman_write(%struct.bcm2835_cprman* %30, i32 %33, i32 %43)
  %45 = load %struct.bcm2835_cprman*, %struct.bcm2835_cprman** %4, align 8
  %46 = getelementptr inbounds %struct.bcm2835_cprman, %struct.bcm2835_cprman* %45, i32 0, i32 0
  %47 = call i32 @spin_unlock(i32* %46)
  ret i32 0
}

declare dso_local %struct.bcm2835_pll_divider* @bcm2835_pll_divider_from_hw(%struct.clk_hw*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @cprman_write(%struct.bcm2835_cprman*, i32, i32) #1

declare dso_local i32 @cprman_read(%struct.bcm2835_cprman*, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
