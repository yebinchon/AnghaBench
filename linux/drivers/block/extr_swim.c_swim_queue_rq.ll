; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/extr_swim.c_swim_queue_rq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/extr_swim.c_swim_queue_rq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.blk_mq_hw_ctx = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.floppy_state* }
%struct.floppy_state = type { i32, %struct.swim_priv* }
%struct.swim_priv = type { i32 }
%struct.blk_mq_queue_data = type { %struct.request* }
%struct.request = type { i32 }

@BLK_STS_DEV_RESOURCE = common dso_local global i32 0, align 4
@WRITE = common dso_local global i64 0, align 8
@BLK_STS_IOERR = common dso_local global i32 0, align 4
@BLK_STS_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.blk_mq_hw_ctx*, %struct.blk_mq_queue_data*)* @swim_queue_rq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @swim_queue_rq(%struct.blk_mq_hw_ctx* %0, %struct.blk_mq_queue_data* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.blk_mq_hw_ctx*, align 8
  %5 = alloca %struct.blk_mq_queue_data*, align 8
  %6 = alloca %struct.floppy_state*, align 8
  %7 = alloca %struct.swim_priv*, align 8
  %8 = alloca %struct.request*, align 8
  %9 = alloca i32, align 4
  store %struct.blk_mq_hw_ctx* %0, %struct.blk_mq_hw_ctx** %4, align 8
  store %struct.blk_mq_queue_data* %1, %struct.blk_mq_queue_data** %5, align 8
  %10 = load %struct.blk_mq_hw_ctx*, %struct.blk_mq_hw_ctx** %4, align 8
  %11 = getelementptr inbounds %struct.blk_mq_hw_ctx, %struct.blk_mq_hw_ctx* %10, i32 0, i32 0
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load %struct.floppy_state*, %struct.floppy_state** %13, align 8
  store %struct.floppy_state* %14, %struct.floppy_state** %6, align 8
  %15 = load %struct.floppy_state*, %struct.floppy_state** %6, align 8
  %16 = getelementptr inbounds %struct.floppy_state, %struct.floppy_state* %15, i32 0, i32 1
  %17 = load %struct.swim_priv*, %struct.swim_priv** %16, align 8
  store %struct.swim_priv* %17, %struct.swim_priv** %7, align 8
  %18 = load %struct.blk_mq_queue_data*, %struct.blk_mq_queue_data** %5, align 8
  %19 = getelementptr inbounds %struct.blk_mq_queue_data, %struct.blk_mq_queue_data* %18, i32 0, i32 0
  %20 = load %struct.request*, %struct.request** %19, align 8
  store %struct.request* %20, %struct.request** %8, align 8
  %21 = load %struct.swim_priv*, %struct.swim_priv** %7, align 8
  %22 = getelementptr inbounds %struct.swim_priv, %struct.swim_priv* %21, i32 0, i32 0
  %23 = call i32 @spin_trylock_irq(i32* %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %27, label %25

25:                                               ; preds = %2
  %26 = load i32, i32* @BLK_STS_DEV_RESOURCE, align 4
  store i32 %26, i32* %3, align 4
  br label %70

27:                                               ; preds = %2
  %28 = load %struct.request*, %struct.request** %8, align 8
  %29 = call i32 @blk_mq_start_request(%struct.request* %28)
  %30 = load %struct.floppy_state*, %struct.floppy_state** %6, align 8
  %31 = getelementptr inbounds %struct.floppy_state, %struct.floppy_state* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %39

34:                                               ; preds = %27
  %35 = load %struct.request*, %struct.request** %8, align 8
  %36 = call i64 @rq_data_dir(%struct.request* %35)
  %37 = load i64, i64* @WRITE, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %39, label %41

39:                                               ; preds = %34, %27
  %40 = load i32, i32* @BLK_STS_IOERR, align 4
  store i32 %40, i32* %9, align 4
  br label %65

41:                                               ; preds = %34
  br label %42

42:                                               ; preds = %53, %41
  %43 = load %struct.floppy_state*, %struct.floppy_state** %6, align 8
  %44 = load %struct.request*, %struct.request** %8, align 8
  %45 = call i32 @blk_rq_pos(%struct.request* %44)
  %46 = load %struct.request*, %struct.request** %8, align 8
  %47 = call i32 @blk_rq_cur_sectors(%struct.request* %46)
  %48 = load %struct.request*, %struct.request** %8, align 8
  %49 = getelementptr inbounds %struct.request, %struct.request* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @bio_data(i32 %50)
  %52 = call i32 @floppy_read_sectors(%struct.floppy_state* %43, i32 %45, i32 %47, i32 %51)
  store i32 %52, i32* %9, align 4
  br label %53

53:                                               ; preds = %42
  %54 = load %struct.request*, %struct.request** %8, align 8
  %55 = load i32, i32* %9, align 4
  %56 = load %struct.request*, %struct.request** %8, align 8
  %57 = call i32 @blk_rq_cur_bytes(%struct.request* %56)
  %58 = call i64 @blk_update_request(%struct.request* %54, i32 %55, i32 %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %42, label %60

60:                                               ; preds = %53
  %61 = load %struct.request*, %struct.request** %8, align 8
  %62 = load i32, i32* %9, align 4
  %63 = call i32 @__blk_mq_end_request(%struct.request* %61, i32 %62)
  %64 = load i32, i32* @BLK_STS_OK, align 4
  store i32 %64, i32* %9, align 4
  br label %65

65:                                               ; preds = %60, %39
  %66 = load %struct.swim_priv*, %struct.swim_priv** %7, align 8
  %67 = getelementptr inbounds %struct.swim_priv, %struct.swim_priv* %66, i32 0, i32 0
  %68 = call i32 @spin_unlock_irq(i32* %67)
  %69 = load i32, i32* %9, align 4
  store i32 %69, i32* %3, align 4
  br label %70

70:                                               ; preds = %65, %25
  %71 = load i32, i32* %3, align 4
  ret i32 %71
}

declare dso_local i32 @spin_trylock_irq(i32*) #1

declare dso_local i32 @blk_mq_start_request(%struct.request*) #1

declare dso_local i64 @rq_data_dir(%struct.request*) #1

declare dso_local i32 @floppy_read_sectors(%struct.floppy_state*, i32, i32, i32) #1

declare dso_local i32 @blk_rq_pos(%struct.request*) #1

declare dso_local i32 @blk_rq_cur_sectors(%struct.request*) #1

declare dso_local i32 @bio_data(i32) #1

declare dso_local i64 @blk_update_request(%struct.request*, i32, i32) #1

declare dso_local i32 @blk_rq_cur_bytes(%struct.request*) #1

declare dso_local i32 @__blk_mq_end_request(%struct.request*, i32) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
