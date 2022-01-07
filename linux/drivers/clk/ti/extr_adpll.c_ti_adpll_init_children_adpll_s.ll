; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/ti/extr_adpll.c_ti_adpll_init_children_adpll_s.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/ti/extr_adpll.c_ti_adpll_init_children_adpll_s.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ti_adpll_data = type { i64, %struct.TYPE_4__*, i64*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }

@TI_ADPLL_BYPASS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [7 x i8] c"bypass\00", align 1
@TI_ADPLL_N2 = common dso_local global i64 0, align 8
@TI_ADPLL_CLKINPULOW = common dso_local global i64 0, align 8
@ADPLL_CLKCTRL_OFFSET = common dso_local global i64 0, align 8
@ADPLL_CLKCTRL_ULOWCLKEN = common dso_local global i32 0, align 4
@TI_ADPLL_M2 = common dso_local global i64 0, align 8
@ENODEV = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [3 x i8] c"m2\00", align 1
@TI_ADPLL_DCO = common dso_local global i64 0, align 8
@ADPLL_M2NDIV_OFFSET = common dso_local global i64 0, align 8
@ADPLL_M2NDIV_M2 = common dso_local global i32 0, align 4
@ADPLL_M2NDIV_M2_ADPLL_S_WIDTH = common dso_local global i32 0, align 4
@CLK_DIVIDER_ONE_BASED = common dso_local global i32 0, align 4
@TI_ADPLL_DIV2 = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [5 x i8] c"div2\00", align 1
@TI_ADPLL_CLKOUT = common dso_local global i32 0, align 4
@TI_ADPLL_S_CLKOUT = common dso_local global i32 0, align 4
@ADPLL_CLKCTRL_CLKOUTEN = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [7 x i8] c"clkout\00", align 1
@TI_ADPLL_CLKOUT2 = common dso_local global i32 0, align 4
@TI_ADPLL_S_CLKOUTX2 = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [8 x i8] c"clkout2\00", align 1
@TI_ADPLL_CLKINPHIF = common dso_local global i64 0, align 8
@TI_ADPLL_HIF = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [4 x i8] c"hif\00", align 1
@ADPLL_CLKINPHIFSEL_ADPLL_S = common dso_local global i32 0, align 4
@TI_ADPLL_M3 = common dso_local global i64 0, align 8
@TI_ADPLL_S_CLKOUTHIF = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [3 x i8] c"m3\00", align 1
@ADPLL_M3DIV_OFFSET = common dso_local global i64 0, align 8
@ADPLL_M3DIV_M3 = common dso_local global i32 0, align 4
@ADPLL_M3DIV_M3_WIDTH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ti_adpll_data*)* @ti_adpll_init_children_adpll_s to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ti_adpll_init_children_adpll_s(%struct.ti_adpll_data* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ti_adpll_data*, align 8
  %4 = alloca i32, align 4
  store %struct.ti_adpll_data* %0, %struct.ti_adpll_data** %3, align 8
  %5 = load %struct.ti_adpll_data*, %struct.ti_adpll_data** %3, align 8
  %6 = getelementptr inbounds %struct.ti_adpll_data, %struct.ti_adpll_data* %5, i32 0, i32 3
  %7 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %187

12:                                               ; preds = %1
  %13 = load %struct.ti_adpll_data*, %struct.ti_adpll_data** %3, align 8
  %14 = load i64, i64* @TI_ADPLL_BYPASS, align 8
  %15 = load %struct.ti_adpll_data*, %struct.ti_adpll_data** %3, align 8
  %16 = getelementptr inbounds %struct.ti_adpll_data, %struct.ti_adpll_data* %15, i32 0, i32 1
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %18 = load i64, i64* @TI_ADPLL_N2, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i64 %18
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.ti_adpll_data*, %struct.ti_adpll_data** %3, align 8
  %23 = getelementptr inbounds %struct.ti_adpll_data, %struct.ti_adpll_data* %22, i32 0, i32 2
  %24 = load i64*, i64** %23, align 8
  %25 = load i64, i64* @TI_ADPLL_CLKINPULOW, align 8
  %26 = getelementptr inbounds i64, i64* %24, i64 %25
  %27 = load i64, i64* %26, align 8
  %28 = load %struct.ti_adpll_data*, %struct.ti_adpll_data** %3, align 8
  %29 = getelementptr inbounds %struct.ti_adpll_data, %struct.ti_adpll_data* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @ADPLL_CLKCTRL_OFFSET, align 8
  %32 = add nsw i64 %30, %31
  %33 = load i32, i32* @ADPLL_CLKCTRL_ULOWCLKEN, align 4
  %34 = call i32 @ti_adpll_init_mux(%struct.ti_adpll_data* %13, i64 %14, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %21, i64 %27, i64 %32, i32 %33)
  store i32 %34, i32* %4, align 4
  %35 = load i32, i32* %4, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %12
  %38 = load i32, i32* %4, align 4
  store i32 %38, i32* %2, align 4
  br label %187

39:                                               ; preds = %12
  %40 = load %struct.ti_adpll_data*, %struct.ti_adpll_data** %3, align 8
  %41 = load i64, i64* @TI_ADPLL_M2, align 8
  %42 = load i32, i32* @ENODEV, align 4
  %43 = sub nsw i32 0, %42
  %44 = load %struct.ti_adpll_data*, %struct.ti_adpll_data** %3, align 8
  %45 = getelementptr inbounds %struct.ti_adpll_data, %struct.ti_adpll_data* %44, i32 0, i32 1
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** %45, align 8
  %47 = load i64, i64* @TI_ADPLL_DCO, align 8
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i64 %47
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.ti_adpll_data*, %struct.ti_adpll_data** %3, align 8
  %52 = getelementptr inbounds %struct.ti_adpll_data, %struct.ti_adpll_data* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* @ADPLL_M2NDIV_OFFSET, align 8
  %55 = add nsw i64 %53, %54
  %56 = load i32, i32* @ADPLL_M2NDIV_M2, align 4
  %57 = load i32, i32* @ADPLL_M2NDIV_M2_ADPLL_S_WIDTH, align 4
  %58 = load i32, i32* @CLK_DIVIDER_ONE_BASED, align 4
  %59 = call i32 @ti_adpll_init_divider(%struct.ti_adpll_data* %40, i64 %41, i32 %43, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 %50, i64 %55, i32 %56, i32 %57, i32 %58)
  store i32 %59, i32* %4, align 4
  %60 = load i32, i32* %4, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %64

62:                                               ; preds = %39
  %63 = load i32, i32* %4, align 4
  store i32 %63, i32* %2, align 4
  br label %187

64:                                               ; preds = %39
  %65 = load %struct.ti_adpll_data*, %struct.ti_adpll_data** %3, align 8
  %66 = load i64, i64* @TI_ADPLL_DIV2, align 8
  %67 = load %struct.ti_adpll_data*, %struct.ti_adpll_data** %3, align 8
  %68 = getelementptr inbounds %struct.ti_adpll_data, %struct.ti_adpll_data* %67, i32 0, i32 1
  %69 = load %struct.TYPE_4__*, %struct.TYPE_4__** %68, align 8
  %70 = load i64, i64* @TI_ADPLL_M2, align 8
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i64 %70
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @ti_adpll_init_fixed_factor(%struct.ti_adpll_data* %65, i64 %66, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32 %73, i32 1, i32 2)
  store i32 %74, i32* %4, align 4
  %75 = load i32, i32* %4, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %79

77:                                               ; preds = %64
  %78 = load i32, i32* %4, align 4
  store i32 %78, i32* %2, align 4
  br label %187

79:                                               ; preds = %64
  %80 = load %struct.ti_adpll_data*, %struct.ti_adpll_data** %3, align 8
  %81 = load i32, i32* @TI_ADPLL_CLKOUT, align 4
  %82 = load i32, i32* @TI_ADPLL_S_CLKOUT, align 4
  %83 = load i32, i32* @ADPLL_CLKCTRL_CLKOUTEN, align 4
  %84 = load %struct.ti_adpll_data*, %struct.ti_adpll_data** %3, align 8
  %85 = getelementptr inbounds %struct.ti_adpll_data, %struct.ti_adpll_data* %84, i32 0, i32 1
  %86 = load %struct.TYPE_4__*, %struct.TYPE_4__** %85, align 8
  %87 = load i64, i64* @TI_ADPLL_DIV2, align 8
  %88 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %86, i64 %87
  %89 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = load %struct.ti_adpll_data*, %struct.ti_adpll_data** %3, align 8
  %92 = getelementptr inbounds %struct.ti_adpll_data, %struct.ti_adpll_data* %91, i32 0, i32 1
  %93 = load %struct.TYPE_4__*, %struct.TYPE_4__** %92, align 8
  %94 = load i64, i64* @TI_ADPLL_BYPASS, align 8
  %95 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %93, i64 %94
  %96 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = call i32 @ti_adpll_init_clkout(%struct.ti_adpll_data* %80, i32 %81, i32 %82, i32 %83, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i32 %90, i32 %97)
  store i32 %98, i32* %4, align 4
  %99 = load i32, i32* %4, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %103

101:                                              ; preds = %79
  %102 = load i32, i32* %4, align 4
  store i32 %102, i32* %2, align 4
  br label %187

103:                                              ; preds = %79
  %104 = load %struct.ti_adpll_data*, %struct.ti_adpll_data** %3, align 8
  %105 = load i32, i32* @TI_ADPLL_CLKOUT2, align 4
  %106 = load i32, i32* @TI_ADPLL_S_CLKOUTX2, align 4
  %107 = load %struct.ti_adpll_data*, %struct.ti_adpll_data** %3, align 8
  %108 = getelementptr inbounds %struct.ti_adpll_data, %struct.ti_adpll_data* %107, i32 0, i32 1
  %109 = load %struct.TYPE_4__*, %struct.TYPE_4__** %108, align 8
  %110 = load i64, i64* @TI_ADPLL_M2, align 8
  %111 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %109, i64 %110
  %112 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = load %struct.ti_adpll_data*, %struct.ti_adpll_data** %3, align 8
  %115 = getelementptr inbounds %struct.ti_adpll_data, %struct.ti_adpll_data* %114, i32 0, i32 1
  %116 = load %struct.TYPE_4__*, %struct.TYPE_4__** %115, align 8
  %117 = load i64, i64* @TI_ADPLL_BYPASS, align 8
  %118 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %116, i64 %117
  %119 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 4
  %121 = call i32 @ti_adpll_init_clkout(%struct.ti_adpll_data* %104, i32 %105, i32 %106, i32 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), i32 %113, i32 %120)
  store i32 %121, i32* %4, align 4
  %122 = load i32, i32* %4, align 4
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %126

