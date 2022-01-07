; ModuleID = '/home/carl/AnghaBench/linux/block/extr_blk-settings.c_blk_queue_logical_block_size.c'
source_filename = "/home/carl/AnghaBench/linux/block/extr_blk-settings.c_blk_queue_logical_block_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.request_queue = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i16, i16, i16 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @blk_queue_logical_block_size(%struct.request_queue* %0, i16 zeroext %1) #0 {
  %3 = alloca %struct.request_queue*, align 8
  %4 = alloca i16, align 2
  store %struct.request_queue* %0, %struct.request_queue** %3, align 8
  store i16 %1, i16* %4, align 2
  %5 = load i16, i16* %4, align 2
  %6 = load %struct.request_queue*, %struct.request_queue** %3, align 8
  %7 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  store i16 %5, i16* %8, align 2
  %9 = load %struct.request_queue*, %struct.request_queue** %3, align 8
  %10 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 1
  %12 = load i16, i16* %11, align 2
  %13 = zext i16 %12 to i32
  %14 = load i16, i16* %4, align 2
  %15 = zext i16 %14 to i32
  %16 = icmp slt i32 %13, %15
  br i1 %16, label %17, label %22

17:                                               ; preds = %2
  %18 = load i16, i16* %4, align 2
  %19 = load %struct.request_queue*, %struct.request_queue** %3, align 8
  %20 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 1
  store i16 %18, i16* %21, align 2
  br label %22

22:                                               ; preds = %17, %2
  %23 = load %struct.request_queue*, %struct.request_queue** %3, align 8
  %24 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 2
  %26 = load i16, i16* %25, align 2
  %27 = zext i16 %26 to i32
  %28 = load %struct.request_queue*, %struct.request_queue** %3, align 8
  %29 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 1
  %31 = load i16, i16* %30, align 2
  %32 = zext i16 %31 to i32
  %33 = icmp slt i32 %27, %32
  br i1 %33, label %34, label %42

34:                                               ; preds = %22
  %35 = load %struct.request_queue*, %struct.request_queue** %3, align 8
  %36 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 1
  %38 = load i16, i16* %37, align 2
  %39 = load %struct.request_queue*, %struct.request_queue** %3, align 8
  %40 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 2
  store i16 %38, i16* %41, align 2
  br label %42

42:                                               ; preds = %34, %22
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
