; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/extr_xen-blkfront.c_negotiate_mq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/extr_xen-blkfront.c_negotiate_mq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.blkfront_info = type { i32, %struct.blkfront_ring_info*, %struct.TYPE_2__* }
%struct.blkfront_ring_info = type { i32, i32, %struct.blkfront_info*, i32, i32 }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [23 x i8] c"multi-queue-max-queues\00", align 1
@xen_blkif_max_queues = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"allocating ring_info structure\00", align 1
@blkif_restart_queue = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.blkfront_info*)* @negotiate_mq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @negotiate_mq(%struct.blkfront_info* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.blkfront_info*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.blkfront_ring_info*, align 8
  store %struct.blkfront_info* %0, %struct.blkfront_info** %3, align 8
  %7 = load %struct.blkfront_info*, %struct.blkfront_info** %3, align 8
  %8 = getelementptr inbounds %struct.blkfront_info, %struct.blkfront_info* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = call i32 @BUG_ON(i32 %9)
  %11 = load %struct.blkfront_info*, %struct.blkfront_info** %3, align 8
  %12 = getelementptr inbounds %struct.blkfront_info, %struct.blkfront_info* %11, i32 0, i32 2
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @xenbus_read_unsigned(i32 %15, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 1)
  store i32 %16, i32* %4, align 4
  %17 = load i32, i32* %4, align 4
  %18 = load i32, i32* @xen_blkif_max_queues, align 4
  %19 = call i32 @min(i32 %17, i32 %18)
  %20 = load %struct.blkfront_info*, %struct.blkfront_info** %3, align 8
  %21 = getelementptr inbounds %struct.blkfront_info, %struct.blkfront_info* %20, i32 0, i32 0
  store i32 %19, i32* %21, align 8
  %22 = load %struct.blkfront_info*, %struct.blkfront_info** %3, align 8
  %23 = getelementptr inbounds %struct.blkfront_info, %struct.blkfront_info* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %29, label %26

26:                                               ; preds = %1
  %27 = load %struct.blkfront_info*, %struct.blkfront_info** %3, align 8
  %28 = getelementptr inbounds %struct.blkfront_info, %struct.blkfront_info* %27, i32 0, i32 0
  store i32 1, i32* %28, align 8
  br label %29

29:                                               ; preds = %26, %1
  %30 = load %struct.blkfront_info*, %struct.blkfront_info** %3, align 8
  %31 = getelementptr inbounds %struct.blkfront_info, %struct.blkfront_info* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* @GFP_KERNEL, align 4
  %34 = call %struct.blkfront_ring_info* @kvcalloc(i32 %32, i32 24, i32 %33)
  %35 = load %struct.blkfront_info*, %struct.blkfront_info** %3, align 8
  %36 = getelementptr inbounds %struct.blkfront_info, %struct.blkfront_info* %35, i32 0, i32 1
  store %struct.blkfront_ring_info* %34, %struct.blkfront_ring_info** %36, align 8
  %37 = load %struct.blkfront_info*, %struct.blkfront_info** %3, align 8
  %38 = getelementptr inbounds %struct.blkfront_info, %struct.blkfront_info* %37, i32 0, i32 1
  %39 = load %struct.blkfront_ring_info*, %struct.blkfront_ring_info** %38, align 8
  %40 = icmp ne %struct.blkfront_ring_info* %39, null
  br i1 %40, label %52, label %41

41:                                               ; preds = %29
  %42 = load %struct.blkfront_info*, %struct.blkfront_info** %3, align 8
  %43 = getelementptr inbounds %struct.blkfront_info, %struct.blkfront_info* %42, i32 0, i32 2
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** %43, align 8
  %45 = load i32, i32* @ENOMEM, align 4
  %46 = sub nsw i32 0, %45
  %47 = call i32 @xenbus_dev_fatal(%struct.TYPE_2__* %44, i32 %46, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  %48 = load %struct.blkfront_info*, %struct.blkfront_info** %3, align 8
  %49 = getelementptr inbounds %struct.blkfront_info, %struct.blkfront_info* %48, i32 0, i32 0
  store i32 0, i32* %49, align 8
  %50 = load i32, i32* @ENOMEM, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %2, align 4
  br label %86

52:                                               ; preds = %29
  store i32 0, i32* %5, align 4
  br label %53

53:                                               ; preds = %82, %52
  %54 = load i32, i32* %5, align 4
  %55 = load %struct.blkfront_info*, %struct.blkfront_info** %3, align 8
  %56 = getelementptr inbounds %struct.blkfront_info, %struct.blkfront_info* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = icmp ult i32 %54, %57
  br i1 %58, label %59, label %85

59:                                               ; preds = %53
  %60 = load %struct.blkfront_info*, %struct.blkfront_info** %3, align 8
  %61 = getelementptr inbounds %struct.blkfront_info, %struct.blkfront_info* %60, i32 0, i32 1
  %62 = load %struct.blkfront_ring_info*, %struct.blkfront_ring_info** %61, align 8
  %63 = load i32, i32* %5, align 4
  %64 = zext i32 %63 to i64
  %65 = getelementptr inbounds %struct.blkfront_ring_info, %struct.blkfront_ring_info* %62, i64 %64
  store %struct.blkfront_ring_info* %65, %struct.blkfront_ring_info** %6, align 8
  %66 = load %struct.blkfront_ring_info*, %struct.blkfront_ring_info** %6, align 8
  %67 = getelementptr inbounds %struct.blkfront_ring_info, %struct.blkfront_ring_info* %66, i32 0, i32 4
  %68 = call i32 @INIT_LIST_HEAD(i32* %67)
  %69 = load %struct.blkfront_ring_info*, %struct.blkfront_ring_info** %6, align 8
  %70 = getelementptr inbounds %struct.blkfront_ring_info, %struct.blkfront_ring_info* %69, i32 0, i32 3
  %71 = call i32 @INIT_LIST_HEAD(i32* %70)
  %72 = load %struct.blkfront_info*, %struct.blkfront_info** %3, align 8
  %73 = load %struct.blkfront_ring_info*, %struct.blkfront_ring_info** %6, align 8
  %74 = getelementptr inbounds %struct.blkfront_ring_info, %struct.blkfront_ring_info* %73, i32 0, i32 2
  store %struct.blkfront_info* %72, %struct.blkfront_info** %74, align 8
  %75 = load %struct.blkfront_ring_info*, %struct.blkfront_ring_info** %6, align 8
  %76 = getelementptr inbounds %struct.blkfront_ring_info, %struct.blkfront_ring_info* %75, i32 0, i32 1
  %77 = load i32, i32* @blkif_restart_queue, align 4
  %78 = call i32 @INIT_WORK(i32* %76, i32 %77)
  %79 = load %struct.blkfront_ring_info*, %struct.blkfront_ring_info** %6, align 8
  %80 = getelementptr inbounds %struct.blkfront_ring_info, %struct.blkfront_ring_info* %79, i32 0, i32 0
  %81 = call i32 @spin_lock_init(i32* %80)
  br label %82

82:                                               ; preds = %59
  %83 = load i32, i32* %5, align 4
  %84 = add i32 %83, 1
  store i32 %84, i32* %5, align 4
  br label %53

85:                                               ; preds = %53
  store i32 0, i32* %2, align 4
  br label %86

86:                                               ; preds = %85, %41
  %87 = load i32, i32* %2, align 4
  ret i32 %87
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @xenbus_read_unsigned(i32, i8*, i32) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local %struct.blkfront_ring_info* @kvcalloc(i32, i32, i32) #1

declare dso_local i32 @xenbus_dev_fatal(%struct.TYPE_2__*, i32, i8*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
