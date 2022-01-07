; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/tegra/extr_clk-emc.c_get_backup_timing.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/tegra/extr_clk-emc.c_get_backup_timing.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.emc_timing = type { i64, i64 }
%struct.tegra_clk_emc = type { i32, %struct.emc_timing* }

@emc_parent_clk_sources = common dso_local global i64* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.emc_timing* (%struct.tegra_clk_emc*, i32)* @get_backup_timing to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.emc_timing* @get_backup_timing(%struct.tegra_clk_emc* %0, i32 %1) #0 {
  %3 = alloca %struct.emc_timing*, align 8
  %4 = alloca %struct.tegra_clk_emc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca %struct.emc_timing*, align 8
  store %struct.tegra_clk_emc* %0, %struct.tegra_clk_emc** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = call i64 (...) @tegra_read_ram_code()
  store i64 %9, i64* %7, align 8
  %10 = load i32, i32* %5, align 4
  %11 = add nsw i32 %10, 1
  store i32 %11, i32* %6, align 4
  br label %12

12:                                               ; preds = %53, %2
  %13 = load i32, i32* %6, align 4
  %14 = load %struct.tegra_clk_emc*, %struct.tegra_clk_emc** %4, align 8
  %15 = getelementptr inbounds %struct.tegra_clk_emc, %struct.tegra_clk_emc* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = icmp slt i32 %13, %16
  br i1 %17, label %18, label %56

18:                                               ; preds = %12
  %19 = load %struct.tegra_clk_emc*, %struct.tegra_clk_emc** %4, align 8
  %20 = getelementptr inbounds %struct.tegra_clk_emc, %struct.tegra_clk_emc* %19, i32 0, i32 1
  %21 = load %struct.emc_timing*, %struct.emc_timing** %20, align 8
  %22 = load i32, i32* %6, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.emc_timing, %struct.emc_timing* %21, i64 %23
  store %struct.emc_timing* %24, %struct.emc_timing** %8, align 8
  %25 = load %struct.emc_timing*, %struct.emc_timing** %8, align 8
  %26 = getelementptr inbounds %struct.emc_timing, %struct.emc_timing* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* %7, align 8
  %29 = icmp ne i64 %27, %28
  br i1 %29, label %30, label %31

30:                                               ; preds = %18
  br label %56

31:                                               ; preds = %18
  %32 = load i64*, i64** @emc_parent_clk_sources, align 8
  %33 = load %struct.emc_timing*, %struct.emc_timing** %8, align 8
  %34 = getelementptr inbounds %struct.emc_timing, %struct.emc_timing* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = getelementptr inbounds i64, i64* %32, i64 %35
  %37 = load i64, i64* %36, align 8
  %38 = load i64*, i64** @emc_parent_clk_sources, align 8
  %39 = load %struct.tegra_clk_emc*, %struct.tegra_clk_emc** %4, align 8
  %40 = getelementptr inbounds %struct.tegra_clk_emc, %struct.tegra_clk_emc* %39, i32 0, i32 1
  %41 = load %struct.emc_timing*, %struct.emc_timing** %40, align 8
  %42 = load i32, i32* %5, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.emc_timing, %struct.emc_timing* %41, i64 %43
  %45 = getelementptr inbounds %struct.emc_timing, %struct.emc_timing* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = getelementptr inbounds i64, i64* %38, i64 %46
  %48 = load i64, i64* %47, align 8
  %49 = icmp ne i64 %37, %48
  br i1 %49, label %50, label %52

50:                                               ; preds = %31
  %51 = load %struct.emc_timing*, %struct.emc_timing** %8, align 8
  store %struct.emc_timing* %51, %struct.emc_timing** %3, align 8
  br label %101

52:                                               ; preds = %31
  br label %53

53:                                               ; preds = %52
  %54 = load i32, i32* %6, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %6, align 4
  br label %12

56:                                               ; preds = %30, %12
  %57 = load i32, i32* %5, align 4
  %58 = sub nsw i32 %57, 1
  store i32 %58, i32* %6, align 4
  br label %59

59:                                               ; preds = %97, %56
  %60 = load i32, i32* %6, align 4
  %61 = icmp sge i32 %60, 0
  br i1 %61, label %62, label %100

62:                                               ; preds = %59
  %63 = load %struct.tegra_clk_emc*, %struct.tegra_clk_emc** %4, align 8
  %64 = getelementptr inbounds %struct.tegra_clk_emc, %struct.tegra_clk_emc* %63, i32 0, i32 1
  %65 = load %struct.emc_timing*, %struct.emc_timing** %64, align 8
  %66 = load i32, i32* %6, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds %struct.emc_timing, %struct.emc_timing* %65, i64 %67
  store %struct.emc_timing* %68, %struct.emc_timing** %8, align 8
  %69 = load %struct.emc_timing*, %struct.emc_timing** %8, align 8
  %70 = getelementptr inbounds %struct.emc_timing, %struct.emc_timing* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = load i64, i64* %7, align 8
  %73 = icmp ne i64 %71, %72
  br i1 %73, label %74, label %75

74:                                               ; preds = %62
  br label %100

75:                                               ; preds = %62
  %76 = load i64*, i64** @emc_parent_clk_sources, align 8
  %77 = load %struct.emc_timing*, %struct.emc_timing** %8, align 8
  %78 = getelementptr inbounds %struct.emc_timing, %struct.emc_timing* %77, i32 0, i32 1
  %79 = load i64, i64* %78, align 8
  %80 = getelementptr inbounds i64, i64* %76, i64 %79
  %81 = load i64, i64* %80, align 8
  %82 = load i64*, i64** @emc_parent_clk_sources, align 8
  %83 = load %struct.tegra_clk_emc*, %struct.tegra_clk_emc** %4, align 8
  %84 = getelementptr inbounds %struct.tegra_clk_emc, %struct.tegra_clk_emc* %83, i32 0, i32 1
  %85 = load %struct.emc_timing*, %struct.emc_timing** %84, align 8
  %86 = load i32, i32* %5, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds %struct.emc_timing, %struct.emc_timing* %85, i64 %87
  %89 = getelementptr inbounds %struct.emc_timing, %struct.emc_timing* %88, i32 0, i32 1
  %90 = load i64, i64* %89, align 8
  %91 = getelementptr inbounds i64, i64* %82, i64 %90
  %92 = load i64, i64* %91, align 8
  %93 = icmp ne i64 %81, %92
  br i1 %93, label %94, label %96

94:                                               ; preds = %75
  %95 = load %struct.emc_timing*, %struct.emc_timing** %8, align 8
  store %struct.emc_timing* %95, %struct.emc_timing** %3, align 8
  br label %101

96:                                               ; preds = %75
  br label %97

97:                                               ; preds = %96
  %98 = load i32, i32* %6, align 4
  %99 = add nsw i32 %98, -1
  store i32 %99, i32* %6, align 4
  br label %59

100:                                              ; preds = %74, %59
  store %struct.emc_timing* null, %struct.emc_timing** %3, align 8
  br label %101

101:                                              ; preds = %100, %94, %50
  %102 = load %struct.emc_timing*, %struct.emc_timing** %3, align 8
  ret %struct.emc_timing* %102
}

declare dso_local i64 @tegra_read_ram_code(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
