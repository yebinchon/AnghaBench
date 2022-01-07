; ModuleID = '/home/carl/AnghaBench/linux/drivers/base/extr_driver.c_driver_create_file.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/base/extr_driver.c_driver_create_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device_driver = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.driver_attribute = type { i32 }

@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @driver_create_file(%struct.device_driver* %0, %struct.driver_attribute* %1) #0 {
  %3 = alloca %struct.device_driver*, align 8
  %4 = alloca %struct.driver_attribute*, align 8
  %5 = alloca i32, align 4
  store %struct.device_driver* %0, %struct.device_driver** %3, align 8
  store %struct.driver_attribute* %1, %struct.driver_attribute** %4, align 8
  %6 = load %struct.device_driver*, %struct.device_driver** %3, align 8
  %7 = icmp ne %struct.device_driver* %6, null
  br i1 %7, label %8, label %16

8:                                                ; preds = %2
  %9 = load %struct.device_driver*, %struct.device_driver** %3, align 8
  %10 = getelementptr inbounds %struct.device_driver, %struct.device_driver* %9, i32 0, i32 0
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load %struct.driver_attribute*, %struct.driver_attribute** %4, align 8
  %14 = getelementptr inbounds %struct.driver_attribute, %struct.driver_attribute* %13, i32 0, i32 0
  %15 = call i32 @sysfs_create_file(i32* %12, i32* %14)
  store i32 %15, i32* %5, align 4
  br label %19

16:                                               ; preds = %2
  %17 = load i32, i32* @EINVAL, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %5, align 4
  br label %19

19:                                               ; preds = %16, %8
  %20 = load i32, i32* %5, align 4
  ret i32 %20
}

declare dso_local i32 @sysfs_create_file(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
