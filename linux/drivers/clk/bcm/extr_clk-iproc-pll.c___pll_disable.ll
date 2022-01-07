; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/bcm/extr_clk-iproc-pll.c___pll_disable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/bcm/extr_clk-iproc-pll.c___pll_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iproc_pll = type { i64, i64, i64, %struct.iproc_pll_ctrl* }
%struct.iproc_pll_ctrl = type { i32, %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32, i32, i64, i32 }
%struct.TYPE_3__ = type { i32, i64 }

@IPROC_CLK_PLL_ASIU = common dso_local global i32 0, align 4
@IPROC_CLK_EMBED_PWRCTRL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.iproc_pll*)* @__pll_disable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__pll_disable(%struct.iproc_pll* %0) #0 {
  %2 = alloca %struct.iproc_pll*, align 8
  %3 = alloca %struct.iproc_pll_ctrl*, align 8
  %4 = alloca i32, align 4
  store %struct.iproc_pll* %0, %struct.iproc_pll** %2, align 8
  %5 = load %struct.iproc_pll*, %struct.iproc_pll** %2, align 8
  %6 = getelementptr inbounds %struct.iproc_pll, %struct.iproc_pll* %5, i32 0, i32 3
  %7 = load %struct.iproc_pll_ctrl*, %struct.iproc_pll_ctrl** %6, align 8
  store %struct.iproc_pll_ctrl* %7, %struct.iproc_pll_ctrl** %3, align 8
  %8 = load %struct.iproc_pll_ctrl*, %struct.iproc_pll_ctrl** %3, align 8
  %9 = getelementptr inbounds %struct.iproc_pll_ctrl, %struct.iproc_pll_ctrl* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = load i32, i32* @IPROC_CLK_PLL_ASIU, align 4
  %12 = and i32 %10, %11
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %42

14:                                               ; preds = %1
  %15 = load %struct.iproc_pll*, %struct.iproc_pll** %2, align 8
  %16 = getelementptr inbounds %struct.iproc_pll, %struct.iproc_pll* %15, i32 0, i32 2
  %17 = load i64, i64* %16, align 8
  %18 = load %struct.iproc_pll_ctrl*, %struct.iproc_pll_ctrl** %3, align 8
  %19 = getelementptr inbounds %struct.iproc_pll_ctrl, %struct.iproc_pll_ctrl* %18, i32 0, i32 2
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = add nsw i64 %17, %21
  %23 = call i32 @readl(i64 %22)
  store i32 %23, i32* %4, align 4
  %24 = load %struct.iproc_pll_ctrl*, %struct.iproc_pll_ctrl** %3, align 8
  %25 = getelementptr inbounds %struct.iproc_pll_ctrl, %struct.iproc_pll_ctrl* %24, i32 0, i32 2
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = shl i32 1, %27
  %29 = xor i32 %28, -1
  %30 = load i32, i32* %4, align 4
  %31 = and i32 %30, %29
  store i32 %31, i32* %4, align 4
  %32 = load %struct.iproc_pll*, %struct.iproc_pll** %2, align 8
  %33 = load %struct.iproc_pll*, %struct.iproc_pll** %2, align 8
  %34 = getelementptr inbounds %struct.iproc_pll, %struct.iproc_pll* %33, i32 0, i32 2
  %35 = load i64, i64* %34, align 8
  %36 = load %struct.iproc_pll_ctrl*, %struct.iproc_pll_ctrl** %3, align 8
  %37 = getelementptr inbounds %struct.iproc_pll_ctrl, %struct.iproc_pll_ctrl* %36, i32 0, i32 2
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = load i32, i32* %4, align 4
  %41 = call i32 @iproc_pll_write(%struct.iproc_pll* %32, i64 %35, i64 %39, i32 %40)
  br label %42

42:                                               ; preds = %14, %1
  %43 = load %struct.iproc_pll_ctrl*, %struct.iproc_pll_ctrl** %3, align 8
  %44 = getelementptr inbounds %struct.iproc_pll_ctrl, %struct.iproc_pll_ctrl* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = load i32, i32* @IPROC_CLK_EMBED_PWRCTRL, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %81

49:                                               ; preds = %42
  %50 = load %struct.iproc_pll*, %struct.iproc_pll** %2, align 8
  %51 = getelementptr inbounds %struct.iproc_pll, %struct.iproc_pll* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = load %struct.iproc_pll_ctrl*, %struct.iproc_pll_ctrl** %3, align 8
  %54 = getelementptr inbounds %struct.iproc_pll_ctrl, %struct.iproc_pll_ctrl* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 2
  %56 = load i64, i64* %55, align 8
  %57 = add nsw i64 %52, %56
  %58 = call i32 @readl(i64 %57)
  store i32 %58, i32* %4, align 4
  %59 = load %struct.iproc_pll_ctrl*, %struct.iproc_pll_ctrl** %3, align 8
  %60 = getelementptr inbounds %struct.iproc_pll_ctrl, %struct.iproc_pll_ctrl* %59, i32 0, i32 1
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 3
  %62 = load i32, i32* %61, align 8
  %63 = call i32 @bit_mask(i32 %62)
  %64 = load %struct.iproc_pll_ctrl*, %struct.iproc_pll_ctrl** %3, align 8
  %65 = getelementptr inbounds %struct.iproc_pll_ctrl, %struct.iproc_pll_ctrl* %64, i32 0, i32 1
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = shl i32 %63, %67
  %69 = load i32, i32* %4, align 4
  %70 = or i32 %69, %68
  store i32 %70, i32* %4, align 4
  %71 = load %struct.iproc_pll*, %struct.iproc_pll** %2, align 8
  %72 = load %struct.iproc_pll*, %struct.iproc_pll** %2, align 8
  %73 = getelementptr inbounds %struct.iproc_pll, %struct.iproc_pll* %72, i32 0, i32 1
  %74 = load i64, i64* %73, align 8
  %75 = load %struct.iproc_pll_ctrl*, %struct.iproc_pll_ctrl** %3, align 8
  %76 = getelementptr inbounds %struct.iproc_pll_ctrl, %struct.iproc_pll_ctrl* %75, i32 0, i32 1
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 2
  %78 = load i64, i64* %77, align 8
  %79 = load i32, i32* %4, align 4
  %80 = call i32 @iproc_pll_write(%struct.iproc_pll* %71, i64 %74, i64 %78, i32 %79)
  br label %81

