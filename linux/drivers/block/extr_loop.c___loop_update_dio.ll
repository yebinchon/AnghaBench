; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/extr_loop.c___loop_update_dio.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/extr_loop.c___loop_update_dio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.loop_device = type { i32, i32, i32, i32, i32, %struct.file* }
%struct.file = type { %struct.address_space* }
%struct.address_space = type { %struct.TYPE_4__*, %struct.inode* }
%struct.TYPE_4__ = type { i64 }
%struct.inode = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64 }

@QUEUE_FLAG_NOMERGES = common dso_local global i32 0, align 4
@LO_FLAGS_DIRECT_IO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.loop_device*, i32)* @__loop_update_dio to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__loop_update_dio(%struct.loop_device* %0, i32 %1) #0 {
  %3 = alloca %struct.loop_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca %struct.address_space*, align 8
  %7 = alloca %struct.inode*, align 8
  %8 = alloca i16, align 2
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.loop_device* %0, %struct.loop_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %11 = load %struct.loop_device*, %struct.loop_device** %3, align 8
  %12 = getelementptr inbounds %struct.loop_device, %struct.loop_device* %11, i32 0, i32 5
  %13 = load %struct.file*, %struct.file** %12, align 8
  store %struct.file* %13, %struct.file** %5, align 8
  %14 = load %struct.file*, %struct.file** %5, align 8
  %15 = getelementptr inbounds %struct.file, %struct.file* %14, i32 0, i32 0
  %16 = load %struct.address_space*, %struct.address_space** %15, align 8
  store %struct.address_space* %16, %struct.address_space** %6, align 8
  %17 = load %struct.address_space*, %struct.address_space** %6, align 8
  %18 = getelementptr inbounds %struct.address_space, %struct.address_space* %17, i32 0, i32 1
  %19 = load %struct.inode*, %struct.inode** %18, align 8
  store %struct.inode* %19, %struct.inode** %7, align 8
  store i16 0, i16* %8, align 2
  store i32 0, i32* %9, align 4
  %20 = load %struct.inode*, %struct.inode** %7, align 8
  %21 = getelementptr inbounds %struct.inode, %struct.inode* %20, i32 0, i32 0
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %36

26:                                               ; preds = %2
  %27 = load %struct.inode*, %struct.inode** %7, align 8
  %28 = getelementptr inbounds %struct.inode, %struct.inode* %27, i32 0, i32 0
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = call zeroext i16 @bdev_logical_block_size(i64 %31)
  store i16 %32, i16* %8, align 2
  %33 = load i16, i16* %8, align 2
  %34 = zext i16 %33 to i32
  %35 = sub nsw i32 %34, 1
  store i32 %35, i32* %9, align 4
  br label %36

36:                                               ; preds = %26, %2
  %37 = load i32, i32* %4, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %70

39:                                               ; preds = %36
  %40 = load %struct.loop_device*, %struct.loop_device** %3, align 8
  %41 = getelementptr inbounds %struct.loop_device, %struct.loop_device* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 8
  %43 = call zeroext i16 @queue_logical_block_size(i32 %42)
  %44 = zext i16 %43 to i32
  %45 = load i16, i16* %8, align 2
  %46 = zext i16 %45 to i32
  %47 = icmp sge i32 %44, %46
  br i1 %47, label %48, label %68

48:                                               ; preds = %39
  %49 = load %struct.loop_device*, %struct.loop_device** %3, align 8
  %50 = getelementptr inbounds %struct.loop_device, %struct.loop_device* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = load i32, i32* %9, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %68, label %55

55:                                               ; preds = %48
  %56 = load %struct.address_space*, %struct.address_space** %6, align 8
  %57 = getelementptr inbounds %struct.address_space, %struct.address_space* %56, i32 0, i32 0
  %58 = load %struct.TYPE_4__*, %struct.TYPE_4__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %68

62:                                               ; preds = %55
  %63 = load %struct.loop_device*, %struct.loop_device** %3, align 8
  %64 = getelementptr inbounds %struct.loop_device, %struct.loop_device* %63, i32 0, i32 4
  %65 = load i32, i32* %64, align 8
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %68, label %67

67:                                               ; preds = %62
  store i32 1, i32* %10, align 4
  br label %69

