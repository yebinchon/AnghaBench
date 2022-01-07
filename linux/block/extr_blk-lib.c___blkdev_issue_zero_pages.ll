; ModuleID = '/home/carl/AnghaBench/linux/block/extr_blk-lib.c___blkdev_issue_zero_pages.c'
source_filename = "/home/carl/AnghaBench/linux/block/extr_blk-lib.c___blkdev_issue_zero_pages.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.block_device = type { i32 }
%struct.bio = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.request_queue = type { i32 }

@ENXIO = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@REQ_OP_WRITE = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.block_device*, i32, i32, i32, %struct.bio**)* @__blkdev_issue_zero_pages to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__blkdev_issue_zero_pages(%struct.block_device* %0, i32 %1, i32 %2, i32 %3, %struct.bio** %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.block_device*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.bio**, align 8
  %12 = alloca %struct.request_queue*, align 8
  %13 = alloca %struct.bio*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.block_device* %0, %struct.block_device** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store %struct.bio** %4, %struct.bio*** %11, align 8
  %16 = load %struct.block_device*, %struct.block_device** %7, align 8
  %17 = call %struct.request_queue* @bdev_get_queue(%struct.block_device* %16)
  store %struct.request_queue* %17, %struct.request_queue** %12, align 8
  %18 = load %struct.bio**, %struct.bio*** %11, align 8
  %19 = load %struct.bio*, %struct.bio** %18, align 8
  store %struct.bio* %19, %struct.bio** %13, align 8
  store i32 0, i32* %14, align 4
  %20 = load %struct.request_queue*, %struct.request_queue** %12, align 8
  %21 = icmp ne %struct.request_queue* %20, null
  br i1 %21, label %25, label %22

22:                                               ; preds = %5
  %23 = load i32, i32* @ENXIO, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %6, align 4
  br label %83

25:                                               ; preds = %5
  %26 = load %struct.block_device*, %struct.block_device** %7, align 8
  %27 = call i64 @bdev_read_only(%struct.block_device* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %25
  %30 = load i32, i32* @EPERM, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %6, align 4
  br label %83

32:                                               ; preds = %25
  br label %33

33:                                               ; preds = %78, %32
  %34 = load i32, i32* %9, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %80

36:                                               ; preds = %33
  %37 = load %struct.bio*, %struct.bio** %13, align 8
  %38 = load i32, i32* %9, align 4
  %39 = call i32 @__blkdev_sectors_to_bio_pages(i32 %38)
  %40 = load i32, i32* %10, align 4
  %41 = call %struct.bio* @blk_next_bio(%struct.bio* %37, i32 %39, i32 %40)
  store %struct.bio* %41, %struct.bio** %13, align 8
  %42 = load i32, i32* %8, align 4
  %43 = load %struct.bio*, %struct.bio** %13, align 8
  %44 = getelementptr inbounds %struct.bio, %struct.bio* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  store i32 %42, i32* %45, align 4
  %46 = load %struct.bio*, %struct.bio** %13, align 8
  %47 = load %struct.block_device*, %struct.block_device** %7, align 8
  %48 = call i32 @bio_set_dev(%struct.bio* %46, %struct.block_device* %47)
  %49 = load %struct.bio*, %struct.bio** %13, align 8
  %50 = load i32, i32* @REQ_OP_WRITE, align 4
  %51 = call i32 @bio_set_op_attrs(%struct.bio* %49, i32 %50, i32 0)
  br label %52

52:                                               ; preds = %77, %36
  %53 = load i32, i32* %9, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %78

55:                                               ; preds = %52
  %56 = load i64, i64* @PAGE_SIZE, align 8
  %57 = trunc i64 %56 to i32
  %58 = load i32, i32* %9, align 4
  %59 = shl i32 %58, 9
  %60 = call i32 @min(i32 %57, i32 %59)
  store i32 %60, i32* %15, align 4
  %61 = load %struct.bio*, %struct.bio** %13, align 8
  %62 = call i32 @ZERO_PAGE(i32 0)
  %63 = load i32, i32* %15, align 4
  %64 = call i32 @bio_add_page(%struct.bio* %61, i32 %62, i32 %63, i32 0)
  store i32 %64, i32* %14, align 4
  %65 = load i32, i32* %14, align 4
  %66 = ashr i32 %65, 9
  %67 = load i32, i32* %9, align 4
  %68 = sub nsw i32 %67, %66
  store i32 %68, i32* %9, align 4
  %69 = load i32, i32* %14, align 4
  %70 = ashr i32 %69, 9
  %71 = load i32, i32* %8, align 4
  %72 = add nsw i32 %71, %70
  store i32 %72, i32* %8, align 4
  %73 = load i32, i32* %14, align 4
  %74 = load i32, i32* %15, align 4
  %75 = icmp ult i32 %73, %74
  br i1 %75, label %76, label %77

76:                                               ; preds = %55
  br label %78

77:                                               ; preds = %55
  br label %52

78:                                               ; preds = %76, %52
  %79 = call i32 (...) @cond_resched()
  br label %33

80:                                               ; preds = %33
  %81 = load %struct.bio*, %struct.bio** %13, align 8
  %82 = load %struct.bio**, %struct.bio*** %11, align 8
  store %struct.bio* %81, %struct.bio** %82, align 8
  store i32 0, i32* %6, align 4
  br label %83

83:                                               ; preds = %80, %29, %22
  %84 = load i32, i32* %6, align 4
  ret i32 %84
}

declare dso_local %struct.request_queue* @bdev_get_queue(%struct.block_device*) #1

declare dso_local i64 @bdev_read_only(%struct.block_device*) #1

declare dso_local %struct.bio* @blk_next_bio(%struct.bio*, i32, i32) #1

declare dso_local i32 @__blkdev_sectors_to_bio_pages(i32) #1

declare dso_local i32 @bio_set_dev(%struct.bio*, %struct.block_device*) #1

declare dso_local i32 @bio_set_op_attrs(%struct.bio*, i32, i32) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @bio_add_page(%struct.bio*, i32, i32, i32) #1

declare dso_local i32 @ZERO_PAGE(i32) #1

declare dso_local i32 @cond_resched(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
