; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/extr_nbd.c_nbd_clear_sock_ioctl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/extr_nbd.c_nbd_clear_sock_ioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nbd_device = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.block_device = type { i32 }

@NBD_RT_HAS_CONFIG_REF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nbd_device*, %struct.block_device*)* @nbd_clear_sock_ioctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nbd_clear_sock_ioctl(%struct.nbd_device* %0, %struct.block_device* %1) #0 {
  %3 = alloca %struct.nbd_device*, align 8
  %4 = alloca %struct.block_device*, align 8
  store %struct.nbd_device* %0, %struct.nbd_device** %3, align 8
  store %struct.block_device* %1, %struct.block_device** %4, align 8
  %5 = load %struct.nbd_device*, %struct.nbd_device** %3, align 8
  %6 = call i32 @sock_shutdown(%struct.nbd_device* %5)
  %7 = load %struct.block_device*, %struct.block_device** %4, align 8
  %8 = call i32 @__invalidate_device(%struct.block_device* %7, i32 1)
  %9 = load %struct.block_device*, %struct.block_device** %4, align 8
  %10 = call i32 @nbd_bdev_reset(%struct.block_device* %9)
  %11 = load i32, i32* @NBD_RT_HAS_CONFIG_REF, align 4
  %12 = load %struct.nbd_device*, %struct.nbd_device** %3, align 8
  %13 = getelementptr inbounds %struct.nbd_device, %struct.nbd_device* %12, i32 0, i32 0
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = call i64 @test_and_clear_bit(i32 %11, i32* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %2
  %19 = load %struct.nbd_device*, %struct.nbd_device** %3, align 8
  %20 = call i32 @nbd_config_put(%struct.nbd_device* %19)
  br label %21

21:                                               ; preds = %18, %2
  ret void
}

declare dso_local i32 @sock_shutdown(%struct.nbd_device*) #1

declare dso_local i32 @__invalidate_device(%struct.block_device*, i32) #1

declare dso_local i32 @nbd_bdev_reset(%struct.block_device*) #1

declare dso_local i64 @test_and_clear_bit(i32, i32*) #1

declare dso_local i32 @nbd_config_put(%struct.nbd_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
