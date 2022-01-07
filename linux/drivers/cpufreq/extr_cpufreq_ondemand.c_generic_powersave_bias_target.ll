; ModuleID = '/home/carl/AnghaBench/linux/drivers/cpufreq/extr_cpufreq_ondemand.c_generic_powersave_bias_target.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/cpufreq/extr_cpufreq_ondemand.c_generic_powersave_bias_target.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpufreq_policy = type { %struct.cpufreq_frequency_table*, %struct.policy_dbs_info* }
%struct.cpufreq_frequency_table = type { i32 }
%struct.policy_dbs_info = type { %struct.dbs_data* }
%struct.dbs_data = type { i32, %struct.od_dbs_tuners* }
%struct.od_dbs_tuners = type { i32 }
%struct.od_policy_dbs_info = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cpufreq_policy*, i32, i32)* @generic_powersave_bias_target to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @generic_powersave_bias_target(%struct.cpufreq_policy* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.cpufreq_policy*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.policy_dbs_info*, align 8
  %16 = alloca %struct.od_policy_dbs_info*, align 8
  %17 = alloca %struct.dbs_data*, align 8
  %18 = alloca %struct.od_dbs_tuners*, align 8
  %19 = alloca %struct.cpufreq_frequency_table*, align 8
  store %struct.cpufreq_policy* %0, %struct.cpufreq_policy** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %20 = load %struct.cpufreq_policy*, %struct.cpufreq_policy** %5, align 8
  %21 = getelementptr inbounds %struct.cpufreq_policy, %struct.cpufreq_policy* %20, i32 0, i32 1
  %22 = load %struct.policy_dbs_info*, %struct.policy_dbs_info** %21, align 8
  store %struct.policy_dbs_info* %22, %struct.policy_dbs_info** %15, align 8
  %23 = load %struct.policy_dbs_info*, %struct.policy_dbs_info** %15, align 8
  %24 = call %struct.od_policy_dbs_info* @to_dbs_info(%struct.policy_dbs_info* %23)
  store %struct.od_policy_dbs_info* %24, %struct.od_policy_dbs_info** %16, align 8
  %25 = load %struct.policy_dbs_info*, %struct.policy_dbs_info** %15, align 8
  %26 = getelementptr inbounds %struct.policy_dbs_info, %struct.policy_dbs_info* %25, i32 0, i32 0
  %27 = load %struct.dbs_data*, %struct.dbs_data** %26, align 8
  store %struct.dbs_data* %27, %struct.dbs_data** %17, align 8
  %28 = load %struct.dbs_data*, %struct.dbs_data** %17, align 8
  %29 = getelementptr inbounds %struct.dbs_data, %struct.dbs_data* %28, i32 0, i32 1
  %30 = load %struct.od_dbs_tuners*, %struct.od_dbs_tuners** %29, align 8
  store %struct.od_dbs_tuners* %30, %struct.od_dbs_tuners** %18, align 8
  %31 = load %struct.cpufreq_policy*, %struct.cpufreq_policy** %5, align 8
  %32 = getelementptr inbounds %struct.cpufreq_policy, %struct.cpufreq_policy* %31, i32 0, i32 0
  %33 = load %struct.cpufreq_frequency_table*, %struct.cpufreq_frequency_table** %32, align 8
  store %struct.cpufreq_frequency_table* %33, %struct.cpufreq_frequency_table** %19, align 8
  %34 = load %struct.cpufreq_frequency_table*, %struct.cpufreq_frequency_table** %19, align 8
  %35 = icmp ne %struct.cpufreq_frequency_table* %34, null
  br i1 %35, label %42, label %36

36:                                               ; preds = %3
  %37 = load %struct.od_policy_dbs_info*, %struct.od_policy_dbs_info** %16, align 8
  %38 = getelementptr inbounds %struct.od_policy_dbs_info, %struct.od_policy_dbs_info* %37, i32 0, i32 0
  store i32 0, i32* %38, align 4
  %39 = load %struct.od_policy_dbs_info*, %struct.od_policy_dbs_info** %16, align 8
  %40 = getelementptr inbounds %struct.od_policy_dbs_info, %struct.od_policy_dbs_info* %39, i32 0, i32 1
  store i32 0, i32* %40, align 4
  %41 = load i32, i32* %6, align 4
  store i32 %41, i32* %4, align 4
  br label %122

42:                                               ; preds = %3
  %43 = load %struct.cpufreq_policy*, %struct.cpufreq_policy** %5, align 8
  %44 = load i32, i32* %6, align 4
  %45 = load i32, i32* %7, align 4
  %46 = call i32 @cpufreq_frequency_table_target(%struct.cpufreq_policy* %43, i32 %44, i32 %45)
  store i32 %46, i32* %13, align 4
  %47 = load %struct.cpufreq_frequency_table*, %struct.cpufreq_frequency_table** %19, align 8
  %48 = load i32, i32* %13, align 4
  %49 = zext i32 %48 to i64
  %50 = getelementptr inbounds %struct.cpufreq_frequency_table, %struct.cpufreq_frequency_table* %47, i64 %49
  %51 = getelementptr inbounds %struct.cpufreq_frequency_table, %struct.cpufreq_frequency_table* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  store i32 %52, i32* %8, align 4
  %53 = load i32, i32* %8, align 4
  %54 = load %struct.od_dbs_tuners*, %struct.od_dbs_tuners** %18, align 8
  %55 = getelementptr inbounds %struct.od_dbs_tuners, %struct.od_dbs_tuners* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = mul i32 %53, %56
  %58 = udiv i32 %57, 1000
  store i32 %58, i32* %9, align 4
  %59 = load i32, i32* %8, align 4
  %60 = load i32, i32* %9, align 4
  %61 = sub i32 %59, %60
  store i32 %61, i32* %10, align 4
  %62 = load %struct.cpufreq_policy*, %struct.cpufreq_policy** %5, align 8
  %63 = load i32, i32* %10, align 4
  %64 = call i32 @cpufreq_table_find_index_h(%struct.cpufreq_policy* %62, i32 %63)
  store i32 %64, i32* %13, align 4
  %65 = load %struct.cpufreq_frequency_table*, %struct.cpufreq_frequency_table** %19, align 8
  %66 = load i32, i32* %13, align 4
  %67 = zext i32 %66 to i64
  %68 = getelementptr inbounds %struct.cpufreq_frequency_table, %struct.cpufreq_frequency_table* %65, i64 %67
  %69 = getelementptr inbounds %struct.cpufreq_frequency_table, %struct.cpufreq_frequency_table* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  store i32 %70, i32* %12, align 4
  %71 = load %struct.cpufreq_policy*, %struct.cpufreq_policy** %5, align 8
  %72 = load i32, i32* %10, align 4
  %73 = call i32 @cpufreq_table_find_index_l(%struct.cpufreq_policy* %71, i32 %72)
  store i32 %73, i32* %13, align 4
  %74 = load %struct.cpufreq_frequency_table*, %struct.cpufreq_frequency_table** %19, align 8
  %75 = load i32, i32* %13, align 4
  %76 = zext i32 %75 to i64
  %77 = getelementptr inbounds %struct.cpufreq_frequency_table, %struct.cpufreq_frequency_table* %74, i64 %76
  %78 = getelementptr inbounds %struct.cpufreq_frequency_table, %struct.cpufreq_frequency_table* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  store i32 %79, i32* %11, align 4
  %80 = load i32, i32* %11, align 4
  %81 = load i32, i32* %12, align 4
  %82 = icmp eq i32 %80, %81
  br i1 %82, label %83, label %89

83:                                               ; preds = %42
  %84 = load %struct.od_policy_dbs_info*, %struct.od_policy_dbs_info** %16, align 8
  %85 = getelementptr inbounds %struct.od_policy_dbs_info, %struct.od_policy_dbs_info* %84, i32 0, i32 0
  store i32 0, i32* %85, align 4
  %86 = load %struct.od_policy_dbs_info*, %struct.od_policy_dbs_info** %16, align 8
  %87 = getelementptr inbounds %struct.od_policy_dbs_info, %struct.od_policy_dbs_info* %86, i32 0, i32 1
  store i32 0, i32* %87, align 4
  %88 = load i32, i32* %12, align 4
  store i32 %88, i32* %4, align 4
  br label %122

89:                                               ; preds = %42
  %90 = load i32, i32* %10, align 4
  %91 = load i32, i32* %12, align 4
  %92 = sub i32 %90, %91
  %93 = load %struct.dbs_data*, %struct.dbs_data** %17, align 8
  %94 = getelementptr inbounds %struct.dbs_data, %struct.dbs_data* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = mul i32 %92, %95
  store i32 %96, i32* %14, align 4
  %97 = load i32, i32* %11, align 4
  %98 = load i32, i32* %12, align 4
  %99 = sub i32 %97, %98
  %100 = udiv i32 %99, 2
  %101 = load i32, i32* %14, align 4
  %102 = add i32 %101, %100
  store i32 %102, i32* %14, align 4
  %103 = load i32, i32* %11, align 4
  %104 = load i32, i32* %12, align 4
  %105 = sub i32 %103, %104
  %106 = load i32, i32* %14, align 4
  %107 = udiv i32 %106, %105
  store i32 %107, i32* %14, align 4
  %108 = load i32, i32* %14, align 4
  %109 = load %struct.od_policy_dbs_info*, %struct.od_policy_dbs_info** %16, align 8
  %110 = getelementptr inbounds %struct.od_policy_dbs_info, %struct.od_policy_dbs_info* %109, i32 0, i32 2
  store i32 %108, i32* %110, align 4
  %111 = load i32, i32* %12, align 4
  %112 = load %struct.od_policy_dbs_info*, %struct.od_policy_dbs_info** %16, align 8
  %113 = getelementptr inbounds %struct.od_policy_dbs_info, %struct.od_policy_dbs_info* %112, i32 0, i32 0
  store i32 %111, i32* %113, align 4
  %114 = load %struct.dbs_data*, %struct.dbs_data** %17, align 8
  %115 = getelementptr inbounds %struct.dbs_data, %struct.dbs_data* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 8
  %117 = load i32, i32* %14, align 4
  %118 = sub i32 %116, %117
  %119 = load %struct.od_policy_dbs_info*, %struct.od_policy_dbs_info** %16, align 8
  %120 = getelementptr inbounds %struct.od_policy_dbs_info, %struct.od_policy_dbs_info* %119, i32 0, i32 1
  store i32 %118, i32* %120, align 4
  %121 = load i32, i32* %11, align 4
  store i32 %121, i32* %4, align 4
  br label %122

122:                                              ; preds = %89, %83, %36
  %123 = load i32, i32* %4, align 4
  ret i32 %123
}

declare dso_local %struct.od_policy_dbs_info* @to_dbs_info(%struct.policy_dbs_info*) #1

declare dso_local i32 @cpufreq_frequency_table_target(%struct.cpufreq_policy*, i32, i32) #1

declare dso_local i32 @cpufreq_table_find_index_h(%struct.cpufreq_policy*, i32) #1

declare dso_local i32 @cpufreq_table_find_index_l(%struct.cpufreq_policy*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
