; ModuleID = '/home/carl/AnghaBench/linux/block/extr_blk-core.c_bio_attempt_back_merge.c'
source_filename = "/home/carl/AnghaBench/linux/block/extr_blk-core.c_bio_attempt_back_merge.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.request = type { i32, i32, %struct.bio*, i32 }
%struct.bio = type { i32, %struct.TYPE_2__, %struct.bio* }
%struct.TYPE_2__ = type { i64 }

@REQ_FAILFAST_MASK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bio_attempt_back_merge(%struct.request* %0, %struct.bio* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.request*, align 8
  %6 = alloca %struct.bio*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.request* %0, %struct.request** %5, align 8
  store %struct.bio* %1, %struct.bio** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load %struct.bio*, %struct.bio** %6, align 8
  %10 = getelementptr inbounds %struct.bio, %struct.bio* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = load i32, i32* @REQ_FAILFAST_MASK, align 4
  %13 = and i32 %11, %12
  store i32 %13, i32* %8, align 4
  %14 = load %struct.request*, %struct.request** %5, align 8
  %15 = load %struct.bio*, %struct.bio** %6, align 8
  %16 = load i32, i32* %7, align 4
  %17 = call i32 @ll_back_merge_fn(%struct.request* %14, %struct.bio* %15, i32 %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %64

20:                                               ; preds = %3
  %21 = load %struct.request*, %struct.request** %5, align 8
  %22 = getelementptr inbounds %struct.request, %struct.request* %21, i32 0, i32 3
  %23 = load i32, i32* %22, align 8
  %24 = load %struct.request*, %struct.request** %5, align 8
  %25 = load %struct.bio*, %struct.bio** %6, align 8
  %26 = call i32 @trace_block_bio_backmerge(i32 %23, %struct.request* %24, %struct.bio* %25)
  %27 = load %struct.request*, %struct.request** %5, align 8
  %28 = getelementptr inbounds %struct.request, %struct.request* %27, i32 0, i32 3
  %29 = load i32, i32* %28, align 8
  %30 = load %struct.request*, %struct.request** %5, align 8
  %31 = load %struct.bio*, %struct.bio** %6, align 8
  %32 = call i32 @rq_qos_merge(i32 %29, %struct.request* %30, %struct.bio* %31)
  %33 = load %struct.request*, %struct.request** %5, align 8
  %34 = getelementptr inbounds %struct.request, %struct.request* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* @REQ_FAILFAST_MASK, align 4
  %37 = and i32 %35, %36
  %38 = load i32, i32* %8, align 4
  %39 = icmp ne i32 %37, %38
  br i1 %39, label %40, label %43

40:                                               ; preds = %20
  %41 = load %struct.request*, %struct.request** %5, align 8
  %42 = call i32 @blk_rq_set_mixed_merge(%struct.request* %41)
  br label %43

43:                                               ; preds = %40, %20
  %44 = load %struct.bio*, %struct.bio** %6, align 8
  %45 = load %struct.request*, %struct.request** %5, align 8
  %46 = getelementptr inbounds %struct.request, %struct.request* %45, i32 0, i32 2
  %47 = load %struct.bio*, %struct.bio** %46, align 8
  %48 = getelementptr inbounds %struct.bio, %struct.bio* %47, i32 0, i32 2
  store %struct.bio* %44, %struct.bio** %48, align 8
  %49 = load %struct.bio*, %struct.bio** %6, align 8
  %50 = load %struct.request*, %struct.request** %5, align 8
  %51 = getelementptr inbounds %struct.request, %struct.request* %50, i32 0, i32 2
  store %struct.bio* %49, %struct.bio** %51, align 8
  %52 = load %struct.bio*, %struct.bio** %6, align 8
  %53 = getelementptr inbounds %struct.bio, %struct.bio* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load %struct.request*, %struct.request** %5, align 8
  %57 = getelementptr inbounds %struct.request, %struct.request* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = sext i32 %58 to i64
  %60 = add nsw i64 %59, %55
  %61 = trunc i64 %60 to i32
  store i32 %61, i32* %57, align 4
  %62 = load %struct.request*, %struct.request** %5, align 8
  %63 = call i32 @blk_account_io_start(%struct.request* %62, i32 0)
  store i32 1, i32* %4, align 4
  br label %64

64:                                               ; preds = %43, %19
  %65 = load i32, i32* %4, align 4
  ret i32 %65
}

declare dso_local i32 @ll_back_merge_fn(%struct.request*, %struct.bio*, i32) #1

declare dso_local i32 @trace_block_bio_backmerge(i32, %struct.request*, %struct.bio*) #1

declare dso_local i32 @rq_qos_merge(i32, %struct.request*, %struct.bio*) #1

declare dso_local i32 @blk_rq_set_mixed_merge(%struct.request*) #1

declare dso_local i32 @blk_account_io_start(%struct.request*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
