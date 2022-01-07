; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/ti/extr_adpll.c_ti_adpll_init_children_adpll_lj.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/ti/extr_adpll.c_ti_adpll_init_children_adpll_lj.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ti_adpll_data = type { %struct.TYPE_4__*, i64, i32*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i64 }

@TI_ADPLL_DCO_GATE = common dso_local global i32 0, align 4
@TI_ADPLL_LJ_CLKDCOLDO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"clkdcoldo\00", align 1
@TI_ADPLL_DCO = common dso_local global i64 0, align 8
@ADPLL_CLKCTRL_OFFSET = common dso_local global i64 0, align 8
@ADPLL_CLKCTRL_CLKDCOLDOEN = common dso_local global i32 0, align 4
@TI_ADPLL_M2 = common dso_local global i64 0, align 8
@ENODEV = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [3 x i8] c"m2\00", align 1
@ADPLL_M2NDIV_OFFSET = common dso_local global i64 0, align 8
@ADPLL_M2NDIV_M2 = common dso_local global i32 0, align 4
@ADPLL_M2NDIV_M2_ADPLL_LJ_WIDTH = common dso_local global i32 0, align 4
@CLK_DIVIDER_ONE_BASED = common dso_local global i32 0, align 4
@TI_ADPLL_M2_GATE = common dso_local global i32 0, align 4
@TI_ADPLL_LJ_CLKOUTLDO = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [10 x i8] c"clkoutldo\00", align 1
@ADPLL_CLKCTRL_CLKOUTLDOEN_ADPLL_LJ = common dso_local global i32 0, align 4
@TI_ADPLL_BYPASS = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [7 x i8] c"bypass\00", align 1
@TI_ADPLL_N2 = common dso_local global i64 0, align 8
@TI_ADPLL_CLKINPULOW = common dso_local global i64 0, align 8
@ADPLL_CLKCTRL_ULOWCLKEN = common dso_local global i32 0, align 4
@TI_ADPLL_CLKOUT = common dso_local global i32 0, align 4
@TI_ADPLL_S_CLKOUT = common dso_local global i32 0, align 4
@ADPLL_CLKCTRL_CLKOUTEN = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [7 x i8] c"clkout\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ti_adpll_data*)* @ti_adpll_init_children_adpll_lj to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ti_adpll_init_children_adpll_lj(%struct.ti_adpll_data* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ti_adpll_data*, align 8
  %4 = alloca i32, align 4
  store %struct.ti_adpll_data* %0, %struct.ti_adpll_data** %3, align 8
  %5 = load %struct.ti_adpll_data*, %struct.ti_adpll_data** %3, align 8
  %6 = getelementptr inbounds %struct.ti_adpll_data, %struct.ti_adpll_data* %5, i32 0, i32 3
  %7 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %133

12:                                               ; preds = %1
  %13 = load %struct.ti_adpll_data*, %struct.ti_adpll_data** %3, align 8
  %14 = load i32, i32* @TI_ADPLL_DCO_GATE, align 4
  %15 = load i32, i32* @TI_ADPLL_LJ_CLKDCOLDO, align 4
  %16 = load %struct.ti_adpll_data*, %struct.ti_adpll_data** %3, align 8
  %17 = getelementptr inbounds %struct.ti_adpll_data, %struct.ti_adpll_data* %16, i32 0, i32 0
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %19 = load i64, i64* @TI_ADPLL_DCO, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i64 %19
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.ti_adpll_data*, %struct.ti_adpll_data** %3, align 8
  %24 = getelementptr inbounds %struct.ti_adpll_data, %struct.ti_adpll_data* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @ADPLL_CLKCTRL_OFFSET, align 8
  %27 = add nsw i64 %25, %26
  %28 = load i32, i32* @ADPLL_CLKCTRL_CLKDCOLDOEN, align 4
  %29 = call i32 @ti_adpll_init_gate(%struct.ti_adpll_data* %13, i32 %14, i32 %15, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %22, i64 %27, i32 %28, i32 0)
  store i32 %29, i32* %4, align 4
  %30 = load i32, i32* %4, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %12
  %33 = load i32, i32* %4, align 4
  store i32 %33, i32* %2, align 4
  br label %133

