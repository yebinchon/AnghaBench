; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/bcm/extr_clk-iproc-pll.c___pll_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/bcm/extr_clk-iproc-pll.c___pll_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iproc_pll = type { i64, i64, i64, %struct.iproc_pll_ctrl* }
%struct.iproc_pll_ctrl = type { i32, %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32, i64 }
%struct.TYPE_3__ = type { i32, i32, i64, i32 }

@IPROC_CLK_EMBED_PWRCTRL = common dso_local global i32 0, align 4
@IPROC_CLK_PLL_ASIU = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iproc_pll*)* @__pll_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__pll_enable(%struct.iproc_pll* %0) #0 {
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
  %11 = load i32, i32* @IPROC_CLK_EMBED_PWRCTRL, align 4
  %12 = and i32 %10, %11
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %47

14:                                               ; preds = %1
  %15 = load %struct.iproc_pll*, %struct.iproc_pll** %2, align 8
  %16 = getelementptr inbounds %struct.iproc_pll, %struct.iproc_pll* %15, i32 0, i32 2
  %17 = load i64, i64* %16, align 8
  %18 = load %struct.iproc_pll_ctrl*, %struct.iproc_pll_ctrl** %3, align 8
  %19 = getelementptr inbounds %struct.iproc_pll_ctrl, %struct.iproc_pll_ctrl* %18, i32 0, i32 2
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 2
  %21 = load i64, i64* %20, align 8
  %22 = add nsw i64 %17, %21
  %23 = call i32 @readl(i64 %22)
  store i32 %23, i32* %4, align 4
  %24 = load %struct.iproc_pll_ctrl*, %struct.iproc_pll_ctrl** %3, align 8
  %25 = getelementptr inbounds %struct.iproc_pll_ctrl, %struct.iproc_pll_ctrl* %24, i32 0, i32 2
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 3
  %27 = load i32, i32* %26, align 8
  %28 = call i32 @bit_mask(i32 %27)
  %29 = load %struct.iproc_pll_ctrl*, %struct.iproc_pll_ctrl** %3, align 8
  %30 = getelementptr inbounds %struct.iproc_pll_ctrl, %struct.iproc_pll_ctrl* %29, i32 0, i32 2
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = shl i32 %28, %32
  %34 = xor i32 %33, -1
  %35 = load i32, i32* %4, align 4
  %36 = and i32 %35, %34
  store i32 %36, i32* %4, align 4
  %37 = load %struct.iproc_pll*, %struct.iproc_pll** %2, align 8
  %38 = load %struct.iproc_pll*, %struct.iproc_pll** %2, align 8
  %39 = getelementptr inbounds %struct.iproc_pll, %struct.iproc_pll* %38, i32 0, i32 2
  %40 = load i64, i64* %39, align 8
  %41 = load %struct.iproc_pll_ctrl*, %struct.iproc_pll_ctrl** %3, align 8
  %42 = getelementptr inbounds %struct.iproc_pll_ctrl, %struct.iproc_pll_ctrl* %41, i32 0, i32 2
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 2
  %44 = load i64, i64* %43, align 8
  %45 = load i32, i32* %4, align 4
  %46 = call i32 @iproc_pll_write(%struct.iproc_pll* %37, i64 %40, i64 %44, i32 %45)
  br label %47

47:                                               ; preds = %14, %1
  %48 = load %struct.iproc_pll*, %struct.iproc_pll** %2, align 8
  %49 = getelementptr inbounds %struct.iproc_pll, %struct.iproc_pll* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %92

