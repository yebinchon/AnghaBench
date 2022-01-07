; ModuleID = '/home/carl/AnghaBench/linux/block/extr_blk-merge.c_blk_try_req_merge.c'
source_filename = "/home/carl/AnghaBench/linux/block/extr_blk-merge.c_blk_try_req_merge.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.request = type { i32 }

@ELEVATOR_DISCARD_MERGE = common dso_local global i32 0, align 4
@ELEVATOR_BACK_MERGE = common dso_local global i32 0, align 4
@ELEVATOR_NO_MERGE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.request*, %struct.request*)* @blk_try_req_merge to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @blk_try_req_merge(%struct.request* %0, %struct.request* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.request*, align 8
  %5 = alloca %struct.request*, align 8
  store %struct.request* %0, %struct.request** %4, align 8
  store %struct.request* %1, %struct.request** %5, align 8
  %6 = load %struct.request*, %struct.request** %4, align 8
  %7 = call i64 @blk_discard_mergable(%struct.request* %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %11

9:                                                ; preds = %2
  %10 = load i32, i32* @ELEVATOR_DISCARD_MERGE, align 4
  store i32 %10, i32* %3, align 4
  br label %25

11:                                               ; preds = %2
  %12 = load %struct.request*, %struct.request** %4, align 8
  %13 = call i64 @blk_rq_pos(%struct.request* %12)
  %14 = load %struct.request*, %struct.request** %4, align 8
  %15 = call i64 @blk_rq_sectors(%struct.request* %14)
  %16 = add nsw i64 %13, %15
  %17 = load %struct.request*, %struct.request** %5, align 8
  %18 = call i64 @blk_rq_pos(%struct.request* %17)
  %19 = icmp eq i64 %16, %18
  br i1 %19, label %20, label %22

20:                                               ; preds = %11
  %21 = load i32, i32* @ELEVATOR_BACK_MERGE, align 4
  store i32 %21, i32* %3, align 4
  br label %25

22:                                               ; preds = %11
  br label %23

23:                                               ; preds = %22
  %24 = load i32, i32* @ELEVATOR_NO_MERGE, align 4
  store i32 %24, i32* %3, align 4
  br label %25

25:                                               ; preds = %23, %20, %9
  %26 = load i32, i32* %3, align 4
  ret i32 %26
}

declare dso_local i64 @blk_discard_mergable(%struct.request*) #1

declare dso_local i64 @blk_rq_pos(%struct.request*) #1

declare dso_local i64 @blk_rq_sectors(%struct.request*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
