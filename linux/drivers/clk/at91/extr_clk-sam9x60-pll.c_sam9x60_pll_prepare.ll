; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/at91/extr_clk-sam9x60-pll.c_sam9x60_pll_prepare.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/at91/extr_clk-sam9x60-pll.c_sam9x60_pll_prepare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_hw = type { i32 }
%struct.sam9x60_pll = type { i32, i32, i64, i32, %struct.TYPE_2__*, %struct.regmap* }
%struct.TYPE_2__ = type { i64 }
%struct.regmap = type { i32 }

@PMC_PLL_UPDT = common dso_local global i32 0, align 4
@PMC_PLL_CTRL0 = common dso_local global i32 0, align 4
@PMC_PLL_CTRL0_DIV_MSK = common dso_local global i32 0, align 4
@PMC_PLL_CTRL1 = common dso_local global i32 0, align 4
@PMC_PLL_CTRL1_MUL_MSK = common dso_local global i32 0, align 4
@PMC_PLL_ACR_DEFAULT = common dso_local global i32 0, align 4
@PMC_PLL_ACR = common dso_local global i32 0, align 4
@PMC_PLL_ACR_UTMIBG = common dso_local global i32 0, align 4
@PMC_PLL_ACR_UTMIVR = common dso_local global i32 0, align 4
@PMC_PLL_UPDT_UPDATE = common dso_local global i32 0, align 4
@PMC_PLL_CTRL0_ENLOCK = common dso_local global i32 0, align 4
@PMC_PLL_CTRL0_ENPLL = common dso_local global i32 0, align 4
@PMC_PLL_CTRL0_ENPLLCK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.clk_hw*)* @sam9x60_pll_prepare to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sam9x60_pll_prepare(%struct.clk_hw* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.clk_hw*, align 8
  %4 = alloca %struct.sam9x60_pll*, align 8
  %5 = alloca %struct.regmap*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.clk_hw* %0, %struct.clk_hw** %3, align 8
  %10 = load %struct.clk_hw*, %struct.clk_hw** %3, align 8
  %11 = call %struct.sam9x60_pll* @to_sam9x60_pll(%struct.clk_hw* %10)
  store %struct.sam9x60_pll* %11, %struct.sam9x60_pll** %4, align 8
  %12 = load %struct.sam9x60_pll*, %struct.sam9x60_pll** %4, align 8
  %13 = getelementptr inbounds %struct.sam9x60_pll, %struct.sam9x60_pll* %12, i32 0, i32 5
  %14 = load %struct.regmap*, %struct.regmap** %13, align 8
  store %struct.regmap* %14, %struct.regmap** %5, align 8
  %15 = load %struct.sam9x60_pll*, %struct.sam9x60_pll** %4, align 8
  %16 = getelementptr inbounds %struct.sam9x60_pll, %struct.sam9x60_pll* %15, i32 0, i32 3
  %17 = load i32, i32* %16, align 8
  %18 = load i64, i64* %6, align 8
  %19 = call i32 @spin_lock_irqsave(i32 %17, i64 %18)
  %20 = load %struct.regmap*, %struct.regmap** %5, align 8
  %21 = load i32, i32* @PMC_PLL_UPDT, align 4
  %22 = load %struct.sam9x60_pll*, %struct.sam9x60_pll** %4, align 8
  %23 = getelementptr inbounds %struct.sam9x60_pll, %struct.sam9x60_pll* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = call i32 @regmap_write(%struct.regmap* %20, i32 %21, i32 %24)
  %26 = load %struct.regmap*, %struct.regmap** %5, align 8
  %27 = load i32, i32* @PMC_PLL_CTRL0, align 4
  %28 = call i32 @regmap_read(%struct.regmap* %26, i32 %27, i32* %9)
  %29 = load i32, i32* @PMC_PLL_CTRL0_DIV_MSK, align 4
  %30 = load i32, i32* %9, align 4
  %31 = call i8* @FIELD_GET(i32 %29, i32 %30)
  %32 = ptrtoint i8* %31 to i32
  store i32 %32, i32* %7, align 4
  %33 = load %struct.regmap*, %struct.regmap** %5, align 8
  %34 = load i32, i32* @PMC_PLL_CTRL1, align 4
  %35 = call i32 @regmap_read(%struct.regmap* %33, i32 %34, i32* %9)
  %36 = load i32, i32* @PMC_PLL_CTRL1_MUL_MSK, align 4
  %37 = load i32, i32* %9, align 4
  %38 = call i8* @FIELD_GET(i32 %36, i32 %37)
  %39 = ptrtoint i8* %38 to i64
  store i64 %39, i64* %8, align 8
  %40 = load %struct.regmap*, %struct.regmap** %5, align 8
  %41 = load %struct.sam9x60_pll*, %struct.sam9x60_pll** %4, align 8
  %42 = getelementptr inbounds %struct.sam9x60_pll, %struct.sam9x60_pll* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = call i64 @sam9x60_pll_ready(%struct.regmap* %40, i32 %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %64

46:                                               ; preds = %1
  %47 = load i32, i32* %7, align 4
  %48 = load %struct.sam9x60_pll*, %struct.sam9x60_pll** %4, align 8
  %49 = getelementptr inbounds %struct.sam9x60_pll, %struct.sam9x60_pll* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = icmp eq i32 %47, %50
  br i1 %51, label %52, label %64

52:                                               ; preds = %46
  %53 = load i64, i64* %8, align 8
  %54 = load %struct.sam9x60_pll*, %struct.sam9x60_pll** %4, align 8
  %55 = getelementptr inbounds %struct.sam9x60_pll, %struct.sam9x60_pll* %54, i32 0, i32 2
  %56 = load i64, i64* %55, align 8
  %57 = icmp eq i64 %53, %56
  br i1 %57, label %58, label %64

58:                                               ; preds = %52
  %59 = load %struct.sam9x60_pll*, %struct.sam9x60_pll** %4, align 8
  %60 = getelementptr inbounds %struct.sam9x60_pll, %struct.sam9x60_pll* %59, i32 0, i32 3
  %61 = load i32, i32* %60, align 8
  %62 = load i64, i64* %6, align 8
  %63 = call i32 @spin_unlock_irqrestore(i32 %61, i64 %62)
  store i32 0, i32* %2, align 4
  br label %140

64:                                               ; preds = %52, %46, %1
  %65 = load i32, i32* @PMC_PLL_ACR_DEFAULT, align 4
  store i32 %65, i32* %9, align 4
  %66 = load %struct.regmap*, %struct.regmap** %5, align 8
  %67 = load i32, i32* @PMC_PLL_ACR, align 4
  %68 = load i32, i32* %9, align 4
  %69 = call i32 @regmap_write(%struct.regmap* %66, i32 %67, i32 %68)
  %70 = load %struct.regmap*, %struct.regmap** %5, align 8
  %71 = load i32, i32* @PMC_PLL_CTRL1, align 4
  %72 = load i32, i32* @PMC_PLL_CTRL1_MUL_MSK, align 4
  %73 = load %struct.sam9x60_pll*, %struct.sam9x60_pll** %4, align 8
  %74 = getelementptr inbounds %struct.sam9x60_pll, %struct.sam9x60_pll* %73, i32 0, i32 2
  %75 = load i64, i64* %74, align 8
  %76 = call i32 @FIELD_PREP(i32 %72, i64 %75)
  %77 = call i32 @regmap_write(%struct.regmap* %70, i32 %71, i32 %76)
  %78 = load %struct.sam9x60_pll*, %struct.sam9x60_pll** %4, align 8
  %79 = getelementptr inbounds %struct.sam9x60_pll, %struct.sam9x60_pll* %78, i32 0, i32 4
  %80 = load %struct.TYPE_2__*, %struct.TYPE_2__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %101

84:                                               ; preds = %64
  %85 = load i32, i32* @PMC_PLL_ACR_UTMIBG, align 4
  %86 = load i32, i32* %9, align 4
  %87 = or i32 %86, %85
  store i32 %87, i32* %9, align 4
  %88 = load %struct.regmap*, %struct.regmap** %5, align 8
  %89 = load i32, i32* @PMC_PLL_ACR, align 4
  %90 = load i32, i32* %9, align 4
  %91 = call i32 @regmap_write(%struct.regmap* %88, i32 %89, i32 %90)
  %92 = call i32 @udelay(i32 10)
  %93 = load i32, i32* @PMC_PLL_ACR_UTMIVR, align 4
  %94 = load i32, i32* %9, align 4
  %95 = or i32 %94, %93
  store i32 %95, i32* %9, align 4
  %96 = load %struct.regmap*, %struct.regmap** %5, align 8
  %97 = load i32, i32* @PMC_PLL_ACR, align 4
  %98 = load i32, i32* %9, align 4
  %99 = call i32 @regmap_write(%struct.regmap* %96, i32 %97, i32 %98)
  %100 = call i32 @udelay(i32 10)
  br label %101

101:                                              ; preds = %84, %64
  %102 = load %struct.regmap*, %struct.regmap** %5, align 8
  %103 = load i32, i32* @PMC_PLL_UPDT, align 4
  %104 = load i32, i32* @PMC_PLL_UPDT_UPDATE, align 4
  %105 = load i32, i32* @PMC_PLL_UPDT_UPDATE, align 4
  %106 = call i32 @regmap_update_bits(%struct.regmap* %102, i32 %103, i32 %104, i32 %105)
  %107 = load %struct.regmap*, %struct.regmap** %5, align 8
  %108 = load i32, i32* @PMC_PLL_CTRL0, align 4
  %109 = load i32, i32* @PMC_PLL_CTRL0_ENLOCK, align 4
  %110 = load i32, i32* @PMC_PLL_CTRL0_ENPLL, align 4
  %111 = or i32 %109, %110
  %112 = load i32, i32* @PMC_PLL_CTRL0_ENPLLCK, align 4
  %113 = or i32 %111, %112
  %114 = load %struct.sam9x60_pll*, %struct.sam9x60_pll** %4, align 8
  %115 = getelementptr inbounds %struct.sam9x60_pll, %struct.sam9x60_pll* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 4
  %117 = or i32 %113, %116
  %118 = call i32 @regmap_write(%struct.regmap* %107, i32 %108, i32 %117)
  %119 = load %struct.regmap*, %struct.regmap** %5, align 8
  %120 = load i32, i32* @PMC_PLL_UPDT, align 4
  %121 = load i32, i32* @PMC_PLL_UPDT_UPDATE, align 4
  %122 = load i32, i32* @PMC_PLL_UPDT_UPDATE, align 4
  %123 = call i32 @regmap_update_bits(%struct.regmap* %119, i32 %120, i32 %121, i32 %122)
  br label %124

124:                                              ; preds = %132, %101
  %125 = load %struct.regmap*, %struct.regmap** %5, align 8
  %126 = load %struct.sam9x60_pll*, %struct.sam9x60_pll** %4, align 8
  %127 = getelementptr inbounds %struct.sam9x60_pll, %struct.sam9x60_pll* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 8
  %129 = call i64 @sam9x60_pll_ready(%struct.regmap* %125, i32 %128)
  %130 = icmp ne i64 %129, 0
  %131 = xor i1 %130, true
  br i1 %131, label %132, label %134

132:                                              ; preds = %124
  %133 = call i32 (...) @cpu_relax()
  br label %124

134:                                              ; preds = %124
  %135 = load %struct.sam9x60_pll*, %struct.sam9x60_pll** %4, align 8
  %136 = getelementptr inbounds %struct.sam9x60_pll, %struct.sam9x60_pll* %135, i32 0, i32 3
  %137 = load i32, i32* %136, align 8
  %138 = load i64, i64* %6, align 8
  %139 = call i32 @spin_unlock_irqrestore(i32 %137, i64 %138)
  store i32 0, i32* %2, align 4
  br label %140

140:                                              ; preds = %134, %58
  %141 = load i32, i32* %2, align 4
  ret i32 %141
}

declare dso_local %struct.sam9x60_pll* @to_sam9x60_pll(%struct.clk_hw*) #1

declare dso_local i32 @spin_lock_irqsave(i32, i64) #1

declare dso_local i32 @regmap_write(%struct.regmap*, i32, i32) #1

declare dso_local i32 @regmap_read(%struct.regmap*, i32, i32*) #1

declare dso_local i8* @FIELD_GET(i32, i32) #1

declare dso_local i64 @sam9x60_pll_ready(%struct.regmap*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32, i64) #1

declare dso_local i32 @FIELD_PREP(i32, i64) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @regmap_update_bits(%struct.regmap*, i32, i32, i32) #1

declare dso_local i32 @cpu_relax(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