124:                                              ; preds = %103
  %125 = load i32, i32* %4, align 4
  store i32 %125, i32* %2, align 4
  br label %187

126:                                              ; preds = %103
  %127 = load %struct.ti_adpll_data*, %struct.ti_adpll_data** %3, align 8
  %128 = getelementptr inbounds %struct.ti_adpll_data, %struct.ti_adpll_data* %127, i32 0, i32 2
  %129 = load i64*, i64** %128, align 8
  %130 = load i64, i64* @TI_ADPLL_CLKINPHIF, align 8
  %131 = getelementptr inbounds i64, i64* %129, i64 %130
  %132 = load i64, i64* %131, align 8
  %133 = icmp ne i64 %132, 0
  br i1 %133, label %134, label %162

134:                                              ; preds = %126
  %135 = load %struct.ti_adpll_data*, %struct.ti_adpll_data** %3, align 8
  %136 = load i64, i64* @TI_ADPLL_HIF, align 8
  %137 = load %struct.ti_adpll_data*, %struct.ti_adpll_data** %3, align 8
  %138 = getelementptr inbounds %struct.ti_adpll_data, %struct.ti_adpll_data* %137, i32 0, i32 1
  %139 = load %struct.TYPE_4__*, %struct.TYPE_4__** %138, align 8
  %140 = load i64, i64* @TI_ADPLL_DCO, align 8
  %141 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %139, i64 %140
  %142 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 4
  %144 = load %struct.ti_adpll_data*, %struct.ti_adpll_data** %3, align 8
  %145 = getelementptr inbounds %struct.ti_adpll_data, %struct.ti_adpll_data* %144, i32 0, i32 2
  %146 = load i64*, i64** %145, align 8
  %147 = load i64, i64* @TI_ADPLL_CLKINPHIF, align 8
  %148 = getelementptr inbounds i64, i64* %146, i64 %147
  %149 = load i64, i64* %148, align 8
  %150 = load %struct.ti_adpll_data*, %struct.ti_adpll_data** %3, align 8
  %151 = getelementptr inbounds %struct.ti_adpll_data, %struct.ti_adpll_data* %150, i32 0, i32 0
  %152 = load i64, i64* %151, align 8
  %153 = load i64, i64* @ADPLL_CLKCTRL_OFFSET, align 8
  %154 = add nsw i64 %152, %153
  %155 = load i32, i32* @ADPLL_CLKINPHIFSEL_ADPLL_S, align 4
  %156 = call i32 @ti_adpll_init_mux(%struct.ti_adpll_data* %135, i64 %136, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), i32 %143, i64 %149, i64 %154, i32 %155)
  store i32 %156, i32* %4, align 4
  %157 = load i32, i32* %4, align 4
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %159, label %161

