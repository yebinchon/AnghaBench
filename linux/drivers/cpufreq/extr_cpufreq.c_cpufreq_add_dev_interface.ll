; ModuleID = '/home/carl/AnghaBench/linux/drivers/cpufreq/extr_cpufreq.c_cpufreq_add_dev_interface.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/cpufreq/extr_cpufreq.c_cpufreq_add_dev_interface.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64, i64, %struct.freq_attr** }
%struct.freq_attr = type { i32 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_8__ = type { i32 }
%struct.cpufreq_policy = type { i32 }

@cpufreq_driver = common dso_local global %struct.TYPE_7__* null, align 8
@cpuinfo_cur_freq = common dso_local global %struct.TYPE_6__ zeroinitializer, align 4
@scaling_cur_freq = common dso_local global %struct.TYPE_5__ zeroinitializer, align 4
@bios_limit = common dso_local global %struct.TYPE_8__ zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cpufreq_policy*)* @cpufreq_add_dev_interface to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cpufreq_add_dev_interface(%struct.cpufreq_policy* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.cpufreq_policy*, align 8
  %4 = alloca %struct.freq_attr**, align 8
  %5 = alloca i32, align 4
  store %struct.cpufreq_policy* %0, %struct.cpufreq_policy** %3, align 8
  store i32 0, i32* %5, align 4
  %6 = load %struct.TYPE_7__*, %struct.TYPE_7__** @cpufreq_driver, align 8
  %7 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %6, i32 0, i32 2
  %8 = load %struct.freq_attr**, %struct.freq_attr*** %7, align 8
  store %struct.freq_attr** %8, %struct.freq_attr*** %4, align 8
  br label %9

9:                                                ; preds = %29, %1
  %10 = load %struct.freq_attr**, %struct.freq_attr*** %4, align 8
  %11 = icmp ne %struct.freq_attr** %10, null
  br i1 %11, label %12, label %16

12:                                               ; preds = %9
  %13 = load %struct.freq_attr**, %struct.freq_attr*** %4, align 8
  %14 = load %struct.freq_attr*, %struct.freq_attr** %13, align 8
  %15 = icmp ne %struct.freq_attr* %14, null
  br label %16

16:                                               ; preds = %12, %9
  %17 = phi i1 [ false, %9 ], [ %15, %12 ]
  br i1 %17, label %18, label %32

18:                                               ; preds = %16
  %19 = load %struct.cpufreq_policy*, %struct.cpufreq_policy** %3, align 8
  %20 = getelementptr inbounds %struct.cpufreq_policy, %struct.cpufreq_policy* %19, i32 0, i32 0
  %21 = load %struct.freq_attr**, %struct.freq_attr*** %4, align 8
  %22 = load %struct.freq_attr*, %struct.freq_attr** %21, align 8
  %23 = getelementptr inbounds %struct.freq_attr, %struct.freq_attr* %22, i32 0, i32 0
  %24 = call i32 @sysfs_create_file(i32* %20, i32* %23)
  store i32 %24, i32* %5, align 4
  %25 = load i32, i32* %5, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %18
  %28 = load i32, i32* %5, align 4
  store i32 %28, i32* %2, align 4
  br label %69

29:                                               ; preds = %18
  %30 = load %struct.freq_attr**, %struct.freq_attr*** %4, align 8
  %31 = getelementptr inbounds %struct.freq_attr*, %struct.freq_attr** %30, i32 1
  store %struct.freq_attr** %31, %struct.freq_attr*** %4, align 8
  br label %9

32:                                               ; preds = %16
  %33 = load %struct.TYPE_7__*, %struct.TYPE_7__** @cpufreq_driver, align 8
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %46

37:                                               ; preds = %32
  %38 = load %struct.cpufreq_policy*, %struct.cpufreq_policy** %3, align 8
  %39 = getelementptr inbounds %struct.cpufreq_policy, %struct.cpufreq_policy* %38, i32 0, i32 0
  %40 = call i32 @sysfs_create_file(i32* %39, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @cpuinfo_cur_freq, i32 0, i32 0))
  store i32 %40, i32* %5, align 4
  %41 = load i32, i32* %5, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %37
  %44 = load i32, i32* %5, align 4
  store i32 %44, i32* %2, align 4
  br label %69

45:                                               ; preds = %37
  br label %46

46:                                               ; preds = %45, %32
  %47 = load %struct.cpufreq_policy*, %struct.cpufreq_policy** %3, align 8
  %48 = getelementptr inbounds %struct.cpufreq_policy, %struct.cpufreq_policy* %47, i32 0, i32 0
  %49 = call i32 @sysfs_create_file(i32* %48, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @scaling_cur_freq, i32 0, i32 0))
  store i32 %49, i32* %5, align 4
  %50 = load i32, i32* %5, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %46
  %53 = load i32, i32* %5, align 4
  store i32 %53, i32* %2, align 4
  br label %69

54:                                               ; preds = %46
  %55 = load %struct.TYPE_7__*, %struct.TYPE_7__** @cpufreq_driver, align 8
  %56 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %68

59:                                               ; preds = %54
  %60 = load %struct.cpufreq_policy*, %struct.cpufreq_policy** %3, align 8
  %61 = getelementptr inbounds %struct.cpufreq_policy, %struct.cpufreq_policy* %60, i32 0, i32 0
  %62 = call i32 @sysfs_create_file(i32* %61, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @bios_limit, i32 0, i32 0))
  store i32 %62, i32* %5, align 4
  %63 = load i32, i32* %5, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %67

65:                                               ; preds = %59
  %66 = load i32, i32* %5, align 4
  store i32 %66, i32* %2, align 4
  br label %69

67:                                               ; preds = %59
  br label %68

68:                                               ; preds = %67, %54
  store i32 0, i32* %2, align 4
  br label %69

69:                                               ; preds = %68, %65, %52, %43, %27
  %70 = load i32, i32* %2, align 4
  ret i32 %70
}

declare dso_local i32 @sysfs_create_file(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
