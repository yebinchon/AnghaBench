; ModuleID = '/home/carl/AnghaBench/linux/block/extr_blk-merge.c___blk_queue_split.c'
source_filename = "/home/carl/AnghaBench/linux/block/extr_blk-merge.c___blk_queue_split.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.request_queue = type { i32 }
%struct.bio = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }

@REQ_NOMERGE = common dso_local global i32 0, align 4
@BIO_QUEUE_ENTERED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @__blk_queue_split(%struct.request_queue* %0, %struct.bio** %1, i32* %2) #0 {
  %4 = alloca %struct.request_queue*, align 8
  %5 = alloca %struct.bio**, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.bio*, align 8
  store %struct.request_queue* %0, %struct.request_queue** %4, align 8
  store %struct.bio** %1, %struct.bio*** %5, align 8
  store i32* %2, i32** %6, align 8
  %8 = load %struct.bio**, %struct.bio*** %5, align 8
  %9 = load %struct.bio*, %struct.bio** %8, align 8
  %10 = call i32 @bio_op(%struct.bio* %9)
  switch i32 %10, label %35 [
    i32 131, label %11
    i32 130, label %11
    i32 128, label %19
    i32 129, label %27
  ]

11:                                               ; preds = %3, %3
  %12 = load %struct.request_queue*, %struct.request_queue** %4, align 8
  %13 = load %struct.bio**, %struct.bio*** %5, align 8
  %14 = load %struct.bio*, %struct.bio** %13, align 8
  %15 = load %struct.request_queue*, %struct.request_queue** %4, align 8
  %16 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %15, i32 0, i32 0
  %17 = load i32*, i32** %6, align 8
  %18 = call %struct.bio* @blk_bio_discard_split(%struct.request_queue* %12, %struct.bio* %14, i32* %16, i32* %17)
  store %struct.bio* %18, %struct.bio** %7, align 8
  br label %43

19:                                               ; preds = %3
  %20 = load %struct.request_queue*, %struct.request_queue** %4, align 8
  %21 = load %struct.bio**, %struct.bio*** %5, align 8
  %22 = load %struct.bio*, %struct.bio** %21, align 8
  %23 = load %struct.request_queue*, %struct.request_queue** %4, align 8
  %24 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %23, i32 0, i32 0
  %25 = load i32*, i32** %6, align 8
  %26 = call %struct.bio* @blk_bio_write_zeroes_split(%struct.request_queue* %20, %struct.bio* %22, i32* %24, i32* %25)
  store %struct.bio* %26, %struct.bio** %7, align 8
  br label %43

27:                                               ; preds = %3
  %28 = load %struct.request_queue*, %struct.request_queue** %4, align 8
  %29 = load %struct.bio**, %struct.bio*** %5, align 8
  %30 = load %struct.bio*, %struct.bio** %29, align 8
  %31 = load %struct.request_queue*, %struct.request_queue** %4, align 8
  %32 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %31, i32 0, i32 0
  %33 = load i32*, i32** %6, align 8
  %34 = call %struct.bio* @blk_bio_write_same_split(%struct.request_queue* %28, %struct.bio* %30, i32* %32, i32* %33)
  store %struct.bio* %34, %struct.bio** %7, align 8
  br label %43

35:                                               ; preds = %3
  %36 = load %struct.request_queue*, %struct.request_queue** %4, align 8
  %37 = load %struct.bio**, %struct.bio*** %5, align 8
  %38 = load %struct.bio*, %struct.bio** %37, align 8
  %39 = load %struct.request_queue*, %struct.request_queue** %4, align 8
  %40 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %39, i32 0, i32 0
  %41 = load i32*, i32** %6, align 8
  %42 = call %struct.bio* @blk_bio_segment_split(%struct.request_queue* %36, %struct.bio* %38, i32* %40, i32* %41)
  store %struct.bio* %42, %struct.bio** %7, align 8
  br label %43

43:                                               ; preds = %35, %27, %19, %11
  %44 = load %struct.bio*, %struct.bio** %7, align 8
  %45 = icmp ne %struct.bio* %44, null
  br i1 %45, label %46, label %73

46:                                               ; preds = %43
  %47 = load i32, i32* @REQ_NOMERGE, align 4
  %48 = load %struct.bio*, %struct.bio** %7, align 8
  %49 = getelementptr inbounds %struct.bio, %struct.bio* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = or i32 %50, %47
  store i32 %51, i32* %49, align 4
  %52 = load %struct.bio**, %struct.bio*** %5, align 8
  %53 = load %struct.bio*, %struct.bio** %52, align 8
  %54 = load i32, i32* @BIO_QUEUE_ENTERED, align 4
  %55 = call i32 @bio_set_flag(%struct.bio* %53, i32 %54)
  %56 = load %struct.bio*, %struct.bio** %7, align 8
  %57 = load %struct.bio**, %struct.bio*** %5, align 8
  %58 = load %struct.bio*, %struct.bio** %57, align 8
  %59 = call i32 @bio_chain(%struct.bio* %56, %struct.bio* %58)
  %60 = load %struct.request_queue*, %struct.request_queue** %4, align 8
  %61 = load %struct.bio*, %struct.bio** %7, align 8
  %62 = load %struct.bio**, %struct.bio*** %5, align 8
  %63 = load %struct.bio*, %struct.bio** %62, align 8
  %64 = getelementptr inbounds %struct.bio, %struct.bio* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @trace_block_split(%struct.request_queue* %60, %struct.bio* %61, i32 %66)
  %68 = load %struct.bio**, %struct.bio*** %5, align 8
  %69 = load %struct.bio*, %struct.bio** %68, align 8
  %70 = call i32 @generic_make_request(%struct.bio* %69)
  %71 = load %struct.bio*, %struct.bio** %7, align 8
  %72 = load %struct.bio**, %struct.bio*** %5, align 8
  store %struct.bio* %71, %struct.bio** %72, align 8
  br label %73

73:                                               ; preds = %46, %43
  ret void
}

declare dso_local i32 @bio_op(%struct.bio*) #1

declare dso_local %struct.bio* @blk_bio_discard_split(%struct.request_queue*, %struct.bio*, i32*, i32*) #1

declare dso_local %struct.bio* @blk_bio_write_zeroes_split(%struct.request_queue*, %struct.bio*, i32*, i32*) #1

declare dso_local %struct.bio* @blk_bio_write_same_split(%struct.request_queue*, %struct.bio*, i32*, i32*) #1

declare dso_local %struct.bio* @blk_bio_segment_split(%struct.request_queue*, %struct.bio*, i32*, i32*) #1

declare dso_local i32 @bio_set_flag(%struct.bio*, i32) #1

declare dso_local i32 @bio_chain(%struct.bio*, %struct.bio*) #1

declare dso_local i32 @trace_block_split(%struct.request_queue*, %struct.bio*, i32) #1

declare dso_local i32 @generic_make_request(%struct.bio*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
