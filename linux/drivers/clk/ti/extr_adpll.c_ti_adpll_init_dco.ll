; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/ti/extr_adpll.c_ti_adpll_init_dco.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/ti/extr_adpll.c_ti_adpll_init_dco.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ti_adpll_data = type { %struct.TYPE_7__*, %struct.TYPE_6__, i32, i64, i32*, i32, %struct.TYPE_5__ }
%struct.TYPE_7__ = type { i64, i64, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.clk_init_data* }
%struct.clk_init_data = type { i32, i32, i32*, i32, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.clk = type { i32 }

@MAX_ADPLL_OUTPUTS = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"dco\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@ti_adpll_ops = common dso_local global i32 0, align 4
@CLK_GET_RATE_NOCACHE = common dso_local global i32 0, align 4
@TI_ADPLL_N2 = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [3 x i8] c"n2\00", align 1
@TI_ADPLL_CLKINP = common dso_local global i64 0, align 8
@ADPLL_MN2DIV_OFFSET = common dso_local global i64 0, align 8
@ADPLL_MN2DIV_N2 = common dso_local global i32 0, align 4
@TI_ADPLL_DCO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ti_adpll_data*)* @ti_adpll_init_dco to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ti_adpll_init_dco(%struct.ti_adpll_data* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ti_adpll_data*, align 8
  %4 = alloca %struct.clk_init_data, align 8
  %5 = alloca %struct.clk*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.ti_adpll_data* %0, %struct.ti_adpll_data** %3, align 8
  %9 = load %struct.ti_adpll_data*, %struct.ti_adpll_data** %3, align 8
  %10 = getelementptr inbounds %struct.ti_adpll_data, %struct.ti_adpll_data* %9, i32 0, i32 2
  %11 = load i32, i32* %10, align 8
  %12 = load i32, i32* @MAX_ADPLL_OUTPUTS, align 4
  %13 = load i32, i32* @GFP_KERNEL, align 4
  %14 = call i32 @devm_kcalloc(i32 %11, i32 %12, i32 8, i32 %13)
  %15 = load %struct.ti_adpll_data*, %struct.ti_adpll_data** %3, align 8
  %16 = getelementptr inbounds %struct.ti_adpll_data, %struct.ti_adpll_data* %15, i32 0, i32 6
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 0
  store i32 %14, i32* %17, align 4
  %18 = load %struct.ti_adpll_data*, %struct.ti_adpll_data** %3, align 8
  %19 = getelementptr inbounds %struct.ti_adpll_data, %struct.ti_adpll_data* %18, i32 0, i32 6
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %26, label %23

23:                                               ; preds = %1
  %24 = load i32, i32* @ENOMEM, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %2, align 4
  br label %126

26:                                               ; preds = %1
  %27 = load %struct.ti_adpll_data*, %struct.ti_adpll_data** %3, align 8
  %28 = getelementptr inbounds %struct.ti_adpll_data, %struct.ti_adpll_data* %27, i32 0, i32 0
  %29 = load %struct.TYPE_7__*, %struct.TYPE_7__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = icmp slt i64 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %26
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8** %6, align 8
  br label %35

34:                                               ; preds = %26
  store i8* null, i8** %6, align 8
  br label %35

35:                                               ; preds = %34, %33
  %36 = load %struct.ti_adpll_data*, %struct.ti_adpll_data** %3, align 8
  %37 = load %struct.ti_adpll_data*, %struct.ti_adpll_data** %3, align 8
  %38 = getelementptr inbounds %struct.ti_adpll_data, %struct.ti_adpll_data* %37, i32 0, i32 0
  %39 = load %struct.TYPE_7__*, %struct.TYPE_7__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i8*, i8** %6, align 8
  %43 = call i32 @ti_adpll_clk_get_name(%struct.ti_adpll_data* %36, i64 %41, i8* %42)
  %44 = getelementptr inbounds %struct.clk_init_data, %struct.clk_init_data* %4, i32 0, i32 0
  store i32 %43, i32* %44, align 8
  %45 = getelementptr inbounds %struct.clk_init_data, %struct.clk_init_data* %4, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %51, label %48

48:                                               ; preds = %35
  %49 = load i32, i32* @EINVAL, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %2, align 4
  br label %126

51:                                               ; preds = %35
  %52 = load %struct.ti_adpll_data*, %struct.ti_adpll_data** %3, align 8
  %53 = getelementptr inbounds %struct.ti_adpll_data, %struct.ti_adpll_data* %52, i32 0, i32 5
  %54 = load i32, i32* %53, align 8
  %55 = getelementptr inbounds %struct.clk_init_data, %struct.clk_init_data* %4, i32 0, i32 4
  store i32 %54, i32* %55, align 4
  %56 = load %struct.ti_adpll_data*, %struct.ti_adpll_data** %3, align 8
  %57 = getelementptr inbounds %struct.ti_adpll_data, %struct.ti_adpll_data* %56, i32 0, i32 0
  %58 = load %struct.TYPE_7__*, %struct.TYPE_7__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 8
  %61 = getelementptr inbounds %struct.clk_init_data, %struct.clk_init_data* %4, i32 0, i32 3
  store i32 %60, i32* %61, align 8
  %62 = getelementptr inbounds %struct.clk_init_data, %struct.clk_init_data* %4, i32 0, i32 2
  store i32* @ti_adpll_ops, i32** %62, align 8
  %63 = load i32, i32* @CLK_GET_RATE_NOCACHE, align 4
  %64 = getelementptr inbounds %struct.clk_init_data, %struct.clk_init_data* %4, i32 0, i32 1
  store i32 %63, i32* %64, align 4
  %65 = load %struct.ti_adpll_data*, %struct.ti_adpll_data** %3, align 8
  %66 = getelementptr inbounds %struct.ti_adpll_data, %struct.ti_adpll_data* %65, i32 0, i32 1
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %67, i32 0, i32 0
  store %struct.clk_init_data* %4, %struct.clk_init_data** %68, align 8
  %69 = load %struct.ti_adpll_data*, %struct.ti_adpll_data** %3, align 8
  %70 = getelementptr inbounds %struct.ti_adpll_data, %struct.ti_adpll_data* %69, i32 0, i32 0
  %71 = load %struct.TYPE_7__*, %struct.TYPE_7__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %71, i32 0, i32 1
  %73 = load i64, i64* %72, align 8
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %76

75:                                               ; preds = %51
  store i32 5, i32* %7, align 4
  br label %77

76:                                               ; preds = %51
  store i32 4, i32* %7, align 4
  br label %77

77:                                               ; preds = %76, %75
  %78 = load %struct.ti_adpll_data*, %struct.ti_adpll_data** %3, align 8
  %79 = load i32, i32* @TI_ADPLL_N2, align 4
  %80 = load i32, i32* @ENODEV, align 4
  %81 = sub nsw i32 0, %80
  %82 = load %struct.ti_adpll_data*, %struct.ti_adpll_data** %3, align 8
  %83 = getelementptr inbounds %struct.ti_adpll_data, %struct.ti_adpll_data* %82, i32 0, i32 4
  %84 = load i32*, i32** %83, align 8
  %85 = load i64, i64* @TI_ADPLL_CLKINP, align 8
  %86 = getelementptr inbounds i32, i32* %84, i64 %85
  %87 = load i32, i32* %86, align 4
  %88 = load %struct.ti_adpll_data*, %struct.ti_adpll_data** %3, align 8
  %89 = getelementptr inbounds %struct.ti_adpll_data, %struct.ti_adpll_data* %88, i32 0, i32 3
  %90 = load i64, i64* %89, align 8
  %91 = load i64, i64* @ADPLL_MN2DIV_OFFSET, align 8
  %92 = add nsw i64 %90, %91
  %93 = load i32, i32* @ADPLL_MN2DIV_N2, align 4
  %94 = load i32, i32* %7, align 4
  %95 = call i32 @ti_adpll_init_divider(%struct.ti_adpll_data* %78, i32 %79, i32 %81, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 %87, i64 %92, i32 %93, i32 %94, i32 0)
  store i32 %95, i32* %8, align 4
  %96 = load i32, i32* %8, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %100

98:                                               ; preds = %77
  %99 = load i32, i32* %8, align 4
  store i32 %99, i32* %2, align 4
  br label %126

100:                                              ; preds = %77
  %101 = load %struct.ti_adpll_data*, %struct.ti_adpll_data** %3, align 8
  %102 = getelementptr inbounds %struct.ti_adpll_data, %struct.ti_adpll_data* %101, i32 0, i32 2
  %103 = load i32, i32* %102, align 8
  %104 = load %struct.ti_adpll_data*, %struct.ti_adpll_data** %3, align 8
  %105 = getelementptr inbounds %struct.ti_adpll_data, %struct.ti_adpll_data* %104, i32 0, i32 1
  %106 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %105, i32 0, i32 0
  %107 = call %struct.clk* @devm_clk_register(i32 %103, %struct.TYPE_8__* %106)
  store %struct.clk* %107, %struct.clk** %5, align 8
  %108 = load %struct.clk*, %struct.clk** %5, align 8
  %109 = call i64 @IS_ERR(%struct.clk* %108)
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %114

111:                                              ; preds = %100
  %112 = load %struct.clk*, %struct.clk** %5, align 8
  %113 = call i32 @PTR_ERR(%struct.clk* %112)
  store i32 %113, i32* %2, align 4
  br label %126

114:                                              ; preds = %100
  %115 = load %struct.ti_adpll_data*, %struct.ti_adpll_data** %3, align 8
  %116 = load %struct.clk*, %struct.clk** %5, align 8
  %117 = load i32, i32* @TI_ADPLL_DCO, align 4
  %118 = load %struct.ti_adpll_data*, %struct.ti_adpll_data** %3, align 8
  %119 = getelementptr inbounds %struct.ti_adpll_data, %struct.ti_adpll_data* %118, i32 0, i32 0
  %120 = load %struct.TYPE_7__*, %struct.TYPE_7__** %119, align 8
  %121 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %120, i32 0, i32 0
  %122 = load i64, i64* %121, align 8
  %123 = getelementptr inbounds %struct.clk_init_data, %struct.clk_init_data* %4, i32 0, i32 0
  %124 = load i32, i32* %123, align 8
  %125 = call i32 @ti_adpll_setup_clock(%struct.ti_adpll_data* %115, %struct.clk* %116, i32 %117, i64 %122, i32 %124, i32* null)
  store i32 %125, i32* %2, align 4
  br label %126

126:                                              ; preds = %114, %111, %98, %48, %23
  %127 = load i32, i32* %2, align 4
  ret i32 %127
}

declare dso_local i32 @devm_kcalloc(i32, i32, i32, i32) #1

declare dso_local i32 @ti_adpll_clk_get_name(%struct.ti_adpll_data*, i64, i8*) #1

declare dso_local i32 @ti_adpll_init_divider(%struct.ti_adpll_data*, i32, i32, i8*, i32, i64, i32, i32, i32) #1

declare dso_local %struct.clk* @devm_clk_register(i32, %struct.TYPE_8__*) #1

declare dso_local i64 @IS_ERR(%struct.clk*) #1

declare dso_local i32 @PTR_ERR(%struct.clk*) #1

declare dso_local i32 @ti_adpll_setup_clock(%struct.ti_adpll_data*, %struct.clk*, i32, i64, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
