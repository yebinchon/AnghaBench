; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/ti/extr_mux.c_ti_clk_mux_get_parent.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/ti/extr_mux.c_ti_clk_mux_get_parent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 (i32*)* }
%struct.clk_hw = type { i32 }
%struct.clk_omap_mux = type { i32, i32, i32*, i32, i32 }

@ti_clk_ll_ops = common dso_local global %struct.TYPE_2__* null, align 8
@EINVAL = common dso_local global i32 0, align 4
@CLK_MUX_INDEX_BIT = common dso_local global i32 0, align 4
@CLK_MUX_INDEX_ONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.clk_hw*)* @ti_clk_mux_get_parent to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ti_clk_mux_get_parent(%struct.clk_hw* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.clk_hw*, align 8
  %4 = alloca %struct.clk_omap_mux*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.clk_hw* %0, %struct.clk_hw** %3, align 8
  %8 = load %struct.clk_hw*, %struct.clk_hw** %3, align 8
  %9 = call %struct.clk_omap_mux* @to_clk_omap_mux(%struct.clk_hw* %8)
  store %struct.clk_omap_mux* %9, %struct.clk_omap_mux** %4, align 8
  %10 = load %struct.clk_hw*, %struct.clk_hw** %3, align 8
  %11 = call i32 @clk_hw_get_num_parents(%struct.clk_hw* %10)
  store i32 %11, i32* %5, align 4
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ti_clk_ll_ops, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32 (i32*)*, i32 (i32*)** %13, align 8
  %15 = load %struct.clk_omap_mux*, %struct.clk_omap_mux** %4, align 8
  %16 = getelementptr inbounds %struct.clk_omap_mux, %struct.clk_omap_mux* %15, i32 0, i32 4
  %17 = call i32 %14(i32* %16)
  %18 = load %struct.clk_omap_mux*, %struct.clk_omap_mux** %4, align 8
  %19 = getelementptr inbounds %struct.clk_omap_mux, %struct.clk_omap_mux* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = ashr i32 %17, %20
  store i32 %21, i32* %6, align 4
  %22 = load %struct.clk_omap_mux*, %struct.clk_omap_mux** %4, align 8
  %23 = getelementptr inbounds %struct.clk_omap_mux, %struct.clk_omap_mux* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* %6, align 4
  %26 = and i32 %25, %24
  store i32 %26, i32* %6, align 4
  %27 = load %struct.clk_omap_mux*, %struct.clk_omap_mux** %4, align 8
  %28 = getelementptr inbounds %struct.clk_omap_mux, %struct.clk_omap_mux* %27, i32 0, i32 2
  %29 = load i32*, i32** %28, align 8
  %30 = icmp ne i32* %29, null
  br i1 %30, label %31, label %55

31:                                               ; preds = %1
  store i32 0, i32* %7, align 4
  br label %32

32:                                               ; preds = %49, %31
  %33 = load i32, i32* %7, align 4
  %34 = load i32, i32* %5, align 4
  %35 = icmp slt i32 %33, %34
  br i1 %35, label %36, label %52

36:                                               ; preds = %32
  %37 = load %struct.clk_omap_mux*, %struct.clk_omap_mux** %4, align 8
  %38 = getelementptr inbounds %struct.clk_omap_mux, %struct.clk_omap_mux* %37, i32 0, i32 2
  %39 = load i32*, i32** %38, align 8
  %40 = load i32, i32* %7, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i32, i32* %39, i64 %41
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* %6, align 4
  %45 = icmp eq i32 %43, %44
  br i1 %45, label %46, label %48

46:                                               ; preds = %36
  %47 = load i32, i32* %7, align 4
  store i32 %47, i32* %2, align 4
  br label %91

48:                                               ; preds = %36
  br label %49

49:                                               ; preds = %48
  %50 = load i32, i32* %7, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %7, align 4
  br label %32

52:                                               ; preds = %32
  %53 = load i32, i32* @EINVAL, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %2, align 4
  br label %91

55:                                               ; preds = %1
  %56 = load i32, i32* %6, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %69

58:                                               ; preds = %55
  %59 = load %struct.clk_omap_mux*, %struct.clk_omap_mux** %4, align 8
  %60 = getelementptr inbounds %struct.clk_omap_mux, %struct.clk_omap_mux* %59, i32 0, i32 3
  %61 = load i32, i32* %60, align 8
  %62 = load i32, i32* @CLK_MUX_INDEX_BIT, align 4
  %63 = and i32 %61, %62
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %69

65:                                               ; preds = %58
  %66 = load i32, i32* %6, align 4
  %67 = call i32 @ffs(i32 %66)
  %68 = sub nsw i32 %67, 1
  store i32 %68, i32* %6, align 4
  br label %69

69:                                               ; preds = %65, %58, %55
  %70 = load i32, i32* %6, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %82

72:                                               ; preds = %69
  %73 = load %struct.clk_omap_mux*, %struct.clk_omap_mux** %4, align 8
  %74 = getelementptr inbounds %struct.clk_omap_mux, %struct.clk_omap_mux* %73, i32 0, i32 3
  %75 = load i32, i32* %74, align 8
  %76 = load i32, i32* @CLK_MUX_INDEX_ONE, align 4
  %77 = and i32 %75, %76
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %82

79:                                               ; preds = %72
  %80 = load i32, i32* %6, align 4
  %81 = add nsw i32 %80, -1
  store i32 %81, i32* %6, align 4
  br label %82

82:                                               ; preds = %79, %72, %69
  %83 = load i32, i32* %6, align 4
  %84 = load i32, i32* %5, align 4
  %85 = icmp sge i32 %83, %84
  br i1 %85, label %86, label %89

86:                                               ; preds = %82
  %87 = load i32, i32* @EINVAL, align 4
  %88 = sub nsw i32 0, %87
  store i32 %88, i32* %2, align 4
  br label %91

89:                                               ; preds = %82
  %90 = load i32, i32* %6, align 4
  store i32 %90, i32* %2, align 4
  br label %91

91:                                               ; preds = %89, %86, %52, %46
  %92 = load i32, i32* %2, align 4
  ret i32 %92
}

declare dso_local %struct.clk_omap_mux* @to_clk_omap_mux(%struct.clk_hw*) #1

declare dso_local i32 @clk_hw_get_num_parents(%struct.clk_hw*) #1

declare dso_local i32 @ffs(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
