; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/tegra/extr_clk-dfll.c_dfll_init_out_if.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/tegra/extr_clk-dfll.c_dfll_init_out_if.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tegra_dfll = type { i32, i32, i64, i64, i32, i64, i64, i64*, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@DFLL_OUTPUT_CFG = common dso_local global i32 0, align 4
@DFLL_OUTPUT_CFG_SAFE_SHIFT = common dso_local global i64 0, align 8
@DFLL_OUTPUT_CFG_MAX_SHIFT = common dso_local global i64 0, align 8
@DFLL_OUTPUT_CFG_MIN_SHIFT = common dso_local global i64 0, align 8
@DFLL_OUTPUT_FORCE = common dso_local global i32 0, align 4
@DFLL_INTR_EN = common dso_local global i32 0, align 4
@DFLL_INTR_MAX_MASK = common dso_local global i32 0, align 4
@DFLL_INTR_MIN_MASK = common dso_local global i32 0, align 4
@DFLL_INTR_STS = common dso_local global i32 0, align 4
@TEGRA_DFLL_PMU_PWM = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tegra_dfll*)* @dfll_init_out_if to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dfll_init_out_if(%struct.tegra_dfll* %0) #0 {
  %2 = alloca %struct.tegra_dfll*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.tegra_dfll* %0, %struct.tegra_dfll** %2, align 8
  %8 = load %struct.tegra_dfll*, %struct.tegra_dfll** %2, align 8
  %9 = getelementptr inbounds %struct.tegra_dfll, %struct.tegra_dfll* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 4
  %11 = load %struct.tegra_dfll*, %struct.tegra_dfll** %2, align 8
  %12 = getelementptr inbounds %struct.tegra_dfll, %struct.tegra_dfll* %11, i32 0, i32 0
  store i32 %10, i32* %12, align 8
  %13 = load %struct.tegra_dfll*, %struct.tegra_dfll** %2, align 8
  %14 = getelementptr inbounds %struct.tegra_dfll, %struct.tegra_dfll* %13, i32 0, i32 3
  %15 = load i64, i64* %14, align 8
  %16 = sub i64 %15, 1
  %17 = load %struct.tegra_dfll*, %struct.tegra_dfll** %2, align 8
  %18 = getelementptr inbounds %struct.tegra_dfll, %struct.tegra_dfll* %17, i32 0, i32 2
  store i64 %16, i64* %18, align 8
  %19 = load %struct.tegra_dfll*, %struct.tegra_dfll** %2, align 8
  %20 = getelementptr inbounds %struct.tegra_dfll, %struct.tegra_dfll* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load %struct.tegra_dfll*, %struct.tegra_dfll** %2, align 8
  %23 = getelementptr inbounds %struct.tegra_dfll, %struct.tegra_dfll* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = sext i32 %24 to i64
  %26 = load %struct.tegra_dfll*, %struct.tegra_dfll** %2, align 8
  %27 = getelementptr inbounds %struct.tegra_dfll, %struct.tegra_dfll* %26, i32 0, i32 2
  %28 = load i64, i64* %27, align 8
  %29 = icmp ult i64 %25, %28
  %30 = zext i1 %29 to i64
  %31 = select i1 %29, i32 1, i32 0
  %32 = add nsw i32 %21, %31
  %33 = load %struct.tegra_dfll*, %struct.tegra_dfll** %2, align 8
  %34 = getelementptr inbounds %struct.tegra_dfll, %struct.tegra_dfll* %33, i32 0, i32 4
  store i32 %32, i32* %34, align 8
  %35 = load %struct.tegra_dfll*, %struct.tegra_dfll** %2, align 8
  %36 = load i32, i32* @DFLL_OUTPUT_CFG, align 4
  %37 = call i32 @dfll_writel(%struct.tegra_dfll* %35, i64 0, i32 %36)
  %38 = load %struct.tegra_dfll*, %struct.tegra_dfll** %2, align 8
  %39 = call i32 @dfll_wmb(%struct.tegra_dfll* %38)
  %40 = load %struct.tegra_dfll*, %struct.tegra_dfll** %2, align 8
  %41 = getelementptr inbounds %struct.tegra_dfll, %struct.tegra_dfll* %40, i32 0, i32 4
  %42 = load i32, i32* %41, align 8
  %43 = load i64, i64* @DFLL_OUTPUT_CFG_SAFE_SHIFT, align 8
  %44 = trunc i64 %43 to i32
  %45 = shl i32 %42, %44
  %46 = sext i32 %45 to i64
  %47 = load %struct.tegra_dfll*, %struct.tegra_dfll** %2, align 8
  %48 = getelementptr inbounds %struct.tegra_dfll, %struct.tegra_dfll* %47, i32 0, i32 2
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @DFLL_OUTPUT_CFG_MAX_SHIFT, align 8
  %51 = shl i64 %49, %50
  %52 = or i64 %46, %51
  %53 = load %struct.tegra_dfll*, %struct.tegra_dfll** %2, align 8
  %54 = getelementptr inbounds %struct.tegra_dfll, %struct.tegra_dfll* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = load i64, i64* @DFLL_OUTPUT_CFG_MIN_SHIFT, align 8
  %57 = trunc i64 %56 to i32
  %58 = shl i32 %55, %57
  %59 = sext i32 %58 to i64
  %60 = or i64 %52, %59
  store i64 %60, i64* %3, align 8
  %61 = load %struct.tegra_dfll*, %struct.tegra_dfll** %2, align 8
  %62 = load i64, i64* %3, align 8
  %63 = load i32, i32* @DFLL_OUTPUT_CFG, align 4
  %64 = call i32 @dfll_writel(%struct.tegra_dfll* %61, i64 %62, i32 %63)
  %65 = load %struct.tegra_dfll*, %struct.tegra_dfll** %2, align 8
  %66 = call i32 @dfll_wmb(%struct.tegra_dfll* %65)
  %67 = load %struct.tegra_dfll*, %struct.tegra_dfll** %2, align 8
  %68 = load i32, i32* @DFLL_OUTPUT_FORCE, align 4
  %69 = call i32 @dfll_writel(%struct.tegra_dfll* %67, i64 0, i32 %68)
  %70 = load %struct.tegra_dfll*, %struct.tegra_dfll** %2, align 8
  %71 = load i32, i32* @DFLL_INTR_EN, align 4
  %72 = call i32 @dfll_i2c_writel(%struct.tegra_dfll* %70, i32 0, i32 %71)
  %73 = load %struct.tegra_dfll*, %struct.tegra_dfll** %2, align 8
  %74 = load i32, i32* @DFLL_INTR_MAX_MASK, align 4
  %75 = load i32, i32* @DFLL_INTR_MIN_MASK, align 4
  %76 = or i32 %74, %75
  %77 = load i32, i32* @DFLL_INTR_STS, align 4
  %78 = call i32 @dfll_i2c_writel(%struct.tegra_dfll* %73, i32 %76, i32 %77)
  %79 = load %struct.tegra_dfll*, %struct.tegra_dfll** %2, align 8
  %80 = getelementptr inbounds %struct.tegra_dfll, %struct.tegra_dfll* %79, i32 0, i32 5
  %81 = load i64, i64* %80, align 8
  %82 = load i64, i64* @TEGRA_DFLL_PMU_PWM, align 8
  %83 = icmp eq i64 %81, %82
  br i1 %83, label %84, label %115

