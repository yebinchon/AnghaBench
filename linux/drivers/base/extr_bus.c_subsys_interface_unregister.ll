; ModuleID = '/home/carl/AnghaBench/linux/drivers/base/extr_bus.c_subsys_interface_unregister.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/base/extr_bus.c_subsys_interface_unregister.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.subsys_interface = type { i32 (%struct.device*, %struct.subsys_interface*)*, i32, %struct.bus_type* }
%struct.device = type opaque
%struct.bus_type = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.subsys_dev_iter = type { i32 }
%struct.device.0 = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @subsys_interface_unregister(%struct.subsys_interface* %0) #0 {
  %2 = alloca %struct.subsys_interface*, align 8
  %3 = alloca %struct.bus_type*, align 8
  %4 = alloca %struct.subsys_dev_iter, align 4
  %5 = alloca %struct.device.0*, align 8
  store %struct.subsys_interface* %0, %struct.subsys_interface** %2, align 8
  %6 = load %struct.subsys_interface*, %struct.subsys_interface** %2, align 8
  %7 = icmp ne %struct.subsys_interface* %6, null
  br i1 %7, label %8, label %13

8:                                                ; preds = %1
  %9 = load %struct.subsys_interface*, %struct.subsys_interface** %2, align 8
  %10 = getelementptr inbounds %struct.subsys_interface, %struct.subsys_interface* %9, i32 0, i32 2
  %11 = load %struct.bus_type*, %struct.bus_type** %10, align 8
  %12 = icmp ne %struct.bus_type* %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %8, %1
  br label %54

14:                                               ; preds = %8
  %15 = load %struct.subsys_interface*, %struct.subsys_interface** %2, align 8
  %16 = getelementptr inbounds %struct.subsys_interface, %struct.subsys_interface* %15, i32 0, i32 2
  %17 = load %struct.bus_type*, %struct.bus_type** %16, align 8
  store %struct.bus_type* %17, %struct.bus_type** %3, align 8
  %18 = load %struct.bus_type*, %struct.bus_type** %3, align 8
  %19 = getelementptr inbounds %struct.bus_type, %struct.bus_type* %18, i32 0, i32 0
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = call i32 @mutex_lock(i32* %21)
  %23 = load %struct.subsys_interface*, %struct.subsys_interface** %2, align 8
  %24 = getelementptr inbounds %struct.subsys_interface, %struct.subsys_interface* %23, i32 0, i32 1
  %25 = call i32 @list_del_init(i32* %24)
  %26 = load %struct.subsys_interface*, %struct.subsys_interface** %2, align 8
  %27 = getelementptr inbounds %struct.subsys_interface, %struct.subsys_interface* %26, i32 0, i32 0
  %28 = load i32 (%struct.device*, %struct.subsys_interface*)*, i32 (%struct.device*, %struct.subsys_interface*)** %27, align 8
  %29 = icmp ne i32 (%struct.device*, %struct.subsys_interface*)* %28, null
  br i1 %29, label %30, label %46

30:                                               ; preds = %14
  %31 = load %struct.bus_type*, %struct.bus_type** %3, align 8
  %32 = call i32 @subsys_dev_iter_init(%struct.subsys_dev_iter* %4, %struct.bus_type* %31, i32* null, i32* null)
  br label %33

33:                                               ; preds = %36, %30
  %34 = call %struct.device.0* @subsys_dev_iter_next(%struct.subsys_dev_iter* %4)
  store %struct.device.0* %34, %struct.device.0** %5, align 8
  %35 = icmp ne %struct.device.0* %34, null
  br i1 %35, label %36, label %44

36:                                               ; preds = %33
  %37 = load %struct.subsys_interface*, %struct.subsys_interface** %2, align 8
  %38 = getelementptr inbounds %struct.subsys_interface, %struct.subsys_interface* %37, i32 0, i32 0
  %39 = load i32 (%struct.device*, %struct.subsys_interface*)*, i32 (%struct.device*, %struct.subsys_interface*)** %38, align 8
  %40 = load %struct.device.0*, %struct.device.0** %5, align 8
  %41 = bitcast %struct.device.0* %40 to %struct.device*
  %42 = load %struct.subsys_interface*, %struct.subsys_interface** %2, align 8
  %43 = call i32 %39(%struct.device* %41, %struct.subsys_interface* %42)
  br label %33

44:                                               ; preds = %33
  %45 = call i32 @subsys_dev_iter_exit(%struct.subsys_dev_iter* %4)
  br label %46

46:                                               ; preds = %44, %14
  %47 = load %struct.bus_type*, %struct.bus_type** %3, align 8
  %48 = getelementptr inbounds %struct.bus_type, %struct.bus_type* %47, i32 0, i32 0
  %49 = load %struct.TYPE_2__*, %struct.TYPE_2__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 0
  %51 = call i32 @mutex_unlock(i32* %50)
  %52 = load %struct.bus_type*, %struct.bus_type** %3, align 8
  %53 = call i32 @bus_put(%struct.bus_type* %52)
  br label %54

54:                                               ; preds = %46, %13
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @list_del_init(i32*) #1

declare dso_local i32 @subsys_dev_iter_init(%struct.subsys_dev_iter*, %struct.bus_type*, i32*, i32*) #1

declare dso_local %struct.device.0* @subsys_dev_iter_next(%struct.subsys_dev_iter*) #1

declare dso_local i32 @subsys_dev_iter_exit(%struct.subsys_dev_iter*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @bus_put(%struct.bus_type*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
