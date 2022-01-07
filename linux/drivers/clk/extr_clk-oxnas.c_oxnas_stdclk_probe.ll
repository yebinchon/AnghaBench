; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/extr_clk-oxnas.c_oxnas_stdclk_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/extr_clk-oxnas.c_oxnas_stdclk_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.device_node* }
%struct.device_node = type { i32 }
%struct.oxnas_stdclk_data = type { i32, %struct.TYPE_8__*, %struct.TYPE_6__** }
%struct.TYPE_8__ = type { i32, i32* }
%struct.TYPE_6__ = type { %struct.regmap* }
%struct.regmap = type { i32 }
%struct.of_device_id = type { %struct.oxnas_stdclk_data* }

@oxnas_stdclk_dt_ids = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"failed to have parent regmap\0A\00", align 1
@of_clk_hw_onecell_get = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @oxnas_stdclk_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @oxnas_stdclk_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.device_node*, align 8
  %5 = alloca %struct.oxnas_stdclk_data*, align 8
  %6 = alloca %struct.of_device_id*, align 8
  %7 = alloca %struct.regmap*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %10 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %11 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %11, i32 0, i32 0
  %13 = load %struct.device_node*, %struct.device_node** %12, align 8
  store %struct.device_node* %13, %struct.device_node** %4, align 8
  %14 = load i32, i32* @oxnas_stdclk_dt_ids, align 4
  %15 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %16 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %15, i32 0, i32 0
  %17 = call %struct.of_device_id* @of_match_device(i32 %14, %struct.TYPE_7__* %16)
  store %struct.of_device_id* %17, %struct.of_device_id** %6, align 8
  %18 = load %struct.of_device_id*, %struct.of_device_id** %6, align 8
  %19 = icmp ne %struct.of_device_id* %18, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %1
  %21 = load i32, i32* @ENODEV, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %2, align 4
  br label %108

