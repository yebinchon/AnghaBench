; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/qcom/extr_gdsc.c_gdsc_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/qcom/extr_gdsc.c_gdsc_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gdsc = type { i64, i32, %struct.TYPE_3__, i32, i32 }
%struct.TYPE_3__ = type { i32 (%struct.TYPE_3__*)*, i64, i32 }

@HW_CONTROL_MASK = common dso_local global i32 0, align 4
@SW_OVERRIDE_MASK = common dso_local global i32 0, align 4
@EN_REST_WAIT_MASK = common dso_local global i32 0, align 4
@EN_FEW_WAIT_MASK = common dso_local global i32 0, align 4
@CLK_DIS_WAIT_MASK = common dso_local global i32 0, align 4
@EN_REST_WAIT_VAL = common dso_local global i32 0, align 4
@EN_FEW_WAIT_VAL = common dso_local global i32 0, align 4
@CLK_DIS_WAIT_VAL = common dso_local global i32 0, align 4
@PWRSTS_ON = common dso_local global i64 0, align 8
@GDSC_ON = common dso_local global i32 0, align 4
@VOTABLE = common dso_local global i32 0, align 4
@ALWAYS_ON = common dso_local global i32 0, align 4
@GENPD_FLAG_ALWAYS_ON = common dso_local global i32 0, align 4
@PWRSTS_RET = common dso_local global i32 0, align 4
@gdsc_disable = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gdsc*)* @gdsc_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gdsc_init(%struct.gdsc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.gdsc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.gdsc* %0, %struct.gdsc** %3, align 8
  %8 = load i32, i32* @HW_CONTROL_MASK, align 4
  %9 = load i32, i32* @SW_OVERRIDE_MASK, align 4
  %10 = or i32 %8, %9
  %11 = load i32, i32* @EN_REST_WAIT_MASK, align 4
  %12 = or i32 %10, %11
  %13 = load i32, i32* @EN_FEW_WAIT_MASK, align 4
  %14 = or i32 %12, %13
  %15 = load i32, i32* @CLK_DIS_WAIT_MASK, align 4
  %16 = or i32 %14, %15
  store i32 %16, i32* %4, align 4
  %17 = load i32, i32* @EN_REST_WAIT_VAL, align 4
  %18 = load i32, i32* @EN_FEW_WAIT_VAL, align 4
  %19 = or i32 %17, %18
  %20 = load i32, i32* @CLK_DIS_WAIT_VAL, align 4
  %21 = or i32 %19, %20
  store i32 %21, i32* %5, align 4
  %22 = load %struct.gdsc*, %struct.gdsc** %3, align 8
  %23 = getelementptr inbounds %struct.gdsc, %struct.gdsc* %22, i32 0, i32 4
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.gdsc*, %struct.gdsc** %3, align 8
  %26 = getelementptr inbounds %struct.gdsc, %struct.gdsc* %25, i32 0, i32 3
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* %4, align 4
  %29 = load i32, i32* %5, align 4
  %30 = call i32 @regmap_update_bits(i32 %24, i32 %27, i32 %28, i32 %29)
  store i32 %30, i32* %7, align 4
  %31 = load i32, i32* %7, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %1
  %34 = load i32, i32* %7, align 4
  store i32 %34, i32* %2, align 4
  br label %139

35:                                               ; preds = %1
  %36 = load %struct.gdsc*, %struct.gdsc** %3, align 8
  %37 = getelementptr inbounds %struct.gdsc, %struct.gdsc* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @PWRSTS_ON, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %50

41:                                               ; preds = %35
  %42 = load %struct.gdsc*, %struct.gdsc** %3, align 8
  %43 = load i32, i32* @GDSC_ON, align 4
  %44 = call i32 @gdsc_toggle_logic(%struct.gdsc* %42, i32 %43)
  store i32 %44, i32* %7, align 4
  %45 = load i32, i32* %7, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %41
  %48 = load i32, i32* %7, align 4
  store i32 %48, i32* %2, align 4
  br label %139

49:                                               ; preds = %41
  br label %50

50:                                               ; preds = %49, %35
  %51 = load %struct.gdsc*, %struct.gdsc** %3, align 8
  %52 = load i32, i32* @GDSC_ON, align 4
  %53 = call i32 @gdsc_check_status(%struct.gdsc* %51, i32 %52)
  store i32 %53, i32* %6, align 4
  %54 = load i32, i32* %6, align 4
  %55 = icmp slt i32 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %50
  %57 = load i32, i32* %6, align 4
  store i32 %57, i32* %2, align 4
  br label %139

58:                                               ; preds = %50
  %59 = load %struct.gdsc*, %struct.gdsc** %3, align 8
  %60 = getelementptr inbounds %struct.gdsc, %struct.gdsc* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 8
  %62 = load i32, i32* @VOTABLE, align 4
  %63 = and i32 %61, %62
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %72

65:                                               ; preds = %58
  %66 = load i32, i32* %6, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %72

68:                                               ; preds = %65
  %69 = load %struct.gdsc*, %struct.gdsc** %3, align 8
  %70 = getelementptr inbounds %struct.gdsc, %struct.gdsc* %69, i32 0, i32 2
  %71 = call i32 @gdsc_enable(%struct.TYPE_3__* %70)
  br label %72

72:                                               ; preds = %68, %65, %58
  %73 = load %struct.gdsc*, %struct.gdsc** %3, align 8
  %74 = getelementptr inbounds %struct.gdsc, %struct.gdsc* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 8
  %76 = load i32, i32* @ALWAYS_ON, align 4
  %77 = and i32 %75, %76
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %93

79:                                               ; preds = %72
  %80 = load i32, i32* %6, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %86, label %82

82:                                               ; preds = %79
  %83 = load %struct.gdsc*, %struct.gdsc** %3, align 8
  %84 = getelementptr inbounds %struct.gdsc, %struct.gdsc* %83, i32 0, i32 2
  %85 = call i32 @gdsc_enable(%struct.TYPE_3__* %84)
  br label %86

86:                                               ; preds = %82, %79
  store i32 1, i32* %6, align 4
  %87 = load i32, i32* @GENPD_FLAG_ALWAYS_ON, align 4
  %88 = load %struct.gdsc*, %struct.gdsc** %3, align 8
  %89 = getelementptr inbounds %struct.gdsc, %struct.gdsc* %88, i32 0, i32 2
  %90 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %89, i32 0, i32 2
  %91 = load i32, i32* %90, align 8
  %92 = or i32 %91, %87
  store i32 %92, i32* %90, align 8
  br label %93

93:                                               ; preds = %86, %72
  %94 = load i32, i32* %6, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %104, label %96

96:                                               ; preds = %93
  %97 = load %struct.gdsc*, %struct.gdsc** %3, align 8
  %98 = getelementptr inbounds %struct.gdsc, %struct.gdsc* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = load i32, i32* @PWRSTS_RET, align 4
  %101 = sext i32 %100 to i64
  %102 = and i64 %99, %101
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %107

104:                                              ; preds = %96, %93
  %105 = load %struct.gdsc*, %struct.gdsc** %3, align 8
  %106 = call i32 @gdsc_force_mem_on(%struct.gdsc* %105)
  br label %110

107:                                              ; preds = %96
  %108 = load %struct.gdsc*, %struct.gdsc** %3, align 8
  %109 = call i32 @gdsc_clear_mem_on(%struct.gdsc* %108)
  br label %110

110:                                              ; preds = %107, %104
  %111 = load %struct.gdsc*, %struct.gdsc** %3, align 8
  %112 = getelementptr inbounds %struct.gdsc, %struct.gdsc* %111, i32 0, i32 2
  %113 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %112, i32 0, i32 1
  %114 = load i64, i64* %113, align 8
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %121, label %116

116:                                              ; preds = %110
  %117 = load i64, i64* @gdsc_disable, align 8
  %118 = load %struct.gdsc*, %struct.gdsc** %3, align 8
  %119 = getelementptr inbounds %struct.gdsc, %struct.gdsc* %118, i32 0, i32 2
  %120 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %119, i32 0, i32 1
  store i64 %117, i64* %120, align 8
  br label %121

121:                                              ; preds = %116, %110
  %122 = load %struct.gdsc*, %struct.gdsc** %3, align 8
  %123 = getelementptr inbounds %struct.gdsc, %struct.gdsc* %122, i32 0, i32 2
  %124 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %123, i32 0, i32 0
  %125 = load i32 (%struct.TYPE_3__*)*, i32 (%struct.TYPE_3__*)** %124, align 8
  %126 = icmp ne i32 (%struct.TYPE_3__*)* %125, null
  br i1 %126, label %131, label %127

127:                                              ; preds = %121
  %128 = load %struct.gdsc*, %struct.gdsc** %3, align 8
  %129 = getelementptr inbounds %struct.gdsc, %struct.gdsc* %128, i32 0, i32 2
  %130 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %129, i32 0, i32 0
  store i32 (%struct.TYPE_3__*)* @gdsc_enable, i32 (%struct.TYPE_3__*)** %130, align 8
  br label %131

131:                                              ; preds = %127, %121
  %132 = load %struct.gdsc*, %struct.gdsc** %3, align 8
  %133 = getelementptr inbounds %struct.gdsc, %struct.gdsc* %132, i32 0, i32 2
  %134 = load i32, i32* %6, align 4
  %135 = icmp ne i32 %134, 0
  %136 = xor i1 %135, true
  %137 = zext i1 %136 to i32
  %138 = call i32 @pm_genpd_init(%struct.TYPE_3__* %133, i32* null, i32 %137)
  store i32 0, i32* %2, align 4
  br label %139

139:                                              ; preds = %131, %56, %47, %33
  %140 = load i32, i32* %2, align 4
  ret i32 %140
}

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

declare dso_local i32 @gdsc_toggle_logic(%struct.gdsc*, i32) #1

declare dso_local i32 @gdsc_check_status(%struct.gdsc*, i32) #1

declare dso_local i32 @gdsc_enable(%struct.TYPE_3__*) #1

declare dso_local i32 @gdsc_force_mem_on(%struct.gdsc*) #1

declare dso_local i32 @gdsc_clear_mem_on(%struct.gdsc*) #1

declare dso_local i32 @pm_genpd_init(%struct.TYPE_3__*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
