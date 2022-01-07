; ModuleID = '/home/carl/AnghaBench/linux/drivers/base/power/extr_domain.c_dev_pm_genpd_set_performance_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/base/power/extr_domain.c_dev_pm_genpd_set_performance_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.generic_pm_domain = type { i32 }
%struct.generic_pm_domain_data = type { i32 }

@ENODEV = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dev_pm_genpd_set_performance_state(%struct.device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.generic_pm_domain*, align 8
  %7 = alloca %struct.generic_pm_domain_data*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.device*, %struct.device** %4, align 8
  %11 = call %struct.generic_pm_domain* @dev_to_genpd_safe(%struct.device* %10)
  store %struct.generic_pm_domain* %11, %struct.generic_pm_domain** %6, align 8
  %12 = load %struct.generic_pm_domain*, %struct.generic_pm_domain** %6, align 8
  %13 = icmp ne %struct.generic_pm_domain* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %2
  %15 = load i32, i32* @ENODEV, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %3, align 4
  br label %84

17:                                               ; preds = %2
  %18 = load %struct.generic_pm_domain*, %struct.generic_pm_domain** %6, align 8
  %19 = getelementptr inbounds %struct.generic_pm_domain, %struct.generic_pm_domain* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = icmp ne i32 %20, 0
  %22 = xor i1 %21, true
  %23 = zext i1 %22 to i32
  %24 = call i64 @unlikely(i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %17
  %27 = load i32, i32* @EINVAL, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %3, align 4
  br label %84

29:                                               ; preds = %17
  %30 = load %struct.device*, %struct.device** %4, align 8
  %31 = getelementptr inbounds %struct.device, %struct.device* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** %32, align 8
  %34 = icmp ne %struct.TYPE_3__* %33, null
  br i1 %34, label %35, label %44

35:                                               ; preds = %29
  %36 = load %struct.device*, %struct.device** %4, align 8
  %37 = getelementptr inbounds %struct.device, %struct.device* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = icmp ne i32 %41, 0
  %43 = xor i1 %42, true
  br label %44

44:                                               ; preds = %35, %29
  %45 = phi i1 [ true, %29 ], [ %43, %35 ]
  %46 = zext i1 %45 to i32
  %47 = call i64 @WARN_ON(i32 %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %44
  %50 = load i32, i32* @EINVAL, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %3, align 4
  br label %84

52:                                               ; preds = %44
  %53 = load %struct.generic_pm_domain*, %struct.generic_pm_domain** %6, align 8
  %54 = call i32 @genpd_lock(%struct.generic_pm_domain* %53)
  %55 = load %struct.device*, %struct.device** %4, align 8
  %56 = getelementptr inbounds %struct.device, %struct.device* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 0
  %58 = load %struct.TYPE_3__*, %struct.TYPE_3__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = call %struct.generic_pm_domain_data* @to_gpd_data(i32 %60)
  store %struct.generic_pm_domain_data* %61, %struct.generic_pm_domain_data** %7, align 8
  %62 = load %struct.generic_pm_domain_data*, %struct.generic_pm_domain_data** %7, align 8
  %63 = getelementptr inbounds %struct.generic_pm_domain_data, %struct.generic_pm_domain_data* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  store i32 %64, i32* %8, align 4
  %65 = load i32, i32* %5, align 4
  %66 = load %struct.generic_pm_domain_data*, %struct.generic_pm_domain_data** %7, align 8
  %67 = getelementptr inbounds %struct.generic_pm_domain_data, %struct.generic_pm_domain_data* %66, i32 0, i32 0
  store i32 %65, i32* %67, align 4
  %68 = load %struct.generic_pm_domain*, %struct.generic_pm_domain** %6, align 8
  %69 = load i32, i32* %5, align 4
  %70 = call i32 @_genpd_reeval_performance_state(%struct.generic_pm_domain* %68, i32 %69)
  store i32 %70, i32* %5, align 4
  %71 = load %struct.generic_pm_domain*, %struct.generic_pm_domain** %6, align 8
  %72 = load i32, i32* %5, align 4
  %73 = call i32 @_genpd_set_performance_state(%struct.generic_pm_domain* %71, i32 %72, i32 0)
  store i32 %73, i32* %9, align 4
  %74 = load i32, i32* %9, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %80

76:                                               ; preds = %52
  %77 = load i32, i32* %8, align 4
  %78 = load %struct.generic_pm_domain_data*, %struct.generic_pm_domain_data** %7, align 8
  %79 = getelementptr inbounds %struct.generic_pm_domain_data, %struct.generic_pm_domain_data* %78, i32 0, i32 0
  store i32 %77, i32* %79, align 4
  br label %80

80:                                               ; preds = %76, %52
  %81 = load %struct.generic_pm_domain*, %struct.generic_pm_domain** %6, align 8
  %82 = call i32 @genpd_unlock(%struct.generic_pm_domain* %81)
  %83 = load i32, i32* %9, align 4
  store i32 %83, i32* %3, align 4
  br label %84

84:                                               ; preds = %80, %49, %26, %14
  %85 = load i32, i32* %3, align 4
  ret i32 %85
}

declare dso_local %struct.generic_pm_domain* @dev_to_genpd_safe(%struct.device*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @genpd_lock(%struct.generic_pm_domain*) #1

declare dso_local %struct.generic_pm_domain_data* @to_gpd_data(i32) #1

declare dso_local i32 @_genpd_reeval_performance_state(%struct.generic_pm_domain*, i32) #1

declare dso_local i32 @_genpd_set_performance_state(%struct.generic_pm_domain*, i32, i32) #1

declare dso_local i32 @genpd_unlock(%struct.generic_pm_domain*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
