; ModuleID = '/home/carl/AnghaBench/linux/drivers/cpufreq/extr_tegra186-cpufreq.c_tegra186_cpufreq_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/cpufreq/extr_tegra186-cpufreq.c_tegra186_cpufreq_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpufreq_policy = type { i64, %struct.TYPE_2__, i32, i64 }
%struct.TYPE_2__ = type { i32 }
%struct.tegra186_cpufreq_data = type { i32, i64, %struct.tegra186_cpufreq_cluster* }
%struct.tegra186_cpufreq_cluster = type { i32, %struct.tegra186_cpufreq_cluster_info* }
%struct.tegra186_cpufreq_cluster_info = type { i64*, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cpufreq_policy*)* @tegra186_cpufreq_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tegra186_cpufreq_init(%struct.cpufreq_policy* %0) #0 {
  %2 = alloca %struct.cpufreq_policy*, align 8
  %3 = alloca %struct.tegra186_cpufreq_data*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.tegra186_cpufreq_cluster*, align 8
  %6 = alloca %struct.tegra186_cpufreq_cluster_info*, align 8
  %7 = alloca i32, align 4
  store %struct.cpufreq_policy* %0, %struct.cpufreq_policy** %2, align 8
  %8 = call %struct.tegra186_cpufreq_data* (...) @cpufreq_get_driver_data()
  store %struct.tegra186_cpufreq_data* %8, %struct.tegra186_cpufreq_data** %3, align 8
  store i32 0, i32* %4, align 4
  br label %9

9:                                                ; preds = %75, %1
  %10 = load i32, i32* %4, align 4
  %11 = load %struct.tegra186_cpufreq_data*, %struct.tegra186_cpufreq_data** %3, align 8
  %12 = getelementptr inbounds %struct.tegra186_cpufreq_data, %struct.tegra186_cpufreq_data* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = icmp ult i32 %10, %13
  br i1 %14, label %15, label %78

15:                                               ; preds = %9
  %16 = load %struct.tegra186_cpufreq_data*, %struct.tegra186_cpufreq_data** %3, align 8
  %17 = getelementptr inbounds %struct.tegra186_cpufreq_data, %struct.tegra186_cpufreq_data* %16, i32 0, i32 2
  %18 = load %struct.tegra186_cpufreq_cluster*, %struct.tegra186_cpufreq_cluster** %17, align 8
  %19 = load i32, i32* %4, align 4
  %20 = zext i32 %19 to i64
  %21 = getelementptr inbounds %struct.tegra186_cpufreq_cluster, %struct.tegra186_cpufreq_cluster* %18, i64 %20
  store %struct.tegra186_cpufreq_cluster* %21, %struct.tegra186_cpufreq_cluster** %5, align 8
  %22 = load %struct.tegra186_cpufreq_cluster*, %struct.tegra186_cpufreq_cluster** %5, align 8
  %23 = getelementptr inbounds %struct.tegra186_cpufreq_cluster, %struct.tegra186_cpufreq_cluster* %22, i32 0, i32 1
  %24 = load %struct.tegra186_cpufreq_cluster_info*, %struct.tegra186_cpufreq_cluster_info** %23, align 8
  store %struct.tegra186_cpufreq_cluster_info* %24, %struct.tegra186_cpufreq_cluster_info** %6, align 8
  store i32 0, i32* %7, align 4
  br label %25

25:                                               ; preds = %46, %15
  %26 = load i32, i32* %7, align 4
  %27 = load %struct.tegra186_cpufreq_cluster_info*, %struct.tegra186_cpufreq_cluster_info** %6, align 8
  %28 = getelementptr inbounds %struct.tegra186_cpufreq_cluster_info, %struct.tegra186_cpufreq_cluster_info* %27, i32 0, i32 0
  %29 = load i64*, i64** %28, align 8
  %30 = call i32 @ARRAY_SIZE(i64* %29)
  %31 = icmp slt i32 %26, %30
  br i1 %31, label %32, label %49

