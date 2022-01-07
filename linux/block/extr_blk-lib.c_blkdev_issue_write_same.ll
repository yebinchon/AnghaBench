; ModuleID = '/home/carl/AnghaBench/linux/block/extr_blk-lib.c_blkdev_issue_write_same.c'
source_filename = "/home/carl/AnghaBench/linux/block/extr_blk-lib.c_blkdev_issue_write_same.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.block_device = type { i32 }
%struct.page = type { i32 }
%struct.bio = type { i32 }
%struct.blk_plug = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @blkdev_issue_write_same(%struct.block_device* %0, i32 %1, i32 %2, i32 %3, %struct.page* %4) #0 {
  %6 = alloca %struct.block_device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.page*, align 8
  %11 = alloca %struct.bio*, align 8
  %12 = alloca %struct.blk_plug, align 4
  %13 = alloca i32, align 4
  store %struct.block_device* %0, %struct.block_device** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store %struct.page* %4, %struct.page** %10, align 8
  store %struct.bio* null, %struct.bio** %11, align 8
  %14 = call i32 @blk_start_plug(%struct.blk_plug* %12)
  %15 = load %struct.block_device*, %struct.block_device** %6, align 8
  %16 = load i32, i32* %7, align 4
  %17 = load i32, i32* %8, align 4
  %18 = load i32, i32* %9, align 4
  %19 = load %struct.page*, %struct.page** %10, align 8
  %20 = call i32 @__blkdev_issue_write_same(%struct.block_device* %15, i32 %16, i32 %17, i32 %18, %struct.page* %19, %struct.bio** %11)
  store i32 %20, i32* %13, align 4
  %21 = load i32, i32* %13, align 4
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %31

23:                                               ; preds = %5
  %24 = load %struct.bio*, %struct.bio** %11, align 8
  %25 = icmp ne %struct.bio* %24, null
  br i1 %25, label %26, label %31

26:                                               ; preds = %23
  %27 = load %struct.bio*, %struct.bio** %11, align 8
  %28 = call i32 @submit_bio_wait(%struct.bio* %27)
  store i32 %28, i32* %13, align 4
  %29 = load %struct.bio*, %struct.bio** %11, align 8
  %30 = call i32 @bio_put(%struct.bio* %29)
  br label %31

31:                                               ; preds = %26, %23, %5
  %32 = call i32 @blk_finish_plug(%struct.blk_plug* %12)
  %33 = load i32, i32* %13, align 4
  ret i32 %33
}

declare dso_local i32 @blk_start_plug(%struct.blk_plug*) #1

declare dso_local i32 @__blkdev_issue_write_same(%struct.block_device*, i32, i32, i32, %struct.page*, %struct.bio**) #1

declare dso_local i32 @submit_bio_wait(%struct.bio*) #1

declare dso_local i32 @bio_put(%struct.bio*) #1

declare dso_local i32 @blk_finish_plug(%struct.blk_plug*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
