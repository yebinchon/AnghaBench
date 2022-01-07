; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/extr_xen-blkfront.c_blkfront_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/extr_xen-blkfront.c_blkfront_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xenbus_device = type { i32, i32 }
%struct.blkfront_info = type { i32, i32*, %struct.gendisk* }
%struct.gendisk = type { %struct.blkfront_info* }
%struct.block_device = type { i32, i32 }

@.str = private unnamed_addr constant [11 x i8] c"%s removed\00", align 1
@blkfront_mutex = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [40 x i8] c"%s was hot-unplugged, %d stale handles\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xenbus_device*)* @blkfront_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @blkfront_remove(%struct.xenbus_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.xenbus_device*, align 8
  %4 = alloca %struct.blkfront_info*, align 8
  %5 = alloca %struct.block_device*, align 8
  %6 = alloca %struct.gendisk*, align 8
  store %struct.xenbus_device* %0, %struct.xenbus_device** %3, align 8
  %7 = load %struct.xenbus_device*, %struct.xenbus_device** %3, align 8
  %8 = getelementptr inbounds %struct.xenbus_device, %struct.xenbus_device* %7, i32 0, i32 1
  %9 = call %struct.blkfront_info* @dev_get_drvdata(i32* %8)
  store %struct.blkfront_info* %9, %struct.blkfront_info** %4, align 8
  store %struct.block_device* null, %struct.block_device** %5, align 8
  %10 = load %struct.xenbus_device*, %struct.xenbus_device** %3, align 8
  %11 = getelementptr inbounds %struct.xenbus_device, %struct.xenbus_device* %10, i32 0, i32 1
  %12 = load %struct.xenbus_device*, %struct.xenbus_device** %3, align 8
  %13 = getelementptr inbounds %struct.xenbus_device, %struct.xenbus_device* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @dev_dbg(i32* %11, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 %14)
  %16 = load %struct.blkfront_info*, %struct.blkfront_info** %4, align 8
  %17 = icmp ne %struct.blkfront_info* %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %84

19:                                               ; preds = %1
  %20 = load %struct.blkfront_info*, %struct.blkfront_info** %4, align 8
  %21 = call i32 @blkif_free(%struct.blkfront_info* %20, i32 0)
  %22 = load %struct.blkfront_info*, %struct.blkfront_info** %4, align 8
  %23 = getelementptr inbounds %struct.blkfront_info, %struct.blkfront_info* %22, i32 0, i32 0
  %24 = call i32 @mutex_lock(i32* %23)
  %25 = load %struct.blkfront_info*, %struct.blkfront_info** %4, align 8
  %26 = getelementptr inbounds %struct.blkfront_info, %struct.blkfront_info* %25, i32 0, i32 2
  %27 = load %struct.gendisk*, %struct.gendisk** %26, align 8
  store %struct.gendisk* %27, %struct.gendisk** %6, align 8
  %28 = load %struct.gendisk*, %struct.gendisk** %6, align 8
  %29 = icmp ne %struct.gendisk* %28, null
  br i1 %29, label %30, label %33

30:                                               ; preds = %19
  %31 = load %struct.gendisk*, %struct.gendisk** %6, align 8
  %32 = call %struct.block_device* @bdget_disk(%struct.gendisk* %31, i32 0)
  store %struct.block_device* %32, %struct.block_device** %5, align 8
  br label %33

33:                                               ; preds = %30, %19
  %34 = load %struct.blkfront_info*, %struct.blkfront_info** %4, align 8
  %35 = getelementptr inbounds %struct.blkfront_info, %struct.blkfront_info* %34, i32 0, i32 1
  store i32* null, i32** %35, align 8
  %36 = load %struct.blkfront_info*, %struct.blkfront_info** %4, align 8
  %37 = getelementptr inbounds %struct.blkfront_info, %struct.blkfront_info* %36, i32 0, i32 0
  %38 = call i32 @mutex_unlock(i32* %37)
  %39 = load %struct.block_device*, %struct.block_device** %5, align 8
  %40 = icmp ne %struct.block_device* %39, null
  br i1 %40, label %46, label %41

