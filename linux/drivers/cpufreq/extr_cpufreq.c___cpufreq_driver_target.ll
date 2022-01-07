; ModuleID = '/home/carl/AnghaBench/linux/drivers/cpufreq/extr_cpufreq.c___cpufreq_driver_target.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/cpufreq/extr_cpufreq.c___cpufreq_driver_target.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 (%struct.cpufreq_policy*, i32, i32)*, i32 }
%struct.cpufreq_policy = type { i32, i32, i32, i32, i32 }

@ENODEV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [58 x i8] c"target for CPU %u: %u kHz, relation %u, requested %u kHz\0A\00", align 1
@cpufreq_driver = common dso_local global %struct.TYPE_2__* null, align 8
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__cpufreq_driver_target(%struct.cpufreq_policy* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.cpufreq_policy*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.cpufreq_policy* %0, %struct.cpufreq_policy** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %10 = load i32, i32* %6, align 4
  store i32 %10, i32* %8, align 4
  %11 = call i64 (...) @cpufreq_disabled()
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %3
  %14 = load i32, i32* @ENODEV, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %4, align 4
  br label %72

16:                                               ; preds = %3
  %17 = load i32, i32* %6, align 4
  %18 = load %struct.cpufreq_policy*, %struct.cpufreq_policy** %5, align 8
  %19 = getelementptr inbounds %struct.cpufreq_policy, %struct.cpufreq_policy* %18, i32 0, i32 4
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.cpufreq_policy*, %struct.cpufreq_policy** %5, align 8
  %22 = getelementptr inbounds %struct.cpufreq_policy, %struct.cpufreq_policy* %21, i32 0, i32 3
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @clamp_val(i32 %17, i32 %20, i32 %23)
  store i32 %24, i32* %6, align 4
  %25 = load %struct.cpufreq_policy*, %struct.cpufreq_policy** %5, align 8
  %26 = getelementptr inbounds %struct.cpufreq_policy, %struct.cpufreq_policy* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* %6, align 4
  %29 = load i32, i32* %7, align 4
  %30 = load i32, i32* %8, align 4
  %31 = call i32 @pr_debug(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str, i64 0, i64 0), i32 %27, i32 %28, i32 %29, i32 %30)
  %32 = load i32, i32* %6, align 4
  %33 = load %struct.cpufreq_policy*, %struct.cpufreq_policy** %5, align 8
  %34 = getelementptr inbounds %struct.cpufreq_policy, %struct.cpufreq_policy* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = icmp eq i32 %32, %35
  br i1 %36, label %37, label %38

37:                                               ; preds = %16
  store i32 0, i32* %4, align 4
  br label %72

38:                                               ; preds = %16
  %39 = load %struct.cpufreq_policy*, %struct.cpufreq_policy** %5, align 8
  %40 = getelementptr inbounds %struct.cpufreq_policy, %struct.cpufreq_policy* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.cpufreq_policy*, %struct.cpufreq_policy** %5, align 8
  %43 = getelementptr inbounds %struct.cpufreq_policy, %struct.cpufreq_policy* %42, i32 0, i32 1
  store i32 %41, i32* %43, align 4
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cpufreq_driver, align 8
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  %46 = load i32 (%struct.cpufreq_policy*, i32, i32)*, i32 (%struct.cpufreq_policy*, i32, i32)** %45, align 8
  %47 = icmp ne i32 (%struct.cpufreq_policy*, i32, i32)* %46, null
  br i1 %47, label %48, label %56

48:                                               ; preds = %38
  %49 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cpufreq_driver, align 8
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 0
  %51 = load i32 (%struct.cpufreq_policy*, i32, i32)*, i32 (%struct.cpufreq_policy*, i32, i32)** %50, align 8
  %52 = load %struct.cpufreq_policy*, %struct.cpufreq_policy** %5, align 8
  %53 = load i32, i32* %6, align 4
  %54 = load i32, i32* %7, align 4
  %55 = call i32 %51(%struct.cpufreq_policy* %52, i32 %53, i32 %54)
  store i32 %55, i32* %4, align 4
  br label %72

56:                                               ; preds = %38
  %57 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cpufreq_driver, align 8
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 8
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %64, label %61

61:                                               ; preds = %56
  %62 = load i32, i32* @EINVAL, align 4
  %63 = sub nsw i32 0, %62
  store i32 %63, i32* %4, align 4
  br label %72

64:                                               ; preds = %56
  %65 = load %struct.cpufreq_policy*, %struct.cpufreq_policy** %5, align 8
  %66 = load i32, i32* %6, align 4
  %67 = load i32, i32* %7, align 4
  %68 = call i32 @cpufreq_frequency_table_target(%struct.cpufreq_policy* %65, i32 %66, i32 %67)
  store i32 %68, i32* %9, align 4
  %69 = load %struct.cpufreq_policy*, %struct.cpufreq_policy** %5, align 8
  %70 = load i32, i32* %9, align 4
  %71 = call i32 @__target_index(%struct.cpufreq_policy* %69, i32 %70)
  store i32 %71, i32* %4, align 4
  br label %72

72:                                               ; preds = %64, %61, %48, %37, %13
  %73 = load i32, i32* %4, align 4
  ret i32 %73
}

declare dso_local i64 @cpufreq_disabled(...) #1

declare dso_local i32 @clamp_val(i32, i32, i32) #1

declare dso_local i32 @pr_debug(i8*, i32, i32, i32, i32) #1

declare dso_local i32 @cpufreq_frequency_table_target(%struct.cpufreq_policy*, i32, i32) #1

declare dso_local i32 @__target_index(%struct.cpufreq_policy*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
