; ModuleID = '/home/carl/AnghaBench/linux/block/extr_blk-mq-tag.h_blk_mq_tag_set_rq.c'
source_filename = "/home/carl/AnghaBench/linux/block/extr_blk-mq-tag.h_blk_mq_tag_set_rq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.blk_mq_hw_ctx = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.request** }
%struct.request = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.blk_mq_hw_ctx*, i32, %struct.request*)* @blk_mq_tag_set_rq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @blk_mq_tag_set_rq(%struct.blk_mq_hw_ctx* %0, i32 %1, %struct.request* %2) #0 {
  %4 = alloca %struct.blk_mq_hw_ctx*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.request*, align 8
  store %struct.blk_mq_hw_ctx* %0, %struct.blk_mq_hw_ctx** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.request* %2, %struct.request** %6, align 8
  %7 = load %struct.request*, %struct.request** %6, align 8
  %8 = load %struct.blk_mq_hw_ctx*, %struct.blk_mq_hw_ctx** %4, align 8
  %9 = getelementptr inbounds %struct.blk_mq_hw_ctx, %struct.blk_mq_hw_ctx* %8, i32 0, i32 0
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load %struct.request**, %struct.request*** %11, align 8
  %13 = load i32, i32* %5, align 4
  %14 = zext i32 %13 to i64
  %15 = getelementptr inbounds %struct.request*, %struct.request** %12, i64 %14
  store %struct.request* %7, %struct.request** %15, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
