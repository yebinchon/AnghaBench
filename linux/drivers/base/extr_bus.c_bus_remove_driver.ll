; ModuleID = '/home/carl/AnghaBench/linux/drivers/base/extr_bus.c_bus_remove_driver.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/base/extr_bus.c_bus_remove_driver.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device_driver = type { %struct.TYPE_4__*, %struct.TYPE_3__*, i32, i32 }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_3__ = type { i32, i32 }

@driver_attr_uevent = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"bus: '%s': remove driver %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bus_remove_driver(%struct.device_driver* %0) #0 {
  %2 = alloca %struct.device_driver*, align 8
  store %struct.device_driver* %0, %struct.device_driver** %2, align 8
  %3 = load %struct.device_driver*, %struct.device_driver** %2, align 8
  %4 = getelementptr inbounds %struct.device_driver, %struct.device_driver* %3, i32 0, i32 0
  %5 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %6 = icmp ne %struct.TYPE_4__* %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %1
  br label %53

8:                                                ; preds = %1
  %9 = load %struct.device_driver*, %struct.device_driver** %2, align 8
  %10 = getelementptr inbounds %struct.device_driver, %struct.device_driver* %9, i32 0, i32 3
  %11 = load i32, i32* %10, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %16, label %13

13:                                               ; preds = %8
  %14 = load %struct.device_driver*, %struct.device_driver** %2, align 8
  %15 = call i32 @remove_bind_files(%struct.device_driver* %14)
  br label %16

16:                                               ; preds = %13, %8
  %17 = load %struct.device_driver*, %struct.device_driver** %2, align 8
  %18 = load %struct.device_driver*, %struct.device_driver** %2, align 8
  %19 = getelementptr inbounds %struct.device_driver, %struct.device_driver* %18, i32 0, i32 0
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @driver_remove_groups(%struct.device_driver* %17, i32 %22)
  %24 = load %struct.device_driver*, %struct.device_driver** %2, align 8
  %25 = call i32 @driver_remove_file(%struct.device_driver* %24, i32* @driver_attr_uevent)
  %26 = load %struct.device_driver*, %struct.device_driver** %2, align 8
  %27 = getelementptr inbounds %struct.device_driver, %struct.device_driver* %26, i32 0, i32 1
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 1
  %30 = call i32 @klist_remove(i32* %29)
  %31 = load %struct.device_driver*, %struct.device_driver** %2, align 8
  %32 = getelementptr inbounds %struct.device_driver, %struct.device_driver* %31, i32 0, i32 0
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.device_driver*, %struct.device_driver** %2, align 8
  %37 = getelementptr inbounds %struct.device_driver, %struct.device_driver* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 8
  %39 = call i32 @pr_debug(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %35, i32 %38)
  %40 = load %struct.device_driver*, %struct.device_driver** %2, align 8
  %41 = call i32 @driver_detach(%struct.device_driver* %40)
  %42 = load %struct.device_driver*, %struct.device_driver** %2, align 8
  %43 = call i32 @module_remove_driver(%struct.device_driver* %42)
  %44 = load %struct.device_driver*, %struct.device_driver** %2, align 8
  %45 = getelementptr inbounds %struct.device_driver, %struct.device_driver* %44, i32 0, i32 1
  %46 = load %struct.TYPE_3__*, %struct.TYPE_3__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 0
  %48 = call i32 @kobject_put(i32* %47)
  %49 = load %struct.device_driver*, %struct.device_driver** %2, align 8
  %50 = getelementptr inbounds %struct.device_driver, %struct.device_driver* %49, i32 0, i32 0
  %51 = load %struct.TYPE_4__*, %struct.TYPE_4__** %50, align 8
  %52 = call i32 @bus_put(%struct.TYPE_4__* %51)
  br label %53

53:                                               ; preds = %16, %7
  ret void
}

declare dso_local i32 @remove_bind_files(%struct.device_driver*) #1

declare dso_local i32 @driver_remove_groups(%struct.device_driver*, i32) #1

declare dso_local i32 @driver_remove_file(%struct.device_driver*, i32*) #1

declare dso_local i32 @klist_remove(i32*) #1

declare dso_local i32 @pr_debug(i8*, i32, i32) #1

declare dso_local i32 @driver_detach(%struct.device_driver*) #1

declare dso_local i32 @module_remove_driver(%struct.device_driver*) #1

declare dso_local i32 @kobject_put(i32*) #1

declare dso_local i32 @bus_put(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
