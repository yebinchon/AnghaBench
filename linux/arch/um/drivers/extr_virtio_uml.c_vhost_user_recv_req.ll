; ModuleID = '/home/carl/AnghaBench/linux/arch/um/drivers/extr_virtio_uml.c_vhost_user_recv_req.c'
source_filename = "/home/carl/AnghaBench/linux/arch/um/drivers/extr_virtio_uml.c_vhost_user_recv_req.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.virtio_uml_device = type { i32 }
%struct.vhost_user_msg = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@VHOST_USER_FLAG_NEED_REPLY = common dso_local global i32 0, align 4
@VHOST_USER_VERSION = common dso_local global i32 0, align 4
@EPROTO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.virtio_uml_device*, %struct.vhost_user_msg*, i64)* @vhost_user_recv_req to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vhost_user_recv_req(%struct.virtio_uml_device* %0, %struct.vhost_user_msg* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.virtio_uml_device*, align 8
  %6 = alloca %struct.vhost_user_msg*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.virtio_uml_device* %0, %struct.virtio_uml_device** %5, align 8
  store %struct.vhost_user_msg* %1, %struct.vhost_user_msg** %6, align 8
  store i64 %2, i64* %7, align 8
  %9 = load %struct.virtio_uml_device*, %struct.virtio_uml_device** %5, align 8
  %10 = getelementptr inbounds %struct.virtio_uml_device, %struct.virtio_uml_device* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load %struct.vhost_user_msg*, %struct.vhost_user_msg** %6, align 8
  %13 = load i64, i64* %7, align 8
  %14 = call i32 @vhost_user_recv(i32 %11, %struct.vhost_user_msg* %12, i64 %13)
  store i32 %14, i32* %8, align 4
  %15 = load i32, i32* %8, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %3
  %18 = load i32, i32* %8, align 4
  store i32 %18, i32* %4, align 4
  br label %33

19:                                               ; preds = %3
  %20 = load %struct.vhost_user_msg*, %struct.vhost_user_msg** %6, align 8
  %21 = getelementptr inbounds %struct.vhost_user_msg, %struct.vhost_user_msg* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @VHOST_USER_FLAG_NEED_REPLY, align 4
  %25 = xor i32 %24, -1
  %26 = and i32 %23, %25
  %27 = load i32, i32* @VHOST_USER_VERSION, align 4
  %28 = icmp ne i32 %26, %27
  br i1 %28, label %29, label %32

29:                                               ; preds = %19
  %30 = load i32, i32* @EPROTO, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %4, align 4
  br label %33

32:                                               ; preds = %19
  store i32 0, i32* %4, align 4
  br label %33

33:                                               ; preds = %32, %29, %17
  %34 = load i32, i32* %4, align 4
  ret i32 %34
}

declare dso_local i32 @vhost_user_recv(i32, %struct.vhost_user_msg*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
