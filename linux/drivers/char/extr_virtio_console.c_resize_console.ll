; ModuleID = '/home/carl/AnghaBench/linux/drivers/char/extr_virtio_console.c_resize_console.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/char/extr_virtio_console.c_resize_console.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.port = type { %struct.TYPE_4__, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_3__ = type { %struct.virtio_device* }
%struct.virtio_device = type { i32 }

@VIRTIO_CONSOLE_F_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.port*)* @resize_console to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @resize_console(%struct.port* %0) #0 {
  %2 = alloca %struct.port*, align 8
  %3 = alloca %struct.virtio_device*, align 8
  store %struct.port* %0, %struct.port** %2, align 8
  %4 = load %struct.port*, %struct.port** %2, align 8
  %5 = icmp ne %struct.port* %4, null
  br i1 %5, label %6, label %10

6:                                                ; preds = %1
  %7 = load %struct.port*, %struct.port** %2, align 8
  %8 = call i32 @is_console_port(%struct.port* %7)
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %6, %1
  br label %35

11:                                               ; preds = %6
  %12 = load %struct.port*, %struct.port** %2, align 8
  %13 = getelementptr inbounds %struct.port, %struct.port* %12, i32 0, i32 1
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load %struct.virtio_device*, %struct.virtio_device** %15, align 8
  store %struct.virtio_device* %16, %struct.virtio_device** %3, align 8
  %17 = load %struct.virtio_device*, %struct.virtio_device** %3, align 8
  %18 = call i32 @is_rproc_serial(%struct.virtio_device* %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %35, label %20

20:                                               ; preds = %11
  %21 = load %struct.virtio_device*, %struct.virtio_device** %3, align 8
  %22 = load i32, i32* @VIRTIO_CONSOLE_F_SIZE, align 4
  %23 = call i64 @virtio_has_feature(%struct.virtio_device* %21, i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %35

25:                                               ; preds = %20
  %26 = load %struct.port*, %struct.port** %2, align 8
  %27 = getelementptr inbounds %struct.port, %struct.port* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.port*, %struct.port** %2, align 8
  %31 = getelementptr inbounds %struct.port, %struct.port* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = call i32 @hvc_resize(i32 %29, i32 %33)
  br label %35

35:                                               ; preds = %10, %25, %20, %11
  ret void
}

declare dso_local i32 @is_console_port(%struct.port*) #1

declare dso_local i32 @is_rproc_serial(%struct.virtio_device*) #1

declare dso_local i64 @virtio_has_feature(%struct.virtio_device*, i32) #1

declare dso_local i32 @hvc_resize(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
