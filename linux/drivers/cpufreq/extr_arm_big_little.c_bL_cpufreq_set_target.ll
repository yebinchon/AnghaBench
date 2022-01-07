; ModuleID = '/home/carl/AnghaBench/linux/drivers/cpufreq/extr_arm_big_little.c_bL_cpufreq_set_target.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/cpufreq/extr_arm_big_little.c_bL_cpufreq_set_target.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.cpufreq_policy = type { i64, %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { i32 }

@physical_cluster = common dso_local global i32 0, align 4
@freq_table = common dso_local global %struct.TYPE_4__** null, align 8
@A15_CLUSTER = common dso_local global i64 0, align 8
@clk_big_min = common dso_local global i32 0, align 4
@A7_CLUSTER = common dso_local global i64 0, align 8
@clk_little_max = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cpufreq_policy*, i32)* @bL_cpufreq_set_target to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bL_cpufreq_set_target(%struct.cpufreq_policy* %0, i32 %1) #0 {
  %3 = alloca %struct.cpufreq_policy*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.cpufreq_policy* %0, %struct.cpufreq_policy** %3, align 8
  store i32 %1, i32* %4, align 4
  %11 = load %struct.cpufreq_policy*, %struct.cpufreq_policy** %3, align 8
  %12 = getelementptr inbounds %struct.cpufreq_policy, %struct.cpufreq_policy* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  store i64 %13, i64* %5, align 8
  %14 = load i64, i64* %5, align 8
  %15 = call i64 @cpu_to_cluster(i64 %14)
  store i64 %15, i64* %6, align 8
  %16 = load i32, i32* @physical_cluster, align 4
  %17 = load i64, i64* %5, align 8
  %18 = call i64 @per_cpu(i32 %16, i64 %17)
  store i64 %18, i64* %8, align 8
  store i64 %18, i64* %7, align 8
  %19 = load %struct.TYPE_4__**, %struct.TYPE_4__*** @freq_table, align 8
  %20 = load i64, i64* %6, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %19, i64 %20
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %21, align 8
  %23 = load i32, i32* %4, align 4
  %24 = zext i32 %23 to i64
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i64 %24
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  store i32 %27, i32* %9, align 4
  %28 = call i64 (...) @is_bL_switching_enabled()
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %52

30:                                               ; preds = %2
  %31 = load i64, i64* %8, align 8
  %32 = load i64, i64* @A15_CLUSTER, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %40

34:                                               ; preds = %30
  %35 = load i32, i32* %9, align 4
  %36 = load i32, i32* @clk_big_min, align 4
  %37 = icmp ult i32 %35, %36
  br i1 %37, label %38, label %40

38:                                               ; preds = %34
  %39 = load i64, i64* @A7_CLUSTER, align 8
  store i64 %39, i64* %7, align 8
  br label %51

40:                                               ; preds = %34, %30
  %41 = load i64, i64* %8, align 8
  %42 = load i64, i64* @A7_CLUSTER, align 8
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %44, label %50

44:                                               ; preds = %40
  %45 = load i32, i32* %9, align 4
  %46 = load i32, i32* @clk_little_max, align 4
  %47 = icmp ugt i32 %45, %46
  br i1 %47, label %48, label %50

48:                                               ; preds = %44
  %49 = load i64, i64* @A15_CLUSTER, align 8
  store i64 %49, i64* %7, align 8
  br label %50

50:                                               ; preds = %48, %44, %40
  br label %51

51:                                               ; preds = %50, %38
  br label %52

52:                                               ; preds = %51, %2
  %53 = load i64, i64* %5, align 8
  %54 = load i64, i64* %8, align 8
  %55 = load i64, i64* %7, align 8
  %56 = load i32, i32* %9, align 4
  %57 = call i32 @bL_cpufreq_set_rate(i64 %53, i64 %54, i64 %55, i32 %56)
  store i32 %57, i32* %10, align 4
  %58 = load i32, i32* %10, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %70, label %60

60:                                               ; preds = %52
  %61 = load %struct.cpufreq_policy*, %struct.cpufreq_policy** %3, align 8
  %62 = getelementptr inbounds %struct.cpufreq_policy, %struct.cpufreq_policy* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* %9, align 4
  %65 = load %struct.cpufreq_policy*, %struct.cpufreq_policy** %3, align 8
  %66 = getelementptr inbounds %struct.cpufreq_policy, %struct.cpufreq_policy* %65, i32 0, i32 1
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = call i32 @arch_set_freq_scale(i32 %63, i32 %64, i32 %68)
  br label %70

70:                                               ; preds = %60, %52
  %71 = load i32, i32* %10, align 4
  ret i32 %71
}

declare dso_local i64 @cpu_to_cluster(i64) #1

declare dso_local i64 @per_cpu(i32, i64) #1

declare dso_local i64 @is_bL_switching_enabled(...) #1

declare dso_local i32 @bL_cpufreq_set_rate(i64, i64, i64, i32) #1

declare dso_local i32 @arch_set_freq_scale(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
