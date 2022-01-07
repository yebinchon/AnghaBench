; ModuleID = '/home/carl/AnghaBench/linux/arch/arm/mach-omap2/extr_omap_hwmod.c__get_clkdm.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm/mach-omap2/extr_omap_hwmod.c__get_clkdm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clockdomain = type { i32 }
%struct.omap_hwmod = type { i64, %struct.clockdomain* }
%struct.clk_hw_omap = type { %struct.clockdomain* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.clockdomain* (%struct.omap_hwmod*)* @_get_clkdm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.clockdomain* @_get_clkdm(%struct.omap_hwmod* %0) #0 {
  %2 = alloca %struct.clockdomain*, align 8
  %3 = alloca %struct.omap_hwmod*, align 8
  %4 = alloca %struct.clk_hw_omap*, align 8
  store %struct.omap_hwmod* %0, %struct.omap_hwmod** %3, align 8
  %5 = load %struct.omap_hwmod*, %struct.omap_hwmod** %3, align 8
  %6 = getelementptr inbounds %struct.omap_hwmod, %struct.omap_hwmod* %5, i32 0, i32 1
  %7 = load %struct.clockdomain*, %struct.clockdomain** %6, align 8
  %8 = icmp ne %struct.clockdomain* %7, null
  br i1 %8, label %9, label %13

9:                                                ; preds = %1
  %10 = load %struct.omap_hwmod*, %struct.omap_hwmod** %3, align 8
  %11 = getelementptr inbounds %struct.omap_hwmod, %struct.omap_hwmod* %10, i32 0, i32 1
  %12 = load %struct.clockdomain*, %struct.clockdomain** %11, align 8
  store %struct.clockdomain* %12, %struct.clockdomain** %2, align 8
  br label %37

13:                                               ; preds = %1
  %14 = load %struct.omap_hwmod*, %struct.omap_hwmod** %3, align 8
  %15 = getelementptr inbounds %struct.omap_hwmod, %struct.omap_hwmod* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %35

18:                                               ; preds = %13
  %19 = load %struct.omap_hwmod*, %struct.omap_hwmod** %3, align 8
  %20 = getelementptr inbounds %struct.omap_hwmod, %struct.omap_hwmod* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = call i32 @__clk_get_hw(i64 %21)
  %23 = call i32 @omap2_clk_is_hw_omap(i32 %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %18
  store %struct.clockdomain* null, %struct.clockdomain** %2, align 8
  br label %37

26:                                               ; preds = %18
  %27 = load %struct.omap_hwmod*, %struct.omap_hwmod** %3, align 8
  %28 = getelementptr inbounds %struct.omap_hwmod, %struct.omap_hwmod* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = call i32 @__clk_get_hw(i64 %29)
  %31 = call %struct.clk_hw_omap* @to_clk_hw_omap(i32 %30)
  store %struct.clk_hw_omap* %31, %struct.clk_hw_omap** %4, align 8
  %32 = load %struct.clk_hw_omap*, %struct.clk_hw_omap** %4, align 8
  %33 = getelementptr inbounds %struct.clk_hw_omap, %struct.clk_hw_omap* %32, i32 0, i32 0
  %34 = load %struct.clockdomain*, %struct.clockdomain** %33, align 8
  store %struct.clockdomain* %34, %struct.clockdomain** %2, align 8
  br label %37

35:                                               ; preds = %13
  br label %36

36:                                               ; preds = %35
  store %struct.clockdomain* null, %struct.clockdomain** %2, align 8
  br label %37

37:                                               ; preds = %36, %26, %25, %9
  %38 = load %struct.clockdomain*, %struct.clockdomain** %2, align 8
  ret %struct.clockdomain* %38
}

declare dso_local i32 @omap2_clk_is_hw_omap(i32) #1

declare dso_local i32 @__clk_get_hw(i64) #1

declare dso_local %struct.clk_hw_omap* @to_clk_hw_omap(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
