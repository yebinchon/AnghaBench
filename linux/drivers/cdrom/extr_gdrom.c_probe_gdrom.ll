; ModuleID = '/home/carl/AnghaBench/linux/drivers/cdrom/extr_gdrom.c_probe_gdrom.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/cdrom/extr_gdrom.c_probe_gdrom.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i8*, %struct.TYPE_7__*, i32, i32*, i8* }
%struct.TYPE_7__ = type { i32, i32* }
%struct.platform_device = type { i32 }

@.str = private unnamed_addr constant [28 x i8] c"ATA Probe for GDROM failed\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@GDROM_DEV_NAME = common dso_local global i32 0, align 4
@gdrom_major = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [33 x i8] c"Registered with major number %d\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@gd = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@gdrom_bdops = common dso_local global i32 0, align 4
@DISK_EVENT_MEDIA_CHANGE = common dso_local global i32 0, align 4
@gdrom_mq_ops = common dso_local global i32 0, align 4
@BLK_MQ_F_SHOULD_MERGE = common dso_local global i32 0, align 4
@BLK_MQ_F_BLOCKING = common dso_local global i32 0, align 4
@BLK_BOUNCE_HIGH = common dso_local global i32 0, align 4
@HW_EVENT_GDROM_DMA = common dso_local global i32 0, align 4
@HW_EVENT_GDROM_CMD = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [30 x i8] c"Probe failed - error is 0x%X\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @probe_gdrom to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @probe_gdrom(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %5 = call i32 (...) @gdrom_execute_diagnostic()
  %6 = icmp ne i32 %5, 1
  br i1 %6, label %7, label %11

7:                                                ; preds = %1
  %8 = call i32 (i8*, ...) @pr_warning(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %9 = load i32, i32* @ENODEV, align 4
  %10 = sub nsw i32 0, %9
  store i32 %10, i32* %2, align 4
  br label %114

11:                                               ; preds = %1
  %12 = call i64 (...) @gdrom_outputversion()
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %11
  %15 = load i32, i32* @ENOMEM, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %2, align 4
  br label %114

17:                                               ; preds = %11
  %18 = load i32, i32* @GDROM_DEV_NAME, align 4
  %19 = call i64 @register_blkdev(i32 0, i32 %18)
  store i64 %19, i64* @gdrom_major, align 8
  %20 = load i64, i64* @gdrom_major, align 8
  %21 = icmp sle i64 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %17
  %23 = load i64, i64* @gdrom_major, align 8
  %24 = trunc i64 %23 to i32
  store i32 %24, i32* %2, align 4
  br label %114

25:                                               ; preds = %17
  %26 = load i64, i64* @gdrom_major, align 8
  %27 = call i32 @pr_info(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i64 %26)
  %28 = load i32, i32* @GFP_KERNEL, align 4
  %29 = call i8* @kzalloc(i32 4, i32 %28)
  store i8* %29, i8** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @gd, i32 0, i32 0), align 8
  %30 = load i8*, i8** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @gd, i32 0, i32 0), align 8
  %31 = icmp ne i8* %30, null
  br i1 %31, label %35, label %32

32:                                               ; preds = %25
  %33 = load i32, i32* @ENOMEM, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %4, align 4
  br label %107

35:                                               ; preds = %25
  %36 = call i32 (...) @probe_gdrom_setupcd()
  %37 = call %struct.TYPE_7__* @alloc_disk(i32 1)
  store %struct.TYPE_7__* %37, %struct.TYPE_7__** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @gd, i32 0, i32 1), align 8
  %38 = load %struct.TYPE_7__*, %struct.TYPE_7__** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @gd, i32 0, i32 1), align 8
  %39 = icmp ne %struct.TYPE_7__* %38, null
  br i1 %39, label %43, label %40

40:                                               ; preds = %35
  %41 = load i32, i32* @ENODEV, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %4, align 4
  br label %104

43:                                               ; preds = %35
  %44 = call i32 (...) @probe_gdrom_setupdisk()
  %45 = load i8*, i8** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @gd, i32 0, i32 0), align 8
  %46 = call i64 @register_cdrom(i8* %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %43
  %49 = load i32, i32* @ENODEV, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %4, align 4
  br label %101

51:                                               ; preds = %43
  %52 = load %struct.TYPE_7__*, %struct.TYPE_7__** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @gd, i32 0, i32 1), align 8
  %53 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %52, i32 0, i32 1
  store i32* @gdrom_bdops, i32** %53, align 8
  %54 = load i32, i32* @DISK_EVENT_MEDIA_CHANGE, align 4
  %55 = load %struct.TYPE_7__*, %struct.TYPE_7__** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @gd, i32 0, i32 1), align 8
  %56 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %55, i32 0, i32 0
  store i32 %54, i32* %56, align 8
  %57 = call i32 (...) @gdrom_set_interrupt_handlers()
  store i32 %57, i32* %4, align 4
  %58 = load i32, i32* %4, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %51
  br label %100

