; ModuleID = '/home/carl/AnghaBench/linux/drivers/cpufreq/extr_cpufreq_conservative.c_cs_dbs_update.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/cpufreq/extr_cpufreq_conservative.c_cs_dbs_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpufreq_policy = type { i32, i32, i32, %struct.policy_dbs_info* }
%struct.policy_dbs_info = type { i32, %struct.dbs_data* }
%struct.dbs_data = type { i32, i64, i32, %struct.cs_dbs_tuners* }
%struct.cs_dbs_tuners = type { i64, i32 }
%struct.cs_policy_dbs_info = type { i32, i64 }

@UINT_MAX = common dso_local global i32 0, align 4
@CPUFREQ_RELATION_H = common dso_local global i32 0, align 4
@CPUFREQ_RELATION_L = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cpufreq_policy*)* @cs_dbs_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cs_dbs_update(%struct.cpufreq_policy* %0) #0 {
  %2 = alloca %struct.cpufreq_policy*, align 8
  %3 = alloca %struct.policy_dbs_info*, align 8
  %4 = alloca %struct.cs_policy_dbs_info*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.dbs_data*, align 8
  %7 = alloca %struct.cs_dbs_tuners*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.cpufreq_policy* %0, %struct.cpufreq_policy** %2, align 8
  %11 = load %struct.cpufreq_policy*, %struct.cpufreq_policy** %2, align 8
  %12 = getelementptr inbounds %struct.cpufreq_policy, %struct.cpufreq_policy* %11, i32 0, i32 3
  %13 = load %struct.policy_dbs_info*, %struct.policy_dbs_info** %12, align 8
  store %struct.policy_dbs_info* %13, %struct.policy_dbs_info** %3, align 8
  %14 = load %struct.policy_dbs_info*, %struct.policy_dbs_info** %3, align 8
  %15 = call %struct.cs_policy_dbs_info* @to_dbs_info(%struct.policy_dbs_info* %14)
  store %struct.cs_policy_dbs_info* %15, %struct.cs_policy_dbs_info** %4, align 8
  %16 = load %struct.cs_policy_dbs_info*, %struct.cs_policy_dbs_info** %4, align 8
  %17 = getelementptr inbounds %struct.cs_policy_dbs_info, %struct.cs_policy_dbs_info* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  store i32 %18, i32* %5, align 4
  %19 = load %struct.policy_dbs_info*, %struct.policy_dbs_info** %3, align 8
  %20 = getelementptr inbounds %struct.policy_dbs_info, %struct.policy_dbs_info* %19, i32 0, i32 1
  %21 = load %struct.dbs_data*, %struct.dbs_data** %20, align 8
  store %struct.dbs_data* %21, %struct.dbs_data** %6, align 8
  %22 = load %struct.dbs_data*, %struct.dbs_data** %6, align 8
  %23 = getelementptr inbounds %struct.dbs_data, %struct.dbs_data* %22, i32 0, i32 3
  %24 = load %struct.cs_dbs_tuners*, %struct.cs_dbs_tuners** %23, align 8
  store %struct.cs_dbs_tuners* %24, %struct.cs_dbs_tuners** %7, align 8
  %25 = load %struct.cpufreq_policy*, %struct.cpufreq_policy** %2, align 8
  %26 = call i32 @dbs_update(%struct.cpufreq_policy* %25)
  store i32 %26, i32* %8, align 4
  %27 = load %struct.cs_dbs_tuners*, %struct.cs_dbs_tuners** %7, align 8
  %28 = getelementptr inbounds %struct.cs_dbs_tuners, %struct.cs_dbs_tuners* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp eq i64 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %1
  br label %167

32:                                               ; preds = %1
  %33 = load i32, i32* %5, align 4
  %34 = load %struct.cpufreq_policy*, %struct.cpufreq_policy** %2, align 8
  %35 = getelementptr inbounds %struct.cpufreq_policy, %struct.cpufreq_policy* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = icmp ugt i32 %33, %36
  br i1 %37, label %44, label %38

38:                                               ; preds = %32
  %39 = load i32, i32* %5, align 4
  %40 = load %struct.cpufreq_policy*, %struct.cpufreq_policy** %2, align 8
  %41 = getelementptr inbounds %struct.cpufreq_policy, %struct.cpufreq_policy* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = icmp ult i32 %39, %42
  br i1 %43, label %44, label %51

44:                                               ; preds = %38, %32
  %45 = load %struct.cpufreq_policy*, %struct.cpufreq_policy** %2, align 8
  %46 = getelementptr inbounds %struct.cpufreq_policy, %struct.cpufreq_policy* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 8
  store i32 %47, i32* %5, align 4
  %48 = load i32, i32* %5, align 4
  %49 = load %struct.cs_policy_dbs_info*, %struct.cs_policy_dbs_info** %4, align 8
  %50 = getelementptr inbounds %struct.cs_policy_dbs_info, %struct.cs_policy_dbs_info* %49, i32 0, i32 0
  store i32 %48, i32* %50, align 8
  br label %51

