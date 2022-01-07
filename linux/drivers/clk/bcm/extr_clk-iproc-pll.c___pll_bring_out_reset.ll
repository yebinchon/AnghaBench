; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/bcm/extr_clk-iproc-pll.c___pll_bring_out_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/bcm/extr_clk-iproc-pll.c___pll_bring_out_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iproc_pll = type { i64, %struct.iproc_pll_ctrl* }
%struct.iproc_pll_ctrl = type { i32, %struct.iproc_pll_dig_filter_ctrl, %struct.iproc_pll_reset_ctrl }
%struct.iproc_pll_dig_filter_ctrl = type { i32, i32, i32, i64, i32, i32, i32 }
%struct.iproc_pll_reset_ctrl = type { i64, i32, i32 }

@IPROC_CLK_PLL_RESET_ACTIVE_LOW = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.iproc_pll*, i32, i32, i32)* @__pll_bring_out_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__pll_bring_out_reset(%struct.iproc_pll* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.iproc_pll*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.iproc_pll_ctrl*, align 8
  %11 = alloca %struct.iproc_pll_reset_ctrl*, align 8
  %12 = alloca %struct.iproc_pll_dig_filter_ctrl*, align 8
  store %struct.iproc_pll* %0, %struct.iproc_pll** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %13 = load %struct.iproc_pll*, %struct.iproc_pll** %5, align 8
  %14 = getelementptr inbounds %struct.iproc_pll, %struct.iproc_pll* %13, i32 0, i32 1
  %15 = load %struct.iproc_pll_ctrl*, %struct.iproc_pll_ctrl** %14, align 8
  store %struct.iproc_pll_ctrl* %15, %struct.iproc_pll_ctrl** %10, align 8
  %16 = load %struct.iproc_pll_ctrl*, %struct.iproc_pll_ctrl** %10, align 8
  %17 = getelementptr inbounds %struct.iproc_pll_ctrl, %struct.iproc_pll_ctrl* %16, i32 0, i32 2
  store %struct.iproc_pll_reset_ctrl* %17, %struct.iproc_pll_reset_ctrl** %11, align 8
  %18 = load %struct.iproc_pll_ctrl*, %struct.iproc_pll_ctrl** %10, align 8
  %19 = getelementptr inbounds %struct.iproc_pll_ctrl, %struct.iproc_pll_ctrl* %18, i32 0, i32 1
  store %struct.iproc_pll_dig_filter_ctrl* %19, %struct.iproc_pll_dig_filter_ctrl** %12, align 8
  %20 = load %struct.iproc_pll*, %struct.iproc_pll** %5, align 8
  %21 = getelementptr inbounds %struct.iproc_pll, %struct.iproc_pll* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load %struct.iproc_pll_dig_filter_ctrl*, %struct.iproc_pll_dig_filter_ctrl** %12, align 8
  %24 = getelementptr inbounds %struct.iproc_pll_dig_filter_ctrl, %struct.iproc_pll_dig_filter_ctrl* %23, i32 0, i32 3
  %25 = load i64, i64* %24, align 8
  %26 = add nsw i64 %22, %25
  %27 = call i32 @readl(i64 %26)
  store i32 %27, i32* %9, align 4
  %28 = load %struct.iproc_pll_dig_filter_ctrl*, %struct.iproc_pll_dig_filter_ctrl** %12, align 8
  %29 = getelementptr inbounds %struct.iproc_pll_dig_filter_ctrl, %struct.iproc_pll_dig_filter_ctrl* %28, i32 0, i32 6
  %30 = load i32, i32* %29, align 8
  %31 = call i32 @bit_mask(i32 %30)
  %32 = load %struct.iproc_pll_dig_filter_ctrl*, %struct.iproc_pll_dig_filter_ctrl** %12, align 8
  %33 = getelementptr inbounds %struct.iproc_pll_dig_filter_ctrl, %struct.iproc_pll_dig_filter_ctrl* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = shl i32 %31, %34
  %36 = load %struct.iproc_pll_dig_filter_ctrl*, %struct.iproc_pll_dig_filter_ctrl** %12, align 8
  %37 = getelementptr inbounds %struct.iproc_pll_dig_filter_ctrl, %struct.iproc_pll_dig_filter_ctrl* %36, i32 0, i32 5
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @bit_mask(i32 %38)
  %40 = load %struct.iproc_pll_dig_filter_ctrl*, %struct.iproc_pll_dig_filter_ctrl** %12, align 8
  %41 = getelementptr inbounds %struct.iproc_pll_dig_filter_ctrl, %struct.iproc_pll_dig_filter_ctrl* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = shl i32 %39, %42
  %44 = or i32 %35, %43
  %45 = load %struct.iproc_pll_dig_filter_ctrl*, %struct.iproc_pll_dig_filter_ctrl** %12, align 8
  %46 = getelementptr inbounds %struct.iproc_pll_dig_filter_ctrl, %struct.iproc_pll_dig_filter_ctrl* %45, i32 0, i32 4
  %47 = load i32, i32* %46, align 8
  %48 = call i32 @bit_mask(i32 %47)
  %49 = load %struct.iproc_pll_dig_filter_ctrl*, %struct.iproc_pll_dig_filter_ctrl** %12, align 8
  %50 = getelementptr inbounds %struct.iproc_pll_dig_filter_ctrl, %struct.iproc_pll_dig_filter_ctrl* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 8
  %52 = shl i32 %48, %51
  %53 = or i32 %44, %52
  %54 = xor i32 %53, -1
  %55 = load i32, i32* %9, align 4
  %56 = and i32 %55, %54
  store i32 %56, i32* %9, align 4
  %57 = load i32, i32* %8, align 4
  %58 = load %struct.iproc_pll_dig_filter_ctrl*, %struct.iproc_pll_dig_filter_ctrl** %12, align 8
  %59 = getelementptr inbounds %struct.iproc_pll_dig_filter_ctrl, %struct.iproc_pll_dig_filter_ctrl* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = shl i32 %57, %60
  %62 = load i32, i32* %6, align 4
  %63 = load %struct.iproc_pll_dig_filter_ctrl*, %struct.iproc_pll_dig_filter_ctrl** %12, align 8
  %64 = getelementptr inbounds %struct.iproc_pll_dig_filter_ctrl, %struct.iproc_pll_dig_filter_ctrl* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = shl i32 %62, %65
  %67 = or i32 %61, %66
  %68 = load i32, i32* %7, align 4
  %69 = load %struct.iproc_pll_dig_filter_ctrl*, %struct.iproc_pll_dig_filter_ctrl** %12, align 8
  %70 = getelementptr inbounds %struct.iproc_pll_dig_filter_ctrl, %struct.iproc_pll_dig_filter_ctrl* %69, i32 0, i32 2
  %71 = load i32, i32* %70, align 8
  %72 = shl i32 %68, %71
  %73 = or i32 %67, %72
  %74 = load i32, i32* %9, align 4
  %75 = or i32 %74, %73
  store i32 %75, i32* %9, align 4
  %76 = load %struct.iproc_pll*, %struct.iproc_pll** %5, align 8
  %77 = load %struct.iproc_pll*, %struct.iproc_pll** %5, align 8
  %78 = getelementptr inbounds %struct.iproc_pll, %struct.iproc_pll* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = load %struct.iproc_pll_dig_filter_ctrl*, %struct.iproc_pll_dig_filter_ctrl** %12, align 8
  %81 = getelementptr inbounds %struct.iproc_pll_dig_filter_ctrl, %struct.iproc_pll_dig_filter_ctrl* %80, i32 0, i32 3
  %82 = load i64, i64* %81, align 8
  %83 = load i32, i32* %9, align 4
  %84 = call i32 @iproc_pll_write(%struct.iproc_pll* %76, i64 %79, i64 %82, i32 %83)
  %85 = load %struct.iproc_pll*, %struct.iproc_pll** %5, align 8
  %86 = getelementptr inbounds %struct.iproc_pll, %struct.iproc_pll* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = load %struct.iproc_pll_reset_ctrl*, %struct.iproc_pll_reset_ctrl** %11, align 8
  %89 = getelementptr inbounds %struct.iproc_pll_reset_ctrl, %struct.iproc_pll_reset_ctrl* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = add nsw i64 %87, %90
  %92 = call i32 @readl(i64 %91)
  store i32 %92, i32* %9, align 4
  %93 = load %struct.iproc_pll_ctrl*, %struct.iproc_pll_ctrl** %10, align 8
  %94 = getelementptr inbounds %struct.iproc_pll_ctrl, %struct.iproc_pll_ctrl* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = load i32, i32* @IPROC_CLK_PLL_RESET_ACTIVE_LOW, align 4
  %97 = and i32 %95, %96
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %112

99:                                               ; preds = %4
  %100 = load %struct.iproc_pll_reset_ctrl*, %struct.iproc_pll_reset_ctrl** %11, align 8
  %101 = getelementptr inbounds %struct.iproc_pll_reset_ctrl, %struct.iproc_pll_reset_ctrl* %100, i32 0, i32 2
  %102 = load i32, i32* %101, align 4
  %103 = call i32 @BIT(i32 %102)
  %104 = load %struct.iproc_pll_reset_ctrl*, %struct.iproc_pll_reset_ctrl** %11, align 8
  %105 = getelementptr inbounds %struct.iproc_pll_reset_ctrl, %struct.iproc_pll_reset_ctrl* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 8
  %107 = call i32 @BIT(i32 %106)
  %108 = or i32 %103, %107
  %109 = xor i32 %108, -1
  %110 = load i32, i32* %9, align 4
  %111 = and i32 %110, %109
  store i32 %111, i32* %9, align 4
  br label %124

112:                                              ; preds = %4
  %113 = load %struct.iproc_pll_reset_ctrl*, %struct.iproc_pll_reset_ctrl** %11, align 8
  %114 = getelementptr inbounds %struct.iproc_pll_reset_ctrl, %struct.iproc_pll_reset_ctrl* %113, i32 0, i32 2
  %115 = load i32, i32* %114, align 4
  %116 = call i32 @BIT(i32 %115)
  %117 = load %struct.iproc_pll_reset_ctrl*, %struct.iproc_pll_reset_ctrl** %11, align 8
  %118 = getelementptr inbounds %struct.iproc_pll_reset_ctrl, %struct.iproc_pll_reset_ctrl* %117, i32 0, i32 1
  %119 = load i32, i32* %118, align 8
  %120 = call i32 @BIT(i32 %119)
  %121 = or i32 %116, %120
  %122 = load i32, i32* %9, align 4
  %123 = or i32 %122, %121
  store i32 %123, i32* %9, align 4
  br label %124

124:                                              ; preds = %112, %99
  %125 = load %struct.iproc_pll*, %struct.iproc_pll** %5, align 8
  %126 = load %struct.iproc_pll*, %struct.iproc_pll** %5, align 8
  %127 = getelementptr inbounds %struct.iproc_pll, %struct.iproc_pll* %126, i32 0, i32 0
  %128 = load i64, i64* %127, align 8
  %129 = load %struct.iproc_pll_reset_ctrl*, %struct.iproc_pll_reset_ctrl** %11, align 8
  %130 = getelementptr inbounds %struct.iproc_pll_reset_ctrl, %struct.iproc_pll_reset_ctrl* %129, i32 0, i32 0
  %131 = load i64, i64* %130, align 8
  %132 = load i32, i32* %9, align 4
  %133 = call i32 @iproc_pll_write(%struct.iproc_pll* %125, i64 %128, i64 %131, i32 %132)
  ret void
}

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @bit_mask(i32) #1

declare dso_local i32 @iproc_pll_write(%struct.iproc_pll*, i64, i64, i32) #1

declare dso_local i32 @BIT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
