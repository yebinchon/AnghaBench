; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/extr_xen-blkfront.c_blkif_release.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/extr_xen-blkfront.c_blkif_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gendisk = type { %struct.blkfront_info*, i32 }
%struct.blkfront_info = type { i32, %struct.xenbus_device* }
%struct.xenbus_device = type { i64 }
%struct.block_device = type { i32, i64 }

@blkfront_mutex = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"Block device %s yanked out from us!\0A\00", align 1
@XenbusStateClosing = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [16 x i8] c"releasing disk\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gendisk*, i32)* @blkif_release to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @blkif_release(%struct.gendisk* %0, i32 %1) #0 {
  %3 = alloca %struct.gendisk*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.blkfront_info*, align 8
  %6 = alloca %struct.block_device*, align 8
  %7 = alloca %struct.xenbus_device*, align 8
  store %struct.gendisk* %0, %struct.gendisk** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.gendisk*, %struct.gendisk** %3, align 8
  %9 = getelementptr inbounds %struct.gendisk, %struct.gendisk* %8, i32 0, i32 0
  %10 = load %struct.blkfront_info*, %struct.blkfront_info** %9, align 8
  store %struct.blkfront_info* %10, %struct.blkfront_info** %5, align 8
  %11 = call i32 @mutex_lock(i32* @blkfront_mutex)
  %12 = load %struct.gendisk*, %struct.gendisk** %3, align 8
  %13 = call %struct.block_device* @bdget_disk(%struct.gendisk* %12, i32 0)
  store %struct.block_device* %13, %struct.block_device** %6, align 8
  %14 = load %struct.block_device*, %struct.block_device** %6, align 8
  %15 = icmp ne %struct.block_device* %14, null
  br i1 %15, label %21, label %16

16:                                               ; preds = %2
  %17 = load %struct.gendisk*, %struct.gendisk** %3, align 8
  %18 = getelementptr inbounds %struct.gendisk, %struct.gendisk* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 8
  %20 = call i32 @WARN(i32 1, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %19)
  br label %76

21:                                               ; preds = %2
  %22 = load %struct.block_device*, %struct.block_device** %6, align 8
  %23 = getelementptr inbounds %struct.block_device, %struct.block_device* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %21
  br label %73

27:                                               ; preds = %21
  %28 = load %struct.blkfront_info*, %struct.blkfront_info** %5, align 8
  %29 = getelementptr inbounds %struct.blkfront_info, %struct.blkfront_info* %28, i32 0, i32 0
  %30 = call i32 @mutex_lock(i32* %29)
  %31 = load %struct.blkfront_info*, %struct.blkfront_info** %5, align 8
  %32 = getelementptr inbounds %struct.blkfront_info, %struct.blkfront_info* %31, i32 0, i32 1
  %33 = load %struct.xenbus_device*, %struct.xenbus_device** %32, align 8
  store %struct.xenbus_device* %33, %struct.xenbus_device** %7, align 8
  %34 = load %struct.xenbus_device*, %struct.xenbus_device** %7, align 8
  %35 = icmp ne %struct.xenbus_device* %34, null
  br i1 %35, label %36, label %54

36:                                               ; preds = %27
  %37 = load %struct.xenbus_device*, %struct.xenbus_device** %7, align 8
  %38 = getelementptr inbounds %struct.xenbus_device, %struct.xenbus_device* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @XenbusStateClosing, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %42, label %54

42:                                               ; preds = %36
  %43 = load %struct.block_device*, %struct.block_device** %6, align 8
  %44 = getelementptr inbounds %struct.block_device, %struct.block_device* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = call i32 @disk_to_dev(i32 %45)
  %47 = call i32 @dev_info(i32 %46, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  %48 = load %struct.blkfront_info*, %struct.blkfront_info** %5, align 8
  %49 = call i32 @xlvbd_release_gendisk(%struct.blkfront_info* %48)
  %50 = load %struct.blkfront_info*, %struct.blkfront_info** %5, align 8
  %51 = getelementptr inbounds %struct.blkfront_info, %struct.blkfront_info* %50, i32 0, i32 1
  %52 = load %struct.xenbus_device*, %struct.xenbus_device** %51, align 8
  %53 = call i32 @xenbus_frontend_closed(%struct.xenbus_device* %52)
  br label %54

54:                                               ; preds = %42, %36, %27
  %55 = load %struct.blkfront_info*, %struct.blkfront_info** %5, align 8
  %56 = getelementptr inbounds %struct.blkfront_info, %struct.blkfront_info* %55, i32 0, i32 0
  %57 = call i32 @mutex_unlock(i32* %56)
  %58 = load %struct.xenbus_device*, %struct.xenbus_device** %7, align 8
  %59 = icmp ne %struct.xenbus_device* %58, null
  br i1 %59, label %72, label %60

60:                                               ; preds = %54
  %61 = load %struct.block_device*, %struct.block_device** %6, align 8
  %62 = getelementptr inbounds %struct.block_device, %struct.block_device* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = call i32 @disk_to_dev(i32 %63)
  %65 = call i32 @dev_info(i32 %64, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  %66 = load %struct.blkfront_info*, %struct.blkfront_info** %5, align 8
  %67 = call i32 @xlvbd_release_gendisk(%struct.blkfront_info* %66)
  %68 = load %struct.gendisk*, %struct.gendisk** %3, align 8
  %69 = getelementptr inbounds %struct.gendisk, %struct.gendisk* %68, i32 0, i32 0
  store %struct.blkfront_info* null, %struct.blkfront_info** %69, align 8
  %70 = load %struct.blkfront_info*, %struct.blkfront_info** %5, align 8
  %71 = call i32 @free_info(%struct.blkfront_info* %70)
  br label %72

72:                                               ; preds = %60, %54
  br label %73

73:                                               ; preds = %72, %26
  %74 = load %struct.block_device*, %struct.block_device** %6, align 8
  %75 = call i32 @bdput(%struct.block_device* %74)
  br label %76

76:                                               ; preds = %73, %16
  %77 = call i32 @mutex_unlock(i32* @blkfront_mutex)
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.block_device* @bdget_disk(%struct.gendisk*, i32) #1

declare dso_local i32 @WARN(i32, i8*, i32) #1

declare dso_local i32 @dev_info(i32, i8*) #1

declare dso_local i32 @disk_to_dev(i32) #1

declare dso_local i32 @xlvbd_release_gendisk(%struct.blkfront_info*) #1

declare dso_local i32 @xenbus_frontend_closed(%struct.xenbus_device*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @free_info(%struct.blkfront_info*) #1

declare dso_local i32 @bdput(%struct.block_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
