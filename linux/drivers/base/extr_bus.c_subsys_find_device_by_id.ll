; ModuleID = '/home/carl/AnghaBench/linux/drivers/base/extr_bus.c_subsys_find_device_by_id.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/base/extr_bus.c_subsys_find_device_by_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bus_type = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.device = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.klist_iter = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.device* @subsys_find_device_by_id(%struct.bus_type* %0, i32 %1, %struct.device* %2) #0 {
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.bus_type*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.device*, align 8
  %8 = alloca %struct.klist_iter, align 4
  %9 = alloca %struct.device*, align 8
  store %struct.bus_type* %0, %struct.bus_type** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.device* %2, %struct.device** %7, align 8
  %10 = load %struct.bus_type*, %struct.bus_type** %5, align 8
  %11 = icmp ne %struct.bus_type* %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %3
  store %struct.device* null, %struct.device** %4, align 8
  br label %69

13:                                               ; preds = %3
  %14 = load %struct.device*, %struct.device** %7, align 8
  %15 = icmp ne %struct.device* %14, null
  br i1 %15, label %16, label %44

16:                                               ; preds = %13
  %17 = load %struct.bus_type*, %struct.bus_type** %5, align 8
  %18 = getelementptr inbounds %struct.bus_type, %struct.bus_type* %17, i32 0, i32 0
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load %struct.device*, %struct.device** %7, align 8
  %22 = getelementptr inbounds %struct.device, %struct.device* %21, i32 0, i32 1
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = call i32 @klist_iter_init_node(i32* %20, %struct.klist_iter* %8, i32* %24)
  %26 = call %struct.device* @next_device(%struct.klist_iter* %8)
  store %struct.device* %26, %struct.device** %9, align 8
  %27 = load %struct.device*, %struct.device** %9, align 8
  %28 = icmp ne %struct.device* %27, null
  br i1 %28, label %29, label %42

29:                                               ; preds = %16
  %30 = load %struct.device*, %struct.device** %9, align 8
  %31 = getelementptr inbounds %struct.device, %struct.device* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* %6, align 4
  %34 = icmp eq i32 %32, %33
  br i1 %34, label %35, label %42

35:                                               ; preds = %29
  %36 = load %struct.device*, %struct.device** %9, align 8
  %37 = call i64 @get_device(%struct.device* %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %35
  %40 = call i32 @klist_iter_exit(%struct.klist_iter* %8)
  %41 = load %struct.device*, %struct.device** %9, align 8
  store %struct.device* %41, %struct.device** %4, align 8
  br label %69

42:                                               ; preds = %35, %29, %16
  %43 = call i32 @klist_iter_exit(%struct.klist_iter* %8)
  br label %44

44:                                               ; preds = %42, %13
  %45 = load %struct.bus_type*, %struct.bus_type** %5, align 8
  %46 = getelementptr inbounds %struct.bus_type, %struct.bus_type* %45, i32 0, i32 0
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 0
  %49 = call i32 @klist_iter_init_node(i32* %48, %struct.klist_iter* %8, i32* null)
  br label %50

50:                                               ; preds = %66, %44
  %51 = call %struct.device* @next_device(%struct.klist_iter* %8)
  store %struct.device* %51, %struct.device** %9, align 8
  %52 = icmp ne %struct.device* %51, null
  br i1 %52, label %53, label %67

53:                                               ; preds = %50
  %54 = load %struct.device*, %struct.device** %9, align 8
  %55 = getelementptr inbounds %struct.device, %struct.device* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = load i32, i32* %6, align 4
  %58 = icmp eq i32 %56, %57
  br i1 %58, label %59, label %66

59:                                               ; preds = %53
  %60 = load %struct.device*, %struct.device** %9, align 8
  %61 = call i64 @get_device(%struct.device* %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %66

63:                                               ; preds = %59
  %64 = call i32 @klist_iter_exit(%struct.klist_iter* %8)
  %65 = load %struct.device*, %struct.device** %9, align 8
  store %struct.device* %65, %struct.device** %4, align 8
  br label %69

66:                                               ; preds = %59, %53
  br label %50

67:                                               ; preds = %50
  %68 = call i32 @klist_iter_exit(%struct.klist_iter* %8)
  store %struct.device* null, %struct.device** %4, align 8
  br label %69

69:                                               ; preds = %67, %63, %39, %12
  %70 = load %struct.device*, %struct.device** %4, align 8
  ret %struct.device* %70
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
