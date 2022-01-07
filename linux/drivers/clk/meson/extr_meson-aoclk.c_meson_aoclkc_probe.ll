; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/meson/extr_meson-aoclk.c_meson_aoclkc_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/meson/extr_meson-aoclk.c_meson_aoclkc_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.device }
%struct.device = type { i32 }
%struct.meson_aoclk_reset_controller = type { %struct.TYPE_6__, %struct.regmap*, %struct.meson_aoclk_data* }
%struct.TYPE_6__ = type { i32, i32, i32* }
%struct.regmap = type { i32 }
%struct.meson_aoclk_data = type { i32, %struct.TYPE_5__*, %struct.TYPE_4__**, i32 }
%struct.TYPE_5__ = type { i32, i32* }
%struct.TYPE_4__ = type { %struct.regmap* }

@ENODEV = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"failed to get regmap\0A\00", align 1
@meson_aoclk_reset_ops = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [37 x i8] c"failed to register reset controller\0A\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"Clock registration failed\0A\00", align 1
@of_clk_hw_onecell_get = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @meson_aoclkc_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.meson_aoclk_reset_controller*, align 8
  %5 = alloca %struct.meson_aoclk_data*, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.regmap*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %10 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %11 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %10, i32 0, i32 0
  store %struct.device* %11, %struct.device** %6, align 8
  %12 = load %struct.device*, %struct.device** %6, align 8
  %13 = call i64 @of_device_get_match_data(%struct.device* %12)
  %14 = inttoptr i64 %13 to %struct.meson_aoclk_data*
  store %struct.meson_aoclk_data* %14, %struct.meson_aoclk_data** %5, align 8
  %15 = load %struct.meson_aoclk_data*, %struct.meson_aoclk_data** %5, align 8
  %16 = icmp ne %struct.meson_aoclk_data* %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %1
  %18 = load i32, i32* @ENODEV, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %2, align 4
  br label %146

20:                                               ; preds = %1
  %21 = load %struct.device*, %struct.device** %6, align 8
  %22 = load i32, i32* @GFP_KERNEL, align 4
  %23 = call %struct.meson_aoclk_reset_controller* @devm_kzalloc(%struct.device* %21, i32 32, i32 %22)
  store %struct.meson_aoclk_reset_controller* %23, %struct.meson_aoclk_reset_controller** %4, align 8
  %24 = load %struct.meson_aoclk_reset_controller*, %struct.meson_aoclk_reset_controller** %4, align 8
  %25 = icmp ne %struct.meson_aoclk_reset_controller* %24, null
  br i1 %25, label %29, label %26

26:                                               ; preds = %20
  %27 = load i32, i32* @ENOMEM, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %2, align 4
  br label %146

