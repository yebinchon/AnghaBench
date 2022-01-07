; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/qcom/extr_clk-rcg2.c_clk_rcg2_enable_dfs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/qcom/extr_clk-rcg2.c_clk_rcg2_enable_dfs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_rcg_dfs_data = type { %struct.clk_init_data*, %struct.clk_rcg2* }
%struct.clk_init_data = type { i32*, i32 }
%struct.clk_rcg2 = type { i32*, i64 }
%struct.regmap = type { i32 }

@SE_CMD_DFSR_OFFSET = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@SE_CMD_DFS_EN = common dso_local global i32 0, align 4
@CLK_GET_RATE_NOCACHE = common dso_local global i32 0, align 4
@clk_rcg2_dfs_ops = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.clk_rcg_dfs_data*, %struct.regmap*)* @clk_rcg2_enable_dfs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @clk_rcg2_enable_dfs(%struct.clk_rcg_dfs_data* %0, %struct.regmap* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.clk_rcg_dfs_data*, align 8
  %5 = alloca %struct.regmap*, align 8
  %6 = alloca %struct.clk_rcg2*, align 8
  %7 = alloca %struct.clk_init_data*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.clk_rcg_dfs_data* %0, %struct.clk_rcg_dfs_data** %4, align 8
  store %struct.regmap* %1, %struct.regmap** %5, align 8
  %10 = load %struct.clk_rcg_dfs_data*, %struct.clk_rcg_dfs_data** %4, align 8
  %11 = getelementptr inbounds %struct.clk_rcg_dfs_data, %struct.clk_rcg_dfs_data* %10, i32 0, i32 1
  %12 = load %struct.clk_rcg2*, %struct.clk_rcg2** %11, align 8
  store %struct.clk_rcg2* %12, %struct.clk_rcg2** %6, align 8
  %13 = load %struct.clk_rcg_dfs_data*, %struct.clk_rcg_dfs_data** %4, align 8
  %14 = getelementptr inbounds %struct.clk_rcg_dfs_data, %struct.clk_rcg_dfs_data* %13, i32 0, i32 0
  %15 = load %struct.clk_init_data*, %struct.clk_init_data** %14, align 8
  store %struct.clk_init_data* %15, %struct.clk_init_data** %7, align 8
  %16 = load %struct.regmap*, %struct.regmap** %5, align 8
  %17 = load %struct.clk_rcg2*, %struct.clk_rcg2** %6, align 8
  %18 = getelementptr inbounds %struct.clk_rcg2, %struct.clk_rcg2* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @SE_CMD_DFSR_OFFSET, align 8
  %21 = add nsw i64 %19, %20
  %22 = call i32 @regmap_read(%struct.regmap* %16, i64 %21, i32* %8)
  store i32 %22, i32* %9, align 4
  %23 = load i32, i32* %9, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %2
  %26 = load i32, i32* @EINVAL, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %3, align 4
  br label %44

28:                                               ; preds = %2
  %29 = load i32, i32* %8, align 4
  %30 = load i32, i32* @SE_CMD_DFS_EN, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %34, label %33

33:                                               ; preds = %28
  store i32 0, i32* %3, align 4
  br label %44

34:                                               ; preds = %28
  %35 = load i32, i32* @CLK_GET_RATE_NOCACHE, align 4
  %36 = load %struct.clk_init_data*, %struct.clk_init_data** %7, align 8
  %37 = getelementptr inbounds %struct.clk_init_data, %struct.clk_init_data* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 8
  %39 = or i32 %38, %35
  store i32 %39, i32* %37, align 8
  %40 = load %struct.clk_init_data*, %struct.clk_init_data** %7, align 8
  %41 = getelementptr inbounds %struct.clk_init_data, %struct.clk_init_data* %40, i32 0, i32 0
  store i32* @clk_rcg2_dfs_ops, i32** %41, align 8
  %42 = load %struct.clk_rcg2*, %struct.clk_rcg2** %6, align 8
  %43 = getelementptr inbounds %struct.clk_rcg2, %struct.clk_rcg2* %42, i32 0, i32 0
  store i32* null, i32** %43, align 8
  store i32 0, i32* %3, align 4
  br label %44

44:                                               ; preds = %34, %33, %25
  %45 = load i32, i32* %3, align 4
  ret i32 %45
}

declare dso_local i32 @regmap_read(%struct.regmap*, i64, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