68:                                               ; preds = %62, %55, %48, %39
  store i32 0, i32* %10, align 4
  br label %69

69:                                               ; preds = %68, %67
  br label %71

70:                                               ; preds = %36
  store i32 0, i32* %10, align 4
  br label %71

71:                                               ; preds = %70, %69
  %72 = load %struct.loop_device*, %struct.loop_device** %3, align 8
  %73 = getelementptr inbounds %struct.loop_device, %struct.loop_device* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = load i32, i32* %10, align 4
  %76 = icmp eq i32 %74, %75
  br i1 %76, label %77, label %78

77:                                               ; preds = %71
  br label %118

78:                                               ; preds = %71
  %79 = load %struct.file*, %struct.file** %5, align 8
  %80 = call i32 @vfs_fsync(%struct.file* %79, i32 0)
  %81 = load %struct.loop_device*, %struct.loop_device** %3, align 8
  %82 = getelementptr inbounds %struct.loop_device, %struct.loop_device* %81, i32 0, i32 2
  %83 = load i32, i32* %82, align 8
  %84 = call i32 @blk_mq_freeze_queue(i32 %83)
  %85 = load i32, i32* %10, align 4
  %86 = load %struct.loop_device*, %struct.loop_device** %3, align 8
  %87 = getelementptr inbounds %struct.loop_device, %struct.loop_device* %86, i32 0, i32 1
  store i32 %85, i32* %87, align 4
  %88 = load i32, i32* %10, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %101

90:                                               ; preds = %78
  %91 = load i32, i32* @QUEUE_FLAG_NOMERGES, align 4
  %92 = load %struct.loop_device*, %struct.loop_device** %3, align 8
  %93 = getelementptr inbounds %struct.loop_device, %struct.loop_device* %92, i32 0, i32 2
  %94 = load i32, i32* %93, align 8
  %95 = call i32 @blk_queue_flag_clear(i32 %91, i32 %94)
  %96 = load i32, i32* @LO_FLAGS_DIRECT_IO, align 4
  %97 = load %struct.loop_device*, %struct.loop_device** %3, align 8
  %98 = getelementptr inbounds %struct.loop_device, %struct.loop_device* %97, i32 0, i32 3
  %99 = load i32, i32* %98, align 4
  %100 = or i32 %99, %96
  store i32 %100, i32* %98, align 4
  br label %113

101:                                              ; preds = %78
  %102 = load i32, i32* @QUEUE_FLAG_NOMERGES, align 4
  %103 = load %struct.loop_device*, %struct.loop_device** %3, align 8
  %104 = getelementptr inbounds %struct.loop_device, %struct.loop_device* %103, i32 0, i32 2
  %105 = load i32, i32* %104, align 8
  %106 = call i32 @blk_queue_flag_set(i32 %102, i32 %105)
  %107 = load i32, i32* @LO_FLAGS_DIRECT_IO, align 4
  %108 = xor i32 %107, -1
  %109 = load %struct.loop_device*, %struct.loop_device** %3, align 8
  %110 = getelementptr inbounds %struct.loop_device, %struct.loop_device* %109, i32 0, i32 3
  %111 = load i32, i32* %110, align 4
  %112 = and i32 %111, %108
  store i32 %112, i32* %110, align 4
  br label %113

113:                                              ; preds = %101, %90
  %114 = load %struct.loop_device*, %struct.loop_device** %3, align 8
  %115 = getelementptr inbounds %struct.loop_device, %struct.loop_device* %114, i32 0, i32 2
  %116 = load i32, i32* %115, align 8
  %117 = call i32 @blk_mq_unfreeze_queue(i32 %116)
  br label %118

118:                                              ; preds = %113, %77
  ret void
}

declare dso_local zeroext i16 @bdev_logical_block_size(i64) #1

declare dso_local zeroext i16 @queue_logical_block_size(i32) #1

declare dso_local i32 @vfs_fsync(%struct.file*, i32) #1

declare dso_local i32 @blk_mq_freeze_queue(i32) #1

declare dso_local i32 @blk_queue_flag_clear(i32, i32) #1

declare dso_local i32 @blk_queue_flag_set(i32, i32) #1

declare dso_local i32 @blk_mq_unfreeze_queue(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
