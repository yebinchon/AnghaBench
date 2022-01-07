; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/bcm/extr_clk-bcm2835.c_bcm2835_pll_divider_set_rate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/bcm/extr_clk-bcm2835.c_bcm2835_pll_divider_set_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_hw = type { i32 }
%struct.bcm2835_pll_divider = type { %struct.bcm2835_pll_divider_data*, %struct.bcm2835_cprman* }
%struct.bcm2835_pll_divider_data = type { i64, i32, i32 }
%struct.bcm2835_cprman = type { i32 }

@A2W_PLL_DIV_BITS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.clk_hw*, i64, i64)* @bcm2835_pll_divider_set_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bcm2835_pll_divider_set_rate(%struct.clk_hw* %0, i64 %1, i64 %2) #0 {
  %4 = alloca %struct.clk_hw*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.bcm2835_pll_divider*, align 8
  %8 = alloca %struct.bcm2835_cprman*, align 8
  %9 = alloca %struct.bcm2835_pll_divider_data*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store %struct.clk_hw* %0, %struct.clk_hw** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  %13 = load %struct.clk_hw*, %struct.clk_hw** %4, align 8
  %14 = call %struct.bcm2835_pll_divider* @bcm2835_pll_divider_from_hw(%struct.clk_hw* %13)
  store %struct.bcm2835_pll_divider* %14, %struct.bcm2835_pll_divider** %7, align 8
  %15 = load %struct.bcm2835_pll_divider*, %struct.bcm2835_pll_divider** %7, align 8
  %16 = getelementptr inbounds %struct.bcm2835_pll_divider, %struct.bcm2835_pll_divider* %15, i32 0, i32 1
  %17 = load %struct.bcm2835_cprman*, %struct.bcm2835_cprman** %16, align 8
  store %struct.bcm2835_cprman* %17, %struct.bcm2835_cprman** %8, align 8
  %18 = load %struct.bcm2835_pll_divider*, %struct.bcm2835_pll_divider** %7, align 8
  %19 = getelementptr inbounds %struct.bcm2835_pll_divider, %struct.bcm2835_pll_divider* %18, i32 0, i32 0
  %20 = load %struct.bcm2835_pll_divider_data*, %struct.bcm2835_pll_divider_data** %19, align 8
  store %struct.bcm2835_pll_divider_data* %20, %struct.bcm2835_pll_divider_data** %9, align 8
  %21 = load i32, i32* @A2W_PLL_DIV_BITS, align 4
  %22 = shl i32 1, %21
  %23 = sext i32 %22 to i64
  store i64 %23, i64* %12, align 8
  %24 = load i64, i64* %6, align 8
  %25 = load i64, i64* %5, align 8
  %26 = call i64 @DIV_ROUND_UP_ULL(i64 %24, i64 %25)
  store i64 %26, i64* %11, align 8
  %27 = load i64, i64* %11, align 8
  %28 = load i64, i64* %12, align 8
  %29 = call i64 @min(i64 %27, i64 %28)
  store i64 %29, i64* %11, align 8
  %30 = load i64, i64* %11, align 8
  %31 = load i64, i64* %12, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %34

33:                                               ; preds = %3
  store i64 0, i64* %11, align 8
  br label %34

34:                                               ; preds = %33, %3
  %35 = load %struct.bcm2835_cprman*, %struct.bcm2835_cprman** %8, align 8
  %36 = load %struct.bcm2835_pll_divider_data*, %struct.bcm2835_pll_divider_data** %9, align 8
  %37 = getelementptr inbounds %struct.bcm2835_pll_divider_data, %struct.bcm2835_pll_divider_data* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 4
  %39 = load i64, i64* %11, align 8
  %40 = call i32 @cprman_write(%struct.bcm2835_cprman* %35, i32 %38, i64 %39)
  %41 = load %struct.bcm2835_cprman*, %struct.bcm2835_cprman** %8, align 8
  %42 = load %struct.bcm2835_pll_divider_data*, %struct.bcm2835_pll_divider_data** %9, align 8
  %43 = getelementptr inbounds %struct.bcm2835_pll_divider_data, %struct.bcm2835_pll_divider_data* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 8
  %45 = call i64 @cprman_read(%struct.bcm2835_cprman* %41, i32 %44)
  store i64 %45, i64* %10, align 8
  %46 = load %struct.bcm2835_cprman*, %struct.bcm2835_cprman** %8, align 8
  %47 = load %struct.bcm2835_pll_divider_data*, %struct.bcm2835_pll_divider_data** %9, align 8
  %48 = getelementptr inbounds %struct.bcm2835_pll_divider_data, %struct.bcm2835_pll_divider_data* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 8
  %50 = load i64, i64* %10, align 8
  %51 = load %struct.bcm2835_pll_divider_data*, %struct.bcm2835_pll_divider_data** %9, align 8
  %52 = getelementptr inbounds %struct.bcm2835_pll_divider_data, %struct.bcm2835_pll_divider_data* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = or i64 %50, %53
  %55 = call i32 @cprman_write(%struct.bcm2835_cprman* %46, i32 %49, i64 %54)
  %56 = load %struct.bcm2835_cprman*, %struct.bcm2835_cprman** %8, align 8
  %57 = load %struct.bcm2835_pll_divider_data*, %struct.bcm2835_pll_divider_data** %9, align 8
  %58 = getelementptr inbounds %struct.bcm2835_pll_divider_data, %struct.bcm2835_pll_divider_data* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 8
  %60 = load i64, i64* %10, align 8
  %61 = load %struct.bcm2835_pll_divider_data*, %struct.bcm2835_pll_divider_data** %9, align 8
  %62 = getelementptr inbounds %struct.bcm2835_pll_divider_data, %struct.bcm2835_pll_divider_data* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = xor i64 %63, -1
  %65 = and i64 %60, %64
  %66 = call i32 @cprman_write(%struct.bcm2835_cprman* %56, i32 %59, i64 %65)
  ret i32 0
}

declare dso_local %struct.bcm2835_pll_divider* @bcm2835_pll_divider_from_hw(%struct.clk_hw*) #1

declare dso_local i64 @DIV_ROUND_UP_ULL(i64, i64) #1

declare dso_local i64 @min(i64, i64) #1

declare dso_local i32 @cprman_write(%struct.bcm2835_cprman*, i32, i64) #1

declare dso_local i64 @cprman_read(%struct.bcm2835_cprman*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
