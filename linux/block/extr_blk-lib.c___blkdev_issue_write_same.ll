; ModuleID = '/home/carl/AnghaBench/linux/block/extr_blk-lib.c___blkdev_issue_write_same.c'
source_filename = "/home/carl/AnghaBench/linux/block/extr_blk-lib.c___blkdev_issue_write_same.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.block_device = type { i32 }
%struct.page = type { i32 }
%struct.bio = type { i32, %struct.TYPE_4__, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_3__ = type { i32, i64, %struct.page* }
%struct.request_queue = type { i32 }

@ENXIO = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@REQ_OP_WRITE_SAME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.block_device*, i32, i32, i32, %struct.page*, %struct.bio**)* @__blkdev_issue_write_same to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__blkdev_issue_write_same(%struct.block_device* %0, i32 %1, i32 %2, i32 %3, %struct.page* %4, %struct.bio** %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.block_device*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.page*, align 8
  %13 = alloca %struct.bio**, align 8
  %14 = alloca %struct.request_queue*, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.bio*, align 8
  %17 = alloca i32, align 4
  store %struct.block_device* %0, %struct.block_device** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store %struct.page* %4, %struct.page** %12, align 8
  store %struct.bio** %5, %struct.bio*** %13, align 8
  %18 = load %struct.block_device*, %struct.block_device** %8, align 8
  %19 = call %struct.request_queue* @bdev_get_queue(%struct.block_device* %18)
  store %struct.request_queue* %19, %struct.request_queue** %14, align 8
  %20 = load %struct.bio**, %struct.bio*** %13, align 8
  %21 = load %struct.bio*, %struct.bio** %20, align 8
  store %struct.bio* %21, %struct.bio** %16, align 8
  %22 = load %struct.request_queue*, %struct.request_queue** %14, align 8
  %23 = icmp ne %struct.request_queue* %22, null
  br i1 %23, label %27, label %24

24:                                               ; preds = %6
  %25 = load i32, i32* @ENXIO, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %7, align 4
  br label %118

27:                                               ; preds = %6
  %28 = load %struct.block_device*, %struct.block_device** %8, align 8
  %29 = call i64 @bdev_read_only(%struct.block_device* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %27
  %32 = load i32, i32* @EPERM, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %7, align 4
  br label %118

34:                                               ; preds = %27
  %35 = load %struct.block_device*, %struct.block_device** %8, align 8
  %36 = call i32 @bdev_logical_block_size(%struct.block_device* %35)
  %37 = ashr i32 %36, 9
  %38 = sub nsw i32 %37, 1
  store i32 %38, i32* %17, align 4
  %39 = load i32, i32* %9, align 4
  %40 = load i32, i32* %10, align 4
  %41 = or i32 %39, %40
  %42 = load i32, i32* %17, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %34
  %46 = load i32, i32* @EINVAL, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %7, align 4
  br label %118

48:                                               ; preds = %34
  %49 = load %struct.block_device*, %struct.block_device** %8, align 8
  %50 = call i32 @bdev_write_same(%struct.block_device* %49)
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %55, label %52

52:                                               ; preds = %48
  %53 = load i32, i32* @EOPNOTSUPP, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %7, align 4
  br label %118

55:                                               ; preds = %48
  %56 = load %struct.request_queue*, %struct.request_queue** %14, align 8
  %57 = call i32 @bio_allowed_max_sectors(%struct.request_queue* %56)
  store i32 %57, i32* %15, align 4
  br label %58

58:                                               ; preds = %113, %55
  %59 = load i32, i32* %10, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %115

61:                                               ; preds = %58
  %62 = load %struct.bio*, %struct.bio** %16, align 8
  %63 = load i32, i32* %11, align 4
  %64 = call %struct.bio* @blk_next_bio(%struct.bio* %62, i32 1, i32 %63)
  store %struct.bio* %64, %struct.bio** %16, align 8
  %65 = load i32, i32* %9, align 4
  %66 = load %struct.bio*, %struct.bio** %16, align 8
  %67 = getelementptr inbounds %struct.bio, %struct.bio* %66, i32 0, i32 1
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 0
  store i32 %65, i32* %68, align 4
  %69 = load %struct.bio*, %struct.bio** %16, align 8
  %70 = load %struct.block_device*, %struct.block_device** %8, align 8
  %71 = call i32 @bio_set_dev(%struct.bio* %69, %struct.block_device* %70)
  %72 = load %struct.bio*, %struct.bio** %16, align 8
  %73 = getelementptr inbounds %struct.bio, %struct.bio* %72, i32 0, i32 0
  store i32 1, i32* %73, align 8
  %74 = load %struct.page*, %struct.page** %12, align 8
  %75 = load %struct.bio*, %struct.bio** %16, align 8
  %76 = getelementptr inbounds %struct.bio, %struct.bio* %75, i32 0, i32 2
  %77 = load %struct.TYPE_3__*, %struct.TYPE_3__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %77, i32 0, i32 2
  store %struct.page* %74, %struct.page** %78, align 8
  %79 = load %struct.bio*, %struct.bio** %16, align 8
  %80 = getelementptr inbounds %struct.bio, %struct.bio* %79, i32 0, i32 2
  %81 = load %struct.TYPE_3__*, %struct.TYPE_3__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %81, i32 0, i32 1
  store i64 0, i64* %82, align 8
  %83 = load %struct.block_device*, %struct.block_device** %8, align 8
  %84 = call i32 @bdev_logical_block_size(%struct.block_device* %83)
  %85 = load %struct.bio*, %struct.bio** %16, align 8
  %86 = getelementptr inbounds %struct.bio, %struct.bio* %85, i32 0, i32 2
  %87 = load %struct.TYPE_3__*, %struct.TYPE_3__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %87, i32 0, i32 0
  store i32 %84, i32* %88, align 8
  %89 = load %struct.bio*, %struct.bio** %16, align 8
  %90 = load i32, i32* @REQ_OP_WRITE_SAME, align 4
  %91 = call i32 @bio_set_op_attrs(%struct.bio* %89, i32 %90, i32 0)
  %92 = load i32, i32* %10, align 4
  %93 = load i32, i32* %15, align 4
  %94 = icmp ugt i32 %92, %93
  br i1 %94, label %95, label %107

95:                                               ; preds = %61
  %96 = load i32, i32* %15, align 4
  %97 = shl i32 %96, 9
  %98 = load %struct.bio*, %struct.bio** %16, align 8
  %99 = getelementptr inbounds %struct.bio, %struct.bio* %98, i32 0, i32 1
  %100 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %99, i32 0, i32 1
  store i32 %97, i32* %100, align 4
  %101 = load i32, i32* %15, align 4
  %102 = load i32, i32* %10, align 4
  %103 = sub i32 %102, %101
  store i32 %103, i32* %10, align 4
  %104 = load i32, i32* %15, align 4
  %105 = load i32, i32* %9, align 4
  %106 = add i32 %105, %104
  store i32 %106, i32* %9, align 4
  br label %113

107:                                              ; preds = %61
  %108 = load i32, i32* %10, align 4
  %109 = shl i32 %108, 9
  %110 = load %struct.bio*, %struct.bio** %16, align 8
  %111 = getelementptr inbounds %struct.bio, %struct.bio* %110, i32 0, i32 1
  %112 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %111, i32 0, i32 1
  store i32 %109, i32* %112, align 4
  store i32 0, i32* %10, align 4
  br label %113

113:                                              ; preds = %107, %95
  %114 = call i32 (...) @cond_resched()
  br label %58

115:                                              ; preds = %58
  %116 = load %struct.bio*, %struct.bio** %16, align 8
  %117 = load %struct.bio**, %struct.bio*** %13, align 8
  store %struct.bio* %116, %struct.bio** %117, align 8
  store i32 0, i32* %7, align 4
  br label %118

118:                                              ; preds = %115, %52, %45, %31, %24
  %119 = load i32, i32* %7, align 4
  ret i32 %119
}

declare dso_local %struct.request_queue* @bdev_get_queue(%struct.block_device*) #1

declare dso_local i64 @bdev_read_only(%struct.block_device*) #1

declare dso_local i32 @bdev_logical_block_size(%struct.block_device*) #1

declare dso_local i32 @bdev_write_same(%struct.block_device*) #1

declare dso_local i32 @bio_allowed_max_sectors(%struct.request_queue*) #1

declare dso_local %struct.bio* @blk_next_bio(%struct.bio*, i32, i32) #1

declare dso_local i32 @bio_set_dev(%struct.bio*, %struct.block_device*) #1

declare dso_local i32 @bio_set_op_attrs(%struct.bio*, i32, i32) #1

declare dso_local i32 @cond_resched(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
