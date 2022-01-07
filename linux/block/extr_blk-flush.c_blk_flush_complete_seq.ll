; ModuleID = '/home/carl/AnghaBench/linux/block/extr_blk-flush.c_blk_flush_complete_seq.c'
source_filename = "/home/carl/AnghaBench/linux/block/extr_blk-flush.c_blk_flush_complete_seq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.request = type { i32, %struct.TYPE_2__, %struct.list_head, %struct.request_queue* }
%struct.TYPE_2__ = type { i32, i32 }
%struct.list_head = type { i32 }
%struct.request_queue = type { i32 }
%struct.blk_flush_queue = type { i64, %struct.list_head, i32, %struct.list_head* }

@jiffies = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.request*, %struct.blk_flush_queue*, i32, i32)* @blk_flush_complete_seq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @blk_flush_complete_seq(%struct.request* %0, %struct.blk_flush_queue* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.request*, align 8
  %6 = alloca %struct.blk_flush_queue*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.request_queue*, align 8
  %10 = alloca %struct.list_head*, align 8
  %11 = alloca i32, align 4
  store %struct.request* %0, %struct.request** %5, align 8
  store %struct.blk_flush_queue* %1, %struct.blk_flush_queue** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %12 = load %struct.request*, %struct.request** %5, align 8
  %13 = getelementptr inbounds %struct.request, %struct.request* %12, i32 0, i32 3
  %14 = load %struct.request_queue*, %struct.request_queue** %13, align 8
  store %struct.request_queue* %14, %struct.request_queue** %9, align 8
  %15 = load %struct.blk_flush_queue*, %struct.blk_flush_queue** %6, align 8
  %16 = getelementptr inbounds %struct.blk_flush_queue, %struct.blk_flush_queue* %15, i32 0, i32 3
  %17 = load %struct.list_head*, %struct.list_head** %16, align 8
  %18 = load %struct.blk_flush_queue*, %struct.blk_flush_queue** %6, align 8
  %19 = getelementptr inbounds %struct.blk_flush_queue, %struct.blk_flush_queue* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = getelementptr inbounds %struct.list_head, %struct.list_head* %17, i64 %20
  store %struct.list_head* %21, %struct.list_head** %10, align 8
  %22 = load %struct.request*, %struct.request** %5, align 8
  %23 = getelementptr inbounds %struct.request, %struct.request* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* %7, align 4
  %27 = and i32 %25, %26
  %28 = call i32 @BUG_ON(i32 %27)
  %29 = load i32, i32* %7, align 4
  %30 = load %struct.request*, %struct.request** %5, align 8
  %31 = getelementptr inbounds %struct.request, %struct.request* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = or i32 %33, %29
  store i32 %34, i32* %32, align 4
  %35 = load %struct.request*, %struct.request** %5, align 8
  %36 = getelementptr inbounds %struct.request, %struct.request* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  store i32 %37, i32* %11, align 4
  %38 = load i32, i32* %8, align 4
  %39 = icmp ne i32 %38, 0
  %40 = xor i1 %39, true
  %41 = zext i1 %40 to i32
  %42 = call i64 @likely(i32 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %4
  %45 = load %struct.request*, %struct.request** %5, align 8
  %46 = call i32 @blk_flush_cur_seq(%struct.request* %45)
  store i32 %46, i32* %7, align 4
  br label %48

47:                                               ; preds = %4
  store i32 130, i32* %7, align 4
  br label %48

48:                                               ; preds = %47, %44
  %49 = load i32, i32* %7, align 4
  switch i32 %49, label %90 [
    i32 128, label %50
    i32 129, label %50
    i32 131, label %64
    i32 130, label %73
  ]

50:                                               ; preds = %48, %48
  %51 = load %struct.list_head*, %struct.list_head** %10, align 8
  %52 = call i32 @list_empty(%struct.list_head* %51)
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %58

54:                                               ; preds = %50
  %55 = load i32, i32* @jiffies, align 4
  %56 = load %struct.blk_flush_queue*, %struct.blk_flush_queue** %6, align 8
  %57 = getelementptr inbounds %struct.blk_flush_queue, %struct.blk_flush_queue* %56, i32 0, i32 2
  store i32 %55, i32* %57, align 4
  br label %58

58:                                               ; preds = %54, %50
  %59 = load %struct.request*, %struct.request** %5, align 8
  %60 = getelementptr inbounds %struct.request, %struct.request* %59, i32 0, i32 1
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 1
  %62 = load %struct.list_head*, %struct.list_head** %10, align 8
  %63 = call i32 @list_move_tail(i32* %61, %struct.list_head* %62)
  br label %92

64:                                               ; preds = %48
  %65 = load %struct.request*, %struct.request** %5, align 8
  %66 = getelementptr inbounds %struct.request, %struct.request* %65, i32 0, i32 1
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 1
  %68 = load %struct.blk_flush_queue*, %struct.blk_flush_queue** %6, align 8
  %69 = getelementptr inbounds %struct.blk_flush_queue, %struct.blk_flush_queue* %68, i32 0, i32 1
  %70 = call i32 @list_move_tail(i32* %67, %struct.list_head* %69)
  %71 = load %struct.request*, %struct.request** %5, align 8
  %72 = call i32 @blk_flush_queue_rq(%struct.request* %71, i32 1)
  br label %92

73:                                               ; preds = %48
  %74 = load %struct.request*, %struct.request** %5, align 8
  %75 = getelementptr inbounds %struct.request, %struct.request* %74, i32 0, i32 2
  %76 = call i32 @list_empty(%struct.list_head* %75)
  %77 = icmp ne i32 %76, 0
  %78 = xor i1 %77, true
  %79 = zext i1 %78 to i32
  %80 = call i32 @BUG_ON(i32 %79)
  %81 = load %struct.request*, %struct.request** %5, align 8
  %82 = getelementptr inbounds %struct.request, %struct.request* %81, i32 0, i32 1
  %83 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %82, i32 0, i32 1
  %84 = call i32 @list_del_init(i32* %83)
  %85 = load %struct.request*, %struct.request** %5, align 8
  %86 = call i32 @blk_flush_restore_request(%struct.request* %85)
  %87 = load %struct.request*, %struct.request** %5, align 8
  %88 = load i32, i32* %8, align 4
  %89 = call i32 @blk_mq_end_request(%struct.request* %87, i32 %88)
  br label %92

90:                                               ; preds = %48
  %91 = call i32 (...) @BUG()
  br label %92

92:                                               ; preds = %90, %73, %64, %58
  %93 = load %struct.request_queue*, %struct.request_queue** %9, align 8
  %94 = load %struct.blk_flush_queue*, %struct.blk_flush_queue** %6, align 8
  %95 = load i32, i32* %11, align 4
  %96 = call i32 @blk_kick_flush(%struct.request_queue* %93, %struct.blk_flush_queue* %94, i32 %95)
  ret void
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @blk_flush_cur_seq(%struct.request*) #1

declare dso_local i32 @list_empty(%struct.list_head*) #1

declare dso_local i32 @list_move_tail(i32*, %struct.list_head*) #1

declare dso_local i32 @blk_flush_queue_rq(%struct.request*, i32) #1

declare dso_local i32 @list_del_init(i32*) #1

declare dso_local i32 @blk_flush_restore_request(%struct.request*) #1

declare dso_local i32 @blk_mq_end_request(%struct.request*, i32) #1

declare dso_local i32 @BUG(...) #1

declare dso_local i32 @blk_kick_flush(%struct.request_queue*, %struct.blk_flush_queue*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
