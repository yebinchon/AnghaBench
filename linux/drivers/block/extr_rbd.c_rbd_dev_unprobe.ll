; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/extr_rbd.c_rbd_dev_unprobe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/extr_rbd.c_rbd_dev_unprobe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rbd_device = type { %struct.rbd_image_header }
%struct.rbd_image_header = type { i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rbd_device*)* @rbd_dev_unprobe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rbd_dev_unprobe(%struct.rbd_device* %0) #0 {
  %2 = alloca %struct.rbd_device*, align 8
  %3 = alloca %struct.rbd_image_header*, align 8
  store %struct.rbd_device* %0, %struct.rbd_device** %2, align 8
  %4 = load %struct.rbd_device*, %struct.rbd_device** %2, align 8
  %5 = call i32 @rbd_dev_parent_put(%struct.rbd_device* %4)
  %6 = load %struct.rbd_device*, %struct.rbd_device** %2, align 8
  %7 = call i32 @rbd_object_map_free(%struct.rbd_device* %6)
  %8 = load %struct.rbd_device*, %struct.rbd_device** %2, align 8
  %9 = call i32 @rbd_dev_mapping_clear(%struct.rbd_device* %8)
  %10 = load %struct.rbd_device*, %struct.rbd_device** %2, align 8
  %11 = getelementptr inbounds %struct.rbd_device, %struct.rbd_device* %10, i32 0, i32 0
  store %struct.rbd_image_header* %11, %struct.rbd_image_header** %3, align 8
  %12 = load %struct.rbd_image_header*, %struct.rbd_image_header** %3, align 8
  %13 = getelementptr inbounds %struct.rbd_image_header, %struct.rbd_image_header* %12, i32 0, i32 3
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @ceph_put_snap_context(i32 %14)
  %16 = load %struct.rbd_image_header*, %struct.rbd_image_header** %3, align 8
  %17 = getelementptr inbounds %struct.rbd_image_header, %struct.rbd_image_header* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @kfree(i32 %18)
  %20 = load %struct.rbd_image_header*, %struct.rbd_image_header** %3, align 8
  %21 = getelementptr inbounds %struct.rbd_image_header, %struct.rbd_image_header* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @kfree(i32 %22)
  %24 = load %struct.rbd_image_header*, %struct.rbd_image_header** %3, align 8
  %25 = getelementptr inbounds %struct.rbd_image_header, %struct.rbd_image_header* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @kfree(i32 %26)
  %28 = load %struct.rbd_image_header*, %struct.rbd_image_header** %3, align 8
  %29 = call i32 @memset(%struct.rbd_image_header* %28, i32 0, i32 16)
  ret void
}

declare dso_local i32 @rbd_dev_parent_put(%struct.rbd_device*) #1

declare dso_local i32 @rbd_object_map_free(%struct.rbd_device*) #1

declare dso_local i32 @rbd_dev_mapping_clear(%struct.rbd_device*) #1

declare dso_local i32 @ceph_put_snap_context(i32) #1

declare dso_local i32 @kfree(i32) #1

declare dso_local i32 @memset(%struct.rbd_image_header*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
