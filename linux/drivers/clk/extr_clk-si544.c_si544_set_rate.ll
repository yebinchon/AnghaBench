; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/extr_clk-si544.c_si544_set_rate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/extr_clk-si544.c_si544_set_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_hw = type { i32 }
%struct.clk_si544 = type { i32 }
%struct.clk_si544_muldiv = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@SI544_REG_OE_STATE = common dso_local global i32 0, align 4
@SI544_REG_FCAL_OVR = common dso_local global i32 0, align 4
@SI544_REG_CONTROL = common dso_local global i32 0, align 4
@SI544_CONTROL_MS_ICAL2 = common dso_local global i32 0, align 4
@SI544_OE_STATE_ODC_OE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.clk_hw*, i64, i64)* @si544_set_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @si544_set_rate(%struct.clk_hw* %0, i64 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.clk_hw*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.clk_si544*, align 8
  %9 = alloca %struct.clk_si544_muldiv, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.clk_hw* %0, %struct.clk_hw** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  %15 = load %struct.clk_hw*, %struct.clk_hw** %5, align 8
  %16 = call %struct.clk_si544* @to_clk_si544(%struct.clk_hw* %15)
  store %struct.clk_si544* %16, %struct.clk_si544** %8, align 8
  %17 = load %struct.clk_si544*, %struct.clk_si544** %8, align 8
  %18 = load i64, i64* %6, align 8
  %19 = call i32 @is_valid_frequency(%struct.clk_si544* %17, i64 %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %24, label %21

21:                                               ; preds = %3
  %22 = load i32, i32* @EINVAL, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %4, align 4
  br label %115

24:                                               ; preds = %3
  %25 = load %struct.clk_si544*, %struct.clk_si544** %8, align 8
  %26 = call i32 @si544_get_muldiv(%struct.clk_si544* %25, %struct.clk_si544_muldiv* %9)
  store i32 %26, i32* %14, align 4
  %27 = load i32, i32* %14, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %24
  %30 = load i32, i32* %14, align 4
  store i32 %30, i32* %4, align 4
  br label %115

31:                                               ; preds = %24
  %32 = call i64 @si544_calc_center_rate(%struct.clk_si544_muldiv* %9)
  store i64 %32, i64* %10, align 8
  %33 = load i64, i64* %10, align 8
  %34 = call i64 @si544_max_delta(i64 %33)
  store i64 %34, i64* %11, align 8
  %35 = load i64, i64* %6, align 8
  %36 = load i64, i64* %10, align 8
  %37 = sub i64 %35, %36
  store i64 %37, i64* %12, align 8
  %38 = load i64, i64* %12, align 8
  %39 = call i64 @abs(i64 %38)
  %40 = load i64, i64* %11, align 8
  %41 = icmp sle i64 %39, %40
  br i1 %41, label %42, label %48

42:                                               ; preds = %31
  %43 = load %struct.clk_si544*, %struct.clk_si544** %8, align 8
  %44 = load i64, i64* %12, align 8
  %45 = load i64, i64* %11, align 8
  %46 = call i32 @si544_calc_delta(i64 %44, i64 %45)
  %47 = call i32 @si544_set_delta_m(%struct.clk_si544* %43, i32 %46)
  store i32 %47, i32* %4, align 4
  br label %115

48:                                               ; preds = %31
  %49 = load i64, i64* %6, align 8
  %50 = call i32 @si544_calc_muldiv(%struct.clk_si544_muldiv* %9, i64 %49)
  store i32 %50, i32* %14, align 4
  %51 = load i32, i32* %14, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %48
  %54 = load i32, i32* %14, align 4
  store i32 %54, i32* %4, align 4
  br label %115

55:                                               ; preds = %48
  %56 = load %struct.clk_si544*, %struct.clk_si544** %8, align 8
  %57 = getelementptr inbounds %struct.clk_si544, %struct.clk_si544* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* @SI544_REG_OE_STATE, align 4
  %60 = call i32 @regmap_read(i32 %58, i32 %59, i32* %13)
  store i32 %60, i32* %14, align 4
  %61 = load i32, i32* %14, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %65

63:                                               ; preds = %55
  %64 = load i32, i32* %14, align 4
  store i32 %64, i32* %4, align 4
  br label %115

65:                                               ; preds = %55
  %66 = load %struct.clk_si544*, %struct.clk_si544** %8, align 8
  %67 = call i32 @si544_enable_output(%struct.clk_si544* %66, i32 0)
  %68 = load %struct.clk_si544*, %struct.clk_si544** %8, align 8
  %69 = getelementptr inbounds %struct.clk_si544, %struct.clk_si544* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* @SI544_REG_FCAL_OVR, align 4
  %72 = call i32 @regmap_write(i32 %70, i32 %71, i32 0)
  store i32 %72, i32* %14, align 4
  %73 = load i32, i32* %14, align 4
  %74 = icmp slt i32 %73, 0
  br i1 %74, label %75, label %77

75:                                               ; preds = %65
  %76 = load i32, i32* %14, align 4
  store i32 %76, i32* %4, align 4
  br label %115

77:                                               ; preds = %65
  %78 = load %struct.clk_si544*, %struct.clk_si544** %8, align 8
  %79 = getelementptr inbounds %struct.clk_si544_muldiv, %struct.clk_si544_muldiv* %9, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = call i32 @si544_set_delta_m(%struct.clk_si544* %78, i32 %80)
  store i32 %81, i32* %14, align 4
  %82 = load i32, i32* %14, align 4
  %83 = icmp slt i32 %82, 0
  br i1 %83, label %84, label %86

84:                                               ; preds = %77
  %85 = load i32, i32* %14, align 4
  store i32 %85, i32* %4, align 4
  br label %115

86:                                               ; preds = %77
  %87 = load %struct.clk_si544*, %struct.clk_si544** %8, align 8
  %88 = call i32 @si544_set_muldiv(%struct.clk_si544* %87, %struct.clk_si544_muldiv* %9)
  store i32 %88, i32* %14, align 4
  %89 = load i32, i32* %14, align 4
  %90 = icmp slt i32 %89, 0
  br i1 %90, label %91, label %93

91:                                               ; preds = %86
  %92 = load i32, i32* %14, align 4
  store i32 %92, i32* %4, align 4
  br label %115

93:                                               ; preds = %86
  %94 = load %struct.clk_si544*, %struct.clk_si544** %8, align 8
  %95 = getelementptr inbounds %struct.clk_si544, %struct.clk_si544* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = load i32, i32* @SI544_REG_CONTROL, align 4
  %98 = load i32, i32* @SI544_CONTROL_MS_ICAL2, align 4
  %99 = call i32 @regmap_write(i32 %96, i32 %97, i32 %98)
  store i32 %99, i32* %14, align 4
  %100 = load i32, i32* %14, align 4
  %101 = icmp slt i32 %100, 0
  br i1 %101, label %102, label %104

102:                                              ; preds = %93
  %103 = load i32, i32* %14, align 4
  store i32 %103, i32* %4, align 4
  br label %115

104:                                              ; preds = %93
  %105 = call i32 @usleep_range(i32 10000, i32 12000)
  %106 = load i32, i32* %13, align 4
  %107 = load i32, i32* @SI544_OE_STATE_ODC_OE, align 4
  %108 = and i32 %106, %107
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %113

110:                                              ; preds = %104
  %111 = load %struct.clk_si544*, %struct.clk_si544** %8, align 8
  %112 = call i32 @si544_enable_output(%struct.clk_si544* %111, i32 1)
  br label %113

113:                                              ; preds = %110, %104
  %114 = load i32, i32* %14, align 4
  store i32 %114, i32* %4, align 4
  br label %115

115:                                              ; preds = %113, %102, %91, %84, %75, %63, %53, %42, %29, %21
  %116 = load i32, i32* %4, align 4
  ret i32 %116
}

declare dso_local %struct.clk_si544* @to_clk_si544(%struct.clk_hw*) #1

declare dso_local i32 @is_valid_frequency(%struct.clk_si544*, i64) #1

declare dso_local i32 @si544_get_muldiv(%struct.clk_si544*, %struct.clk_si544_muldiv*) #1

declare dso_local i64 @si544_calc_center_rate(%struct.clk_si544_muldiv*) #1

declare dso_local i64 @si544_max_delta(i64) #1

declare dso_local i64 @abs(i64) #1

declare dso_local i32 @si544_set_delta_m(%struct.clk_si544*, i32) #1

declare dso_local i32 @si544_calc_delta(i64, i64) #1

declare dso_local i32 @si544_calc_muldiv(%struct.clk_si544_muldiv*, i64) #1

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

declare dso_local i32 @si544_enable_output(%struct.clk_si544*, i32) #1

declare dso_local i32 @regmap_write(i32, i32, i32) #1

declare dso_local i32 @si544_set_muldiv(%struct.clk_si544*, %struct.clk_si544_muldiv*) #1

declare dso_local i32 @usleep_range(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
