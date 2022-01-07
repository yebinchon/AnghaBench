; ModuleID = '/home/carl/AnghaBench/linux/drivers/cpufreq/extr_kirkwood-cpufreq.c_kirkwood_cpufreq_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/cpufreq/extr_kirkwood-cpufreq.c_kirkwood_cpufreq_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i8*, i8*, i8*, i32*, i8* }
%struct.TYPE_4__ = type { i32 }
%struct.platform_device = type { i32 }
%struct.device_node = type { i32 }
%struct.resource = type { i32 }

@priv = common dso_local global %struct.TYPE_3__ zeroinitializer, align 8
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"failed to get cpu device node\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"cpu_clk\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"Unable to get cpuclk\0A\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"Unable to prepare cpuclk\0A\00", align 1
@kirkwood_freq_table = common dso_local global %struct.TYPE_4__* null, align 8
@.str.4 = private unnamed_addr constant [7 x i8] c"ddrclk\00", align 1
@.str.5 = private unnamed_addr constant [22 x i8] c"Unable to get ddrclk\0A\00", align 1
@.str.6 = private unnamed_addr constant [26 x i8] c"Unable to prepare ddrclk\0A\00", align 1
@.str.7 = private unnamed_addr constant [10 x i8] c"powersave\00", align 1
@.str.8 = private unnamed_addr constant [25 x i8] c"Unable to get powersave\0A\00", align 1
@.str.9 = private unnamed_addr constant [33 x i8] c"Unable to prepare powersave clk\0A\00", align 1
@kirkwood_cpufreq_driver = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [35 x i8] c"Failed to register cpufreq driver\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @kirkwood_cpufreq_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kirkwood_cpufreq_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.device_node*, align 8
  %5 = alloca %struct.resource*, align 8
  %6 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %7 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %8 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %7, i32 0, i32 0
  store i32* %8, i32** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @priv, i32 0, i32 3), align 8
  %9 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %10 = load i32, i32* @IORESOURCE_MEM, align 4
  %11 = call %struct.resource* @platform_get_resource(%struct.platform_device* %9, i32 %10, i32 0)
  store %struct.resource* %11, %struct.resource** %5, align 8
  %12 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %13 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %12, i32 0, i32 0
  %14 = load %struct.resource*, %struct.resource** %5, align 8
  %15 = call i8* @devm_ioremap_resource(i32* %13, %struct.resource* %14)
  store i8* %15, i8** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @priv, i32 0, i32 4), align 8
  %16 = load i8*, i8** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @priv, i32 0, i32 4), align 8
  %17 = call i64 @IS_ERR(i8* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %1
  %20 = load i8*, i8** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @priv, i32 0, i32 4), align 8
  %21 = call i32 @PTR_ERR(i8* %20)
  store i32 %21, i32* %2, align 4
  br label %124

22:                                               ; preds = %1
  %23 = call %struct.device_node* @of_cpu_device_node_get(i32 0)
  store %struct.device_node* %23, %struct.device_node** %4, align 8
  %24 = load %struct.device_node*, %struct.device_node** %4, align 8
  %25 = icmp ne %struct.device_node* %24, null
  br i1 %25, label %32, label %26

26:                                               ; preds = %22
  %27 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %28 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %27, i32 0, i32 0
  %29 = call i32 @dev_err(i32* %28, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %30 = load i32, i32* @ENODEV, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %2, align 4
  br label %124

32:                                               ; preds = %22
  %33 = load %struct.device_node*, %struct.device_node** %4, align 8
  %34 = call i8* @of_clk_get_by_name(%struct.device_node* %33, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  store i8* %34, i8** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @priv, i32 0, i32 0), align 8
  %35 = load i8*, i8** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @priv, i32 0, i32 0), align 8
  %36 = call i64 @IS_ERR(i8* %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %43

38:                                               ; preds = %32
  %39 = load i32*, i32** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @priv, i32 0, i32 3), align 8
  %40 = call i32 @dev_err(i32* %39, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0))
  %41 = load i8*, i8** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @priv, i32 0, i32 0), align 8
  %42 = call i32 @PTR_ERR(i8* %41)
  store i32 %42, i32* %6, align 4
  br label %120

43:                                               ; preds = %32
  %44 = load i8*, i8** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @priv, i32 0, i32 0), align 8
  %45 = call i32 @clk_prepare_enable(i8* %44)
  store i32 %45, i32* %6, align 4
  %46 = load i32, i32* %6, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %43
  %49 = load i32*, i32** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @priv, i32 0, i32 3), align 8
  %50 = call i32 @dev_err(i32* %49, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0))
  br label %120

51:                                               ; preds = %43
  %52 = load i8*, i8** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @priv, i32 0, i32 0), align 8
  %53 = call i32 @clk_get_rate(i8* %52)
  %54 = sdiv i32 %53, 1000
  %55 = load %struct.TYPE_4__*, %struct.TYPE_4__** @kirkwood_freq_table, align 8
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i64 0
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 0
  store i32 %54, i32* %57, align 4
  %58 = load %struct.device_node*, %struct.device_node** %4, align 8
  %59 = call i8* @of_clk_get_by_name(%struct.device_node* %58, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0))
  store i8* %59, i8** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @priv, i32 0, i32 1), align 8
  %60 = load i8*, i8** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @priv, i32 0, i32 1), align 8
  %61 = call i64 @IS_ERR(i8* %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %68

63:                                               ; preds = %51
  %64 = load i32*, i32** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @priv, i32 0, i32 3), align 8
  %65 = call i32 @dev_err(i32* %64, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i64 0, i64 0))
  %66 = load i8*, i8** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @priv, i32 0, i32 1), align 8
  %67 = call i32 @PTR_ERR(i8* %66)
  store i32 %67, i32* %6, align 4
  br label %117

