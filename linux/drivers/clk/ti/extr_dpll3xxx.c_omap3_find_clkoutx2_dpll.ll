; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/ti/extr_dpll3xxx.c_omap3_find_clkoutx2_dpll.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/ti/extr_dpll3xxx.c_omap3_find_clkoutx2_dpll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_hw_omap = type { i32 }
%struct.clk_hw = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.clk_hw_omap* (%struct.clk_hw*)* @omap3_find_clkoutx2_dpll to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.clk_hw_omap* @omap3_find_clkoutx2_dpll(%struct.clk_hw* %0) #0 {
  %2 = alloca %struct.clk_hw_omap*, align 8
  %3 = alloca %struct.clk_hw*, align 8
  %4 = alloca %struct.clk_hw_omap*, align 8
  store %struct.clk_hw* %0, %struct.clk_hw** %3, align 8
  store %struct.clk_hw_omap* null, %struct.clk_hw_omap** %4, align 8
  br label %5

5:                                                ; preds = %35, %1
  br label %6

6:                                                ; preds = %17, %5
  %7 = load %struct.clk_hw*, %struct.clk_hw** %3, align 8
  %8 = call %struct.clk_hw* @clk_hw_get_parent(%struct.clk_hw* %7)
  store %struct.clk_hw* %8, %struct.clk_hw** %3, align 8
  br label %9

9:                                                ; preds = %6
  %10 = load %struct.clk_hw*, %struct.clk_hw** %3, align 8
  %11 = icmp ne %struct.clk_hw* %10, null
  br i1 %11, label %12, label %17

12:                                               ; preds = %9
  %13 = load %struct.clk_hw*, %struct.clk_hw** %3, align 8
  %14 = call i32 @omap2_clk_is_hw_omap(%struct.clk_hw* %13)
  %15 = icmp ne i32 %14, 0
  %16 = xor i1 %15, true
  br label %17

17:                                               ; preds = %12, %9
  %18 = phi i1 [ false, %9 ], [ %16, %12 ]
  br i1 %18, label %6, label %19

19:                                               ; preds = %17
  %20 = load %struct.clk_hw*, %struct.clk_hw** %3, align 8
  %21 = icmp ne %struct.clk_hw* %20, null
  br i1 %21, label %23, label %22

22:                                               ; preds = %19
  br label %37

23:                                               ; preds = %19
  %24 = load %struct.clk_hw*, %struct.clk_hw** %3, align 8
  %25 = call %struct.clk_hw_omap* @to_clk_hw_omap(%struct.clk_hw* %24)
  store %struct.clk_hw_omap* %25, %struct.clk_hw_omap** %4, align 8
  br label %26

26:                                               ; preds = %23
  %27 = load %struct.clk_hw_omap*, %struct.clk_hw_omap** %4, align 8
  %28 = icmp ne %struct.clk_hw_omap* %27, null
  br i1 %28, label %29, label %35

29:                                               ; preds = %26
  %30 = load %struct.clk_hw_omap*, %struct.clk_hw_omap** %4, align 8
  %31 = getelementptr inbounds %struct.clk_hw_omap, %struct.clk_hw_omap* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = icmp ne i32 %32, 0
  %34 = xor i1 %33, true
  br label %35

35:                                               ; preds = %29, %26
  %36 = phi i1 [ false, %26 ], [ %34, %29 ]
  br i1 %36, label %5, label %37

37:                                               ; preds = %35, %22
  %38 = load %struct.clk_hw_omap*, %struct.clk_hw_omap** %4, align 8
  %39 = icmp ne %struct.clk_hw_omap* %38, null
  br i1 %39, label %42, label %40

40:                                               ; preds = %37
  %41 = call i32 @WARN_ON(i32 1)
  store %struct.clk_hw_omap* null, %struct.clk_hw_omap** %2, align 8
  br label %44

42:                                               ; preds = %37
  %43 = load %struct.clk_hw_omap*, %struct.clk_hw_omap** %4, align 8
  store %struct.clk_hw_omap* %43, %struct.clk_hw_omap** %2, align 8
  br label %44

44:                                               ; preds = %42, %40
  %45 = load %struct.clk_hw_omap*, %struct.clk_hw_omap** %2, align 8
  ret %struct.clk_hw_omap* %45
}

declare dso_local %struct.clk_hw* @clk_hw_get_parent(%struct.clk_hw*) #1

declare dso_local i32 @omap2_clk_is_hw_omap(%struct.clk_hw*) #1

declare dso_local %struct.clk_hw_omap* @to_clk_hw_omap(%struct.clk_hw*) #1

declare dso_local i32 @WARN_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