81:                                               ; preds = %49, %42
  %82 = load %struct.iproc_pll*, %struct.iproc_pll** %2, align 8
  %83 = getelementptr inbounds %struct.iproc_pll, %struct.iproc_pll* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %136

86:                                               ; preds = %81
  %87 = load %struct.iproc_pll*, %struct.iproc_pll** %2, align 8
  %88 = getelementptr inbounds %struct.iproc_pll, %struct.iproc_pll* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = load %struct.iproc_pll_ctrl*, %struct.iproc_pll_ctrl** %3, align 8
  %91 = getelementptr inbounds %struct.iproc_pll_ctrl, %struct.iproc_pll_ctrl* %90, i32 0, i32 1
  %92 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %91, i32 0, i32 2
  %93 = load i64, i64* %92, align 8
  %94 = add nsw i64 %89, %93
  %95 = call i32 @readl(i64 %94)
  store i32 %95, i32* %4, align 4
  %96 = load %struct.iproc_pll_ctrl*, %struct.iproc_pll_ctrl** %3, align 8
  %97 = getelementptr inbounds %struct.iproc_pll_ctrl, %struct.iproc_pll_ctrl* %96, i32 0, i32 1
  %98 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 4
  %100 = shl i32 1, %99
  %101 = load i32, i32* %4, align 4
  %102 = or i32 %101, %100
  store i32 %102, i32* %4, align 4
  %103 = load %struct.iproc_pll*, %struct.iproc_pll** %2, align 8
  %104 = load %struct.iproc_pll*, %struct.iproc_pll** %2, align 8
  %105 = getelementptr inbounds %struct.iproc_pll, %struct.iproc_pll* %104, i32 0, i32 0
  %106 = load i64, i64* %105, align 8
  %107 = load %struct.iproc_pll_ctrl*, %struct.iproc_pll_ctrl** %3, align 8
  %108 = getelementptr inbounds %struct.iproc_pll_ctrl, %struct.iproc_pll_ctrl* %107, i32 0, i32 1
  %109 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %108, i32 0, i32 2
  %110 = load i64, i64* %109, align 8
  %111 = load i32, i32* %4, align 4
  %112 = call i32 @iproc_pll_write(%struct.iproc_pll* %103, i64 %106, i64 %110, i32 %111)
  %113 = load %struct.iproc_pll_ctrl*, %struct.iproc_pll_ctrl** %3, align 8
  %114 = getelementptr inbounds %struct.iproc_pll_ctrl, %struct.iproc_pll_ctrl* %113, i32 0, i32 1
  %115 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %114, i32 0, i32 3
  %116 = load i32, i32* %115, align 8
  %117 = call i32 @bit_mask(i32 %116)
  %118 = load %struct.iproc_pll_ctrl*, %struct.iproc_pll_ctrl** %3, align 8
  %119 = getelementptr inbounds %struct.iproc_pll_ctrl, %struct.iproc_pll_ctrl* %118, i32 0, i32 1
  %120 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 8
  %122 = shl i32 %117, %121
  %123 = xor i32 %122, -1
  %124 = load i32, i32* %4, align 4
  %125 = and i32 %124, %123
  store i32 %125, i32* %4, align 4
  %126 = load %struct.iproc_pll*, %struct.iproc_pll** %2, align 8
  %127 = load %struct.iproc_pll*, %struct.iproc_pll** %2, align 8
  %128 = getelementptr inbounds %struct.iproc_pll, %struct.iproc_pll* %127, i32 0, i32 0
  %129 = load i64, i64* %128, align 8
  %130 = load %struct.iproc_pll_ctrl*, %struct.iproc_pll_ctrl** %3, align 8
  %131 = getelementptr inbounds %struct.iproc_pll_ctrl, %struct.iproc_pll_ctrl* %130, i32 0, i32 1
  %132 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %131, i32 0, i32 2
  %133 = load i64, i64* %132, align 8
  %134 = load i32, i32* %4, align 4
  %135 = call i32 @iproc_pll_write(%struct.iproc_pll* %126, i64 %129, i64 %133, i32 %134)
  br label %136

136:                                              ; preds = %86, %81
  ret void
}

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @iproc_pll_write(%struct.iproc_pll*, i64, i64, i32) #1

declare dso_local i32 @bit_mask(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
