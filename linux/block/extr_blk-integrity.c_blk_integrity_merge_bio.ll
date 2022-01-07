; ModuleID = '/home/carl/AnghaBench/linux/block/extr_blk-integrity.c_blk_integrity_merge_bio.c'
source_filename = "/home/carl/AnghaBench/linux/block/extr_blk-integrity.c_blk_integrity_merge_bio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.request_queue = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }
%struct.request = type { i64, %struct.bio* }
%struct.bio = type { %struct.bio* }
%struct.TYPE_4__ = type { i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @blk_integrity_merge_bio(%struct.request_queue* %0, %struct.request* %1, %struct.bio* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.request_queue*, align 8
  %6 = alloca %struct.request*, align 8
  %7 = alloca %struct.bio*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.bio*, align 8
  store %struct.request_queue* %0, %struct.request_queue** %5, align 8
  store %struct.request* %1, %struct.request** %6, align 8
  store %struct.bio* %2, %struct.bio** %7, align 8
  %10 = load %struct.bio*, %struct.bio** %7, align 8
  %11 = getelementptr inbounds %struct.bio, %struct.bio* %10, i32 0, i32 0
  %12 = load %struct.bio*, %struct.bio** %11, align 8
  store %struct.bio* %12, %struct.bio** %9, align 8
  %13 = load %struct.request*, %struct.request** %6, align 8
  %14 = call i64 @blk_integrity_rq(%struct.request* %13)
  %15 = icmp eq i64 %14, 0
  br i1 %15, label %16, label %21

16:                                               ; preds = %3
  %17 = load %struct.bio*, %struct.bio** %7, align 8
  %18 = call %struct.TYPE_4__* @bio_integrity(%struct.bio* %17)
  %19 = icmp eq %struct.TYPE_4__* %18, null
  br i1 %19, label %20, label %21

20:                                               ; preds = %16
  store i32 1, i32* %4, align 4
  br label %71

21:                                               ; preds = %16, %3
  %22 = load %struct.request*, %struct.request** %6, align 8
  %23 = call i64 @blk_integrity_rq(%struct.request* %22)
  %24 = icmp eq i64 %23, 0
  br i1 %24, label %29, label %25

25:                                               ; preds = %21
  %26 = load %struct.bio*, %struct.bio** %7, align 8
  %27 = call %struct.TYPE_4__* @bio_integrity(%struct.bio* %26)
  %28 = icmp eq %struct.TYPE_4__* %27, null
  br i1 %28, label %29, label %30

29:                                               ; preds = %25, %21
  store i32 0, i32* %4, align 4
  br label %71

30:                                               ; preds = %25
  %31 = load %struct.request*, %struct.request** %6, align 8
  %32 = getelementptr inbounds %struct.request, %struct.request* %31, i32 0, i32 1
  %33 = load %struct.bio*, %struct.bio** %32, align 8
  %34 = call %struct.TYPE_4__* @bio_integrity(%struct.bio* %33)
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load %struct.bio*, %struct.bio** %7, align 8
  %38 = call %struct.TYPE_4__* @bio_integrity(%struct.bio* %37)
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %36, %40
  br i1 %41, label %42, label %43

42:                                               ; preds = %30
  store i32 0, i32* %4, align 4
  br label %71

43:                                               ; preds = %30
  %44 = load %struct.bio*, %struct.bio** %7, align 8
  %45 = getelementptr inbounds %struct.bio, %struct.bio* %44, i32 0, i32 0
  store %struct.bio* null, %struct.bio** %45, align 8
  %46 = load %struct.request_queue*, %struct.request_queue** %5, align 8
  %47 = load %struct.bio*, %struct.bio** %7, align 8
  %48 = call i32 @blk_rq_count_integrity_sg(%struct.request_queue* %46, %struct.bio* %47)
  store i32 %48, i32* %8, align 4
  %49 = load %struct.bio*, %struct.bio** %9, align 8
  %50 = load %struct.bio*, %struct.bio** %7, align 8
  %51 = getelementptr inbounds %struct.bio, %struct.bio* %50, i32 0, i32 0
  store %struct.bio* %49, %struct.bio** %51, align 8
  %52 = load %struct.request*, %struct.request** %6, align 8
  %53 = getelementptr inbounds %struct.request, %struct.request* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load i32, i32* %8, align 4
  %56 = sext i32 %55 to i64
  %57 = add nsw i64 %54, %56
  %58 = load %struct.request_queue*, %struct.request_queue** %5, align 8
  %59 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = icmp sgt i64 %57, %61
  br i1 %62, label %63, label %64

63:                                               ; preds = %43
  store i32 0, i32* %4, align 4
  br label %71

64:                                               ; preds = %43
  %65 = load i32, i32* %8, align 4
  %66 = sext i32 %65 to i64
  %67 = load %struct.request*, %struct.request** %6, align 8
  %68 = getelementptr inbounds %struct.request, %struct.request* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = add nsw i64 %69, %66
  store i64 %70, i64* %68, align 8
  store i32 1, i32* %4, align 4
  br label %71

71:                                               ; preds = %64, %63, %42, %29, %20
  %72 = load i32, i32* %4, align 4
  ret i32 %72
}

declare dso_local i64 @blk_integrity_rq(%struct.request*) #1

declare dso_local %struct.TYPE_4__* @bio_integrity(%struct.bio*) #1

declare dso_local i32 @blk_rq_count_integrity_sg(%struct.request_queue*, %struct.bio*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
