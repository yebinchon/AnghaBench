; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/tegra/extr_clk-tegra20.c_tegra20_clk_src_onecell_get.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/tegra/extr_clk-tegra20.c_tegra20_clk_src_onecell_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk = type { i32 }
%struct.of_phandle_args = type { i64* }
%struct.clk_hw = type { i32 }

@TEGRA20_CLK_CDEV1 = common dso_local global i64 0, align 8
@TEGRA20_CLK_CDEV2 = common dso_local global i64 0, align 8
@EPROBE_DEFER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.clk* (%struct.of_phandle_args*, i8*)* @tegra20_clk_src_onecell_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.clk* @tegra20_clk_src_onecell_get(%struct.of_phandle_args* %0, i8* %1) #0 {
  %3 = alloca %struct.clk*, align 8
  %4 = alloca %struct.of_phandle_args*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.clk_hw*, align 8
  %7 = alloca %struct.clk_hw*, align 8
  %8 = alloca %struct.clk*, align 8
  store %struct.of_phandle_args* %0, %struct.of_phandle_args** %4, align 8
  store i8* %1, i8** %5, align 8
  %9 = load %struct.of_phandle_args*, %struct.of_phandle_args** %4, align 8
  %10 = load i8*, i8** %5, align 8
  %11 = call %struct.clk* @of_clk_src_onecell_get(%struct.of_phandle_args* %9, i8* %10)
  store %struct.clk* %11, %struct.clk** %8, align 8
  %12 = load %struct.clk*, %struct.clk** %8, align 8
  %13 = call i64 @IS_ERR(%struct.clk* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %2
  %16 = load %struct.clk*, %struct.clk** %8, align 8
  store %struct.clk* %16, %struct.clk** %3, align 8
  br label %47

17:                                               ; preds = %2
  %18 = load %struct.of_phandle_args*, %struct.of_phandle_args** %4, align 8
  %19 = getelementptr inbounds %struct.of_phandle_args, %struct.of_phandle_args* %18, i32 0, i32 0
  %20 = load i64*, i64** %19, align 8
  %21 = getelementptr inbounds i64, i64* %20, i64 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @TEGRA20_CLK_CDEV1, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %33, label %25

25:                                               ; preds = %17
  %26 = load %struct.of_phandle_args*, %struct.of_phandle_args** %4, align 8
  %27 = getelementptr inbounds %struct.of_phandle_args, %struct.of_phandle_args* %26, i32 0, i32 0
  %28 = load i64*, i64** %27, align 8
  %29 = getelementptr inbounds i64, i64* %28, i64 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @TEGRA20_CLK_CDEV2, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %45

33:                                               ; preds = %25, %17
  %34 = load %struct.clk*, %struct.clk** %8, align 8
  %35 = call %struct.clk_hw* @__clk_get_hw(%struct.clk* %34)
  store %struct.clk_hw* %35, %struct.clk_hw** %7, align 8
  %36 = load %struct.clk_hw*, %struct.clk_hw** %7, align 8
  %37 = call %struct.clk_hw* @clk_hw_get_parent(%struct.clk_hw* %36)
  store %struct.clk_hw* %37, %struct.clk_hw** %6, align 8
  %38 = load %struct.clk_hw*, %struct.clk_hw** %6, align 8
  %39 = icmp ne %struct.clk_hw* %38, null
  br i1 %39, label %44, label %40

40:                                               ; preds = %33
  %41 = load i32, i32* @EPROBE_DEFER, align 4
  %42 = sub nsw i32 0, %41
  %43 = call %struct.clk* @ERR_PTR(i32 %42)
  store %struct.clk* %43, %struct.clk** %3, align 8
  br label %47

44:                                               ; preds = %33
  br label %45

45:                                               ; preds = %44, %25
  %46 = load %struct.clk*, %struct.clk** %8, align 8
  store %struct.clk* %46, %struct.clk** %3, align 8
  br label %47

47:                                               ; preds = %45, %40, %15
  %48 = load %struct.clk*, %struct.clk** %3, align 8
  ret %struct.clk* %48
}

declare dso_local %struct.clk* @of_clk_src_onecell_get(%struct.of_phandle_args*, i8*) #1

declare dso_local i64 @IS_ERR(%struct.clk*) #1

declare dso_local %struct.clk_hw* @__clk_get_hw(%struct.clk*) #1

declare dso_local %struct.clk_hw* @clk_hw_get_parent(%struct.clk_hw*) #1

declare dso_local %struct.clk* @ERR_PTR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
