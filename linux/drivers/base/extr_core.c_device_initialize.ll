; ModuleID = '/home/carl/AnghaBench/linux/drivers/base/extr_core.c_device_initialize.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/base/extr_core.c_device_initialize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { %struct.TYPE_3__, i32, i32, i32, i32, i32, i32, %struct.TYPE_4__ }
%struct.TYPE_3__ = type { i32, i32, i32 }
%struct.TYPE_4__ = type { i32 }

@devices_kset = common dso_local global i32 0, align 4
@device_ktype = common dso_local global i32 0, align 4
@DL_DEV_NO_DRIVER = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @device_initialize(%struct.device* %0) #0 {
  %2 = alloca %struct.device*, align 8
  store %struct.device* %0, %struct.device** %2, align 8
  %3 = load i32, i32* @devices_kset, align 4
  %4 = load %struct.device*, %struct.device** %2, align 8
  %5 = getelementptr inbounds %struct.device, %struct.device* %4, i32 0, i32 7
  %6 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 0
  store i32 %3, i32* %6, align 4
  %7 = load %struct.device*, %struct.device** %2, align 8
  %8 = getelementptr inbounds %struct.device, %struct.device* %7, i32 0, i32 7
  %9 = call i32 @kobject_init(%struct.TYPE_4__* %8, i32* @device_ktype)
  %10 = load %struct.device*, %struct.device** %2, align 8
  %11 = getelementptr inbounds %struct.device, %struct.device* %10, i32 0, i32 6
  %12 = call i32 @INIT_LIST_HEAD(i32* %11)
  %13 = load %struct.device*, %struct.device** %2, align 8
  %14 = getelementptr inbounds %struct.device, %struct.device* %13, i32 0, i32 4
  %15 = call i32 @mutex_init(i32* %14)
  %16 = load %struct.device*, %struct.device** %2, align 8
  %17 = getelementptr inbounds %struct.device, %struct.device* %16, i32 0, i32 4
  %18 = call i32 @lockdep_set_novalidate_class(i32* %17)
  %19 = load %struct.device*, %struct.device** %2, align 8
  %20 = getelementptr inbounds %struct.device, %struct.device* %19, i32 0, i32 3
  %21 = call i32 @spin_lock_init(i32* %20)
  %22 = load %struct.device*, %struct.device** %2, align 8
  %23 = getelementptr inbounds %struct.device, %struct.device* %22, i32 0, i32 2
  %24 = call i32 @INIT_LIST_HEAD(i32* %23)
  %25 = load %struct.device*, %struct.device** %2, align 8
  %26 = call i32 @device_pm_init(%struct.device* %25)
  %27 = load %struct.device*, %struct.device** %2, align 8
  %28 = call i32 @set_dev_node(%struct.device* %27, i32 -1)
  %29 = load %struct.device*, %struct.device** %2, align 8
  %30 = getelementptr inbounds %struct.device, %struct.device* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 2
  %32 = call i32 @INIT_LIST_HEAD(i32* %31)
  %33 = load %struct.device*, %struct.device** %2, align 8
  %34 = getelementptr inbounds %struct.device, %struct.device* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 1
  %36 = call i32 @INIT_LIST_HEAD(i32* %35)
  %37 = load i32, i32* @DL_DEV_NO_DRIVER, align 4
  %38 = load %struct.device*, %struct.device** %2, align 8
  %39 = getelementptr inbounds %struct.device, %struct.device* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 0
  store i32 %37, i32* %40, align 4
  ret void
}

declare dso_local i32 @kobject_init(%struct.TYPE_4__*, i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @lockdep_set_novalidate_class(i32*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @device_pm_init(%struct.device*) #1

declare dso_local i32 @set_dev_node(%struct.device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