51:                                               ; preds = %44, %38
  %52 = load %struct.cs_dbs_tuners*, %struct.cs_dbs_tuners** %7, align 8
  %53 = load %struct.cpufreq_policy*, %struct.cpufreq_policy** %2, align 8
  %54 = call i32 @get_freq_step(%struct.cs_dbs_tuners* %52, %struct.cpufreq_policy* %53)
  store i32 %54, i32* %9, align 4
  %55 = load %struct.policy_dbs_info*, %struct.policy_dbs_info** %3, align 8
  %56 = getelementptr inbounds %struct.policy_dbs_info, %struct.policy_dbs_info* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = load i32, i32* @UINT_MAX, align 4
  %59 = icmp ult i32 %57, %58
  br i1 %59, label %60, label %85

60:                                               ; preds = %51
  %61 = load %struct.policy_dbs_info*, %struct.policy_dbs_info** %3, align 8
  %62 = getelementptr inbounds %struct.policy_dbs_info, %struct.policy_dbs_info* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = load i32, i32* %9, align 4
  %65 = mul i32 %63, %64
  store i32 %65, i32* %10, align 4
  %66 = load i32, i32* %5, align 4
  %67 = load %struct.cpufreq_policy*, %struct.cpufreq_policy** %2, align 8
  %68 = getelementptr inbounds %struct.cpufreq_policy, %struct.cpufreq_policy* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = load i32, i32* %10, align 4
  %71 = add i32 %69, %70
  %72 = icmp ugt i32 %66, %71
  br i1 %72, label %73, label %77

73:                                               ; preds = %60
  %74 = load i32, i32* %10, align 4
  %75 = load i32, i32* %5, align 4
  %76 = sub i32 %75, %74
  store i32 %76, i32* %5, align 4
  br label %81

77:                                               ; preds = %60
  %78 = load %struct.cpufreq_policy*, %struct.cpufreq_policy** %2, align 8
  %79 = getelementptr inbounds %struct.cpufreq_policy, %struct.cpufreq_policy* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  store i32 %80, i32* %5, align 4
  br label %81

81:                                               ; preds = %77, %73
  %82 = load i32, i32* @UINT_MAX, align 4
  %83 = load %struct.policy_dbs_info*, %struct.policy_dbs_info** %3, align 8
  %84 = getelementptr inbounds %struct.policy_dbs_info, %struct.policy_dbs_info* %83, i32 0, i32 0
  store i32 %82, i32* %84, align 8
  br label %85

85:                                               ; preds = %81, %51
  %86 = load i32, i32* %8, align 4
  %87 = load %struct.dbs_data*, %struct.dbs_data** %6, align 8
  %88 = getelementptr inbounds %struct.dbs_data, %struct.dbs_data* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = icmp ugt i32 %86, %89
  br i1 %90, label %91, label %121

91:                                               ; preds = %85
  %92 = load %struct.cs_policy_dbs_info*, %struct.cs_policy_dbs_info** %4, align 8
  %93 = getelementptr inbounds %struct.cs_policy_dbs_info, %struct.cs_policy_dbs_info* %92, i32 0, i32 1
  store i64 0, i64* %93, align 8
  %94 = load i32, i32* %5, align 4
  %95 = load %struct.cpufreq_policy*, %struct.cpufreq_policy** %2, align 8
  %96 = getelementptr inbounds %struct.cpufreq_policy, %struct.cpufreq_policy* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = icmp eq i32 %94, %97
  br i1 %98, label %99, label %100

99:                                               ; preds = %91
  br label %167

100:                                              ; preds = %91
  %101 = load i32, i32* %9, align 4
  %102 = load i32, i32* %5, align 4
  %103 = add i32 %102, %101
  store i32 %103, i32* %5, align 4
  %104 = load i32, i32* %5, align 4
  %105 = load %struct.cpufreq_policy*, %struct.cpufreq_policy** %2, align 8
  %106 = getelementptr inbounds %struct.cpufreq_policy, %struct.cpufreq_policy* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 8
  %108 = icmp ugt i32 %104, %107
  br i1 %108, label %109, label %113

109:                                              ; preds = %100
  %110 = load %struct.cpufreq_policy*, %struct.cpufreq_policy** %2, align 8
  %111 = getelementptr inbounds %struct.cpufreq_policy, %struct.cpufreq_policy* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 8
  store i32 %112, i32* %5, align 4
  br label %113

