; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/tegra/extr_clk-dfll.c_dfll_fetch_pwm_params.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/tegra/extr_clk-dfll.c_dfll_fetch_pwm_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tegra_dfll = type { i32, i32, i8*, i32, i8*, i8*, %struct.TYPE_4__*, i64* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i64 }

@.str = private unnamed_addr constant [49 x i8] c"Missing step or alignment info for PWM regulator\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@MAX_DFLL_VOLTAGES = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"nvidia,pwm-tristate-microvolts\00", align 1
@.str.2 = private unnamed_addr constant [34 x i8] c"couldn't get initialized voltage\0A\00", align 1
@.str.3 = private unnamed_addr constant [30 x i8] c"nvidia,pwm-period-nanoseconds\00", align 1
@.str.4 = private unnamed_addr constant [25 x i8] c"couldn't get PWM period\0A\00", align 1
@NSEC_PER_SEC = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [28 x i8] c"DT: missing pinctrl device\0A\00", align 1
@.str.6 = private unnamed_addr constant [16 x i8] c"dvfs_pwm_enable\00", align 1
@.str.7 = private unnamed_addr constant [31 x i8] c"DT: missing pwm enabled state\0A\00", align 1
@.str.8 = private unnamed_addr constant [17 x i8] c"dvfs_pwm_disable\00", align 1
@.str.9 = private unnamed_addr constant [32 x i8] c"DT: missing pwm disabled state\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tegra_dfll*)* @dfll_fetch_pwm_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dfll_fetch_pwm_params(%struct.tegra_dfll* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.tegra_dfll*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.tegra_dfll* %0, %struct.tegra_dfll** %3, align 8
  %7 = load %struct.tegra_dfll*, %struct.tegra_dfll** %3, align 8
  %8 = getelementptr inbounds %struct.tegra_dfll, %struct.tegra_dfll* %7, i32 0, i32 6
  %9 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %22

14:                                               ; preds = %1
  %15 = load %struct.tegra_dfll*, %struct.tegra_dfll** %3, align 8
  %16 = getelementptr inbounds %struct.tegra_dfll, %struct.tegra_dfll* %15, i32 0, i32 6
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %29, label %22

22:                                               ; preds = %14, %1
  %23 = load %struct.tegra_dfll*, %struct.tegra_dfll** %3, align 8
  %24 = getelementptr inbounds %struct.tegra_dfll, %struct.tegra_dfll* %23, i32 0, i32 3
  %25 = load i32, i32* %24, align 8
  %26 = call i32 @dev_err(i32 %25, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0))
  %27 = load i32, i32* @EINVAL, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %2, align 4
  br label %156

29:                                               ; preds = %14
  store i32 0, i32* %5, align 4
  br label %30

30:                                               ; preds = %57, %29
  %31 = load i32, i32* %5, align 4
  %32 = load i32, i32* @MAX_DFLL_VOLTAGES, align 4
  %33 = icmp slt i32 %31, %32
  br i1 %33, label %34, label %60

34:                                               ; preds = %30
  %35 = load %struct.tegra_dfll*, %struct.tegra_dfll** %3, align 8
  %36 = getelementptr inbounds %struct.tegra_dfll, %struct.tegra_dfll* %35, i32 0, i32 6
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = load i32, i32* %5, align 4
  %42 = load %struct.tegra_dfll*, %struct.tegra_dfll** %3, align 8
  %43 = getelementptr inbounds %struct.tegra_dfll, %struct.tegra_dfll* %42, i32 0, i32 6
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = mul nsw i32 %41, %47
  %49 = sext i32 %48 to i64
  %50 = add nsw i64 %40, %49
  %51 = load %struct.tegra_dfll*, %struct.tegra_dfll** %3, align 8
  %52 = getelementptr inbounds %struct.tegra_dfll, %struct.tegra_dfll* %51, i32 0, i32 7
  %53 = load i64*, i64** %52, align 8
  %54 = load i32, i32* %5, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i64, i64* %53, i64 %55
  store i64 %50, i64* %56, align 8
  br label %57

57:                                               ; preds = %34
  %58 = load i32, i32* %5, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %5, align 4
  br label %30

