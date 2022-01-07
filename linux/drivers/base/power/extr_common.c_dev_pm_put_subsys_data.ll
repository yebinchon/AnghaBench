; ModuleID = '/home/carl/AnghaBench/linux/drivers/base/power/extr_common.c_dev_pm_put_subsys_data.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/base/power/extr_common.c_dev_pm_put_subsys_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32* }
%struct.pm_subsys_data = type { i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dev_pm_put_subsys_data(%struct.device* %0) #0 {
  %2 = alloca %struct.device*, align 8
  %3 = alloca %struct.pm_subsys_data*, align 8
  store %struct.device* %0, %struct.device** %2, align 8
  %4 = load %struct.device*, %struct.device** %2, align 8
  %5 = getelementptr inbounds %struct.device, %struct.device* %4, i32 0, i32 0
  %6 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i32 0, i32 0
  %7 = call i32 @spin_lock_irq(i32* %6)
  %8 = load %struct.device*, %struct.device** %2, align 8
  %9 = call %struct.pm_subsys_data* @dev_to_psd(%struct.device* %8)
  store %struct.pm_subsys_data* %9, %struct.pm_subsys_data** %3, align 8
  %10 = load %struct.pm_subsys_data*, %struct.pm_subsys_data** %3, align 8
  %11 = icmp ne %struct.pm_subsys_data* %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %1
  br label %25

13:                                               ; preds = %1
  %14 = load %struct.pm_subsys_data*, %struct.pm_subsys_data** %3, align 8
  %15 = getelementptr inbounds %struct.pm_subsys_data, %struct.pm_subsys_data* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = add nsw i64 %16, -1
  store i64 %17, i64* %15, align 8
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %13
  %20 = load %struct.device*, %struct.device** %2, align 8
  %21 = getelementptr inbounds %struct.device, %struct.device* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 1
  store i32* null, i32** %22, align 8
  br label %24

23:                                               ; preds = %13
  store %struct.pm_subsys_data* null, %struct.pm_subsys_data** %3, align 8
  br label %24

24:                                               ; preds = %23, %19
  br label %25

25:                                               ; preds = %24, %12
  %26 = load %struct.device*, %struct.device** %2, align 8
  %27 = getelementptr inbounds %struct.device, %struct.device* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = call i32 @spin_unlock_irq(i32* %28)
  %30 = load %struct.pm_subsys_data*, %struct.pm_subsys_data** %3, align 8
  %31 = call i32 @kfree(%struct.pm_subsys_data* %30)
  ret void
}

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local %struct.pm_subsys_data* @dev_to_psd(%struct.device*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @kfree(%struct.pm_subsys_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
