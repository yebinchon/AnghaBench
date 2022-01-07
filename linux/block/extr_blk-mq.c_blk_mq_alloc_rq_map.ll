; ModuleID = '/home/carl/AnghaBench/linux/block/extr_blk-mq.c_blk_mq_alloc_rq_map.c'
source_filename = "/home/carl/AnghaBench/linux/block/extr_blk-mq.c_blk_mq_alloc_rq_map.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.blk_mq_tags = type { i8*, i8* }
%struct.blk_mq_tag_set = type { i32, i32, i32* }

@HCTX_TYPE_DEFAULT = common dso_local global i64 0, align 8
@NUMA_NO_NODE = common dso_local global i32 0, align 4
@GFP_NOIO = common dso_local global i32 0, align 4
@__GFP_NOWARN = common dso_local global i32 0, align 4
@__GFP_NORETRY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.blk_mq_tags* @blk_mq_alloc_rq_map(%struct.blk_mq_tag_set* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.blk_mq_tags*, align 8
  %6 = alloca %struct.blk_mq_tag_set*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.blk_mq_tags*, align 8
  %11 = alloca i32, align 4
  store %struct.blk_mq_tag_set* %0, %struct.blk_mq_tag_set** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %12 = load %struct.blk_mq_tag_set*, %struct.blk_mq_tag_set** %6, align 8
  %13 = getelementptr inbounds %struct.blk_mq_tag_set, %struct.blk_mq_tag_set* %12, i32 0, i32 2
  %14 = load i32*, i32** %13, align 8
  %15 = load i64, i64* @HCTX_TYPE_DEFAULT, align 8
  %16 = getelementptr inbounds i32, i32* %14, i64 %15
  %17 = load i32, i32* %7, align 4
  %18 = call i32 @blk_mq_hw_queue_to_node(i32* %16, i32 %17)
  store i32 %18, i32* %11, align 4
  %19 = load i32, i32* %11, align 4
  %20 = load i32, i32* @NUMA_NO_NODE, align 4
  %21 = icmp eq i32 %19, %20
  br i1 %21, label %22, label %26

22:                                               ; preds = %4
  %23 = load %struct.blk_mq_tag_set*, %struct.blk_mq_tag_set** %6, align 8
  %24 = getelementptr inbounds %struct.blk_mq_tag_set, %struct.blk_mq_tag_set* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  store i32 %25, i32* %11, align 4
  br label %26

26:                                               ; preds = %22, %4
  %27 = load i32, i32* %8, align 4
  %28 = load i32, i32* %9, align 4
  %29 = load i32, i32* %11, align 4
  %30 = load %struct.blk_mq_tag_set*, %struct.blk_mq_tag_set** %6, align 8
  %31 = getelementptr inbounds %struct.blk_mq_tag_set, %struct.blk_mq_tag_set* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @BLK_MQ_FLAG_TO_ALLOC_POLICY(i32 %32)
  %34 = call %struct.blk_mq_tags* @blk_mq_init_tags(i32 %27, i32 %28, i32 %29, i32 %33)
  store %struct.blk_mq_tags* %34, %struct.blk_mq_tags** %10, align 8
  %35 = load %struct.blk_mq_tags*, %struct.blk_mq_tags** %10, align 8
  %36 = icmp ne %struct.blk_mq_tags* %35, null
  br i1 %36, label %38, label %37

37:                                               ; preds = %26
  store %struct.blk_mq_tags* null, %struct.blk_mq_tags** %5, align 8
  br label %80

38:                                               ; preds = %26
  %39 = load i32, i32* %8, align 4
  %40 = load i32, i32* @GFP_NOIO, align 4
  %41 = load i32, i32* @__GFP_NOWARN, align 4
  %42 = or i32 %40, %41
  %43 = load i32, i32* @__GFP_NORETRY, align 4
  %44 = or i32 %42, %43
  %45 = load i32, i32* %11, align 4
  %46 = call i8* @kcalloc_node(i32 %39, i32 8, i32 %44, i32 %45)
  %47 = load %struct.blk_mq_tags*, %struct.blk_mq_tags** %10, align 8
  %48 = getelementptr inbounds %struct.blk_mq_tags, %struct.blk_mq_tags* %47, i32 0, i32 0
  store i8* %46, i8** %48, align 8
  %49 = load %struct.blk_mq_tags*, %struct.blk_mq_tags** %10, align 8
  %50 = getelementptr inbounds %struct.blk_mq_tags, %struct.blk_mq_tags* %49, i32 0, i32 0
  %51 = load i8*, i8** %50, align 8
  %52 = icmp ne i8* %51, null
  br i1 %52, label %56, label %53

53:                                               ; preds = %38
  %54 = load %struct.blk_mq_tags*, %struct.blk_mq_tags** %10, align 8
  %55 = call i32 @blk_mq_free_tags(%struct.blk_mq_tags* %54)
  store %struct.blk_mq_tags* null, %struct.blk_mq_tags** %5, align 8
  br label %80

56:                                               ; preds = %38
  %57 = load i32, i32* %8, align 4
  %58 = load i32, i32* @GFP_NOIO, align 4
  %59 = load i32, i32* @__GFP_NOWARN, align 4
  %60 = or i32 %58, %59
  %61 = load i32, i32* @__GFP_NORETRY, align 4
  %62 = or i32 %60, %61
  %63 = load i32, i32* %11, align 4
  %64 = call i8* @kcalloc_node(i32 %57, i32 8, i32 %62, i32 %63)
  %65 = load %struct.blk_mq_tags*, %struct.blk_mq_tags** %10, align 8
  %66 = getelementptr inbounds %struct.blk_mq_tags, %struct.blk_mq_tags* %65, i32 0, i32 1
  store i8* %64, i8** %66, align 8
  %67 = load %struct.blk_mq_tags*, %struct.blk_mq_tags** %10, align 8
  %68 = getelementptr inbounds %struct.blk_mq_tags, %struct.blk_mq_tags* %67, i32 0, i32 1
  %69 = load i8*, i8** %68, align 8
  %70 = icmp ne i8* %69, null
  br i1 %70, label %78, label %71

71:                                               ; preds = %56
  %72 = load %struct.blk_mq_tags*, %struct.blk_mq_tags** %10, align 8
  %73 = getelementptr inbounds %struct.blk_mq_tags, %struct.blk_mq_tags* %72, i32 0, i32 0
  %74 = load i8*, i8** %73, align 8
  %75 = call i32 @kfree(i8* %74)
  %76 = load %struct.blk_mq_tags*, %struct.blk_mq_tags** %10, align 8
  %77 = call i32 @blk_mq_free_tags(%struct.blk_mq_tags* %76)
  store %struct.blk_mq_tags* null, %struct.blk_mq_tags** %5, align 8
  br label %80

78:                                               ; preds = %56
  %79 = load %struct.blk_mq_tags*, %struct.blk_mq_tags** %10, align 8
  store %struct.blk_mq_tags* %79, %struct.blk_mq_tags** %5, align 8
  br label %80

80:                                               ; preds = %78, %71, %53, %37
  %81 = load %struct.blk_mq_tags*, %struct.blk_mq_tags** %5, align 8
  ret %struct.blk_mq_tags* %81
}

declare dso_local i32 @blk_mq_hw_queue_to_node(i32*, i32) #1

declare dso_local %struct.blk_mq_tags* @blk_mq_init_tags(i32, i32, i32, i32) #1

declare dso_local i32 @BLK_MQ_FLAG_TO_ALLOC_POLICY(i32) #1

declare dso_local i8* @kcalloc_node(i32, i32, i32, i32) #1

declare dso_local i32 @blk_mq_free_tags(%struct.blk_mq_tags*) #1

declare dso_local i32 @kfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
