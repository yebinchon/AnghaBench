; ModuleID = '/home/carl/AnghaBench/linux/drivers/cpufreq/extr_cpufreq.c_cpufreq_init_policy.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/cpufreq/extr_cpufreq.c_cpufreq_init_policy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpufreq_policy = type { i64, i64, %struct.cpufreq_governor*, i32, i32 }
%struct.cpufreq_governor = type { i32 }

@.str = private unnamed_addr constant [34 x i8] c"Restoring governor %s for cpu %d\0A\00", align 1
@ENODATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cpufreq_policy*)* @cpufreq_init_policy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cpufreq_init_policy(%struct.cpufreq_policy* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.cpufreq_policy*, align 8
  %4 = alloca %struct.cpufreq_governor*, align 8
  %5 = alloca %struct.cpufreq_governor*, align 8
  %6 = alloca %struct.cpufreq_policy, align 8
  store %struct.cpufreq_policy* %0, %struct.cpufreq_policy** %3, align 8
  store %struct.cpufreq_governor* null, %struct.cpufreq_governor** %4, align 8
  store %struct.cpufreq_governor* null, %struct.cpufreq_governor** %5, align 8
  %7 = load %struct.cpufreq_policy*, %struct.cpufreq_policy** %3, align 8
  %8 = call i32 @memcpy(%struct.cpufreq_policy* %6, %struct.cpufreq_policy* %7, i32 32)
  %9 = call %struct.cpufreq_governor* (...) @cpufreq_default_governor()
  store %struct.cpufreq_governor* %9, %struct.cpufreq_governor** %5, align 8
  %10 = call i64 (...) @has_target()
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %40

12:                                               ; preds = %1
  %13 = load %struct.cpufreq_policy*, %struct.cpufreq_policy** %3, align 8
  %14 = getelementptr inbounds %struct.cpufreq_policy, %struct.cpufreq_policy* %13, i32 0, i32 4
  %15 = load i32, i32* %14, align 4
  %16 = call %struct.cpufreq_governor* @find_governor(i32 %15)
  store %struct.cpufreq_governor* %16, %struct.cpufreq_governor** %4, align 8
  %17 = load %struct.cpufreq_governor*, %struct.cpufreq_governor** %4, align 8
  %18 = icmp ne %struct.cpufreq_governor* %17, null
  br i1 %18, label %19, label %29

19:                                               ; preds = %12
  %20 = load %struct.cpufreq_policy*, %struct.cpufreq_policy** %3, align 8
  %21 = getelementptr inbounds %struct.cpufreq_policy, %struct.cpufreq_policy* %20, i32 0, i32 2
  %22 = load %struct.cpufreq_governor*, %struct.cpufreq_governor** %21, align 8
  %23 = getelementptr inbounds %struct.cpufreq_governor, %struct.cpufreq_governor* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.cpufreq_policy*, %struct.cpufreq_policy** %3, align 8
  %26 = getelementptr inbounds %struct.cpufreq_policy, %struct.cpufreq_policy* %25, i32 0, i32 3
  %27 = load i32, i32* %26, align 8
  %28 = call i32 @pr_debug(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %24, i32 %27)
  br label %37

29:                                               ; preds = %12
  %30 = load %struct.cpufreq_governor*, %struct.cpufreq_governor** %5, align 8
  %31 = icmp ne %struct.cpufreq_governor* %30, null
  br i1 %31, label %35, label %32

32:                                               ; preds = %29
  %33 = load i32, i32* @ENODATA, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %2, align 4
  br label %65

35:                                               ; preds = %29
  %36 = load %struct.cpufreq_governor*, %struct.cpufreq_governor** %5, align 8
  store %struct.cpufreq_governor* %36, %struct.cpufreq_governor** %4, align 8
  br label %37

37:                                               ; preds = %35, %19
  %38 = load %struct.cpufreq_governor*, %struct.cpufreq_governor** %4, align 8
  %39 = getelementptr inbounds %struct.cpufreq_policy, %struct.cpufreq_policy* %6, i32 0, i32 2
  store %struct.cpufreq_governor* %38, %struct.cpufreq_governor** %39, align 8
  br label %62

40:                                               ; preds = %1
  %41 = load %struct.cpufreq_policy*, %struct.cpufreq_policy** %3, align 8
  %42 = getelementptr inbounds %struct.cpufreq_policy, %struct.cpufreq_policy* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %50

45:                                               ; preds = %40
  %46 = load %struct.cpufreq_policy*, %struct.cpufreq_policy** %3, align 8
  %47 = getelementptr inbounds %struct.cpufreq_policy, %struct.cpufreq_policy* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = getelementptr inbounds %struct.cpufreq_policy, %struct.cpufreq_policy* %6, i32 0, i32 1
  store i64 %48, i64* %49, align 8
  br label %61

50:                                               ; preds = %40
  %51 = load %struct.cpufreq_governor*, %struct.cpufreq_governor** %5, align 8
  %52 = icmp ne %struct.cpufreq_governor* %51, null
  br i1 %52, label %56, label %53

53:                                               ; preds = %50
  %54 = load i32, i32* @ENODATA, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %2, align 4
  br label %65

56:                                               ; preds = %50
  %57 = load %struct.cpufreq_governor*, %struct.cpufreq_governor** %5, align 8
  %58 = getelementptr inbounds %struct.cpufreq_governor, %struct.cpufreq_governor* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @cpufreq_parse_policy(i32 %59, %struct.cpufreq_policy* %6)
  br label %61

61:                                               ; preds = %56, %45
  br label %62

62:                                               ; preds = %61, %37
  %63 = load %struct.cpufreq_policy*, %struct.cpufreq_policy** %3, align 8
  %64 = call i32 @cpufreq_set_policy(%struct.cpufreq_policy* %63, %struct.cpufreq_policy* %6)
  store i32 %64, i32* %2, align 4
  br label %65

65:                                               ; preds = %62, %53, %32
  %66 = load i32, i32* %2, align 4
  ret i32 %66
}

declare dso_local i32 @memcpy(%struct.cpufreq_policy*, %struct.cpufreq_policy*, i32) #1

declare dso_local %struct.cpufreq_governor* @cpufreq_default_governor(...) #1

declare dso_local i64 @has_target(...) #1

declare dso_local %struct.cpufreq_governor* @find_governor(i32) #1

declare dso_local i32 @pr_debug(i8*, i32, i32) #1

declare dso_local i32 @cpufreq_parse_policy(i32, %struct.cpufreq_policy*) #1

declare dso_local i32 @cpufreq_set_policy(%struct.cpufreq_policy*, %struct.cpufreq_policy*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
