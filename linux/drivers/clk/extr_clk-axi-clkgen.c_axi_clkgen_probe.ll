; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/extr_clk-axi-clkgen.c_axi_clkgen_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/extr_clk-axi-clkgen.c_axi_clkgen_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i8* }
%struct.of_device_id = type { i32 }
%struct.axi_clkgen = type { %struct.TYPE_12__, i32 }
%struct.TYPE_12__ = type { %struct.clk_init_data* }
%struct.clk_init_data = type { i32, i8*, i32, i8**, i32* }
%struct.resource = type { i32 }

@ENODEV = common dso_local global i32 0, align 4
@axi_clkgen_ids = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"clock-output-names\00", align 1
@axi_clkgen_ops = common dso_local global i32 0, align 4
@CLK_SET_RATE_GATE = common dso_local global i32 0, align 4
@CLK_SET_PARENT_GATE = common dso_local global i32 0, align 4
@of_clk_hw_simple_get = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @axi_clkgen_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @axi_clkgen_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.of_device_id*, align 8
  %5 = alloca %struct.axi_clkgen*, align 8
  %6 = alloca %struct.clk_init_data, align 8
  %7 = alloca [2 x i8*], align 16
  %8 = alloca i8*, align 8
  %9 = alloca %struct.resource*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %12 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %13 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %13, i32 0, i32 0
  %15 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %16 = icmp ne %struct.TYPE_11__* %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %1
  %18 = load i32, i32* @ENODEV, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %2, align 4
  br label %151

20:                                               ; preds = %1
  %21 = load i32, i32* @axi_clkgen_ids, align 4
  %22 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %23 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %23, i32 0, i32 0
  %25 = load %struct.TYPE_11__*, %struct.TYPE_11__** %24, align 8
  %26 = call %struct.of_device_id* @of_match_node(i32 %21, %struct.TYPE_11__* %25)
  store %struct.of_device_id* %26, %struct.of_device_id** %4, align 8
  %27 = load %struct.of_device_id*, %struct.of_device_id** %4, align 8
  %28 = icmp ne %struct.of_device_id* %27, null
  br i1 %28, label %32, label %29

29:                                               ; preds = %20
  %30 = load i32, i32* @ENODEV, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %2, align 4
  br label %151

32:                                               ; preds = %20
  %33 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %34 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %33, i32 0, i32 0
  %35 = load i32, i32* @GFP_KERNEL, align 4
  %36 = call %struct.axi_clkgen* @devm_kzalloc(%struct.TYPE_13__* %34, i32 16, i32 %35)
  store %struct.axi_clkgen* %36, %struct.axi_clkgen** %5, align 8
  %37 = load %struct.axi_clkgen*, %struct.axi_clkgen** %5, align 8
  %38 = icmp ne %struct.axi_clkgen* %37, null
  br i1 %38, label %42, label %39

39:                                               ; preds = %32
  %40 = load i32, i32* @ENOMEM, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %2, align 4
  br label %151

