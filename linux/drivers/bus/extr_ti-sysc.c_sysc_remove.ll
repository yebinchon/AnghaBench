; ModuleID = '/home/carl/AnghaBench/linux/drivers/bus/extr_ti-sysc.c_sysc_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/bus/extr_ti-sysc.c_sysc_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.sysc = type { i32, i32*, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @sysc_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sysc_remove(%struct.platform_device* %0) #0 {
  %2 = alloca %struct.platform_device*, align 8
  %3 = alloca %struct.sysc*, align 8
  %4 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %2, align 8
  %5 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %6 = call %struct.sysc* @platform_get_drvdata(%struct.platform_device* %5)
  store %struct.sysc* %6, %struct.sysc** %3, align 8
  %7 = load %struct.sysc*, %struct.sysc** %3, align 8
  %8 = getelementptr inbounds %struct.sysc, %struct.sysc* %7, i32 0, i32 2
  %9 = call i32 @cancel_delayed_work_sync(i32* %8)
  %10 = load %struct.sysc*, %struct.sysc** %3, align 8
  %11 = getelementptr inbounds %struct.sysc, %struct.sysc* %10, i32 0, i32 1
  %12 = load i32*, i32** %11, align 8
  %13 = call i32 @pm_runtime_get_sync(i32* %12)
  store i32 %13, i32* %4, align 4
  %14 = load i32, i32* %4, align 4
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %16, label %25

16:                                               ; preds = %1
  %17 = load %struct.sysc*, %struct.sysc** %3, align 8
  %18 = getelementptr inbounds %struct.sysc, %struct.sysc* %17, i32 0, i32 1
  %19 = load i32*, i32** %18, align 8
  %20 = call i32 @pm_runtime_put_noidle(i32* %19)
  %21 = load %struct.sysc*, %struct.sysc** %3, align 8
  %22 = getelementptr inbounds %struct.sysc, %struct.sysc* %21, i32 0, i32 1
  %23 = load i32*, i32** %22, align 8
  %24 = call i32 @pm_runtime_disable(i32* %23)
  br label %39

25:                                               ; preds = %1
  %26 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %27 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %26, i32 0, i32 0
  %28 = call i32 @of_platform_depopulate(i32* %27)
  %29 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %30 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %29, i32 0, i32 0
  %31 = call i32 @pm_runtime_put_sync(i32* %30)
  %32 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %33 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %32, i32 0, i32 0
  %34 = call i32 @pm_runtime_disable(i32* %33)
  %35 = load %struct.sysc*, %struct.sysc** %3, align 8
  %36 = getelementptr inbounds %struct.sysc, %struct.sysc* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = call i32 @reset_control_assert(i32 %37)
  br label %39

39:                                               ; preds = %25, %16
  %40 = load %struct.sysc*, %struct.sysc** %3, align 8
  %41 = call i32 @sysc_unprepare(%struct.sysc* %40)
  ret i32 0
}

declare dso_local %struct.sysc* @platform_get_drvdata(%struct.platform_device*) #1

declare dso_local i32 @cancel_delayed_work_sync(i32*) #1

declare dso_local i32 @pm_runtime_get_sync(i32*) #1

declare dso_local i32 @pm_runtime_put_noidle(i32*) #1

declare dso_local i32 @pm_runtime_disable(i32*) #1

declare dso_local i32 @of_platform_depopulate(i32*) #1

declare dso_local i32 @pm_runtime_put_sync(i32*) #1

declare dso_local i32 @reset_control_assert(i32) #1

declare dso_local i32 @sysc_unprepare(%struct.sysc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
