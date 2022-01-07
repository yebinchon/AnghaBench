; ModuleID = '/home/carl/AnghaBench/linux/drivers/base/extr_bus.c_bus_for_each_dev.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/base/extr_bus.c_bus_for_each_dev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bus_type = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.device = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.klist_iter = type { i32 }

@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bus_for_each_dev(%struct.bus_type* %0, %struct.device* %1, i8* %2, i32 (%struct.device*, i8*)* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.bus_type*, align 8
  %7 = alloca %struct.device*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32 (%struct.device*, i8*)*, align 8
  %10 = alloca %struct.klist_iter, align 4
  %11 = alloca %struct.device*, align 8
  %12 = alloca i32, align 4
  store %struct.bus_type* %0, %struct.bus_type** %6, align 8
  store %struct.device* %1, %struct.device** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 (%struct.device*, i8*)* %3, i32 (%struct.device*, i8*)** %9, align 8
  store i32 0, i32* %12, align 4
  %13 = load %struct.bus_type*, %struct.bus_type** %6, align 8
  %14 = icmp ne %struct.bus_type* %13, null
  br i1 %14, label %15, label %20

15:                                               ; preds = %4
  %16 = load %struct.bus_type*, %struct.bus_type** %6, align 8
  %17 = getelementptr inbounds %struct.bus_type, %struct.bus_type* %16, i32 0, i32 0
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %19 = icmp ne %struct.TYPE_4__* %18, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %15, %4
  %21 = load i32, i32* @EINVAL, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %5, align 4
  br label %55

23:                                               ; preds = %15
  %24 = load %struct.bus_type*, %struct.bus_type** %6, align 8
  %25 = getelementptr inbounds %struct.bus_type, %struct.bus_type* %24, i32 0, i32 0
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = load %struct.device*, %struct.device** %7, align 8
  %29 = icmp ne %struct.device* %28, null
  br i1 %29, label %30, label %35

30:                                               ; preds = %23
  %31 = load %struct.device*, %struct.device** %7, align 8
  %32 = getelementptr inbounds %struct.device, %struct.device* %31, i32 0, i32 0
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 0
  br label %36

35:                                               ; preds = %23
  br label %36

36:                                               ; preds = %35, %30
  %37 = phi i32* [ %34, %30 ], [ null, %35 ]
  %38 = call i32 @klist_iter_init_node(i32* %27, %struct.klist_iter* %10, i32* %37)
  br label %39

39:                                               ; preds = %47, %36
  %40 = load i32, i32* %12, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %45, label %42

42:                                               ; preds = %39
  %43 = call %struct.device* @next_device(%struct.klist_iter* %10)
  store %struct.device* %43, %struct.device** %11, align 8
  %44 = icmp ne %struct.device* %43, null
  br label %45

45:                                               ; preds = %42, %39
  %46 = phi i1 [ false, %39 ], [ %44, %42 ]
  br i1 %46, label %47, label %52

47:                                               ; preds = %45
  %48 = load i32 (%struct.device*, i8*)*, i32 (%struct.device*, i8*)** %9, align 8
  %49 = load %struct.device*, %struct.device** %11, align 8
  %50 = load i8*, i8** %8, align 8
  %51 = call i32 %48(%struct.device* %49, i8* %50)
  store i32 %51, i32* %12, align 4
  br label %39

52:                                               ; preds = %45
  %53 = call i32 @klist_iter_exit(%struct.klist_iter* %10)
  %54 = load i32, i32* %12, align 4
  store i32 %54, i32* %5, align 4
  br label %55

55:                                               ; preds = %52, %20
  %56 = load i32, i32* %5, align 4
  ret i32 %56
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
