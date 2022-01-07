; ModuleID = '/home/carl/AnghaBench/linux/drivers/char/extr_virtio_console.c_in_intr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/char/extr_virtio_console.c_in_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.virtqueue = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }
%struct.port = type { %struct.TYPE_5__, i32, i32, %struct.TYPE_4__*, i32, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.virtqueue*)* @in_intr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @in_intr(%struct.virtqueue* %0) #0 {
  %2 = alloca %struct.virtqueue*, align 8
  %3 = alloca %struct.port*, align 8
  %4 = alloca i64, align 8
  store %struct.virtqueue* %0, %struct.virtqueue** %2, align 8
  %5 = load %struct.virtqueue*, %struct.virtqueue** %2, align 8
  %6 = getelementptr inbounds %struct.virtqueue, %struct.virtqueue* %5, i32 0, i32 0
  %7 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load %struct.virtqueue*, %struct.virtqueue** %2, align 8
  %11 = call %struct.port* @find_port_by_vq(i32 %9, %struct.virtqueue* %10)
  store %struct.port* %11, %struct.port** %3, align 8
  %12 = load %struct.port*, %struct.port** %3, align 8
  %13 = icmp ne %struct.port* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %1
  %15 = load %struct.virtqueue*, %struct.virtqueue** %2, align 8
  %16 = call i32 @flush_bufs(%struct.virtqueue* %15, i32 0)
  br label %63

17:                                               ; preds = %1
  %18 = load %struct.port*, %struct.port** %3, align 8
  %19 = getelementptr inbounds %struct.port, %struct.port* %18, i32 0, i32 2
  %20 = load i64, i64* %4, align 8
  %21 = call i32 @spin_lock_irqsave(i32* %19, i64 %20)
  %22 = load %struct.port*, %struct.port** %3, align 8
  %23 = call i32 @get_inbuf(%struct.port* %22)
  %24 = load %struct.port*, %struct.port** %3, align 8
  %25 = getelementptr inbounds %struct.port, %struct.port* %24, i32 0, i32 5
  store i32 %23, i32* %25, align 4
  %26 = load %struct.port*, %struct.port** %3, align 8
  %27 = getelementptr inbounds %struct.port, %struct.port* %26, i32 0, i32 4
  %28 = load i32, i32* %27, align 8
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %41, label %30

30:                                               ; preds = %17
  %31 = load %struct.port*, %struct.port** %3, align 8
  %32 = getelementptr inbounds %struct.port, %struct.port* %31, i32 0, i32 3
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @is_rproc_serial(i32 %35)
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %41, label %38

38:                                               ; preds = %30
  %39 = load %struct.port*, %struct.port** %3, align 8
  %40 = call i32 @discard_port_data(%struct.port* %39)
  br label %41

41:                                               ; preds = %38, %30, %17
  %42 = load %struct.port*, %struct.port** %3, align 8
  %43 = call i32 @send_sigio_to_port(%struct.port* %42)
  %44 = load %struct.port*, %struct.port** %3, align 8
  %45 = getelementptr inbounds %struct.port, %struct.port* %44, i32 0, i32 2
  %46 = load i64, i64* %4, align 8
  %47 = call i32 @spin_unlock_irqrestore(i32* %45, i64 %46)
  %48 = load %struct.port*, %struct.port** %3, align 8
  %49 = getelementptr inbounds %struct.port, %struct.port* %48, i32 0, i32 1
  %50 = call i32 @wake_up_interruptible(i32* %49)
  %51 = load %struct.port*, %struct.port** %3, align 8
  %52 = call i64 @is_console_port(%struct.port* %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %63

54:                                               ; preds = %41
  %55 = load %struct.port*, %struct.port** %3, align 8
  %56 = getelementptr inbounds %struct.port, %struct.port* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = call i64 @hvc_poll(i32 %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %63

61:                                               ; preds = %54
  %62 = call i32 (...) @hvc_kick()
  br label %63

63:                                               ; preds = %14, %61, %54, %41
  ret void
}

declare dso_local %struct.port* @find_port_by_vq(i32, %struct.virtqueue*) #1

declare dso_local i32 @flush_bufs(%struct.virtqueue*, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @get_inbuf(%struct.port*) #1

declare dso_local i32 @is_rproc_serial(i32) #1

declare dso_local i32 @discard_port_data(%struct.port*) #1

declare dso_local i32 @send_sigio_to_port(%struct.port*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @wake_up_interruptible(i32*) #1

declare dso_local i64 @is_console_port(%struct.port*) #1

declare dso_local i64 @hvc_poll(i32) #1

declare dso_local i32 @hvc_kick(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
