; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/extr_pktcdvd.c_pkt_remove_dev.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/extr_pktcdvd.c_pkt_remove_dev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pktcdvd_device = type { i64, i64, i32, %struct.TYPE_5__*, i32, i32, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32 }

@ctl_mutex = common dso_local global i32 0, align 4
@SINGLE_DEPTH_NESTING = common dso_local global i32 0, align 4
@MAX_WRITERS = common dso_local global i32 0, align 4
@pkt_devs = common dso_local global %struct.pktcdvd_device** null, align 8
@.str = private unnamed_addr constant [15 x i8] c"dev not setup\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@FMODE_READ = common dso_local global i32 0, align 4
@FMODE_NDELAY = common dso_local global i32 0, align 4
@pkt_proc = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [17 x i8] c"writer unmapped\0A\00", align 1
@THIS_MODULE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64)* @pkt_remove_dev to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pkt_remove_dev(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.pktcdvd_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i64 %0, i64* %2, align 8
  store i32 0, i32* %5, align 4
  %6 = load i32, i32* @SINGLE_DEPTH_NESTING, align 4
  %7 = call i32 @mutex_lock_nested(i32* @ctl_mutex, i32 %6)
  store i32 0, i32* %4, align 4
  br label %8

8:                                                ; preds = %28, %1
  %9 = load i32, i32* %4, align 4
  %10 = load i32, i32* @MAX_WRITERS, align 4
  %11 = icmp slt i32 %9, %10
  br i1 %11, label %12, label %31

12:                                               ; preds = %8
  %13 = load %struct.pktcdvd_device**, %struct.pktcdvd_device*** @pkt_devs, align 8
  %14 = load i32, i32* %4, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds %struct.pktcdvd_device*, %struct.pktcdvd_device** %13, i64 %15
  %17 = load %struct.pktcdvd_device*, %struct.pktcdvd_device** %16, align 8
  store %struct.pktcdvd_device* %17, %struct.pktcdvd_device** %3, align 8
  %18 = load %struct.pktcdvd_device*, %struct.pktcdvd_device** %3, align 8
  %19 = icmp ne %struct.pktcdvd_device* %18, null
  br i1 %19, label %20, label %27

20:                                               ; preds = %12
  %21 = load %struct.pktcdvd_device*, %struct.pktcdvd_device** %3, align 8
  %22 = getelementptr inbounds %struct.pktcdvd_device, %struct.pktcdvd_device* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* %2, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %20
  br label %31

27:                                               ; preds = %20, %12
  br label %28

28:                                               ; preds = %27
  %29 = load i32, i32* %4, align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %4, align 4
  br label %8

31:                                               ; preds = %26, %8
  %32 = load i32, i32* %4, align 4
  %33 = load i32, i32* @MAX_WRITERS, align 4
  %34 = icmp eq i32 %32, %33
  br i1 %34, label %35, label %39

35:                                               ; preds = %31
  %36 = call i32 @pr_debug(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %37 = load i32, i32* @ENXIO, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %5, align 4
  br label %104

39:                                               ; preds = %31
  %40 = load %struct.pktcdvd_device*, %struct.pktcdvd_device** %3, align 8
  %41 = getelementptr inbounds %struct.pktcdvd_device, %struct.pktcdvd_device* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = icmp sgt i64 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %39
  %45 = load i32, i32* @EBUSY, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %5, align 4
  br label %104

47:                                               ; preds = %39
  %48 = load %struct.pktcdvd_device*, %struct.pktcdvd_device** %3, align 8
  %49 = getelementptr inbounds %struct.pktcdvd_device, %struct.pktcdvd_device* %48, i32 0, i32 6
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = call i32 @IS_ERR(i32 %51)
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %60, label %54

54:                                               ; preds = %47
  %55 = load %struct.pktcdvd_device*, %struct.pktcdvd_device** %3, align 8
  %56 = getelementptr inbounds %struct.pktcdvd_device, %struct.pktcdvd_device* %55, i32 0, i32 6
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = call i32 @kthread_stop(i32 %58)
  br label %60

60:                                               ; preds = %54, %47
  %61 = load %struct.pktcdvd_device**, %struct.pktcdvd_device*** @pkt_devs, align 8
  %62 = load i32, i32* %4, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds %struct.pktcdvd_device*, %struct.pktcdvd_device** %61, i64 %63
  store %struct.pktcdvd_device* null, %struct.pktcdvd_device** %64, align 8
  %65 = load %struct.pktcdvd_device*, %struct.pktcdvd_device** %3, align 8
  %66 = call i32 @pkt_debugfs_dev_remove(%struct.pktcdvd_device* %65)
  %67 = load %struct.pktcdvd_device*, %struct.pktcdvd_device** %3, align 8
  %68 = call i32 @pkt_sysfs_dev_remove(%struct.pktcdvd_device* %67)
  %69 = load %struct.pktcdvd_device*, %struct.pktcdvd_device** %3, align 8
  %70 = getelementptr inbounds %struct.pktcdvd_device, %struct.pktcdvd_device* %69, i32 0, i32 5
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* @FMODE_READ, align 4
  %73 = load i32, i32* @FMODE_NDELAY, align 4
  %74 = or i32 %72, %73
  %75 = call i32 @blkdev_put(i32 %71, i32 %74)
  %76 = load %struct.pktcdvd_device*, %struct.pktcdvd_device** %3, align 8
  %77 = getelementptr inbounds %struct.pktcdvd_device, %struct.pktcdvd_device* %76, i32 0, i32 4
  %78 = load i32, i32* %77, align 8
  %79 = load i32, i32* @pkt_proc, align 4
  %80 = call i32 @remove_proc_entry(i32 %78, i32 %79)
  %81 = load %struct.pktcdvd_device*, %struct.pktcdvd_device** %3, align 8
  %82 = call i32 @pkt_dbg(i32 1, %struct.pktcdvd_device* %81, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  %83 = load %struct.pktcdvd_device*, %struct.pktcdvd_device** %3, align 8
  %84 = getelementptr inbounds %struct.pktcdvd_device, %struct.pktcdvd_device* %83, i32 0, i32 3
  %85 = load %struct.TYPE_5__*, %struct.TYPE_5__** %84, align 8
  %86 = call i32 @del_gendisk(%struct.TYPE_5__* %85)
  %87 = load %struct.pktcdvd_device*, %struct.pktcdvd_device** %3, align 8
  %88 = getelementptr inbounds %struct.pktcdvd_device, %struct.pktcdvd_device* %87, i32 0, i32 3
  %89 = load %struct.TYPE_5__*, %struct.TYPE_5__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = call i32 @blk_cleanup_queue(i32 %91)
  %93 = load %struct.pktcdvd_device*, %struct.pktcdvd_device** %3, align 8
  %94 = getelementptr inbounds %struct.pktcdvd_device, %struct.pktcdvd_device* %93, i32 0, i32 3
  %95 = load %struct.TYPE_5__*, %struct.TYPE_5__** %94, align 8
  %96 = call i32 @put_disk(%struct.TYPE_5__* %95)
  %97 = load %struct.pktcdvd_device*, %struct.pktcdvd_device** %3, align 8
  %98 = getelementptr inbounds %struct.pktcdvd_device, %struct.pktcdvd_device* %97, i32 0, i32 2
  %99 = call i32 @mempool_exit(i32* %98)
  %100 = load %struct.pktcdvd_device*, %struct.pktcdvd_device** %3, align 8
  %101 = call i32 @kfree(%struct.pktcdvd_device* %100)
  %102 = load i32, i32* @THIS_MODULE, align 4
  %103 = call i32 @module_put(i32 %102)
  br label %104

104:                                              ; preds = %60, %44, %35
  %105 = call i32 @mutex_unlock(i32* @ctl_mutex)
  %106 = load i32, i32* %5, align 4
  ret i32 %106
}

declare dso_local i32 @mutex_lock_nested(i32*, i32) #1

declare dso_local i32 @pr_debug(i8*) #1

declare dso_local i32 @IS_ERR(i32) #1

declare dso_local i32 @kthread_stop(i32) #1

declare dso_local i32 @pkt_debugfs_dev_remove(%struct.pktcdvd_device*) #1

declare dso_local i32 @pkt_sysfs_dev_remove(%struct.pktcdvd_device*) #1

declare dso_local i32 @blkdev_put(i32, i32) #1

declare dso_local i32 @remove_proc_entry(i32, i32) #1

declare dso_local i32 @pkt_dbg(i32, %struct.pktcdvd_device*, i8*) #1

declare dso_local i32 @del_gendisk(%struct.TYPE_5__*) #1

declare dso_local i32 @blk_cleanup_queue(i32) #1

declare dso_local i32 @put_disk(%struct.TYPE_5__*) #1

declare dso_local i32 @mempool_exit(i32*) #1

declare dso_local i32 @kfree(%struct.pktcdvd_device*) #1

declare dso_local i32 @module_put(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
