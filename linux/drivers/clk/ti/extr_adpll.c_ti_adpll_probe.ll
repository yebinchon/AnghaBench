; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/ti/extr_adpll.c_ti_adpll_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/ti/extr_adpll.c_ti_adpll_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.device }
%struct.device = type { %struct.device_node* }
%struct.device_node = type { i32 }
%struct.of_device_id = type { %struct.ti_adpll_platform_data* }
%struct.ti_adpll_platform_data = type { i32 }
%struct.ti_adpll_data = type { i32, %struct.device_node*, i32, %struct.device*, i32, i32, i32, %struct.ti_adpll_platform_data* }
%struct.resource = type { i32 }

@ti_adpll_match = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"could not get IO base: %li\0A\00", align 1
@TI_ADPLL_NR_CLOCKS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"could not register dco: %i\0A\00", align 1
@of_clk_src_onecell_get = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @ti_adpll_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ti_adpll_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.device_node*, align 8
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.of_device_id*, align 8
  %7 = alloca %struct.ti_adpll_platform_data*, align 8
  %8 = alloca %struct.ti_adpll_data*, align 8
  %9 = alloca %struct.resource*, align 8
  %10 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %11 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %12 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.device, %struct.device* %12, i32 0, i32 0
  %14 = load %struct.device_node*, %struct.device_node** %13, align 8
  store %struct.device_node* %14, %struct.device_node** %4, align 8
  %15 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %16 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %15, i32 0, i32 0
  store %struct.device* %16, %struct.device** %5, align 8
  %17 = load i32, i32* @ti_adpll_match, align 4
  %18 = load %struct.device*, %struct.device** %5, align 8
  %19 = call %struct.of_device_id* @of_match_device(i32 %17, %struct.device* %18)
  store %struct.of_device_id* %19, %struct.of_device_id** %6, align 8
  %20 = load %struct.of_device_id*, %struct.of_device_id** %6, align 8
  %21 = icmp ne %struct.of_device_id* %20, null
  br i1 %21, label %22, label %26

22:                                               ; preds = %1
  %23 = load %struct.of_device_id*, %struct.of_device_id** %6, align 8
  %24 = getelementptr inbounds %struct.of_device_id, %struct.of_device_id* %23, i32 0, i32 0
  %25 = load %struct.ti_adpll_platform_data*, %struct.ti_adpll_platform_data** %24, align 8
  store %struct.ti_adpll_platform_data* %25, %struct.ti_adpll_platform_data** %7, align 8
  br label %29

26:                                               ; preds = %1
  %27 = load i32, i32* @ENODEV, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %2, align 4
  br label %159

29:                                               ; preds = %22
  %30 = load %struct.device*, %struct.device** %5, align 8
  %31 = load i32, i32* @GFP_KERNEL, align 4
  %32 = call %struct.ti_adpll_data* @devm_kzalloc(%struct.device* %30, i32 56, i32 %31)
  store %struct.ti_adpll_data* %32, %struct.ti_adpll_data** %8, align 8
  %33 = load %struct.ti_adpll_data*, %struct.ti_adpll_data** %8, align 8
  %34 = icmp ne %struct.ti_adpll_data* %33, null
  br i1 %34, label %38, label %35

35:                                               ; preds = %29
  %36 = load i32, i32* @ENOMEM, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %2, align 4
  br label %159

38:                                               ; preds = %29
  %39 = load %struct.device*, %struct.device** %5, align 8
  %40 = load %struct.ti_adpll_data*, %struct.ti_adpll_data** %8, align 8
  %41 = getelementptr inbounds %struct.ti_adpll_data, %struct.ti_adpll_data* %40, i32 0, i32 3
  store %struct.device* %39, %struct.device** %41, align 8
  %42 = load %struct.device_node*, %struct.device_node** %4, align 8
  %43 = load %struct.ti_adpll_data*, %struct.ti_adpll_data** %8, align 8
  %44 = getelementptr inbounds %struct.ti_adpll_data, %struct.ti_adpll_data* %43, i32 0, i32 1
  store %struct.device_node* %42, %struct.device_node** %44, align 8
  %45 = load %struct.ti_adpll_platform_data*, %struct.ti_adpll_platform_data** %7, align 8
  %46 = load %struct.ti_adpll_data*, %struct.ti_adpll_data** %8, align 8
  %47 = getelementptr inbounds %struct.ti_adpll_data, %struct.ti_adpll_data* %46, i32 0, i32 7
  store %struct.ti_adpll_platform_data* %45, %struct.ti_adpll_platform_data** %47, align 8
  %48 = load %struct.ti_adpll_data*, %struct.ti_adpll_data** %8, align 8
  %49 = getelementptr inbounds %struct.ti_adpll_data, %struct.ti_adpll_data* %48, i32 0, i32 3
  %50 = load %struct.device*, %struct.device** %49, align 8
  %51 = load %struct.ti_adpll_data*, %struct.ti_adpll_data** %8, align 8
  %52 = call i32 @dev_set_drvdata(%struct.device* %50, %struct.ti_adpll_data* %51)
  %53 = load %struct.ti_adpll_data*, %struct.ti_adpll_data** %8, align 8
  %54 = getelementptr inbounds %struct.ti_adpll_data, %struct.ti_adpll_data* %53, i32 0, i32 6
  %55 = call i32 @spin_lock_init(i32* %54)
  %56 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %57 = load i32, i32* @IORESOURCE_MEM, align 4
  %58 = call %struct.resource* @platform_get_resource(%struct.platform_device* %56, i32 %57, i32 0)
  store %struct.resource* %58, %struct.resource** %9, align 8
  %59 = load %struct.resource*, %struct.resource** %9, align 8
  %60 = icmp ne %struct.resource* %59, null
  br i1 %60, label %64, label %61

