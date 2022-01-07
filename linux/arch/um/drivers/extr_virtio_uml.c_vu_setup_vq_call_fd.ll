; ModuleID = '/home/carl/AnghaBench/linux/arch/um/drivers/extr_virtio_uml.c_vu_setup_vq_call_fd.c'
source_filename = "/home/carl/AnghaBench/linux/arch/um/drivers/extr_virtio_uml.c_vu_setup_vq_call_fd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.virtio_uml_device = type { i32 }
%struct.virtqueue = type { i32, %struct.virtio_uml_vq_info* }
%struct.virtio_uml_vq_info = type { i32, i32 }

@VIRTIO_IRQ = common dso_local global i32 0, align 4
@IRQ_READ = common dso_local global i32 0, align 4
@vu_interrupt = common dso_local global i32 0, align 4
@IRQF_SHARED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.virtio_uml_device*, %struct.virtqueue*)* @vu_setup_vq_call_fd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vu_setup_vq_call_fd(%struct.virtio_uml_device* %0, %struct.virtqueue* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.virtio_uml_device*, align 8
  %5 = alloca %struct.virtqueue*, align 8
  %6 = alloca %struct.virtio_uml_vq_info*, align 8
  %7 = alloca [2 x i32], align 4
  %8 = alloca i32, align 4
  store %struct.virtio_uml_device* %0, %struct.virtio_uml_device** %4, align 8
  store %struct.virtqueue* %1, %struct.virtqueue** %5, align 8
  %9 = load %struct.virtqueue*, %struct.virtqueue** %5, align 8
  %10 = getelementptr inbounds %struct.virtqueue, %struct.virtqueue* %9, i32 0, i32 1
  %11 = load %struct.virtio_uml_vq_info*, %struct.virtio_uml_vq_info** %10, align 8
  store %struct.virtio_uml_vq_info* %11, %struct.virtio_uml_vq_info** %6, align 8
  %12 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 0
  %13 = call i32 @os_pipe(i32* %12, i32 1, i32 1)
  store i32 %13, i32* %8, align 4
  %14 = load i32, i32* %8, align 4
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %2
  %17 = load i32, i32* %8, align 4
  store i32 %17, i32* %3, align 4
  br label %63

18:                                               ; preds = %2
  %19 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 0
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.virtio_uml_vq_info*, %struct.virtio_uml_vq_info** %6, align 8
  %22 = getelementptr inbounds %struct.virtio_uml_vq_info, %struct.virtio_uml_vq_info* %21, i32 0, i32 0
  store i32 %20, i32* %22, align 4
  %23 = load i32, i32* @VIRTIO_IRQ, align 4
  %24 = load %struct.virtio_uml_vq_info*, %struct.virtio_uml_vq_info** %6, align 8
  %25 = getelementptr inbounds %struct.virtio_uml_vq_info, %struct.virtio_uml_vq_info* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @IRQ_READ, align 4
  %28 = load i32, i32* @vu_interrupt, align 4
  %29 = load i32, i32* @IRQF_SHARED, align 4
  %30 = load %struct.virtio_uml_vq_info*, %struct.virtio_uml_vq_info** %6, align 8
  %31 = getelementptr inbounds %struct.virtio_uml_vq_info, %struct.virtio_uml_vq_info* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.virtqueue*, %struct.virtqueue** %5, align 8
  %34 = call i32 @um_request_irq(i32 %23, i32 %26, i32 %27, i32 %28, i32 %29, i32 %32, %struct.virtqueue* %33)
  store i32 %34, i32* %8, align 4
  %35 = load i32, i32* %8, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %18
  br label %54

38:                                               ; preds = %18
  %39 = load %struct.virtio_uml_device*, %struct.virtio_uml_device** %4, align 8
  %40 = load %struct.virtqueue*, %struct.virtqueue** %5, align 8
  %41 = getelementptr inbounds %struct.virtqueue, %struct.virtqueue* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 1
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @vhost_user_set_vring_call(%struct.virtio_uml_device* %39, i32 %42, i32 %44)
  store i32 %45, i32* %8, align 4
  %46 = load i32, i32* %8, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %38
  br label %50

49:                                               ; preds = %38
  br label %58

50:                                               ; preds = %48
  %51 = load i32, i32* @VIRTIO_IRQ, align 4
  %52 = load %struct.virtqueue*, %struct.virtqueue** %5, align 8
  %53 = call i32 @um_free_irq(i32 %51, %struct.virtqueue* %52)
  br label %54

54:                                               ; preds = %50, %37
  %55 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 0
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @os_close_file(i32 %56)
  br label %58

58:                                               ; preds = %54, %49
  %59 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 1
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @os_close_file(i32 %60)
  %62 = load i32, i32* %8, align 4
  store i32 %62, i32* %3, align 4
  br label %63

63:                                               ; preds = %58, %16
  %64 = load i32, i32* %3, align 4
  ret i32 %64
}

declare dso_local i32 @os_pipe(i32*, i32, i32) #1

declare dso_local i32 @um_request_irq(i32, i32, i32, i32, i32, i32, %struct.virtqueue*) #1

declare dso_local i32 @vhost_user_set_vring_call(%struct.virtio_uml_device*, i32, i32) #1

declare dso_local i32 @um_free_irq(i32, %struct.virtqueue*) #1

declare dso_local i32 @os_close_file(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
