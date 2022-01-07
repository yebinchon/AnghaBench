; ModuleID = '/home/carl/AnghaBench/linux/block/extr_blk-lib.c___blkdev_issue_write_zeroes.c'
source_filename = "/home/carl/AnghaBench/linux/block/extr_blk-lib.c___blkdev_issue_write_zeroes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.block_device = type { i32 }
%struct.bio = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i32 }
%struct.request_queue = type { i32 }

@ENXIO = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@REQ_OP_WRITE_ZEROES = common dso_local global i32 0, align 4
@BLKDEV_ZERO_NOUNMAP = common dso_local global i32 0, align 4
@REQ_NOUNMAP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.block_device*, i32, i32, i32, %struct.bio**, i32)* @__blkdev_issue_write_zeroes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__blkdev_issue_write_zeroes(%struct.block_device* %0, i32 %1, i32 %2, i32 %3, %struct.bio** %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.block_device*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.bio**, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.bio*, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.request_queue*, align 8
  store %struct.block_device* %0, %struct.block_device** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store %struct.bio** %4, %struct.bio*** %12, align 8
  store i32 %5, i32* %13, align 4
  %17 = load %struct.bio**, %struct.bio*** %12, align 8
  %18 = load %struct.bio*, %struct.bio** %17, align 8
  store %struct.bio* %18, %struct.bio** %14, align 8
  %19 = load %struct.block_device*, %struct.block_device** %8, align 8
  %20 = call %struct.request_queue* @bdev_get_queue(%struct.block_device* %19)
  store %struct.request_queue* %20, %struct.request_queue** %16, align 8
  %21 = load %struct.request_queue*, %struct.request_queue** %16, align 8
  %22 = icmp ne %struct.request_queue* %21, null
  br i1 %22, label %26, label %23

23:                                               ; preds = %6
  %24 = load i32, i32* @ENXIO, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %7, align 4
  br label %96

26:                                               ; preds = %6
  %27 = load %struct.block_device*, %struct.block_device** %8, align 8
  %28 = call i64 @bdev_read_only(%struct.block_device* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %26
  %31 = load i32, i32* @EPERM, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %7, align 4
  br label %96

33:                                               ; preds = %26
  %34 = load %struct.block_device*, %struct.block_device** %8, align 8
  %35 = call i32 @bdev_write_zeroes_sectors(%struct.block_device* %34)
  store i32 %35, i32* %15, align 4
  %36 = load i32, i32* %15, align 4
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %33
  %39 = load i32, i32* @EOPNOTSUPP, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %7, align 4
  br label %96

41:                                               ; preds = %33
  br label %42

42:                                               ; preds = %91, %41
  %43 = load i32, i32* %10, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %93

45:                                               ; preds = %42
  %46 = load %struct.bio*, %struct.bio** %14, align 8
  %47 = load i32, i32* %11, align 4
  %48 = call %struct.bio* @blk_next_bio(%struct.bio* %46, i32 0, i32 %47)
  store %struct.bio* %48, %struct.bio** %14, align 8
  %49 = load i32, i32* %9, align 4
  %50 = load %struct.bio*, %struct.bio** %14, align 8
  %51 = getelementptr inbounds %struct.bio, %struct.bio* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 0
  store i32 %49, i32* %52, align 4
  %53 = load %struct.bio*, %struct.bio** %14, align 8
  %54 = load %struct.block_device*, %struct.block_device** %8, align 8
  %55 = call i32 @bio_set_dev(%struct.bio* %53, %struct.block_device* %54)
  %56 = load i32, i32* @REQ_OP_WRITE_ZEROES, align 4
  %57 = load %struct.bio*, %struct.bio** %14, align 8
  %58 = getelementptr inbounds %struct.bio, %struct.bio* %57, i32 0, i32 1
  store i32 %56, i32* %58, align 4
  %59 = load i32, i32* %13, align 4
  %60 = load i32, i32* @BLKDEV_ZERO_NOUNMAP, align 4
  %61 = and i32 %59, %60
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %69

63:                                               ; preds = %45
  %64 = load i32, i32* @REQ_NOUNMAP, align 4
  %65 = load %struct.bio*, %struct.bio** %14, align 8
  %66 = getelementptr inbounds %struct.bio, %struct.bio* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = or i32 %67, %64
  store i32 %68, i32* %66, align 4
  br label %69

69:                                               ; preds = %63, %45
  %70 = load i32, i32* %10, align 4
  %71 = load i32, i32* %15, align 4
  %72 = icmp ugt i32 %70, %71
  br i1 %72, label %73, label %85

73:                                               ; preds = %69
  %74 = load i32, i32* %15, align 4
  %75 = shl i32 %74, 9
  %76 = load %struct.bio*, %struct.bio** %14, align 8
  %77 = getelementptr inbounds %struct.bio, %struct.bio* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i32 0, i32 1
  store i32 %75, i32* %78, align 4
  %79 = load i32, i32* %15, align 4
  %80 = load i32, i32* %10, align 4
  %81 = sub i32 %80, %79
  store i32 %81, i32* %10, align 4
  %82 = load i32, i32* %15, align 4
  %83 = load i32, i32* %9, align 4
  %84 = add i32 %83, %82
  store i32 %84, i32* %9, align 4
  br label %91

85:                                               ; preds = %69
  %86 = load i32, i32* %10, align 4
  %87 = shl i32 %86, 9
  %88 = load %struct.bio*, %struct.bio** %14, align 8
  %89 = getelementptr inbounds %struct.bio, %struct.bio* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %89, i32 0, i32 1
  store i32 %87, i32* %90, align 4
  store i32 0, i32* %10, align 4
  br label %91

91:                                               ; preds = %85, %73
  %92 = call i32 (...) @cond_resched()
  br label %42

93:                                               ; preds = %42
  %94 = load %struct.bio*, %struct.bio** %14, align 8
  %95 = load %struct.bio**, %struct.bio*** %12, align 8
  store %struct.bio* %94, %struct.bio** %95, align 8
  store i32 0, i32* %7, align 4
  br label %96

96:                                               ; preds = %93, %38, %30, %23
  %97 = load i32, i32* %7, align 4
  ret i32 %97
}

declare dso_local %struct.request_queue* @bdev_get_queue(%struct.block_device*) #1

declare dso_local i64 @bdev_read_only(%struct.block_device*) #1

declare dso_local i32 @bdev_write_zeroes_sectors(%struct.block_device*) #1

declare dso_local %struct.bio* @blk_next_bio(%struct.bio*, i32, i32) #1

declare dso_local i32 @bio_set_dev(%struct.bio*, %struct.block_device*) #1

declare dso_local i32 @cond_resched(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
