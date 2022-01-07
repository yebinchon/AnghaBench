; ModuleID = '/home/carl/AnghaBench/linux/drivers/base/extr_bus.c_subsys_interface_register.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/base/extr_bus.c_subsys_interface_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.subsys_interface = type { i32 (%struct.device*, %struct.subsys_interface*)*, i32, i32 }
%struct.device = type opaque
%struct.bus_type = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }
%struct.subsys_dev_iter = type { i32 }
%struct.device.0 = type { i32 }

@ENODEV = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @subsys_interface_register(%struct.subsys_interface* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.subsys_interface*, align 8
  %4 = alloca %struct.bus_type*, align 8
  %5 = alloca %struct.subsys_dev_iter, align 4
  %6 = alloca %struct.device.0*, align 8
  store %struct.subsys_interface* %0, %struct.subsys_interface** %3, align 8
  %7 = load %struct.subsys_interface*, %struct.subsys_interface** %3, align 8
  %8 = icmp ne %struct.subsys_interface* %7, null
  br i1 %8, label %9, label %14

9:                                                ; preds = %1
  %10 = load %struct.subsys_interface*, %struct.subsys_interface** %3, align 8
  %11 = getelementptr inbounds %struct.subsys_interface, %struct.subsys_interface* %10, i32 0, i32 2
  %12 = load i32, i32* %11, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %17, label %14

14:                                               ; preds = %9, %1
  %15 = load i32, i32* @ENODEV, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %2, align 4
  br label %66

17:                                               ; preds = %9
  %18 = load %struct.subsys_interface*, %struct.subsys_interface** %3, align 8
  %19 = getelementptr inbounds %struct.subsys_interface, %struct.subsys_interface* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 4
  %21 = call %struct.bus_type* @bus_get(i32 %20)
  store %struct.bus_type* %21, %struct.bus_type** %4, align 8
  %22 = load %struct.bus_type*, %struct.bus_type** %4, align 8
  %23 = icmp ne %struct.bus_type* %22, null
  br i1 %23, label %27, label %24

24:                                               ; preds = %17
  %25 = load i32, i32* @EINVAL, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %2, align 4
  br label %66

27:                                               ; preds = %17
  %28 = load %struct.bus_type*, %struct.bus_type** %4, align 8
  %29 = getelementptr inbounds %struct.bus_type, %struct.bus_type* %28, i32 0, i32 0
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = call i32 @mutex_lock(i32* %31)
  %33 = load %struct.subsys_interface*, %struct.subsys_interface** %3, align 8
  %34 = getelementptr inbounds %struct.subsys_interface, %struct.subsys_interface* %33, i32 0, i32 1
  %35 = load %struct.bus_type*, %struct.bus_type** %4, align 8
  %36 = getelementptr inbounds %struct.bus_type, %struct.bus_type* %35, i32 0, i32 0
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 1
  %39 = call i32 @list_add_tail(i32* %34, i32* %38)
  %40 = load %struct.subsys_interface*, %struct.subsys_interface** %3, align 8
  %41 = getelementptr inbounds %struct.subsys_interface, %struct.subsys_interface* %40, i32 0, i32 0
  %42 = load i32 (%struct.device*, %struct.subsys_interface*)*, i32 (%struct.device*, %struct.subsys_interface*)** %41, align 8
  %43 = icmp ne i32 (%struct.device*, %struct.subsys_interface*)* %42, null
  br i1 %43, label %44, label %60

44:                                               ; preds = %27
  %45 = load %struct.bus_type*, %struct.bus_type** %4, align 8
  %46 = call i32 @subsys_dev_iter_init(%struct.subsys_dev_iter* %5, %struct.bus_type* %45, i32* null, i32* null)
  br label %47

47:                                               ; preds = %50, %44
  %48 = call %struct.device.0* @subsys_dev_iter_next(%struct.subsys_dev_iter* %5)
  store %struct.device.0* %48, %struct.device.0** %6, align 8
  %49 = icmp ne %struct.device.0* %48, null
  br i1 %49, label %50, label %58

50:                                               ; preds = %47
  %51 = load %struct.subsys_interface*, %struct.subsys_interface** %3, align 8
  %52 = getelementptr inbounds %struct.subsys_interface, %struct.subsys_interface* %51, i32 0, i32 0
  %53 = load i32 (%struct.device*, %struct.subsys_interface*)*, i32 (%struct.device*, %struct.subsys_interface*)** %52, align 8
  %54 = load %struct.device.0*, %struct.device.0** %6, align 8
  %55 = bitcast %struct.device.0* %54 to %struct.device*
  %56 = load %struct.subsys_interface*, %struct.subsys_interface** %3, align 8
  %57 = call i32 %53(%struct.device* %55, %struct.subsys_interface* %56)
  br label %47

58:                                               ; preds = %47
  %59 = call i32 @subsys_dev_iter_exit(%struct.subsys_dev_iter* %5)
  br label %60

60:                                               ; preds = %58, %27
  %61 = load %struct.bus_type*, %struct.bus_type** %4, align 8
  %62 = getelementptr inbounds %struct.bus_type, %struct.bus_type* %61, i32 0, i32 0
  %63 = load %struct.TYPE_2__*, %struct.TYPE_2__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 0
  %65 = call i32 @mutex_unlock(i32* %64)
  store i32 0, i32* %2, align 4
  br label %66

66:                                               ; preds = %60, %24, %14
  %67 = load i32, i32* %2, align 4
  ret i32 %67
}

declare dso_local %struct.bus_type* @bus_get(i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @subsys_dev_iter_init(%struct.subsys_dev_iter*, %struct.bus_type*, i32*, i32*) #1

declare dso_local %struct.device.0* @subsys_dev_iter_next(%struct.subsys_dev_iter*) #1

declare dso_local i32 @subsys_dev_iter_exit(%struct.subsys_dev_iter*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
