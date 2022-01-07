; ModuleID = '/home/carl/AnghaBench/linux/drivers/base/extr_driver.c_driver_for_each_device.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/base/extr_driver.c_driver_for_each_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device_driver = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.device = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.klist_iter = type { i32 }

@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @driver_for_each_device(%struct.device_driver* %0, %struct.device* %1, i8* %2, i32 (%struct.device*, i8*)* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.device_driver*, align 8
  %7 = alloca %struct.device*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32 (%struct.device*, i8*)*, align 8
  %10 = alloca %struct.klist_iter, align 4
  %11 = alloca %struct.device*, align 8
  %12 = alloca i32, align 4
  store %struct.device_driver* %0, %struct.device_driver** %6, align 8
  store %struct.device* %1, %struct.device** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 (%struct.device*, i8*)* %3, i32 (%struct.device*, i8*)** %9, align 8
  store i32 0, i32* %12, align 4
  %13 = load %struct.device_driver*, %struct.device_driver** %6, align 8
  %14 = icmp ne %struct.device_driver* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %4
  %16 = load i32, i32* @EINVAL, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %5, align 4
  br label %50

18:                                               ; preds = %4
  %19 = load %struct.device_driver*, %struct.device_driver** %6, align 8
  %20 = getelementptr inbounds %struct.device_driver, %struct.device_driver* %19, i32 0, i32 0
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = load %struct.device*, %struct.device** %7, align 8
  %24 = icmp ne %struct.device* %23, null
  br i1 %24, label %25, label %30

25:                                               ; preds = %18
  %26 = load %struct.device*, %struct.device** %7, align 8
  %27 = getelementptr inbounds %struct.device, %struct.device* %26, i32 0, i32 0
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  br label %31

30:                                               ; preds = %18
  br label %31

31:                                               ; preds = %30, %25
  %32 = phi i32* [ %29, %25 ], [ null, %30 ]
  %33 = call i32 @klist_iter_init_node(i32* %22, %struct.klist_iter* %10, i32* %32)
  br label %34

34:                                               ; preds = %42, %31
  %35 = load i32, i32* %12, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %40, label %37

37:                                               ; preds = %34
  %38 = call %struct.device* @next_device(%struct.klist_iter* %10)
  store %struct.device* %38, %struct.device** %11, align 8
  %39 = icmp ne %struct.device* %38, null
  br label %40

40:                                               ; preds = %37, %34
  %41 = phi i1 [ false, %34 ], [ %39, %37 ]
  br i1 %41, label %42, label %47

42:                                               ; preds = %40
  %43 = load i32 (%struct.device*, i8*)*, i32 (%struct.device*, i8*)** %9, align 8
  %44 = load %struct.device*, %struct.device** %11, align 8
  %45 = load i8*, i8** %8, align 8
  %46 = call i32 %43(%struct.device* %44, i8* %45)
  store i32 %46, i32* %12, align 4
  br label %34

47:                                               ; preds = %40
  %48 = call i32 @klist_iter_exit(%struct.klist_iter* %10)
  %49 = load i32, i32* %12, align 4
  store i32 %49, i32* %5, align 4
  br label %50

50:                                               ; preds = %47, %15
  %51 = load i32, i32* %5, align 4
  ret i32 %51
}

declare dso_local i32 @klist_iter_init_node(i32*, %struct.klist_iter*, i32*) #1

declare dso_local %struct.device* @next_device(%struct.klist_iter*) #1

declare dso_local i32 @klist_iter_exit(%struct.klist_iter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
