; ModuleID = '/home/carl/AnghaBench/linux/drivers/cpufreq/extr_tegra124-cpufreq.c_tegra124_cpufreq_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/cpufreq/extr_tegra124-cpufreq.c_tegra124_cpufreq_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.tegra124_cpufreq_priv = type { i8*, i8*, i8*, i8*, i8* }
%struct.device_node = type { i32 }
%struct.device = type { i32 }
%struct.platform_device_info = type { i8*, i32* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"cpu_g\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"dfll\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"pll_x\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"pll_p\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"cpufreq-dt\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @tegra124_cpufreq_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tegra124_cpufreq_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.tegra124_cpufreq_priv*, align 8
  %5 = alloca %struct.device_node*, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.platform_device_info, align 8
  %8 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %9 = bitcast %struct.platform_device_info* %7 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %9, i8 0, i64 16, i1 false)
  %10 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %11 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %10, i32 0, i32 0
  %12 = load i32, i32* @GFP_KERNEL, align 4
  %13 = call %struct.tegra124_cpufreq_priv* @devm_kzalloc(i32* %11, i32 40, i32 %12)
  store %struct.tegra124_cpufreq_priv* %13, %struct.tegra124_cpufreq_priv** %4, align 8
  %14 = load %struct.tegra124_cpufreq_priv*, %struct.tegra124_cpufreq_priv** %4, align 8
  %15 = icmp ne %struct.tegra124_cpufreq_priv* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %1
  %17 = load i32, i32* @ENOMEM, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %2, align 4
  br label %147

19:                                               ; preds = %1
  %20 = call %struct.device* @get_cpu_device(i32 0)
  store %struct.device* %20, %struct.device** %6, align 8
  %21 = load %struct.device*, %struct.device** %6, align 8
  %22 = icmp ne %struct.device* %21, null
  br i1 %22, label %26, label %23

23:                                               ; preds = %19
  %24 = load i32, i32* @ENODEV, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %2, align 4
  br label %147

26:                                               ; preds = %19
  %27 = call %struct.device_node* @of_cpu_device_node_get(i32 0)
  store %struct.device_node* %27, %struct.device_node** %5, align 8
  %28 = load %struct.device_node*, %struct.device_node** %5, align 8
  %29 = icmp ne %struct.device_node* %28, null
  br i1 %29, label %33, label %30

30:                                               ; preds = %26
  %31 = load i32, i32* @ENODEV, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %2, align 4
  br label %147

