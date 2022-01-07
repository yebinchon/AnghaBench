; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/uniphier/extr_clk-uniphier-core.c_uniphier_clk_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/uniphier/extr_clk-uniphier-core.c_uniphier_clk_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.device }
%struct.device = type { i32 }
%struct.clk_hw_onecell_data = type { i32, %struct.regmap** }
%struct.regmap = type { i32 }
%struct.uniphier_clk_data = type { i64, i64 }
%struct.device_node = type { i32 }
%struct.clk_hw = type opaque

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"failed to get regmap (error %ld)\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"register %s (index=%d)\0A\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"failed to register %s\00", align 1
@of_clk_hw_onecell_get = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @uniphier_clk_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uniphier_clk_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.clk_hw_onecell_data*, align 8
  %6 = alloca %struct.uniphier_clk_data*, align 8
  %7 = alloca %struct.uniphier_clk_data*, align 8
  %8 = alloca %struct.regmap*, align 8
  %9 = alloca %struct.device_node*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.clk_hw*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %12 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %13 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %12, i32 0, i32 0
  store %struct.device* %13, %struct.device** %4, align 8
  store i32 0, i32* %10, align 4
  %14 = load %struct.device*, %struct.device** %4, align 8
  %15 = call %struct.uniphier_clk_data* @of_device_get_match_data(%struct.device* %14)
  store %struct.uniphier_clk_data* %15, %struct.uniphier_clk_data** %7, align 8
  %16 = load %struct.uniphier_clk_data*, %struct.uniphier_clk_data** %7, align 8
  %17 = icmp ne %struct.uniphier_clk_data* %16, null
  %18 = xor i1 %17, true
  %19 = zext i1 %18 to i32
  %20 = call i64 @WARN_ON(i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %1
  %23 = load i32, i32* @EINVAL, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %2, align 4
  br label %149

25:                                               ; preds = %1
  %26 = load %struct.device*, %struct.device** %4, align 8
  %27 = getelementptr inbounds %struct.device, %struct.device* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call %struct.device_node* @of_get_parent(i32 %28)
  store %struct.device_node* %29, %struct.device_node** %9, align 8
  %30 = load %struct.device_node*, %struct.device_node** %9, align 8
  %31 = call %struct.regmap* @syscon_node_to_regmap(%struct.device_node* %30)
  store %struct.regmap* %31, %struct.regmap** %8, align 8
  %32 = load %struct.device_node*, %struct.device_node** %9, align 8
  %33 = call i32 @of_node_put(%struct.device_node* %32)
  %34 = load %struct.regmap*, %struct.regmap** %8, align 8
  %35 = call i64 @IS_ERR(%struct.regmap* %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %44

37:                                               ; preds = %25
  %38 = load %struct.device*, %struct.device** %4, align 8
  %39 = load %struct.regmap*, %struct.regmap** %8, align 8
  %40 = call i32 @PTR_ERR(%struct.regmap* %39)
  %41 = call i32 @dev_err(%struct.device* %38, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %40)
  %42 = load %struct.regmap*, %struct.regmap** %8, align 8
  %43 = call i32 @PTR_ERR(%struct.regmap* %42)
  store i32 %43, i32* %2, align 4
  br label %149

44:                                               ; preds = %25
  %45 = load %struct.uniphier_clk_data*, %struct.uniphier_clk_data** %7, align 8
  store %struct.uniphier_clk_data* %45, %struct.uniphier_clk_data** %6, align 8
  br label %46

46:                                               ; preds = %58, %44
  %47 = load %struct.uniphier_clk_data*, %struct.uniphier_clk_data** %6, align 8
  %48 = getelementptr inbounds %struct.uniphier_clk_data, %struct.uniphier_clk_data* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %61

51:                                               ; preds = %46
  %52 = load i32, i32* %10, align 4
  %53 = load %struct.uniphier_clk_data*, %struct.uniphier_clk_data** %6, align 8
  %54 = getelementptr inbounds %struct.uniphier_clk_data, %struct.uniphier_clk_data* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = add i64 %55, 1
  %57 = call i32 @max(i32 %52, i64 %56)
  store i32 %57, i32* %10, align 4
  br label %58

58:                                               ; preds = %51
  %59 = load %struct.uniphier_clk_data*, %struct.uniphier_clk_data** %6, align 8
  %60 = getelementptr inbounds %struct.uniphier_clk_data, %struct.uniphier_clk_data* %59, i32 1
  store %struct.uniphier_clk_data* %60, %struct.uniphier_clk_data** %6, align 8
  br label %46

61:                                               ; preds = %46
  %62 = load %struct.device*, %struct.device** %4, align 8
  %63 = load i32, i32* %10, align 4
  %64 = sext i32 %63 to i64
  %65 = mul i64 %64, 8
  %66 = add i64 16, %65
  %67 = trunc i64 %66 to i32
  %68 = load i32, i32* @GFP_KERNEL, align 4
  %69 = call %struct.clk_hw_onecell_data* @devm_kzalloc(%struct.device* %62, i32 %67, i32 %68)
  store %struct.clk_hw_onecell_data* %69, %struct.clk_hw_onecell_data** %5, align 8
  %70 = load %struct.clk_hw_onecell_data*, %struct.clk_hw_onecell_data** %5, align 8
  %71 = icmp ne %struct.clk_hw_onecell_data* %70, null
  br i1 %71, label %75, label %72

72:                                               ; preds = %61
  %73 = load i32, i32* @ENOMEM, align 4
  %74 = sub nsw i32 0, %73
  store i32 %74, i32* %2, align 4
  br label %149

75:                                               ; preds = %61
  %76 = load i32, i32* %10, align 4
  %77 = load %struct.clk_hw_onecell_data*, %struct.clk_hw_onecell_data** %5, align 8
  %78 = getelementptr inbounds %struct.clk_hw_onecell_data, %struct.clk_hw_onecell_data* %77, i32 0, i32 0
  store i32 %76, i32* %78, align 8
  br label %79

79:                                               ; preds = %83, %75
  %80 = load i32, i32* %10, align 4
  %81 = add nsw i32 %80, -1
  store i32 %81, i32* %10, align 4
  %82 = icmp sge i32 %81, 0
  br i1 %82, label %83, label %93

83:                                               ; preds = %79
  %84 = load i32, i32* @EINVAL, align 4
  %85 = sub nsw i32 0, %84
  %86 = call %struct.regmap* @ERR_PTR(i32 %85)
  %87 = load %struct.clk_hw_onecell_data*, %struct.clk_hw_onecell_data** %5, align 8
  %88 = getelementptr inbounds %struct.clk_hw_onecell_data, %struct.clk_hw_onecell_data* %87, i32 0, i32 1
  %89 = load %struct.regmap**, %struct.regmap*** %88, align 8
  %90 = load i32, i32* %10, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds %struct.regmap*, %struct.regmap** %89, i64 %91
  store %struct.regmap* %86, %struct.regmap** %92, align 8
  br label %79

93:                                               ; preds = %79
  %94 = load %struct.uniphier_clk_data*, %struct.uniphier_clk_data** %7, align 8
  store %struct.uniphier_clk_data* %94, %struct.uniphier_clk_data** %6, align 8
  br label %95

95:                                               ; preds = %139, %93
  %96 = load %struct.uniphier_clk_data*, %struct.uniphier_clk_data** %6, align 8
  %97 = getelementptr inbounds %struct.uniphier_clk_data, %struct.uniphier_clk_data* %96, i32 0, i32 1
  %98 = load i64, i64* %97, align 8
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %142

100:                                              ; preds = %95
  %101 = load %struct.device*, %struct.device** %4, align 8
  %102 = load %struct.uniphier_clk_data*, %struct.uniphier_clk_data** %6, align 8
  %103 = getelementptr inbounds %struct.uniphier_clk_data, %struct.uniphier_clk_data* %102, i32 0, i32 1
  %104 = load i64, i64* %103, align 8
  %105 = load %struct.uniphier_clk_data*, %struct.uniphier_clk_data** %6, align 8
  %106 = getelementptr inbounds %struct.uniphier_clk_data, %struct.uniphier_clk_data* %105, i32 0, i32 0
  %107 = load i64, i64* %106, align 8
  %108 = call i32 @dev_dbg(%struct.device* %101, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i64 %104, i64 %107)
  %109 = load %struct.device*, %struct.device** %4, align 8
  %110 = load %struct.regmap*, %struct.regmap** %8, align 8
  %111 = load %struct.uniphier_clk_data*, %struct.uniphier_clk_data** %6, align 8
  %112 = call %struct.regmap* @uniphier_clk_register(%struct.device* %109, %struct.regmap* %110, %struct.uniphier_clk_data* %111)
  %113 = bitcast %struct.regmap* %112 to %struct.clk_hw*
  store %struct.clk_hw* %113, %struct.clk_hw** %11, align 8
  %114 = load %struct.clk_hw*, %struct.clk_hw** %11, align 8
  %115 = bitcast %struct.clk_hw* %114 to %struct.regmap*
  %116 = call i64 @IS_ERR(%struct.regmap* %115)
  %117 = load %struct.uniphier_clk_data*, %struct.uniphier_clk_data** %6, align 8
  %118 = getelementptr inbounds %struct.uniphier_clk_data, %struct.uniphier_clk_data* %117, i32 0, i32 1
  %119 = load i64, i64* %118, align 8
  %120 = call i64 @WARN(i64 %116, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0), i64 %119)
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %122, label %123

122:                                              ; preds = %100
  br label %139

123:                                              ; preds = %100
  %124 = load %struct.uniphier_clk_data*, %struct.uniphier_clk_data** %6, align 8
  %125 = getelementptr inbounds %struct.uniphier_clk_data, %struct.uniphier_clk_data* %124, i32 0, i32 0
  %126 = load i64, i64* %125, align 8
  %127 = icmp uge i64 %126, 0
  br i1 %127, label %128, label %138

128:                                              ; preds = %123
  %129 = load %struct.clk_hw*, %struct.clk_hw** %11, align 8
  %130 = bitcast %struct.clk_hw* %129 to %struct.regmap*
  %131 = load %struct.clk_hw_onecell_data*, %struct.clk_hw_onecell_data** %5, align 8
  %132 = getelementptr inbounds %struct.clk_hw_onecell_data, %struct.clk_hw_onecell_data* %131, i32 0, i32 1
  %133 = load %struct.regmap**, %struct.regmap*** %132, align 8
  %134 = load %struct.uniphier_clk_data*, %struct.uniphier_clk_data** %6, align 8
  %135 = getelementptr inbounds %struct.uniphier_clk_data, %struct.uniphier_clk_data* %134, i32 0, i32 0
  %136 = load i64, i64* %135, align 8
  %137 = getelementptr inbounds %struct.regmap*, %struct.regmap** %133, i64 %136
  store %struct.regmap* %130, %struct.regmap** %137, align 8
  br label %138

138:                                              ; preds = %128, %123
  br label %139

139:                                              ; preds = %138, %122
  %140 = load %struct.uniphier_clk_data*, %struct.uniphier_clk_data** %6, align 8
  %141 = getelementptr inbounds %struct.uniphier_clk_data, %struct.uniphier_clk_data* %140, i32 1
  store %struct.uniphier_clk_data* %141, %struct.uniphier_clk_data** %6, align 8
  br label %95

142:                                              ; preds = %95
  %143 = load %struct.device*, %struct.device** %4, align 8
  %144 = getelementptr inbounds %struct.device, %struct.device* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 4
  %146 = load i32, i32* @of_clk_hw_onecell_get, align 4
  %147 = load %struct.clk_hw_onecell_data*, %struct.clk_hw_onecell_data** %5, align 8
  %148 = call i32 @of_clk_add_hw_provider(i32 %145, i32 %146, %struct.clk_hw_onecell_data* %147)
  store i32 %148, i32* %2, align 4
  br label %149

149:                                              ; preds = %142, %72, %37, %22
  %150 = load i32, i32* %2, align 4
  ret i32 %150
}

declare dso_local %struct.uniphier_clk_data* @of_device_get_match_data(%struct.device*) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local %struct.device_node* @of_get_parent(i32) #1

declare dso_local %struct.regmap* @syscon_node_to_regmap(%struct.device_node*) #1

declare dso_local i32 @of_node_put(%struct.device_node*) #1

declare dso_local i64 @IS_ERR(%struct.regmap*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32) #1

declare dso_local i32 @PTR_ERR(%struct.regmap*) #1

declare dso_local i32 @max(i32, i64) #1

declare dso_local %struct.clk_hw_onecell_data* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local %struct.regmap* @ERR_PTR(i32) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*, i64, i64) #1

declare dso_local %struct.regmap* @uniphier_clk_register(%struct.device*, %struct.regmap*, %struct.uniphier_clk_data*) #1

declare dso_local i64 @WARN(i64, i8*, i64) #1

declare dso_local i32 @of_clk_add_hw_provider(i32, i32, %struct.clk_hw_onecell_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
