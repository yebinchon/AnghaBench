; ModuleID = '/home/carl/AnghaBench/linux/arch/um/drivers/extr_virtio_uml.c_vhost_user_init_slave_req.c'
source_filename = "/home/carl/AnghaBench/linux/arch/um/drivers/extr_virtio_uml.c_vhost_user_init_slave_req.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.virtio_uml_device = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@VIRTIO_IRQ = common dso_local global i32 0, align 4
@IRQ_READ = common dso_local global i32 0, align 4
@vu_req_interrupt = common dso_local global i32 0, align 4
@IRQF_SHARED = common dso_local global i32 0, align 4
@VHOST_USER_SET_SLAVE_REQ_FD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.virtio_uml_device*)* @vhost_user_init_slave_req to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vhost_user_init_slave_req(%struct.virtio_uml_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.virtio_uml_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca [2 x i32], align 4
  store %struct.virtio_uml_device* %0, %struct.virtio_uml_device** %3, align 8
  %6 = getelementptr inbounds [2 x i32], [2 x i32]* %5, i64 0, i64 0
  %7 = call i32 @os_pipe(i32* %6, i32 1, i32 1)
  store i32 %7, i32* %4, align 4
  %8 = load i32, i32* %4, align 4
  %9 = icmp slt i32 %8, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %1
  %11 = load i32, i32* %4, align 4
  store i32 %11, i32* %2, align 4
  br label %57

12:                                               ; preds = %1
  %13 = getelementptr inbounds [2 x i32], [2 x i32]* %5, i64 0, i64 0
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.virtio_uml_device*, %struct.virtio_uml_device** %3, align 8
  %16 = getelementptr inbounds %struct.virtio_uml_device, %struct.virtio_uml_device* %15, i32 0, i32 0
  store i32 %14, i32* %16, align 8
  %17 = load i32, i32* @VIRTIO_IRQ, align 4
  %18 = load %struct.virtio_uml_device*, %struct.virtio_uml_device** %3, align 8
  %19 = getelementptr inbounds %struct.virtio_uml_device, %struct.virtio_uml_device* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* @IRQ_READ, align 4
  %22 = load i32, i32* @vu_req_interrupt, align 4
  %23 = load i32, i32* @IRQF_SHARED, align 4
  %24 = load %struct.virtio_uml_device*, %struct.virtio_uml_device** %3, align 8
  %25 = getelementptr inbounds %struct.virtio_uml_device, %struct.virtio_uml_device* %24, i32 0, i32 1
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.virtio_uml_device*, %struct.virtio_uml_device** %3, align 8
  %30 = call i32 @um_request_irq(i32 %17, i32 %20, i32 %21, i32 %22, i32 %23, i32 %28, %struct.virtio_uml_device* %29)
  store i32 %30, i32* %4, align 4
  %31 = load i32, i32* %4, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %12
  br label %48

34:                                               ; preds = %12
  %35 = load %struct.virtio_uml_device*, %struct.virtio_uml_device** %3, align 8
  %36 = load i32, i32* @VHOST_USER_SET_SLAVE_REQ_FD, align 4
  %37 = getelementptr inbounds [2 x i32], [2 x i32]* %5, i64 0, i64 1
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @vhost_user_send_no_payload_fd(%struct.virtio_uml_device* %35, i32 %36, i32 %38)
  store i32 %39, i32* %4, align 4
  %40 = load i32, i32* %4, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %34
  br label %44

43:                                               ; preds = %34
  br label %52

44:                                               ; preds = %42
  %45 = load i32, i32* @VIRTIO_IRQ, align 4
  %46 = load %struct.virtio_uml_device*, %struct.virtio_uml_device** %3, align 8
  %47 = call i32 @um_free_irq(i32 %45, %struct.virtio_uml_device* %46)
  br label %48

48:                                               ; preds = %44, %33
  %49 = getelementptr inbounds [2 x i32], [2 x i32]* %5, i64 0, i64 0
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @os_close_file(i32 %50)
  br label %52

52:                                               ; preds = %48, %43
  %53 = getelementptr inbounds [2 x i32], [2 x i32]* %5, i64 0, i64 1
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @os_close_file(i32 %54)
  %56 = load i32, i32* %4, align 4
  store i32 %56, i32* %2, align 4
  br label %57

57:                                               ; preds = %52, %10
  %58 = load i32, i32* %2, align 4
  ret i32 %58
}

declare dso_local i32 @os_pipe(i32*, i32, i32) #1

declare dso_local i32 @um_request_irq(i32, i32, i32, i32, i32, i32, %struct.virtio_uml_device*) #1

declare dso_local i32 @vhost_user_send_no_payload_fd(%struct.virtio_uml_device*, i32, i32) #1

declare dso_local i32 @um_free_irq(i32, %struct.virtio_uml_device*) #1

declare dso_local i32 @os_close_file(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
