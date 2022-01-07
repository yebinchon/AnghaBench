; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/extr_nbd.c_nbd_size_update.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/extr_nbd.c_nbd_size_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nbd_device = type { %struct.TYPE_9__*, %struct.nbd_config* }
%struct.TYPE_9__ = type { %struct.TYPE_11__* }
%struct.TYPE_11__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32, i32 }
%struct.nbd_config = type { i32, i32, i32 }
%struct.block_device = type { i32, i64 }
%struct.TYPE_10__ = type { i32 }

@NBD_FLAG_SEND_TRIM = common dso_local global i32 0, align 4
@UINT_MAX = common dso_local global i32 0, align 4
@KOBJ_CHANGE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nbd_device*)* @nbd_size_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nbd_size_update(%struct.nbd_device* %0) #0 {
  %2 = alloca %struct.nbd_device*, align 8
  %3 = alloca %struct.nbd_config*, align 8
  %4 = alloca %struct.block_device*, align 8
  store %struct.nbd_device* %0, %struct.nbd_device** %2, align 8
  %5 = load %struct.nbd_device*, %struct.nbd_device** %2, align 8
  %6 = getelementptr inbounds %struct.nbd_device, %struct.nbd_device* %5, i32 0, i32 1
  %7 = load %struct.nbd_config*, %struct.nbd_config** %6, align 8
  store %struct.nbd_config* %7, %struct.nbd_config** %3, align 8
  %8 = load %struct.nbd_device*, %struct.nbd_device** %2, align 8
  %9 = getelementptr inbounds %struct.nbd_device, %struct.nbd_device* %8, i32 0, i32 0
  %10 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %11 = call %struct.block_device* @bdget_disk(%struct.TYPE_9__* %10, i32 0)
  store %struct.block_device* %11, %struct.block_device** %4, align 8
  %12 = load %struct.nbd_config*, %struct.nbd_config** %3, align 8
  %13 = getelementptr inbounds %struct.nbd_config, %struct.nbd_config* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @NBD_FLAG_SEND_TRIM, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %46

18:                                               ; preds = %1
  %19 = load %struct.nbd_config*, %struct.nbd_config** %3, align 8
  %20 = getelementptr inbounds %struct.nbd_config, %struct.nbd_config* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.nbd_device*, %struct.nbd_device** %2, align 8
  %23 = getelementptr inbounds %struct.nbd_device, %struct.nbd_device* %22, i32 0, i32 0
  %24 = load %struct.TYPE_9__*, %struct.TYPE_9__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %24, i32 0, i32 0
  %26 = load %struct.TYPE_11__*, %struct.TYPE_11__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %27, i32 0, i32 1
  store i32 %21, i32* %28, align 4
  %29 = load %struct.nbd_config*, %struct.nbd_config** %3, align 8
  %30 = getelementptr inbounds %struct.nbd_config, %struct.nbd_config* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.nbd_device*, %struct.nbd_device** %2, align 8
  %33 = getelementptr inbounds %struct.nbd_device, %struct.nbd_device* %32, i32 0, i32 0
  %34 = load %struct.TYPE_9__*, %struct.TYPE_9__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %34, i32 0, i32 0
  %36 = load %struct.TYPE_11__*, %struct.TYPE_11__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %37, i32 0, i32 0
  store i32 %31, i32* %38, align 4
  %39 = load %struct.nbd_device*, %struct.nbd_device** %2, align 8
  %40 = getelementptr inbounds %struct.nbd_device, %struct.nbd_device* %39, i32 0, i32 0
  %41 = load %struct.TYPE_9__*, %struct.TYPE_9__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %41, i32 0, i32 0
  %43 = load %struct.TYPE_11__*, %struct.TYPE_11__** %42, align 8
  %44 = load i32, i32* @UINT_MAX, align 4
  %45 = call i32 @blk_queue_max_discard_sectors(%struct.TYPE_11__* %43, i32 %44)
  br label %46

