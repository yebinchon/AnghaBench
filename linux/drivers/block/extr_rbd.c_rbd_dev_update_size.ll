; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/extr_rbd.c_rbd_dev_update_size.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/extr_rbd.c_rbd_dev_update_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rbd_device = type { i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i64 }

@RBD_DEV_FLAG_EXISTS = common dso_local global i32 0, align 4
@RBD_DEV_FLAG_REMOVING = common dso_local global i32 0, align 4
@SECTOR_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"setting size to %llu sectors\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rbd_device*)* @rbd_dev_update_size to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rbd_dev_update_size(%struct.rbd_device* %0) #0 {
  %2 = alloca %struct.rbd_device*, align 8
  %3 = alloca i32, align 4
  store %struct.rbd_device* %0, %struct.rbd_device** %2, align 8
  %4 = load i32, i32* @RBD_DEV_FLAG_EXISTS, align 4
  %5 = load %struct.rbd_device*, %struct.rbd_device** %2, align 8
  %6 = getelementptr inbounds %struct.rbd_device, %struct.rbd_device* %5, i32 0, i32 2
  %7 = call i64 @test_bit(i32 %4, i32* %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %35

9:                                                ; preds = %1
  %10 = load i32, i32* @RBD_DEV_FLAG_REMOVING, align 4
  %11 = load %struct.rbd_device*, %struct.rbd_device** %2, align 8
  %12 = getelementptr inbounds %struct.rbd_device, %struct.rbd_device* %11, i32 0, i32 2
  %13 = call i64 @test_bit(i32 %10, i32* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %35, label %15

15:                                               ; preds = %9
  %16 = load %struct.rbd_device*, %struct.rbd_device** %2, align 8
  %17 = getelementptr inbounds %struct.rbd_device, %struct.rbd_device* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = trunc i64 %19 to i32
  %21 = load i32, i32* @SECTOR_SIZE, align 4
  %22 = sdiv i32 %20, %21
  store i32 %22, i32* %3, align 4
  %23 = load i32, i32* %3, align 4
  %24 = sext i32 %23 to i64
  %25 = call i32 @dout(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i64 %24)
  %26 = load %struct.rbd_device*, %struct.rbd_device** %2, align 8
  %27 = getelementptr inbounds %struct.rbd_device, %struct.rbd_device* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* %3, align 4
  %30 = call i32 @set_capacity(i32 %28, i32 %29)
  %31 = load %struct.rbd_device*, %struct.rbd_device** %2, align 8
  %32 = getelementptr inbounds %struct.rbd_device, %struct.rbd_device* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = call i32 @revalidate_disk(i32 %33)
  br label %35

35:                                               ; preds = %15, %9, %1
  ret void
}

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @dout(i8*, i64) #1

declare dso_local i32 @set_capacity(i32, i32) #1

declare dso_local i32 @revalidate_disk(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
