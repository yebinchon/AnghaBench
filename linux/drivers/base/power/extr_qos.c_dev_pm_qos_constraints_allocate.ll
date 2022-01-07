; ModuleID = '/home/carl/AnghaBench/linux/drivers/base/power/extr_qos.c_dev_pm_qos_constraints_allocate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/base/power/extr_qos.c_dev_pm_qos_constraints_allocate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, %struct.dev_pm_qos* }
%struct.dev_pm_qos = type { %struct.TYPE_3__, %struct.pm_qos_constraints, %struct.pm_qos_constraints }
%struct.TYPE_3__ = type { i32 }
%struct.pm_qos_constraints = type { i8*, i32, i8*, i8*, i32, %struct.blocking_notifier_head* }
%struct.blocking_notifier_head = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@PM_QOS_RESUME_LATENCY_DEFAULT_VALUE = common dso_local global i8* null, align 8
@PM_QOS_RESUME_LATENCY_NO_CONSTRAINT = common dso_local global i32 0, align 4
@PM_QOS_MIN = common dso_local global i8* null, align 8
@PM_QOS_LATENCY_TOLERANCE_DEFAULT_VALUE = common dso_local global i8* null, align 8
@PM_QOS_LATENCY_TOLERANCE_NO_CONSTRAINT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*)* @dev_pm_qos_constraints_allocate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dev_pm_qos_constraints_allocate(%struct.device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.dev_pm_qos*, align 8
  %5 = alloca %struct.pm_qos_constraints*, align 8
  %6 = alloca %struct.blocking_notifier_head*, align 8
  store %struct.device* %0, %struct.device** %3, align 8
  %7 = load i32, i32* @GFP_KERNEL, align 4
  %8 = call i8* @kzalloc(i32 104, i32 %7)
  %9 = bitcast i8* %8 to %struct.dev_pm_qos*
  store %struct.dev_pm_qos* %9, %struct.dev_pm_qos** %4, align 8
  %10 = load %struct.dev_pm_qos*, %struct.dev_pm_qos** %4, align 8
  %11 = icmp ne %struct.dev_pm_qos* %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %1
  %13 = load i32, i32* @ENOMEM, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %2, align 4
  br label %82

15:                                               ; preds = %1
  %16 = load i32, i32* @GFP_KERNEL, align 4
  %17 = call i8* @kzalloc(i32 12, i32 %16)
  %18 = bitcast i8* %17 to %struct.blocking_notifier_head*
  store %struct.blocking_notifier_head* %18, %struct.blocking_notifier_head** %6, align 8
  %19 = load %struct.blocking_notifier_head*, %struct.blocking_notifier_head** %6, align 8
  %20 = icmp ne %struct.blocking_notifier_head* %19, null
  br i1 %20, label %26, label %21

21:                                               ; preds = %15
  %22 = load %struct.dev_pm_qos*, %struct.dev_pm_qos** %4, align 8
  %23 = call i32 @kfree(%struct.dev_pm_qos* %22)
  %24 = load i32, i32* @ENOMEM, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %2, align 4
  br label %82

26:                                               ; preds = %15
  %27 = load %struct.dev_pm_qos*, %struct.dev_pm_qos** %4, align 8
  %28 = getelementptr inbounds %struct.dev_pm_qos, %struct.dev_pm_qos* %27, i32 0, i32 2
  store %struct.pm_qos_constraints* %28, %struct.pm_qos_constraints** %5, align 8
  %29 = load %struct.pm_qos_constraints*, %struct.pm_qos_constraints** %5, align 8
  %30 = getelementptr inbounds %struct.pm_qos_constraints, %struct.pm_qos_constraints* %29, i32 0, i32 4
  %31 = call i32 @plist_head_init(i32* %30)
  %32 = load i8*, i8** @PM_QOS_RESUME_LATENCY_DEFAULT_VALUE, align 8
  %33 = load %struct.pm_qos_constraints*, %struct.pm_qos_constraints** %5, align 8
  %34 = getelementptr inbounds %struct.pm_qos_constraints, %struct.pm_qos_constraints* %33, i32 0, i32 3
  store i8* %32, i8** %34, align 8
  %35 = load i8*, i8** @PM_QOS_RESUME_LATENCY_DEFAULT_VALUE, align 8
  %36 = load %struct.pm_qos_constraints*, %struct.pm_qos_constraints** %5, align 8
  %37 = getelementptr inbounds %struct.pm_qos_constraints, %struct.pm_qos_constraints* %36, i32 0, i32 2
  store i8* %35, i8** %37, align 8
  %38 = load i32, i32* @PM_QOS_RESUME_LATENCY_NO_CONSTRAINT, align 4
  %39 = load %struct.pm_qos_constraints*, %struct.pm_qos_constraints** %5, align 8
  %40 = getelementptr inbounds %struct.pm_qos_constraints, %struct.pm_qos_constraints* %39, i32 0, i32 1
  store i32 %38, i32* %40, align 8
  %41 = load i8*, i8** @PM_QOS_MIN, align 8
  %42 = load %struct.pm_qos_constraints*, %struct.pm_qos_constraints** %5, align 8
  %43 = getelementptr inbounds %struct.pm_qos_constraints, %struct.pm_qos_constraints* %42, i32 0, i32 0
  store i8* %41, i8** %43, align 8
  %44 = load %struct.blocking_notifier_head*, %struct.blocking_notifier_head** %6, align 8
  %45 = load %struct.pm_qos_constraints*, %struct.pm_qos_constraints** %5, align 8
  %46 = getelementptr inbounds %struct.pm_qos_constraints, %struct.pm_qos_constraints* %45, i32 0, i32 5
  store %struct.blocking_notifier_head* %44, %struct.blocking_notifier_head** %46, align 8
  %47 = load %struct.blocking_notifier_head*, %struct.blocking_notifier_head** %6, align 8
  %48 = call i32 @BLOCKING_INIT_NOTIFIER_HEAD(%struct.blocking_notifier_head* %47)
  %49 = load %struct.dev_pm_qos*, %struct.dev_pm_qos** %4, align 8
  %50 = getelementptr inbounds %struct.dev_pm_qos, %struct.dev_pm_qos* %49, i32 0, i32 1
  store %struct.pm_qos_constraints* %50, %struct.pm_qos_constraints** %5, align 8
  %51 = load %struct.pm_qos_constraints*, %struct.pm_qos_constraints** %5, align 8
  %52 = getelementptr inbounds %struct.pm_qos_constraints, %struct.pm_qos_constraints* %51, i32 0, i32 4
  %53 = call i32 @plist_head_init(i32* %52)
  %54 = load i8*, i8** @PM_QOS_LATENCY_TOLERANCE_DEFAULT_VALUE, align 8
  %55 = load %struct.pm_qos_constraints*, %struct.pm_qos_constraints** %5, align 8
  %56 = getelementptr inbounds %struct.pm_qos_constraints, %struct.pm_qos_constraints* %55, i32 0, i32 3
  store i8* %54, i8** %56, align 8
  %57 = load i8*, i8** @PM_QOS_LATENCY_TOLERANCE_DEFAULT_VALUE, align 8
  %58 = load %struct.pm_qos_constraints*, %struct.pm_qos_constraints** %5, align 8
  %59 = getelementptr inbounds %struct.pm_qos_constraints, %struct.pm_qos_constraints* %58, i32 0, i32 2
  store i8* %57, i8** %59, align 8
  %60 = load i32, i32* @PM_QOS_LATENCY_TOLERANCE_NO_CONSTRAINT, align 4
  %61 = load %struct.pm_qos_constraints*, %struct.pm_qos_constraints** %5, align 8
  %62 = getelementptr inbounds %struct.pm_qos_constraints, %struct.pm_qos_constraints* %61, i32 0, i32 1
  store i32 %60, i32* %62, align 8
  %63 = load i8*, i8** @PM_QOS_MIN, align 8
  %64 = load %struct.pm_qos_constraints*, %struct.pm_qos_constraints** %5, align 8
  %65 = getelementptr inbounds %struct.pm_qos_constraints, %struct.pm_qos_constraints* %64, i32 0, i32 0
  store i8* %63, i8** %65, align 8
  %66 = load %struct.dev_pm_qos*, %struct.dev_pm_qos** %4, align 8
  %67 = getelementptr inbounds %struct.dev_pm_qos, %struct.dev_pm_qos* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %67, i32 0, i32 0
  %69 = call i32 @INIT_LIST_HEAD(i32* %68)
  %70 = load %struct.device*, %struct.device** %3, align 8
  %71 = getelementptr inbounds %struct.device, %struct.device* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 0
  %73 = call i32 @spin_lock_irq(i32* %72)
  %74 = load %struct.dev_pm_qos*, %struct.dev_pm_qos** %4, align 8
  %75 = load %struct.device*, %struct.device** %3, align 8
  %76 = getelementptr inbounds %struct.device, %struct.device* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 1
  store %struct.dev_pm_qos* %74, %struct.dev_pm_qos** %77, align 8
  %78 = load %struct.device*, %struct.device** %3, align 8
  %79 = getelementptr inbounds %struct.device, %struct.device* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i32 0, i32 0
  %81 = call i32 @spin_unlock_irq(i32* %80)
  store i32 0, i32* %2, align 4
  br label %82

82:                                               ; preds = %26, %21, %12
  %83 = load i32, i32* %2, align 4
  ret i32 %83
}

declare dso_local i8* @kzalloc(i32, i32) #1

declare dso_local i32 @kfree(%struct.dev_pm_qos*) #1

declare dso_local i32 @plist_head_init(i32*) #1

declare dso_local i32 @BLOCKING_INIT_NOTIFIER_HEAD(%struct.blocking_notifier_head*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