29:                                               ; preds = %20
  %30 = load %struct.device*, %struct.device** %6, align 8
  %31 = getelementptr inbounds %struct.device, %struct.device* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @of_get_parent(i32 %32)
  %34 = call %struct.regmap* @syscon_node_to_regmap(i32 %33)
  store %struct.regmap* %34, %struct.regmap** %7, align 8
  %35 = load %struct.regmap*, %struct.regmap** %7, align 8
  %36 = call i64 @IS_ERR(%struct.regmap* %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %43

38:                                               ; preds = %29
  %39 = load %struct.device*, %struct.device** %6, align 8
  %40 = call i32 @dev_err(%struct.device* %39, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %41 = load %struct.regmap*, %struct.regmap** %7, align 8
  %42 = call i32 @PTR_ERR(%struct.regmap* %41)
  store i32 %42, i32* %2, align 4
  br label %146

43:                                               ; preds = %29
  %44 = load %struct.meson_aoclk_data*, %struct.meson_aoclk_data** %5, align 8
  %45 = load %struct.meson_aoclk_reset_controller*, %struct.meson_aoclk_reset_controller** %4, align 8
  %46 = getelementptr inbounds %struct.meson_aoclk_reset_controller, %struct.meson_aoclk_reset_controller* %45, i32 0, i32 2
  store %struct.meson_aoclk_data* %44, %struct.meson_aoclk_data** %46, align 8
  %47 = load %struct.regmap*, %struct.regmap** %7, align 8
  %48 = load %struct.meson_aoclk_reset_controller*, %struct.meson_aoclk_reset_controller** %4, align 8
  %49 = getelementptr inbounds %struct.meson_aoclk_reset_controller, %struct.meson_aoclk_reset_controller* %48, i32 0, i32 1
  store %struct.regmap* %47, %struct.regmap** %49, align 8
  %50 = load %struct.meson_aoclk_reset_controller*, %struct.meson_aoclk_reset_controller** %4, align 8
  %51 = getelementptr inbounds %struct.meson_aoclk_reset_controller, %struct.meson_aoclk_reset_controller* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 2
  store i32* @meson_aoclk_reset_ops, i32** %52, align 8
  %53 = load %struct.meson_aoclk_data*, %struct.meson_aoclk_data** %5, align 8
  %54 = getelementptr inbounds %struct.meson_aoclk_data, %struct.meson_aoclk_data* %53, i32 0, i32 3
  %55 = load i32, i32* %54, align 8
  %56 = load %struct.meson_aoclk_reset_controller*, %struct.meson_aoclk_reset_controller** %4, align 8
  %57 = getelementptr inbounds %struct.meson_aoclk_reset_controller, %struct.meson_aoclk_reset_controller* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 1
  store i32 %55, i32* %58, align 4
  %59 = load %struct.device*, %struct.device** %6, align 8
  %60 = getelementptr inbounds %struct.device, %struct.device* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.meson_aoclk_reset_controller*, %struct.meson_aoclk_reset_controller** %4, align 8
  %63 = getelementptr inbounds %struct.meson_aoclk_reset_controller, %struct.meson_aoclk_reset_controller* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 0
  store i32 %61, i32* %64, align 8
  %65 = load %struct.device*, %struct.device** %6, align 8
  %66 = load %struct.meson_aoclk_reset_controller*, %struct.meson_aoclk_reset_controller** %4, align 8
  %67 = getelementptr inbounds %struct.meson_aoclk_reset_controller, %struct.meson_aoclk_reset_controller* %66, i32 0, i32 0
  %68 = call i32 @devm_reset_controller_register(%struct.device* %65, %struct.TYPE_6__* %67)
  store i32 %68, i32* %8, align 4
  %69 = load i32, i32* %8, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %75

71:                                               ; preds = %43
  %72 = load %struct.device*, %struct.device** %6, align 8
  %73 = call i32 @dev_err(%struct.device* %72, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0))
  %74 = load i32, i32* %8, align 4
  store i32 %74, i32* %2, align 4
  br label %146

75:                                               ; preds = %43
  store i32 0, i32* %9, align 4
  br label %76

76:                                               ; preds = %92, %75
  %77 = load i32, i32* %9, align 4
  %78 = load %struct.meson_aoclk_data*, %struct.meson_aoclk_data** %5, align 8
  %79 = getelementptr inbounds %struct.meson_aoclk_data, %struct.meson_aoclk_data* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = icmp slt i32 %77, %80
  br i1 %81, label %82, label %95

82:                                               ; preds = %76
  %83 = load %struct.regmap*, %struct.regmap** %7, align 8
  %84 = load %struct.meson_aoclk_data*, %struct.meson_aoclk_data** %5, align 8
  %85 = getelementptr inbounds %struct.meson_aoclk_data, %struct.meson_aoclk_data* %84, i32 0, i32 2
  %86 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %85, align 8
  %87 = load i32, i32* %9, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %86, i64 %88
  %90 = load %struct.TYPE_4__*, %struct.TYPE_4__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %90, i32 0, i32 0
  store %struct.regmap* %83, %struct.regmap** %91, align 8
  br label %92

92:                                               ; preds = %82
  %93 = load i32, i32* %9, align 4
  %94 = add nsw i32 %93, 1
  store i32 %94, i32* %9, align 4
  br label %76

95:                                               ; preds = %76
  store i32 0, i32* %9, align 4
  br label %96

96:                                               ; preds = %135, %95
  %97 = load i32, i32* %9, align 4
  %98 = load %struct.meson_aoclk_data*, %struct.meson_aoclk_data** %5, align 8
  %99 = getelementptr inbounds %struct.meson_aoclk_data, %struct.meson_aoclk_data* %98, i32 0, i32 1
  %100 = load %struct.TYPE_5__*, %struct.TYPE_5__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = icmp slt i32 %97, %102
  br i1 %103, label %104, label %138

104:                                              ; preds = %96
  %105 = load %struct.meson_aoclk_data*, %struct.meson_aoclk_data** %5, align 8
  %106 = getelementptr inbounds %struct.meson_aoclk_data, %struct.meson_aoclk_data* %105, i32 0, i32 1
  %107 = load %struct.TYPE_5__*, %struct.TYPE_5__** %106, align 8
  %108 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %107, i32 0, i32 1
  %109 = load i32*, i32** %108, align 8
  %110 = load i32, i32* %9, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds i32, i32* %109, i64 %111
  %113 = load i32, i32* %112, align 4
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %116, label %115

115:                                              ; preds = %104
  br label %135

116:                                              ; preds = %104
  %117 = load %struct.device*, %struct.device** %6, align 8
  %118 = load %struct.meson_aoclk_data*, %struct.meson_aoclk_data** %5, align 8
  %119 = getelementptr inbounds %struct.meson_aoclk_data, %struct.meson_aoclk_data* %118, i32 0, i32 1
  %120 = load %struct.TYPE_5__*, %struct.TYPE_5__** %119, align 8
  %121 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %120, i32 0, i32 1
  %122 = load i32*, i32** %121, align 8
  %123 = load i32, i32* %9, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds i32, i32* %122, i64 %124
  %126 = load i32, i32* %125, align 4
  %127 = call i32 @devm_clk_hw_register(%struct.device* %117, i32 %126)
  store i32 %127, i32* %8, align 4
  %128 = load i32, i32* %8, align 4
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %134

130:                                              ; preds = %116
  %131 = load %struct.device*, %struct.device** %6, align 8
  %132 = call i32 @dev_err(%struct.device* %131, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0))
  %133 = load i32, i32* %8, align 4
  store i32 %133, i32* %2, align 4
  br label %146

