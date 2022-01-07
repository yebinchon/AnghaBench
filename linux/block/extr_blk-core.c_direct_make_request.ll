; ModuleID = '/home/carl/AnghaBench/linux/block/extr_blk-core.c_direct_make_request.c'
source_filename = "/home/carl/AnghaBench/linux/block/extr_blk-core.c_direct_make_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bio = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.request_queue* }
%struct.request_queue = type { i32 (%struct.request_queue*, %struct.bio.0*)* }
%struct.bio.0 = type opaque

@REQ_NOWAIT = common dso_local global i32 0, align 4
@BLK_QC_T_NONE = common dso_local global i32 0, align 4
@BLK_MQ_REQ_NOWAIT = common dso_local global i32 0, align 4
@BLK_STS_AGAIN = common dso_local global i32 0, align 4
@BLK_STS_IOERR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @direct_make_request(%struct.bio* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.bio*, align 8
  %4 = alloca %struct.request_queue*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.bio* %0, %struct.bio** %3, align 8
  %7 = load %struct.bio*, %struct.bio** %3, align 8
  %8 = getelementptr inbounds %struct.bio, %struct.bio* %7, i32 0, i32 2
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load %struct.request_queue*, %struct.request_queue** %10, align 8
  store %struct.request_queue* %11, %struct.request_queue** %4, align 8
  %12 = load %struct.bio*, %struct.bio** %3, align 8
  %13 = getelementptr inbounds %struct.bio, %struct.bio* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = load i32, i32* @REQ_NOWAIT, align 4
  %16 = and i32 %14, %15
  store i32 %16, i32* %5, align 4
  %17 = load %struct.bio*, %struct.bio** %3, align 8
  %18 = call i32 @generic_make_request_checks(%struct.bio* %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %22, label %20

20:                                               ; preds = %1
  %21 = load i32, i32* @BLK_QC_T_NONE, align 4
  store i32 %21, i32* %2, align 4
  br label %64

22:                                               ; preds = %1
  %23 = load %struct.request_queue*, %struct.request_queue** %4, align 8
  %24 = load i32, i32* %5, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %22
  %27 = load i32, i32* @BLK_MQ_REQ_NOWAIT, align 4
  br label %29

28:                                               ; preds = %22
  br label %29

29:                                               ; preds = %28, %26
  %30 = phi i32 [ %27, %26 ], [ 0, %28 ]
  %31 = call i32 @blk_queue_enter(%struct.request_queue* %23, i32 %30)
  %32 = call i64 @unlikely(i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %53

34:                                               ; preds = %29
  %35 = load i32, i32* %5, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %45

37:                                               ; preds = %34
  %38 = load %struct.request_queue*, %struct.request_queue** %4, align 8
  %39 = call i32 @blk_queue_dying(%struct.request_queue* %38)
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %45, label %41

41:                                               ; preds = %37
  %42 = load i32, i32* @BLK_STS_AGAIN, align 4
  %43 = load %struct.bio*, %struct.bio** %3, align 8
  %44 = getelementptr inbounds %struct.bio, %struct.bio* %43, i32 0, i32 1
  store i32 %42, i32* %44, align 4
  br label %49

45:                                               ; preds = %37, %34
  %46 = load i32, i32* @BLK_STS_IOERR, align 4
  %47 = load %struct.bio*, %struct.bio** %3, align 8
  %48 = getelementptr inbounds %struct.bio, %struct.bio* %47, i32 0, i32 1
  store i32 %46, i32* %48, align 4
  br label %49

49:                                               ; preds = %45, %41
  %50 = load %struct.bio*, %struct.bio** %3, align 8
  %51 = call i32 @bio_endio(%struct.bio* %50)
  %52 = load i32, i32* @BLK_QC_T_NONE, align 4
  store i32 %52, i32* %2, align 4
  br label %64

53:                                               ; preds = %29
  %54 = load %struct.request_queue*, %struct.request_queue** %4, align 8
  %55 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %54, i32 0, i32 0
  %56 = load i32 (%struct.request_queue*, %struct.bio.0*)*, i32 (%struct.request_queue*, %struct.bio.0*)** %55, align 8
  %57 = load %struct.request_queue*, %struct.request_queue** %4, align 8
  %58 = load %struct.bio*, %struct.bio** %3, align 8
  %59 = bitcast %struct.bio* %58 to %struct.bio.0*
  %60 = call i32 %56(%struct.request_queue* %57, %struct.bio.0* %59)
  store i32 %60, i32* %6, align 4
  %61 = load %struct.request_queue*, %struct.request_queue** %4, align 8
  %62 = call i32 @blk_queue_exit(%struct.request_queue* %61)
  %63 = load i32, i32* %6, align 4
  store i32 %63, i32* %2, align 4
  br label %64

64:                                               ; preds = %53, %49, %20
  %65 = load i32, i32* %2, align 4
  ret i32 %65
}

declare dso_local i32 @generic_make_request_checks(%struct.bio*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @blk_queue_enter(%struct.request_queue*, i32) #1

declare dso_local i32 @blk_queue_dying(%struct.request_queue*) #1

declare dso_local i32 @bio_endio(%struct.bio*) #1

declare dso_local i32 @blk_queue_exit(%struct.request_queue*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
