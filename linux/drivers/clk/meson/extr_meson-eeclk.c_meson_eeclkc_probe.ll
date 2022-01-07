; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/meson/extr_meson-eeclk.c_meson_eeclkc_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/meson/extr_meson-eeclk.c_meson_eeclkc_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.device }
%struct.device = type { i32 }
%struct.meson_eeclkc_data = type { i32, %struct.TYPE_4__*, %struct.TYPE_3__**, i64, i32 }
%struct.TYPE_4__ = type { i32, i32* }
%struct.TYPE_3__ = type { %struct.regmap* }
%struct.regmap = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"failed to get HHI regmap\0A\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"Clock registration failed\0A\00", align 1
@of_clk_hw_onecell_get = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @meson_eeclkc_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.meson_eeclkc_data*, align 8
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.regmap*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %9 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %10 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %9, i32 0, i32 0
  store %struct.device* %10, %struct.device** %5, align 8
  %11 = load %struct.device*, %struct.device** %5, align 8
  %12 = call %struct.meson_eeclkc_data* @of_device_get_match_data(%struct.device* %11)
  store %struct.meson_eeclkc_data* %12, %struct.meson_eeclkc_data** %4, align 8
  %13 = load %struct.meson_eeclkc_data*, %struct.meson_eeclkc_data** %4, align 8
  %14 = icmp ne %struct.meson_eeclkc_data* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %1
  %16 = load i32, i32* @EINVAL, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %2, align 4
  br label %116