60:                                               ; preds = %30
  %61 = load %struct.tegra_dfll*, %struct.tegra_dfll** %3, align 8
  %62 = load %struct.tegra_dfll*, %struct.tegra_dfll** %3, align 8
  %63 = getelementptr inbounds %struct.tegra_dfll, %struct.tegra_dfll* %62, i32 0, i32 0
  %64 = call i32 @read_dt_param(%struct.tegra_dfll* %61, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i32* %63)
  store i32 %64, i32* %4, align 4
  %65 = load i32, i32* %4, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %73, label %67

67:                                               ; preds = %60
  %68 = load %struct.tegra_dfll*, %struct.tegra_dfll** %3, align 8
  %69 = getelementptr inbounds %struct.tegra_dfll, %struct.tegra_dfll* %68, i32 0, i32 3
  %70 = load i32, i32* %69, align 8
  %71 = call i32 @dev_err(i32 %70, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0))
  %72 = load i32, i32* %4, align 4
  store i32 %72, i32* %2, align 4
  br label %156

73:                                               ; preds = %60
  %74 = load %struct.tegra_dfll*, %struct.tegra_dfll** %3, align 8
  %75 = call i32 @read_dt_param(%struct.tegra_dfll* %74, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0), i32* %6)
  store i32 %75, i32* %4, align 4
  %76 = load i32, i32* %4, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %84, label %78

78:                                               ; preds = %73
  %79 = load %struct.tegra_dfll*, %struct.tegra_dfll** %3, align 8
  %80 = getelementptr inbounds %struct.tegra_dfll, %struct.tegra_dfll* %79, i32 0, i32 3
  %81 = load i32, i32* %80, align 8
  %82 = call i32 @dev_err(i32 %81, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0))
  %83 = load i32, i32* %4, align 4
  store i32 %83, i32* %2, align 4
  br label %156

84:                                               ; preds = %73
  %85 = load i32, i32* @NSEC_PER_SEC, align 4
  %86 = load i32, i32* %6, align 4
  %87 = sdiv i32 %85, %86
  %88 = load i32, i32* @MAX_DFLL_VOLTAGES, align 4
  %89 = sub nsw i32 %88, 1
  %90 = mul nsw i32 %87, %89
  %91 = load %struct.tegra_dfll*, %struct.tegra_dfll** %3, align 8
  %92 = getelementptr inbounds %struct.tegra_dfll, %struct.tegra_dfll* %91, i32 0, i32 1
  store i32 %90, i32* %92, align 4
  %93 = load %struct.tegra_dfll*, %struct.tegra_dfll** %3, align 8
  %94 = getelementptr inbounds %struct.tegra_dfll, %struct.tegra_dfll* %93, i32 0, i32 3
  %95 = load i32, i32* %94, align 8
  %96 = call i8* @devm_pinctrl_get(i32 %95)
  %97 = load %struct.tegra_dfll*, %struct.tegra_dfll** %3, align 8
  %98 = getelementptr inbounds %struct.tegra_dfll, %struct.tegra_dfll* %97, i32 0, i32 4
  store i8* %96, i8** %98, align 8
  %99 = load %struct.tegra_dfll*, %struct.tegra_dfll** %3, align 8
  %100 = getelementptr inbounds %struct.tegra_dfll, %struct.tegra_dfll* %99, i32 0, i32 4
  %101 = load i8*, i8** %100, align 8
  %102 = call i64 @IS_ERR(i8* %101)
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %113

104:                                              ; preds = %84
  %105 = load %struct.tegra_dfll*, %struct.tegra_dfll** %3, align 8
  %106 = getelementptr inbounds %struct.tegra_dfll, %struct.tegra_dfll* %105, i32 0, i32 3
  %107 = load i32, i32* %106, align 8
  %108 = call i32 @dev_err(i32 %107, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5, i64 0, i64 0))
  %109 = load %struct.tegra_dfll*, %struct.tegra_dfll** %3, align 8
  %110 = getelementptr inbounds %struct.tegra_dfll, %struct.tegra_dfll* %109, i32 0, i32 4
  %111 = load i8*, i8** %110, align 8
  %112 = call i32 @PTR_ERR(i8* %111)
  store i32 %112, i32* %2, align 4
  br label %156

