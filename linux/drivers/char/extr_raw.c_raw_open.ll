; ModuleID = '/home/carl/AnghaBench/linux/drivers/char/extr_raw.c_raw_open.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/char/extr_raw.c_raw_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, %struct.block_device* }
%struct.block_device = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.inode = type { i32 }
%struct.file = type { i32, %struct.block_device*, i32, i32, i32* }
%struct.TYPE_6__ = type { i32 }

@raw_ctl_fops = common dso_local global i32 0, align 4
@raw_mutex = common dso_local global i32 0, align 4
@raw_devices = common dso_local global %struct.TYPE_5__* null, align 8
@ENODEV = common dso_local global i32 0, align 4
@FMODE_EXCL = common dso_local global i32 0, align 4
@O_DIRECT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.file*)* @raw_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @raw_open(%struct.inode* %0, %struct.file* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.file*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.block_device*, align 8
  %8 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %4, align 8
  store %struct.file* %1, %struct.file** %5, align 8
  %9 = load %struct.inode*, %struct.inode** %4, align 8
  %10 = call i32 @iminor(%struct.inode* %9)
  store i32 %10, i32* %6, align 4
  %11 = load i32, i32* %6, align 4
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %2
  %14 = load %struct.file*, %struct.file** %5, align 8
  %15 = getelementptr inbounds %struct.file, %struct.file* %14, i32 0, i32 4
  store i32* @raw_ctl_fops, i32** %15, align 8
  store i32 0, i32* %3, align 4
  br label %96

16:                                               ; preds = %2
  %17 = call i32 @mutex_lock(i32* @raw_mutex)
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** @raw_devices, align 8
  %19 = load i32, i32* %6, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i64 %20
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 1
  %23 = load %struct.block_device*, %struct.block_device** %22, align 8
  store %struct.block_device* %23, %struct.block_device** %7, align 8
  %24 = load i32, i32* @ENODEV, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %8, align 4
  %26 = load %struct.block_device*, %struct.block_device** %7, align 8
  %27 = icmp ne %struct.block_device* %26, null
  br i1 %27, label %29, label %28

28:                                               ; preds = %16
  br label %93

29:                                               ; preds = %16
  %30 = load %struct.block_device*, %struct.block_device** %7, align 8
  %31 = call i32 @bdgrab(%struct.block_device* %30)
  %32 = load %struct.block_device*, %struct.block_device** %7, align 8
  %33 = load %struct.file*, %struct.file** %5, align 8
  %34 = getelementptr inbounds %struct.file, %struct.file* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* @FMODE_EXCL, align 4
  %37 = or i32 %35, %36
  %38 = call i32 @blkdev_get(%struct.block_device* %32, i32 %37, i32 (%struct.inode*, %struct.file*)* @raw_open)
  store i32 %38, i32* %8, align 4
  %39 = load i32, i32* %8, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %29
  br label %93

42:                                               ; preds = %29
  %43 = load %struct.block_device*, %struct.block_device** %7, align 8
  %44 = load %struct.block_device*, %struct.block_device** %7, align 8
  %45 = call i32 @bdev_logical_block_size(%struct.block_device* %44)
  %46 = call i32 @set_blocksize(%struct.block_device* %43, i32 %45)
  store i32 %46, i32* %8, align 4
  %47 = load i32, i32* %8, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %42
  br label %85

50:                                               ; preds = %42
  %51 = load i32, i32* @O_DIRECT, align 4
  %52 = load %struct.file*, %struct.file** %5, align 8
  %53 = getelementptr inbounds %struct.file, %struct.file* %52, i32 0, i32 3
  %54 = load i32, i32* %53, align 4
  %55 = or i32 %54, %51
  store i32 %55, i32* %53, align 4
  %56 = load %struct.block_device*, %struct.block_device** %7, align 8
  %57 = getelementptr inbounds %struct.block_device, %struct.block_device* %56, i32 0, i32 0
  %58 = load %struct.TYPE_4__*, %struct.TYPE_4__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.file*, %struct.file** %5, align 8
  %62 = getelementptr inbounds %struct.file, %struct.file* %61, i32 0, i32 2
  store i32 %60, i32* %62, align 8
  %63 = load %struct.TYPE_5__*, %struct.TYPE_5__** @raw_devices, align 8
  %64 = load i32, i32* %6, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %63, i64 %65
  %67 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %67, align 8
  %70 = icmp eq i32 %69, 1
  br i1 %70, label %71, label %80

71:                                               ; preds = %50
  %72 = load %struct.block_device*, %struct.block_device** %7, align 8
  %73 = getelementptr inbounds %struct.block_device, %struct.block_device* %72, i32 0, i32 0
  %74 = load %struct.TYPE_4__*, %struct.TYPE_4__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = load %struct.file*, %struct.file** %5, align 8
  %78 = call %struct.TYPE_6__* @file_inode(%struct.file* %77)
  %79 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %78, i32 0, i32 0
  store i32 %76, i32* %79, align 4
  br label %80

80:                                               ; preds = %71, %50
  %81 = load %struct.block_device*, %struct.block_device** %7, align 8
  %82 = load %struct.file*, %struct.file** %5, align 8
  %83 = getelementptr inbounds %struct.file, %struct.file* %82, i32 0, i32 1
  store %struct.block_device* %81, %struct.block_device** %83, align 8
  %84 = call i32 @mutex_unlock(i32* @raw_mutex)
  store i32 0, i32* %3, align 4
  br label %96

85:                                               ; preds = %49
  %86 = load %struct.block_device*, %struct.block_device** %7, align 8
  %87 = load %struct.file*, %struct.file** %5, align 8
  %88 = getelementptr inbounds %struct.file, %struct.file* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = load i32, i32* @FMODE_EXCL, align 4
  %91 = or i32 %89, %90
  %92 = call i32 @blkdev_put(%struct.block_device* %86, i32 %91)
  br label %93

93:                                               ; preds = %85, %41, %28
  %94 = call i32 @mutex_unlock(i32* @raw_mutex)
  %95 = load i32, i32* %8, align 4
  store i32 %95, i32* %3, align 4
  br label %96

96:                                               ; preds = %93, %80, %13
  %97 = load i32, i32* %3, align 4
  ret i32 %97
}

declare dso_local i32 @iminor(%struct.inode*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @bdgrab(%struct.block_device*) #1

declare dso_local i32 @blkdev_get(%struct.block_device*, i32, i32 (%struct.inode*, %struct.file*)*) #1

declare dso_local i32 @set_blocksize(%struct.block_device*, i32) #1

declare dso_local i32 @bdev_logical_block_size(%struct.block_device*) #1

declare dso_local %struct.TYPE_6__* @file_inode(%struct.file*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @blkdev_put(%struct.block_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
