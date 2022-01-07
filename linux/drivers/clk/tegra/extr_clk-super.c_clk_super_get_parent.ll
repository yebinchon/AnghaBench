; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/tegra/extr_clk-super.c_clk_super_get_parent.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/tegra/extr_clk-super.c_clk_super_get_parent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_hw = type { i32 }
%struct.tegra_clk_super_mux = type { i32, i32, i32, i32 }

@SUPER_STATE_MASK = common dso_local global i32 0, align 4
@SUPER_STATE_RUN = common dso_local global i32 0, align 4
@SUPER_STATE_IDLE = common dso_local global i32 0, align 4
@TEGRA_DIVIDER_2 = common dso_local global i32 0, align 4
@SUPER_LP_DIV2_BYPASS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.clk_hw*)* @clk_super_get_parent to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @clk_super_get_parent(%struct.clk_hw* %0) #0 {
  %2 = alloca %struct.clk_hw*, align 8
  %3 = alloca %struct.tegra_clk_super_mux*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.clk_hw* %0, %struct.clk_hw** %2, align 8
  %8 = load %struct.clk_hw*, %struct.clk_hw** %2, align 8
  %9 = call %struct.tegra_clk_super_mux* @to_clk_super_mux(%struct.clk_hw* %8)
  store %struct.tegra_clk_super_mux* %9, %struct.tegra_clk_super_mux** %3, align 8
  %10 = load %struct.tegra_clk_super_mux*, %struct.tegra_clk_super_mux** %3, align 8
  %11 = getelementptr inbounds %struct.tegra_clk_super_mux, %struct.tegra_clk_super_mux* %10, i32 0, i32 3
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @readl_relaxed(i32 %12)
  store i32 %13, i32* %4, align 4
  %14 = load i32, i32* %4, align 4
  %15 = load i32, i32* @SUPER_STATE_MASK, align 4
  %16 = and i32 %14, %15
  store i32 %16, i32* %5, align 4
  %17 = load i32, i32* %5, align 4
  %18 = load i32, i32* @SUPER_STATE_RUN, align 4
  %19 = call i32 @super_state(i32 %18)
  %20 = icmp ne i32 %17, %19
  br i1 %20, label %21, label %26

21:                                               ; preds = %1
  %22 = load i32, i32* %5, align 4
  %23 = load i32, i32* @SUPER_STATE_IDLE, align 4
  %24 = call i32 @super_state(i32 %23)
  %25 = icmp ne i32 %22, %24
  br label %26

26:                                               ; preds = %21, %1
  %27 = phi i1 [ false, %1 ], [ %25, %21 ]
  %28 = zext i1 %27 to i32
  %29 = call i32 @BUG_ON(i32 %28)
  %30 = load i32, i32* %5, align 4
  %31 = load i32, i32* @SUPER_STATE_IDLE, align 4
  %32 = call i32 @super_state(i32 %31)
  %33 = icmp eq i32 %30, %32
  br i1 %33, label %34, label %38

34:                                               ; preds = %26
  %35 = load %struct.tegra_clk_super_mux*, %struct.tegra_clk_super_mux** %3, align 8
  %36 = load i32, i32* @SUPER_STATE_IDLE, align 4
  %37 = call i32 @super_state_to_src_shift(%struct.tegra_clk_super_mux* %35, i32 %36)
  br label %42

38:                                               ; preds = %26
  %39 = load %struct.tegra_clk_super_mux*, %struct.tegra_clk_super_mux** %3, align 8
  %40 = load i32, i32* @SUPER_STATE_RUN, align 4
  %41 = call i32 @super_state_to_src_shift(%struct.tegra_clk_super_mux* %39, i32 %40)
  br label %42

42:                                               ; preds = %38, %34
  %43 = phi i32 [ %37, %34 ], [ %41, %38 ]
  store i32 %43, i32* %7, align 4
  %44 = load i32, i32* %4, align 4
  %45 = load i32, i32* %7, align 4
  %46 = ashr i32 %44, %45
  %47 = load %struct.tegra_clk_super_mux*, %struct.tegra_clk_super_mux** %3, align 8
  %48 = call i32 @super_state_to_src_mask(%struct.tegra_clk_super_mux* %47)
  %49 = and i32 %46, %48
  store i32 %49, i32* %6, align 4
  %50 = load %struct.tegra_clk_super_mux*, %struct.tegra_clk_super_mux** %3, align 8
  %51 = getelementptr inbounds %struct.tegra_clk_super_mux, %struct.tegra_clk_super_mux* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* @TEGRA_DIVIDER_2, align 4
  %54 = and i32 %52, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %71

56:                                               ; preds = %42
  %57 = load i32, i32* %4, align 4
  %58 = load i32, i32* @SUPER_LP_DIV2_BYPASS, align 4
  %59 = and i32 %57, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %71, label %61

61:                                               ; preds = %56
  %62 = load i32, i32* %6, align 4
  %63 = load %struct.tegra_clk_super_mux*, %struct.tegra_clk_super_mux** %3, align 8
  %64 = getelementptr inbounds %struct.tegra_clk_super_mux, %struct.tegra_clk_super_mux* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = icmp eq i32 %62, %65
  br i1 %66, label %67, label %71

67:                                               ; preds = %61
  %68 = load %struct.tegra_clk_super_mux*, %struct.tegra_clk_super_mux** %3, align 8
  %69 = getelementptr inbounds %struct.tegra_clk_super_mux, %struct.tegra_clk_super_mux* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 4
  store i32 %70, i32* %6, align 4
  br label %71

71:                                               ; preds = %67, %61, %56, %42
  %72 = load i32, i32* %6, align 4
  ret i32 %72
}

declare dso_local %struct.tegra_clk_super_mux* @to_clk_super_mux(%struct.clk_hw*) #1

declare dso_local i32 @readl_relaxed(i32) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @super_state(i32) #1

declare dso_local i32 @super_state_to_src_shift(%struct.tegra_clk_super_mux*, i32) #1

declare dso_local i32 @super_state_to_src_mask(%struct.tegra_clk_super_mux*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
