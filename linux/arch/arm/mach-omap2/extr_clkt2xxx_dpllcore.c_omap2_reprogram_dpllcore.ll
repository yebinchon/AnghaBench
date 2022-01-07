; ModuleID = '/home/carl/AnghaBench/linux/arch/arm/mach-omap2/extr_clkt2xxx_dpllcore.c_omap2_reprogram_dpllcore.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm/mach-omap2/extr_clkt2xxx_dpllcore.c_omap2_reprogram_dpllcore.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_3__ = type { i32 (i32*)* }
%struct.clk_hw = type { i32 }
%struct.clk_hw_omap = type { %struct.dpll_data* }
%struct.dpll_data = type { i32, i32, i32 }
%struct.prcm_config = type { i32, i32, i32 }

@CORE_CLK_SRC_DPLL = common dso_local global i32 0, align 4
@CORE_CLK_SRC_DPLL_X2 = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@curr_prcm_set = common dso_local global %struct.TYPE_4__* null, align 8
@omap_clk_ll_ops = common dso_local global %struct.TYPE_3__ zeroinitializer, align 8
@OMAP24XX_CORE_CLK_SRC_MASK = common dso_local global i32 0, align 4
@SDRC_RFR_CTRL_BYPASS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @omap2_reprogram_dpllcore(%struct.clk_hw* %0, i64 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.clk_hw*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.clk_hw_omap*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.prcm_config, align 4
  %17 = alloca %struct.dpll_data*, align 8
  store %struct.clk_hw* %0, %struct.clk_hw** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  %18 = load %struct.clk_hw*, %struct.clk_hw** %5, align 8
  %19 = call %struct.clk_hw_omap* @to_clk_hw_omap(%struct.clk_hw* %18)
  store %struct.clk_hw_omap* %19, %struct.clk_hw_omap** %8, align 8
  store i32 0, i32* %15, align 4
  %20 = call i32 (...) @omap2xxx_clk_get_core_rate()
  store i32 %20, i32* %9, align 4
  %21 = call i32 (...) @omap2xxx_cm_get_core_clk_src()
  store i32 %21, i32* %11, align 4
  %22 = load i64, i64* %6, align 8
  %23 = load i32, i32* %9, align 4
  %24 = sdiv i32 %23, 2
  %25 = sext i32 %24 to i64
  %26 = icmp eq i64 %22, %25
  br i1 %26, label %27, label %33

27:                                               ; preds = %3
  %28 = load i32, i32* %11, align 4
  %29 = icmp eq i32 %28, 2
  br i1 %29, label %30, label %33

30:                                               ; preds = %27
  %31 = load i32, i32* @CORE_CLK_SRC_DPLL, align 4
  %32 = call i32 @omap2xxx_sdrc_reprogram(i32 %31, i32 1)
  br label %176

33:                                               ; preds = %27, %3
  %34 = load i64, i64* %6, align 8
  %35 = load i32, i32* %9, align 4
  %36 = mul nsw i32 %35, 2
  %37 = sext i32 %36 to i64
  %38 = icmp eq i64 %34, %37
  br i1 %38, label %39, label %45

39:                                               ; preds = %33
  %40 = load i32, i32* %11, align 4
  %41 = icmp eq i32 %40, 1
  br i1 %41, label %42, label %45

42:                                               ; preds = %39
  %43 = load i32, i32* @CORE_CLK_SRC_DPLL_X2, align 4
  %44 = call i32 @omap2xxx_sdrc_reprogram(i32 %43, i32 1)
  br label %175

45:                                               ; preds = %39, %33
  %46 = load i64, i64* %6, align 8
  %47 = load i32, i32* %9, align 4
  %48 = sext i32 %47 to i64
  %49 = icmp ne i64 %46, %48
  br i1 %49, label %50, label %174

50:                                               ; preds = %45
  %51 = load i64, i64* %6, align 8
  %52 = call i32 @omap2_dpllcore_round_rate(i64 %51)
  store i32 %52, i32* %13, align 4
  %53 = load i32, i32* %13, align 4
  %54 = sext i32 %53 to i64
  %55 = load i64, i64* %6, align 8
  %56 = icmp ne i64 %54, %55
  br i1 %56, label %57, label %60

57:                                               ; preds = %50
  %58 = load i32, i32* @EINVAL, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %4, align 4
  br label %177

60:                                               ; preds = %50
  %61 = load i32, i32* %11, align 4
  %62 = icmp eq i32 %61, 1
  br i1 %62, label %63, label %67

63:                                               ; preds = %60
  %64 = load %struct.TYPE_4__*, %struct.TYPE_4__** @curr_prcm_set, align 8
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  store i32 %66, i32* %10, align 4
  br label %72

67:                                               ; preds = %60
  %68 = load %struct.TYPE_4__*, %struct.TYPE_4__** @curr_prcm_set, align 8
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = sdiv i32 %70, 2
  store i32 %71, i32* %10, align 4
  br label %72

72:                                               ; preds = %67, %63
  %73 = load %struct.clk_hw_omap*, %struct.clk_hw_omap** %8, align 8
  %74 = getelementptr inbounds %struct.clk_hw_omap, %struct.clk_hw_omap* %73, i32 0, i32 0
  %75 = load %struct.dpll_data*, %struct.dpll_data** %74, align 8
  store %struct.dpll_data* %75, %struct.dpll_data** %17, align 8
  %76 = load %struct.dpll_data*, %struct.dpll_data** %17, align 8
  %77 = icmp ne %struct.dpll_data* %76, null
  br i1 %77, label %81, label %78

78:                                               ; preds = %72
  %79 = load i32, i32* @EINVAL, align 4
  %80 = sub nsw i32 0, %79
  store i32 %80, i32* %4, align 4
  br label %177

81:                                               ; preds = %72
  %82 = load i32 (i32*)*, i32 (i32*)** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @omap_clk_ll_ops, i32 0, i32 0), align 8
  %83 = load %struct.dpll_data*, %struct.dpll_data** %17, align 8
  %84 = getelementptr inbounds %struct.dpll_data, %struct.dpll_data* %83, i32 0, i32 2
  %85 = call i32 %82(i32* %84)
  %86 = getelementptr inbounds %struct.prcm_config, %struct.prcm_config* %16, i32 0, i32 0
  store i32 %85, i32* %86, align 4
  %87 = load %struct.dpll_data*, %struct.dpll_data** %17, align 8
  %88 = getelementptr inbounds %struct.dpll_data, %struct.dpll_data* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = load %struct.dpll_data*, %struct.dpll_data** %17, align 8
  %91 = getelementptr inbounds %struct.dpll_data, %struct.dpll_data* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = or i32 %89, %92
  %94 = xor i32 %93, -1
  %95 = getelementptr inbounds %struct.prcm_config, %struct.prcm_config* %16, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = and i32 %96, %94
  store i32 %97, i32* %95, align 4
  %98 = load %struct.TYPE_4__*, %struct.TYPE_4__** @curr_prcm_set, align 8
  %99 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 4
  %101 = sdiv i32 %100, 1000000
  %102 = sub nsw i32 %101, 1
  store i32 %102, i32* %12, align 4
  %103 = call i32 (...) @omap2xxx_cm_get_core_pll_config()
  %104 = getelementptr inbounds %struct.prcm_config, %struct.prcm_config* %16, i32 0, i32 1
  store i32 %103, i32* %104, align 4
  %105 = load i32, i32* @OMAP24XX_CORE_CLK_SRC_MASK, align 4
  %106 = xor i32 %105, -1
  %107 = getelementptr inbounds %struct.prcm_config, %struct.prcm_config* %16, i32 0, i32 1
  %108 = load i32, i32* %107, align 4
  %109 = and i32 %108, %106
  store i32 %109, i32* %107, align 4
  %110 = load i64, i64* %6, align 8
  %111 = load i32, i32* %10, align 4
  %112 = sext i32 %111 to i64
  %113 = icmp ugt i64 %110, %112
  br i1 %113, label %114, label %124

