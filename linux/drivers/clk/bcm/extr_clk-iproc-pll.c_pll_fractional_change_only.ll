; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/bcm/extr_clk-iproc-pll.c_pll_fractional_change_only.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/bcm/extr_clk-iproc-pll.c_pll_fractional_change_only.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iproc_pll = type { i64, i64, %struct.iproc_pll_ctrl* }
%struct.iproc_pll_ctrl = type { %struct.TYPE_6__, %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { i32, i32, i64 }
%struct.TYPE_5__ = type { i32, i32, i64 }
%struct.TYPE_4__ = type { i32, i64 }
%struct.iproc_pll_vco_param = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iproc_pll*, %struct.iproc_pll_vco_param*)* @pll_fractional_change_only to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pll_fractional_change_only(%struct.iproc_pll* %0, %struct.iproc_pll_vco_param* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.iproc_pll*, align 8
  %5 = alloca %struct.iproc_pll_vco_param*, align 8
  %6 = alloca %struct.iproc_pll_ctrl*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.iproc_pll* %0, %struct.iproc_pll** %4, align 8
  store %struct.iproc_pll_vco_param* %1, %struct.iproc_pll_vco_param** %5, align 8
  %10 = load %struct.iproc_pll*, %struct.iproc_pll** %4, align 8
  %11 = getelementptr inbounds %struct.iproc_pll, %struct.iproc_pll* %10, i32 0, i32 2
  %12 = load %struct.iproc_pll_ctrl*, %struct.iproc_pll_ctrl** %11, align 8
  store %struct.iproc_pll_ctrl* %12, %struct.iproc_pll_ctrl** %6, align 8
  %13 = load %struct.iproc_pll*, %struct.iproc_pll** %4, align 8
  %14 = getelementptr inbounds %struct.iproc_pll, %struct.iproc_pll* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = load %struct.iproc_pll_ctrl*, %struct.iproc_pll_ctrl** %6, align 8
  %17 = getelementptr inbounds %struct.iproc_pll_ctrl, %struct.iproc_pll_ctrl* %16, i32 0, i32 2
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = add nsw i64 %15, %19
  %21 = call i32 @readl(i64 %20)
  store i32 %21, i32* %7, align 4
  %22 = load i32, i32* %7, align 4
  %23 = load %struct.iproc_pll_ctrl*, %struct.iproc_pll_ctrl** %6, align 8
  %24 = getelementptr inbounds %struct.iproc_pll_ctrl, %struct.iproc_pll_ctrl* %23, i32 0, i32 2
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = shl i32 1, %26
  %28 = and i32 %22, %27
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %88

31:                                               ; preds = %2
  %32 = load %struct.iproc_pll*, %struct.iproc_pll** %4, align 8
  %33 = getelementptr inbounds %struct.iproc_pll, %struct.iproc_pll* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load %struct.iproc_pll_ctrl*, %struct.iproc_pll_ctrl** %6, align 8
  %36 = getelementptr inbounds %struct.iproc_pll_ctrl, %struct.iproc_pll_ctrl* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 2
  %38 = load i64, i64* %37, align 8
  %39 = add nsw i64 %34, %38
  %40 = call i32 @readl(i64 %39)
  store i32 %40, i32* %7, align 4
  %41 = load i32, i32* %7, align 4
  %42 = load %struct.iproc_pll_ctrl*, %struct.iproc_pll_ctrl** %6, align 8
  %43 = getelementptr inbounds %struct.iproc_pll_ctrl, %struct.iproc_pll_ctrl* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = ashr i32 %41, %45
  %47 = load %struct.iproc_pll_ctrl*, %struct.iproc_pll_ctrl** %6, align 8
  %48 = getelementptr inbounds %struct.iproc_pll_ctrl, %struct.iproc_pll_ctrl* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @bit_mask(i32 %50)
  %52 = and i32 %46, %51
  store i32 %52, i32* %8, align 4
  %53 = load i32, i32* %8, align 4
  %54 = load %struct.iproc_pll_vco_param*, %struct.iproc_pll_vco_param** %5, align 8
  %55 = getelementptr inbounds %struct.iproc_pll_vco_param, %struct.iproc_pll_vco_param* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = icmp ne i32 %53, %56
  br i1 %57, label %58, label %59

58:                                               ; preds = %31
  store i32 0, i32* %3, align 4
  br label %88

59:                                               ; preds = %31
  %60 = load %struct.iproc_pll*, %struct.iproc_pll** %4, align 8
  %61 = getelementptr inbounds %struct.iproc_pll, %struct.iproc_pll* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = load %struct.iproc_pll_ctrl*, %struct.iproc_pll_ctrl** %6, align 8
  %64 = getelementptr inbounds %struct.iproc_pll_ctrl, %struct.iproc_pll_ctrl* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i32 0, i32 2
  %66 = load i64, i64* %65, align 8
  %67 = add nsw i64 %62, %66
  %68 = call i32 @readl(i64 %67)
  store i32 %68, i32* %7, align 4
  %69 = load i32, i32* %7, align 4
  %70 = load %struct.iproc_pll_ctrl*, %struct.iproc_pll_ctrl** %6, align 8
  %71 = getelementptr inbounds %struct.iproc_pll_ctrl, %struct.iproc_pll_ctrl* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = ashr i32 %69, %73
  %75 = load %struct.iproc_pll_ctrl*, %struct.iproc_pll_ctrl** %6, align 8
  %76 = getelementptr inbounds %struct.iproc_pll_ctrl, %struct.iproc_pll_ctrl* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @bit_mask(i32 %78)
  %80 = and i32 %74, %79
  store i32 %80, i32* %9, align 4
  %81 = load i32, i32* %9, align 4
  %82 = load %struct.iproc_pll_vco_param*, %struct.iproc_pll_vco_param** %5, align 8
  %83 = getelementptr inbounds %struct.iproc_pll_vco_param, %struct.iproc_pll_vco_param* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = icmp ne i32 %81, %84
  br i1 %85, label %86, label %87

86:                                               ; preds = %59
  store i32 0, i32* %3, align 4
  br label %88

87:                                               ; preds = %59
  store i32 1, i32* %3, align 4
  br label %88

88:                                               ; preds = %87, %86, %58, %30
  %89 = load i32, i32* %3, align 4
  ret i32 %89
}

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @bit_mask(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
