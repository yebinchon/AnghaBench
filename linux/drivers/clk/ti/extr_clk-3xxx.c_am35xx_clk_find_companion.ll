; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/ti/extr_clk-3xxx.c_am35xx_clk_find_companion.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/ti/extr_clk-3xxx.c_am35xx_clk_find_companion.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_hw_omap = type { i32, i32 }
%struct.clk_omap_reg = type { i32 }

@AM35XX_IPSS_ICK_MASK = common dso_local global i32 0, align 4
@AM35XX_IPSS_ICK_FCK_OFFSET = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.clk_hw_omap*, %struct.clk_omap_reg*, i64*)* @am35xx_clk_find_companion to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @am35xx_clk_find_companion(%struct.clk_hw_omap* %0, %struct.clk_omap_reg* %1, i64* %2) #0 {
  %4 = alloca %struct.clk_hw_omap*, align 8
  %5 = alloca %struct.clk_omap_reg*, align 8
  %6 = alloca i64*, align 8
  store %struct.clk_hw_omap* %0, %struct.clk_hw_omap** %4, align 8
  store %struct.clk_omap_reg* %1, %struct.clk_omap_reg** %5, align 8
  store i64* %2, i64** %6, align 8
  %7 = load %struct.clk_omap_reg*, %struct.clk_omap_reg** %5, align 8
  %8 = load %struct.clk_hw_omap*, %struct.clk_hw_omap** %4, align 8
  %9 = getelementptr inbounds %struct.clk_hw_omap, %struct.clk_hw_omap* %8, i32 0, i32 1
  %10 = call i32 @memcpy(%struct.clk_omap_reg* %7, i32* %9, i32 4)
  %11 = load %struct.clk_hw_omap*, %struct.clk_hw_omap** %4, align 8
  %12 = getelementptr inbounds %struct.clk_hw_omap, %struct.clk_hw_omap* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @AM35XX_IPSS_ICK_MASK, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %25

17:                                               ; preds = %3
  %18 = load %struct.clk_hw_omap*, %struct.clk_hw_omap** %4, align 8
  %19 = getelementptr inbounds %struct.clk_hw_omap, %struct.clk_hw_omap* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = sext i32 %20 to i64
  %22 = load i64, i64* @AM35XX_IPSS_ICK_FCK_OFFSET, align 8
  %23 = add nsw i64 %21, %22
  %24 = load i64*, i64** %6, align 8
  store i64 %23, i64* %24, align 8
  br label %33

25:                                               ; preds = %3
  %26 = load %struct.clk_hw_omap*, %struct.clk_hw_omap** %4, align 8
  %27 = getelementptr inbounds %struct.clk_hw_omap, %struct.clk_hw_omap* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = sext i32 %28 to i64
  %30 = load i64, i64* @AM35XX_IPSS_ICK_FCK_OFFSET, align 8
  %31 = sub nsw i64 %29, %30
  %32 = load i64*, i64** %6, align 8
  store i64 %31, i64* %32, align 8
  br label %33

33:                                               ; preds = %25, %17
  ret void
}

declare dso_local i32 @memcpy(%struct.clk_omap_reg*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
