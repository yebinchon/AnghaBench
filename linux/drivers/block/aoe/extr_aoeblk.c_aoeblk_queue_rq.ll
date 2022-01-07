; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/aoe/extr_aoeblk.c_aoeblk_queue_rq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/aoe/extr_aoeblk.c_aoeblk_queue_rq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.blk_mq_hw_ctx = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.aoedev* }
%struct.aoedev = type { i32, i32, i32, i32, i32 }
%struct.blk_mq_queue_data = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }

@DEVFL_UP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"aoe: device %ld.%d is not up\0A\00", align 1
@BLK_STS_IOERR = common dso_local global i32 0, align 4
@BLK_STS_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.blk_mq_hw_ctx*, %struct.blk_mq_queue_data*)* @aoeblk_queue_rq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @aoeblk_queue_rq(%struct.blk_mq_hw_ctx* %0, %struct.blk_mq_queue_data* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.blk_mq_hw_ctx*, align 8
  %5 = alloca %struct.blk_mq_queue_data*, align 8
  %6 = alloca %struct.aoedev*, align 8
  store %struct.blk_mq_hw_ctx* %0, %struct.blk_mq_hw_ctx** %4, align 8
  store %struct.blk_mq_queue_data* %1, %struct.blk_mq_queue_data** %5, align 8
  %7 = load %struct.blk_mq_hw_ctx*, %struct.blk_mq_hw_ctx** %4, align 8
  %8 = getelementptr inbounds %struct.blk_mq_hw_ctx, %struct.blk_mq_hw_ctx* %7, i32 0, i32 0
  %9 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %11 = load %struct.aoedev*, %struct.aoedev** %10, align 8
  store %struct.aoedev* %11, %struct.aoedev** %6, align 8
  %12 = load %struct.aoedev*, %struct.aoedev** %6, align 8
  %13 = getelementptr inbounds %struct.aoedev, %struct.aoedev* %12, i32 0, i32 1
  %14 = call i32 @spin_lock_irq(i32* %13)
  %15 = load %struct.aoedev*, %struct.aoedev** %6, align 8
  %16 = getelementptr inbounds %struct.aoedev, %struct.aoedev* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @DEVFL_UP, align 4
  %19 = and i32 %17, %18
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %37

21:                                               ; preds = %2
  %22 = load %struct.aoedev*, %struct.aoedev** %6, align 8
  %23 = getelementptr inbounds %struct.aoedev, %struct.aoedev* %22, i32 0, i32 4
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.aoedev*, %struct.aoedev** %6, align 8
  %26 = getelementptr inbounds %struct.aoedev, %struct.aoedev* %25, i32 0, i32 3
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @pr_info_ratelimited(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %24, i32 %27)
  %29 = load %struct.aoedev*, %struct.aoedev** %6, align 8
  %30 = getelementptr inbounds %struct.aoedev, %struct.aoedev* %29, i32 0, i32 1
  %31 = call i32 @spin_unlock_irq(i32* %30)
  %32 = load %struct.blk_mq_queue_data*, %struct.blk_mq_queue_data** %5, align 8
  %33 = getelementptr inbounds %struct.blk_mq_queue_data, %struct.blk_mq_queue_data* %32, i32 0, i32 0
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %33, align 8
  %35 = call i32 @blk_mq_start_request(%struct.TYPE_4__* %34)
  %36 = load i32, i32* @BLK_STS_IOERR, align 4
  store i32 %36, i32* %3, align 4
  br label %51

37:                                               ; preds = %2
  %38 = load %struct.blk_mq_queue_data*, %struct.blk_mq_queue_data** %5, align 8
  %39 = getelementptr inbounds %struct.blk_mq_queue_data, %struct.blk_mq_queue_data* %38, i32 0, i32 0
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  %42 = load %struct.aoedev*, %struct.aoedev** %6, align 8
  %43 = getelementptr inbounds %struct.aoedev, %struct.aoedev* %42, i32 0, i32 2
  %44 = call i32 @list_add_tail(i32* %41, i32* %43)
  %45 = load %struct.aoedev*, %struct.aoedev** %6, align 8
  %46 = call i32 @aoecmd_work(%struct.aoedev* %45)
  %47 = load %struct.aoedev*, %struct.aoedev** %6, align 8
  %48 = getelementptr inbounds %struct.aoedev, %struct.aoedev* %47, i32 0, i32 1
  %49 = call i32 @spin_unlock_irq(i32* %48)
  %50 = load i32, i32* @BLK_STS_OK, align 4
  store i32 %50, i32* %3, align 4
  br label %51

51:                                               ; preds = %37, %21
  %52 = load i32, i32* %3, align 4
  ret i32 %52
}

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @pr_info_ratelimited(i8*, i32, i32) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @blk_mq_start_request(%struct.TYPE_4__*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @aoecmd_work(%struct.aoedev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
