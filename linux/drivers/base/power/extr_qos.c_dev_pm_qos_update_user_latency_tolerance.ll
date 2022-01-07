; ModuleID = '/home/carl/AnghaBench/linux/drivers/base/power/extr_qos.c_dev_pm_qos_update_user_latency_tolerance.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/base/power/extr_qos.c_dev_pm_qos_update_user_latency_tolerance.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.dev_pm_qos_request* }
%struct.dev_pm_qos_request = type { i32 }

@dev_pm_qos_mtx = common dso_local global i32 0, align 4
@PM_QOS_LATENCY_TOLERANCE_NO_CONSTRAINT = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@DEV_PM_QOS_LATENCY_TOLERANCE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dev_pm_qos_update_user_latency_tolerance(%struct.device* %0, i64 %1) #0 {
  %3 = alloca %struct.device*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.dev_pm_qos_request*, align 8
  store %struct.device* %0, %struct.device** %3, align 8
  store i64 %1, i64* %4, align 8
  %7 = call i32 @mutex_lock(i32* @dev_pm_qos_mtx)
  %8 = load %struct.device*, %struct.device** %3, align 8
  %9 = getelementptr inbounds %struct.device, %struct.device* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %12 = call i64 @IS_ERR_OR_NULL(%struct.TYPE_4__* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %22, label %14

14:                                               ; preds = %2
  %15 = load %struct.device*, %struct.device** %3, align 8
  %16 = getelementptr inbounds %struct.device, %struct.device* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load %struct.dev_pm_qos_request*, %struct.dev_pm_qos_request** %19, align 8
  %21 = icmp ne %struct.dev_pm_qos_request* %20, null
  br i1 %21, label %60, label %22

22:                                               ; preds = %14, %2
  %23 = load i64, i64* %4, align 8
  %24 = icmp slt i64 %23, 0
  br i1 %24, label %25, label %34

25:                                               ; preds = %22
  %26 = load i64, i64* %4, align 8
  %27 = load i64, i64* @PM_QOS_LATENCY_TOLERANCE_NO_CONSTRAINT, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %30

29:                                               ; preds = %25
  store i32 0, i32* %5, align 4
  br label %33

30:                                               ; preds = %25
  %31 = load i32, i32* @EINVAL, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %5, align 4
  br label %33

33:                                               ; preds = %30, %29
  br label %78

34:                                               ; preds = %22
  %35 = load i32, i32* @GFP_KERNEL, align 4
  %36 = call %struct.dev_pm_qos_request* @kzalloc(i32 4, i32 %35)
  store %struct.dev_pm_qos_request* %36, %struct.dev_pm_qos_request** %6, align 8
  %37 = load %struct.dev_pm_qos_request*, %struct.dev_pm_qos_request** %6, align 8
  %38 = icmp ne %struct.dev_pm_qos_request* %37, null
  br i1 %38, label %42, label %39

39:                                               ; preds = %34
  %40 = load i32, i32* @ENOMEM, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %5, align 4
  br label %78

42:                                               ; preds = %34
  %43 = load %struct.device*, %struct.device** %3, align 8
  %44 = load %struct.dev_pm_qos_request*, %struct.dev_pm_qos_request** %6, align 8
  %45 = load i32, i32* @DEV_PM_QOS_LATENCY_TOLERANCE, align 4
  %46 = load i64, i64* %4, align 8
  %47 = call i32 @__dev_pm_qos_add_request(%struct.device* %43, %struct.dev_pm_qos_request* %44, i32 %45, i64 %46)
  store i32 %47, i32* %5, align 4
  %48 = load i32, i32* %5, align 4
  %49 = icmp slt i32 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %42
  %51 = load %struct.dev_pm_qos_request*, %struct.dev_pm_qos_request** %6, align 8
  %52 = call i32 @kfree(%struct.dev_pm_qos_request* %51)
  br label %78

53:                                               ; preds = %42
  %54 = load %struct.dev_pm_qos_request*, %struct.dev_pm_qos_request** %6, align 8
  %55 = load %struct.device*, %struct.device** %3, align 8
  %56 = getelementptr inbounds %struct.device, %struct.device* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 0
  %58 = load %struct.TYPE_4__*, %struct.TYPE_4__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 0
  store %struct.dev_pm_qos_request* %54, %struct.dev_pm_qos_request** %59, align 8
  br label %77

60:                                               ; preds = %14
  %61 = load i64, i64* %4, align 8
  %62 = icmp slt i64 %61, 0
  br i1 %62, label %63, label %67

63:                                               ; preds = %60
  %64 = load %struct.device*, %struct.device** %3, align 8
  %65 = load i32, i32* @DEV_PM_QOS_LATENCY_TOLERANCE, align 4
  %66 = call i32 @__dev_pm_qos_drop_user_request(%struct.device* %64, i32 %65)
  store i32 0, i32* %5, align 4
  br label %76

67:                                               ; preds = %60
  %68 = load %struct.device*, %struct.device** %3, align 8
  %69 = getelementptr inbounds %struct.device, %struct.device* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %69, i32 0, i32 0
  %71 = load %struct.TYPE_4__*, %struct.TYPE_4__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 0
  %73 = load %struct.dev_pm_qos_request*, %struct.dev_pm_qos_request** %72, align 8
  %74 = load i64, i64* %4, align 8
  %75 = call i32 @__dev_pm_qos_update_request(%struct.dev_pm_qos_request* %73, i64 %74)
  store i32 %75, i32* %5, align 4
  br label %76

76:                                               ; preds = %67, %63
  br label %77

77:                                               ; preds = %76, %53
  br label %78

78:                                               ; preds = %77, %50, %39, %33
  %79 = call i32 @mutex_unlock(i32* @dev_pm_qos_mtx)
  %80 = load i32, i32* %5, align 4
  ret i32 %80
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @IS_ERR_OR_NULL(%struct.TYPE_4__*) #1

declare dso_local %struct.dev_pm_qos_request* @kzalloc(i32, i32) #1

declare dso_local i32 @__dev_pm_qos_add_request(%struct.device*, %struct.dev_pm_qos_request*, i32, i64) #1

declare dso_local i32 @kfree(%struct.dev_pm_qos_request*) #1

declare dso_local i32 @__dev_pm_qos_drop_user_request(%struct.device*, i32) #1

declare dso_local i32 @__dev_pm_qos_update_request(%struct.dev_pm_qos_request*, i64) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
