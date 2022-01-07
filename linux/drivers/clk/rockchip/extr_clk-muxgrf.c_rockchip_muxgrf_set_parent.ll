; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/rockchip/extr_clk-muxgrf.c_rockchip_muxgrf_set_parent.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/rockchip/extr_clk-muxgrf.c_rockchip_muxgrf_set_parent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_hw = type { i32 }
%struct.rockchip_muxgrf_clock = type { i32, i32, i32, i32, i64 }

@CLK_MUX_HIWORD_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.clk_hw*, i32)* @rockchip_muxgrf_set_parent to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rockchip_muxgrf_set_parent(%struct.clk_hw* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.clk_hw*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.rockchip_muxgrf_clock*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.clk_hw* %0, %struct.clk_hw** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.clk_hw*, %struct.clk_hw** %4, align 8
  %10 = call %struct.rockchip_muxgrf_clock* @to_muxgrf_clock(%struct.clk_hw* %9)
  store %struct.rockchip_muxgrf_clock* %10, %struct.rockchip_muxgrf_clock** %6, align 8
  %11 = load %struct.rockchip_muxgrf_clock*, %struct.rockchip_muxgrf_clock** %6, align 8
  %12 = getelementptr inbounds %struct.rockchip_muxgrf_clock, %struct.rockchip_muxgrf_clock* %11, i32 0, i32 4
  %13 = load i64, i64* %12, align 8
  %14 = load %struct.rockchip_muxgrf_clock*, %struct.rockchip_muxgrf_clock** %6, align 8
  %15 = getelementptr inbounds %struct.rockchip_muxgrf_clock, %struct.rockchip_muxgrf_clock* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = zext i32 %16 to i64
  %18 = add nsw i64 %13, %17
  %19 = sub nsw i64 %18, 1
  %20 = load %struct.rockchip_muxgrf_clock*, %struct.rockchip_muxgrf_clock** %6, align 8
  %21 = getelementptr inbounds %struct.rockchip_muxgrf_clock, %struct.rockchip_muxgrf_clock* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = call i32 @GENMASK(i64 %19, i32 %22)
  store i32 %23, i32* %7, align 4
  %24 = load i32, i32* %5, align 4
  store i32 %24, i32* %8, align 4
  %25 = load %struct.rockchip_muxgrf_clock*, %struct.rockchip_muxgrf_clock** %6, align 8
  %26 = getelementptr inbounds %struct.rockchip_muxgrf_clock, %struct.rockchip_muxgrf_clock* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* %8, align 4
  %29 = shl i32 %28, %27
  store i32 %29, i32* %8, align 4
  %30 = load %struct.rockchip_muxgrf_clock*, %struct.rockchip_muxgrf_clock** %6, align 8
  %31 = getelementptr inbounds %struct.rockchip_muxgrf_clock, %struct.rockchip_muxgrf_clock* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @CLK_MUX_HIWORD_MASK, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %48

36:                                               ; preds = %2
  %37 = load %struct.rockchip_muxgrf_clock*, %struct.rockchip_muxgrf_clock** %6, align 8
  %38 = getelementptr inbounds %struct.rockchip_muxgrf_clock, %struct.rockchip_muxgrf_clock* %37, i32 0, i32 3
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.rockchip_muxgrf_clock*, %struct.rockchip_muxgrf_clock** %6, align 8
  %41 = getelementptr inbounds %struct.rockchip_muxgrf_clock, %struct.rockchip_muxgrf_clock* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 8
  %43 = load i32, i32* %8, align 4
  %44 = load i32, i32* %7, align 4
  %45 = shl i32 %44, 16
  %46 = or i32 %43, %45
  %47 = call i32 @regmap_write(i32 %39, i32 %42, i32 %46)
  store i32 %47, i32* %3, align 4
  br label %58

48:                                               ; preds = %2
  %49 = load %struct.rockchip_muxgrf_clock*, %struct.rockchip_muxgrf_clock** %6, align 8
  %50 = getelementptr inbounds %struct.rockchip_muxgrf_clock, %struct.rockchip_muxgrf_clock* %49, i32 0, i32 3
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.rockchip_muxgrf_clock*, %struct.rockchip_muxgrf_clock** %6, align 8
  %53 = getelementptr inbounds %struct.rockchip_muxgrf_clock, %struct.rockchip_muxgrf_clock* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 8
  %55 = load i32, i32* %7, align 4
  %56 = load i32, i32* %8, align 4
  %57 = call i32 @regmap_update_bits(i32 %51, i32 %54, i32 %55, i32 %56)
  store i32 %57, i32* %3, align 4
  br label %58

58:                                               ; preds = %48, %36
  %59 = load i32, i32* %3, align 4
  ret i32 %59
}

declare dso_local %struct.rockchip_muxgrf_clock* @to_muxgrf_clock(%struct.clk_hw*) #1

declare dso_local i32 @GENMASK(i64, i32) #1

declare dso_local i32 @regmap_write(i32, i32, i32) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
