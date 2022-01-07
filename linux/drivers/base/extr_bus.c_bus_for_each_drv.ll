; ModuleID = '/home/carl/AnghaBench/linux/drivers/base/extr_bus.c_bus_for_each_drv.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/base/extr_bus.c_bus_for_each_drv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bus_type = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.device_driver = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.klist_iter = type { i32 }

@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bus_for_each_drv(%struct.bus_type* %0, %struct.device_driver* %1, i8* %2, i32 (%struct.device_driver*, i8*)* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.bus_type*, align 8
  %7 = alloca %struct.device_driver*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32 (%struct.device_driver*, i8*)*, align 8
  %10 = alloca %struct.klist_iter, align 4
  %11 = alloca %struct.device_driver*, align 8
  %12 = alloca i32, align 4
  store %struct.bus_type* %0, %struct.bus_type** %6, align 8
  store %struct.device_driver* %1, %struct.device_driver** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 (%struct.device_driver*, i8*)* %3, i32 (%struct.device_driver*, i8*)** %9, align 8
  store i32 0, i32* %12, align 4
  %13 = load %struct.bus_type*, %struct.bus_type** %6, align 8
  %14 = icmp ne %struct.bus_type* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %4
  %16 = load i32, i32* @EINVAL, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %5, align 4
  br label %51

18:                                               ; preds = %4
  %19 = load %struct.bus_type*, %struct.bus_type** %6, align 8
  %20 = getelementptr inbounds %struct.bus_type, %struct.bus_type* %19, i32 0, i32 0
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = load %struct.device_driver*, %struct.device_driver** %7, align 8
  %24 = icmp ne %struct.device_driver* %23, null
  br i1 %24, label %25, label %30

25:                                               ; preds = %18
  %26 = load %struct.device_driver*, %struct.device_driver** %7, align 8
  %27 = getelementptr inbounds %struct.device_driver, %struct.device_driver* %26, i32 0, i32 0
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  br label %31

30:                                               ; preds = %18
  br label %31

31:                                               ; preds = %30, %25
  %32 = phi i32* [ %29, %25 ], [ null, %30 ]
  %33 = call i32 @klist_iter_init_node(i32* %22, %struct.klist_iter* %10, i32* %32)
  br label %34

34:                                               ; preds = %43, %31
  %35 = call %struct.device_driver* @next_driver(%struct.klist_iter* %10)
  store %struct.device_driver* %35, %struct.device_driver** %11, align 8
  %36 = icmp ne %struct.device_driver* %35, null
  br i1 %36, label %37, label %41

37:                                               ; preds = %34
  %38 = load i32, i32* %12, align 4
  %39 = icmp ne i32 %38, 0
  %40 = xor i1 %39, true
  br label %41

41:                                               ; preds = %37, %34
  %42 = phi i1 [ false, %34 ], [ %40, %37 ]
  br i1 %42, label %43, label %48

43:                                               ; preds = %41
  %44 = load i32 (%struct.device_driver*, i8*)*, i32 (%struct.device_driver*, i8*)** %9, align 8
  %45 = load %struct.device_driver*, %struct.device_driver** %11, align 8
  %46 = load i8*, i8** %8, align 8
  %47 = call i32 %44(%struct.device_driver* %45, i8* %46)
  store i32 %47, i32* %12, align 4
  br label %34

48:                                               ; preds = %41
  %49 = call i32 @klist_iter_exit(%struct.klist_iter* %10)
  %50 = load i32, i32* %12, align 4
  store i32 %50, i32* %5, align 4
  br label %51

51:                                               ; preds = %48, %15
  %52 = load i32, i32* %5, align 4
  ret i32 %52
}

declare dso_local i32 @klist_iter_init_node(i32*, %struct.klist_iter*, i32*) #1

declare dso_local %struct.device_driver* @next_driver(%struct.klist_iter*) #1

declare dso_local i32 @klist_iter_exit(%struct.klist_iter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
