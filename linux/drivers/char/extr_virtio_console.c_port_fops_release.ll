; ModuleID = '/home/carl/AnghaBench/linux/drivers/char/extr_virtio_console.c_port_fops_release.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/char/extr_virtio_console.c_port_fops_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.file = type { %struct.port* }
%struct.port = type { i32, i32, i32, i32 }

@VIRTIO_CONSOLE_PORT_OPEN = common dso_local global i32 0, align 4
@remove_port = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.file*)* @port_fops_release to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @port_fops_release(%struct.inode* %0, %struct.file* %1) #0 {
  %3 = alloca %struct.inode*, align 8
  %4 = alloca %struct.file*, align 8
  %5 = alloca %struct.port*, align 8
  store %struct.inode* %0, %struct.inode** %3, align 8
  store %struct.file* %1, %struct.file** %4, align 8
  %6 = load %struct.file*, %struct.file** %4, align 8
  %7 = getelementptr inbounds %struct.file, %struct.file* %6, i32 0, i32 0
  %8 = load %struct.port*, %struct.port** %7, align 8
  store %struct.port* %8, %struct.port** %5, align 8
  %9 = load %struct.port*, %struct.port** %5, align 8
  %10 = load i32, i32* @VIRTIO_CONSOLE_PORT_OPEN, align 4
  %11 = call i32 @send_control_msg(%struct.port* %9, i32 %10, i32 0)
  %12 = load %struct.port*, %struct.port** %5, align 8
  %13 = getelementptr inbounds %struct.port, %struct.port* %12, i32 0, i32 3
  %14 = call i32 @spin_lock_irq(i32* %13)
  %15 = load %struct.port*, %struct.port** %5, align 8
  %16 = getelementptr inbounds %struct.port, %struct.port* %15, i32 0, i32 0
  store i32 0, i32* %16, align 4
  %17 = load %struct.port*, %struct.port** %5, align 8
  %18 = call i32 @discard_port_data(%struct.port* %17)
  %19 = load %struct.port*, %struct.port** %5, align 8
  %20 = getelementptr inbounds %struct.port, %struct.port* %19, i32 0, i32 3
  %21 = call i32 @spin_unlock_irq(i32* %20)
  %22 = load %struct.port*, %struct.port** %5, align 8
  %23 = getelementptr inbounds %struct.port, %struct.port* %22, i32 0, i32 2
  %24 = call i32 @spin_lock_irq(i32* %23)
  %25 = load %struct.port*, %struct.port** %5, align 8
  %26 = call i32 @reclaim_consumed_buffers(%struct.port* %25)
  %27 = load %struct.port*, %struct.port** %5, align 8
  %28 = getelementptr inbounds %struct.port, %struct.port* %27, i32 0, i32 2
  %29 = call i32 @spin_unlock_irq(i32* %28)
  %30 = call i32 (...) @reclaim_dma_bufs()
  %31 = load %struct.port*, %struct.port** %5, align 8
  %32 = getelementptr inbounds %struct.port, %struct.port* %31, i32 0, i32 1
  %33 = load i32, i32* @remove_port, align 4
  %34 = call i32 @kref_put(i32* %32, i32 %33)
  ret i32 0
}

declare dso_local i32 @send_control_msg(%struct.port*, i32, i32) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @discard_port_data(%struct.port*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @reclaim_consumed_buffers(%struct.port*) #1

declare dso_local i32 @reclaim_dma_bufs(...) #1

declare dso_local i32 @kref_put(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
