; ModuleID = '/home/carl/AnghaBench/linux/drivers/cpufreq/extr_powernow-k8.c_powernow_k8_cpu_init_acpi.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/cpufreq/extr_powernow-k8.c_powernow_k8_cpu_init_acpi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.powernow_k8_data = type { i64, i32, %struct.TYPE_6__, %struct.cpufreq_frequency_table* }
%struct.TYPE_6__ = type { i32, i32, %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i64 }
%struct.TYPE_4__ = type { i64 }
%struct.cpufreq_frequency_table = type { i32 }

@ENODEV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"register performance failed: bad ACPI data\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [18 x i8] c"No ACPI P-States\0A\00", align 1
@ACPI_ADR_SPACE_FIXED_HARDWARE = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [48 x i8] c"Invalid control/status registers (%llx - %llx)\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@CPUFREQ_TABLE_END = common dso_local global i32 0, align 4
@THIS_MODULE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [42 x i8] c"unable to alloc powernow_k8_data cpumask\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.powernow_k8_data*)* @powernow_k8_cpu_init_acpi to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @powernow_k8_cpu_init_acpi(%struct.powernow_k8_data* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.powernow_k8_data*, align 8
  %4 = alloca %struct.cpufreq_frequency_table*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store %struct.powernow_k8_data* %0, %struct.powernow_k8_data** %3, align 8
  %8 = load i32, i32* @ENODEV, align 4
  %9 = sub nsw i32 0, %8
  store i32 %9, i32* %5, align 4
  %10 = load %struct.powernow_k8_data*, %struct.powernow_k8_data** %3, align 8
  %11 = getelementptr inbounds %struct.powernow_k8_data, %struct.powernow_k8_data* %10, i32 0, i32 2
  %12 = load %struct.powernow_k8_data*, %struct.powernow_k8_data** %3, align 8
  %13 = getelementptr inbounds %struct.powernow_k8_data, %struct.powernow_k8_data* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = call i64 @acpi_processor_register_performance(%struct.TYPE_6__* %11, i64 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %1
  %18 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0))
  %19 = load i32, i32* @EIO, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %2, align 4
  br label %131

21:                                               ; preds = %1
  %22 = load %struct.powernow_k8_data*, %struct.powernow_k8_data** %3, align 8
  %23 = getelementptr inbounds %struct.powernow_k8_data, %struct.powernow_k8_data* %22, i32 0, i32 2
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = icmp sle i32 %25, 1
  br i1 %26, label %27, label %29

27:                                               ; preds = %21
  %28 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  br label %122

29:                                               ; preds = %21
  %30 = load %struct.powernow_k8_data*, %struct.powernow_k8_data** %3, align 8
  %31 = getelementptr inbounds %struct.powernow_k8_data, %struct.powernow_k8_data* %30, i32 0, i32 2
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 3
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  store i64 %34, i64* %6, align 8
  %35 = load %struct.powernow_k8_data*, %struct.powernow_k8_data** %3, align 8
  %36 = getelementptr inbounds %struct.powernow_k8_data, %struct.powernow_k8_data* %35, i32 0, i32 2
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 2
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  store i64 %39, i64* %7, align 8
  %40 = load i64, i64* %6, align 8
  %41 = load i64, i64* @ACPI_ADR_SPACE_FIXED_HARDWARE, align 8
  %42 = icmp ne i64 %40, %41
  br i1 %42, label %47, label %43

43:                                               ; preds = %29
  %44 = load i64, i64* %7, align 8
  %45 = load i64, i64* @ACPI_ADR_SPACE_FIXED_HARDWARE, align 8
  %46 = icmp ne i64 %44, %45
  br i1 %46, label %47, label %51

47:                                               ; preds = %43, %29
  %48 = load i64, i64* %6, align 8
  %49 = load i64, i64* %7, align 8
  %50 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.2, i64 0, i64 0), i64 %48, i64 %49)
  br label %122

51:                                               ; preds = %43
  %52 = load %struct.powernow_k8_data*, %struct.powernow_k8_data** %3, align 8
  %53 = getelementptr inbounds %struct.powernow_k8_data, %struct.powernow_k8_data* %52, i32 0, i32 2
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = add nsw i32 %55, 1
  %57 = sext i32 %56 to i64
  %58 = mul i64 4, %57
  %59 = trunc i64 %58 to i32
  %60 = load i32, i32* @GFP_KERNEL, align 4
  %61 = call %struct.cpufreq_frequency_table* @kzalloc(i32 %59, i32 %60)
  store %struct.cpufreq_frequency_table* %61, %struct.cpufreq_frequency_table** %4, align 8
  %62 = load %struct.cpufreq_frequency_table*, %struct.cpufreq_frequency_table** %4, align 8
  %63 = icmp ne %struct.cpufreq_frequency_table* %62, null
  br i1 %63, label %65, label %64

64:                                               ; preds = %51
  br label %122

65:                                               ; preds = %51
  %66 = load %struct.powernow_k8_data*, %struct.powernow_k8_data** %3, align 8
  %67 = getelementptr inbounds %struct.powernow_k8_data, %struct.powernow_k8_data* %66, i32 0, i32 2
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = load %struct.powernow_k8_data*, %struct.powernow_k8_data** %3, align 8
  %71 = getelementptr inbounds %struct.powernow_k8_data, %struct.powernow_k8_data* %70, i32 0, i32 1
  store i32 %69, i32* %71, align 8
  %72 = load %struct.powernow_k8_data*, %struct.powernow_k8_data** %3, align 8
  %73 = call i32 @powernow_k8_acpi_pst_values(%struct.powernow_k8_data* %72, i32 0)
  %74 = load %struct.powernow_k8_data*, %struct.powernow_k8_data** %3, align 8
  %75 = load %struct.cpufreq_frequency_table*, %struct.cpufreq_frequency_table** %4, align 8
  %76 = call i32 @fill_powernow_table_fidvid(%struct.powernow_k8_data* %74, %struct.cpufreq_frequency_table* %75)
  store i32 %76, i32* %5, align 4
  %77 = load i32, i32* %5, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %80

