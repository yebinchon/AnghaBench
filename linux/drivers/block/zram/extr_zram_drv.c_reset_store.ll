; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/zram/extr_zram_drv.c_reset_store.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/zram/extr_zram_drv.c_reset_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.zram = type { i32, i32 }
%struct.block_device = type { i32, i64 }

@EINVAL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*, i64)* @reset_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @reset_store(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i16, align 2
  %12 = alloca %struct.zram*, align 8
  %13 = alloca %struct.block_device*, align 8
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %14 = load i8*, i8** %8, align 8
  %15 = call i32 @kstrtou16(i8* %14, i32 10, i16* %11)
  store i32 %15, i32* %10, align 4
  %16 = load i32, i32* %10, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %4
  %19 = load i32, i32* %10, align 4
  store i32 %19, i32* %5, align 4
  br label %85

20:                                               ; preds = %4
  %21 = load i16, i16* %11, align 2
  %22 = icmp ne i16 %21, 0
  br i1 %22, label %26, label %23

23:                                               ; preds = %20
  %24 = load i32, i32* @EINVAL, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %5, align 4
  br label %85

26:                                               ; preds = %20
  %27 = load %struct.device*, %struct.device** %6, align 8
  %28 = call %struct.zram* @dev_to_zram(%struct.device* %27)
  store %struct.zram* %28, %struct.zram** %12, align 8
  %29 = load %struct.zram*, %struct.zram** %12, align 8
  %30 = getelementptr inbounds %struct.zram, %struct.zram* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = call %struct.block_device* @bdget_disk(i32 %31, i32 0)
  store %struct.block_device* %32, %struct.block_device** %13, align 8
  %33 = load %struct.block_device*, %struct.block_device** %13, align 8
  %34 = icmp ne %struct.block_device* %33, null
  br i1 %34, label %38, label %35

35:                                               ; preds = %26
  %36 = load i32, i32* @ENOMEM, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %5, align 4
  br label %85

38:                                               ; preds = %26
  %39 = load %struct.block_device*, %struct.block_device** %13, align 8
  %40 = getelementptr inbounds %struct.block_device, %struct.block_device* %39, i32 0, i32 0
  %41 = call i32 @mutex_lock(i32* %40)
  %42 = load %struct.block_device*, %struct.block_device** %13, align 8
  %43 = getelementptr inbounds %struct.block_device, %struct.block_device* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %51, label %46

46:                                               ; preds = %38
  %47 = load %struct.zram*, %struct.zram** %12, align 8
  %48 = getelementptr inbounds %struct.zram, %struct.zram* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %59

51:                                               ; preds = %46, %38
  %52 = load %struct.block_device*, %struct.block_device** %13, align 8
  %53 = getelementptr inbounds %struct.block_device, %struct.block_device* %52, i32 0, i32 0
  %54 = call i32 @mutex_unlock(i32* %53)
  %55 = load %struct.block_device*, %struct.block_device** %13, align 8
  %56 = call i32 @bdput(%struct.block_device* %55)
  %57 = load i32, i32* @EBUSY, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %5, align 4
  br label %85

59:                                               ; preds = %46
  %60 = load %struct.zram*, %struct.zram** %12, align 8
  %61 = getelementptr inbounds %struct.zram, %struct.zram* %60, i32 0, i32 0
  store i32 1, i32* %61, align 4
  %62 = load %struct.block_device*, %struct.block_device** %13, align 8
  %63 = getelementptr inbounds %struct.block_device, %struct.block_device* %62, i32 0, i32 0
  %64 = call i32 @mutex_unlock(i32* %63)
  %65 = load %struct.block_device*, %struct.block_device** %13, align 8
  %66 = call i32 @fsync_bdev(%struct.block_device* %65)
  %67 = load %struct.zram*, %struct.zram** %12, align 8
  %68 = call i32 @zram_reset_device(%struct.zram* %67)
  %69 = load %struct.zram*, %struct.zram** %12, align 8
  %70 = getelementptr inbounds %struct.zram, %struct.zram* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @revalidate_disk(i32 %71)
  %73 = load %struct.block_device*, %struct.block_device** %13, align 8
  %74 = call i32 @bdput(%struct.block_device* %73)
  %75 = load %struct.block_device*, %struct.block_device** %13, align 8
  %76 = getelementptr inbounds %struct.block_device, %struct.block_device* %75, i32 0, i32 0
  %77 = call i32 @mutex_lock(i32* %76)
  %78 = load %struct.zram*, %struct.zram** %12, align 8
  %79 = getelementptr inbounds %struct.zram, %struct.zram* %78, i32 0, i32 0
  store i32 0, i32* %79, align 4
  %80 = load %struct.block_device*, %struct.block_device** %13, align 8
  %81 = getelementptr inbounds %struct.block_device, %struct.block_device* %80, i32 0, i32 0
  %82 = call i32 @mutex_unlock(i32* %81)
  %83 = load i64, i64* %9, align 8
  %84 = trunc i64 %83 to i32
  store i32 %84, i32* %5, align 4
  br label %85

85:                                               ; preds = %59, %51, %35, %23, %18
  %86 = load i32, i32* %5, align 4
  ret i32 %86
}

declare dso_local i32 @kstrtou16(i8*, i32, i16*) #1

declare dso_local %struct.zram* @dev_to_zram(%struct.device*) #1

declare dso_local %struct.block_device* @bdget_disk(i32, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @bdput(%struct.block_device*) #1

declare dso_local i32 @fsync_bdev(%struct.block_device*) #1

declare dso_local i32 @zram_reset_device(%struct.zram*) #1

declare dso_local i32 @revalidate_disk(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