114:                                              ; preds = %81
  %115 = load i32, i32* @CORE_CLK_SRC_DPLL_X2, align 4
  %116 = getelementptr inbounds %struct.prcm_config, %struct.prcm_config* %16, i32 0, i32 1
  %117 = load i32, i32* %116, align 4
  %118 = or i32 %117, %115
  store i32 %118, i32* %116, align 4
  %119 = load i64, i64* %6, align 8
  %120 = udiv i64 %119, 2
  %121 = udiv i64 %120, 1000000
  %122 = trunc i64 %121 to i32
  store i32 %122, i32* %11, align 4
  %123 = load i32, i32* @CORE_CLK_SRC_DPLL_X2, align 4
  store i32 %123, i32* %14, align 4
  br label %133

124:                                              ; preds = %81
  %125 = load i32, i32* @CORE_CLK_SRC_DPLL, align 4
  %126 = getelementptr inbounds %struct.prcm_config, %struct.prcm_config* %16, i32 0, i32 1
  %127 = load i32, i32* %126, align 4
  %128 = or i32 %127, %125
  store i32 %128, i32* %126, align 4
  %129 = load i64, i64* %6, align 8
  %130 = udiv i64 %129, 1000000
  %131 = trunc i64 %130 to i32
  store i32 %131, i32* %11, align 4
  %132 = load i32, i32* @CORE_CLK_SRC_DPLL, align 4
  store i32 %132, i32* %14, align 4
  br label %133

