; ModuleID = '/home/carl/AnghaBench/linux/drivers/base/power/extr_domain.c_genpd_alloc_dev_data.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/base/power/extr_domain.c_genpd_alloc_dev_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.generic_pm_domain_data = type { %struct.TYPE_9__, %struct.TYPE_7__, %struct.TYPE_6__ }
%struct.TYPE_9__ = type { %struct.device* }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i32, i32 }
%struct.device = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { %struct.TYPE_9__* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@PM_QOS_RESUME_LATENCY_NO_CONSTRAINT_NS = common dso_local global i32 0, align 4
@genpd_dev_pm_qos_notifier = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.generic_pm_domain_data* (%struct.device*)* @genpd_alloc_dev_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.generic_pm_domain_data* @genpd_alloc_dev_data(%struct.device* %0) #0 {
  %2 = alloca %struct.generic_pm_domain_data*, align 8
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.generic_pm_domain_data*, align 8
  %5 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %3, align 8
  %6 = load %struct.device*, %struct.device** %3, align 8
  %7 = call i32 @dev_pm_get_subsys_data(%struct.device* %6)
  store i32 %7, i32* %5, align 4
  %8 = load i32, i32* %5, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %13

10:                                               ; preds = %1
  %11 = load i32, i32* %5, align 4
  %12 = call %struct.generic_pm_domain_data* @ERR_PTR(i32 %11)
  store %struct.generic_pm_domain_data* %12, %struct.generic_pm_domain_data** %2, align 8
  br label %76

13:                                               ; preds = %1
  %14 = load i32, i32* @GFP_KERNEL, align 4
  %15 = call %struct.generic_pm_domain_data* @kzalloc(i32 24, i32 %14)
  store %struct.generic_pm_domain_data* %15, %struct.generic_pm_domain_data** %4, align 8
  %16 = load %struct.generic_pm_domain_data*, %struct.generic_pm_domain_data** %4, align 8
  %17 = icmp ne %struct.generic_pm_domain_data* %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %13
  %19 = load i32, i32* @ENOMEM, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %5, align 4
  br label %71

21:                                               ; preds = %13
  %22 = load %struct.device*, %struct.device** %3, align 8
  %23 = load %struct.generic_pm_domain_data*, %struct.generic_pm_domain_data** %4, align 8
  %24 = getelementptr inbounds %struct.generic_pm_domain_data, %struct.generic_pm_domain_data* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %24, i32 0, i32 0
  store %struct.device* %22, %struct.device** %25, align 8
  %26 = load %struct.generic_pm_domain_data*, %struct.generic_pm_domain_data** %4, align 8
  %27 = getelementptr inbounds %struct.generic_pm_domain_data, %struct.generic_pm_domain_data* %26, i32 0, i32 2
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 0
  store i32 1, i32* %28, align 4
  %29 = load i32, i32* @PM_QOS_RESUME_LATENCY_NO_CONSTRAINT_NS, align 4
  %30 = load %struct.generic_pm_domain_data*, %struct.generic_pm_domain_data** %4, align 8
  %31 = getelementptr inbounds %struct.generic_pm_domain_data, %struct.generic_pm_domain_data* %30, i32 0, i32 2
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 1
  store i32 %29, i32* %32, align 4
  %33 = load i32, i32* @genpd_dev_pm_qos_notifier, align 4
  %34 = load %struct.generic_pm_domain_data*, %struct.generic_pm_domain_data** %4, align 8
  %35 = getelementptr inbounds %struct.generic_pm_domain_data, %struct.generic_pm_domain_data* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i32 0, i32 0
  store i32 %33, i32* %36, align 8
  %37 = load %struct.device*, %struct.device** %3, align 8
  %38 = getelementptr inbounds %struct.device, %struct.device* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %38, i32 0, i32 0
  %40 = call i32 @spin_lock_irq(i32* %39)
  %41 = load %struct.device*, %struct.device** %3, align 8
  %42 = getelementptr inbounds %struct.device, %struct.device* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %42, i32 0, i32 1
  %44 = load %struct.TYPE_8__*, %struct.TYPE_8__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %44, i32 0, i32 0
  %46 = load %struct.TYPE_9__*, %struct.TYPE_9__** %45, align 8
  %47 = icmp ne %struct.TYPE_9__* %46, null
  br i1 %47, label %48, label %51

48:                                               ; preds = %21
  %49 = load i32, i32* @EINVAL, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %5, align 4
  br label %64

51:                                               ; preds = %21
  %52 = load %struct.generic_pm_domain_data*, %struct.generic_pm_domain_data** %4, align 8
  %53 = getelementptr inbounds %struct.generic_pm_domain_data, %struct.generic_pm_domain_data* %52, i32 0, i32 0
  %54 = load %struct.device*, %struct.device** %3, align 8
  %55 = getelementptr inbounds %struct.device, %struct.device* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %55, i32 0, i32 1
  %57 = load %struct.TYPE_8__*, %struct.TYPE_8__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %57, i32 0, i32 0
  store %struct.TYPE_9__* %53, %struct.TYPE_9__** %58, align 8
  %59 = load %struct.device*, %struct.device** %3, align 8
  %60 = getelementptr inbounds %struct.device, %struct.device* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %60, i32 0, i32 0
  %62 = call i32 @spin_unlock_irq(i32* %61)
  %63 = load %struct.generic_pm_domain_data*, %struct.generic_pm_domain_data** %4, align 8
  store %struct.generic_pm_domain_data* %63, %struct.generic_pm_domain_data** %2, align 8
  br label %76

64:                                               ; preds = %48
  %65 = load %struct.device*, %struct.device** %3, align 8
  %66 = getelementptr inbounds %struct.device, %struct.device* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %66, i32 0, i32 0
  %68 = call i32 @spin_unlock_irq(i32* %67)
  %69 = load %struct.generic_pm_domain_data*, %struct.generic_pm_domain_data** %4, align 8
  %70 = call i32 @kfree(%struct.generic_pm_domain_data* %69)
  br label %71

71:                                               ; preds = %64, %18
  %72 = load %struct.device*, %struct.device** %3, align 8
  %73 = call i32 @dev_pm_put_subsys_data(%struct.device* %72)
  %74 = load i32, i32* %5, align 4
  %75 = call %struct.generic_pm_domain_data* @ERR_PTR(i32 %74)
  store %struct.generic_pm_domain_data* %75, %struct.generic_pm_domain_data** %2, align 8
  br label %76

76:                                               ; preds = %71, %51, %10
  %77 = load %struct.generic_pm_domain_data*, %struct.generic_pm_domain_data** %2, align 8
  ret %struct.generic_pm_domain_data* %77
}

declare dso_local i32 @dev_pm_get_subsys_data(%struct.device*) #1

declare dso_local %struct.generic_pm_domain_data* @ERR_PTR(i32) #1

declare dso_local %struct.generic_pm_domain_data* @kzalloc(i32, i32) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @kfree(%struct.generic_pm_domain_data*) #1

declare dso_local i32 @dev_pm_put_subsys_data(%struct.device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