33:                                               ; preds = %26
  %34 = load %struct.device_node*, %struct.device_node** %5, align 8
  %35 = call i8* @of_clk_get_by_name(%struct.device_node* %34, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %36 = load %struct.tegra124_cpufreq_priv*, %struct.tegra124_cpufreq_priv** %4, align 8
  %37 = getelementptr inbounds %struct.tegra124_cpufreq_priv, %struct.tegra124_cpufreq_priv* %36, i32 0, i32 0
  store i8* %35, i8** %37, align 8
  %38 = load %struct.tegra124_cpufreq_priv*, %struct.tegra124_cpufreq_priv** %4, align 8
  %39 = getelementptr inbounds %struct.tegra124_cpufreq_priv, %struct.tegra124_cpufreq_priv* %38, i32 0, i32 0
  %40 = load i8*, i8** %39, align 8
  %41 = call i64 @IS_ERR(i8* %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %48

43:                                               ; preds = %33
  %44 = load %struct.tegra124_cpufreq_priv*, %struct.tegra124_cpufreq_priv** %4, align 8
  %45 = getelementptr inbounds %struct.tegra124_cpufreq_priv, %struct.tegra124_cpufreq_priv* %44, i32 0, i32 0
  %46 = load i8*, i8** %45, align 8
  %47 = call i32 @PTR_ERR(i8* %46)
  store i32 %47, i32* %8, align 4
  br label %143

48:                                               ; preds = %33
  %49 = load %struct.device_node*, %struct.device_node** %5, align 8
  %50 = call i8* @of_clk_get_by_name(%struct.device_node* %49, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %51 = load %struct.tegra124_cpufreq_priv*, %struct.tegra124_cpufreq_priv** %4, align 8
  %52 = getelementptr inbounds %struct.tegra124_cpufreq_priv, %struct.tegra124_cpufreq_priv* %51, i32 0, i32 1
  store i8* %50, i8** %52, align 8
  %53 = load %struct.tegra124_cpufreq_priv*, %struct.tegra124_cpufreq_priv** %4, align 8
  %54 = getelementptr inbounds %struct.tegra124_cpufreq_priv, %struct.tegra124_cpufreq_priv* %53, i32 0, i32 1
  %55 = load i8*, i8** %54, align 8
  %56 = call i64 @IS_ERR(i8* %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %63

58:                                               ; preds = %48
  %59 = load %struct.tegra124_cpufreq_priv*, %struct.tegra124_cpufreq_priv** %4, align 8
  %60 = getelementptr inbounds %struct.tegra124_cpufreq_priv, %struct.tegra124_cpufreq_priv* %59, i32 0, i32 1
  %61 = load i8*, i8** %60, align 8
  %62 = call i32 @PTR_ERR(i8* %61)
  store i32 %62, i32* %8, align 4
  br label %138

63:                                               ; preds = %48
  %64 = load %struct.device_node*, %struct.device_node** %5, align 8
  %65 = call i8* @of_clk_get_by_name(%struct.device_node* %64, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  %66 = load %struct.tegra124_cpufreq_priv*, %struct.tegra124_cpufreq_priv** %4, align 8
  %67 = getelementptr inbounds %struct.tegra124_cpufreq_priv, %struct.tegra124_cpufreq_priv* %66, i32 0, i32 2
  store i8* %65, i8** %67, align 8
  %68 = load %struct.tegra124_cpufreq_priv*, %struct.tegra124_cpufreq_priv** %4, align 8
  %69 = getelementptr inbounds %struct.tegra124_cpufreq_priv, %struct.tegra124_cpufreq_priv* %68, i32 0, i32 2
  %70 = load i8*, i8** %69, align 8
  %71 = call i64 @IS_ERR(i8* %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %78

73:                                               ; preds = %63
  %74 = load %struct.tegra124_cpufreq_priv*, %struct.tegra124_cpufreq_priv** %4, align 8
  %75 = getelementptr inbounds %struct.tegra124_cpufreq_priv, %struct.tegra124_cpufreq_priv* %74, i32 0, i32 2
  %76 = load i8*, i8** %75, align 8
  %77 = call i32 @PTR_ERR(i8* %76)
  store i32 %77, i32* %8, align 4
  br label %133

78:                                               ; preds = %63
  %79 = load %struct.device_node*, %struct.device_node** %5, align 8
  %80 = call i8* @of_clk_get_by_name(%struct.device_node* %79, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0))
  %81 = load %struct.tegra124_cpufreq_priv*, %struct.tegra124_cpufreq_priv** %4, align 8
  %82 = getelementptr inbounds %struct.tegra124_cpufreq_priv, %struct.tegra124_cpufreq_priv* %81, i32 0, i32 3
  store i8* %80, i8** %82, align 8
  %83 = load %struct.tegra124_cpufreq_priv*, %struct.tegra124_cpufreq_priv** %4, align 8
  %84 = getelementptr inbounds %struct.tegra124_cpufreq_priv, %struct.tegra124_cpufreq_priv* %83, i32 0, i32 3
  %85 = load i8*, i8** %84, align 8
  %86 = call i64 @IS_ERR(i8* %85)
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %93

88:                                               ; preds = %78
  %89 = load %struct.tegra124_cpufreq_priv*, %struct.tegra124_cpufreq_priv** %4, align 8
  %90 = getelementptr inbounds %struct.tegra124_cpufreq_priv, %struct.tegra124_cpufreq_priv* %89, i32 0, i32 3
  %91 = load i8*, i8** %90, align 8
  %92 = call i32 @PTR_ERR(i8* %91)
  store i32 %92, i32* %8, align 4
  br label %128

93:                                               ; preds = %78
  %94 = load %struct.tegra124_cpufreq_priv*, %struct.tegra124_cpufreq_priv** %4, align 8
  %95 = call i32 @tegra124_cpu_switch_to_dfll(%struct.tegra124_cpufreq_priv* %94)
  store i32 %95, i32* %8, align 4
  %96 = load i32, i32* %8, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %99

98:                                               ; preds = %93
  br label %123

99:                                               ; preds = %93
  %100 = getelementptr inbounds %struct.platform_device_info, %struct.platform_device_info* %7, i32 0, i32 0
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0), i8** %100, align 8
  %101 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %102 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.platform_device_info, %struct.platform_device_info* %7, i32 0, i32 1
  store i32* %102, i32** %103, align 8
  %104 = call i8* @platform_device_register_full(%struct.platform_device_info* %7)
  %105 = load %struct.tegra124_cpufreq_priv*, %struct.tegra124_cpufreq_priv** %4, align 8
  %106 = getelementptr inbounds %struct.tegra124_cpufreq_priv, %struct.tegra124_cpufreq_priv* %105, i32 0, i32 4
  store i8* %104, i8** %106, align 8
  %107 = load %struct.tegra124_cpufreq_priv*, %struct.tegra124_cpufreq_priv** %4, align 8
  %108 = getelementptr inbounds %struct.tegra124_cpufreq_priv, %struct.tegra124_cpufreq_priv* %107, i32 0, i32 4
  %109 = load i8*, i8** %108, align 8
  %110 = call i64 @IS_ERR(i8* %109)
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %117

112:                                              ; preds = %99
  %113 = load %struct.tegra124_cpufreq_priv*, %struct.tegra124_cpufreq_priv** %4, align 8
  %114 = getelementptr inbounds %struct.tegra124_cpufreq_priv, %struct.tegra124_cpufreq_priv* %113, i32 0, i32 4
  %115 = load i8*, i8** %114, align 8
  %116 = call i32 @PTR_ERR(i8* %115)
  store i32 %116, i32* %8, align 4
  br label %123

117:                                              ; preds = %99
  %118 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %119 = load %struct.tegra124_cpufreq_priv*, %struct.tegra124_cpufreq_priv** %4, align 8
  %120 = call i32 @platform_set_drvdata(%struct.platform_device* %118, %struct.tegra124_cpufreq_priv* %119)
  %121 = load %struct.device_node*, %struct.device_node** %5, align 8
  %122 = call i32 @of_node_put(%struct.device_node* %121)
  store i32 0, i32* %2, align 4
  br label %147

123:                                              ; preds = %112, %98
  %124 = load %struct.tegra124_cpufreq_priv*, %struct.tegra124_cpufreq_priv** %4, align 8
  %125 = getelementptr inbounds %struct.tegra124_cpufreq_priv, %struct.tegra124_cpufreq_priv* %124, i32 0, i32 3
  %126 = load i8*, i8** %125, align 8
  %127 = call i32 @clk_put(i8* %126)
  br label %128

128:                                              ; preds = %123, %88
  %129 = load %struct.tegra124_cpufreq_priv*, %struct.tegra124_cpufreq_priv** %4, align 8
  %130 = getelementptr inbounds %struct.tegra124_cpufreq_priv, %struct.tegra124_cpufreq_priv* %129, i32 0, i32 2
  %131 = load i8*, i8** %130, align 8
  %132 = call i32 @clk_put(i8* %131)
  br label %133

133:                                              ; preds = %128, %73
  %134 = load %struct.tegra124_cpufreq_priv*, %struct.tegra124_cpufreq_priv** %4, align 8
  %135 = getelementptr inbounds %struct.tegra124_cpufreq_priv, %struct.tegra124_cpufreq_priv* %134, i32 0, i32 1
  %136 = load i8*, i8** %135, align 8
  %137 = call i32 @clk_put(i8* %136)
  br label %138

138:                                              ; preds = %133, %58
  %139 = load %struct.tegra124_cpufreq_priv*, %struct.tegra124_cpufreq_priv** %4, align 8
  %140 = getelementptr inbounds %struct.tegra124_cpufreq_priv, %struct.tegra124_cpufreq_priv* %139, i32 0, i32 0
  %141 = load i8*, i8** %140, align 8
  %142 = call i32 @clk_put(i8* %141)
  br label %143

143:                                              ; preds = %138, %43
  %144 = load %struct.device_node*, %struct.device_node** %5, align 8
  %145 = call i32 @of_node_put(%struct.device_node* %144)
  %146 = load i32, i32* %8, align 4
  store i32 %146, i32* %2, align 4
  br label %147

147:                                              ; preds = %143, %117, %30, %23, %16
  %148 = load i32, i32* %2, align 4
  ret i32 %148
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local %struct.tegra124_cpufreq_priv* @devm_kzalloc(i32*, i32, i32) #2

declare dso_local %struct.device* @get_cpu_device(i32) #2

declare dso_local %struct.device_node* @of_cpu_device_node_get(i32) #2

declare dso_local i8* @of_clk_get_by_name(%struct.device_node*, i8*) #2

declare dso_local i64 @IS_ERR(i8*) #2

declare dso_local i32 @PTR_ERR(i8*) #2

declare dso_local i32 @tegra124_cpu_switch_to_dfll(%struct.tegra124_cpufreq_priv*) #2

declare dso_local i8* @platform_device_register_full(%struct.platform_device_info*) #2

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.tegra124_cpufreq_priv*) #2

declare dso_local i32 @of_node_put(%struct.device_node*) #2

declare dso_local i32 @clk_put(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