113:                                              ; preds = %84
  %114 = load %struct.tegra_dfll*, %struct.tegra_dfll** %3, align 8
  %115 = getelementptr inbounds %struct.tegra_dfll, %struct.tegra_dfll* %114, i32 0, i32 4
  %116 = load i8*, i8** %115, align 8
  %117 = call i8* @pinctrl_lookup_state(i8* %116, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6, i64 0, i64 0))
  %118 = load %struct.tegra_dfll*, %struct.tegra_dfll** %3, align 8
  %119 = getelementptr inbounds %struct.tegra_dfll, %struct.tegra_dfll* %118, i32 0, i32 5
  store i8* %117, i8** %119, align 8
  %120 = load %struct.tegra_dfll*, %struct.tegra_dfll** %3, align 8
  %121 = getelementptr inbounds %struct.tegra_dfll, %struct.tegra_dfll* %120, i32 0, i32 5
  %122 = load i8*, i8** %121, align 8
  %123 = call i64 @IS_ERR(i8* %122)
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %125, label %134

125:                                              ; preds = %113
  %126 = load %struct.tegra_dfll*, %struct.tegra_dfll** %3, align 8
  %127 = getelementptr inbounds %struct.tegra_dfll, %struct.tegra_dfll* %126, i32 0, i32 3
  %128 = load i32, i32* %127, align 8
  %129 = call i32 @dev_err(i32 %128, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.7, i64 0, i64 0))
  %130 = load %struct.tegra_dfll*, %struct.tegra_dfll** %3, align 8
  %131 = getelementptr inbounds %struct.tegra_dfll, %struct.tegra_dfll* %130, i32 0, i32 5
  %132 = load i8*, i8** %131, align 8
  %133 = call i32 @PTR_ERR(i8* %132)
  store i32 %133, i32* %2, align 4
  br label %156

134:                                              ; preds = %113
  %135 = load %struct.tegra_dfll*, %struct.tegra_dfll** %3, align 8
  %136 = getelementptr inbounds %struct.tegra_dfll, %struct.tegra_dfll* %135, i32 0, i32 4
  %137 = load i8*, i8** %136, align 8
  %138 = call i8* @pinctrl_lookup_state(i8* %137, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.8, i64 0, i64 0))
  %139 = load %struct.tegra_dfll*, %struct.tegra_dfll** %3, align 8
  %140 = getelementptr inbounds %struct.tegra_dfll, %struct.tegra_dfll* %139, i32 0, i32 2
  store i8* %138, i8** %140, align 8
  %141 = load %struct.tegra_dfll*, %struct.tegra_dfll** %3, align 8
  %142 = getelementptr inbounds %struct.tegra_dfll, %struct.tegra_dfll* %141, i32 0, i32 2
  %143 = load i8*, i8** %142, align 8
  %144 = call i64 @IS_ERR(i8* %143)
  %145 = icmp ne i64 %144, 0
  br i1 %145, label %146, label %155

146:                                              ; preds = %134
  %147 = load %struct.tegra_dfll*, %struct.tegra_dfll** %3, align 8
  %148 = getelementptr inbounds %struct.tegra_dfll, %struct.tegra_dfll* %147, i32 0, i32 3
  %149 = load i32, i32* %148, align 8
  %150 = call i32 @dev_err(i32 %149, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.9, i64 0, i64 0))
  %151 = load %struct.tegra_dfll*, %struct.tegra_dfll** %3, align 8
  %152 = getelementptr inbounds %struct.tegra_dfll, %struct.tegra_dfll* %151, i32 0, i32 2
  %153 = load i8*, i8** %152, align 8
  %154 = call i32 @PTR_ERR(i8* %153)
  store i32 %154, i32* %2, align 4
  br label %156

155:                                              ; preds = %134
  store i32 0, i32* %2, align 4
  br label %156

156:                                              ; preds = %155, %146, %125, %104, %78, %67, %22
  %157 = load i32, i32* %2, align 4
  ret i32 %157
}

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @read_dt_param(%struct.tegra_dfll*, i8*, i32*) #1

declare dso_local i8* @devm_pinctrl_get(i32) #1

declare dso_local i64 @IS_ERR(i8*) #1

declare dso_local i32 @PTR_ERR(i8*) #1

declare dso_local i8* @pinctrl_lookup_state(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
