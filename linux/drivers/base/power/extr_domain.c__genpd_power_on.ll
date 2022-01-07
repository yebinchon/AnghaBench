; ModuleID = '/home/carl/AnghaBench/linux/drivers/base/power/extr_domain.c__genpd_power_on.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/base/power/extr_domain.c__genpd_power_on.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.generic_pm_domain = type { i32, i32 (%struct.generic_pm_domain*)*, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@.str = private unnamed_addr constant [50 x i8] c"%s: Power-%s latency exceeded, new value %lld ns\0A\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"on\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.generic_pm_domain*, i32)* @_genpd_power_on to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_genpd_power_on(%struct.generic_pm_domain* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.generic_pm_domain*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.generic_pm_domain* %0, %struct.generic_pm_domain** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.generic_pm_domain*, %struct.generic_pm_domain** %4, align 8
  %11 = getelementptr inbounds %struct.generic_pm_domain, %struct.generic_pm_domain* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  store i32 %12, i32* %6, align 4
  %13 = load %struct.generic_pm_domain*, %struct.generic_pm_domain** %4, align 8
  %14 = getelementptr inbounds %struct.generic_pm_domain, %struct.generic_pm_domain* %13, i32 0, i32 1
  %15 = load i32 (%struct.generic_pm_domain*)*, i32 (%struct.generic_pm_domain*)** %14, align 8
  %16 = icmp ne i32 (%struct.generic_pm_domain*)* %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %72

18:                                               ; preds = %2
  %19 = load i32, i32* %5, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %27, label %21

21:                                               ; preds = %18
  %22 = load %struct.generic_pm_domain*, %struct.generic_pm_domain** %4, align 8
  %23 = getelementptr inbounds %struct.generic_pm_domain, %struct.generic_pm_domain* %22, i32 0, i32 1
  %24 = load i32 (%struct.generic_pm_domain*)*, i32 (%struct.generic_pm_domain*)** %23, align 8
  %25 = load %struct.generic_pm_domain*, %struct.generic_pm_domain** %4, align 8
  %26 = call i32 %24(%struct.generic_pm_domain* %25)
  store i32 %26, i32* %3, align 4
  br label %72

27:                                               ; preds = %18
  %28 = call i32 (...) @ktime_get()
  store i32 %28, i32* %7, align 4
  %29 = load %struct.generic_pm_domain*, %struct.generic_pm_domain** %4, align 8
  %30 = getelementptr inbounds %struct.generic_pm_domain, %struct.generic_pm_domain* %29, i32 0, i32 1
  %31 = load i32 (%struct.generic_pm_domain*)*, i32 (%struct.generic_pm_domain*)** %30, align 8
  %32 = load %struct.generic_pm_domain*, %struct.generic_pm_domain** %4, align 8
  %33 = call i32 %31(%struct.generic_pm_domain* %32)
  store i32 %33, i32* %9, align 4
  %34 = load i32, i32* %9, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %27
  %37 = load i32, i32* %9, align 4
  store i32 %37, i32* %3, align 4
  br label %72

38:                                               ; preds = %27
  %39 = call i32 (...) @ktime_get()
  %40 = load i32, i32* %7, align 4
  %41 = call i32 @ktime_sub(i32 %39, i32 %40)
  %42 = call i64 @ktime_to_ns(i32 %41)
  store i64 %42, i64* %8, align 8
  %43 = load i64, i64* %8, align 8
  %44 = load %struct.generic_pm_domain*, %struct.generic_pm_domain** %4, align 8
  %45 = getelementptr inbounds %struct.generic_pm_domain, %struct.generic_pm_domain* %44, i32 0, i32 4
  %46 = load %struct.TYPE_2__*, %struct.TYPE_2__** %45, align 8
  %47 = load i32, i32* %6, align 4
  %48 = zext i32 %47 to i64
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i64 %48
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = icmp sle i64 %43, %51
  br i1 %52, label %53, label %55

53:                                               ; preds = %38
  %54 = load i32, i32* %9, align 4
  store i32 %54, i32* %3, align 4
  br label %72

55:                                               ; preds = %38
  %56 = load i64, i64* %8, align 8
  %57 = load %struct.generic_pm_domain*, %struct.generic_pm_domain** %4, align 8
  %58 = getelementptr inbounds %struct.generic_pm_domain, %struct.generic_pm_domain* %57, i32 0, i32 4
  %59 = load %struct.TYPE_2__*, %struct.TYPE_2__** %58, align 8
  %60 = load i32, i32* %6, align 4
  %61 = zext i32 %60 to i64
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i64 %61
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 0
  store i64 %56, i64* %63, align 8
  %64 = load %struct.generic_pm_domain*, %struct.generic_pm_domain** %4, align 8
  %65 = getelementptr inbounds %struct.generic_pm_domain, %struct.generic_pm_domain* %64, i32 0, i32 2
  store i32 1, i32* %65, align 8
  %66 = load %struct.generic_pm_domain*, %struct.generic_pm_domain** %4, align 8
  %67 = getelementptr inbounds %struct.generic_pm_domain, %struct.generic_pm_domain* %66, i32 0, i32 3
  %68 = load i32, i32* %67, align 4
  %69 = load i64, i64* %8, align 8
  %70 = call i32 @pr_debug(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0), i32 %68, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i64 %69)
  %71 = load i32, i32* %9, align 4
  store i32 %71, i32* %3, align 4
  br label %72

72:                                               ; preds = %55, %53, %36, %21, %17
  %73 = load i32, i32* %3, align 4
  ret i32 %73
}

declare dso_local i32 @ktime_get(...) #1

declare dso_local i64 @ktime_to_ns(i32) #1

declare dso_local i32 @ktime_sub(i32, i32) #1

declare dso_local i32 @pr_debug(i8*, i32, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
