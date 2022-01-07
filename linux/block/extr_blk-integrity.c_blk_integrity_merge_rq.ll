; ModuleID = '/home/carl/AnghaBench/linux/block/extr_blk-integrity.c_blk_integrity_merge_rq.c'
source_filename = "/home/carl/AnghaBench/linux/block/extr_blk-integrity.c_blk_integrity_merge_rq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.request_queue = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }
%struct.request = type { i64, i32 }
%struct.TYPE_4__ = type { i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @blk_integrity_merge_rq(%struct.request_queue* %0, %struct.request* %1, %struct.request* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.request_queue*, align 8
  %6 = alloca %struct.request*, align 8
  %7 = alloca %struct.request*, align 8
  store %struct.request_queue* %0, %struct.request_queue** %5, align 8
  store %struct.request* %1, %struct.request** %6, align 8
  store %struct.request* %2, %struct.request** %7, align 8
  %8 = load %struct.request*, %struct.request** %6, align 8
  %9 = call i64 @blk_integrity_rq(%struct.request* %8)
  %10 = icmp eq i64 %9, 0
  br i1 %10, label %11, label %16

11:                                               ; preds = %3
  %12 = load %struct.request*, %struct.request** %7, align 8
  %13 = call i64 @blk_integrity_rq(%struct.request* %12)
  %14 = icmp eq i64 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %11
  store i32 1, i32* %4, align 4
  br label %63

16:                                               ; preds = %11, %3
  %17 = load %struct.request*, %struct.request** %6, align 8
  %18 = call i64 @blk_integrity_rq(%struct.request* %17)
  %19 = icmp eq i64 %18, 0
  br i1 %19, label %24, label %20

20:                                               ; preds = %16
  %21 = load %struct.request*, %struct.request** %7, align 8
  %22 = call i64 @blk_integrity_rq(%struct.request* %21)
  %23 = icmp eq i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %20, %16
  store i32 0, i32* %4, align 4
  br label %63

25:                                               ; preds = %20
  %26 = load %struct.request*, %struct.request** %6, align 8
  %27 = getelementptr inbounds %struct.request, %struct.request* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = call %struct.TYPE_4__* @bio_integrity(i32 %28)
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load %struct.request*, %struct.request** %7, align 8
  %33 = getelementptr inbounds %struct.request, %struct.request* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  %35 = call %struct.TYPE_4__* @bio_integrity(i32 %34)
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %31, %37
  br i1 %38, label %39, label %40

39:                                               ; preds = %25
  store i32 0, i32* %4, align 4
  br label %63

40:                                               ; preds = %25
  %41 = load %struct.request*, %struct.request** %6, align 8
  %42 = getelementptr inbounds %struct.request, %struct.request* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load %struct.request*, %struct.request** %7, align 8
  %45 = getelementptr inbounds %struct.request, %struct.request* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = add nsw i64 %43, %46
  %48 = load %struct.request_queue*, %struct.request_queue** %5, align 8
  %49 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = icmp sgt i64 %47, %51
  br i1 %52, label %53, label %54

53:                                               ; preds = %40
  store i32 0, i32* %4, align 4
  br label %63

54:                                               ; preds = %40
  %55 = load %struct.request*, %struct.request** %6, align 8
  %56 = load %struct.request*, %struct.request** %7, align 8
  %57 = getelementptr inbounds %struct.request, %struct.request* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 8
  %59 = call i64 @integrity_req_gap_back_merge(%struct.request* %55, i32 %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %54
  store i32 0, i32* %4, align 4
  br label %63

62:                                               ; preds = %54
  store i32 1, i32* %4, align 4
  br label %63

63:                                               ; preds = %62, %61, %53, %39, %24, %15
  %64 = load i32, i32* %4, align 4
  ret i32 %64
}

declare dso_local i64 @blk_integrity_rq(%struct.request*) #1

declare dso_local %struct.TYPE_4__* @bio_integrity(i32) #1

declare dso_local i64 @integrity_req_gap_back_merge(%struct.request*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
