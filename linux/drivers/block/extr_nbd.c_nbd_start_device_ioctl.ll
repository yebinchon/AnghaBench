; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/extr_nbd.c_nbd_start_device_ioctl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/extr_nbd.c_nbd_start_device_ioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nbd_device = type { i32, i32, %struct.nbd_config* }
%struct.nbd_config = type { i32, i32, i32 }
%struct.block_device = type { i32 }

@max_part = common dso_local global i64 0, align 8
@NBD_RT_DISCONNECT_REQUESTED = common dso_local global i32 0, align 4
@NBD_RT_TIMEDOUT = common dso_local global i32 0, align 4
@ETIMEDOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nbd_device*, %struct.block_device*)* @nbd_start_device_ioctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nbd_start_device_ioctl(%struct.nbd_device* %0, %struct.block_device* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.nbd_device*, align 8
  %5 = alloca %struct.block_device*, align 8
  %6 = alloca %struct.nbd_config*, align 8
  %7 = alloca i32, align 4
  store %struct.nbd_device* %0, %struct.nbd_device** %4, align 8
  store %struct.block_device* %1, %struct.block_device** %5, align 8
  %8 = load %struct.nbd_device*, %struct.nbd_device** %4, align 8
  %9 = getelementptr inbounds %struct.nbd_device, %struct.nbd_device* %8, i32 0, i32 2
  %10 = load %struct.nbd_config*, %struct.nbd_config** %9, align 8
  store %struct.nbd_config* %10, %struct.nbd_config** %6, align 8
  %11 = load %struct.nbd_device*, %struct.nbd_device** %4, align 8
  %12 = call i32 @nbd_start_device(%struct.nbd_device* %11)
  store i32 %12, i32* %7, align 4
  %13 = load i32, i32* %7, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %2
  %16 = load i32, i32* %7, align 4
  store i32 %16, i32* %3, align 4
  br label %68

17:                                               ; preds = %2
  %18 = load i64, i64* @max_part, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %17
  %21 = load %struct.block_device*, %struct.block_device** %5, align 8
  %22 = getelementptr inbounds %struct.block_device, %struct.block_device* %21, i32 0, i32 0
  store i32 1, i32* %22, align 4
  br label %23

23:                                               ; preds = %20, %17
  %24 = load %struct.nbd_device*, %struct.nbd_device** %4, align 8
  %25 = getelementptr inbounds %struct.nbd_device, %struct.nbd_device* %24, i32 0, i32 0
  %26 = call i32 @mutex_unlock(i32* %25)
  %27 = load %struct.nbd_config*, %struct.nbd_config** %6, align 8
  %28 = getelementptr inbounds %struct.nbd_config, %struct.nbd_config* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.nbd_config*, %struct.nbd_config** %6, align 8
  %31 = getelementptr inbounds %struct.nbd_config, %struct.nbd_config* %30, i32 0, i32 1
  %32 = call i64 @atomic_read(i32* %31)
  %33 = icmp eq i64 %32, 0
  %34 = zext i1 %33 to i32
  %35 = call i32 @wait_event_interruptible(i32 %29, i32 %34)
  store i32 %35, i32* %7, align 4
  %36 = load i32, i32* %7, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %45

38:                                               ; preds = %23
  %39 = load %struct.nbd_device*, %struct.nbd_device** %4, align 8
  %40 = call i32 @sock_shutdown(%struct.nbd_device* %39)
  %41 = load %struct.nbd_device*, %struct.nbd_device** %4, align 8
  %42 = getelementptr inbounds %struct.nbd_device, %struct.nbd_device* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @flush_workqueue(i32 %43)
  br label %45

45:                                               ; preds = %38, %23
  %46 = load %struct.nbd_device*, %struct.nbd_device** %4, align 8
  %47 = getelementptr inbounds %struct.nbd_device, %struct.nbd_device* %46, i32 0, i32 0
  %48 = call i32 @mutex_lock(i32* %47)
  %49 = load %struct.block_device*, %struct.block_device** %5, align 8
  %50 = call i32 @nbd_bdev_reset(%struct.block_device* %49)
  %51 = load i32, i32* @NBD_RT_DISCONNECT_REQUESTED, align 4
  %52 = load %struct.nbd_config*, %struct.nbd_config** %6, align 8
  %53 = getelementptr inbounds %struct.nbd_config, %struct.nbd_config* %52, i32 0, i32 0
  %54 = call i64 @test_bit(i32 %51, i32* %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %45
  store i32 0, i32* %7, align 4
  br label %57

57:                                               ; preds = %56, %45
  %58 = load i32, i32* @NBD_RT_TIMEDOUT, align 4
  %59 = load %struct.nbd_config*, %struct.nbd_config** %6, align 8
  %60 = getelementptr inbounds %struct.nbd_config, %struct.nbd_config* %59, i32 0, i32 0
  %61 = call i64 @test_bit(i32 %58, i32* %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %66

63:                                               ; preds = %57
  %64 = load i32, i32* @ETIMEDOUT, align 4
  %65 = sub nsw i32 0, %64
  store i32 %65, i32* %7, align 4
  br label %66

66:                                               ; preds = %63, %57
  %67 = load i32, i32* %7, align 4
  store i32 %67, i32* %3, align 4
  br label %68

68:                                               ; preds = %66, %15
  %69 = load i32, i32* %3, align 4
  ret i32 %69
}

declare dso_local i32 @nbd_start_device(%struct.nbd_device*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @wait_event_interruptible(i32, i32) #1

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i32 @sock_shutdown(%struct.nbd_device*) #1

declare dso_local i32 @flush_workqueue(i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @nbd_bdev_reset(%struct.block_device*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
