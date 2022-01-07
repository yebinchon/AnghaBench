; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/extr_swim.c_swim_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/extr_swim.c_swim_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.swim_priv = type { i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.resource = type { i32 }

@FLOPPY_MAJOR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"fd\00", align 1
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @swim_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @swim_remove(%struct.platform_device* %0) #0 {
  %2 = alloca %struct.platform_device*, align 8
  %3 = alloca %struct.swim_priv*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.resource*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %2, align 8
  %6 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %7 = call %struct.swim_priv* @platform_get_drvdata(%struct.platform_device* %6)
  store %struct.swim_priv* %7, %struct.swim_priv** %3, align 8
  %8 = load i32, i32* @FLOPPY_MAJOR, align 4
  %9 = call i32 @MKDEV(i32 %8, i32 0)
  %10 = call i32 @blk_unregister_region(i32 %9, i32 256)
  store i32 0, i32* %4, align 4
  br label %11

11:                                               ; preds = %55, %1
  %12 = load i32, i32* %4, align 4
  %13 = load %struct.swim_priv*, %struct.swim_priv** %3, align 8
  %14 = getelementptr inbounds %struct.swim_priv, %struct.swim_priv* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = icmp slt i32 %12, %15
  br i1 %16, label %17, label %58

17:                                               ; preds = %11
  %18 = load %struct.swim_priv*, %struct.swim_priv** %3, align 8
  %19 = getelementptr inbounds %struct.swim_priv, %struct.swim_priv* %18, i32 0, i32 1
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** %19, align 8
  %21 = load i32, i32* %4, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i64 %22
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 0
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %24, align 8
  %26 = call i32 @del_gendisk(%struct.TYPE_4__* %25)
  %27 = load %struct.swim_priv*, %struct.swim_priv** %3, align 8
  %28 = getelementptr inbounds %struct.swim_priv, %struct.swim_priv* %27, i32 0, i32 1
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** %28, align 8
  %30 = load i32, i32* %4, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i64 %31
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 0
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @blk_cleanup_queue(i32 %36)
  %38 = load %struct.swim_priv*, %struct.swim_priv** %3, align 8
  %39 = getelementptr inbounds %struct.swim_priv, %struct.swim_priv* %38, i32 0, i32 1
  %40 = load %struct.TYPE_5__*, %struct.TYPE_5__** %39, align 8
  %41 = load i32, i32* %4, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i64 %42
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 1
  %45 = call i32 @blk_mq_free_tag_set(i32* %44)
  %46 = load %struct.swim_priv*, %struct.swim_priv** %3, align 8
  %47 = getelementptr inbounds %struct.swim_priv, %struct.swim_priv* %46, i32 0, i32 1
  %48 = load %struct.TYPE_5__*, %struct.TYPE_5__** %47, align 8
  %49 = load i32, i32* %4, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i64 %50
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 0
  %53 = load %struct.TYPE_4__*, %struct.TYPE_4__** %52, align 8
  %54 = call i32 @put_disk(%struct.TYPE_4__* %53)
  br label %55

55:                                               ; preds = %17
  %56 = load i32, i32* %4, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %4, align 4
  br label %11

58:                                               ; preds = %11
  %59 = load i32, i32* @FLOPPY_MAJOR, align 4
  %60 = call i32 @unregister_blkdev(i32 %59, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  br label %61

61:                                               ; preds = %75, %58
  %62 = load i32, i32* %4, align 4
  %63 = load %struct.swim_priv*, %struct.swim_priv** %3, align 8
  %64 = getelementptr inbounds %struct.swim_priv, %struct.swim_priv* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = icmp slt i32 %62, %65
  br i1 %66, label %67, label %78

67:                                               ; preds = %61
  %68 = load %struct.swim_priv*, %struct.swim_priv** %3, align 8
  %69 = getelementptr inbounds %struct.swim_priv, %struct.swim_priv* %68, i32 0, i32 1
  %70 = load %struct.TYPE_5__*, %struct.TYPE_5__** %69, align 8
  %71 = load i32, i32* %4, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %70, i64 %72
  %74 = call i32 @floppy_eject(%struct.TYPE_5__* %73)
  br label %75

75:                                               ; preds = %67
  %76 = load i32, i32* %4, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %4, align 4
  br label %61

78:                                               ; preds = %61
  %79 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %80 = load i32, i32* @IORESOURCE_MEM, align 4
  %81 = call %struct.resource* @platform_get_resource(%struct.platform_device* %79, i32 %80, i32 0)
  store %struct.resource* %81, %struct.resource** %5, align 8
  %82 = load %struct.resource*, %struct.resource** %5, align 8
  %83 = icmp ne %struct.resource* %82, null
  br i1 %83, label %84, label %91

84:                                               ; preds = %78
  %85 = load %struct.resource*, %struct.resource** %5, align 8
  %86 = getelementptr inbounds %struct.resource, %struct.resource* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = load %struct.resource*, %struct.resource** %5, align 8
  %89 = call i32 @resource_size(%struct.resource* %88)
  %90 = call i32 @release_mem_region(i32 %87, i32 %89)
  br label %91

91:                                               ; preds = %84, %78
  %92 = load %struct.swim_priv*, %struct.swim_priv** %3, align 8
  %93 = call i32 @kfree(%struct.swim_priv* %92)
  ret i32 0
}

declare dso_local %struct.swim_priv* @platform_get_drvdata(%struct.platform_device*) #1

declare dso_local i32 @blk_unregister_region(i32, i32) #1

declare dso_local i32 @MKDEV(i32, i32) #1

declare dso_local i32 @del_gendisk(%struct.TYPE_4__*) #1

declare dso_local i32 @blk_cleanup_queue(i32) #1

declare dso_local i32 @blk_mq_free_tag_set(i32*) #1

declare dso_local i32 @put_disk(%struct.TYPE_4__*) #1

declare dso_local i32 @unregister_blkdev(i32, i8*) #1

declare dso_local i32 @floppy_eject(%struct.TYPE_5__*) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local i32 @release_mem_region(i32, i32) #1

declare dso_local i32 @resource_size(%struct.resource*) #1

declare dso_local i32 @kfree(%struct.swim_priv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