84:                                               ; preds = %1
  %85 = load %struct.tegra_dfll*, %struct.tegra_dfll** %2, align 8
  %86 = getelementptr inbounds %struct.tegra_dfll, %struct.tegra_dfll* %85, i32 0, i32 6
  %87 = load i64, i64* %86, align 8
  store i64 %87, i64* %4, align 8
  %88 = load %struct.tegra_dfll*, %struct.tegra_dfll** %2, align 8
  %89 = getelementptr inbounds %struct.tegra_dfll, %struct.tegra_dfll* %88, i32 0, i32 8
  %90 = load %struct.TYPE_4__*, %struct.TYPE_4__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  store i32 %93, i32* %5, align 4
  %94 = load %struct.tegra_dfll*, %struct.tegra_dfll** %2, align 8
  %95 = getelementptr inbounds %struct.tegra_dfll, %struct.tegra_dfll* %94, i32 0, i32 7
  %96 = load i64*, i64** %95, align 8
  %97 = getelementptr inbounds i64, i64* %96, i64 0
  %98 = load i64, i64* %97, align 8
  store i64 %98, i64* %6, align 8
  %99 = load i64, i64* %4, align 8
  %100 = load i64, i64* %6, align 8
  %101 = icmp uge i64 %99, %100
  br i1 %101, label %102, label %114

102:                                              ; preds = %84
  %103 = load i32, i32* %5, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %114

105:                                              ; preds = %102
  %106 = load i64, i64* %4, align 8
  %107 = load i64, i64* %6, align 8
  %108 = sub i64 %106, %107
  %109 = load i32, i32* %5, align 4
  %110 = call i32 @DIV_ROUND_UP(i64 %108, i32 %109)
  store i32 %110, i32* %7, align 4
  %111 = load %struct.tegra_dfll*, %struct.tegra_dfll** %2, align 8
  %112 = load i32, i32* %7, align 4
  %113 = call i32 @dfll_force_output(%struct.tegra_dfll* %111, i32 %112)
  br label %114

114:                                              ; preds = %105, %102, %84
  br label %120

115:                                              ; preds = %1
  %116 = load %struct.tegra_dfll*, %struct.tegra_dfll** %2, align 8
  %117 = call i32 @dfll_load_i2c_lut(%struct.tegra_dfll* %116)
  %118 = load %struct.tegra_dfll*, %struct.tegra_dfll** %2, align 8
  %119 = call i32 @dfll_init_i2c_if(%struct.tegra_dfll* %118)
  br label %120

120:                                              ; preds = %115, %114
  ret void
}

declare dso_local i32 @dfll_writel(%struct.tegra_dfll*, i64, i32) #1

declare dso_local i32 @dfll_wmb(%struct.tegra_dfll*) #1

declare dso_local i32 @dfll_i2c_writel(%struct.tegra_dfll*, i32, i32) #1

declare dso_local i32 @DIV_ROUND_UP(i64, i32) #1

declare dso_local i32 @dfll_force_output(%struct.tegra_dfll*, i32) #1

declare dso_local i32 @dfll_load_i2c_lut(%struct.tegra_dfll*) #1

declare dso_local i32 @dfll_init_i2c_if(%struct.tegra_dfll*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