61:                                               ; preds = %51
  %62 = load i32, i32* @BLK_MQ_F_SHOULD_MERGE, align 4
  %63 = load i32, i32* @BLK_MQ_F_BLOCKING, align 4
  %64 = or i32 %62, %63
  %65 = call i32* @blk_mq_init_sq_queue(i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @gd, i32 0, i32 2), i32* @gdrom_mq_ops, i32 1, i32 %64)
  store i32* %65, i32** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @gd, i32 0, i32 3), align 8
  %66 = load i32*, i32** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @gd, i32 0, i32 3), align 8
  %67 = call i64 @IS_ERR(i32* %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %72

69:                                               ; preds = %61
  %70 = load i32*, i32** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @gd, i32 0, i32 3), align 8
  %71 = call i32 @PTR_ERR(i32* %70)
  store i32 %71, i32* %4, align 4
  store i32* null, i32** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @gd, i32 0, i32 3), align 8
  br label %95

72:                                               ; preds = %61
  %73 = load i32*, i32** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @gd, i32 0, i32 3), align 8
  %74 = load i32, i32* @BLK_BOUNCE_HIGH, align 4
  %75 = call i32 @blk_queue_bounce_limit(i32* %73, i32 %74)
  %76 = call i32 (...) @probe_gdrom_setupqueue()
  store i32 %76, i32* %4, align 4
  %77 = load i32, i32* %4, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %80

79:                                               ; preds = %72
  br label %91

80:                                               ; preds = %72
  %81 = load i32, i32* @GFP_KERNEL, align 4
  %82 = call i8* @kzalloc(i32 4, i32 %81)
  store i8* %82, i8** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @gd, i32 0, i32 4), align 8
  %83 = load i8*, i8** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @gd, i32 0, i32 4), align 8
  %84 = icmp ne i8* %83, null
  br i1 %84, label %88, label %85

85:                                               ; preds = %80
  %86 = load i32, i32* @ENOMEM, align 4
  %87 = sub nsw i32 0, %86
  store i32 %87, i32* %4, align 4
  br label %91

88:                                               ; preds = %80
  %89 = load %struct.TYPE_7__*, %struct.TYPE_7__** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @gd, i32 0, i32 1), align 8
  %90 = call i32 @add_disk(%struct.TYPE_7__* %89)
  store i32 0, i32* %2, align 4
  br label %114

91:                                               ; preds = %85, %79
  %92 = load i32*, i32** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @gd, i32 0, i32 3), align 8
  %93 = call i32 @blk_cleanup_queue(i32* %92)
  %94 = call i32 @blk_mq_free_tag_set(i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @gd, i32 0, i32 2))
  br label %95

95:                                               ; preds = %91, %69
  %96 = load i32, i32* @HW_EVENT_GDROM_DMA, align 4
  %97 = call i32 @free_irq(i32 %96, %struct.TYPE_6__* @gd)
  %98 = load i32, i32* @HW_EVENT_GDROM_CMD, align 4
  %99 = call i32 @free_irq(i32 %98, %struct.TYPE_6__* @gd)
  br label %100

100:                                              ; preds = %95, %60
  br label %101

101:                                              ; preds = %100, %48
  %102 = load %struct.TYPE_7__*, %struct.TYPE_7__** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @gd, i32 0, i32 1), align 8
  %103 = call i32 @del_gendisk(%struct.TYPE_7__* %102)
  br label %104

104:                                              ; preds = %101, %40
  %105 = load i8*, i8** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @gd, i32 0, i32 0), align 8
  %106 = call i32 @kfree(i8* %105)
  br label %107

107:                                              ; preds = %104, %32
  %108 = load i64, i64* @gdrom_major, align 8
  %109 = load i32, i32* @GDROM_DEV_NAME, align 4
  %110 = call i32 @unregister_blkdev(i64 %108, i32 %109)
  store i64 0, i64* @gdrom_major, align 8
  %111 = load i32, i32* %4, align 4
  %112 = call i32 (i8*, ...) @pr_warning(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), i32 %111)
  %113 = load i32, i32* %4, align 4
  store i32 %113, i32* %2, align 4
  br label %114

114:                                              ; preds = %107, %88, %22, %14, %7
  %115 = load i32, i32* %2, align 4
  ret i32 %115
}

declare dso_local i32 @gdrom_execute_diagnostic(...) #1

declare dso_local i32 @pr_warning(i8*, ...) #1

declare dso_local i64 @gdrom_outputversion(...) #1

declare dso_local i64 @register_blkdev(i32, i32) #1

declare dso_local i32 @pr_info(i8*, i64) #1

declare dso_local i8* @kzalloc(i32, i32) #1

declare dso_local i32 @probe_gdrom_setupcd(...) #1

declare dso_local %struct.TYPE_7__* @alloc_disk(i32) #1

declare dso_local i32 @probe_gdrom_setupdisk(...) #1

declare dso_local i64 @register_cdrom(i8*) #1

declare dso_local i32 @gdrom_set_interrupt_handlers(...) #1

declare dso_local i32* @blk_mq_init_sq_queue(i32*, i32*, i32, i32) #1

declare dso_local i64 @IS_ERR(i32*) #1

declare dso_local i32 @PTR_ERR(i32*) #1

declare dso_local i32 @blk_queue_bounce_limit(i32*, i32) #1

declare dso_local i32 @probe_gdrom_setupqueue(...) #1

declare dso_local i32 @add_disk(%struct.TYPE_7__*) #1

declare dso_local i32 @blk_cleanup_queue(i32*) #1

declare dso_local i32 @blk_mq_free_tag_set(i32*) #1

declare dso_local i32 @free_irq(i32, %struct.TYPE_6__*) #1

declare dso_local i32 @del_gendisk(%struct.TYPE_7__*) #1

declare dso_local i32 @kfree(i8*) #1

declare dso_local i32 @unregister_blkdev(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