79:                                               ; preds = %65
  br label %119

80:                                               ; preds = %65
  %81 = load i32, i32* @CPUFREQ_TABLE_END, align 4
  %82 = load %struct.cpufreq_frequency_table*, %struct.cpufreq_frequency_table** %4, align 8
  %83 = load %struct.powernow_k8_data*, %struct.powernow_k8_data** %3, align 8
  %84 = getelementptr inbounds %struct.powernow_k8_data, %struct.powernow_k8_data* %83, i32 0, i32 2
  %85 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds %struct.cpufreq_frequency_table, %struct.cpufreq_frequency_table* %82, i64 %87
  %89 = getelementptr inbounds %struct.cpufreq_frequency_table, %struct.cpufreq_frequency_table* %88, i32 0, i32 0
  store i32 %81, i32* %89, align 4
  %90 = load %struct.cpufreq_frequency_table*, %struct.cpufreq_frequency_table** %4, align 8
  %91 = load %struct.powernow_k8_data*, %struct.powernow_k8_data** %3, align 8
  %92 = getelementptr inbounds %struct.powernow_k8_data, %struct.powernow_k8_data* %91, i32 0, i32 3
  store %struct.cpufreq_frequency_table* %90, %struct.cpufreq_frequency_table** %92, align 8
  %93 = load %struct.powernow_k8_data*, %struct.powernow_k8_data** %3, align 8
  %94 = getelementptr inbounds %struct.powernow_k8_data, %struct.powernow_k8_data* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = call i32 @topology_core_cpumask(i64 %95)
  %97 = call i64 @cpumask_first(i32 %96)
  %98 = load %struct.powernow_k8_data*, %struct.powernow_k8_data** %3, align 8
  %99 = getelementptr inbounds %struct.powernow_k8_data, %struct.powernow_k8_data* %98, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = icmp eq i64 %97, %100
  br i1 %101, label %102, label %105

102:                                              ; preds = %80
  %103 = load %struct.powernow_k8_data*, %struct.powernow_k8_data** %3, align 8
  %104 = call i32 @print_basics(%struct.powernow_k8_data* %103)
  br label %105

105:                                              ; preds = %102, %80
  %106 = load i32, i32* @THIS_MODULE, align 4
  %107 = call i32 @acpi_processor_notify_smm(i32 %106)
  %108 = load %struct.powernow_k8_data*, %struct.powernow_k8_data** %3, align 8
  %109 = getelementptr inbounds %struct.powernow_k8_data, %struct.powernow_k8_data* %108, i32 0, i32 2
  %110 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %109, i32 0, i32 1
  %111 = load i32, i32* @GFP_KERNEL, align 4
  %112 = call i32 @zalloc_cpumask_var(i32* %110, i32 %111)
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %118, label %114

114:                                              ; preds = %105
  %115 = call i32 @pr_err(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.3, i64 0, i64 0))
  %116 = load i32, i32* @ENOMEM, align 4
  %117 = sub nsw i32 0, %116
  store i32 %117, i32* %5, align 4
  br label %119

118:                                              ; preds = %105
  store i32 0, i32* %2, align 4
  br label %131

119:                                              ; preds = %114, %79
  %120 = load %struct.cpufreq_frequency_table*, %struct.cpufreq_frequency_table** %4, align 8
  %121 = call i32 @kfree(%struct.cpufreq_frequency_table* %120)
  br label %122

122:                                              ; preds = %119, %64, %47, %27
  %123 = load %struct.powernow_k8_data*, %struct.powernow_k8_data** %3, align 8
  %124 = getelementptr inbounds %struct.powernow_k8_data, %struct.powernow_k8_data* %123, i32 0, i32 0
  %125 = load i64, i64* %124, align 8
  %126 = call i32 @acpi_processor_unregister_performance(i64 %125)
  %127 = load %struct.powernow_k8_data*, %struct.powernow_k8_data** %3, align 8
  %128 = getelementptr inbounds %struct.powernow_k8_data, %struct.powernow_k8_data* %127, i32 0, i32 2
  %129 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %128, i32 0, i32 0
  store i32 0, i32* %129, align 8
  %130 = load i32, i32* %5, align 4
  store i32 %130, i32* %2, align 4
  br label %131

131:                                              ; preds = %122, %118, %17
  %132 = load i32, i32* %2, align 4
  ret i32 %132
}

declare dso_local i64 @acpi_processor_register_performance(%struct.TYPE_6__*, i64) #1

declare dso_local i32 @pr_debug(i8*, ...) #1

declare dso_local %struct.cpufreq_frequency_table* @kzalloc(i32, i32) #1

declare dso_local i32 @powernow_k8_acpi_pst_values(%struct.powernow_k8_data*, i32) #1

declare dso_local i32 @fill_powernow_table_fidvid(%struct.powernow_k8_data*, %struct.cpufreq_frequency_table*) #1

declare dso_local i64 @cpumask_first(i32) #1

declare dso_local i32 @topology_core_cpumask(i64) #1

declare dso_local i32 @print_basics(%struct.powernow_k8_data*) #1

declare dso_local i32 @acpi_processor_notify_smm(i32) #1

declare dso_local i32 @zalloc_cpumask_var(i32*, i32) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @kfree(%struct.cpufreq_frequency_table*) #1

declare dso_local i32 @acpi_processor_unregister_performance(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
