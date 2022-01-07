; ModuleID = '/home/carl/AnghaBench/linux/block/extr_blk-merge.c_blk_try_merge.c'
source_filename = "/home/carl/AnghaBench/linux/block/extr_blk-merge.c_blk_try_merge.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.request = type { i32 }
%struct.bio = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@ELEVATOR_DISCARD_MERGE = common dso_local global i32 0, align 4
@ELEVATOR_BACK_MERGE = common dso_local global i32 0, align 4
@ELEVATOR_FRONT_MERGE = common dso_local global i32 0, align 4
@ELEVATOR_NO_MERGE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @blk_try_merge(%struct.request* %0, %struct.bio* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.request*, align 8
  %5 = alloca %struct.bio*, align 8
  store %struct.request* %0, %struct.request** %4, align 8
  store %struct.bio* %1, %struct.bio** %5, align 8
  %6 = load %struct.request*, %struct.request** %4, align 8
  %7 = call i64 @blk_discard_mergable(%struct.request* %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %11

9:                                                ; preds = %2
  %10 = load i32, i32* @ELEVATOR_DISCARD_MERGE, align 4
  store i32 %10, i32* %3, align 4
  br label %41

11:                                               ; preds = %2
  %12 = load %struct.request*, %struct.request** %4, align 8
  %13 = call i64 @blk_rq_pos(%struct.request* %12)
  %14 = load %struct.request*, %struct.request** %4, align 8
  %15 = call i64 @blk_rq_sectors(%struct.request* %14)
  %16 = add nsw i64 %13, %15
  %17 = load %struct.bio*, %struct.bio** %5, align 8
  %18 = getelementptr inbounds %struct.bio, %struct.bio* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp eq i64 %16, %20
  br i1 %21, label %22, label %24

22:                                               ; preds = %11
  %23 = load i32, i32* @ELEVATOR_BACK_MERGE, align 4
  store i32 %23, i32* %3, align 4
  br label %41

24:                                               ; preds = %11
  %25 = load %struct.request*, %struct.request** %4, align 8
  %26 = call i64 @blk_rq_pos(%struct.request* %25)
  %27 = load %struct.bio*, %struct.bio** %5, align 8
  %28 = call i64 @bio_sectors(%struct.bio* %27)
  %29 = sub nsw i64 %26, %28
  %30 = load %struct.bio*, %struct.bio** %5, align 8
  %31 = getelementptr inbounds %struct.bio, %struct.bio* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = icmp eq i64 %29, %33
  br i1 %34, label %35, label %37

35:                                               ; preds = %24
  %36 = load i32, i32* @ELEVATOR_FRONT_MERGE, align 4
  store i32 %36, i32* %3, align 4
  br label %41

37:                                               ; preds = %24
  br label %38

38:                                               ; preds = %37
  br label %39

39:                                               ; preds = %38
  %40 = load i32, i32* @ELEVATOR_NO_MERGE, align 4
  store i32 %40, i32* %3, align 4
  br label %41

41:                                               ; preds = %39, %35, %22, %9
  %42 = load i32, i32* %3, align 4
  ret i32 %42
}

declare dso_local i64 @blk_discard_mergable(%struct.request*) #1

declare dso_local i64 @blk_rq_pos(%struct.request*) #1

declare dso_local i64 @blk_rq_sectors(%struct.request*) #1

declare dso_local i64 @bio_sectors(%struct.bio*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
