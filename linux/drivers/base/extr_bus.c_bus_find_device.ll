; ModuleID = '/home/carl/AnghaBench/linux/drivers/base/extr_bus.c_bus_find_device.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/base/extr_bus.c_bus_find_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bus_type = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.device = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.klist_iter = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.device* @bus_find_device(%struct.bus_type* %0, %struct.device* %1, i8* %2, i32 (%struct.device*, i8*)* %3) #0 {
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.bus_type*, align 8
  %7 = alloca %struct.device*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32 (%struct.device*, i8*)*, align 8
  %10 = alloca %struct.klist_iter, align 4
  %11 = alloca %struct.device*, align 8
  store %struct.bus_type* %0, %struct.bus_type** %6, align 8
  store %struct.device* %1, %struct.device** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 (%struct.device*, i8*)* %3, i32 (%struct.device*, i8*)** %9, align 8
  %12 = load %struct.bus_type*, %struct.bus_type** %6, align 8
  %13 = icmp ne %struct.bus_type* %12, null
  br i1 %13, label %14, label %19

14:                                               ; preds = %4
  %15 = load %struct.bus_type*, %struct.bus_type** %6, align 8
  %16 = getelementptr inbounds %struct.bus_type, %struct.bus_type* %15, i32 0, i32 0
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %16, align 8
  %18 = icmp ne %struct.TYPE_3__* %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %14, %4
  store %struct.device* null, %struct.device** %5, align 8
  br label %54

20:                                               ; preds = %14
  %21 = load %struct.bus_type*, %struct.bus_type** %6, align 8
  %22 = getelementptr inbounds %struct.bus_type, %struct.bus_type* %21, i32 0, i32 0
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = load %struct.device*, %struct.device** %7, align 8
  %26 = icmp ne %struct.device* %25, null
  br i1 %26, label %27, label %32

27:                                               ; preds = %20
  %28 = load %struct.device*, %struct.device** %7, align 8
  %29 = getelementptr inbounds %struct.device, %struct.device* %28, i32 0, i32 0
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  br label %33

32:                                               ; preds = %20
  br label %33

33:                                               ; preds = %32, %27
  %34 = phi i32* [ %31, %27 ], [ null, %32 ]
  %35 = call i32 @klist_iter_init_node(i32* %24, %struct.klist_iter* %10, i32* %34)
  br label %36

36:                                               ; preds = %50, %33
  %37 = call %struct.device* @next_device(%struct.klist_iter* %10)
  store %struct.device* %37, %struct.device** %11, align 8
  %38 = icmp ne %struct.device* %37, null
  br i1 %38, label %39, label %51

39:                                               ; preds = %36
  %40 = load i32 (%struct.device*, i8*)*, i32 (%struct.device*, i8*)** %9, align 8
  %41 = load %struct.device*, %struct.device** %11, align 8
  %42 = load i8*, i8** %8, align 8
  %43 = call i32 %40(%struct.device* %41, i8* %42)
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %50

45:                                               ; preds = %39
  %46 = load %struct.device*, %struct.device** %11, align 8
  %47 = call i64 @get_device(%struct.device* %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %45
  br label %51

50:                                               ; preds = %45, %39
  br label %36

51:                                               ; preds = %49, %36
  %52 = call i32 @klist_iter_exit(%struct.klist_iter* %10)
  %53 = load %struct.device*, %struct.device** %11, align 8
  store %struct.device* %53, %struct.device** %5, align 8
  br label %54

54:                                               ; preds = %51, %19
  %55 = load %struct.device*, %struct.device** %5, align 8
  ret %struct.device* %55
}

declare dso_local i32 @klist_iter_init_node(i32*, %struct.klist_iter*, i32*) #1

declare dso_local %struct.device* @next_device(%struct.klist_iter*) #1

declare dso_local i64 @get_device(%struct.device*) #1

declare dso_local i32 @klist_iter_exit(%struct.klist_iter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
