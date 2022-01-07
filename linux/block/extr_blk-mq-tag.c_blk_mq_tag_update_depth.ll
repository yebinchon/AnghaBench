; ModuleID = '/home/carl/AnghaBench/linux/block/extr_blk-mq-tag.c_blk_mq_tag_update_depth.c'
source_filename = "/home/carl/AnghaBench/linux/block/extr_blk-mq-tag.c_blk_mq_tag_update_depth.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.blk_mq_hw_ctx = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.blk_mq_tag_set* }
%struct.blk_mq_tag_set = type { i32 }
%struct.blk_mq_tags = type { i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@BLKDEV_MAX_RQ = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @blk_mq_tag_update_depth(%struct.blk_mq_hw_ctx* %0, %struct.blk_mq_tags** %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.blk_mq_hw_ctx*, align 8
  %7 = alloca %struct.blk_mq_tags**, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.blk_mq_tags*, align 8
  %11 = alloca %struct.blk_mq_tag_set*, align 8
  %12 = alloca %struct.blk_mq_tags*, align 8
  %13 = alloca i32, align 4
  store %struct.blk_mq_hw_ctx* %0, %struct.blk_mq_hw_ctx** %6, align 8
  store %struct.blk_mq_tags** %1, %struct.blk_mq_tags*** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %14 = load %struct.blk_mq_tags**, %struct.blk_mq_tags*** %7, align 8
  %15 = load %struct.blk_mq_tags*, %struct.blk_mq_tags** %14, align 8
  store %struct.blk_mq_tags* %15, %struct.blk_mq_tags** %10, align 8
  %16 = load i32, i32* %8, align 4
  %17 = load %struct.blk_mq_tags*, %struct.blk_mq_tags** %10, align 8
  %18 = getelementptr inbounds %struct.blk_mq_tags, %struct.blk_mq_tags* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = icmp ule i32 %16, %19
  br i1 %20, label %21, label %24

21:                                               ; preds = %4
  %22 = load i32, i32* @EINVAL, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %5, align 4
  br label %102

24:                                               ; preds = %4
  %25 = load i32, i32* %8, align 4
  %26 = load %struct.blk_mq_tags*, %struct.blk_mq_tags** %10, align 8
  %27 = getelementptr inbounds %struct.blk_mq_tags, %struct.blk_mq_tags* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = icmp ugt i32 %25, %28
  br i1 %29, label %30, label %92

30:                                               ; preds = %24
  %31 = load %struct.blk_mq_hw_ctx*, %struct.blk_mq_hw_ctx** %6, align 8
  %32 = getelementptr inbounds %struct.blk_mq_hw_ctx, %struct.blk_mq_hw_ctx* %31, i32 0, i32 1
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load %struct.blk_mq_tag_set*, %struct.blk_mq_tag_set** %34, align 8
  store %struct.blk_mq_tag_set* %35, %struct.blk_mq_tag_set** %11, align 8
  %36 = load i32, i32* %9, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %41, label %38

38:                                               ; preds = %30
  %39 = load i32, i32* @EINVAL, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %5, align 4
  br label %102

41:                                               ; preds = %30
  %42 = load i32, i32* %8, align 4
  %43 = load i32, i32* @BLKDEV_MAX_RQ, align 4
  %44 = mul nsw i32 16, %43
  %45 = icmp ugt i32 %42, %44
  br i1 %45, label %46, label %49

46:                                               ; preds = %41
  %47 = load i32, i32* @EINVAL, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %5, align 4
  br label %102

49:                                               ; preds = %41
  %50 = load %struct.blk_mq_tag_set*, %struct.blk_mq_tag_set** %11, align 8
  %51 = load %struct.blk_mq_hw_ctx*, %struct.blk_mq_hw_ctx** %6, align 8
  %52 = getelementptr inbounds %struct.blk_mq_hw_ctx, %struct.blk_mq_hw_ctx* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = load i32, i32* %8, align 4
  %55 = load %struct.blk_mq_tags*, %struct.blk_mq_tags** %10, align 8
  %56 = getelementptr inbounds %struct.blk_mq_tags, %struct.blk_mq_tags* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = call %struct.blk_mq_tags* @blk_mq_alloc_rq_map(%struct.blk_mq_tag_set* %50, i32 %53, i32 %54, i32 %57)
  store %struct.blk_mq_tags* %58, %struct.blk_mq_tags** %12, align 8
  %59 = load %struct.blk_mq_tags*, %struct.blk_mq_tags** %12, align 8
  %60 = icmp ne %struct.blk_mq_tags* %59, null
  br i1 %60, label %64, label %61

61:                                               ; preds = %49
  %62 = load i32, i32* @ENOMEM, align 4
  %63 = sub nsw i32 0, %62
  store i32 %63, i32* %5, align 4
  br label %102

64:                                               ; preds = %49
  %65 = load %struct.blk_mq_tag_set*, %struct.blk_mq_tag_set** %11, align 8
  %66 = load %struct.blk_mq_tags*, %struct.blk_mq_tags** %12, align 8
  %67 = load %struct.blk_mq_hw_ctx*, %struct.blk_mq_hw_ctx** %6, align 8
  %68 = getelementptr inbounds %struct.blk_mq_hw_ctx, %struct.blk_mq_hw_ctx* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = load i32, i32* %8, align 4
  %71 = call i32 @blk_mq_alloc_rqs(%struct.blk_mq_tag_set* %65, %struct.blk_mq_tags* %66, i32 %69, i32 %70)
  store i32 %71, i32* %13, align 4
  %72 = load i32, i32* %13, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %79

74:                                               ; preds = %64
  %75 = load %struct.blk_mq_tags*, %struct.blk_mq_tags** %12, align 8
  %76 = call i32 @blk_mq_free_rq_map(%struct.blk_mq_tags* %75)
  %77 = load i32, i32* @ENOMEM, align 4
  %78 = sub nsw i32 0, %77
  store i32 %78, i32* %5, align 4
  br label %102

79:                                               ; preds = %64
  %80 = load %struct.blk_mq_tag_set*, %struct.blk_mq_tag_set** %11, align 8
  %81 = load %struct.blk_mq_tags**, %struct.blk_mq_tags*** %7, align 8
  %82 = load %struct.blk_mq_tags*, %struct.blk_mq_tags** %81, align 8
  %83 = load %struct.blk_mq_hw_ctx*, %struct.blk_mq_hw_ctx** %6, align 8
  %84 = getelementptr inbounds %struct.blk_mq_hw_ctx, %struct.blk_mq_hw_ctx* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = call i32 @blk_mq_free_rqs(%struct.blk_mq_tag_set* %80, %struct.blk_mq_tags* %82, i32 %85)
  %87 = load %struct.blk_mq_tags**, %struct.blk_mq_tags*** %7, align 8
  %88 = load %struct.blk_mq_tags*, %struct.blk_mq_tags** %87, align 8
  %89 = call i32 @blk_mq_free_rq_map(%struct.blk_mq_tags* %88)
  %90 = load %struct.blk_mq_tags*, %struct.blk_mq_tags** %12, align 8
  %91 = load %struct.blk_mq_tags**, %struct.blk_mq_tags*** %7, align 8
  store %struct.blk_mq_tags* %90, %struct.blk_mq_tags** %91, align 8
  br label %101

92:                                               ; preds = %24
  %93 = load %struct.blk_mq_tags*, %struct.blk_mq_tags** %10, align 8
  %94 = getelementptr inbounds %struct.blk_mq_tags, %struct.blk_mq_tags* %93, i32 0, i32 2
  %95 = load i32, i32* %8, align 4
  %96 = load %struct.blk_mq_tags*, %struct.blk_mq_tags** %10, align 8
  %97 = getelementptr inbounds %struct.blk_mq_tags, %struct.blk_mq_tags* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = sub i32 %95, %98
  %100 = call i32 @sbitmap_queue_resize(i32* %94, i32 %99)
  br label %101

101:                                              ; preds = %92, %79
  store i32 0, i32* %5, align 4
  br label %102

102:                                              ; preds = %101, %74, %61, %46, %38, %21
  %103 = load i32, i32* %5, align 4
  ret i32 %103
}

declare dso_local %struct.blk_mq_tags* @blk_mq_alloc_rq_map(%struct.blk_mq_tag_set*, i32, i32, i32) #1

declare dso_local i32 @blk_mq_alloc_rqs(%struct.blk_mq_tag_set*, %struct.blk_mq_tags*, i32, i32) #1

declare dso_local i32 @blk_mq_free_rq_map(%struct.blk_mq_tags*) #1

declare dso_local i32 @blk_mq_free_rqs(%struct.blk_mq_tag_set*, %struct.blk_mq_tags*, i32) #1

declare dso_local i32 @sbitmap_queue_resize(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
