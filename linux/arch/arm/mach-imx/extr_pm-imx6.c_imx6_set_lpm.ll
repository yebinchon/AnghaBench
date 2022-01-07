; ModuleID = '/home/carl/AnghaBench/linux/arch/arm/mach-imx/extr_pm-imx6.c_imx6_set_lpm.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm/mach-imx/extr_pm-imx6.c_imx6_set_lpm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ccm_base = common dso_local global i64 0, align 8
@CLPCR = common dso_local global i64 0, align 8
@BM_CLPCR_LPM = common dso_local global i32 0, align 4
@BP_CLPCR_LPM = common dso_local global i32 0, align 4
@BM_CLPCR_ARM_CLK_DIS_ON_LPM = common dso_local global i32 0, align 4
@BM_CLPCR_VSTBY = common dso_local global i32 0, align 4
@BM_CLPCR_SBYOS = common dso_local global i32 0, align 4
@BM_CLPCR_BYPASS_PMIC_READY = common dso_local global i32 0, align 4
@BM_CLPCR_BYP_MMDC_CH0_LPM_HS = common dso_local global i32 0, align 4
@BM_CLPCR_BYP_MMDC_CH1_LPM_HS = common dso_local global i32 0, align 4
@BP_CLPCR_STBY_COUNT = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @imx6_set_lpm(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %5 = load i64, i64* @ccm_base, align 8
  %6 = load i64, i64* @CLPCR, align 8
  %7 = add nsw i64 %5, %6
  %8 = call i32 @readl_relaxed(i64 %7)
  store i32 %8, i32* %4, align 4
  %9 = load i32, i32* @BM_CLPCR_LPM, align 4
  %10 = xor i32 %9, -1
  %11 = load i32, i32* %4, align 4
  %12 = and i32 %11, %10
  store i32 %12, i32* %4, align 4
  %13 = load i32, i32* %3, align 4
  switch i32 %13, label %133 [
    i32 130, label %14
    i32 129, label %15
    i32 131, label %23
    i32 128, label %69
    i32 132, label %82
  ]

14:                                               ; preds = %1
  br label %136

15:                                               ; preds = %1
  %16 = load i32, i32* @BP_CLPCR_LPM, align 4
  %17 = shl i32 1, %16
  %18 = load i32, i32* %4, align 4
  %19 = or i32 %18, %17
  store i32 %19, i32* %4, align 4
  %20 = load i32, i32* @BM_CLPCR_ARM_CLK_DIS_ON_LPM, align 4
  %21 = load i32, i32* %4, align 4
  %22 = or i32 %21, %20
  store i32 %22, i32* %4, align 4
  br label %136

23:                                               ; preds = %1
  %24 = load i32, i32* @BP_CLPCR_LPM, align 4
  %25 = shl i32 2, %24
  %26 = load i32, i32* %4, align 4
  %27 = or i32 %26, %25
  store i32 %27, i32* %4, align 4
  %28 = load i32, i32* @BM_CLPCR_VSTBY, align 4
  %29 = xor i32 %28, -1
  %30 = load i32, i32* %4, align 4
  %31 = and i32 %30, %29
  store i32 %31, i32* %4, align 4
  %32 = load i32, i32* @BM_CLPCR_SBYOS, align 4
  %33 = xor i32 %32, -1
  %34 = load i32, i32* %4, align 4
  %35 = and i32 %34, %33
  store i32 %35, i32* %4, align 4
  %36 = call i32 (...) @cpu_is_imx6sl()
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %42

38:                                               ; preds = %23
  %39 = load i32, i32* @BM_CLPCR_BYPASS_PMIC_READY, align 4
  %40 = load i32, i32* %4, align 4
  %41 = or i32 %40, %39
  store i32 %41, i32* %4, align 4
  br label %42

42:                                               ; preds = %38, %23
  %43 = call i32 (...) @cpu_is_imx6sl()
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %60, label %45

45:                                               ; preds = %42
  %46 = call i32 (...) @cpu_is_imx6sx()
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %60, label %48

48:                                               ; preds = %45
  %49 = call i32 (...) @cpu_is_imx6ul()
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %60, label %51

51:                                               ; preds = %48
  %52 = call i32 (...) @cpu_is_imx6ull()
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %60, label %54

54:                                               ; preds = %51
  %55 = call i32 (...) @cpu_is_imx6sll()
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %60, label %57

57:                                               ; preds = %54
  %58 = call i32 (...) @cpu_is_imx6ulz()
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %64

60:                                               ; preds = %57, %54, %51, %48, %45, %42
  %61 = load i32, i32* @BM_CLPCR_BYP_MMDC_CH0_LPM_HS, align 4
  %62 = load i32, i32* %4, align 4
  %63 = or i32 %62, %61
  store i32 %63, i32* %4, align 4
  br label %68

64:                                               ; preds = %57
  %65 = load i32, i32* @BM_CLPCR_BYP_MMDC_CH1_LPM_HS, align 4
  %66 = load i32, i32* %4, align 4
  %67 = or i32 %66, %65
  store i32 %67, i32* %4, align 4
  br label %68

68:                                               ; preds = %64, %60
  br label %136

69:                                               ; preds = %1
  %70 = load i32, i32* @BP_CLPCR_LPM, align 4
  %71 = shl i32 1, %70
  %72 = load i32, i32* %4, align 4
  %73 = or i32 %72, %71
  store i32 %73, i32* %4, align 4
  %74 = load i32, i32* @BM_CLPCR_VSTBY, align 4
  %75 = xor i32 %74, -1
  %76 = load i32, i32* %4, align 4
  %77 = and i32 %76, %75
  store i32 %77, i32* %4, align 4
  %78 = load i32, i32* @BM_CLPCR_SBYOS, align 4
  %79 = xor i32 %78, -1
  %80 = load i32, i32* %4, align 4
  %81 = and i32 %80, %79
  store i32 %81, i32* %4, align 4
  br label %136

82:                                               ; preds = %1
  %83 = load i32, i32* @BP_CLPCR_LPM, align 4
  %84 = shl i32 2, %83
  %85 = load i32, i32* %4, align 4
  %86 = or i32 %85, %84
  store i32 %86, i32* %4, align 4
  %87 = load i32, i32* @BP_CLPCR_STBY_COUNT, align 4
  %88 = shl i32 3, %87
  %89 = load i32, i32* %4, align 4
  %90 = or i32 %89, %88
  store i32 %90, i32* %4, align 4
  %91 = load i32, i32* @BM_CLPCR_VSTBY, align 4
  %92 = load i32, i32* %4, align 4
  %93 = or i32 %92, %91
  store i32 %93, i32* %4, align 4
  %94 = load i32, i32* @BM_CLPCR_SBYOS, align 4
  %95 = load i32, i32* %4, align 4
  %96 = or i32 %95, %94
  store i32 %96, i32* %4, align 4
  %97 = call i32 (...) @cpu_is_imx6sl()
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %102, label %99

99:                                               ; preds = %82
  %100 = call i32 (...) @cpu_is_imx6sx()
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %106

102:                                              ; preds = %99, %82
  %103 = load i32, i32* @BM_CLPCR_BYPASS_PMIC_READY, align 4
  %104 = load i32, i32* %4, align 4
  %105 = or i32 %104, %103
  store i32 %105, i32* %4, align 4
  br label %106

106:                                              ; preds = %102, %99
  %107 = call i32 (...) @cpu_is_imx6sl()
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %124, label %109

109:                                              ; preds = %106
  %110 = call i32 (...) @cpu_is_imx6sx()
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %124, label %112

112:                                              ; preds = %109
  %113 = call i32 (...) @cpu_is_imx6ul()
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %124, label %115

115:                                              ; preds = %112
  %116 = call i32 (...) @cpu_is_imx6ull()
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %124, label %118

118:                                              ; preds = %115
  %119 = call i32 (...) @cpu_is_imx6sll()
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %124, label %121

121:                                              ; preds = %118
  %122 = call i32 (...) @cpu_is_imx6ulz()
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %128

124:                                              ; preds = %121, %118, %115, %112, %109, %106
  %125 = load i32, i32* @BM_CLPCR_BYP_MMDC_CH0_LPM_HS, align 4
  %126 = load i32, i32* %4, align 4
  %127 = or i32 %126, %125
  store i32 %127, i32* %4, align 4
  br label %132

128:                                              ; preds = %121
  %129 = load i32, i32* @BM_CLPCR_BYP_MMDC_CH1_LPM_HS, align 4
  %130 = load i32, i32* %4, align 4
  %131 = or i32 %130, %129
  store i32 %131, i32* %4, align 4
  br label %132

132:                                              ; preds = %128, %124
  br label %136

133:                                              ; preds = %1
  %134 = load i32, i32* @EINVAL, align 4
  %135 = sub nsw i32 0, %134
  store i32 %135, i32* %2, align 4
  br label %152

136:                                              ; preds = %132, %69, %68, %15, %14
  %137 = load i32, i32* %3, align 4
  %138 = icmp ne i32 %137, 130
  br i1 %138, label %139, label %141

139:                                              ; preds = %136
  %140 = call i32 @imx_gpc_hwirq_unmask(i32 0)
  br label %141

141:                                              ; preds = %139, %136
  %142 = load i32, i32* %4, align 4
  %143 = load i64, i64* @ccm_base, align 8
  %144 = load i64, i64* @CLPCR, align 8
  %145 = add nsw i64 %143, %144
  %146 = call i32 @writel_relaxed(i32 %142, i64 %145)
  %147 = load i32, i32* %3, align 4
  %148 = icmp ne i32 %147, 130
  br i1 %148, label %149, label %151

149:                                              ; preds = %141
  %150 = call i32 @imx_gpc_hwirq_mask(i32 0)
  br label %151

151:                                              ; preds = %149, %141
  store i32 0, i32* %2, align 4
  br label %152

152:                                              ; preds = %151, %133
  %153 = load i32, i32* %2, align 4
  ret i32 %153
}

declare dso_local i32 @readl_relaxed(i64) #1

declare dso_local i32 @cpu_is_imx6sl(...) #1

declare dso_local i32 @cpu_is_imx6sx(...) #1

declare dso_local i32 @cpu_is_imx6ul(...) #1

declare dso_local i32 @cpu_is_imx6ull(...) #1

declare dso_local i32 @cpu_is_imx6sll(...) #1

declare dso_local i32 @cpu_is_imx6ulz(...) #1

declare dso_local i32 @imx_gpc_hwirq_unmask(i32) #1

declare dso_local i32 @writel_relaxed(i32, i64) #1

declare dso_local i32 @imx_gpc_hwirq_mask(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
