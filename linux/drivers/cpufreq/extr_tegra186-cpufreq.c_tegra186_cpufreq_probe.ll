; ModuleID = '/home/carl/AnghaBench/linux/drivers/cpufreq/extr_tegra186-cpufreq.c_tegra186_cpufreq_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/cpufreq/extr_tegra186-cpufreq.c_tegra186_cpufreq_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { %struct.tegra186_cpufreq_data* }
%struct.tegra186_cpufreq_data = type { i32, %struct.tegra186_cpufreq_cluster*, %struct.tegra_bpmp* }
%struct.tegra186_cpufreq_cluster = type { %struct.tegra_bpmp*, %struct.TYPE_6__* }
%struct.tegra_bpmp = type { i32 }
%struct.platform_device = type { i32 }
%struct.resource = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@tegra186_clusters = common dso_local global %struct.TYPE_6__* null, align 8
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@tegra186_cpufreq_driver = common dso_local global %struct.TYPE_5__ zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @tegra186_cpufreq_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tegra186_cpufreq_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.tegra186_cpufreq_data*, align 8
  %5 = alloca %struct.tegra_bpmp*, align 8
  %6 = alloca %struct.resource*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.tegra186_cpufreq_cluster*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  store i32 0, i32* %7, align 4
  %10 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %11 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %10, i32 0, i32 0
  %12 = load i32, i32* @GFP_KERNEL, align 4
  %13 = call %struct.tegra186_cpufreq_data* @devm_kzalloc(i32* %11, i32 24, i32 %12)
  store %struct.tegra186_cpufreq_data* %13, %struct.tegra186_cpufreq_data** %4, align 8
  %14 = load %struct.tegra186_cpufreq_data*, %struct.tegra186_cpufreq_data** %4, align 8
  %15 = icmp ne %struct.tegra186_cpufreq_data* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %1
  %17 = load i32, i32* @ENOMEM, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %2, align 4
  br label %127

19:                                               ; preds = %1
  %20 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %21 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %20, i32 0, i32 0
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** @tegra186_clusters, align 8
  %23 = call i32 @ARRAY_SIZE(%struct.TYPE_6__* %22)
  %24 = load i32, i32* @GFP_KERNEL, align 4
  %25 = call %struct.tegra186_cpufreq_cluster* @devm_kcalloc(i32* %21, i32 %23, i32 16, i32 %24)
  %26 = load %struct.tegra186_cpufreq_data*, %struct.tegra186_cpufreq_data** %4, align 8
  %27 = getelementptr inbounds %struct.tegra186_cpufreq_data, %struct.tegra186_cpufreq_data* %26, i32 0, i32 1
  store %struct.tegra186_cpufreq_cluster* %25, %struct.tegra186_cpufreq_cluster** %27, align 8
  %28 = load %struct.tegra186_cpufreq_data*, %struct.tegra186_cpufreq_data** %4, align 8
  %29 = getelementptr inbounds %struct.tegra186_cpufreq_data, %struct.tegra186_cpufreq_data* %28, i32 0, i32 1
  %30 = load %struct.tegra186_cpufreq_cluster*, %struct.tegra186_cpufreq_cluster** %29, align 8
  %31 = icmp ne %struct.tegra186_cpufreq_cluster* %30, null
  br i1 %31, label %35, label %32

32:                                               ; preds = %19
  %33 = load i32, i32* @ENOMEM, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %2, align 4
  br label %127

