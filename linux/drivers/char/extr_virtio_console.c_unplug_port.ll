; ModuleID = '/home/carl/AnghaBench/linux/drivers/char/extr_virtio_console.c_unplug_port.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/char/extr_virtio_console.c_unplug_port.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 }
%struct.port = type { i32, i32, i32, i32, i32, i32, %struct.TYPE_7__*, %struct.TYPE_6__*, %struct.TYPE_5__, i32, i32, i32 }
%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32, i32 }

@pdrvdata_lock = common dso_local global i32 0, align 4
@port_attribute_group = common dso_local global i32 0, align 4
@pdrvdata = common dso_local global %struct.TYPE_8__ zeroinitializer, align 4
@remove_port = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.port*)* @unplug_port to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @unplug_port(%struct.port* %0) #0 {
  %2 = alloca %struct.port*, align 8
  store %struct.port* %0, %struct.port** %2, align 8
  %3 = load %struct.port*, %struct.port** %2, align 8
  %4 = getelementptr inbounds %struct.port, %struct.port* %3, i32 0, i32 7
  %5 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %6 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %5, i32 0, i32 0
  %7 = call i32 @spin_lock_irq(i32* %6)
  %8 = load %struct.port*, %struct.port** %2, align 8
  %9 = getelementptr inbounds %struct.port, %struct.port* %8, i32 0, i32 11
  %10 = call i32 @list_del(i32* %9)
  %11 = load %struct.port*, %struct.port** %2, align 8
  %12 = getelementptr inbounds %struct.port, %struct.port* %11, i32 0, i32 7
  %13 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 0
  %15 = call i32 @spin_unlock_irq(i32* %14)
  %16 = load %struct.port*, %struct.port** %2, align 8
  %17 = getelementptr inbounds %struct.port, %struct.port* %16, i32 0, i32 9
  %18 = call i32 @spin_lock_irq(i32* %17)
  %19 = load %struct.port*, %struct.port** %2, align 8
  %20 = getelementptr inbounds %struct.port, %struct.port* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %33

23:                                               ; preds = %1
  %24 = load %struct.port*, %struct.port** %2, align 8
  %25 = call i32 @send_sigio_to_port(%struct.port* %24)
  %26 = load %struct.port*, %struct.port** %2, align 8
  %27 = getelementptr inbounds %struct.port, %struct.port* %26, i32 0, i32 0
  store i32 0, i32* %27, align 8
  %28 = load %struct.port*, %struct.port** %2, align 8
  %29 = getelementptr inbounds %struct.port, %struct.port* %28, i32 0, i32 1
  store i32 0, i32* %29, align 4
  %30 = load %struct.port*, %struct.port** %2, align 8
  %31 = getelementptr inbounds %struct.port, %struct.port* %30, i32 0, i32 10
  %32 = call i32 @wake_up_interruptible(i32* %31)
  br label %33

33:                                               ; preds = %23, %1
  %34 = load %struct.port*, %struct.port** %2, align 8
  %35 = getelementptr inbounds %struct.port, %struct.port* %34, i32 0, i32 9
  %36 = call i32 @spin_unlock_irq(i32* %35)
  %37 = load %struct.port*, %struct.port** %2, align 8
  %38 = call i64 @is_console_port(%struct.port* %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %52

40:                                               ; preds = %33
  %41 = call i32 @spin_lock_irq(i32* @pdrvdata_lock)
  %42 = load %struct.port*, %struct.port** %2, align 8
  %43 = getelementptr inbounds %struct.port, %struct.port* %42, i32 0, i32 8
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 1
  %45 = call i32 @list_del(i32* %44)
  %46 = call i32 @spin_unlock_irq(i32* @pdrvdata_lock)
  %47 = load %struct.port*, %struct.port** %2, align 8
  %48 = getelementptr inbounds %struct.port, %struct.port* %47, i32 0, i32 8
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = call i32 @hvc_remove(i32 %50)
  br label %52

52:                                               ; preds = %40, %33
  %53 = load %struct.port*, %struct.port** %2, align 8
  %54 = call i32 @remove_port_data(%struct.port* %53)
  %55 = load %struct.port*, %struct.port** %2, align 8
  %56 = getelementptr inbounds %struct.port, %struct.port* %55, i32 0, i32 7
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %56, align 8
  %57 = load %struct.port*, %struct.port** %2, align 8
  %58 = getelementptr inbounds %struct.port, %struct.port* %57, i32 0, i32 6
  %59 = load %struct.TYPE_7__*, %struct.TYPE_7__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %59, i32 0, i32 1
  %61 = call i32 @sysfs_remove_group(i32* %60, i32* @port_attribute_group)
  %62 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @pdrvdata, i32 0, i32 0), align 4
  %63 = load %struct.port*, %struct.port** %2, align 8
  %64 = getelementptr inbounds %struct.port, %struct.port* %63, i32 0, i32 6
  %65 = load %struct.TYPE_7__*, %struct.TYPE_7__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @device_destroy(i32 %62, i32 %67)
  %69 = load %struct.port*, %struct.port** %2, align 8
  %70 = getelementptr inbounds %struct.port, %struct.port* %69, i32 0, i32 5
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @cdev_del(i32 %71)
  %73 = load %struct.port*, %struct.port** %2, align 8
  %74 = getelementptr inbounds %struct.port, %struct.port* %73, i32 0, i32 4
  %75 = load i32, i32* %74, align 8
  %76 = call i32 @debugfs_remove(i32 %75)
  %77 = load %struct.port*, %struct.port** %2, align 8
  %78 = getelementptr inbounds %struct.port, %struct.port* %77, i32 0, i32 3
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @kfree(i32 %79)
  %81 = load %struct.port*, %struct.port** %2, align 8
  %82 = getelementptr inbounds %struct.port, %struct.port* %81, i32 0, i32 2
  %83 = load i32, i32* @remove_port, align 4
  %84 = call i32 @kref_put(i32* %82, i32 %83)
  ret void
}

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @send_sigio_to_port(%struct.port*) #1

declare dso_local i32 @wake_up_interruptible(i32*) #1

declare dso_local i64 @is_console_port(%struct.port*) #1

declare dso_local i32 @hvc_remove(i32) #1

declare dso_local i32 @remove_port_data(%struct.port*) #1

declare dso_local i32 @sysfs_remove_group(i32*, i32*) #1

declare dso_local i32 @device_destroy(i32, i32) #1

declare dso_local i32 @cdev_del(i32) #1

declare dso_local i32 @debugfs_remove(i32) #1

declare dso_local i32 @kfree(i32) #1

declare dso_local i32 @kref_put(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
