; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/qcom/extr_clk-alpha-pll.c_alpha_pll_fabia_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/qcom/extr_clk-alpha-pll.c_alpha_pll_fabia_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_hw = type { i32 }
%struct.clk_alpha_pll = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.regmap* }
%struct.regmap = type { i32 }

@PLL_VOTE_FSM_ENA = common dso_local global i32 0, align 4
@FABIA_OPMODE_RUN = common dso_local global i32 0, align 4
@PLL_OUTCTRL = common dso_local global i32 0, align 4
@FABIA_OPMODE_STANDBY = common dso_local global i32 0, align 4
@PLL_RESET_N = common dso_local global i32 0, align 4
@FABIA_PLL_OUT_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.clk_hw*)* @alpha_pll_fabia_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @alpha_pll_fabia_enable(%struct.clk_hw* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.clk_hw*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.clk_alpha_pll*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.regmap*, align 8
  store %struct.clk_hw* %0, %struct.clk_hw** %3, align 8
  %9 = load %struct.clk_hw*, %struct.clk_hw** %3, align 8
  %10 = call %struct.clk_alpha_pll* @to_clk_alpha_pll(%struct.clk_hw* %9)
  store %struct.clk_alpha_pll* %10, %struct.clk_alpha_pll** %5, align 8
  %11 = load %struct.clk_alpha_pll*, %struct.clk_alpha_pll** %5, align 8
  %12 = getelementptr inbounds %struct.clk_alpha_pll, %struct.clk_alpha_pll* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load %struct.regmap*, %struct.regmap** %13, align 8
  store %struct.regmap* %14, %struct.regmap** %8, align 8
  %15 = load %struct.regmap*, %struct.regmap** %8, align 8
  %16 = load %struct.clk_alpha_pll*, %struct.clk_alpha_pll** %5, align 8
  %17 = call i32 @PLL_MODE(%struct.clk_alpha_pll* %16)
  %18 = call i32 @regmap_read(%struct.regmap* %15, i32 %17, i32* %6)
  store i32 %18, i32* %4, align 4
  %19 = load i32, i32* %4, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %1
  %22 = load i32, i32* %4, align 4
  store i32 %22, i32* %2, align 4
  br label %124

23:                                               ; preds = %1
  %24 = load i32, i32* %6, align 4
  %25 = load i32, i32* @PLL_VOTE_FSM_ENA, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %38

28:                                               ; preds = %23
  %29 = load %struct.clk_hw*, %struct.clk_hw** %3, align 8
  %30 = call i32 @clk_enable_regmap(%struct.clk_hw* %29)
  store i32 %30, i32* %4, align 4
  %31 = load i32, i32* %4, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %28
  %34 = load i32, i32* %4, align 4
  store i32 %34, i32* %2, align 4
  br label %124

35:                                               ; preds = %28
  %36 = load %struct.clk_alpha_pll*, %struct.clk_alpha_pll** %5, align 8
  %37 = call i32 @wait_for_pll_enable_active(%struct.clk_alpha_pll* %36)
  store i32 %37, i32* %2, align 4
  br label %124

38:                                               ; preds = %23
  %39 = load %struct.regmap*, %struct.regmap** %8, align 8
  %40 = load %struct.clk_alpha_pll*, %struct.clk_alpha_pll** %5, align 8
  %41 = call i32 @PLL_OPMODE(%struct.clk_alpha_pll* %40)
  %42 = call i32 @regmap_read(%struct.regmap* %39, i32 %41, i32* %7)
  store i32 %42, i32* %4, align 4
  %43 = load i32, i32* %4, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %38
  %46 = load i32, i32* %4, align 4
  store i32 %46, i32* %2, align 4
  br label %124

47:                                               ; preds = %38
  %48 = load i32, i32* %7, align 4
  %49 = load i32, i32* @FABIA_OPMODE_RUN, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %58

52:                                               ; preds = %47
  %53 = load i32, i32* %6, align 4
  %54 = load i32, i32* @PLL_OUTCTRL, align 4
  %55 = and i32 %53, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %52
  store i32 0, i32* %2, align 4
  br label %124

58:                                               ; preds = %52, %47
  %59 = load %struct.regmap*, %struct.regmap** %8, align 8
  %60 = load %struct.clk_alpha_pll*, %struct.clk_alpha_pll** %5, align 8
  %61 = call i32 @PLL_MODE(%struct.clk_alpha_pll* %60)
  %62 = load i32, i32* @PLL_OUTCTRL, align 4
  %63 = call i32 @regmap_update_bits(%struct.regmap* %59, i32 %61, i32 %62, i32 0)
  store i32 %63, i32* %4, align 4
  %64 = load i32, i32* %4, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %68

66:                                               ; preds = %58
  %67 = load i32, i32* %4, align 4
  store i32 %67, i32* %2, align 4
  br label %124

68:                                               ; preds = %58
  %69 = load %struct.regmap*, %struct.regmap** %8, align 8
  %70 = load %struct.clk_alpha_pll*, %struct.clk_alpha_pll** %5, align 8
  %71 = call i32 @PLL_OPMODE(%struct.clk_alpha_pll* %70)
  %72 = load i32, i32* @FABIA_OPMODE_STANDBY, align 4
  %73 = call i32 @regmap_write(%struct.regmap* %69, i32 %71, i32 %72)
  store i32 %73, i32* %4, align 4
  %74 = load i32, i32* %4, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %78

76:                                               ; preds = %68
  %77 = load i32, i32* %4, align 4
  store i32 %77, i32* %2, align 4
  br label %124

78:                                               ; preds = %68
  %79 = load %struct.regmap*, %struct.regmap** %8, align 8
  %80 = load %struct.clk_alpha_pll*, %struct.clk_alpha_pll** %5, align 8
  %81 = call i32 @PLL_MODE(%struct.clk_alpha_pll* %80)
  %82 = load i32, i32* @PLL_RESET_N, align 4
  %83 = load i32, i32* @PLL_RESET_N, align 4
  %84 = call i32 @regmap_update_bits(%struct.regmap* %79, i32 %81, i32 %82, i32 %83)
  store i32 %84, i32* %4, align 4
  %85 = load i32, i32* %4, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %89

87:                                               ; preds = %78
  %88 = load i32, i32* %4, align 4
  store i32 %88, i32* %2, align 4
  br label %124

89:                                               ; preds = %78
  %90 = load %struct.regmap*, %struct.regmap** %8, align 8
  %91 = load %struct.clk_alpha_pll*, %struct.clk_alpha_pll** %5, align 8
  %92 = call i32 @PLL_OPMODE(%struct.clk_alpha_pll* %91)
  %93 = load i32, i32* @FABIA_OPMODE_RUN, align 4
  %94 = call i32 @regmap_write(%struct.regmap* %90, i32 %92, i32 %93)
  store i32 %94, i32* %4, align 4
  %95 = load i32, i32* %4, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %99

97:                                               ; preds = %89
  %98 = load i32, i32* %4, align 4
  store i32 %98, i32* %2, align 4
  br label %124

99:                                               ; preds = %89
  %100 = load %struct.clk_alpha_pll*, %struct.clk_alpha_pll** %5, align 8
  %101 = call i32 @wait_for_pll_enable_lock(%struct.clk_alpha_pll* %100)
  store i32 %101, i32* %4, align 4
  %102 = load i32, i32* %4, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %106

104:                                              ; preds = %99
  %105 = load i32, i32* %4, align 4
  store i32 %105, i32* %2, align 4
  br label %124

106:                                              ; preds = %99
  %107 = load %struct.regmap*, %struct.regmap** %8, align 8
  %108 = load %struct.clk_alpha_pll*, %struct.clk_alpha_pll** %5, align 8
  %109 = call i32 @PLL_USER_CTL(%struct.clk_alpha_pll* %108)
  %110 = load i32, i32* @FABIA_PLL_OUT_MASK, align 4
  %111 = load i32, i32* @FABIA_PLL_OUT_MASK, align 4
  %112 = call i32 @regmap_update_bits(%struct.regmap* %107, i32 %109, i32 %110, i32 %111)
  store i32 %112, i32* %4, align 4
  %113 = load i32, i32* %4, align 4
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %117

115:                                              ; preds = %106
  %116 = load i32, i32* %4, align 4
  store i32 %116, i32* %2, align 4
  br label %124

117:                                              ; preds = %106
  %118 = load %struct.regmap*, %struct.regmap** %8, align 8
  %119 = load %struct.clk_alpha_pll*, %struct.clk_alpha_pll** %5, align 8
  %120 = call i32 @PLL_MODE(%struct.clk_alpha_pll* %119)
  %121 = load i32, i32* @PLL_OUTCTRL, align 4
  %122 = load i32, i32* @PLL_OUTCTRL, align 4
  %123 = call i32 @regmap_update_bits(%struct.regmap* %118, i32 %120, i32 %121, i32 %122)
  store i32 %123, i32* %2, align 4
  br label %124

124:                                              ; preds = %117, %115, %104, %97, %87, %76, %66, %57, %45, %35, %33, %21
  %125 = load i32, i32* %2, align 4
  ret i32 %125
}

declare dso_local %struct.clk_alpha_pll* @to_clk_alpha_pll(%struct.clk_hw*) #1

declare dso_local i32 @regmap_read(%struct.regmap*, i32, i32*) #1

declare dso_local i32 @PLL_MODE(%struct.clk_alpha_pll*) #1

declare dso_local i32 @clk_enable_regmap(%struct.clk_hw*) #1

declare dso_local i32 @wait_for_pll_enable_active(%struct.clk_alpha_pll*) #1

declare dso_local i32 @PLL_OPMODE(%struct.clk_alpha_pll*) #1

declare dso_local i32 @regmap_update_bits(%struct.regmap*, i32, i32, i32) #1

declare dso_local i32 @regmap_write(%struct.regmap*, i32, i32) #1

declare dso_local i32 @wait_for_pll_enable_lock(%struct.clk_alpha_pll*) #1

declare dso_local i32 @PLL_USER_CTL(%struct.clk_alpha_pll*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