23:                                               ; preds = %1
  %24 = load %struct.of_device_id*, %struct.of_device_id** %6, align 8
  %25 = getelementptr inbounds %struct.of_device_id, %struct.of_device_id* %24, i32 0, i32 0
  %26 = load %struct.oxnas_stdclk_data*, %struct.oxnas_stdclk_data** %25, align 8
  store %struct.oxnas_stdclk_data* %26, %struct.oxnas_stdclk_data** %5, align 8
  %27 = load %struct.device_node*, %struct.device_node** %4, align 8
  %28 = call i32 @of_get_parent(%struct.device_node* %27)
  %29 = call %struct.regmap* @syscon_node_to_regmap(i32 %28)
  store %struct.regmap* %29, %struct.regmap** %7, align 8
  %30 = load %struct.regmap*, %struct.regmap** %7, align 8
  %31 = call i64 @IS_ERR(%struct.regmap* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %39

33:                                               ; preds = %23
  %34 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %35 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %34, i32 0, i32 0
  %36 = call i32 @dev_err(%struct.TYPE_7__* %35, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %37 = load %struct.regmap*, %struct.regmap** %7, align 8
  %38 = call i32 @PTR_ERR(%struct.regmap* %37)
  store i32 %38, i32* %2, align 4
  br label %108

39:                                               ; preds = %23
  store i32 0, i32* %9, align 4
  br label %40

40:                                               ; preds = %56, %39
  %41 = load i32, i32* %9, align 4
  %42 = load %struct.oxnas_stdclk_data*, %struct.oxnas_stdclk_data** %5, align 8
  %43 = getelementptr inbounds %struct.oxnas_stdclk_data, %struct.oxnas_stdclk_data* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = icmp slt i32 %41, %44
  br i1 %45, label %46, label %59

46:                                               ; preds = %40
  %47 = load %struct.regmap*, %struct.regmap** %7, align 8
  %48 = load %struct.oxnas_stdclk_data*, %struct.oxnas_stdclk_data** %5, align 8
  %49 = getelementptr inbounds %struct.oxnas_stdclk_data, %struct.oxnas_stdclk_data* %48, i32 0, i32 2
  %50 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %49, align 8
  %51 = load i32, i32* %9, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %50, i64 %52
  %54 = load %struct.TYPE_6__*, %struct.TYPE_6__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 0
  store %struct.regmap* %47, %struct.regmap** %55, align 8
  br label %56

56:                                               ; preds = %46
  %57 = load i32, i32* %9, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %9, align 4
  br label %40

59:                                               ; preds = %40
  store i32 0, i32* %9, align 4
  br label %60

60:                                               ; preds = %98, %59
  %61 = load i32, i32* %9, align 4
  %62 = load %struct.oxnas_stdclk_data*, %struct.oxnas_stdclk_data** %5, align 8
  %63 = getelementptr inbounds %struct.oxnas_stdclk_data, %struct.oxnas_stdclk_data* %62, i32 0, i32 1
  %64 = load %struct.TYPE_8__*, %struct.TYPE_8__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = icmp slt i32 %61, %66
  br i1 %67, label %68, label %101

68:                                               ; preds = %60
  %69 = load %struct.oxnas_stdclk_data*, %struct.oxnas_stdclk_data** %5, align 8
  %70 = getelementptr inbounds %struct.oxnas_stdclk_data, %struct.oxnas_stdclk_data* %69, i32 0, i32 1
  %71 = load %struct.TYPE_8__*, %struct.TYPE_8__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %71, i32 0, i32 1
  %73 = load i32*, i32** %72, align 8
  %74 = load i32, i32* %9, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i32, i32* %73, i64 %75
  %77 = load i32, i32* %76, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %80, label %79

79:                                               ; preds = %68
  br label %98

80:                                               ; preds = %68
  %81 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %82 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %81, i32 0, i32 0
  %83 = load %struct.oxnas_stdclk_data*, %struct.oxnas_stdclk_data** %5, align 8
  %84 = getelementptr inbounds %struct.oxnas_stdclk_data, %struct.oxnas_stdclk_data* %83, i32 0, i32 1
  %85 = load %struct.TYPE_8__*, %struct.TYPE_8__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %85, i32 0, i32 1
  %87 = load i32*, i32** %86, align 8
  %88 = load i32, i32* %9, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds i32, i32* %87, i64 %89
  %91 = load i32, i32* %90, align 4
  %92 = call i32 @devm_clk_hw_register(%struct.TYPE_7__* %82, i32 %91)
  store i32 %92, i32* %8, align 4
  %93 = load i32, i32* %8, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %97

95:                                               ; preds = %80
  %96 = load i32, i32* %8, align 4
  store i32 %96, i32* %2, align 4
  br label %108

97:                                               ; preds = %80
  br label %98

98:                                               ; preds = %97, %79
  %99 = load i32, i32* %9, align 4
  %100 = add nsw i32 %99, 1
  store i32 %100, i32* %9, align 4
  br label %60

101:                                              ; preds = %60
  %102 = load %struct.device_node*, %struct.device_node** %4, align 8
  %103 = load i32, i32* @of_clk_hw_onecell_get, align 4
  %104 = load %struct.oxnas_stdclk_data*, %struct.oxnas_stdclk_data** %5, align 8
  %105 = getelementptr inbounds %struct.oxnas_stdclk_data, %struct.oxnas_stdclk_data* %104, i32 0, i32 1
  %106 = load %struct.TYPE_8__*, %struct.TYPE_8__** %105, align 8
  %107 = call i32 @of_clk_add_hw_provider(%struct.device_node* %102, i32 %103, %struct.TYPE_8__* %106)
  store i32 %107, i32* %2, align 4
  br label %108

108:                                              ; preds = %101, %95, %33, %20
  %109 = load i32, i32* %2, align 4
  ret i32 %109
}

declare dso_local %struct.of_device_id* @of_match_device(i32, %struct.TYPE_7__*) #1

declare dso_local %struct.regmap* @syscon_node_to_regmap(i32) #1

declare dso_local i32 @of_get_parent(%struct.device_node*) #1

declare dso_local i64 @IS_ERR(%struct.regmap*) #1

declare dso_local i32 @dev_err(%struct.TYPE_7__*, i8*) #1

declare dso_local i32 @PTR_ERR(%struct.regmap*) #1

declare dso_local i32 @devm_clk_hw_register(%struct.TYPE_7__*, i32) #1

declare dso_local i32 @of_clk_add_hw_provider(%struct.device_node*, i32, %struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
