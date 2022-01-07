; ModuleID = '/home/carl/AnghaBench/linux/block/extr_blk-lib.c_blkdev_issue_zeroout.c'
source_filename = "/home/carl/AnghaBench/linux/block/extr_blk-lib.c_blkdev_issue_zeroout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.block_device = type { i32 }
%struct.bio = type { i32 }
%struct.blk_plug = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@BLKDEV_ZERO_NOFALLBACK = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @blkdev_issue_zeroout(%struct.block_device* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.block_device*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.bio*, align 8
  %15 = alloca %struct.blk_plug, align 4
  %16 = alloca i32, align 4
  store %struct.block_device* %0, %struct.block_device** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 0, i32* %12, align 4
  %17 = load %struct.block_device*, %struct.block_device** %7, align 8
  %18 = call i32 @bdev_write_zeroes_sectors(%struct.block_device* %17)
  %19 = icmp ne i32 %18, 0
  %20 = xor i1 %19, true
  %21 = xor i1 %20, true
  %22 = zext i1 %21 to i32
  store i32 %22, i32* %16, align 4
  %23 = load %struct.block_device*, %struct.block_device** %7, align 8
  %24 = call i32 @bdev_logical_block_size(%struct.block_device* %23)
  %25 = ashr i32 %24, 9
  %26 = sub nsw i32 %25, 1
  store i32 %26, i32* %13, align 4
  %27 = load i32, i32* %8, align 4
  %28 = load i32, i32* %9, align 4
  %29 = or i32 %27, %28
  %30 = load i32, i32* %13, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %5
  %34 = load i32, i32* @EINVAL, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %6, align 4
  br label %97

36:                                               ; preds = %5
  br label %37

37:                                               ; preds = %86, %36
  store %struct.bio* null, %struct.bio** %14, align 8
  %38 = call i32 @blk_start_plug(%struct.blk_plug* %15)
  %39 = load i32, i32* %16, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %48

41:                                               ; preds = %37
  %42 = load %struct.block_device*, %struct.block_device** %7, align 8
  %43 = load i32, i32* %8, align 4
  %44 = load i32, i32* %9, align 4
  %45 = load i32, i32* %10, align 4
  %46 = load i32, i32* %11, align 4
  %47 = call i32 @__blkdev_issue_write_zeroes(%struct.block_device* %42, i32 %43, i32 %44, i32 %45, %struct.bio** %14, i32 %46)
  store i32 %47, i32* %12, align 4
  br label %63

48:                                               ; preds = %37
  %49 = load i32, i32* %11, align 4
  %50 = load i32, i32* @BLKDEV_ZERO_NOFALLBACK, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %59, label %53

53:                                               ; preds = %48
  %54 = load %struct.block_device*, %struct.block_device** %7, align 8
  %55 = load i32, i32* %8, align 4
  %56 = load i32, i32* %9, align 4
  %57 = load i32, i32* %10, align 4
  %58 = call i32 @__blkdev_issue_zero_pages(%struct.block_device* %54, i32 %55, i32 %56, i32 %57, %struct.bio** %14)
  store i32 %58, i32* %12, align 4
  br label %62

59:                                               ; preds = %48
  %60 = load i32, i32* @EOPNOTSUPP, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %12, align 4
  br label %62

62:                                               ; preds = %59, %53
  br label %63

63:                                               ; preds = %62, %41
  %64 = load i32, i32* %12, align 4
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %66, label %74

66:                                               ; preds = %63
  %67 = load %struct.bio*, %struct.bio** %14, align 8
  %68 = icmp ne %struct.bio* %67, null
  br i1 %68, label %69, label %74

69:                                               ; preds = %66
  %70 = load %struct.bio*, %struct.bio** %14, align 8
  %71 = call i32 @submit_bio_wait(%struct.bio* %70)
  store i32 %71, i32* %12, align 4
  %72 = load %struct.bio*, %struct.bio** %14, align 8
  %73 = call i32 @bio_put(%struct.bio* %72)
  br label %74

74:                                               ; preds = %69, %66, %63
  %75 = call i32 @blk_finish_plug(%struct.blk_plug* %15)
  %76 = load i32, i32* %12, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %95

78:                                               ; preds = %74
  %79 = load i32, i32* %16, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %95

81:                                               ; preds = %78
  %82 = load i32, i32* %11, align 4
  %83 = load i32, i32* @BLKDEV_ZERO_NOFALLBACK, align 4
  %84 = and i32 %82, %83
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %87, label %86

86:                                               ; preds = %81
  store i32 0, i32* %16, align 4
  br label %37

87:                                               ; preds = %81
  %88 = load %struct.block_device*, %struct.block_device** %7, align 8
  %89 = call i32 @bdev_write_zeroes_sectors(%struct.block_device* %88)
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %94, label %91

91:                                               ; preds = %87
  %92 = load i32, i32* @EOPNOTSUPP, align 4
  %93 = sub nsw i32 0, %92
  store i32 %93, i32* %12, align 4
  br label %94

94:                                               ; preds = %91, %87
  br label %95

95:                                               ; preds = %94, %78, %74
  %96 = load i32, i32* %12, align 4
  store i32 %96, i32* %6, align 4
  br label %97

97:                                               ; preds = %95, %33
  %98 = load i32, i32* %6, align 4
  ret i32 %98
}

declare dso_local i32 @bdev_write_zeroes_sectors(%struct.block_device*) #1

declare dso_local i32 @bdev_logical_block_size(%struct.block_device*) #1

declare dso_local i32 @blk_start_plug(%struct.blk_plug*) #1

declare dso_local i32 @__blkdev_issue_write_zeroes(%struct.block_device*, i32, i32, i32, %struct.bio**, i32) #1

declare dso_local i32 @__blkdev_issue_zero_pages(%struct.block_device*, i32, i32, i32, %struct.bio**) #1

declare dso_local i32 @submit_bio_wait(%struct.bio*) #1

declare dso_local i32 @bio_put(%struct.bio*) #1

declare dso_local i32 @blk_finish_plug(%struct.blk_plug*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