41:                                               ; preds = %33
  %42 = call i32 @mutex_lock(i32* @blkfront_mutex)
  %43 = load %struct.blkfront_info*, %struct.blkfront_info** %4, align 8
  %44 = call i32 @free_info(%struct.blkfront_info* %43)
  %45 = call i32 @mutex_unlock(i32* @blkfront_mutex)
  store i32 0, i32* %2, align 4
  br label %84

46:                                               ; preds = %33
  %47 = load %struct.block_device*, %struct.block_device** %5, align 8
  %48 = getelementptr inbounds %struct.block_device, %struct.block_device* %47, i32 0, i32 0
  %49 = call i32 @mutex_lock(i32* %48)
  %50 = load %struct.gendisk*, %struct.gendisk** %6, align 8
  %51 = getelementptr inbounds %struct.gendisk, %struct.gendisk* %50, i32 0, i32 0
  %52 = load %struct.blkfront_info*, %struct.blkfront_info** %51, align 8
  store %struct.blkfront_info* %52, %struct.blkfront_info** %4, align 8
  %53 = load %struct.gendisk*, %struct.gendisk** %6, align 8
  %54 = call i32 @disk_to_dev(%struct.gendisk* %53)
  %55 = load %struct.xenbus_device*, %struct.xenbus_device** %3, align 8
  %56 = getelementptr inbounds %struct.xenbus_device, %struct.xenbus_device* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.block_device*, %struct.block_device** %5, align 8
  %59 = getelementptr inbounds %struct.block_device, %struct.block_device* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @dev_warn(i32 %54, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i32 %57, i32 %60)
  %62 = load %struct.blkfront_info*, %struct.blkfront_info** %4, align 8
  %63 = icmp ne %struct.blkfront_info* %62, null
  br i1 %63, label %64, label %78

64:                                               ; preds = %46
  %65 = load %struct.block_device*, %struct.block_device** %5, align 8
  %66 = getelementptr inbounds %struct.block_device, %struct.block_device* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %78, label %69

69:                                               ; preds = %64
  %70 = load %struct.blkfront_info*, %struct.blkfront_info** %4, align 8
  %71 = call i32 @xlvbd_release_gendisk(%struct.blkfront_info* %70)
  %72 = load %struct.gendisk*, %struct.gendisk** %6, align 8
  %73 = getelementptr inbounds %struct.gendisk, %struct.gendisk* %72, i32 0, i32 0
  store %struct.blkfront_info* null, %struct.blkfront_info** %73, align 8
  %74 = call i32 @mutex_lock(i32* @blkfront_mutex)
  %75 = load %struct.blkfront_info*, %struct.blkfront_info** %4, align 8
  %76 = call i32 @free_info(%struct.blkfront_info* %75)
  %77 = call i32 @mutex_unlock(i32* @blkfront_mutex)
  br label %78

78:                                               ; preds = %69, %64, %46
  %79 = load %struct.block_device*, %struct.block_device** %5, align 8
  %80 = getelementptr inbounds %struct.block_device, %struct.block_device* %79, i32 0, i32 0
  %81 = call i32 @mutex_unlock(i32* %80)
  %82 = load %struct.block_device*, %struct.block_device** %5, align 8
  %83 = call i32 @bdput(%struct.block_device* %82)
  store i32 0, i32* %2, align 4
  br label %84

84:                                               ; preds = %78, %41, %18
  %85 = load i32, i32* %2, align 4
  ret i32 %85
}

declare dso_local %struct.blkfront_info* @dev_get_drvdata(i32*) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i32) #1

declare dso_local i32 @blkif_free(%struct.blkfront_info*, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.block_device* @bdget_disk(%struct.gendisk*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @free_info(%struct.blkfront_info*) #1

declare dso_local i32 @dev_warn(i32, i8*, i32, i32) #1

declare dso_local i32 @disk_to_dev(%struct.gendisk*) #1

declare dso_local i32 @xlvbd_release_gendisk(%struct.blkfront_info*) #1

declare dso_local i32 @bdput(%struct.block_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
