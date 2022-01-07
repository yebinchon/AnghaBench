; ModuleID = '/home/carl/AnghaBench/linux/block/extr_blk-zoned.c_blkdev_report_zones.c'
source_filename = "/home/carl/AnghaBench/linux/block/extr_blk-zoned.c_blkdev_report_zones.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.block_device = type { %struct.TYPE_6__*, %struct.TYPE_5__* }
%struct.TYPE_6__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_5__ = type { i64 }
%struct.blk_zone = type { i32 }
%struct.request_queue = type { i32 }

@EOPNOTSUPP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @blkdev_report_zones(%struct.block_device* %0, i64 %1, %struct.blk_zone* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.block_device*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.blk_zone*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.request_queue*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.block_device* %0, %struct.block_device** %6, align 8
  store i64 %1, i64* %7, align 8
  store %struct.blk_zone* %2, %struct.blk_zone** %8, align 8
  store i32* %3, i32** %9, align 8
  %14 = load %struct.block_device*, %struct.block_device** %6, align 8
  %15 = call %struct.request_queue* @bdev_get_queue(%struct.block_device* %14)
  store %struct.request_queue* %15, %struct.request_queue** %10, align 8
  %16 = load %struct.request_queue*, %struct.request_queue** %10, align 8
  %17 = call i32 @blk_queue_is_zoned(%struct.request_queue* %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %22, label %19

19:                                               ; preds = %4
  %20 = load i32, i32* @EOPNOTSUPP, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %5, align 4
  br label %98

22:                                               ; preds = %4
  %23 = load %struct.block_device*, %struct.block_device** %6, align 8
  %24 = getelementptr inbounds %struct.block_device, %struct.block_device* %23, i32 0, i32 0
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 0
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = icmp ne i32 %29, 0
  %31 = xor i1 %30, true
  %32 = zext i1 %31 to i32
  %33 = call i64 @WARN_ON_ONCE(i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %22
  %36 = load i32, i32* @EOPNOTSUPP, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %5, align 4
  br label %98

38:                                               ; preds = %22
  %39 = load i32*, i32** %9, align 8
  %40 = load i32, i32* %39, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %50

42:                                               ; preds = %38
  %43 = load i64, i64* %7, align 8
  %44 = load %struct.block_device*, %struct.block_device** %6, align 8
  %45 = getelementptr inbounds %struct.block_device, %struct.block_device* %44, i32 0, i32 1
  %46 = load %struct.TYPE_5__*, %struct.TYPE_5__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = icmp sge i64 %43, %48
  br i1 %49, label %50, label %52

50:                                               ; preds = %42, %38
  %51 = load i32*, i32** %9, align 8
  store i32 0, i32* %51, align 4
  store i32 0, i32* %5, align 4
  br label %98

52:                                               ; preds = %42
  %53 = load i32*, i32** %9, align 8
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.request_queue*, %struct.request_queue** %10, align 8
  %56 = load %struct.block_device*, %struct.block_device** %6, align 8
  %57 = getelementptr inbounds %struct.block_device, %struct.block_device* %56, i32 0, i32 1
  %58 = load %struct.TYPE_5__*, %struct.TYPE_5__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* %7, align 8
  %62 = sub nsw i64 %60, %61
  %63 = call i32 @__blkdev_nr_zones(%struct.request_queue* %55, i64 %62)
  %64 = call i32 @min(i32 %54, i32 %63)
  store i32 %64, i32* %12, align 4
  %65 = load %struct.block_device*, %struct.block_device** %6, align 8
  %66 = getelementptr inbounds %struct.block_device, %struct.block_device* %65, i32 0, i32 0
  %67 = load %struct.TYPE_6__*, %struct.TYPE_6__** %66, align 8
  %68 = load %struct.block_device*, %struct.block_device** %6, align 8
  %69 = call i64 @get_start_sect(%struct.block_device* %68)
  %70 = load i64, i64* %7, align 8
  %71 = add nsw i64 %69, %70
  %72 = load %struct.blk_zone*, %struct.blk_zone** %8, align 8
  %73 = call i32 @blk_report_zones(%struct.TYPE_6__* %67, i64 %71, %struct.blk_zone* %72, i32* %12)
  store i32 %73, i32* %13, align 4
  %74 = load i32, i32* %13, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %78

76:                                               ; preds = %52
  %77 = load i32, i32* %13, align 4
  store i32 %77, i32* %5, align 4
  br label %98

78:                                               ; preds = %52
  store i32 0, i32* %11, align 4
  br label %79

79:                                               ; preds = %92, %78
  %80 = load i32, i32* %11, align 4
  %81 = load i32, i32* %12, align 4
  %82 = icmp ult i32 %80, %81
  br i1 %82, label %83, label %95

83:                                               ; preds = %79
  %84 = load %struct.block_device*, %struct.block_device** %6, align 8
  %85 = load %struct.blk_zone*, %struct.blk_zone** %8, align 8
  %86 = call i32 @blkdev_report_zone(%struct.block_device* %84, %struct.blk_zone* %85)
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %89, label %88

88:                                               ; preds = %83
  br label %95

89:                                               ; preds = %83
  %90 = load %struct.blk_zone*, %struct.blk_zone** %8, align 8
  %91 = getelementptr inbounds %struct.blk_zone, %struct.blk_zone* %90, i32 1
  store %struct.blk_zone* %91, %struct.blk_zone** %8, align 8
  br label %92

92:                                               ; preds = %89
  %93 = load i32, i32* %11, align 4
  %94 = add i32 %93, 1
  store i32 %94, i32* %11, align 4
  br label %79

95:                                               ; preds = %88, %79
  %96 = load i32, i32* %11, align 4
  %97 = load i32*, i32** %9, align 8
  store i32 %96, i32* %97, align 4
  store i32 0, i32* %5, align 4
  br label %98

98:                                               ; preds = %95, %76, %50, %35, %19
  %99 = load i32, i32* %5, align 4
  ret i32 %99
}

declare dso_local %struct.request_queue* @bdev_get_queue(%struct.block_device*) #1

declare dso_local i32 @blk_queue_is_zoned(%struct.request_queue*) #1

declare dso_local i64 @WARN_ON_ONCE(i32) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @__blkdev_nr_zones(%struct.request_queue*, i64) #1

declare dso_local i32 @blk_report_zones(%struct.TYPE_6__*, i64, %struct.blk_zone*, i32*) #1

declare dso_local i64 @get_start_sect(%struct.block_device*) #1

declare dso_local i32 @blkdev_report_zone(%struct.block_device*, %struct.blk_zone*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
