; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/extr_xen-blkfront.c_blkif_free.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/extr_xen-blkfront.c_blkif_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.blkfront_info = type { i32, i32*, i64, i32 }

@BLKIF_STATE_SUSPENDED = common dso_local global i32 0, align 4
@BLKIF_STATE_DISCONNECTED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.blkfront_info*, i32)* @blkif_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @blkif_free(%struct.blkfront_info* %0, i32 %1) #0 {
  %3 = alloca %struct.blkfront_info*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.blkfront_info* %0, %struct.blkfront_info** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* %4, align 4
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %8, label %10

8:                                                ; preds = %2
  %9 = load i32, i32* @BLKIF_STATE_SUSPENDED, align 4
  br label %12

10:                                               ; preds = %2
  %11 = load i32, i32* @BLKIF_STATE_DISCONNECTED, align 4
  br label %12

12:                                               ; preds = %10, %8
  %13 = phi i32 [ %9, %8 ], [ %11, %10 ]
  %14 = load %struct.blkfront_info*, %struct.blkfront_info** %3, align 8
  %15 = getelementptr inbounds %struct.blkfront_info, %struct.blkfront_info* %14, i32 0, i32 3
  store i32 %13, i32* %15, align 8
  %16 = load %struct.blkfront_info*, %struct.blkfront_info** %3, align 8
  %17 = getelementptr inbounds %struct.blkfront_info, %struct.blkfront_info* %16, i32 0, i32 2
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %25

20:                                               ; preds = %12
  %21 = load %struct.blkfront_info*, %struct.blkfront_info** %3, align 8
  %22 = getelementptr inbounds %struct.blkfront_info, %struct.blkfront_info* %21, i32 0, i32 2
  %23 = load i64, i64* %22, align 8
  %24 = call i32 @blk_mq_stop_hw_queues(i64 %23)
  br label %25

25:                                               ; preds = %20, %12
  store i32 0, i32* %5, align 4
  br label %26

26:                                               ; preds = %40, %25
  %27 = load i32, i32* %5, align 4
  %28 = load %struct.blkfront_info*, %struct.blkfront_info** %3, align 8
  %29 = getelementptr inbounds %struct.blkfront_info, %struct.blkfront_info* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = icmp ult i32 %27, %30
  br i1 %31, label %32, label %43

32:                                               ; preds = %26
  %33 = load %struct.blkfront_info*, %struct.blkfront_info** %3, align 8
  %34 = getelementptr inbounds %struct.blkfront_info, %struct.blkfront_info* %33, i32 0, i32 1
  %35 = load i32*, i32** %34, align 8
  %36 = load i32, i32* %5, align 4
  %37 = zext i32 %36 to i64
  %38 = getelementptr inbounds i32, i32* %35, i64 %37
  %39 = call i32 @blkif_free_ring(i32* %38)
  br label %40

40:                                               ; preds = %32
  %41 = load i32, i32* %5, align 4
  %42 = add i32 %41, 1
  store i32 %42, i32* %5, align 4
  br label %26

43:                                               ; preds = %26
  %44 = load %struct.blkfront_info*, %struct.blkfront_info** %3, align 8
  %45 = getelementptr inbounds %struct.blkfront_info, %struct.blkfront_info* %44, i32 0, i32 1
  %46 = load i32*, i32** %45, align 8
  %47 = call i32 @kvfree(i32* %46)
  %48 = load %struct.blkfront_info*, %struct.blkfront_info** %3, align 8
  %49 = getelementptr inbounds %struct.blkfront_info, %struct.blkfront_info* %48, i32 0, i32 1
  store i32* null, i32** %49, align 8
  %50 = load %struct.blkfront_info*, %struct.blkfront_info** %3, align 8
  %51 = getelementptr inbounds %struct.blkfront_info, %struct.blkfront_info* %50, i32 0, i32 0
  store i32 0, i32* %51, align 8
  ret void
}

declare dso_local i32 @blk_mq_stop_hw_queues(i64) #1

declare dso_local i32 @blkif_free_ring(i32*) #1

declare dso_local i32 @kvfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