113:                                              ; preds = %109, %100
  %114 = load %struct.cpufreq_policy*, %struct.cpufreq_policy** %2, align 8
  %115 = load i32, i32* %5, align 4
  %116 = load i32, i32* @CPUFREQ_RELATION_H, align 4
  %117 = call i32 @__cpufreq_driver_target(%struct.cpufreq_policy* %114, i32 %115, i32 %116)
  %118 = load i32, i32* %5, align 4
  %119 = load %struct.cs_policy_dbs_info*, %struct.cs_policy_dbs_info** %4, align 8
  %120 = getelementptr inbounds %struct.cs_policy_dbs_info, %struct.cs_policy_dbs_info* %119, i32 0, i32 0
  store i32 %118, i32* %120, align 8
  br label %167

121:                                              ; preds = %85
  %122 = load %struct.cs_policy_dbs_info*, %struct.cs_policy_dbs_info** %4, align 8
  %123 = getelementptr inbounds %struct.cs_policy_dbs_info, %struct.cs_policy_dbs_info* %122, i32 0, i32 1
  %124 = load i64, i64* %123, align 8
  %125 = add nsw i64 %124, 1
  store i64 %125, i64* %123, align 8
  %126 = load %struct.dbs_data*, %struct.dbs_data** %6, align 8
  %127 = getelementptr inbounds %struct.dbs_data, %struct.dbs_data* %126, i32 0, i32 1
  %128 = load i64, i64* %127, align 8
  %129 = icmp slt i64 %125, %128
  br i1 %129, label %130, label %131

130:                                              ; preds = %121
  br label %167

131:                                              ; preds = %121
  %132 = load %struct.cs_policy_dbs_info*, %struct.cs_policy_dbs_info** %4, align 8
  %133 = getelementptr inbounds %struct.cs_policy_dbs_info, %struct.cs_policy_dbs_info* %132, i32 0, i32 1
  store i64 0, i64* %133, align 8
  %134 = load i32, i32* %8, align 4
  %135 = load %struct.cs_dbs_tuners*, %struct.cs_dbs_tuners** %7, align 8
  %136 = getelementptr inbounds %struct.cs_dbs_tuners, %struct.cs_dbs_tuners* %135, i32 0, i32 1
  %137 = load i32, i32* %136, align 8
  %138 = icmp ult i32 %134, %137
  br i1 %138, label %139, label %166

139:                                              ; preds = %131
  %140 = load i32, i32* %5, align 4
  %141 = load %struct.cpufreq_policy*, %struct.cpufreq_policy** %2, align 8
  %142 = getelementptr inbounds %struct.cpufreq_policy, %struct.cpufreq_policy* %141, i32 0, i32 1
  %143 = load i32, i32* %142, align 4
  %144 = icmp eq i32 %140, %143
  br i1 %144, label %145, label %146

145:                                              ; preds = %139
  br label %167

146:                                              ; preds = %139
  %147 = load i32, i32* %5, align 4
  %148 = load i32, i32* %9, align 4
  %149 = icmp ugt i32 %147, %148
  br i1 %149, label %150, label %154

150:                                              ; preds = %146
  %151 = load i32, i32* %9, align 4
  %152 = load i32, i32* %5, align 4
  %153 = sub i32 %152, %151
  store i32 %153, i32* %5, align 4
  br label %158

154:                                              ; preds = %146
  %155 = load %struct.cpufreq_policy*, %struct.cpufreq_policy** %2, align 8
  %156 = getelementptr inbounds %struct.cpufreq_policy, %struct.cpufreq_policy* %155, i32 0, i32 1
  %157 = load i32, i32* %156, align 4
  store i32 %157, i32* %5, align 4
  br label %158

158:                                              ; preds = %154, %150
  %159 = load %struct.cpufreq_policy*, %struct.cpufreq_policy** %2, align 8
  %160 = load i32, i32* %5, align 4
  %161 = load i32, i32* @CPUFREQ_RELATION_L, align 4
  %162 = call i32 @__cpufreq_driver_target(%struct.cpufreq_policy* %159, i32 %160, i32 %161)
  %163 = load i32, i32* %5, align 4
  %164 = load %struct.cs_policy_dbs_info*, %struct.cs_policy_dbs_info** %4, align 8
  %165 = getelementptr inbounds %struct.cs_policy_dbs_info, %struct.cs_policy_dbs_info* %164, i32 0, i32 0
  store i32 %163, i32* %165, align 8
  br label %166

166:                                              ; preds = %158, %131
  br label %167

167:                                              ; preds = %166, %145, %130, %113, %99, %31
  %168 = load %struct.dbs_data*, %struct.dbs_data** %6, align 8
  %169 = getelementptr inbounds %struct.dbs_data, %struct.dbs_data* %168, i32 0, i32 2
  %170 = load i32, i32* %169, align 8
  ret i32 %170
}

declare dso_local %struct.cs_policy_dbs_info* @to_dbs_info(%struct.policy_dbs_info*) #1

declare dso_local i32 @dbs_update(%struct.cpufreq_policy*) #1

declare dso_local i32 @get_freq_step(%struct.cs_dbs_tuners*, %struct.cpufreq_policy*) #1

declare dso_local i32 @__cpufreq_driver_target(%struct.cpufreq_policy*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
