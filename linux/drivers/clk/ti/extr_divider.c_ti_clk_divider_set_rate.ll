; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/ti/extr_divider.c_ti_clk_divider_set_rate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/ti/extr_divider.c_ti_clk_divider_set_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 (i32*)*, i32 (i32, i32*)* }
%struct.clk_hw = type { i32 }
%struct.clk_omap_divider = type { i32, i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@CLK_DIVIDER_HIWORD_MASK = common dso_local global i32 0, align 4
@ti_clk_ll_ops = common dso_local global %struct.TYPE_2__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.clk_hw*, i64, i64)* @ti_clk_divider_set_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ti_clk_divider_set_rate(%struct.clk_hw* %0, i64 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.clk_hw*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.clk_omap_divider*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.clk_hw* %0, %struct.clk_hw** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  %12 = load %struct.clk_hw*, %struct.clk_hw** %5, align 8
  %13 = icmp ne %struct.clk_hw* %12, null
  br i1 %13, label %14, label %17

14:                                               ; preds = %3
  %15 = load i64, i64* %6, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %20, label %17

17:                                               ; preds = %14, %3
  %18 = load i32, i32* @EINVAL, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %4, align 4
  br label %88

20:                                               ; preds = %14
  %21 = load %struct.clk_hw*, %struct.clk_hw** %5, align 8
  %22 = call %struct.clk_omap_divider* @to_clk_omap_divider(%struct.clk_hw* %21)
  store %struct.clk_omap_divider* %22, %struct.clk_omap_divider** %8, align 8
  %23 = load i64, i64* %7, align 8
  %24 = load i64, i64* %6, align 8
  %25 = call i32 @DIV_ROUND_UP(i64 %23, i64 %24)
  store i32 %25, i32* %9, align 4
  %26 = load %struct.clk_omap_divider*, %struct.clk_omap_divider** %8, align 8
  %27 = load i32, i32* %9, align 4
  %28 = call i32 @_get_val(%struct.clk_omap_divider* %26, i32 %27)
  store i32 %28, i32* %10, align 4
  %29 = load i32, i32* %10, align 4
  %30 = load %struct.clk_omap_divider*, %struct.clk_omap_divider** %8, align 8
  %31 = call i32 @div_mask(%struct.clk_omap_divider* %30)
  %32 = icmp ugt i32 %29, %31
  br i1 %32, label %33, label %36

33:                                               ; preds = %20
  %34 = load %struct.clk_omap_divider*, %struct.clk_omap_divider** %8, align 8
  %35 = call i32 @div_mask(%struct.clk_omap_divider* %34)
  store i32 %35, i32* %10, align 4
  br label %36

36:                                               ; preds = %33, %20
  %37 = load %struct.clk_omap_divider*, %struct.clk_omap_divider** %8, align 8
  %38 = getelementptr inbounds %struct.clk_omap_divider, %struct.clk_omap_divider* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @CLK_DIVIDER_HIWORD_MASK, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %51

43:                                               ; preds = %36
  %44 = load %struct.clk_omap_divider*, %struct.clk_omap_divider** %8, align 8
  %45 = call i32 @div_mask(%struct.clk_omap_divider* %44)
  %46 = load %struct.clk_omap_divider*, %struct.clk_omap_divider** %8, align 8
  %47 = getelementptr inbounds %struct.clk_omap_divider, %struct.clk_omap_divider* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = add nsw i32 %48, 16
  %50 = shl i32 %45, %49
  store i32 %50, i32* %11, align 4
  br label %67

51:                                               ; preds = %36
  %52 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ti_clk_ll_ops, align 8
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 0
  %54 = load i32 (i32*)*, i32 (i32*)** %53, align 8
  %55 = load %struct.clk_omap_divider*, %struct.clk_omap_divider** %8, align 8
  %56 = getelementptr inbounds %struct.clk_omap_divider, %struct.clk_omap_divider* %55, i32 0, i32 3
  %57 = call i32 %54(i32* %56)
  store i32 %57, i32* %11, align 4
  %58 = load %struct.clk_omap_divider*, %struct.clk_omap_divider** %8, align 8
  %59 = call i32 @div_mask(%struct.clk_omap_divider* %58)
  %60 = load %struct.clk_omap_divider*, %struct.clk_omap_divider** %8, align 8
  %61 = getelementptr inbounds %struct.clk_omap_divider, %struct.clk_omap_divider* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = shl i32 %59, %62
  %64 = xor i32 %63, -1
  %65 = load i32, i32* %11, align 4
  %66 = and i32 %65, %64
  store i32 %66, i32* %11, align 4
  br label %67

67:                                               ; preds = %51, %43
  %68 = load i32, i32* %10, align 4
  %69 = load %struct.clk_omap_divider*, %struct.clk_omap_divider** %8, align 8
  %70 = getelementptr inbounds %struct.clk_omap_divider, %struct.clk_omap_divider* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = shl i32 %68, %71
  %73 = load i32, i32* %11, align 4
  %74 = or i32 %73, %72
  store i32 %74, i32* %11, align 4
  %75 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ti_clk_ll_ops, align 8
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 1
  %77 = load i32 (i32, i32*)*, i32 (i32, i32*)** %76, align 8
  %78 = load i32, i32* %11, align 4
  %79 = load %struct.clk_omap_divider*, %struct.clk_omap_divider** %8, align 8
  %80 = getelementptr inbounds %struct.clk_omap_divider, %struct.clk_omap_divider* %79, i32 0, i32 3
  %81 = call i32 %77(i32 %78, i32* %80)
  %82 = load %struct.clk_omap_divider*, %struct.clk_omap_divider** %8, align 8
  %83 = getelementptr inbounds %struct.clk_omap_divider, %struct.clk_omap_divider* %82, i32 0, i32 3
  %84 = load %struct.clk_omap_divider*, %struct.clk_omap_divider** %8, align 8
  %85 = getelementptr inbounds %struct.clk_omap_divider, %struct.clk_omap_divider* %84, i32 0, i32 2
  %86 = load i32, i32* %85, align 4
  %87 = call i32 @ti_clk_latch(i32* %83, i32 %86)
  store i32 0, i32* %4, align 4
  br label %88

88:                                               ; preds = %67, %17
  %89 = load i32, i32* %4, align 4
  ret i32 %89
}

declare dso_local %struct.clk_omap_divider* @to_clk_omap_divider(%struct.clk_hw*) #1

declare dso_local i32 @DIV_ROUND_UP(i64, i64) #1

declare dso_local i32 @_get_val(%struct.clk_omap_divider*, i32) #1

declare dso_local i32 @div_mask(%struct.clk_omap_divider*) #1

declare dso_local i32 @ti_clk_latch(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
