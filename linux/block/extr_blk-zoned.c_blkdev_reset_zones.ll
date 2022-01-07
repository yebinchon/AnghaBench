; ModuleID = '/home/carl/AnghaBench/linux/block/extr_blk-zoned.c_blkdev_reset_zones.c'
source_filename = "/home/carl/AnghaBench/linux/block/extr_blk-zoned.c_blkdev_reset_zones.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.block_device = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64 }
%struct.request_queue = type { i32 }
%struct.bio = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }
%struct.blk_plug = type { i32 }

@EOPNOTSUPP = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@REQ_OP_ZONE_RESET = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @blkdev_reset_zones(%struct.block_device* %0, i64 %1, i64 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.block_device*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.request_queue*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.bio*, align 8
  %14 = alloca %struct.blk_plug, align 4
  %15 = alloca i32, align 4
  store %struct.block_device* %0, %struct.block_device** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  %16 = load %struct.block_device*, %struct.block_device** %6, align 8
  %17 = call %struct.request_queue* @bdev_get_queue(%struct.block_device* %16)
  store %struct.request_queue* %17, %struct.request_queue** %10, align 8
  %18 = load i64, i64* %7, align 8
  %19 = load i64, i64* %8, align 8
  %20 = add nsw i64 %18, %19
  store i64 %20, i64* %12, align 8
  store %struct.bio* null, %struct.bio** %13, align 8
  %21 = load %struct.request_queue*, %struct.request_queue** %10, align 8
  %22 = call i32 @blk_queue_is_zoned(%struct.request_queue* %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %27, label %24

24:                                               ; preds = %4
  %25 = load i32, i32* @EOPNOTSUPP, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %5, align 4
  br label %116

27:                                               ; preds = %4
  %28 = load %struct.block_device*, %struct.block_device** %6, align 8
  %29 = call i64 @bdev_read_only(%struct.block_device* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %27
  %32 = load i32, i32* @EPERM, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %5, align 4
  br label %116

34:                                               ; preds = %27
  %35 = load i64, i64* %8, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %45

37:                                               ; preds = %34
  %38 = load i64, i64* %12, align 8
  %39 = load %struct.block_device*, %struct.block_device** %6, align 8
  %40 = getelementptr inbounds %struct.block_device, %struct.block_device* %39, i32 0, i32 0
  %41 = load %struct.TYPE_3__*, %struct.TYPE_3__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = icmp sgt i64 %38, %43
  br i1 %44, label %45, label %48

45:                                               ; preds = %37, %34
  %46 = load i32, i32* @EINVAL, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %5, align 4
  br label %116

48:                                               ; preds = %37
  %49 = load %struct.block_device*, %struct.block_device** %6, align 8
  %50 = load i64, i64* %8, align 8
  %51 = call i64 @blkdev_allow_reset_all_zones(%struct.block_device* %49, i64 %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %57

53:                                               ; preds = %48
  %54 = load %struct.block_device*, %struct.block_device** %6, align 8
  %55 = load i32, i32* %9, align 4
  %56 = call i32 @__blkdev_reset_all_zones(%struct.block_device* %54, i32 %55)
  store i32 %56, i32* %5, align 4
  br label %116

57:                                               ; preds = %48
  %58 = load %struct.request_queue*, %struct.request_queue** %10, align 8
  %59 = call i64 @blk_queue_zone_sectors(%struct.request_queue* %58)
  store i64 %59, i64* %11, align 8
  %60 = load i64, i64* %7, align 8
  %61 = load i64, i64* %11, align 8
  %62 = sub nsw i64 %61, 1
  %63 = and i64 %60, %62
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %68

65:                                               ; preds = %57
  %66 = load i32, i32* @EINVAL, align 4
  %67 = sub nsw i32 0, %66
  store i32 %67, i32* %5, align 4
  br label %116

68:                                               ; preds = %57
  %69 = load i64, i64* %8, align 8
  %70 = load i64, i64* %11, align 8
  %71 = sub nsw i64 %70, 1
  %72 = and i64 %69, %71
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %85

74:                                               ; preds = %68
  %75 = load i64, i64* %12, align 8
  %76 = load %struct.block_device*, %struct.block_device** %6, align 8
  %77 = getelementptr inbounds %struct.block_device, %struct.block_device* %76, i32 0, i32 0
  %78 = load %struct.TYPE_3__*, %struct.TYPE_3__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = icmp ne i64 %75, %80
  br i1 %81, label %82, label %85

82:                                               ; preds = %74
  %83 = load i32, i32* @EINVAL, align 4
  %84 = sub nsw i32 0, %83
  store i32 %84, i32* %5, align 4
  br label %116

85:                                               ; preds = %74, %68
  %86 = call i32 @blk_start_plug(%struct.blk_plug* %14)
  br label %87

87:                                               ; preds = %91, %85
  %88 = load i64, i64* %7, align 8
  %89 = load i64, i64* %12, align 8
  %90 = icmp slt i64 %88, %89
  br i1 %90, label %91, label %109

91:                                               ; preds = %87
  %92 = load %struct.bio*, %struct.bio** %13, align 8
  %93 = load i32, i32* %9, align 4
  %94 = call %struct.bio* @blk_next_bio(%struct.bio* %92, i32 0, i32 %93)
  store %struct.bio* %94, %struct.bio** %13, align 8
  %95 = load i64, i64* %7, align 8
  %96 = load %struct.bio*, %struct.bio** %13, align 8
  %97 = getelementptr inbounds %struct.bio, %struct.bio* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %97, i32 0, i32 0
  store i64 %95, i64* %98, align 8
  %99 = load %struct.bio*, %struct.bio** %13, align 8
  %100 = load %struct.block_device*, %struct.block_device** %6, align 8
  %101 = call i32 @bio_set_dev(%struct.bio* %99, %struct.block_device* %100)
  %102 = load %struct.bio*, %struct.bio** %13, align 8
  %103 = load i32, i32* @REQ_OP_ZONE_RESET, align 4
  %104 = call i32 @bio_set_op_attrs(%struct.bio* %102, i32 %103, i32 0)
  %105 = load i64, i64* %11, align 8
  %106 = load i64, i64* %7, align 8
  %107 = add nsw i64 %106, %105
  store i64 %107, i64* %7, align 8
  %108 = call i32 (...) @cond_resched()
  br label %87

109:                                              ; preds = %87
  %110 = load %struct.bio*, %struct.bio** %13, align 8
  %111 = call i32 @submit_bio_wait(%struct.bio* %110)
  store i32 %111, i32* %15, align 4
  %112 = load %struct.bio*, %struct.bio** %13, align 8
  %113 = call i32 @bio_put(%struct.bio* %112)
  %114 = call i32 @blk_finish_plug(%struct.blk_plug* %14)
  %115 = load i32, i32* %15, align 4
  store i32 %115, i32* %5, align 4
  br label %116

116:                                              ; preds = %109, %82, %65, %53, %45, %31, %24
  %117 = load i32, i32* %5, align 4
  ret i32 %117
}

declare dso_local %struct.request_queue* @bdev_get_queue(%struct.block_device*) #1

declare dso_local i32 @blk_queue_is_zoned(%struct.request_queue*) #1

declare dso_local i64 @bdev_read_only(%struct.block_device*) #1

declare dso_local i64 @blkdev_allow_reset_all_zones(%struct.block_device*, i64) #1

declare dso_local i32 @__blkdev_reset_all_zones(%struct.block_device*, i32) #1

declare dso_local i64 @blk_queue_zone_sectors(%struct.request_queue*) #1

declare dso_local i32 @blk_start_plug(%struct.blk_plug*) #1

declare dso_local %struct.bio* @blk_next_bio(%struct.bio*, i32, i32) #1

declare dso_local i32 @bio_set_dev(%struct.bio*, %struct.block_device*) #1

declare dso_local i32 @bio_set_op_attrs(%struct.bio*, i32, i32) #1

declare dso_local i32 @cond_resched(...) #1

declare dso_local i32 @submit_bio_wait(%struct.bio*) #1

declare dso_local i32 @bio_put(%struct.bio*) #1

declare dso_local i32 @blk_finish_plug(%struct.blk_plug*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