42:                                               ; preds = %32
  %43 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %44 = load i32, i32* @IORESOURCE_MEM, align 4
  %45 = call %struct.resource* @platform_get_resource(%struct.platform_device* %43, i32 %44, i32 0)
  store %struct.resource* %45, %struct.resource** %9, align 8
  %46 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %47 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %46, i32 0, i32 0
  %48 = load %struct.resource*, %struct.resource** %9, align 8
  %49 = call i32 @devm_ioremap_resource(%struct.TYPE_13__* %47, %struct.resource* %48)
  %50 = load %struct.axi_clkgen*, %struct.axi_clkgen** %5, align 8
  %51 = getelementptr inbounds %struct.axi_clkgen, %struct.axi_clkgen* %50, i32 0, i32 1
  store i32 %49, i32* %51, align 8
  %52 = load %struct.axi_clkgen*, %struct.axi_clkgen** %5, align 8
  %53 = getelementptr inbounds %struct.axi_clkgen, %struct.axi_clkgen* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 8
  %55 = call i64 @IS_ERR(i32 %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %62

57:                                               ; preds = %42
  %58 = load %struct.axi_clkgen*, %struct.axi_clkgen** %5, align 8
  %59 = getelementptr inbounds %struct.axi_clkgen, %struct.axi_clkgen* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 8
  %61 = call i32 @PTR_ERR(i32 %60)
  store i32 %61, i32* %2, align 4
  br label %151

62:                                               ; preds = %42
  %63 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %64 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %64, i32 0, i32 0
  %66 = load %struct.TYPE_11__*, %struct.TYPE_11__** %65, align 8
  %67 = call i32 @of_clk_get_parent_count(%struct.TYPE_11__* %66)
  %68 = getelementptr inbounds %struct.clk_init_data, %struct.clk_init_data* %6, i32 0, i32 0
  store i32 %67, i32* %68, align 8
  %69 = getelementptr inbounds %struct.clk_init_data, %struct.clk_init_data* %6, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = icmp slt i32 %70, 1
  br i1 %71, label %76, label %72

72:                                               ; preds = %62
  %73 = getelementptr inbounds %struct.clk_init_data, %struct.clk_init_data* %6, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = icmp sgt i32 %74, 2
  br i1 %75, label %76, label %79

76:                                               ; preds = %72, %62
  %77 = load i32, i32* @EINVAL, align 4
  %78 = sub nsw i32 0, %77
  store i32 %78, i32* %2, align 4
  br label %151

79:                                               ; preds = %72
  store i32 0, i32* %10, align 4
  br label %80

80:                                               ; preds = %104, %79
  %81 = load i32, i32* %10, align 4
  %82 = getelementptr inbounds %struct.clk_init_data, %struct.clk_init_data* %6, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = icmp ult i32 %81, %83
  br i1 %84, label %85, label %107

85:                                               ; preds = %80
  %86 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %87 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %87, i32 0, i32 0
  %89 = load %struct.TYPE_11__*, %struct.TYPE_11__** %88, align 8
  %90 = load i32, i32* %10, align 4
  %91 = call i8* @of_clk_get_parent_name(%struct.TYPE_11__* %89, i32 %90)
  %92 = load i32, i32* %10, align 4
  %93 = zext i32 %92 to i64
  %94 = getelementptr inbounds [2 x i8*], [2 x i8*]* %7, i64 0, i64 %93
  store i8* %91, i8** %94, align 8
  %95 = load i32, i32* %10, align 4
  %96 = zext i32 %95 to i64
  %97 = getelementptr inbounds [2 x i8*], [2 x i8*]* %7, i64 0, i64 %96
  %98 = load i8*, i8** %97, align 8
  %99 = icmp ne i8* %98, null
  br i1 %99, label %103, label %100

100:                                              ; preds = %85
  %101 = load i32, i32* @EINVAL, align 4
  %102 = sub nsw i32 0, %101
  store i32 %102, i32* %2, align 4
  br label %151

103:                                              ; preds = %85
  br label %104

104:                                              ; preds = %103
  %105 = load i32, i32* %10, align 4
  %106 = add i32 %105, 1
  store i32 %106, i32* %10, align 4
  br label %80

107:                                              ; preds = %80
  %108 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %109 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %108, i32 0, i32 0
  %110 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %109, i32 0, i32 0
  %111 = load %struct.TYPE_11__*, %struct.TYPE_11__** %110, align 8
  %112 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %111, i32 0, i32 0
  %113 = load i8*, i8** %112, align 8
  store i8* %113, i8** %8, align 8
  %114 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %115 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %114, i32 0, i32 0
  %116 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %115, i32 0, i32 0
  %117 = load %struct.TYPE_11__*, %struct.TYPE_11__** %116, align 8
  %118 = call i32 @of_property_read_string(%struct.TYPE_11__* %117, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i8** %8)
  %119 = load i8*, i8** %8, align 8
  %120 = getelementptr inbounds %struct.clk_init_data, %struct.clk_init_data* %6, i32 0, i32 1
  store i8* %119, i8** %120, align 8
  %121 = getelementptr inbounds %struct.clk_init_data, %struct.clk_init_data* %6, i32 0, i32 4
  store i32* @axi_clkgen_ops, i32** %121, align 8
  %122 = load i32, i32* @CLK_SET_RATE_GATE, align 4
  %123 = load i32, i32* @CLK_SET_PARENT_GATE, align 4
  %124 = or i32 %122, %123
  %125 = getelementptr inbounds %struct.clk_init_data, %struct.clk_init_data* %6, i32 0, i32 2
  store i32 %124, i32* %125, align 8
  %126 = getelementptr inbounds [2 x i8*], [2 x i8*]* %7, i64 0, i64 0
  %127 = getelementptr inbounds %struct.clk_init_data, %struct.clk_init_data* %6, i32 0, i32 3
  store i8** %126, i8*** %127, align 8
  %128 = load %struct.axi_clkgen*, %struct.axi_clkgen** %5, align 8
  %129 = call i32 @axi_clkgen_mmcm_enable(%struct.axi_clkgen* %128, i32 0)
  %130 = load %struct.axi_clkgen*, %struct.axi_clkgen** %5, align 8
  %131 = getelementptr inbounds %struct.axi_clkgen, %struct.axi_clkgen* %130, i32 0, i32 0
  %132 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %131, i32 0, i32 0
  store %struct.clk_init_data* %6, %struct.clk_init_data** %132, align 8
  %133 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %134 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %133, i32 0, i32 0
  %135 = load %struct.axi_clkgen*, %struct.axi_clkgen** %5, align 8
  %136 = getelementptr inbounds %struct.axi_clkgen, %struct.axi_clkgen* %135, i32 0, i32 0
  %137 = call i32 @devm_clk_hw_register(%struct.TYPE_13__* %134, %struct.TYPE_12__* %136)
  store i32 %137, i32* %11, align 4
  %138 = load i32, i32* %11, align 4
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %140, label %142

140:                                              ; preds = %107
  %141 = load i32, i32* %11, align 4
  store i32 %141, i32* %2, align 4
  br label %151

142:                                              ; preds = %107
  %143 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %144 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %143, i32 0, i32 0
  %145 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %144, i32 0, i32 0
  %146 = load %struct.TYPE_11__*, %struct.TYPE_11__** %145, align 8
  %147 = load i32, i32* @of_clk_hw_simple_get, align 4
  %148 = load %struct.axi_clkgen*, %struct.axi_clkgen** %5, align 8
  %149 = getelementptr inbounds %struct.axi_clkgen, %struct.axi_clkgen* %148, i32 0, i32 0
  %150 = call i32 @of_clk_add_hw_provider(%struct.TYPE_11__* %146, i32 %147, %struct.TYPE_12__* %149)
  store i32 %150, i32* %2, align 4
  br label %151

151:                                              ; preds = %142, %140, %100, %76, %57, %39, %29, %17
  %152 = load i32, i32* %2, align 4
  ret i32 %152
}

declare dso_local %struct.of_device_id* @of_match_node(i32, %struct.TYPE_11__*) #1

declare dso_local %struct.axi_clkgen* @devm_kzalloc(%struct.TYPE_13__*, i32, i32) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local i32 @devm_ioremap_resource(%struct.TYPE_13__*, %struct.resource*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @of_clk_get_parent_count(%struct.TYPE_11__*) #1

declare dso_local i8* @of_clk_get_parent_name(%struct.TYPE_11__*, i32) #1

declare dso_local i32 @of_property_read_string(%struct.TYPE_11__*, i8*, i8**) #1

declare dso_local i32 @axi_clkgen_mmcm_enable(%struct.axi_clkgen*, i32) #1

declare dso_local i32 @devm_clk_hw_register(%struct.TYPE_13__*, %struct.TYPE_12__*) #1

declare dso_local i32 @of_clk_add_hw_provider(%struct.TYPE_11__*, i32, %struct.TYPE_12__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
