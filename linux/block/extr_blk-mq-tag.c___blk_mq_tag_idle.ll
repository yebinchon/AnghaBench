; ModuleID = '/home/carl/AnghaBench/linux/block/extr_blk-mq-tag.c___blk_mq_tag_idle.c'
source_filename = "/home/carl/AnghaBench/linux/block/extr_blk-mq-tag.c___blk_mq_tag_idle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.blk_mq_hw_ctx = type { i32, %struct.blk_mq_tags* }
%struct.blk_mq_tags = type { i32 }

@BLK_MQ_S_TAG_ACTIVE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @__blk_mq_tag_idle(%struct.blk_mq_hw_ctx* %0) #0 {
  %2 = alloca %struct.blk_mq_hw_ctx*, align 8
  %3 = alloca %struct.blk_mq_tags*, align 8
  store %struct.blk_mq_hw_ctx* %0, %struct.blk_mq_hw_ctx** %2, align 8
  %4 = load %struct.blk_mq_hw_ctx*, %struct.blk_mq_hw_ctx** %2, align 8
  %5 = getelementptr inbounds %struct.blk_mq_hw_ctx, %struct.blk_mq_hw_ctx* %4, i32 0, i32 1
  %6 = load %struct.blk_mq_tags*, %struct.blk_mq_tags** %5, align 8
  store %struct.blk_mq_tags* %6, %struct.blk_mq_tags** %3, align 8
  %7 = load i32, i32* @BLK_MQ_S_TAG_ACTIVE, align 4
  %8 = load %struct.blk_mq_hw_ctx*, %struct.blk_mq_hw_ctx** %2, align 8
  %9 = getelementptr inbounds %struct.blk_mq_hw_ctx, %struct.blk_mq_hw_ctx* %8, i32 0, i32 0
  %10 = call i32 @test_and_clear_bit(i32 %7, i32* %9)
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %1
  br label %19

13:                                               ; preds = %1
  %14 = load %struct.blk_mq_tags*, %struct.blk_mq_tags** %3, align 8
  %15 = getelementptr inbounds %struct.blk_mq_tags, %struct.blk_mq_tags* %14, i32 0, i32 0
  %16 = call i32 @atomic_dec(i32* %15)
  %17 = load %struct.blk_mq_tags*, %struct.blk_mq_tags** %3, align 8
  %18 = call i32 @blk_mq_tag_wakeup_all(%struct.blk_mq_tags* %17, i32 0)
  br label %19

19:                                               ; preds = %13, %12
  ret void
}

declare dso_local i32 @test_and_clear_bit(i32, i32*) #1

declare dso_local i32 @atomic_dec(i32*) #1

declare dso_local i32 @blk_mq_tag_wakeup_all(%struct.blk_mq_tags*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
