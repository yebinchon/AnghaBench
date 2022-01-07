; ModuleID = '/home/carl/AnghaBench/linux/arch/um/drivers/extr_virtio_uml.c_vu_del_vq.c'
source_filename = "/home/carl/AnghaBench/linux/arch/um/drivers/extr_virtio_uml.c_vu_del_vq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.virtqueue = type { %struct.virtio_uml_vq_info* }
%struct.virtio_uml_vq_info = type { i32, i32 }

@VIRTIO_IRQ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.virtqueue*)* @vu_del_vq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vu_del_vq(%struct.virtqueue* %0) #0 {
  %2 = alloca %struct.virtqueue*, align 8
  %3 = alloca %struct.virtio_uml_vq_info*, align 8
  store %struct.virtqueue* %0, %struct.virtqueue** %2, align 8
  %4 = load %struct.virtqueue*, %struct.virtqueue** %2, align 8
  %5 = getelementptr inbounds %struct.virtqueue, %struct.virtqueue* %4, i32 0, i32 0
  %6 = load %struct.virtio_uml_vq_info*, %struct.virtio_uml_vq_info** %5, align 8
  store %struct.virtio_uml_vq_info* %6, %struct.virtio_uml_vq_info** %3, align 8
  %7 = load i32, i32* @VIRTIO_IRQ, align 4
  %8 = load %struct.virtqueue*, %struct.virtqueue** %2, align 8
  %9 = call i32 @um_free_irq(i32 %7, %struct.virtqueue* %8)
  %10 = load %struct.virtio_uml_vq_info*, %struct.virtio_uml_vq_info** %3, align 8
  %11 = getelementptr inbounds %struct.virtio_uml_vq_info, %struct.virtio_uml_vq_info* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @os_close_file(i32 %12)
  %14 = load %struct.virtio_uml_vq_info*, %struct.virtio_uml_vq_info** %3, align 8
  %15 = getelementptr inbounds %struct.virtio_uml_vq_info, %struct.virtio_uml_vq_info* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @os_close_file(i32 %16)
  %18 = load %struct.virtqueue*, %struct.virtqueue** %2, align 8
  %19 = call i32 @vring_del_virtqueue(%struct.virtqueue* %18)
  %20 = load %struct.virtio_uml_vq_info*, %struct.virtio_uml_vq_info** %3, align 8
  %21 = call i32 @kfree(%struct.virtio_uml_vq_info* %20)
  ret void
}

declare dso_local i32 @um_free_irq(i32, %struct.virtqueue*) #1

declare dso_local i32 @os_close_file(i32) #1

declare dso_local i32 @vring_del_virtqueue(%struct.virtqueue*) #1

declare dso_local i32 @kfree(%struct.virtio_uml_vq_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
