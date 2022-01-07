; ModuleID = '/home/carl/AnghaBench/linux/drivers/base/power/extr_main.c_device_pm_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/base/power/extr_main.c_device_pm_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { %struct.TYPE_4__, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32, i32, i32 }
%struct.TYPE_3__ = type { i8* }

@.str = private unnamed_addr constant [25 x i8] c"Removing info for %s:%s\0A\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"No Bus\00", align 1
@dpm_list_mtx = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @device_pm_remove(%struct.device* %0) #0 {
  %2 = alloca %struct.device*, align 8
  store %struct.device* %0, %struct.device** %2, align 8
  %3 = load %struct.device*, %struct.device** %2, align 8
  %4 = call i64 @device_pm_not_required(%struct.device* %3)
  %5 = icmp ne i64 %4, 0
  br i1 %5, label %6, label %7

6:                                                ; preds = %1
  br label %43

7:                                                ; preds = %1
  %8 = load %struct.device*, %struct.device** %2, align 8
  %9 = getelementptr inbounds %struct.device, %struct.device* %8, i32 0, i32 1
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %11 = icmp ne %struct.TYPE_3__* %10, null
  br i1 %11, label %12, label %18

12:                                               ; preds = %7
  %13 = load %struct.device*, %struct.device** %2, align 8
  %14 = getelementptr inbounds %struct.device, %struct.device* %13, i32 0, i32 1
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load i8*, i8** %16, align 8
  br label %19

18:                                               ; preds = %7
  br label %19

19:                                               ; preds = %18, %12
  %20 = phi i8* [ %17, %12 ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), %18 ]
  %21 = load %struct.device*, %struct.device** %2, align 8
  %22 = call i32 @dev_name(%struct.device* %21)
  %23 = call i32 @pr_debug(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i8* %20, i32 %22)
  %24 = load %struct.device*, %struct.device** %2, align 8
  %25 = getelementptr inbounds %struct.device, %struct.device* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 2
  %27 = call i32 @complete_all(i32* %26)
  %28 = call i32 @mutex_lock(i32* @dpm_list_mtx)
  %29 = load %struct.device*, %struct.device** %2, align 8
  %30 = getelementptr inbounds %struct.device, %struct.device* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 1
  %32 = call i32 @list_del_init(i32* %31)
  %33 = load %struct.device*, %struct.device** %2, align 8
  %34 = getelementptr inbounds %struct.device, %struct.device* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  store i32 0, i32* %35, align 8
  %36 = call i32 @mutex_unlock(i32* @dpm_list_mtx)
  %37 = load %struct.device*, %struct.device** %2, align 8
  %38 = call i32 @device_wakeup_disable(%struct.device* %37)
  %39 = load %struct.device*, %struct.device** %2, align 8
  %40 = call i32 @pm_runtime_remove(%struct.device* %39)
  %41 = load %struct.device*, %struct.device** %2, align 8
  %42 = call i32 @device_pm_check_callbacks(%struct.device* %41)
  br label %43

43:                                               ; preds = %19, %6
  ret void
}

declare dso_local i64 @device_pm_not_required(%struct.device*) #1

declare dso_local i32 @pr_debug(i8*, i8*, i32) #1

declare dso_local i32 @dev_name(%struct.device*) #1

declare dso_local i32 @complete_all(i32*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @list_del_init(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @device_wakeup_disable(%struct.device*) #1

declare dso_local i32 @pm_runtime_remove(%struct.device*) #1

declare dso_local i32 @device_pm_check_callbacks(%struct.device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