159:                                              ; preds = %134
  %160 = load i32, i32* %4, align 4
  store i32 %160, i32* %2, align 4
  br label %187

161:                                              ; preds = %134
  br label %162

162:                                              ; preds = %161, %126
  %163 = load %struct.ti_adpll_data*, %struct.ti_adpll_data** %3, align 8
  %164 = load i64, i64* @TI_ADPLL_M3, align 8
  %165 = load i32, i32* @TI_ADPLL_S_CLKOUTHIF, align 4
  %166 = load %struct.ti_adpll_data*, %struct.ti_adpll_data** %3, align 8
  %167 = getelementptr inbounds %struct.ti_adpll_data, %struct.ti_adpll_data* %166, i32 0, i32 1
  %168 = load %struct.TYPE_4__*, %struct.TYPE_4__** %167, align 8
  %169 = load i64, i64* @TI_ADPLL_HIF, align 8
  %170 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %168, i64 %169
  %171 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %170, i32 0, i32 0
  %172 = load i32, i32* %171, align 4
  %173 = load %struct.ti_adpll_data*, %struct.ti_adpll_data** %3, align 8
  %174 = getelementptr inbounds %struct.ti_adpll_data, %struct.ti_adpll_data* %173, i32 0, i32 0
  %175 = load i64, i64* %174, align 8
  %176 = load i64, i64* @ADPLL_M3DIV_OFFSET, align 8
  %177 = add nsw i64 %175, %176
  %178 = load i32, i32* @ADPLL_M3DIV_M3, align 4
  %179 = load i32, i32* @ADPLL_M3DIV_M3_WIDTH, align 4
  %180 = load i32, i32* @CLK_DIVIDER_ONE_BASED, align 4
  %181 = call i32 @ti_adpll_init_divider(%struct.ti_adpll_data* %163, i64 %164, i32 %165, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0), i32 %172, i64 %177, i32 %178, i32 %179, i32 %180)
  store i32 %181, i32* %4, align 4
  %182 = load i32, i32* %4, align 4
  %183 = icmp ne i32 %182, 0
  br i1 %183, label %184, label %186

184:                                              ; preds = %162
  %185 = load i32, i32* %4, align 4
  store i32 %185, i32* %2, align 4
  br label %187

186:                                              ; preds = %162
  store i32 0, i32* %2, align 4
  br label %187

187:                                              ; preds = %186, %184, %159, %124, %101, %77, %62, %37, %11
  %188 = load i32, i32* %2, align 4
  ret i32 %188
}

declare dso_local i32 @ti_adpll_init_mux(%struct.ti_adpll_data*, i64, i8*, i32, i64, i64, i32) #1

declare dso_local i32 @ti_adpll_init_divider(%struct.ti_adpll_data*, i64, i32, i8*, i32, i64, i32, i32, i32) #1

declare dso_local i32 @ti_adpll_init_fixed_factor(%struct.ti_adpll_data*, i64, i8*, i32, i32, i32) #1

declare dso_local i32 @ti_adpll_init_clkout(%struct.ti_adpll_data*, i32, i32, i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
