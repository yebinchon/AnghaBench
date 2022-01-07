; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/ti/extr_adpll.c_ti_adpll_init_inputs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/ti/extr_adpll.c_ti_adpll_init_inputs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ti_adpll_data = type { %struct.clk**, i32, i32*, %struct.TYPE_2__*, i32 }
%struct.clk = type { i32 }
%struct.TYPE_2__ = type { i32, i64 }

@.str = private unnamed_addr constant [24 x i8] c"need at least %i inputs\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"could not get clkinp\0A\00", align 1
@TI_ADPLL_CLKINP = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [32 x i8] c"could not get clkinpulow clock\0A\00", align 1
@TI_ADPLL_CLKINPULOW = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [31 x i8] c"could not get clkinphif clock\0A\00", align 1
@TI_ADPLL_CLKINPHIF = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ti_adpll_data*)* @ti_adpll_init_inputs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ti_adpll_init_inputs(%struct.ti_adpll_data* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ti_adpll_data*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.clk*, align 8
  %6 = alloca i32, align 4
  store %struct.ti_adpll_data* %0, %struct.ti_adpll_data** %3, align 8
  store i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i8** %4, align 8
  %7 = load %struct.ti_adpll_data*, %struct.ti_adpll_data** %3, align 8
  %8 = getelementptr inbounds %struct.ti_adpll_data, %struct.ti_adpll_data* %7, i32 0, i32 4
  %9 = load i32, i32* %8, align 8
  %10 = call i32 @of_clk_get_parent_count(i32 %9)
  store i32 %10, i32* %6, align 4
  %11 = load i32, i32* %6, align 4
  %12 = load %struct.ti_adpll_data*, %struct.ti_adpll_data** %3, align 8
  %13 = getelementptr inbounds %struct.ti_adpll_data, %struct.ti_adpll_data* %12, i32 0, i32 3
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = icmp slt i32 %11, %16
  br i1 %17, label %18, label %27

18:                                               ; preds = %1
  %19 = load %struct.ti_adpll_data*, %struct.ti_adpll_data** %3, align 8
  %20 = getelementptr inbounds %struct.ti_adpll_data, %struct.ti_adpll_data* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 8
  %22 = load i8*, i8** %4, align 8
  %23 = load i32, i32* %6, align 4
  %24 = call i32 (i32, i8*, ...) @dev_err(i32 %21, i8* %22, i32 %23)
  %25 = load i32, i32* @EINVAL, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %2, align 4
  br label %122

27:                                               ; preds = %1
  %28 = load %struct.ti_adpll_data*, %struct.ti_adpll_data** %3, align 8
  %29 = getelementptr inbounds %struct.ti_adpll_data, %struct.ti_adpll_data* %28, i32 0, i32 4
  %30 = load i32, i32* %29, align 8
  %31 = load %struct.ti_adpll_data*, %struct.ti_adpll_data** %3, align 8
  %32 = getelementptr inbounds %struct.ti_adpll_data, %struct.ti_adpll_data* %31, i32 0, i32 2
  %33 = load i32*, i32** %32, align 8
  %34 = load i32, i32* %6, align 4
  %35 = call i32 @of_clk_parent_fill(i32 %30, i32* %33, i32 %34)
  %36 = load %struct.ti_adpll_data*, %struct.ti_adpll_data** %3, align 8
  %37 = getelementptr inbounds %struct.ti_adpll_data, %struct.ti_adpll_data* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 8
  %39 = load %struct.ti_adpll_data*, %struct.ti_adpll_data** %3, align 8
  %40 = getelementptr inbounds %struct.ti_adpll_data, %struct.ti_adpll_data* %39, i32 0, i32 2
  %41 = load i32*, i32** %40, align 8
  %42 = getelementptr inbounds i32, i32* %41, i64 0
  %43 = load i32, i32* %42, align 4
  %44 = call %struct.clk* @devm_clk_get(i32 %38, i32 %43)
  store %struct.clk* %44, %struct.clk** %5, align 8
  %45 = load %struct.clk*, %struct.clk** %5, align 8
  %46 = call i64 @IS_ERR(%struct.clk* %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %55

48:                                               ; preds = %27
  %49 = load %struct.ti_adpll_data*, %struct.ti_adpll_data** %3, align 8
  %50 = getelementptr inbounds %struct.ti_adpll_data, %struct.ti_adpll_data* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 8
  %52 = call i32 (i32, i8*, ...) @dev_err(i32 %51, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  %53 = load %struct.clk*, %struct.clk** %5, align 8
  %54 = call i32 @PTR_ERR(%struct.clk* %53)
  store i32 %54, i32* %2, align 4
  br label %122

55:                                               ; preds = %27
  %56 = load %struct.clk*, %struct.clk** %5, align 8
  %57 = load %struct.ti_adpll_data*, %struct.ti_adpll_data** %3, align 8
  %58 = getelementptr inbounds %struct.ti_adpll_data, %struct.ti_adpll_data* %57, i32 0, i32 0
  %59 = load %struct.clk**, %struct.clk*** %58, align 8
  %60 = load i64, i64* @TI_ADPLL_CLKINP, align 8
  %61 = getelementptr inbounds %struct.clk*, %struct.clk** %59, i64 %60
  store %struct.clk* %56, %struct.clk** %61, align 8
  %62 = load %struct.ti_adpll_data*, %struct.ti_adpll_data** %3, align 8
  %63 = getelementptr inbounds %struct.ti_adpll_data, %struct.ti_adpll_data* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 8
  %65 = load %struct.ti_adpll_data*, %struct.ti_adpll_data** %3, align 8
  %66 = getelementptr inbounds %struct.ti_adpll_data, %struct.ti_adpll_data* %65, i32 0, i32 2
  %67 = load i32*, i32** %66, align 8
  %68 = getelementptr inbounds i32, i32* %67, i64 1
  %69 = load i32, i32* %68, align 4
  %70 = call %struct.clk* @devm_clk_get(i32 %64, i32 %69)
  store %struct.clk* %70, %struct.clk** %5, align 8
  %71 = load %struct.clk*, %struct.clk** %5, align 8
  %72 = call i64 @IS_ERR(%struct.clk* %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %81

74:                                               ; preds = %55
  %75 = load %struct.ti_adpll_data*, %struct.ti_adpll_data** %3, align 8
  %76 = getelementptr inbounds %struct.ti_adpll_data, %struct.ti_adpll_data* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 8
  %78 = call i32 (i32, i8*, ...) @dev_err(i32 %77, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0))
  %79 = load %struct.clk*, %struct.clk** %5, align 8
  %80 = call i32 @PTR_ERR(%struct.clk* %79)
  store i32 %80, i32* %2, align 4
  br label %122

81:                                               ; preds = %55
  %82 = load %struct.clk*, %struct.clk** %5, align 8
  %83 = load %struct.ti_adpll_data*, %struct.ti_adpll_data** %3, align 8
  %84 = getelementptr inbounds %struct.ti_adpll_data, %struct.ti_adpll_data* %83, i32 0, i32 0
  %85 = load %struct.clk**, %struct.clk*** %84, align 8
  %86 = load i64, i64* @TI_ADPLL_CLKINPULOW, align 8
  %87 = getelementptr inbounds %struct.clk*, %struct.clk** %85, i64 %86
  store %struct.clk* %82, %struct.clk** %87, align 8
  %88 = load %struct.ti_adpll_data*, %struct.ti_adpll_data** %3, align 8
  %89 = getelementptr inbounds %struct.ti_adpll_data, %struct.ti_adpll_data* %88, i32 0, i32 3
  %90 = load %struct.TYPE_2__*, %struct.TYPE_2__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %90, i32 0, i32 1
  %92 = load i64, i64* %91, align 8
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %121

94:                                               ; preds = %81
  %95 = load %struct.ti_adpll_data*, %struct.ti_adpll_data** %3, align 8
  %96 = getelementptr inbounds %struct.ti_adpll_data, %struct.ti_adpll_data* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 8
  %98 = load %struct.ti_adpll_data*, %struct.ti_adpll_data** %3, align 8
  %99 = getelementptr inbounds %struct.ti_adpll_data, %struct.ti_adpll_data* %98, i32 0, i32 2
  %100 = load i32*, i32** %99, align 8
  %101 = getelementptr inbounds i32, i32* %100, i64 2
  %102 = load i32, i32* %101, align 4
  %103 = call %struct.clk* @devm_clk_get(i32 %97, i32 %102)
  store %struct.clk* %103, %struct.clk** %5, align 8
  %104 = load %struct.clk*, %struct.clk** %5, align 8
  %105 = call i64 @IS_ERR(%struct.clk* %104)
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %114

107:                                              ; preds = %94
  %108 = load %struct.ti_adpll_data*, %struct.ti_adpll_data** %3, align 8
  %109 = getelementptr inbounds %struct.ti_adpll_data, %struct.ti_adpll_data* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 8
  %111 = call i32 (i32, i8*, ...) @dev_err(i32 %110, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0))
  %112 = load %struct.clk*, %struct.clk** %5, align 8
  %113 = call i32 @PTR_ERR(%struct.clk* %112)
  store i32 %113, i32* %2, align 4
  br label %122

114:                                              ; preds = %94
  %115 = load %struct.clk*, %struct.clk** %5, align 8
  %116 = load %struct.ti_adpll_data*, %struct.ti_adpll_data** %3, align 8
  %117 = getelementptr inbounds %struct.ti_adpll_data, %struct.ti_adpll_data* %116, i32 0, i32 0
  %118 = load %struct.clk**, %struct.clk*** %117, align 8
  %119 = load i64, i64* @TI_ADPLL_CLKINPHIF, align 8
  %120 = getelementptr inbounds %struct.clk*, %struct.clk** %118, i64 %119
  store %struct.clk* %115, %struct.clk** %120, align 8
  br label %121

121:                                              ; preds = %114, %81
  store i32 0, i32* %2, align 4
  br label %122

122:                                              ; preds = %121, %107, %74, %48, %18
  %123 = load i32, i32* %2, align 4
  ret i32 %123
}

declare dso_local i32 @of_clk_get_parent_count(i32) #1

declare dso_local i32 @dev_err(i32, i8*, ...) #1

declare dso_local i32 @of_clk_parent_fill(i32, i32*, i32) #1

declare dso_local %struct.clk* @devm_clk_get(i32, i32) #1

declare dso_local i64 @IS_ERR(%struct.clk*) #1

declare dso_local i32 @PTR_ERR(%struct.clk*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