34:                                               ; preds = %12
  %35 = load %struct.ti_adpll_data*, %struct.ti_adpll_data** %3, align 8
  %36 = load i64, i64* @TI_ADPLL_M2, align 8
  %37 = load i32, i32* @ENODEV, align 4
  %38 = sub nsw i32 0, %37
  %39 = load %struct.ti_adpll_data*, %struct.ti_adpll_data** %3, align 8
  %40 = getelementptr inbounds %struct.ti_adpll_data, %struct.ti_adpll_data* %39, i32 0, i32 0
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %40, align 8
  %42 = load i64, i64* @TI_ADPLL_DCO, align 8
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i64 %42
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.ti_adpll_data*, %struct.ti_adpll_data** %3, align 8
  %47 = getelementptr inbounds %struct.ti_adpll_data, %struct.ti_adpll_data* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @ADPLL_M2NDIV_OFFSET, align 8
  %50 = add nsw i64 %48, %49
  %51 = load i32, i32* @ADPLL_M2NDIV_M2, align 4
  %52 = load i32, i32* @ADPLL_M2NDIV_M2_ADPLL_LJ_WIDTH, align 4
  %53 = load i32, i32* @CLK_DIVIDER_ONE_BASED, align 4
  %54 = call i32 @ti_adpll_init_divider(%struct.ti_adpll_data* %35, i64 %36, i32 %38, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 %45, i64 %50, i32 %51, i32 %52, i32 %53)
  store i32 %54, i32* %4, align 4
  %55 = load i32, i32* %4, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %34
  %58 = load i32, i32* %4, align 4
  store i32 %58, i32* %2, align 4
  br label %133

59:                                               ; preds = %34
  %60 = load %struct.ti_adpll_data*, %struct.ti_adpll_data** %3, align 8
  %61 = load i32, i32* @TI_ADPLL_M2_GATE, align 4
  %62 = load i32, i32* @TI_ADPLL_LJ_CLKOUTLDO, align 4
  %63 = load %struct.ti_adpll_data*, %struct.ti_adpll_data** %3, align 8
  %64 = getelementptr inbounds %struct.ti_adpll_data, %struct.ti_adpll_data* %63, i32 0, i32 0
  %65 = load %struct.TYPE_4__*, %struct.TYPE_4__** %64, align 8
  %66 = load i64, i64* @TI_ADPLL_M2, align 8
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i64 %66
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.ti_adpll_data*, %struct.ti_adpll_data** %3, align 8
  %71 = getelementptr inbounds %struct.ti_adpll_data, %struct.ti_adpll_data* %70, i32 0, i32 1
  %72 = load i64, i64* %71, align 8
  %73 = load i64, i64* @ADPLL_CLKCTRL_OFFSET, align 8
  %74 = add nsw i64 %72, %73
  %75 = load i32, i32* @ADPLL_CLKCTRL_CLKOUTLDOEN_ADPLL_LJ, align 4
  %76 = call i32 @ti_adpll_init_gate(%struct.ti_adpll_data* %60, i32 %61, i32 %62, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 %69, i64 %74, i32 %75, i32 0)
  store i32 %76, i32* %4, align 4
  %77 = load i32, i32* %4, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %81

79:                                               ; preds = %59
  %80 = load i32, i32* %4, align 4
  store i32 %80, i32* %2, align 4
  br label %133

