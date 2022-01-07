; ModuleID = '/home/carl/AnghaBench/linux/block/extr_blk-merge.c_get_max_io_size.c'
source_filename = "/home/carl/AnghaBench/linux/block/extr_blk-merge.c_get_max_io_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.request_queue = type { i32 }
%struct.bio = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@SECTOR_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.request_queue*, %struct.bio*)* @get_max_io_size to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_max_io_size(%struct.request_queue* %0, %struct.bio* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.request_queue*, align 8
  %5 = alloca %struct.bio*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.request_queue* %0, %struct.request_queue** %4, align 8
  store %struct.bio* %1, %struct.bio** %5, align 8
  %11 = load %struct.request_queue*, %struct.request_queue** %4, align 8
  %12 = load %struct.bio*, %struct.bio** %5, align 8
  %13 = getelementptr inbounds %struct.bio, %struct.bio* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @blk_max_size_offset(%struct.request_queue* %11, i32 %15)
  store i32 %16, i32* %6, align 4
  %17 = load i32, i32* %6, align 4
  store i32 %17, i32* %7, align 4
  %18 = load %struct.request_queue*, %struct.request_queue** %4, align 8
  %19 = call i32 @queue_physical_block_size(%struct.request_queue* %18)
  %20 = load i32, i32* @SECTOR_SHIFT, align 4
  %21 = lshr i32 %19, %20
  store i32 %21, i32* %8, align 4
  %22 = load %struct.request_queue*, %struct.request_queue** %4, align 8
  %23 = call i32 @queue_logical_block_size(%struct.request_queue* %22)
  %24 = load i32, i32* @SECTOR_SHIFT, align 4
  %25 = lshr i32 %23, %24
  store i32 %25, i32* %9, align 4
  %26 = load %struct.bio*, %struct.bio** %5, align 8
  %27 = getelementptr inbounds %struct.bio, %struct.bio* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* %8, align 4
  %31 = sub i32 %30, 1
  %32 = and i32 %29, %31
  store i32 %32, i32* %10, align 4
  %33 = load i32, i32* %10, align 4
  %34 = load i32, i32* %7, align 4
  %35 = add i32 %34, %33
  store i32 %35, i32* %7, align 4
  %36 = load i32, i32* %8, align 4
  %37 = sub i32 %36, 1
  %38 = xor i32 %37, -1
  %39 = load i32, i32* %7, align 4
  %40 = and i32 %39, %38
  store i32 %40, i32* %7, align 4
  %41 = load i32, i32* %7, align 4
  %42 = load i32, i32* %10, align 4
  %43 = icmp ugt i32 %41, %42
  br i1 %43, label %44, label %48

44:                                               ; preds = %2
  %45 = load i32, i32* %7, align 4
  %46 = load i32, i32* %10, align 4
  %47 = sub i32 %45, %46
  store i32 %47, i32* %3, align 4
  br label %53

48:                                               ; preds = %2
  %49 = load i32, i32* %6, align 4
  %50 = load i32, i32* %9, align 4
  %51 = sub i32 %50, 1
  %52 = and i32 %49, %51
  store i32 %52, i32* %3, align 4
  br label %53

53:                                               ; preds = %48, %44
  %54 = load i32, i32* %3, align 4
  ret i32 %54
}

declare dso_local i32 @blk_max_size_offset(%struct.request_queue*, i32) #1

declare dso_local i32 @queue_physical_block_size(%struct.request_queue*) #1

declare dso_local i32 @queue_logical_block_size(%struct.request_queue*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
