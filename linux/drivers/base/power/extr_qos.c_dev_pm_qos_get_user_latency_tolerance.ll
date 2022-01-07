; ModuleID = '/home/carl/AnghaBench/linux/drivers/base/power/extr_qos.c_dev_pm_qos_get_user_latency_tolerance.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/base/power/extr_qos.c_dev_pm_qos_get_user_latency_tolerance.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }

@dev_pm_qos_mtx = common dso_local global i32 0, align 4
@PM_QOS_LATENCY_TOLERANCE_NO_CONSTRAINT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dev_pm_qos_get_user_latency_tolerance(%struct.device* %0) #0 {
  %2 = alloca %struct.device*, align 8
  %3 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %2, align 8
  %4 = call i32 @mutex_lock(i32* @dev_pm_qos_mtx)
  %5 = load %struct.device*, %struct.device** %2, align 8
  %6 = getelementptr inbounds %struct.device, %struct.device* %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %6, i32 0, i32 0
  %8 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %9 = call i64 @IS_ERR_OR_NULL(%struct.TYPE_10__* %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %19, label %11

11:                                               ; preds = %1
  %12 = load %struct.device*, %struct.device** %2, align 8
  %13 = getelementptr inbounds %struct.device, %struct.device* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %13, i32 0, i32 0
  %15 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %15, i32 0, i32 0
  %17 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  %18 = icmp ne %struct.TYPE_8__* %17, null
  br i1 %18, label %21, label %19

19:                                               ; preds = %11, %1
  %20 = load i32, i32* @PM_QOS_LATENCY_TOLERANCE_NO_CONSTRAINT, align 4
  br label %32

21:                                               ; preds = %11
  %22 = load %struct.device*, %struct.device** %2, align 8
  %23 = getelementptr inbounds %struct.device, %struct.device* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %23, i32 0, i32 0
  %25 = load %struct.TYPE_10__*, %struct.TYPE_10__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %25, i32 0, i32 0
  %27 = load %struct.TYPE_8__*, %struct.TYPE_8__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  br label %32

32:                                               ; preds = %21, %19
  %33 = phi i32 [ %20, %19 ], [ %31, %21 ]
  store i32 %33, i32* %3, align 4
  %34 = call i32 @mutex_unlock(i32* @dev_pm_qos_mtx)
  %35 = load i32, i32* %3, align 4
  ret i32 %35
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @IS_ERR_OR_NULL(%struct.TYPE_10__*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
