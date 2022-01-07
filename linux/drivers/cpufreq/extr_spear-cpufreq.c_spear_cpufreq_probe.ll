; ModuleID = '/home/carl/AnghaBench/linux/drivers/cpufreq/extr_spear-cpufreq.c_spear_cpufreq_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/cpufreq/extr_spear-cpufreq.c_spear_cpufreq_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, %struct.cpufreq_frequency_table*, i32 }
%struct.cpufreq_frequency_table = type { i32 }
%struct.platform_device = type { i32 }
%struct.device_node = type { i32 }
%struct.property = type { i32, i32* }

@.str = private unnamed_addr constant [19 x i8] c"No cpu node found\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [14 x i8] c"clock-latency\00", align 1
@spear_cpufreq = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@CPUFREQ_ETERNAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [12 x i8] c"cpufreq_tbl\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"Invalid cpufreq_tbl\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@CPUFREQ_TABLE_END = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [8 x i8] c"cpu_clk\00", align 1
@.str.5 = private unnamed_addr constant [25 x i8] c"Unable to get CPU clock\0A\00", align 1
@spear_cpufreq_driver = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [28 x i8] c"failed register driver: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @spear_cpufreq_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @spear_cpufreq_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.device_node*, align 8
  %5 = alloca %struct.property*, align 8
  %6 = alloca %struct.cpufreq_frequency_table*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %11 = call %struct.device_node* @of_cpu_device_node_get(i32 0)
  store %struct.device_node* %11, %struct.device_node** %4, align 8
  %12 = load %struct.device_node*, %struct.device_node** %4, align 8
  %13 = icmp ne %struct.device_node* %12, null
  br i1 %13, label %18, label %14

14:                                               ; preds = %1
  %15 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %16 = load i32, i32* @ENODEV, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %2, align 4
  br label %111

18:                                               ; preds = %1
  %19 = load %struct.device_node*, %struct.device_node** %4, align 8
  %20 = call i64 @of_property_read_u32(%struct.device_node* %19, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @spear_cpufreq, i32 0, i32 2))
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %18
  %23 = load i32, i32* @CPUFREQ_ETERNAL, align 4
  store i32 %23, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @spear_cpufreq, i32 0, i32 2), align 8
  br label %24

24:                                               ; preds = %22, %18
  %25 = load %struct.device_node*, %struct.device_node** %4, align 8
  %26 = call %struct.property* @of_find_property(%struct.device_node* %25, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i32* null)
  store %struct.property* %26, %struct.property** %5, align 8
  %27 = load %struct.property*, %struct.property** %5, align 8
  %28 = icmp ne %struct.property* %27, null
  br i1 %28, label %29, label %34

29:                                               ; preds = %24
  %30 = load %struct.property*, %struct.property** %5, align 8
  %31 = getelementptr inbounds %struct.property, %struct.property* %30, i32 0, i32 1
  %32 = load i32*, i32** %31, align 8
  %33 = icmp ne i32* %32, null
  br i1 %33, label %38, label %34

34:                                               ; preds = %29, %24
  %35 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0))
  %36 = load i32, i32* @ENODEV, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %10, align 4
  br label %107

38:                                               ; preds = %29
  %39 = load %struct.property*, %struct.property** %5, align 8
  %40 = getelementptr inbounds %struct.property, %struct.property* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = sext i32 %41 to i64
  %43 = udiv i64 %42, 4
  %44 = trunc i64 %43 to i32
  store i32 %44, i32* %8, align 4
  %45 = load %struct.property*, %struct.property** %5, align 8
  %46 = getelementptr inbounds %struct.property, %struct.property* %45, i32 0, i32 1
  %47 = load i32*, i32** %46, align 8
  store i32* %47, i32** %7, align 8
  %48 = load i32, i32* %8, align 4
  %49 = add nsw i32 %48, 1
  %50 = load i32, i32* @GFP_KERNEL, align 4
  %51 = call %struct.cpufreq_frequency_table* @kcalloc(i32 %49, i32 4, i32 %50)
  store %struct.cpufreq_frequency_table* %51, %struct.cpufreq_frequency_table** %6, align 8
  %52 = load %struct.cpufreq_frequency_table*, %struct.cpufreq_frequency_table** %6, align 8
  %53 = icmp ne %struct.cpufreq_frequency_table* %52, null
  br i1 %53, label %57, label %54

54:                                               ; preds = %38
  %55 = load i32, i32* @ENOMEM, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %10, align 4
  br label %107

57:                                               ; preds = %38
  store i32 0, i32* %9, align 4
  br label %58

58:                                               ; preds = %72, %57
  %59 = load i32, i32* %9, align 4
  %60 = load i32, i32* %8, align 4
  %61 = icmp slt i32 %59, %60
  br i1 %61, label %62, label %75

