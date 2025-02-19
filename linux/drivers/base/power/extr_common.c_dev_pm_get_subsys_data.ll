; ModuleID = '/home/carl/AnghaBench/linux/drivers/base/power/extr_common.c_dev_pm_get_subsys_data.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/base/power/extr_common.c_dev_pm_get_subsys_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, %struct.pm_subsys_data* }
%struct.pm_subsys_data = type { i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dev_pm_get_subsys_data(%struct.device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.pm_subsys_data*, align 8
  store %struct.device* %0, %struct.device** %3, align 8
  %5 = load i32, i32* @GFP_KERNEL, align 4
  %6 = call %struct.pm_subsys_data* @kzalloc(i32 8, i32 %5)
  store %struct.pm_subsys_data* %6, %struct.pm_subsys_data** %4, align 8
  %7 = load %struct.pm_subsys_data*, %struct.pm_subsys_data** %4, align 8
  %8 = icmp ne %struct.pm_subsys_data* %7, null
  br i1 %8, label %12, label %9

9:                                                ; preds = %1
  %10 = load i32, i32* @ENOMEM, align 4
  %11 = sub nsw i32 0, %10
  store i32 %11, i32* %2, align 4
  br label %49

12:                                               ; preds = %1
  %13 = load %struct.device*, %struct.device** %3, align 8
  %14 = getelementptr inbounds %struct.device, %struct.device* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = call i32 @spin_lock_irq(i32* %15)
  %17 = load %struct.device*, %struct.device** %3, align 8
  %18 = getelementptr inbounds %struct.device, %struct.device* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 1
  %20 = load %struct.pm_subsys_data*, %struct.pm_subsys_data** %19, align 8
  %21 = icmp ne %struct.pm_subsys_data* %20, null
  br i1 %21, label %22, label %30

22:                                               ; preds = %12
  %23 = load %struct.device*, %struct.device** %3, align 8
  %24 = getelementptr inbounds %struct.device, %struct.device* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 1
  %26 = load %struct.pm_subsys_data*, %struct.pm_subsys_data** %25, align 8
  %27 = getelementptr inbounds %struct.pm_subsys_data, %struct.pm_subsys_data* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* %27, align 4
  br label %42

30:                                               ; preds = %12
  %31 = load %struct.pm_subsys_data*, %struct.pm_subsys_data** %4, align 8
  %32 = getelementptr inbounds %struct.pm_subsys_data, %struct.pm_subsys_data* %31, i32 0, i32 1
  %33 = call i32 @spin_lock_init(i32* %32)
  %34 = load %struct.pm_subsys_data*, %struct.pm_subsys_data** %4, align 8
  %35 = getelementptr inbounds %struct.pm_subsys_data, %struct.pm_subsys_data* %34, i32 0, i32 0
  store i32 1, i32* %35, align 4
  %36 = load %struct.pm_subsys_data*, %struct.pm_subsys_data** %4, align 8
  %37 = load %struct.device*, %struct.device** %3, align 8
  %38 = getelementptr inbounds %struct.device, %struct.device* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 1
  store %struct.pm_subsys_data* %36, %struct.pm_subsys_data** %39, align 8
  %40 = load %struct.device*, %struct.device** %3, align 8
  %41 = call i32 @pm_clk_init(%struct.device* %40)
  store %struct.pm_subsys_data* null, %struct.pm_subsys_data** %4, align 8
  br label %42

42:                                               ; preds = %30, %22
  %43 = load %struct.device*, %struct.device** %3, align 8
  %44 = getelementptr inbounds %struct.device, %struct.device* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  %46 = call i32 @spin_unlock_irq(i32* %45)
  %47 = load %struct.pm_subsys_data*, %struct.pm_subsys_data** %4, align 8
  %48 = call i32 @kfree(%struct.pm_subsys_data* %47)
  store i32 0, i32* %2, align 4
  br label %49

49:                                               ; preds = %42, %9
  %50 = load i32, i32* %2, align 4
  ret i32 %50
}

declare dso_local %struct.pm_subsys_data* @kzalloc(i32, i32) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @pm_clk_init(%struct.device*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @kfree(%struct.pm_subsys_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
