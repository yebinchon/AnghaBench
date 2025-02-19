; ModuleID = '/home/carl/AnghaBench/linux/block/extr_blk-merge.c_blk_discard_mergable.c'
source_filename = "/home/carl/AnghaBench/linux/block/extr_blk-merge.c_blk_discard_mergable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.request = type { i32 }

@REQ_OP_DISCARD = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.request*)* @blk_discard_mergable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @blk_discard_mergable(%struct.request* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.request*, align 8
  store %struct.request* %0, %struct.request** %3, align 8
  %4 = load %struct.request*, %struct.request** %3, align 8
  %5 = call i64 @req_op(%struct.request* %4)
  %6 = load i64, i64* @REQ_OP_DISCARD, align 8
  %7 = icmp eq i64 %5, %6
  br i1 %7, label %8, label %15

8:                                                ; preds = %1
  %9 = load %struct.request*, %struct.request** %3, align 8
  %10 = getelementptr inbounds %struct.request, %struct.request* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @queue_max_discard_segments(i32 %11)
  %13 = icmp sgt i32 %12, 1
  br i1 %13, label %14, label %15

14:                                               ; preds = %8
  store i32 1, i32* %2, align 4
  br label %16

15:                                               ; preds = %8, %1
  store i32 0, i32* %2, align 4
  br label %16

16:                                               ; preds = %15, %14
  %17 = load i32, i32* %2, align 4
  ret i32 %17
}

declare dso_local i64 @req_op(%struct.request*) #1

declare dso_local i32 @queue_max_discard_segments(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
