; ModuleID = '/home/carl/AnghaBench/linux/block/extr_bounce.c_blk_queue_bounce.c'
source_filename = "/home/carl/AnghaBench/linux/block/extr_bounce.c_blk_queue_bounce.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.request_queue = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }
%struct.bio = type { i32 }

@GFP_DMA = common dso_local global i32 0, align 4
@blk_max_pfn = common dso_local global i64 0, align 8
@page_pool = common dso_local global i32 0, align 4
@isa_page_pool = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @blk_queue_bounce(%struct.request_queue* %0, %struct.bio** %1) #0 {
  %3 = alloca %struct.request_queue*, align 8
  %4 = alloca %struct.bio**, align 8
  %5 = alloca i32*, align 8
  store %struct.request_queue* %0, %struct.request_queue** %3, align 8
  store %struct.bio** %1, %struct.bio*** %4, align 8
  %6 = load %struct.bio**, %struct.bio*** %4, align 8
  %7 = load %struct.bio*, %struct.bio** %6, align 8
  %8 = call i32 @bio_has_data(%struct.bio* %7)
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %2
  br label %38

11:                                               ; preds = %2
  %12 = load %struct.request_queue*, %struct.request_queue** %3, align 8
  %13 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = load i32, i32* @GFP_DMA, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %27, label %18

18:                                               ; preds = %11
  %19 = load %struct.request_queue*, %struct.request_queue** %3, align 8
  %20 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @blk_max_pfn, align 8
  %24 = icmp sge i64 %22, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %18
  br label %38

26:                                               ; preds = %18
  store i32* @page_pool, i32** %5, align 8
  br label %33

27:                                               ; preds = %11
  %28 = call i32 @mempool_initialized(i32* @isa_page_pool)
  %29 = icmp ne i32 %28, 0
  %30 = xor i1 %29, true
  %31 = zext i1 %30 to i32
  %32 = call i32 @BUG_ON(i32 %31)
  store i32* @isa_page_pool, i32** %5, align 8
  br label %33

33:                                               ; preds = %27, %26
  %34 = load %struct.request_queue*, %struct.request_queue** %3, align 8
  %35 = load %struct.bio**, %struct.bio*** %4, align 8
  %36 = load i32*, i32** %5, align 8
  %37 = call i32 @__blk_queue_bounce(%struct.request_queue* %34, %struct.bio** %35, i32* %36)
  br label %38

38:                                               ; preds = %33, %25, %10
  ret void
}

declare dso_local i32 @bio_has_data(%struct.bio*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @mempool_initialized(i32*) #1

declare dso_local i32 @__blk_queue_bounce(%struct.request_queue*, %struct.bio**, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
