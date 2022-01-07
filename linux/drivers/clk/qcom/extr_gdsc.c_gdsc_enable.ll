; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/qcom/extr_gdsc.c_gdsc_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/qcom/extr_gdsc.c_gdsc_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.generic_pm_domain = type { i32 }
%struct.gdsc = type { i64, i32 }

@PWRSTS_ON = common dso_local global i64 0, align 8
@SW_RESET = common dso_local global i32 0, align 4
@CLAMP_IO = common dso_local global i32 0, align 4
@AON_RESET = common dso_local global i32 0, align 4
@GDSC_ON = common dso_local global i32 0, align 4
@PWRSTS_OFF = common dso_local global i32 0, align 4
@HW_CTRL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.generic_pm_domain*)* @gdsc_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gdsc_enable(%struct.generic_pm_domain* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.generic_pm_domain*, align 8
  %4 = alloca %struct.gdsc*, align 8
  %5 = alloca i32, align 4
  store %struct.generic_pm_domain* %0, %struct.generic_pm_domain** %3, align 8
  %6 = load %struct.generic_pm_domain*, %struct.generic_pm_domain** %3, align 8
  %7 = call %struct.gdsc* @domain_to_gdsc(%struct.generic_pm_domain* %6)
  store %struct.gdsc* %7, %struct.gdsc** %4, align 8
  %8 = load %struct.gdsc*, %struct.gdsc** %4, align 8
  %9 = getelementptr inbounds %struct.gdsc, %struct.gdsc* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @PWRSTS_ON, align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %13, label %16

13:                                               ; preds = %1
  %14 = load %struct.gdsc*, %struct.gdsc** %4, align 8
  %15 = call i32 @gdsc_deassert_reset(%struct.gdsc* %14)
  store i32 %15, i32* %2, align 4
  br label %86

16:                                               ; preds = %1
  %17 = load %struct.gdsc*, %struct.gdsc** %4, align 8
  %18 = getelementptr inbounds %struct.gdsc, %struct.gdsc* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* @SW_RESET, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %29

23:                                               ; preds = %16
  %24 = load %struct.gdsc*, %struct.gdsc** %4, align 8
  %25 = call i32 @gdsc_assert_reset(%struct.gdsc* %24)
  %26 = call i32 @udelay(i32 1)
  %27 = load %struct.gdsc*, %struct.gdsc** %4, align 8
  %28 = call i32 @gdsc_deassert_reset(%struct.gdsc* %27)
  br label %29

29:                                               ; preds = %23, %16
  %30 = load %struct.gdsc*, %struct.gdsc** %4, align 8
  %31 = getelementptr inbounds %struct.gdsc, %struct.gdsc* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* @CLAMP_IO, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %49

36:                                               ; preds = %29
  %37 = load %struct.gdsc*, %struct.gdsc** %4, align 8
  %38 = getelementptr inbounds %struct.gdsc, %struct.gdsc* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  %40 = load i32, i32* @AON_RESET, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %36
  %44 = load %struct.gdsc*, %struct.gdsc** %4, align 8
  %45 = call i32 @gdsc_assert_reset_aon(%struct.gdsc* %44)
  br label %46

46:                                               ; preds = %43, %36
  %47 = load %struct.gdsc*, %struct.gdsc** %4, align 8
  %48 = call i32 @gdsc_deassert_clamp_io(%struct.gdsc* %47)
  br label %49

49:                                               ; preds = %46, %29
  %50 = load %struct.gdsc*, %struct.gdsc** %4, align 8
  %51 = load i32, i32* @GDSC_ON, align 4
  %52 = call i32 @gdsc_toggle_logic(%struct.gdsc* %50, i32 %51)
  store i32 %52, i32* %5, align 4
  %53 = load i32, i32* %5, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %49
  %56 = load i32, i32* %5, align 4
  store i32 %56, i32* %2, align 4
  br label %86

57:                                               ; preds = %49
  %58 = load %struct.gdsc*, %struct.gdsc** %4, align 8
  %59 = getelementptr inbounds %struct.gdsc, %struct.gdsc* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = load i32, i32* @PWRSTS_OFF, align 4
  %62 = sext i32 %61 to i64
  %63 = and i64 %60, %62
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %68

65:                                               ; preds = %57
  %66 = load %struct.gdsc*, %struct.gdsc** %4, align 8
  %67 = call i32 @gdsc_force_mem_on(%struct.gdsc* %66)
  br label %68

68:                                               ; preds = %65, %57
  %69 = call i32 @udelay(i32 1)
  %70 = load %struct.gdsc*, %struct.gdsc** %4, align 8
  %71 = getelementptr inbounds %struct.gdsc, %struct.gdsc* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 8
  %73 = load i32, i32* @HW_CTRL, align 4
  %74 = and i32 %72, %73
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %85

76:                                               ; preds = %68
  %77 = load %struct.gdsc*, %struct.gdsc** %4, align 8
  %78 = call i32 @gdsc_hwctrl(%struct.gdsc* %77, i32 1)
  store i32 %78, i32* %5, align 4
  %79 = load i32, i32* %5, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %83

81:                                               ; preds = %76
  %82 = load i32, i32* %5, align 4
  store i32 %82, i32* %2, align 4
  br label %86

83:                                               ; preds = %76
  %84 = call i32 @udelay(i32 1)
  br label %85

85:                                               ; preds = %83, %68
  store i32 0, i32* %2, align 4
  br label %86

86:                                               ; preds = %85, %81, %55, %13
  %87 = load i32, i32* %2, align 4
  ret i32 %87
}

declare dso_local %struct.gdsc* @domain_to_gdsc(%struct.generic_pm_domain*) #1

declare dso_local i32 @gdsc_deassert_reset(%struct.gdsc*) #1

declare dso_local i32 @gdsc_assert_reset(%struct.gdsc*) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @gdsc_assert_reset_aon(%struct.gdsc*) #1

declare dso_local i32 @gdsc_deassert_clamp_io(%struct.gdsc*) #1

declare dso_local i32 @gdsc_toggle_logic(%struct.gdsc*, i32) #1

declare dso_local i32 @gdsc_force_mem_on(%struct.gdsc*) #1

declare dso_local i32 @gdsc_hwctrl(%struct.gdsc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
