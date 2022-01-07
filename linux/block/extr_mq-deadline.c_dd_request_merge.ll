; ModuleID = '/home/carl/AnghaBench/linux/block/extr_mq-deadline.c_dd_request_merge.c'
source_filename = "/home/carl/AnghaBench/linux/block/extr_mq-deadline.c_dd_request_merge.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.request_queue = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.deadline_data* }
%struct.deadline_data = type { i32*, i32 }
%struct.request = type { i32 }
%struct.bio = type { i32 }

@ELEVATOR_NO_MERGE = common dso_local global i32 0, align 4
@ELEVATOR_FRONT_MERGE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.request_queue*, %struct.request**, %struct.bio*)* @dd_request_merge to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dd_request_merge(%struct.request_queue* %0, %struct.request** %1, %struct.bio* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.request_queue*, align 8
  %6 = alloca %struct.request**, align 8
  %7 = alloca %struct.bio*, align 8
  %8 = alloca %struct.deadline_data*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.request*, align 8
  store %struct.request_queue* %0, %struct.request_queue** %5, align 8
  store %struct.request** %1, %struct.request*** %6, align 8
  store %struct.bio* %2, %struct.bio** %7, align 8
  %11 = load %struct.request_queue*, %struct.request_queue** %5, align 8
  %12 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %11, i32 0, i32 0
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load %struct.deadline_data*, %struct.deadline_data** %14, align 8
  store %struct.deadline_data* %15, %struct.deadline_data** %8, align 8
  %16 = load %struct.bio*, %struct.bio** %7, align 8
  %17 = call i64 @bio_end_sector(%struct.bio* %16)
  store i64 %17, i64* %9, align 8
  %18 = load %struct.deadline_data*, %struct.deadline_data** %8, align 8
  %19 = getelementptr inbounds %struct.deadline_data, %struct.deadline_data* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 8
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %24, label %22

22:                                               ; preds = %3
  %23 = load i32, i32* @ELEVATOR_NO_MERGE, align 4
  store i32 %23, i32* %4, align 4
  br label %53

24:                                               ; preds = %3
  %25 = load %struct.deadline_data*, %struct.deadline_data** %8, align 8
  %26 = getelementptr inbounds %struct.deadline_data, %struct.deadline_data* %25, i32 0, i32 0
  %27 = load i32*, i32** %26, align 8
  %28 = load %struct.bio*, %struct.bio** %7, align 8
  %29 = call i64 @bio_data_dir(%struct.bio* %28)
  %30 = getelementptr inbounds i32, i32* %27, i64 %29
  %31 = load i64, i64* %9, align 8
  %32 = call %struct.request* @elv_rb_find(i32* %30, i64 %31)
  store %struct.request* %32, %struct.request** %10, align 8
  %33 = load %struct.request*, %struct.request** %10, align 8
  %34 = icmp ne %struct.request* %33, null
  br i1 %34, label %35, label %51

35:                                               ; preds = %24
  %36 = load i64, i64* %9, align 8
  %37 = load %struct.request*, %struct.request** %10, align 8
  %38 = call i64 @blk_rq_pos(%struct.request* %37)
  %39 = icmp ne i64 %36, %38
  %40 = zext i1 %39 to i32
  %41 = call i32 @BUG_ON(i32 %40)
  %42 = load %struct.request*, %struct.request** %10, align 8
  %43 = load %struct.bio*, %struct.bio** %7, align 8
  %44 = call i64 @elv_bio_merge_ok(%struct.request* %42, %struct.bio* %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %50

46:                                               ; preds = %35
  %47 = load %struct.request*, %struct.request** %10, align 8
  %48 = load %struct.request**, %struct.request*** %6, align 8
  store %struct.request* %47, %struct.request** %48, align 8
  %49 = load i32, i32* @ELEVATOR_FRONT_MERGE, align 4
  store i32 %49, i32* %4, align 4
  br label %53

50:                                               ; preds = %35
  br label %51

51:                                               ; preds = %50, %24
  %52 = load i32, i32* @ELEVATOR_NO_MERGE, align 4
  store i32 %52, i32* %4, align 4
  br label %53

53:                                               ; preds = %51, %46, %22
  %54 = load i32, i32* %4, align 4
  ret i32 %54
}

declare dso_local i64 @bio_end_sector(%struct.bio*) #1

declare dso_local %struct.request* @elv_rb_find(i32*, i64) #1

declare dso_local i64 @bio_data_dir(%struct.bio*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i64 @blk_rq_pos(%struct.request*) #1

declare dso_local i64 @elv_bio_merge_ok(%struct.request*, %struct.bio*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
