; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/ti/extr_adpll.c_ti_adpll_init_clkout.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/ti/extr_adpll.c_ti_adpll_init_clkout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ti_adpll_data = type { i32, i64, i32, i32 }
%struct.clk = type { i32 }
%struct.ti_adpll_clkout_data = type { %struct.TYPE_4__, %struct.TYPE_3__, %struct.ti_adpll_data* }
%struct.TYPE_4__ = type { %struct.clk_init_data* }
%struct.clk_init_data = type { i8*, i8**, i32, i64, %struct.clk_ops* }
%struct.clk_ops = type { i32, i32, i32, i32, i32 }
%struct.TYPE_3__ = type { i32, i64, i32* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"clock-output-names\00", align 1
@ti_adpll_clkout_get_parent = common dso_local global i32 0, align 4
@__clk_mux_determine_rate = common dso_local global i32 0, align 4
@ADPLL_CLKCTRL_OFFSET = common dso_local global i64 0, align 8
@ti_adpll_clkout_enable = common dso_local global i32 0, align 4
@ti_adpll_clkout_disable = common dso_local global i32 0, align 4
@ti_adpll_clkout_is_enabled = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"failed to register output %s: %li\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ti_adpll_data*, i32, i32, i32, i8*, %struct.clk*, %struct.clk*)* @ti_adpll_init_clkout to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ti_adpll_init_clkout(%struct.ti_adpll_data* %0, i32 %1, i32 %2, i32 %3, i8* %4, %struct.clk* %5, %struct.clk* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.ti_adpll_data*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca %struct.clk*, align 8
  %15 = alloca %struct.clk*, align 8
  %16 = alloca %struct.ti_adpll_clkout_data*, align 8
  %17 = alloca %struct.clk_init_data, align 8
  %18 = alloca %struct.clk_ops*, align 8
  %19 = alloca [2 x i8*], align 16
  %20 = alloca i8*, align 8
  %21 = alloca %struct.clk*, align 8
  %22 = alloca i32, align 4
  store %struct.ti_adpll_data* %0, %struct.ti_adpll_data** %9, align 8
  store i32 %1, i32* %10, align 4
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i8* %4, i8** %13, align 8
  store %struct.clk* %5, %struct.clk** %14, align 8
  store %struct.clk* %6, %struct.clk** %15, align 8
  %23 = load %struct.ti_adpll_data*, %struct.ti_adpll_data** %9, align 8
  %24 = getelementptr inbounds %struct.ti_adpll_data, %struct.ti_adpll_data* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* @GFP_KERNEL, align 4
  %27 = call i8* @devm_kzalloc(i32 %25, i32 40, i32 %26)
  %28 = bitcast i8* %27 to %struct.ti_adpll_clkout_data*
  store %struct.ti_adpll_clkout_data* %28, %struct.ti_adpll_clkout_data** %16, align 8
  %29 = load %struct.ti_adpll_clkout_data*, %struct.ti_adpll_clkout_data** %16, align 8
  %30 = icmp ne %struct.ti_adpll_clkout_data* %29, null
  br i1 %30, label %34, label %31

31:                                               ; preds = %7
  %32 = load i32, i32* @ENOMEM, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %8, align 4
  br label %139

34:                                               ; preds = %7
  %35 = load %struct.ti_adpll_data*, %struct.ti_adpll_data** %9, align 8
  %36 = load %struct.ti_adpll_clkout_data*, %struct.ti_adpll_clkout_data** %16, align 8
  %37 = getelementptr inbounds %struct.ti_adpll_clkout_data, %struct.ti_adpll_clkout_data* %36, i32 0, i32 2
  store %struct.ti_adpll_data* %35, %struct.ti_adpll_data** %37, align 8
  %38 = load %struct.ti_adpll_data*, %struct.ti_adpll_data** %9, align 8
  %39 = getelementptr inbounds %struct.ti_adpll_data, %struct.ti_adpll_data* %38, i32 0, i32 3
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* %11, align 4
  %42 = call i32 @of_property_read_string_index(i32 %40, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %41, i8** %20)
  store i32 %42, i32* %22, align 4
  %43 = load i32, i32* %22, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %34
  %46 = load i32, i32* %22, align 4
  store i32 %46, i32* %8, align 4
  br label %139

47:                                               ; preds = %34
  %48 = load %struct.ti_adpll_data*, %struct.ti_adpll_data** %9, align 8
  %49 = getelementptr inbounds %struct.ti_adpll_data, %struct.ti_adpll_data* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = load i32, i32* @GFP_KERNEL, align 4
  %52 = call i8* @devm_kzalloc(i32 %50, i32 20, i32 %51)
  %53 = bitcast i8* %52 to %struct.clk_ops*
  store %struct.clk_ops* %53, %struct.clk_ops** %18, align 8
  %54 = load %struct.clk_ops*, %struct.clk_ops** %18, align 8
  %55 = icmp ne %struct.clk_ops* %54, null
  br i1 %55, label %59, label %56

56:                                               ; preds = %47
  %57 = load i32, i32* @ENOMEM, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %8, align 4
  br label %139

59:                                               ; preds = %47
  %60 = load i8*, i8** %20, align 8
  %61 = getelementptr inbounds %struct.clk_init_data, %struct.clk_init_data* %17, i32 0, i32 0
  store i8* %60, i8** %61, align 8
  %62 = load %struct.clk_ops*, %struct.clk_ops** %18, align 8
  %63 = getelementptr inbounds %struct.clk_init_data, %struct.clk_init_data* %17, i32 0, i32 4
  store %struct.clk_ops* %62, %struct.clk_ops** %63, align 8
  %64 = getelementptr inbounds %struct.clk_init_data, %struct.clk_init_data* %17, i32 0, i32 3
  store i64 0, i64* %64, align 8
  %65 = load %struct.ti_adpll_clkout_data*, %struct.ti_adpll_clkout_data** %16, align 8
  %66 = getelementptr inbounds %struct.ti_adpll_clkout_data, %struct.ti_adpll_clkout_data* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 0
  store %struct.clk_init_data* %17, %struct.clk_init_data** %67, align 8
  %68 = load %struct.clk*, %struct.clk** %14, align 8
  %69 = call i8* @__clk_get_name(%struct.clk* %68)
  %70 = getelementptr inbounds [2 x i8*], [2 x i8*]* %19, i64 0, i64 0
  store i8* %69, i8** %70, align 16
  %71 = load %struct.clk*, %struct.clk** %15, align 8
  %72 = call i8* @__clk_get_name(%struct.clk* %71)
  %73 = getelementptr inbounds [2 x i8*], [2 x i8*]* %19, i64 0, i64 1
  store i8* %72, i8** %73, align 8
  %74 = getelementptr inbounds [2 x i8*], [2 x i8*]* %19, i64 0, i64 0
  %75 = getelementptr inbounds %struct.clk_init_data, %struct.clk_init_data* %17, i32 0, i32 1
  store i8** %74, i8*** %75, align 8
  %76 = getelementptr inbounds %struct.clk_init_data, %struct.clk_init_data* %17, i32 0, i32 2
  store i32 2, i32* %76, align 8
  %77 = load i32, i32* @ti_adpll_clkout_get_parent, align 4
  %78 = load %struct.clk_ops*, %struct.clk_ops** %18, align 8
  %79 = getelementptr inbounds %struct.clk_ops, %struct.clk_ops* %78, i32 0, i32 4
  store i32 %77, i32* %79, align 4
  %80 = load i32, i32* @__clk_mux_determine_rate, align 4
  %81 = load %struct.clk_ops*, %struct.clk_ops** %18, align 8
  %82 = getelementptr inbounds %struct.clk_ops, %struct.clk_ops* %81, i32 0, i32 3
  store i32 %80, i32* %82, align 4
  %83 = load i32, i32* %12, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %112

85:                                               ; preds = %59
  %86 = load %struct.ti_adpll_data*, %struct.ti_adpll_data** %9, align 8
  %87 = getelementptr inbounds %struct.ti_adpll_data, %struct.ti_adpll_data* %86, i32 0, i32 2
  %88 = load %struct.ti_adpll_clkout_data*, %struct.ti_adpll_clkout_data** %16, align 8
  %89 = getelementptr inbounds %struct.ti_adpll_clkout_data, %struct.ti_adpll_clkout_data* %88, i32 0, i32 1
  %90 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %89, i32 0, i32 2
  store i32* %87, i32** %90, align 8
  %91 = load %struct.ti_adpll_data*, %struct.ti_adpll_data** %9, align 8
  %92 = getelementptr inbounds %struct.ti_adpll_data, %struct.ti_adpll_data* %91, i32 0, i32 1
  %93 = load i64, i64* %92, align 8
  %94 = load i64, i64* @ADPLL_CLKCTRL_OFFSET, align 8
  %95 = add nsw i64 %93, %94
  %96 = load %struct.ti_adpll_clkout_data*, %struct.ti_adpll_clkout_data** %16, align 8
  %97 = getelementptr inbounds %struct.ti_adpll_clkout_data, %struct.ti_adpll_clkout_data* %96, i32 0, i32 1
  %98 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %97, i32 0, i32 1
  store i64 %95, i64* %98, align 8
  %99 = load i32, i32* %12, align 4
  %100 = load %struct.ti_adpll_clkout_data*, %struct.ti_adpll_clkout_data** %16, align 8
  %101 = getelementptr inbounds %struct.ti_adpll_clkout_data, %struct.ti_adpll_clkout_data* %100, i32 0, i32 1
  %102 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %101, i32 0, i32 0
  store i32 %99, i32* %102, align 8
  %103 = load i32, i32* @ti_adpll_clkout_enable, align 4
  %104 = load %struct.clk_ops*, %struct.clk_ops** %18, align 8
  %105 = getelementptr inbounds %struct.clk_ops, %struct.clk_ops* %104, i32 0, i32 2
  store i32 %103, i32* %105, align 4
  %106 = load i32, i32* @ti_adpll_clkout_disable, align 4
  %107 = load %struct.clk_ops*, %struct.clk_ops** %18, align 8
  %108 = getelementptr inbounds %struct.clk_ops, %struct.clk_ops* %107, i32 0, i32 1
  store i32 %106, i32* %108, align 4
  %109 = load i32, i32* @ti_adpll_clkout_is_enabled, align 4
  %110 = load %struct.clk_ops*, %struct.clk_ops** %18, align 8
  %111 = getelementptr inbounds %struct.clk_ops, %struct.clk_ops* %110, i32 0, i32 0
  store i32 %109, i32* %111, align 4
  br label %112

112:                                              ; preds = %85, %59
  %113 = load %struct.ti_adpll_data*, %struct.ti_adpll_data** %9, align 8
  %114 = getelementptr inbounds %struct.ti_adpll_data, %struct.ti_adpll_data* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 8
  %116 = load %struct.ti_adpll_clkout_data*, %struct.ti_adpll_clkout_data** %16, align 8
  %117 = getelementptr inbounds %struct.ti_adpll_clkout_data, %struct.ti_adpll_clkout_data* %116, i32 0, i32 0
  %118 = call %struct.clk* @devm_clk_register(i32 %115, %struct.TYPE_4__* %117)
  store %struct.clk* %118, %struct.clk** %21, align 8
  %119 = load %struct.clk*, %struct.clk** %21, align 8
  %120 = call i64 @IS_ERR(%struct.clk* %119)
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %122, label %132

122:                                              ; preds = %112
  %123 = load %struct.ti_adpll_data*, %struct.ti_adpll_data** %9, align 8
  %124 = getelementptr inbounds %struct.ti_adpll_data, %struct.ti_adpll_data* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 8
  %126 = load i8*, i8** %13, align 8
  %127 = load %struct.clk*, %struct.clk** %21, align 8
  %128 = call i32 @PTR_ERR(%struct.clk* %127)
  %129 = call i32 @dev_err(i32 %125, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i8* %126, i32 %128)
  %130 = load %struct.clk*, %struct.clk** %21, align 8
  %131 = call i32 @PTR_ERR(%struct.clk* %130)
  store i32 %131, i32* %8, align 4
  br label %139

132:                                              ; preds = %112
  %133 = load %struct.ti_adpll_data*, %struct.ti_adpll_data** %9, align 8
  %134 = load %struct.clk*, %struct.clk** %21, align 8
  %135 = load i32, i32* %10, align 4
  %136 = load i32, i32* %11, align 4
  %137 = load i8*, i8** %20, align 8
  %138 = call i32 @ti_adpll_setup_clock(%struct.ti_adpll_data* %133, %struct.clk* %134, i32 %135, i32 %136, i8* %137, i32* null)
  store i32 %138, i32* %8, align 4
  br label %139

139:                                              ; preds = %132, %122, %56, %45, %31
  %140 = load i32, i32* %8, align 4
  ret i32 %140
}

declare dso_local i8* @devm_kzalloc(i32, i32, i32) #1

declare dso_local i32 @of_property_read_string_index(i32, i8*, i32, i8**) #1

declare dso_local i8* @__clk_get_name(%struct.clk*) #1

declare dso_local %struct.clk* @devm_clk_register(i32, %struct.TYPE_4__*) #1

declare dso_local i64 @IS_ERR(%struct.clk*) #1

declare dso_local i32 @dev_err(i32, i8*, i8*, i32) #1

declare dso_local i32 @PTR_ERR(%struct.clk*) #1

declare dso_local i32 @ti_adpll_setup_clock(%struct.ti_adpll_data*, %struct.clk*, i32, i32, i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