61:                                               ; preds = %38
  %62 = load i32, i32* @ENODEV, align 4
  %63 = sub nsw i32 0, %62
  store i32 %63, i32* %2, align 4
  br label %159

64:                                               ; preds = %38
  %65 = load %struct.resource*, %struct.resource** %9, align 8
  %66 = getelementptr inbounds %struct.resource, %struct.resource* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.ti_adpll_data*, %struct.ti_adpll_data** %8, align 8
  %69 = getelementptr inbounds %struct.ti_adpll_data, %struct.ti_adpll_data* %68, i32 0, i32 5
  store i32 %67, i32* %69, align 4
  %70 = load %struct.device*, %struct.device** %5, align 8
  %71 = load %struct.resource*, %struct.resource** %9, align 8
  %72 = call i32 @devm_ioremap_resource(%struct.device* %70, %struct.resource* %71)
  %73 = load %struct.ti_adpll_data*, %struct.ti_adpll_data** %8, align 8
  %74 = getelementptr inbounds %struct.ti_adpll_data, %struct.ti_adpll_data* %73, i32 0, i32 4
  store i32 %72, i32* %74, align 8
  %75 = load %struct.ti_adpll_data*, %struct.ti_adpll_data** %8, align 8
  %76 = getelementptr inbounds %struct.ti_adpll_data, %struct.ti_adpll_data* %75, i32 0, i32 4
  %77 = load i32, i32* %76, align 8
  %78 = call i64 @IS_ERR(i32 %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %91

80:                                               ; preds = %64
  %81 = load %struct.device*, %struct.device** %5, align 8
  %82 = load %struct.ti_adpll_data*, %struct.ti_adpll_data** %8, align 8
  %83 = getelementptr inbounds %struct.ti_adpll_data, %struct.ti_adpll_data* %82, i32 0, i32 4
  %84 = load i32, i32* %83, align 8
  %85 = call i32 @PTR_ERR(i32 %84)
  %86 = call i32 @dev_err(%struct.device* %81, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %85)
  %87 = load %struct.ti_adpll_data*, %struct.ti_adpll_data** %8, align 8
  %88 = getelementptr inbounds %struct.ti_adpll_data, %struct.ti_adpll_data* %87, i32 0, i32 4
  %89 = load i32, i32* %88, align 8
  %90 = call i32 @PTR_ERR(i32 %89)
  store i32 %90, i32* %2, align 4
  br label %159

91:                                               ; preds = %64
  %92 = load %struct.ti_adpll_data*, %struct.ti_adpll_data** %8, align 8
  %93 = call i32 @ti_adpll_init_registers(%struct.ti_adpll_data* %92)
  store i32 %93, i32* %10, align 4
  %94 = load i32, i32* %10, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %98

96:                                               ; preds = %91
  %97 = load i32, i32* %10, align 4
  store i32 %97, i32* %2, align 4
  br label %159

98:                                               ; preds = %91
  %99 = load %struct.ti_adpll_data*, %struct.ti_adpll_data** %8, align 8
  %100 = call i32 @ti_adpll_init_inputs(%struct.ti_adpll_data* %99)
  store i32 %100, i32* %10, align 4
  %101 = load i32, i32* %10, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %105

103:                                              ; preds = %98
  %104 = load i32, i32* %10, align 4
  store i32 %104, i32* %2, align 4
  br label %159

105:                                              ; preds = %98
  %106 = load %struct.ti_adpll_data*, %struct.ti_adpll_data** %8, align 8
  %107 = getelementptr inbounds %struct.ti_adpll_data, %struct.ti_adpll_data* %106, i32 0, i32 3
  %108 = load %struct.device*, %struct.device** %107, align 8
  %109 = load i32, i32* @TI_ADPLL_NR_CLOCKS, align 4
  %110 = load i32, i32* @GFP_KERNEL, align 4
  %111 = call i32 @devm_kcalloc(%struct.device* %108, i32 %109, i32 4, i32 %110)
  %112 = load %struct.ti_adpll_data*, %struct.ti_adpll_data** %8, align 8
  %113 = getelementptr inbounds %struct.ti_adpll_data, %struct.ti_adpll_data* %112, i32 0, i32 2
  store i32 %111, i32* %113, align 8
  %114 = load %struct.ti_adpll_data*, %struct.ti_adpll_data** %8, align 8
  %115 = getelementptr inbounds %struct.ti_adpll_data, %struct.ti_adpll_data* %114, i32 0, i32 2
  %116 = load i32, i32* %115, align 8
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %121, label %118

118:                                              ; preds = %105
  %119 = load i32, i32* @ENOMEM, align 4
  %120 = sub nsw i32 0, %119
  store i32 %120, i32* %2, align 4
  br label %159

121:                                              ; preds = %105
  %122 = load %struct.ti_adpll_data*, %struct.ti_adpll_data** %8, align 8
  %123 = call i32 @ti_adpll_init_dco(%struct.ti_adpll_data* %122)
  store i32 %123, i32* %10, align 4
  %124 = load i32, i32* %10, align 4
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %130

126:                                              ; preds = %121
  %127 = load %struct.device*, %struct.device** %5, align 8
  %128 = load i32, i32* %10, align 4
  %129 = call i32 @dev_err(%struct.device* %127, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %128)
  br label %154

130:                                              ; preds = %121
  %131 = load %struct.ti_adpll_data*, %struct.ti_adpll_data** %8, align 8
  %132 = call i32 @ti_adpll_init_children_adpll_s(%struct.ti_adpll_data* %131)
  store i32 %132, i32* %10, align 4
  %133 = load i32, i32* %10, align 4
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %136

135:                                              ; preds = %130
  br label %154

136:                                              ; preds = %130
  %137 = load %struct.ti_adpll_data*, %struct.ti_adpll_data** %8, align 8
  %138 = call i32 @ti_adpll_init_children_adpll_lj(%struct.ti_adpll_data* %137)
  store i32 %138, i32* %10, align 4
  %139 = load i32, i32* %10, align 4
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %142

141:                                              ; preds = %136
  br label %154

142:                                              ; preds = %136
  %143 = load %struct.ti_adpll_data*, %struct.ti_adpll_data** %8, align 8
  %144 = getelementptr inbounds %struct.ti_adpll_data, %struct.ti_adpll_data* %143, i32 0, i32 1
  %145 = load %struct.device_node*, %struct.device_node** %144, align 8
  %146 = load i32, i32* @of_clk_src_onecell_get, align 4
  %147 = load %struct.ti_adpll_data*, %struct.ti_adpll_data** %8, align 8
  %148 = getelementptr inbounds %struct.ti_adpll_data, %struct.ti_adpll_data* %147, i32 0, i32 0
  %149 = call i32 @of_clk_add_provider(%struct.device_node* %145, i32 %146, i32* %148)
  store i32 %149, i32* %10, align 4
  %150 = load i32, i32* %10, align 4
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %152, label %153

152:                                              ; preds = %142
  br label %154

153:                                              ; preds = %142
  store i32 0, i32* %2, align 4
  br label %159

154:                                              ; preds = %152, %141, %135, %126
  %155 = call i32 @WARN_ON(i32 1)
  %156 = load %struct.ti_adpll_data*, %struct.ti_adpll_data** %8, align 8
  %157 = call i32 @ti_adpll_free_resources(%struct.ti_adpll_data* %156)
  %158 = load i32, i32* %10, align 4
  store i32 %158, i32* %2, align 4
  br label %159

159:                                              ; preds = %154, %153, %118, %103, %96, %80, %61, %35, %26
  %160 = load i32, i32* %2, align 4
  ret i32 %160
}

declare dso_local %struct.of_device_id* @of_match_device(i32, %struct.device*) #1

declare dso_local %struct.ti_adpll_data* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i32 @dev_set_drvdata(%struct.device*, %struct.ti_adpll_data*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local i32 @devm_ioremap_resource(%struct.device*, %struct.resource*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @ti_adpll_init_registers(%struct.ti_adpll_data*) #1

declare dso_local i32 @ti_adpll_init_inputs(%struct.ti_adpll_data*) #1

declare dso_local i32 @devm_kcalloc(%struct.device*, i32, i32, i32) #1

declare dso_local i32 @ti_adpll_init_dco(%struct.ti_adpll_data*) #1

declare dso_local i32 @ti_adpll_init_children_adpll_s(%struct.ti_adpll_data*) #1

declare dso_local i32 @ti_adpll_init_children_adpll_lj(%struct.ti_adpll_data*) #1

declare dso_local i32 @of_clk_add_provider(%struct.device_node*, i32, i32*) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @ti_adpll_free_resources(%struct.ti_adpll_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