68:                                               ; preds = %51
  %69 = load i8*, i8** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @priv, i32 0, i32 1), align 8
  %70 = call i32 @clk_prepare_enable(i8* %69)
  store i32 %70, i32* %6, align 4
  %71 = load i32, i32* %6, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %76

73:                                               ; preds = %68
  %74 = load i32*, i32** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @priv, i32 0, i32 3), align 8
  %75 = call i32 @dev_err(i32* %74, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.6, i64 0, i64 0))
  br label %117

76:                                               ; preds = %68
  %77 = load i8*, i8** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @priv, i32 0, i32 1), align 8
  %78 = call i32 @clk_get_rate(i8* %77)
  %79 = sdiv i32 %78, 1000
  %80 = load %struct.TYPE_4__*, %struct.TYPE_4__** @kirkwood_freq_table, align 8
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i64 1
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %81, i32 0, i32 0
  store i32 %79, i32* %82, align 4
  %83 = load %struct.device_node*, %struct.device_node** %4, align 8
  %84 = call i8* @of_clk_get_by_name(%struct.device_node* %83, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i64 0, i64 0))
  store i8* %84, i8** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @priv, i32 0, i32 2), align 8
  %85 = load i8*, i8** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @priv, i32 0, i32 2), align 8
  %86 = call i64 @IS_ERR(i8* %85)
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %93

88:                                               ; preds = %76
  %89 = load i32*, i32** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @priv, i32 0, i32 3), align 8
  %90 = call i32 @dev_err(i32* %89, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.8, i64 0, i64 0))
  %91 = load i8*, i8** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @priv, i32 0, i32 2), align 8
  %92 = call i32 @PTR_ERR(i8* %91)
  store i32 %92, i32* %6, align 4
  br label %114

93:                                               ; preds = %76
  %94 = load i8*, i8** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @priv, i32 0, i32 2), align 8
  %95 = call i32 @clk_prepare_enable(i8* %94)
  store i32 %95, i32* %6, align 4
  %96 = load i32, i32* %6, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %101

98:                                               ; preds = %93
  %99 = load i32*, i32** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @priv, i32 0, i32 3), align 8
  %100 = call i32 @dev_err(i32* %99, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.9, i64 0, i64 0))
  br label %114

101:                                              ; preds = %93
  %102 = call i32 @cpufreq_register_driver(i32* @kirkwood_cpufreq_driver)
  store i32 %102, i32* %6, align 4
  %103 = load i32, i32* %6, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %108

105:                                              ; preds = %101
  %106 = load i32*, i32** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @priv, i32 0, i32 3), align 8
  %107 = call i32 @dev_err(i32* %106, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.10, i64 0, i64 0))
  br label %111

108:                                              ; preds = %101
  %109 = load %struct.device_node*, %struct.device_node** %4, align 8
  %110 = call i32 @of_node_put(%struct.device_node* %109)
  store i32 0, i32* %2, align 4
  br label %124

111:                                              ; preds = %105
  %112 = load i8*, i8** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @priv, i32 0, i32 2), align 8
  %113 = call i32 @clk_disable_unprepare(i8* %112)
  br label %114

114:                                              ; preds = %111, %98, %88
  %115 = load i8*, i8** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @priv, i32 0, i32 1), align 8
  %116 = call i32 @clk_disable_unprepare(i8* %115)
  br label %117

117:                                              ; preds = %114, %73, %63
  %118 = load i8*, i8** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @priv, i32 0, i32 0), align 8
  %119 = call i32 @clk_disable_unprepare(i8* %118)
  br label %120

120:                                              ; preds = %117, %48, %38
  %121 = load %struct.device_node*, %struct.device_node** %4, align 8
  %122 = call i32 @of_node_put(%struct.device_node* %121)
  %123 = load i32, i32* %6, align 4
  store i32 %123, i32* %2, align 4
  br label %124

124:                                              ; preds = %120, %108, %26, %19
  %125 = load i32, i32* %2, align 4
  ret i32 %125
}

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local i8* @devm_ioremap_resource(i32*, %struct.resource*) #1

declare dso_local i64 @IS_ERR(i8*) #1

declare dso_local i32 @PTR_ERR(i8*) #1

declare dso_local %struct.device_node* @of_cpu_device_node_get(i32) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i8* @of_clk_get_by_name(%struct.device_node*, i8*) #1

declare dso_local i32 @clk_prepare_enable(i8*) #1

declare dso_local i32 @clk_get_rate(i8*) #1

declare dso_local i32 @cpufreq_register_driver(i32*) #1

declare dso_local i32 @of_node_put(%struct.device_node*) #1

declare dso_local i32 @clk_disable_unprepare(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
