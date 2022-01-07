; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/samsung/extr_clk-exynos5-subcmu.c_exynos5_subcmus_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/samsung/extr_clk-exynos5-subcmu.c_exynos5_subcmus_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.samsung_clk_provider = type { i32 }
%struct.exynos5_subcmu_info = type { i32, i32, i32, i32 }

@ctx = common dso_local global %struct.samsung_clk_provider* null, align 8
@cmu = common dso_local global %struct.exynos5_subcmu_info** null, align 8
@nr_cmus = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @exynos5_subcmus_init(%struct.samsung_clk_provider* %0, i32 %1, %struct.exynos5_subcmu_info** %2) #0 {
  %4 = alloca %struct.samsung_clk_provider*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.exynos5_subcmu_info**, align 8
  store %struct.samsung_clk_provider* %0, %struct.samsung_clk_provider** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.exynos5_subcmu_info** %2, %struct.exynos5_subcmu_info*** %6, align 8
  %7 = load %struct.samsung_clk_provider*, %struct.samsung_clk_provider** %4, align 8
  store %struct.samsung_clk_provider* %7, %struct.samsung_clk_provider** @ctx, align 8
  %8 = load %struct.exynos5_subcmu_info**, %struct.exynos5_subcmu_info*** %6, align 8
  store %struct.exynos5_subcmu_info** %8, %struct.exynos5_subcmu_info*** @cmu, align 8
  %9 = load i32, i32* %5, align 4
  store i32 %9, i32* @nr_cmus, align 4
  br label %10

10:                                               ; preds = %37, %3
  %11 = load i32, i32* %5, align 4
  %12 = add nsw i32 %11, -1
  store i32 %12, i32* %5, align 4
  %13 = icmp ne i32 %11, 0
  br i1 %13, label %14, label %40

14:                                               ; preds = %10
  %15 = load %struct.samsung_clk_provider*, %struct.samsung_clk_provider** @ctx, align 8
  %16 = load %struct.exynos5_subcmu_info**, %struct.exynos5_subcmu_info*** %6, align 8
  %17 = load %struct.exynos5_subcmu_info*, %struct.exynos5_subcmu_info** %16, align 8
  %18 = getelementptr inbounds %struct.exynos5_subcmu_info, %struct.exynos5_subcmu_info* %17, i32 0, i32 3
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.exynos5_subcmu_info**, %struct.exynos5_subcmu_info*** %6, align 8
  %21 = load %struct.exynos5_subcmu_info*, %struct.exynos5_subcmu_info** %20, align 8
  %22 = getelementptr inbounds %struct.exynos5_subcmu_info, %struct.exynos5_subcmu_info* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @exynos5_subcmu_defer_gate(%struct.samsung_clk_provider* %15, i32 %19, i32 %23)
  %25 = load %struct.samsung_clk_provider*, %struct.samsung_clk_provider** @ctx, align 8
  %26 = getelementptr inbounds %struct.samsung_clk_provider, %struct.samsung_clk_provider* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.exynos5_subcmu_info**, %struct.exynos5_subcmu_info*** %6, align 8
  %29 = load %struct.exynos5_subcmu_info*, %struct.exynos5_subcmu_info** %28, align 8
  %30 = getelementptr inbounds %struct.exynos5_subcmu_info, %struct.exynos5_subcmu_info* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.exynos5_subcmu_info**, %struct.exynos5_subcmu_info*** %6, align 8
  %33 = load %struct.exynos5_subcmu_info*, %struct.exynos5_subcmu_info** %32, align 8
  %34 = getelementptr inbounds %struct.exynos5_subcmu_info, %struct.exynos5_subcmu_info* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @exynos5_subcmu_clk_save(i32 %27, i32 %31, i32 %35)
  br label %37

37:                                               ; preds = %14
  %38 = load %struct.exynos5_subcmu_info**, %struct.exynos5_subcmu_info*** %6, align 8
  %39 = getelementptr inbounds %struct.exynos5_subcmu_info*, %struct.exynos5_subcmu_info** %38, i32 1
  store %struct.exynos5_subcmu_info** %39, %struct.exynos5_subcmu_info*** %6, align 8
  br label %10

40:                                               ; preds = %10
  ret void
}

declare dso_local i32 @exynos5_subcmu_defer_gate(%struct.samsung_clk_provider*, i32, i32) #1

declare dso_local i32 @exynos5_subcmu_clk_save(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