32:                                               ; preds = %25
  %33 = load %struct.tegra186_cpufreq_cluster_info*, %struct.tegra186_cpufreq_cluster_info** %6, align 8
  %34 = getelementptr inbounds %struct.tegra186_cpufreq_cluster_info, %struct.tegra186_cpufreq_cluster_info* %33, i32 0, i32 0
  %35 = load i64*, i64** %34, align 8
  %36 = load i32, i32* %7, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i64, i64* %35, i64 %37
  %39 = load i64, i64* %38, align 8
  %40 = load %struct.cpufreq_policy*, %struct.cpufreq_policy** %2, align 8
  %41 = getelementptr inbounds %struct.cpufreq_policy, %struct.cpufreq_policy* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = icmp eq i64 %39, %42
  br i1 %43, label %44, label %45

44:                                               ; preds = %32
  br label %49

45:                                               ; preds = %32
  br label %46

46:                                               ; preds = %45
  %47 = load i32, i32* %7, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %7, align 4
  br label %25

49:                                               ; preds = %44, %25
  %50 = load i32, i32* %7, align 4
  %51 = load %struct.tegra186_cpufreq_cluster_info*, %struct.tegra186_cpufreq_cluster_info** %6, align 8
  %52 = getelementptr inbounds %struct.tegra186_cpufreq_cluster_info, %struct.tegra186_cpufreq_cluster_info* %51, i32 0, i32 0
  %53 = load i64*, i64** %52, align 8
  %54 = call i32 @ARRAY_SIZE(i64* %53)
  %55 = icmp eq i32 %50, %54
  br i1 %55, label %56, label %57

56:                                               ; preds = %49
  br label %75

57:                                               ; preds = %49
  %58 = load %struct.tegra186_cpufreq_data*, %struct.tegra186_cpufreq_data** %3, align 8
  %59 = getelementptr inbounds %struct.tegra186_cpufreq_data, %struct.tegra186_cpufreq_data* %58, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  %61 = load %struct.tegra186_cpufreq_cluster_info*, %struct.tegra186_cpufreq_cluster_info** %6, align 8
  %62 = getelementptr inbounds %struct.tegra186_cpufreq_cluster_info, %struct.tegra186_cpufreq_cluster_info* %61, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = add nsw i64 %60, %63
  %65 = load i32, i32* %7, align 4
  %66 = call i64 @EDVD_CORE_VOLT_FREQ(i32 %65)
  %67 = add nsw i64 %64, %66
  %68 = load %struct.cpufreq_policy*, %struct.cpufreq_policy** %2, align 8
  %69 = getelementptr inbounds %struct.cpufreq_policy, %struct.cpufreq_policy* %68, i32 0, i32 3
  store i64 %67, i64* %69, align 8
  %70 = load %struct.tegra186_cpufreq_cluster*, %struct.tegra186_cpufreq_cluster** %5, align 8
  %71 = getelementptr inbounds %struct.tegra186_cpufreq_cluster, %struct.tegra186_cpufreq_cluster* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = load %struct.cpufreq_policy*, %struct.cpufreq_policy** %2, align 8
  %74 = getelementptr inbounds %struct.cpufreq_policy, %struct.cpufreq_policy* %73, i32 0, i32 2
  store i32 %72, i32* %74, align 4
  br label %78

75:                                               ; preds = %56
  %76 = load i32, i32* %4, align 4
  %77 = add i32 %76, 1
  store i32 %77, i32* %4, align 4
  br label %9

78:                                               ; preds = %57, %9
  %79 = load %struct.cpufreq_policy*, %struct.cpufreq_policy** %2, align 8
  %80 = getelementptr inbounds %struct.cpufreq_policy, %struct.cpufreq_policy* %79, i32 0, i32 1
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i32 0, i32 0
  store i32 300000, i32* %81, align 8
  ret i32 0
}

declare dso_local %struct.tegra186_cpufreq_data* @cpufreq_get_driver_data(...) #1

declare dso_local i32 @ARRAY_SIZE(i64*) #1

declare dso_local i64 @EDVD_CORE_VOLT_FREQ(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