52:                                               ; preds = %47
  %53 = load %struct.iproc_pll*, %struct.iproc_pll** %2, align 8
  %54 = getelementptr inbounds %struct.iproc_pll, %struct.iproc_pll* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = load %struct.iproc_pll_ctrl*, %struct.iproc_pll_ctrl** %3, align 8
  %57 = getelementptr inbounds %struct.iproc_pll_ctrl, %struct.iproc_pll_ctrl* %56, i32 0, i32 2
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 2
  %59 = load i64, i64* %58, align 8
  %60 = add nsw i64 %55, %59
  %61 = call i32 @readl(i64 %60)
  store i32 %61, i32* %4, align 4
  %62 = load %struct.iproc_pll_ctrl*, %struct.iproc_pll_ctrl** %3, align 8
  %63 = getelementptr inbounds %struct.iproc_pll_ctrl, %struct.iproc_pll_ctrl* %62, i32 0, i32 2
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i32 0, i32 3
  %65 = load i32, i32* %64, align 8
  %66 = call i32 @bit_mask(i32 %65)
  %67 = load %struct.iproc_pll_ctrl*, %struct.iproc_pll_ctrl** %3, align 8
  %68 = getelementptr inbounds %struct.iproc_pll_ctrl, %struct.iproc_pll_ctrl* %67, i32 0, i32 2
  %69 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = shl i32 %66, %70
  %72 = load i32, i32* %4, align 4
  %73 = or i32 %72, %71
  store i32 %73, i32* %4, align 4
  %74 = load %struct.iproc_pll_ctrl*, %struct.iproc_pll_ctrl** %3, align 8
  %75 = getelementptr inbounds %struct.iproc_pll_ctrl, %struct.iproc_pll_ctrl* %74, i32 0, i32 2
  %76 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = shl i32 1, %77
  %79 = xor i32 %78, -1
  %80 = load i32, i32* %4, align 4
  %81 = and i32 %80, %79
  store i32 %81, i32* %4, align 4
  %82 = load %struct.iproc_pll*, %struct.iproc_pll** %2, align 8
  %83 = load %struct.iproc_pll*, %struct.iproc_pll** %2, align 8
  %84 = getelementptr inbounds %struct.iproc_pll, %struct.iproc_pll* %83, i32 0, i32 1
  %85 = load i64, i64* %84, align 8
  %86 = load %struct.iproc_pll_ctrl*, %struct.iproc_pll_ctrl** %3, align 8
  %87 = getelementptr inbounds %struct.iproc_pll_ctrl, %struct.iproc_pll_ctrl* %86, i32 0, i32 2
  %88 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %87, i32 0, i32 2
  %89 = load i64, i64* %88, align 8
  %90 = load i32, i32* %4, align 4
  %91 = call i32 @iproc_pll_write(%struct.iproc_pll* %82, i64 %85, i64 %89, i32 %90)
  br label %92

92:                                               ; preds = %52, %47
  %93 = load %struct.iproc_pll_ctrl*, %struct.iproc_pll_ctrl** %3, align 8
  %94 = getelementptr inbounds %struct.iproc_pll_ctrl, %struct.iproc_pll_ctrl* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = load i32, i32* @IPROC_CLK_PLL_ASIU, align 4
  %97 = and i32 %95, %96
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %126

99:                                               ; preds = %92
  %100 = load %struct.iproc_pll*, %struct.iproc_pll** %2, align 8
  %101 = getelementptr inbounds %struct.iproc_pll, %struct.iproc_pll* %100, i32 0, i32 0
  %102 = load i64, i64* %101, align 8
  %103 = load %struct.iproc_pll_ctrl*, %struct.iproc_pll_ctrl** %3, align 8
  %104 = getelementptr inbounds %struct.iproc_pll_ctrl, %struct.iproc_pll_ctrl* %103, i32 0, i32 1
  %105 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %104, i32 0, i32 1
  %106 = load i64, i64* %105, align 8
  %107 = add nsw i64 %102, %106
  %108 = call i32 @readl(i64 %107)
  store i32 %108, i32* %4, align 4
  %109 = load %struct.iproc_pll_ctrl*, %struct.iproc_pll_ctrl** %3, align 8
  %110 = getelementptr inbounds %struct.iproc_pll_ctrl, %struct.iproc_pll_ctrl* %109, i32 0, i32 1
  %111 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 8
  %113 = shl i32 1, %112
  %114 = load i32, i32* %4, align 4
  %115 = or i32 %114, %113
  store i32 %115, i32* %4, align 4
  %116 = load %struct.iproc_pll*, %struct.iproc_pll** %2, align 8
  %117 = load %struct.iproc_pll*, %struct.iproc_pll** %2, align 8
  %118 = getelementptr inbounds %struct.iproc_pll, %struct.iproc_pll* %117, i32 0, i32 0
  %119 = load i64, i64* %118, align 8
  %120 = load %struct.iproc_pll_ctrl*, %struct.iproc_pll_ctrl** %3, align 8
  %121 = getelementptr inbounds %struct.iproc_pll_ctrl, %struct.iproc_pll_ctrl* %120, i32 0, i32 1
  %122 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %121, i32 0, i32 1
  %123 = load i64, i64* %122, align 8
  %124 = load i32, i32* %4, align 4
  %125 = call i32 @iproc_pll_write(%struct.iproc_pll* %116, i64 %119, i64 %123, i32 %124)
  br label %126

126:                                              ; preds = %99, %92
  ret i32 0
}

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @bit_mask(i32) #1

declare dso_local i32 @iproc_pll_write(%struct.iproc_pll*, i64, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