134:                                              ; preds = %116
  br label %135

135:                                              ; preds = %134, %115
  %136 = load i32, i32* %9, align 4
  %137 = add nsw i32 %136, 1
  store i32 %137, i32* %9, align 4
  br label %96

138:                                              ; preds = %96
  %139 = load %struct.device*, %struct.device** %6, align 8
  %140 = load i32, i32* @of_clk_hw_onecell_get, align 4
  %141 = load %struct.meson_aoclk_data*, %struct.meson_aoclk_data** %5, align 8
  %142 = getelementptr inbounds %struct.meson_aoclk_data, %struct.meson_aoclk_data* %141, i32 0, i32 1
  %143 = load %struct.TYPE_5__*, %struct.TYPE_5__** %142, align 8
  %144 = bitcast %struct.TYPE_5__* %143 to i8*
  %145 = call i32 @devm_of_clk_add_hw_provider(%struct.device* %139, i32 %140, i8* %144)
  store i32 %145, i32* %2, align 4
  br label %146

146:                                              ; preds = %138, %130, %71, %38, %26, %17
  %147 = load i32, i32* %2, align 4
  ret i32 %147
}

declare dso_local i64 @of_device_get_match_data(%struct.device*) #1

declare dso_local %struct.meson_aoclk_reset_controller* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local %struct.regmap* @syscon_node_to_regmap(i32) #1

declare dso_local i32 @of_get_parent(i32) #1

declare dso_local i64 @IS_ERR(%struct.regmap*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local i32 @PTR_ERR(%struct.regmap*) #1

declare dso_local i32 @devm_reset_controller_register(%struct.device*, %struct.TYPE_6__*) #1

declare dso_local i32 @devm_clk_hw_register(%struct.device*, i32) #1

declare dso_local i32 @devm_of_clk_add_hw_provider(%struct.device*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
