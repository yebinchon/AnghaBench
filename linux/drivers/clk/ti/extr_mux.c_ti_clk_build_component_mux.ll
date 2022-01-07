; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/ti/extr_mux.c_ti_clk_build_component_mux.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/ti/extr_mux.c_ti_clk_build_component_mux.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_hw = type { i32 }
%struct.ti_clk_mux = type { i32, i32, i32, i32, i32 }
%struct.clk_omap_mux = type { i32, %struct.clk_hw, i32, %struct.TYPE_2__, i32, i32 }
%struct.TYPE_2__ = type { i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@CLKF_INDEX_STARTS_AT_ONE = common dso_local global i32 0, align 4
@CLK_MUX_INDEX_ONE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.clk_hw* @ti_clk_build_component_mux(%struct.ti_clk_mux* %0) #0 {
  %2 = alloca %struct.clk_hw*, align 8
  %3 = alloca %struct.ti_clk_mux*, align 8
  %4 = alloca %struct.clk_omap_mux*, align 8
  %5 = alloca i32, align 4
  store %struct.ti_clk_mux* %0, %struct.ti_clk_mux** %3, align 8
  %6 = load %struct.ti_clk_mux*, %struct.ti_clk_mux** %3, align 8
  %7 = icmp ne %struct.ti_clk_mux* %6, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %1
  store %struct.clk_hw* null, %struct.clk_hw** %2, align 8
  br label %70

9:                                                ; preds = %1
  %10 = load i32, i32* @GFP_KERNEL, align 4
  %11 = call %struct.clk_omap_mux* @kzalloc(i32 28, i32 %10)
  store %struct.clk_omap_mux* %11, %struct.clk_omap_mux** %4, align 8
  %12 = load %struct.clk_omap_mux*, %struct.clk_omap_mux** %4, align 8
  %13 = icmp ne %struct.clk_omap_mux* %12, null
  br i1 %13, label %18, label %14

14:                                               ; preds = %9
  %15 = load i32, i32* @ENOMEM, align 4
  %16 = sub nsw i32 0, %15
  %17 = call %struct.clk_hw* @ERR_PTR(i32 %16)
  store %struct.clk_hw* %17, %struct.clk_hw** %2, align 8
  br label %70

18:                                               ; preds = %9
  %19 = load %struct.ti_clk_mux*, %struct.ti_clk_mux** %3, align 8
  %20 = getelementptr inbounds %struct.ti_clk_mux, %struct.ti_clk_mux* %19, i32 0, i32 4
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.clk_omap_mux*, %struct.clk_omap_mux** %4, align 8
  %23 = getelementptr inbounds %struct.clk_omap_mux, %struct.clk_omap_mux* %22, i32 0, i32 5
  store i32 %21, i32* %23, align 4
  %24 = load i32, i32* @EINVAL, align 4
  %25 = sub nsw i32 0, %24
  %26 = load %struct.clk_omap_mux*, %struct.clk_omap_mux** %4, align 8
  %27 = getelementptr inbounds %struct.clk_omap_mux, %struct.clk_omap_mux* %26, i32 0, i32 4
  store i32 %25, i32* %27, align 4
  %28 = load %struct.ti_clk_mux*, %struct.ti_clk_mux** %3, align 8
  %29 = getelementptr inbounds %struct.ti_clk_mux, %struct.ti_clk_mux* %28, i32 0, i32 3
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.clk_omap_mux*, %struct.clk_omap_mux** %4, align 8
  %32 = getelementptr inbounds %struct.clk_omap_mux, %struct.clk_omap_mux* %31, i32 0, i32 3
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 1
  store i32 %30, i32* %33, align 4
  %34 = load %struct.ti_clk_mux*, %struct.ti_clk_mux** %3, align 8
  %35 = getelementptr inbounds %struct.ti_clk_mux, %struct.ti_clk_mux* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.clk_omap_mux*, %struct.clk_omap_mux** %4, align 8
  %38 = getelementptr inbounds %struct.clk_omap_mux, %struct.clk_omap_mux* %37, i32 0, i32 3
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  store i32 %36, i32* %39, align 4
  %40 = load %struct.ti_clk_mux*, %struct.ti_clk_mux** %3, align 8
  %41 = getelementptr inbounds %struct.ti_clk_mux, %struct.ti_clk_mux* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @CLKF_INDEX_STARTS_AT_ONE, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %52

46:                                               ; preds = %18
  %47 = load i32, i32* @CLK_MUX_INDEX_ONE, align 4
  %48 = load %struct.clk_omap_mux*, %struct.clk_omap_mux** %4, align 8
  %49 = getelementptr inbounds %struct.clk_omap_mux, %struct.clk_omap_mux* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 4
  %51 = or i32 %50, %47
  store i32 %51, i32* %49, align 4
  br label %52

52:                                               ; preds = %46, %18
  %53 = load %struct.ti_clk_mux*, %struct.ti_clk_mux** %3, align 8
  %54 = getelementptr inbounds %struct.ti_clk_mux, %struct.ti_clk_mux* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  store i32 %55, i32* %5, align 4
  %56 = load i32, i32* %5, align 4
  %57 = sub nsw i32 %56, 1
  %58 = load %struct.clk_omap_mux*, %struct.clk_omap_mux** %4, align 8
  %59 = getelementptr inbounds %struct.clk_omap_mux, %struct.clk_omap_mux* %58, i32 0, i32 0
  store i32 %57, i32* %59, align 4
  %60 = load %struct.clk_omap_mux*, %struct.clk_omap_mux** %4, align 8
  %61 = getelementptr inbounds %struct.clk_omap_mux, %struct.clk_omap_mux* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @fls(i32 %62)
  %64 = shl i32 1, %63
  %65 = sub nsw i32 %64, 1
  %66 = load %struct.clk_omap_mux*, %struct.clk_omap_mux** %4, align 8
  %67 = getelementptr inbounds %struct.clk_omap_mux, %struct.clk_omap_mux* %66, i32 0, i32 0
  store i32 %65, i32* %67, align 4
  %68 = load %struct.clk_omap_mux*, %struct.clk_omap_mux** %4, align 8
  %69 = getelementptr inbounds %struct.clk_omap_mux, %struct.clk_omap_mux* %68, i32 0, i32 1
  store %struct.clk_hw* %69, %struct.clk_hw** %2, align 8
  br label %70

70:                                               ; preds = %52, %14, %8
  %71 = load %struct.clk_hw*, %struct.clk_hw** %2, align 8
  ret %struct.clk_hw* %71
}

declare dso_local %struct.clk_omap_mux* @kzalloc(i32, i32) #1

declare dso_local %struct.clk_hw* @ERR_PTR(i32) #1

declare dso_local i32 @fls(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
