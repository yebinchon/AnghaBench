; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/extr_pktcdvd.c_pkt_ioctl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/extr_pktcdvd.c_pkt_ioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.block_device = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.pktcdvd_device* }
%struct.pktcdvd_device = type { i32, i32 }

@.str = private unnamed_addr constant [19 x i8] c"cmd %x, dev %d:%d\0A\00", align 1
@pktcdvd_mutex = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"Unknown ioctl (%x)\0A\00", align 1
@ENOTTY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.block_device*, i32, i32, i64)* @pkt_ioctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pkt_ioctl(%struct.block_device* %0, i32 %1, i32 %2, i64 %3) #0 {
  %5 = alloca %struct.block_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca %struct.pktcdvd_device*, align 8
  %10 = alloca i32, align 4
  store %struct.block_device* %0, %struct.block_device** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i64 %3, i64* %8, align 8
  %11 = load %struct.block_device*, %struct.block_device** %5, align 8
  %12 = getelementptr inbounds %struct.block_device, %struct.block_device* %11, i32 0, i32 1
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load %struct.pktcdvd_device*, %struct.pktcdvd_device** %14, align 8
  store %struct.pktcdvd_device* %15, %struct.pktcdvd_device** %9, align 8
  %16 = load %struct.pktcdvd_device*, %struct.pktcdvd_device** %9, align 8
  %17 = load i32, i32* %7, align 4
  %18 = load %struct.block_device*, %struct.block_device** %5, align 8
  %19 = getelementptr inbounds %struct.block_device, %struct.block_device* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = call i32 @MAJOR(i32 %20)
  %22 = load %struct.block_device*, %struct.block_device** %5, align 8
  %23 = getelementptr inbounds %struct.block_device, %struct.block_device* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = call i32 @MINOR(i32 %24)
  %26 = call i32 (i32, %struct.pktcdvd_device*, i8*, i32, ...) @pkt_dbg(i32 2, %struct.pktcdvd_device* %16, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %17, i32 %21, i32 %25)
  %27 = call i32 @mutex_lock(i32* @pktcdvd_mutex)
  %28 = load i32, i32* %7, align 4
  switch i32 %28, label %46 [
    i32 133, label %29
    i32 132, label %38
    i32 131, label %38
    i32 130, label %38
    i32 129, label %38
    i32 128, label %38
  ]

29:                                               ; preds = %4
  %30 = load %struct.pktcdvd_device*, %struct.pktcdvd_device** %9, align 8
  %31 = getelementptr inbounds %struct.pktcdvd_device, %struct.pktcdvd_device* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = icmp eq i32 %32, 1
  br i1 %33, label %34, label %37

34:                                               ; preds = %29
  %35 = load %struct.pktcdvd_device*, %struct.pktcdvd_device** %9, align 8
  %36 = call i32 @pkt_lock_door(%struct.pktcdvd_device* %35, i32 0)
  br label %37

37:                                               ; preds = %34, %29
  br label %38

38:                                               ; preds = %4, %4, %4, %4, %4, %37
  %39 = load %struct.pktcdvd_device*, %struct.pktcdvd_device** %9, align 8
  %40 = getelementptr inbounds %struct.pktcdvd_device, %struct.pktcdvd_device* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* %6, align 4
  %43 = load i32, i32* %7, align 4
  %44 = load i64, i64* %8, align 8
  %45 = call i32 @__blkdev_driver_ioctl(i32 %41, i32 %42, i32 %43, i64 %44)
  store i32 %45, i32* %10, align 4
  br label %52

46:                                               ; preds = %4
  %47 = load %struct.pktcdvd_device*, %struct.pktcdvd_device** %9, align 8
  %48 = load i32, i32* %7, align 4
  %49 = call i32 (i32, %struct.pktcdvd_device*, i8*, i32, ...) @pkt_dbg(i32 2, %struct.pktcdvd_device* %47, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 %48)
  %50 = load i32, i32* @ENOTTY, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %10, align 4
  br label %52

52:                                               ; preds = %46, %38
  %53 = call i32 @mutex_unlock(i32* @pktcdvd_mutex)
  %54 = load i32, i32* %10, align 4
  ret i32 %54
}

declare dso_local i32 @pkt_dbg(i32, %struct.pktcdvd_device*, i8*, i32, ...) #1

declare dso_local i32 @MAJOR(i32) #1

declare dso_local i32 @MINOR(i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @pkt_lock_door(%struct.pktcdvd_device*, i32) #1

declare dso_local i32 @__blkdev_driver_ioctl(i32, i32, i32, i64) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
