; ModuleID = '/home/carl/AnghaBench/linux/block/extr_blk-lib.c_blkdev_issue_discard.c'
source_filename = "/home/carl/AnghaBench/linux/block/extr_blk-lib.c_blkdev_issue_discard.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.block_device = type { i32 }
%struct.bio = type { i32 }
%struct.blk_plug = type { i32 }

@EOPNOTSUPP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @blkdev_issue_discard(%struct.block_device* %0, i32 %1, i32 %2, i32 %3, i64 %4) #0 {
  %6 = alloca %struct.block_device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca %struct.bio*, align 8
  %12 = alloca %struct.blk_plug, align 4
  %13 = alloca i32, align 4
  store %struct.block_device* %0, %struct.block_device** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i64 %4, i64* %10, align 8
  store %struct.bio* null, %struct.bio** %11, align 8
  %14 = call i32 @blk_start_plug(%struct.blk_plug* %12)
  %15 = load %struct.block_device*, %struct.block_device** %6, align 8
  %16 = load i32, i32* %7, align 4
  %17 = load i32, i32* %8, align 4
  %18 = load i32, i32* %9, align 4
  %19 = load i64, i64* %10, align 8
  %20 = call i32 @__blkdev_issue_discard(%struct.block_device* %15, i32 %16, i32 %17, i32 %18, i64 %19, %struct.bio** %11)
  store i32 %20, i32* %13, align 4
  %21 = load i32, i32* %13, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %37, label %23

23:                                               ; preds = %5
  %24 = load %struct.bio*, %struct.bio** %11, align 8
  %25 = icmp ne %struct.bio* %24, null
  br i1 %25, label %26, label %37

26:                                               ; preds = %23
  %27 = load %struct.bio*, %struct.bio** %11, align 8
  %28 = call i32 @submit_bio_wait(%struct.bio* %27)
  store i32 %28, i32* %13, align 4
  %29 = load i32, i32* %13, align 4
  %30 = load i32, i32* @EOPNOTSUPP, align 4
  %31 = sub nsw i32 0, %30
  %32 = icmp eq i32 %29, %31
  br i1 %32, label %33, label %34

33:                                               ; preds = %26
  store i32 0, i32* %13, align 4
  br label %34

34:                                               ; preds = %33, %26
  %35 = load %struct.bio*, %struct.bio** %11, align 8
  %36 = call i32 @bio_put(%struct.bio* %35)
  br label %37

37:                                               ; preds = %34, %23, %5
  %38 = call i32 @blk_finish_plug(%struct.blk_plug* %12)
  %39 = load i32, i32* %13, align 4
  ret i32 %39
}

declare dso_local i32 @blk_start_plug(%struct.blk_plug*) #1

declare dso_local i32 @__blkdev_issue_discard(%struct.block_device*, i32, i32, i32, i64, %struct.bio**) #1

declare dso_local i32 @submit_bio_wait(%struct.bio*) #1

declare dso_local i32 @bio_put(%struct.bio*) #1

declare dso_local i32 @blk_finish_plug(%struct.blk_plug*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