18:                                               ; preds = %1
  %19 = load %struct.device*, %struct.device** %5, align 8
  %20 = getelementptr inbounds %struct.device, %struct.device* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @of_get_parent(i32 %21)
  %23 = call %struct.regmap* @syscon_node_to_regmap(i32 %22)
  store %struct.regmap* %23, %struct.regmap** %6, align 8
  %24 = load %struct.regmap*, %struct.regmap** %6, align 8
  %25 = call i64 @IS_ERR(%struct.regmap* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %32

27:                                               ; preds = %18
  %28 = load %struct.device*, %struct.device** %5, align 8
  %29 = call i32 @dev_err(%struct.device* %28, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %30 = load %struct.regmap*, %struct.regmap** %6, align 8
  %31 = call i32 @PTR_ERR(%struct.regmap* %30)
  store i32 %31, i32* %2, align 4
  br label %116

32:                                               ; preds = %18
  %33 = load %struct.meson_eeclkc_data*, %struct.meson_eeclkc_data** %4, align 8
  %34 = getelementptr inbounds %struct.meson_eeclkc_data, %struct.meson_eeclkc_data* %33, i32 0, i32 3
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %46

37:                                               ; preds = %32
  %38 = load %struct.regmap*, %struct.regmap** %6, align 8
  %39 = load %struct.meson_eeclkc_data*, %struct.meson_eeclkc_data** %4, align 8
  %40 = getelementptr inbounds %struct.meson_eeclkc_data, %struct.meson_eeclkc_data* %39, i32 0, i32 4
  %41 = load i32, i32* %40, align 8
  %42 = load %struct.meson_eeclkc_data*, %struct.meson_eeclkc_data** %4, align 8
  %43 = getelementptr inbounds %struct.meson_eeclkc_data, %struct.meson_eeclkc_data* %42, i32 0, i32 3
  %44 = load i64, i64* %43, align 8
  %45 = call i32 @regmap_multi_reg_write(%struct.regmap* %38, i32 %41, i64 %44)
  br label %46

46:                                               ; preds = %37, %32
  store i32 0, i32* %8, align 4
  br label %47

47:                                               ; preds = %63, %46
  %48 = load i32, i32* %8, align 4
  %49 = load %struct.meson_eeclkc_data*, %struct.meson_eeclkc_data** %4, align 8
  %50 = getelementptr inbounds %struct.meson_eeclkc_data, %struct.meson_eeclkc_data* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = icmp slt i32 %48, %51
  br i1 %52, label %53, label %66

53:                                               ; preds = %47
  %54 = load %struct.regmap*, %struct.regmap** %6, align 8
  %55 = load %struct.meson_eeclkc_data*, %struct.meson_eeclkc_data** %4, align 8
  %56 = getelementptr inbounds %struct.meson_eeclkc_data, %struct.meson_eeclkc_data* %55, i32 0, i32 2
  %57 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %56, align 8
  %58 = load i32, i32* %8, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %57, i64 %59
  %61 = load %struct.TYPE_3__*, %struct.TYPE_3__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i32 0, i32 0
  store %struct.regmap* %54, %struct.regmap** %62, align 8
  br label %63

63:                                               ; preds = %53
  %64 = load i32, i32* %8, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %8, align 4
  br label %47

66:                                               ; preds = %47
  store i32 0, i32* %8, align 4
  br label %67

67:                                               ; preds = %106, %66
  %68 = load i32, i32* %8, align 4
  %69 = load %struct.meson_eeclkc_data*, %struct.meson_eeclkc_data** %4, align 8
  %70 = getelementptr inbounds %struct.meson_eeclkc_data, %struct.meson_eeclkc_data* %69, i32 0, i32 1
  %71 = load %struct.TYPE_4__*, %struct.TYPE_4__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = icmp slt i32 %68, %73
  br i1 %74, label %75, label %109

75:                                               ; preds = %67
  %76 = load %struct.meson_eeclkc_data*, %struct.meson_eeclkc_data** %4, align 8
  %77 = getelementptr inbounds %struct.meson_eeclkc_data, %struct.meson_eeclkc_data* %76, i32 0, i32 1
  %78 = load %struct.TYPE_4__*, %struct.TYPE_4__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 1
  %80 = load i32*, i32** %79, align 8
  %81 = load i32, i32* %8, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds i32, i32* %80, i64 %82
  %84 = load i32, i32* %83, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %87, label %86

86:                                               ; preds = %75
  br label %106

87:                                               ; preds = %75
  %88 = load %struct.device*, %struct.device** %5, align 8
  %89 = load %struct.meson_eeclkc_data*, %struct.meson_eeclkc_data** %4, align 8
  %90 = getelementptr inbounds %struct.meson_eeclkc_data, %struct.meson_eeclkc_data* %89, i32 0, i32 1
  %91 = load %struct.TYPE_4__*, %struct.TYPE_4__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %91, i32 0, i32 1
  %93 = load i32*, i32** %92, align 8
  %94 = load i32, i32* %8, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds i32, i32* %93, i64 %95
  %97 = load i32, i32* %96, align 4
  %98 = call i32 @devm_clk_hw_register(%struct.device* %88, i32 %97)
  store i32 %98, i32* %7, align 4
  %99 = load i32, i32* %7, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %105

101:                                              ; preds = %87
  %102 = load %struct.device*, %struct.device** %5, align 8
  %103 = call i32 @dev_err(%struct.device* %102, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  %104 = load i32, i32* %7, align 4
  store i32 %104, i32* %2, align 4
  br label %116

105:                                              ; preds = %87
  br label %106

106:                                              ; preds = %105, %86
  %107 = load i32, i32* %8, align 4
  %108 = add nsw i32 %107, 1
  store i32 %108, i32* %8, align 4
  br label %67

109:                                              ; preds = %67
  %110 = load %struct.device*, %struct.device** %5, align 8
  %111 = load i32, i32* @of_clk_hw_onecell_get, align 4
  %112 = load %struct.meson_eeclkc_data*, %struct.meson_eeclkc_data** %4, align 8
  %113 = getelementptr inbounds %struct.meson_eeclkc_data, %struct.meson_eeclkc_data* %112, i32 0, i32 1
  %114 = load %struct.TYPE_4__*, %struct.TYPE_4__** %113, align 8
  %115 = call i32 @devm_of_clk_add_hw_provider(%struct.device* %110, i32 %111, %struct.TYPE_4__* %114)
  store i32 %115, i32* %2, align 4
  br label %116

116:                                              ; preds = %109, %101, %27, %15
  %117 = load i32, i32* %2, align 4
  ret i32 %117
}

declare dso_local %struct.meson_eeclkc_data* @of_device_get_match_data(%struct.device*) #1

declare dso_local %struct.regmap* @syscon_node_to_regmap(i32) #1

declare dso_local i32 @of_get_parent(i32) #1

declare dso_local i64 @IS_ERR(%struct.regmap*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local i32 @PTR_ERR(%struct.regmap*) #1

declare dso_local i32 @regmap_multi_reg_write(%struct.regmap*, i32, i64) #1

declare dso_local i32 @devm_clk_hw_register(%struct.device*, i32) #1

declare dso_local i32 @devm_of_clk_add_hw_provider(%struct.device*, i32, %struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