81:                                               ; preds = %59
  %82 = load %struct.ti_adpll_data*, %struct.ti_adpll_data** %3, align 8
  %83 = load i64, i64* @TI_ADPLL_BYPASS, align 8
  %84 = load %struct.ti_adpll_data*, %struct.ti_adpll_data** %3, align 8
  %85 = getelementptr inbounds %struct.ti_adpll_data, %struct.ti_adpll_data* %84, i32 0, i32 0
  %86 = load %struct.TYPE_4__*, %struct.TYPE_4__** %85, align 8
  %87 = load i64, i64* @TI_ADPLL_N2, align 8
  %88 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %86, i64 %87
  %89 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = load %struct.ti_adpll_data*, %struct.ti_adpll_data** %3, align 8
  %92 = getelementptr inbounds %struct.ti_adpll_data, %struct.ti_adpll_data* %91, i32 0, i32 2
  %93 = load i32*, i32** %92, align 8
  %94 = load i64, i64* @TI_ADPLL_CLKINPULOW, align 8
  %95 = getelementptr inbounds i32, i32* %93, i64 %94
  %96 = load i32, i32* %95, align 4
  %97 = load %struct.ti_adpll_data*, %struct.ti_adpll_data** %3, align 8
  %98 = getelementptr inbounds %struct.ti_adpll_data, %struct.ti_adpll_data* %97, i32 0, i32 1
  %99 = load i64, i64* %98, align 8
  %100 = load i64, i64* @ADPLL_CLKCTRL_OFFSET, align 8
  %101 = add nsw i64 %99, %100
  %102 = load i32, i32* @ADPLL_CLKCTRL_ULOWCLKEN, align 4
  %103 = call i32 @ti_adpll_init_mux(%struct.ti_adpll_data* %82, i64 %83, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i32 %90, i32 %96, i64 %101, i32 %102)
  store i32 %103, i32* %4, align 4
  %104 = load i32, i32* %4, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %108

106:                                              ; preds = %81
  %107 = load i32, i32* %4, align 4
  store i32 %107, i32* %2, align 4
  br label %133

108:                                              ; preds = %81
  %109 = load %struct.ti_adpll_data*, %struct.ti_adpll_data** %3, align 8
  %110 = load i32, i32* @TI_ADPLL_CLKOUT, align 4
  %111 = load i32, i32* @TI_ADPLL_S_CLKOUT, align 4
  %112 = load i32, i32* @ADPLL_CLKCTRL_CLKOUTEN, align 4
  %113 = load %struct.ti_adpll_data*, %struct.ti_adpll_data** %3, align 8
  %114 = getelementptr inbounds %struct.ti_adpll_data, %struct.ti_adpll_data* %113, i32 0, i32 0
  %115 = load %struct.TYPE_4__*, %struct.TYPE_4__** %114, align 8
  %116 = load i64, i64* @TI_ADPLL_M2, align 8
  %117 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %115, i64 %116
  %118 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 4
  %120 = load %struct.ti_adpll_data*, %struct.ti_adpll_data** %3, align 8
  %121 = getelementptr inbounds %struct.ti_adpll_data, %struct.ti_adpll_data* %120, i32 0, i32 0
  %122 = load %struct.TYPE_4__*, %struct.TYPE_4__** %121, align 8
  %123 = load i64, i64* @TI_ADPLL_BYPASS, align 8
  %124 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %122, i64 %123
  %125 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 4
  %127 = call i32 @ti_adpll_init_clkout(%struct.ti_adpll_data* %109, i32 %110, i32 %111, i32 %112, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), i32 %119, i32 %126)
  store i32 %127, i32* %4, align 4
  %128 = load i32, i32* %4, align 4
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %132

130:                                              ; preds = %108
  %131 = load i32, i32* %4, align 4
  store i32 %131, i32* %2, align 4
  br label %133

132:                                              ; preds = %108
  store i32 0, i32* %2, align 4
  br label %133

133:                                              ; preds = %132, %130, %106, %79, %57, %32, %11
  %134 = load i32, i32* %2, align 4
  ret i32 %134
}

declare dso_local i32 @ti_adpll_init_gate(%struct.ti_adpll_data*, i32, i32, i8*, i32, i64, i32, i32) #1

declare dso_local i32 @ti_adpll_init_divider(%struct.ti_adpll_data*, i64, i32, i8*, i32, i64, i32, i32, i32) #1

declare dso_local i32 @ti_adpll_init_mux(%struct.ti_adpll_data*, i64, i8*, i32, i32, i64, i32) #1

declare dso_local i32 @ti_adpll_init_clkout(%struct.ti_adpll_data*, i32, i32, i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
