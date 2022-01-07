; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/qcom/extr_clk-alpha-pll.c_clk_alpha_pll_configure.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/qcom/extr_clk-alpha-pll.c_clk_alpha_pll_configure.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_alpha_pll = type { i32 }
%struct.regmap = type { i32 }
%struct.alpha_pll_config = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@SUPPORTS_FSM_MODE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @clk_alpha_pll_configure(%struct.clk_alpha_pll* %0, %struct.regmap* %1, %struct.alpha_pll_config* %2) #0 {
  %4 = alloca %struct.clk_alpha_pll*, align 8
  %5 = alloca %struct.regmap*, align 8
  %6 = alloca %struct.alpha_pll_config*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.clk_alpha_pll* %0, %struct.clk_alpha_pll** %4, align 8
  store %struct.regmap* %1, %struct.regmap** %5, align 8
  store %struct.alpha_pll_config* %2, %struct.alpha_pll_config** %6, align 8
  %9 = load %struct.regmap*, %struct.regmap** %5, align 8
  %10 = load %struct.clk_alpha_pll*, %struct.clk_alpha_pll** %4, align 8
  %11 = call i32 @PLL_L_VAL(%struct.clk_alpha_pll* %10)
  %12 = load %struct.alpha_pll_config*, %struct.alpha_pll_config** %6, align 8
  %13 = getelementptr inbounds %struct.alpha_pll_config, %struct.alpha_pll_config* %12, i32 0, i32 16
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @regmap_write(%struct.regmap* %9, i32 %11, i32 %14)
  %16 = load %struct.regmap*, %struct.regmap** %5, align 8
  %17 = load %struct.clk_alpha_pll*, %struct.clk_alpha_pll** %4, align 8
  %18 = call i32 @PLL_ALPHA_VAL(%struct.clk_alpha_pll* %17)
  %19 = load %struct.alpha_pll_config*, %struct.alpha_pll_config** %6, align 8
  %20 = getelementptr inbounds %struct.alpha_pll_config, %struct.alpha_pll_config* %19, i32 0, i32 15
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @regmap_write(%struct.regmap* %16, i32 %18, i32 %21)
  %23 = load %struct.regmap*, %struct.regmap** %5, align 8
  %24 = load %struct.clk_alpha_pll*, %struct.clk_alpha_pll** %4, align 8
  %25 = call i32 @PLL_CONFIG_CTL(%struct.clk_alpha_pll* %24)
  %26 = load %struct.alpha_pll_config*, %struct.alpha_pll_config** %6, align 8
  %27 = getelementptr inbounds %struct.alpha_pll_config, %struct.alpha_pll_config* %26, i32 0, i32 14
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @regmap_write(%struct.regmap* %23, i32 %25, i32 %28)
  %30 = load %struct.clk_alpha_pll*, %struct.clk_alpha_pll** %4, align 8
  %31 = call i64 @pll_has_64bit_config(%struct.clk_alpha_pll* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %41

33:                                               ; preds = %3
  %34 = load %struct.regmap*, %struct.regmap** %5, align 8
  %35 = load %struct.clk_alpha_pll*, %struct.clk_alpha_pll** %4, align 8
  %36 = call i32 @PLL_CONFIG_CTL_U(%struct.clk_alpha_pll* %35)
  %37 = load %struct.alpha_pll_config*, %struct.alpha_pll_config** %6, align 8
  %38 = getelementptr inbounds %struct.alpha_pll_config, %struct.alpha_pll_config* %37, i32 0, i32 13
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @regmap_write(%struct.regmap* %34, i32 %36, i32 %39)
  br label %41

41:                                               ; preds = %33, %3
  %42 = load %struct.clk_alpha_pll*, %struct.clk_alpha_pll** %4, align 8
  %43 = call i32 @pll_alpha_width(%struct.clk_alpha_pll* %42)
  %44 = icmp sgt i32 %43, 32
  br i1 %44, label %45, label %53

45:                                               ; preds = %41
  %46 = load %struct.regmap*, %struct.regmap** %5, align 8
  %47 = load %struct.clk_alpha_pll*, %struct.clk_alpha_pll** %4, align 8
  %48 = call i32 @PLL_ALPHA_VAL_U(%struct.clk_alpha_pll* %47)
  %49 = load %struct.alpha_pll_config*, %struct.alpha_pll_config** %6, align 8
  %50 = getelementptr inbounds %struct.alpha_pll_config, %struct.alpha_pll_config* %49, i32 0, i32 12
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @regmap_write(%struct.regmap* %46, i32 %48, i32 %51)
  br label %53

53:                                               ; preds = %45, %41
  %54 = load %struct.alpha_pll_config*, %struct.alpha_pll_config** %6, align 8
  %55 = getelementptr inbounds %struct.alpha_pll_config, %struct.alpha_pll_config* %54, i32 0, i32 6
  %56 = load i32, i32* %55, align 4
  store i32 %56, i32* %7, align 4
  %57 = load %struct.alpha_pll_config*, %struct.alpha_pll_config** %6, align 8
  %58 = getelementptr inbounds %struct.alpha_pll_config, %struct.alpha_pll_config* %57, i32 0, i32 5
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* %7, align 4
  %61 = or i32 %60, %59
  store i32 %61, i32* %7, align 4
  %62 = load %struct.alpha_pll_config*, %struct.alpha_pll_config** %6, align 8
  %63 = getelementptr inbounds %struct.alpha_pll_config, %struct.alpha_pll_config* %62, i32 0, i32 4
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* %7, align 4
  %66 = or i32 %65, %64
  store i32 %66, i32* %7, align 4
  %67 = load %struct.alpha_pll_config*, %struct.alpha_pll_config** %6, align 8
  %68 = getelementptr inbounds %struct.alpha_pll_config, %struct.alpha_pll_config* %67, i32 0, i32 3
  %69 = load i32, i32* %68, align 4
  %70 = load i32, i32* %7, align 4
  %71 = or i32 %70, %69
  store i32 %71, i32* %7, align 4
  %72 = load %struct.alpha_pll_config*, %struct.alpha_pll_config** %6, align 8
  %73 = getelementptr inbounds %struct.alpha_pll_config, %struct.alpha_pll_config* %72, i32 0, i32 11
  %74 = load i32, i32* %73, align 4
  %75 = load i32, i32* %7, align 4
  %76 = or i32 %75, %74
  store i32 %76, i32* %7, align 4
  %77 = load %struct.alpha_pll_config*, %struct.alpha_pll_config** %6, align 8
  %78 = getelementptr inbounds %struct.alpha_pll_config, %struct.alpha_pll_config* %77, i32 0, i32 10
  %79 = load i32, i32* %78, align 4
  %80 = load i32, i32* %7, align 4
  %81 = or i32 %80, %79
  store i32 %81, i32* %7, align 4
  %82 = load %struct.alpha_pll_config*, %struct.alpha_pll_config** %6, align 8
  %83 = getelementptr inbounds %struct.alpha_pll_config, %struct.alpha_pll_config* %82, i32 0, i32 9
  %84 = load i32, i32* %83, align 4
  %85 = load i32, i32* %7, align 4
  %86 = or i32 %85, %84
  store i32 %86, i32* %7, align 4
  %87 = load %struct.alpha_pll_config*, %struct.alpha_pll_config** %6, align 8
  %88 = getelementptr inbounds %struct.alpha_pll_config, %struct.alpha_pll_config* %87, i32 0, i32 8
  %89 = load i32, i32* %88, align 4
  %90 = load i32, i32* %7, align 4
  %91 = or i32 %90, %89
  store i32 %91, i32* %7, align 4
  %92 = load %struct.alpha_pll_config*, %struct.alpha_pll_config** %6, align 8
  %93 = getelementptr inbounds %struct.alpha_pll_config, %struct.alpha_pll_config* %92, i32 0, i32 7
  %94 = load i32, i32* %93, align 4
  %95 = load i32, i32* %7, align 4
  %96 = or i32 %95, %94
  store i32 %96, i32* %7, align 4
  %97 = load %struct.alpha_pll_config*, %struct.alpha_pll_config** %6, align 8
  %98 = getelementptr inbounds %struct.alpha_pll_config, %struct.alpha_pll_config* %97, i32 0, i32 6
  %99 = load i32, i32* %98, align 4
  store i32 %99, i32* %8, align 4
  %100 = load %struct.alpha_pll_config*, %struct.alpha_pll_config** %6, align 8
  %101 = getelementptr inbounds %struct.alpha_pll_config, %struct.alpha_pll_config* %100, i32 0, i32 5
  %102 = load i32, i32* %101, align 4
  %103 = load i32, i32* %8, align 4
  %104 = or i32 %103, %102
  store i32 %104, i32* %8, align 4
  %105 = load %struct.alpha_pll_config*, %struct.alpha_pll_config** %6, align 8
  %106 = getelementptr inbounds %struct.alpha_pll_config, %struct.alpha_pll_config* %105, i32 0, i32 4
  %107 = load i32, i32* %106, align 4
  %108 = load i32, i32* %8, align 4
  %109 = or i32 %108, %107
  store i32 %109, i32* %8, align 4
  %110 = load %struct.alpha_pll_config*, %struct.alpha_pll_config** %6, align 8
  %111 = getelementptr inbounds %struct.alpha_pll_config, %struct.alpha_pll_config* %110, i32 0, i32 3
  %112 = load i32, i32* %111, align 4
  %113 = load i32, i32* %8, align 4
  %114 = or i32 %113, %112
  store i32 %114, i32* %8, align 4
  %115 = load %struct.alpha_pll_config*, %struct.alpha_pll_config** %6, align 8
  %116 = getelementptr inbounds %struct.alpha_pll_config, %struct.alpha_pll_config* %115, i32 0, i32 2
  %117 = load i32, i32* %116, align 4
  %118 = load i32, i32* %8, align 4
  %119 = or i32 %118, %117
  store i32 %119, i32* %8, align 4
  %120 = load %struct.alpha_pll_config*, %struct.alpha_pll_config** %6, align 8
  %121 = getelementptr inbounds %struct.alpha_pll_config, %struct.alpha_pll_config* %120, i32 0, i32 1
  %122 = load i32, i32* %121, align 4
  %123 = load i32, i32* %8, align 4
  %124 = or i32 %123, %122
  store i32 %124, i32* %8, align 4
  %125 = load %struct.alpha_pll_config*, %struct.alpha_pll_config** %6, align 8
  %126 = getelementptr inbounds %struct.alpha_pll_config, %struct.alpha_pll_config* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 4
  %128 = load i32, i32* %8, align 4
  %129 = or i32 %128, %127
  store i32 %129, i32* %8, align 4
  %130 = load %struct.regmap*, %struct.regmap** %5, align 8
  %131 = load %struct.clk_alpha_pll*, %struct.clk_alpha_pll** %4, align 8
  %132 = call i32 @PLL_USER_CTL(%struct.clk_alpha_pll* %131)
  %133 = load i32, i32* %8, align 4
  %134 = load i32, i32* %7, align 4
  %135 = call i32 @regmap_update_bits(%struct.regmap* %130, i32 %132, i32 %133, i32 %134)
  %136 = load %struct.clk_alpha_pll*, %struct.clk_alpha_pll** %4, align 8
  %137 = getelementptr inbounds %struct.clk_alpha_pll, %struct.clk_alpha_pll* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 4
  %139 = load i32, i32* @SUPPORTS_FSM_MODE, align 4
  %140 = and i32 %138, %139
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %142, label %147

142:                                              ; preds = %53
  %143 = load %struct.regmap*, %struct.regmap** %5, align 8
  %144 = load %struct.clk_alpha_pll*, %struct.clk_alpha_pll** %4, align 8
  %145 = call i32 @PLL_MODE(%struct.clk_alpha_pll* %144)
  %146 = call i32 @qcom_pll_set_fsm_mode(%struct.regmap* %143, i32 %145, i32 6, i32 0)
  br label %147

147:                                              ; preds = %142, %53
  ret void
}

declare dso_local i32 @regmap_write(%struct.regmap*, i32, i32) #1

declare dso_local i32 @PLL_L_VAL(%struct.clk_alpha_pll*) #1

declare dso_local i32 @PLL_ALPHA_VAL(%struct.clk_alpha_pll*) #1

declare dso_local i32 @PLL_CONFIG_CTL(%struct.clk_alpha_pll*) #1

declare dso_local i64 @pll_has_64bit_config(%struct.clk_alpha_pll*) #1

declare dso_local i32 @PLL_CONFIG_CTL_U(%struct.clk_alpha_pll*) #1

declare dso_local i32 @pll_alpha_width(%struct.clk_alpha_pll*) #1

declare dso_local i32 @PLL_ALPHA_VAL_U(%struct.clk_alpha_pll*) #1

declare dso_local i32 @regmap_update_bits(%struct.regmap*, i32, i32, i32) #1

declare dso_local i32 @PLL_USER_CTL(%struct.clk_alpha_pll*) #1

declare dso_local i32 @qcom_pll_set_fsm_mode(%struct.regmap*, i32, i32, i32) #1

declare dso_local i32 @PLL_MODE(%struct.clk_alpha_pll*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