46:                                               ; preds = %18, %1
  %47 = load %struct.nbd_device*, %struct.nbd_device** %2, align 8
  %48 = getelementptr inbounds %struct.nbd_device, %struct.nbd_device* %47, i32 0, i32 0
  %49 = load %struct.TYPE_9__*, %struct.TYPE_9__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %49, i32 0, i32 0
  %51 = load %struct.TYPE_11__*, %struct.TYPE_11__** %50, align 8
  %52 = load %struct.nbd_config*, %struct.nbd_config** %3, align 8
  %53 = getelementptr inbounds %struct.nbd_config, %struct.nbd_config* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @blk_queue_logical_block_size(%struct.TYPE_11__* %51, i32 %54)
  %56 = load %struct.nbd_device*, %struct.nbd_device** %2, align 8
  %57 = getelementptr inbounds %struct.nbd_device, %struct.nbd_device* %56, i32 0, i32 0
  %58 = load %struct.TYPE_9__*, %struct.TYPE_9__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %58, i32 0, i32 0
  %60 = load %struct.TYPE_11__*, %struct.TYPE_11__** %59, align 8
  %61 = load %struct.nbd_config*, %struct.nbd_config** %3, align 8
  %62 = getelementptr inbounds %struct.nbd_config, %struct.nbd_config* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @blk_queue_physical_block_size(%struct.TYPE_11__* %60, i32 %63)
  %65 = load %struct.nbd_device*, %struct.nbd_device** %2, align 8
  %66 = getelementptr inbounds %struct.nbd_device, %struct.nbd_device* %65, i32 0, i32 0
  %67 = load %struct.TYPE_9__*, %struct.TYPE_9__** %66, align 8
  %68 = load %struct.nbd_config*, %struct.nbd_config** %3, align 8
  %69 = getelementptr inbounds %struct.nbd_config, %struct.nbd_config* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = ashr i32 %70, 9
  %72 = call i32 @set_capacity(%struct.TYPE_9__* %67, i32 %71)
  %73 = load %struct.block_device*, %struct.block_device** %4, align 8
  %74 = icmp ne %struct.block_device* %73, null
  br i1 %74, label %75, label %97

75:                                               ; preds = %46
  %76 = load %struct.block_device*, %struct.block_device** %4, align 8
  %77 = getelementptr inbounds %struct.block_device, %struct.block_device* %76, i32 0, i32 1
  %78 = load i64, i64* %77, align 8
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %91

80:                                               ; preds = %75
  %81 = load %struct.block_device*, %struct.block_device** %4, align 8
  %82 = load %struct.nbd_config*, %struct.nbd_config** %3, align 8
  %83 = getelementptr inbounds %struct.nbd_config, %struct.nbd_config* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = call i32 @bd_set_size(%struct.block_device* %81, i32 %84)
  %86 = load %struct.block_device*, %struct.block_device** %4, align 8
  %87 = load %struct.nbd_config*, %struct.nbd_config** %3, align 8
  %88 = getelementptr inbounds %struct.nbd_config, %struct.nbd_config* %87, i32 0, i32 2
  %89 = load i32, i32* %88, align 4
  %90 = call i32 @set_blocksize(%struct.block_device* %86, i32 %89)
  br label %94

91:                                               ; preds = %75
  %92 = load %struct.block_device*, %struct.block_device** %4, align 8
  %93 = getelementptr inbounds %struct.block_device, %struct.block_device* %92, i32 0, i32 0
  store i32 1, i32* %93, align 8
  br label %94

94:                                               ; preds = %91, %80
  %95 = load %struct.block_device*, %struct.block_device** %4, align 8
  %96 = call i32 @bdput(%struct.block_device* %95)
  br label %97

97:                                               ; preds = %94, %46
  %98 = load %struct.nbd_device*, %struct.nbd_device** %2, align 8
  %99 = call %struct.TYPE_10__* @nbd_to_dev(%struct.nbd_device* %98)
  %100 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %99, i32 0, i32 0
  %101 = load i32, i32* @KOBJ_CHANGE, align 4
  %102 = call i32 @kobject_uevent(i32* %100, i32 %101)
  ret void
}

declare dso_local %struct.block_device* @bdget_disk(%struct.TYPE_9__*, i32) #1

declare dso_local i32 @blk_queue_max_discard_sectors(%struct.TYPE_11__*, i32) #1

declare dso_local i32 @blk_queue_logical_block_size(%struct.TYPE_11__*, i32) #1

declare dso_local i32 @blk_queue_physical_block_size(%struct.TYPE_11__*, i32) #1

declare dso_local i32 @set_capacity(%struct.TYPE_9__*, i32) #1

declare dso_local i32 @bd_set_size(%struct.block_device*, i32) #1

declare dso_local i32 @set_blocksize(%struct.block_device*, i32) #1

declare dso_local i32 @bdput(%struct.block_device*) #1

declare dso_local i32 @kobject_uevent(i32*, i32) #1

declare dso_local %struct.TYPE_10__* @nbd_to_dev(%struct.nbd_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