62:                                               ; preds = %58
  %63 = load i32*, i32** %7, align 8
  %64 = getelementptr inbounds i32, i32* %63, i32 1
  store i32* %64, i32** %7, align 8
  %65 = ptrtoint i32* %63 to i32
  %66 = call i32 @be32_to_cpup(i32 %65)
  %67 = load %struct.cpufreq_frequency_table*, %struct.cpufreq_frequency_table** %6, align 8
  %68 = load i32, i32* %9, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds %struct.cpufreq_frequency_table, %struct.cpufreq_frequency_table* %67, i64 %69
  %71 = getelementptr inbounds %struct.cpufreq_frequency_table, %struct.cpufreq_frequency_table* %70, i32 0, i32 0
  store i32 %66, i32* %71, align 4
  br label %72

72:                                               ; preds = %62
  %73 = load i32, i32* %9, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %9, align 4
  br label %58

75:                                               ; preds = %58
  %76 = load i32, i32* @CPUFREQ_TABLE_END, align 4
  %77 = load %struct.cpufreq_frequency_table*, %struct.cpufreq_frequency_table** %6, align 8
  %78 = load i32, i32* %9, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds %struct.cpufreq_frequency_table, %struct.cpufreq_frequency_table* %77, i64 %79
  %81 = getelementptr inbounds %struct.cpufreq_frequency_table, %struct.cpufreq_frequency_table* %80, i32 0, i32 0
  store i32 %76, i32* %81, align 4
  %82 = load %struct.cpufreq_frequency_table*, %struct.cpufreq_frequency_table** %6, align 8
  store %struct.cpufreq_frequency_table* %82, %struct.cpufreq_frequency_table** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @spear_cpufreq, i32 0, i32 1), align 8
  %83 = load %struct.device_node*, %struct.device_node** %4, align 8
  %84 = call i32 @of_node_put(%struct.device_node* %83)
  %85 = call i32 @clk_get(i32* null, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0))
  store i32 %85, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @spear_cpufreq, i32 0, i32 0), align 8
  %86 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @spear_cpufreq, i32 0, i32 0), align 8
  %87 = call i64 @IS_ERR(i32 %86)
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %93

89:                                               ; preds = %75
  %90 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.5, i64 0, i64 0))
  %91 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @spear_cpufreq, i32 0, i32 0), align 8
  %92 = call i32 @PTR_ERR(i32 %91)
  store i32 %92, i32* %10, align 4
  br label %103

93:                                               ; preds = %75
  %94 = call i32 @cpufreq_register_driver(i32* @spear_cpufreq_driver)
  store i32 %94, i32* %10, align 4
  %95 = load i32, i32* %10, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %98, label %97

97:                                               ; preds = %93
  store i32 0, i32* %2, align 4
  br label %111

98:                                               ; preds = %93
  %99 = load i32, i32* %10, align 4
  %100 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.6, i64 0, i64 0), i32 %99)
  %101 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @spear_cpufreq, i32 0, i32 0), align 8
  %102 = call i32 @clk_put(i32 %101)
  br label %103

103:                                              ; preds = %98, %89
  %104 = load %struct.cpufreq_frequency_table*, %struct.cpufreq_frequency_table** %6, align 8
  %105 = call i32 @kfree(%struct.cpufreq_frequency_table* %104)
  %106 = load i32, i32* %10, align 4
  store i32 %106, i32* %2, align 4
  br label %111

107:                                              ; preds = %54, %34
  %108 = load %struct.device_node*, %struct.device_node** %4, align 8
  %109 = call i32 @of_node_put(%struct.device_node* %108)
  %110 = load i32, i32* %10, align 4
  store i32 %110, i32* %2, align 4
  br label %111

111:                                              ; preds = %107, %103, %97, %14
  %112 = load i32, i32* %2, align 4
  ret i32 %112
}

declare dso_local %struct.device_node* @of_cpu_device_node_get(i32) #1

declare dso_local i32 @pr_err(i8*, ...) #1

declare dso_local i64 @of_property_read_u32(%struct.device_node*, i8*, i32*) #1

declare dso_local %struct.property* @of_find_property(%struct.device_node*, i8*, i32*) #1

declare dso_local %struct.cpufreq_frequency_table* @kcalloc(i32, i32, i32) #1

declare dso_local i32 @be32_to_cpup(i32) #1

declare dso_local i32 @of_node_put(%struct.device_node*) #1

declare dso_local i32 @clk_get(i32*, i8*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @cpufreq_register_driver(i32*) #1

declare dso_local i32 @clk_put(i32) #1

declare dso_local i32 @kfree(%struct.cpufreq_frequency_table*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
