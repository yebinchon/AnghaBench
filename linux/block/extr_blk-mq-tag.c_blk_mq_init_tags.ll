; ModuleID = '/home/carl/AnghaBench/linux/block/extr_blk-mq-tag.c_blk_mq_init_tags.c'
source_filename = "/home/carl/AnghaBench/linux/block/extr_blk-mq-tag.c_blk_mq_init_tags.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.blk_mq_tags = type { i32, i32 }

@BLK_MQ_TAG_MAX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"blk-mq: tag depth too large\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.blk_mq_tags* @blk_mq_init_tags(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.blk_mq_tags*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.blk_mq_tags*, align 8
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %11 = load i32, i32* %6, align 4
  %12 = load i32, i32* @BLK_MQ_TAG_MAX, align 4
  %13 = icmp ugt i32 %11, %12
  br i1 %13, label %14, label %16

14:                                               ; preds = %4
  %15 = call i32 @pr_err(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  store %struct.blk_mq_tags* null, %struct.blk_mq_tags** %5, align 8
  br label %34

16:                                               ; preds = %4
  %17 = load i32, i32* @GFP_KERNEL, align 4
  %18 = load i32, i32* %8, align 4
  %19 = call %struct.blk_mq_tags* @kzalloc_node(i32 8, i32 %17, i32 %18)
  store %struct.blk_mq_tags* %19, %struct.blk_mq_tags** %10, align 8
  %20 = load %struct.blk_mq_tags*, %struct.blk_mq_tags** %10, align 8
  %21 = icmp ne %struct.blk_mq_tags* %20, null
  br i1 %21, label %23, label %22

22:                                               ; preds = %16
  store %struct.blk_mq_tags* null, %struct.blk_mq_tags** %5, align 8
  br label %34

23:                                               ; preds = %16
  %24 = load i32, i32* %6, align 4
  %25 = load %struct.blk_mq_tags*, %struct.blk_mq_tags** %10, align 8
  %26 = getelementptr inbounds %struct.blk_mq_tags, %struct.blk_mq_tags* %25, i32 0, i32 0
  store i32 %24, i32* %26, align 4
  %27 = load i32, i32* %7, align 4
  %28 = load %struct.blk_mq_tags*, %struct.blk_mq_tags** %10, align 8
  %29 = getelementptr inbounds %struct.blk_mq_tags, %struct.blk_mq_tags* %28, i32 0, i32 1
  store i32 %27, i32* %29, align 4
  %30 = load %struct.blk_mq_tags*, %struct.blk_mq_tags** %10, align 8
  %31 = load i32, i32* %8, align 4
  %32 = load i32, i32* %9, align 4
  %33 = call %struct.blk_mq_tags* @blk_mq_init_bitmap_tags(%struct.blk_mq_tags* %30, i32 %31, i32 %32)
  store %struct.blk_mq_tags* %33, %struct.blk_mq_tags** %5, align 8
  br label %34

34:                                               ; preds = %23, %22, %14
  %35 = load %struct.blk_mq_tags*, %struct.blk_mq_tags** %5, align 8
  ret %struct.blk_mq_tags* %35
}

declare dso_local i32 @pr_err(i8*) #1

declare dso_local %struct.blk_mq_tags* @kzalloc_node(i32, i32, i32) #1

declare dso_local %struct.blk_mq_tags* @blk_mq_init_bitmap_tags(%struct.blk_mq_tags*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
