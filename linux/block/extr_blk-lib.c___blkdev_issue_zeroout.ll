; ModuleID = '/home/carl/AnghaBench/linux/block/extr_blk-lib.c___blkdev_issue_zeroout.c'
source_filename = "/home/carl/AnghaBench/linux/block/extr_blk-lib.c___blkdev_issue_zeroout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.block_device = type { i32 }
%struct.bio = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@BLKDEV_ZERO_NOFALLBACK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__blkdev_issue_zeroout(%struct.block_device* %0, i32 %1, i32 %2, i32 %3, %struct.bio** %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.block_device*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.bio**, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.block_device* %0, %struct.block_device** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store %struct.bio** %4, %struct.bio*** %12, align 8
  store i32 %5, i32* %13, align 4
  %16 = load %struct.block_device*, %struct.block_device** %8, align 8
  %17 = call i32 @bdev_logical_block_size(%struct.block_device* %16)
  %18 = ashr i32 %17, 9
  %19 = sub nsw i32 %18, 1
  store i32 %19, i32* %15, align 4
  %20 = load i32, i32* %9, align 4
  %21 = load i32, i32* %10, align 4
  %22 = or i32 %20, %21
  %23 = load i32, i32* %15, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %6
  %27 = load i32, i32* @EINVAL, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %7, align 4
  br label %55

29:                                               ; preds = %6
  %30 = load %struct.block_device*, %struct.block_device** %8, align 8
  %31 = load i32, i32* %9, align 4
  %32 = load i32, i32* %10, align 4
  %33 = load i32, i32* %11, align 4
  %34 = load %struct.bio**, %struct.bio*** %12, align 8
  %35 = load i32, i32* %13, align 4
  %36 = call i32 @__blkdev_issue_write_zeroes(%struct.block_device* %30, i32 %31, i32 %32, i32 %33, %struct.bio** %34, i32 %35)
  store i32 %36, i32* %14, align 4
  %37 = load i32, i32* %14, align 4
  %38 = load i32, i32* @EOPNOTSUPP, align 4
  %39 = sub nsw i32 0, %38
  %40 = icmp ne i32 %37, %39
  br i1 %40, label %46, label %41

41:                                               ; preds = %29
  %42 = load i32, i32* %13, align 4
  %43 = load i32, i32* @BLKDEV_ZERO_NOFALLBACK, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %41, %29
  %47 = load i32, i32* %14, align 4
  store i32 %47, i32* %7, align 4
  br label %55

48:                                               ; preds = %41
  %49 = load %struct.block_device*, %struct.block_device** %8, align 8
  %50 = load i32, i32* %9, align 4
  %51 = load i32, i32* %10, align 4
  %52 = load i32, i32* %11, align 4
  %53 = load %struct.bio**, %struct.bio*** %12, align 8
  %54 = call i32 @__blkdev_issue_zero_pages(%struct.block_device* %49, i32 %50, i32 %51, i32 %52, %struct.bio** %53)
  store i32 %54, i32* %7, align 4
  br label %55

55:                                               ; preds = %48, %46, %26
  %56 = load i32, i32* %7, align 4
  ret i32 %56
}

declare dso_local i32 @bdev_logical_block_size(%struct.block_device*) #1

declare dso_local i32 @__blkdev_issue_write_zeroes(%struct.block_device*, i32, i32, i32, %struct.bio**, i32) #1

declare dso_local i32 @__blkdev_issue_zero_pages(%struct.block_device*, i32, i32, i32, %struct.bio**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
