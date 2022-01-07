; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/extr_nbd.c_nbd_release.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/extr_nbd.c_nbd_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gendisk = type { %struct.nbd_device* }
%struct.nbd_device = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.block_device = type { i64 }

@NBD_RT_DISCONNECT_ON_CLOSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gendisk*, i32)* @nbd_release to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nbd_release(%struct.gendisk* %0, i32 %1) #0 {
  %3 = alloca %struct.gendisk*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.nbd_device*, align 8
  %6 = alloca %struct.block_device*, align 8
  store %struct.gendisk* %0, %struct.gendisk** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.gendisk*, %struct.gendisk** %3, align 8
  %8 = getelementptr inbounds %struct.gendisk, %struct.gendisk* %7, i32 0, i32 0
  %9 = load %struct.nbd_device*, %struct.nbd_device** %8, align 8
  store %struct.nbd_device* %9, %struct.nbd_device** %5, align 8
  %10 = load %struct.gendisk*, %struct.gendisk** %3, align 8
  %11 = call %struct.block_device* @bdget_disk(%struct.gendisk* %10, i32 0)
  store %struct.block_device* %11, %struct.block_device** %6, align 8
  %12 = load i32, i32* @NBD_RT_DISCONNECT_ON_CLOSE, align 4
  %13 = load %struct.nbd_device*, %struct.nbd_device** %5, align 8
  %14 = getelementptr inbounds %struct.nbd_device, %struct.nbd_device* %13, i32 0, i32 0
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = call i64 @test_bit(i32 %12, i32* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %27

19:                                               ; preds = %2
  %20 = load %struct.block_device*, %struct.block_device** %6, align 8
  %21 = getelementptr inbounds %struct.block_device, %struct.block_device* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp eq i64 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %19
  %25 = load %struct.nbd_device*, %struct.nbd_device** %5, align 8
  %26 = call i32 @nbd_disconnect_and_put(%struct.nbd_device* %25)
  br label %27

27:                                               ; preds = %24, %19, %2
  %28 = load %struct.nbd_device*, %struct.nbd_device** %5, align 8
  %29 = call i32 @nbd_config_put(%struct.nbd_device* %28)
  %30 = load %struct.nbd_device*, %struct.nbd_device** %5, align 8
  %31 = call i32 @nbd_put(%struct.nbd_device* %30)
  ret void
}

declare dso_local %struct.block_device* @bdget_disk(%struct.gendisk*, i32) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @nbd_disconnect_and_put(%struct.nbd_device*) #1

declare dso_local i32 @nbd_config_put(%struct.nbd_device*) #1

declare dso_local i32 @nbd_put(%struct.nbd_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