35:                                               ; preds = %19
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** @tegra186_clusters, align 8
  %37 = call i32 @ARRAY_SIZE(%struct.TYPE_6__* %36)
  %38 = load %struct.tegra186_cpufreq_data*, %struct.tegra186_cpufreq_data** %4, align 8
  %39 = getelementptr inbounds %struct.tegra186_cpufreq_data, %struct.tegra186_cpufreq_data* %38, i32 0, i32 0
  store i32 %37, i32* %39, align 8
  %40 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %41 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %40, i32 0, i32 0
  %42 = call %struct.tegra_bpmp* @tegra_bpmp_get(i32* %41)
  store %struct.tegra_bpmp* %42, %struct.tegra_bpmp** %5, align 8
  %43 = load %struct.tegra_bpmp*, %struct.tegra_bpmp** %5, align 8
  %44 = call i64 @IS_ERR(%struct.tegra_bpmp* %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %35
  %47 = load %struct.tegra_bpmp*, %struct.tegra_bpmp** %5, align 8
  %48 = call i32 @PTR_ERR(%struct.tegra_bpmp* %47)
  store i32 %48, i32* %2, align 4
  br label %127

49:                                               ; preds = %35
  %50 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %51 = load i32, i32* @IORESOURCE_MEM, align 4
  %52 = call %struct.resource* @platform_get_resource(%struct.platform_device* %50, i32 %51, i32 0)
  store %struct.resource* %52, %struct.resource** %6, align 8
  %53 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %54 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %53, i32 0, i32 0
  %55 = load %struct.resource*, %struct.resource** %6, align 8
  %56 = call %struct.tegra_bpmp* @devm_ioremap_resource(i32* %54, %struct.resource* %55)
  %57 = load %struct.tegra186_cpufreq_data*, %struct.tegra186_cpufreq_data** %4, align 8
  %58 = getelementptr inbounds %struct.tegra186_cpufreq_data, %struct.tegra186_cpufreq_data* %57, i32 0, i32 2
  store %struct.tegra_bpmp* %56, %struct.tegra_bpmp** %58, align 8
  %59 = load %struct.tegra186_cpufreq_data*, %struct.tegra186_cpufreq_data** %4, align 8
  %60 = getelementptr inbounds %struct.tegra186_cpufreq_data, %struct.tegra186_cpufreq_data* %59, i32 0, i32 2
  %61 = load %struct.tegra_bpmp*, %struct.tegra_bpmp** %60, align 8
  %62 = call i64 @IS_ERR(%struct.tegra_bpmp* %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %69

64:                                               ; preds = %49
  %65 = load %struct.tegra186_cpufreq_data*, %struct.tegra186_cpufreq_data** %4, align 8
  %66 = getelementptr inbounds %struct.tegra186_cpufreq_data, %struct.tegra186_cpufreq_data* %65, i32 0, i32 2
  %67 = load %struct.tegra_bpmp*, %struct.tegra_bpmp** %66, align 8
  %68 = call i32 @PTR_ERR(%struct.tegra_bpmp* %67)
  store i32 %68, i32* %8, align 4
  br label %123

69:                                               ; preds = %49
  store i32 0, i32* %7, align 4
  br label %70

70:                                               ; preds = %110, %69
  %71 = load i32, i32* %7, align 4
  %72 = load %struct.tegra186_cpufreq_data*, %struct.tegra186_cpufreq_data** %4, align 8
  %73 = getelementptr inbounds %struct.tegra186_cpufreq_data, %struct.tegra186_cpufreq_data* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = icmp ult i32 %71, %74
  br i1 %75, label %76, label %113

76:                                               ; preds = %70
  %77 = load %struct.tegra186_cpufreq_data*, %struct.tegra186_cpufreq_data** %4, align 8
  %78 = getelementptr inbounds %struct.tegra186_cpufreq_data, %struct.tegra186_cpufreq_data* %77, i32 0, i32 1
  %79 = load %struct.tegra186_cpufreq_cluster*, %struct.tegra186_cpufreq_cluster** %78, align 8
  %80 = load i32, i32* %7, align 4
  %81 = zext i32 %80 to i64
  %82 = getelementptr inbounds %struct.tegra186_cpufreq_cluster, %struct.tegra186_cpufreq_cluster* %79, i64 %81
  store %struct.tegra186_cpufreq_cluster* %82, %struct.tegra186_cpufreq_cluster** %9, align 8
  %83 = load %struct.TYPE_6__*, %struct.TYPE_6__** @tegra186_clusters, align 8
  %84 = load i32, i32* %7, align 4
  %85 = zext i32 %84 to i64
  %86 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %83, i64 %85
  %87 = load %struct.tegra186_cpufreq_cluster*, %struct.tegra186_cpufreq_cluster** %9, align 8
  %88 = getelementptr inbounds %struct.tegra186_cpufreq_cluster, %struct.tegra186_cpufreq_cluster* %87, i32 0, i32 1
  store %struct.TYPE_6__* %86, %struct.TYPE_6__** %88, align 8
  %89 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %90 = load %struct.tegra_bpmp*, %struct.tegra_bpmp** %5, align 8
  %91 = load %struct.tegra186_cpufreq_cluster*, %struct.tegra186_cpufreq_cluster** %9, align 8
  %92 = getelementptr inbounds %struct.tegra186_cpufreq_cluster, %struct.tegra186_cpufreq_cluster* %91, i32 0, i32 1
  %93 = load %struct.TYPE_6__*, %struct.TYPE_6__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = call %struct.tegra_bpmp* @init_vhint_table(%struct.platform_device* %89, %struct.tegra_bpmp* %90, i32 %95)
  %97 = load %struct.tegra186_cpufreq_cluster*, %struct.tegra186_cpufreq_cluster** %9, align 8
  %98 = getelementptr inbounds %struct.tegra186_cpufreq_cluster, %struct.tegra186_cpufreq_cluster* %97, i32 0, i32 0
  store %struct.tegra_bpmp* %96, %struct.tegra_bpmp** %98, align 8
  %99 = load %struct.tegra186_cpufreq_cluster*, %struct.tegra186_cpufreq_cluster** %9, align 8
  %100 = getelementptr inbounds %struct.tegra186_cpufreq_cluster, %struct.tegra186_cpufreq_cluster* %99, i32 0, i32 0
  %101 = load %struct.tegra_bpmp*, %struct.tegra_bpmp** %100, align 8
  %102 = call i64 @IS_ERR(%struct.tegra_bpmp* %101)
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %109

104:                                              ; preds = %76
  %105 = load %struct.tegra186_cpufreq_cluster*, %struct.tegra186_cpufreq_cluster** %9, align 8
  %106 = getelementptr inbounds %struct.tegra186_cpufreq_cluster, %struct.tegra186_cpufreq_cluster* %105, i32 0, i32 0
  %107 = load %struct.tegra_bpmp*, %struct.tegra_bpmp** %106, align 8
  %108 = call i32 @PTR_ERR(%struct.tegra_bpmp* %107)
  store i32 %108, i32* %8, align 4
  br label %123

109:                                              ; preds = %76
  br label %110

110:                                              ; preds = %109
  %111 = load i32, i32* %7, align 4
  %112 = add i32 %111, 1
  store i32 %112, i32* %7, align 4
  br label %70

113:                                              ; preds = %70
  %114 = load %struct.tegra_bpmp*, %struct.tegra_bpmp** %5, align 8
  %115 = call i32 @tegra_bpmp_put(%struct.tegra_bpmp* %114)
  %116 = load %struct.tegra186_cpufreq_data*, %struct.tegra186_cpufreq_data** %4, align 8
  store %struct.tegra186_cpufreq_data* %116, %struct.tegra186_cpufreq_data** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @tegra186_cpufreq_driver, i32 0, i32 0), align 8
  %117 = call i32 @cpufreq_register_driver(%struct.TYPE_5__* @tegra186_cpufreq_driver)
  store i32 %117, i32* %8, align 4
  %118 = load i32, i32* %8, align 4
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %122

120:                                              ; preds = %113
  %121 = load i32, i32* %8, align 4
  store i32 %121, i32* %2, align 4
  br label %127

122:                                              ; preds = %113
  store i32 0, i32* %2, align 4
  br label %127

123:                                              ; preds = %104, %64
  %124 = load %struct.tegra_bpmp*, %struct.tegra_bpmp** %5, align 8
  %125 = call i32 @tegra_bpmp_put(%struct.tegra_bpmp* %124)
  %126 = load i32, i32* %8, align 4
  store i32 %126, i32* %2, align 4
  br label %127

127:                                              ; preds = %123, %122, %120, %46, %32, %16
  %128 = load i32, i32* %2, align 4
  ret i32 %128
}

declare dso_local %struct.tegra186_cpufreq_data* @devm_kzalloc(i32*, i32, i32) #1

declare dso_local %struct.tegra186_cpufreq_cluster* @devm_kcalloc(i32*, i32, i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_6__*) #1

declare dso_local %struct.tegra_bpmp* @tegra_bpmp_get(i32*) #1

declare dso_local i64 @IS_ERR(%struct.tegra_bpmp*) #1

declare dso_local i32 @PTR_ERR(%struct.tegra_bpmp*) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local %struct.tegra_bpmp* @devm_ioremap_resource(i32*, %struct.resource*) #1

declare dso_local %struct.tegra_bpmp* @init_vhint_table(%struct.platform_device*, %struct.tegra_bpmp*, i32) #1

declare dso_local i32 @tegra_bpmp_put(%struct.tegra_bpmp*) #1

declare dso_local i32 @cpufreq_register_driver(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