133:                                              ; preds = %124, %114
  %134 = load i32, i32* %12, align 4
  %135 = load %struct.dpll_data*, %struct.dpll_data** %17, align 8
  %136 = getelementptr inbounds %struct.dpll_data, %struct.dpll_data* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 4
  %138 = call i32 @__ffs(i32 %137)
  %139 = shl i32 %134, %138
  %140 = getelementptr inbounds %struct.prcm_config, %struct.prcm_config* %16, i32 0, i32 0
  %141 = load i32, i32* %140, align 4
  %142 = or i32 %141, %139
  store i32 %142, i32* %140, align 4
  %143 = load i32, i32* %11, align 4
  %144 = load %struct.dpll_data*, %struct.dpll_data** %17, align 8
  %145 = getelementptr inbounds %struct.dpll_data, %struct.dpll_data* %144, i32 0, i32 1
  %146 = load i32, i32* %145, align 4
  %147 = call i32 @__ffs(i32 %146)
  %148 = shl i32 %143, %147
  %149 = getelementptr inbounds %struct.prcm_config, %struct.prcm_config* %16, i32 0, i32 0
  %150 = load i32, i32* %149, align 4
  %151 = or i32 %150, %148
  store i32 %151, i32* %149, align 4
  %152 = load i32, i32* @SDRC_RFR_CTRL_BYPASS, align 4
  %153 = getelementptr inbounds %struct.prcm_config, %struct.prcm_config* %16, i32 0, i32 2
  store i32 %152, i32* %153, align 4
  %154 = load i64, i64* %6, align 8
  %155 = load %struct.TYPE_4__*, %struct.TYPE_4__** @curr_prcm_set, align 8
  %156 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %155, i32 0, i32 1
  %157 = load i32, i32* %156, align 4
  %158 = sext i32 %157 to i64
  %159 = icmp eq i64 %154, %158
  br i1 %159, label %160, label %161

160:                                              ; preds = %133
  store i32 1, i32* %15, align 4
  br label %161

161:                                              ; preds = %160, %133
  %162 = load i32, i32* @CORE_CLK_SRC_DPLL_X2, align 4
  %163 = call i32 @omap2xxx_sdrc_reprogram(i32 %162, i32 1)
  %164 = getelementptr inbounds %struct.prcm_config, %struct.prcm_config* %16, i32 0, i32 0
  %165 = load i32, i32* %164, align 4
  %166 = getelementptr inbounds %struct.prcm_config, %struct.prcm_config* %16, i32 0, i32 2
  %167 = load i32, i32* %166, align 4
  %168 = load i32, i32* %15, align 4
  %169 = call i32 @omap2_set_prcm(i32 %165, i32 %167, i32 %168)
  %170 = call i32 (...) @omap2xxx_sdrc_dll_is_unlocked()
  %171 = call i32 @omap2xxx_sdrc_init_params(i32 %170)
  %172 = load i32, i32* %14, align 4
  %173 = call i32 @omap2xxx_sdrc_reprogram(i32 %172, i32 0)
  br label %174

174:                                              ; preds = %161, %45
  br label %175

175:                                              ; preds = %174, %42
  br label %176

176:                                              ; preds = %175, %30
  store i32 0, i32* %4, align 4
  br label %177

177:                                              ; preds = %176, %78, %57
  %178 = load i32, i32* %4, align 4
  ret i32 %178
}

declare dso_local %struct.clk_hw_omap* @to_clk_hw_omap(%struct.clk_hw*) #1

declare dso_local i32 @omap2xxx_clk_get_core_rate(...) #1

declare dso_local i32 @omap2xxx_cm_get_core_clk_src(...) #1

declare dso_local i32 @omap2xxx_sdrc_reprogram(i32, i32) #1

declare dso_local i32 @omap2_dpllcore_round_rate(i64) #1

declare dso_local i32 @omap2xxx_cm_get_core_pll_config(...) #1

declare dso_local i32 @__ffs(i32) #1

declare dso_local i32 @omap2_set_prcm(i32, i32, i32) #1

declare dso_local i32 @omap2xxx_sdrc_init_params(i32) #1

declare dso_local i32 @omap2xxx_sdrc_dll_is_unlocked(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
