; ModuleID = '/home/carl/AnghaBench/linux/drivers/block/extr_swim3.c_release_drive.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/block/extr_swim3.c_release_drive.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { %struct.request_queue* }
%struct.request_queue = type { i32 }
%struct.floppy_state = type { i64, i32 }

@disks = common dso_local global %struct.TYPE_2__** null, align 8
@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"-> release drive\0A\00", align 1
@swim3_lock = common dso_local global i32 0, align 4
@idle = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.floppy_state*)* @release_drive to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @release_drive(%struct.floppy_state* %0) #0 {
  %2 = alloca %struct.floppy_state*, align 8
  %3 = alloca %struct.request_queue*, align 8
  %4 = alloca i64, align 8
  store %struct.floppy_state* %0, %struct.floppy_state** %2, align 8
  %5 = load %struct.TYPE_2__**, %struct.TYPE_2__*** @disks, align 8
  %6 = load %struct.floppy_state*, %struct.floppy_state** %2, align 8
  %7 = getelementptr inbounds %struct.floppy_state, %struct.floppy_state* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %5, i64 %8
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load %struct.request_queue*, %struct.request_queue** %11, align 8
  store %struct.request_queue* %12, %struct.request_queue** %3, align 8
  %13 = call i32 @swim3_dbg(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  %14 = load i64, i64* %4, align 8
  %15 = call i32 @spin_lock_irqsave(i32* @swim3_lock, i64 %14)
  %16 = load i32, i32* @idle, align 4
  %17 = load %struct.floppy_state*, %struct.floppy_state** %2, align 8
  %18 = getelementptr inbounds %struct.floppy_state, %struct.floppy_state* %17, i32 0, i32 1
  store i32 %16, i32* %18, align 8
  %19 = load i64, i64* %4, align 8
  %20 = call i32 @spin_unlock_irqrestore(i32* @swim3_lock, i64 %19)
  %21 = load %struct.request_queue*, %struct.request_queue** %3, align 8
  %22 = call i32 @blk_mq_freeze_queue(%struct.request_queue* %21)
  %23 = load %struct.request_queue*, %struct.request_queue** %3, align 8
  %24 = call i32 @blk_mq_quiesce_queue(%struct.request_queue* %23)
  %25 = load %struct.request_queue*, %struct.request_queue** %3, align 8
  %26 = call i32 @blk_mq_unquiesce_queue(%struct.request_queue* %25)
  %27 = load %struct.request_queue*, %struct.request_queue** %3, align 8
  %28 = call i32 @blk_mq_unfreeze_queue(%struct.request_queue* %27)
  ret void
}

declare dso_local i32 @swim3_dbg(i8*, i8*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @blk_mq_freeze_queue(%struct.request_queue*) #1

declare dso_local i32 @blk_mq_quiesce_queue(%struct.request_queue*) #1

declare dso_local i32 @blk_mq_unquiesce_queue(%struct.request_queue*) #1

declare dso_local i32 @blk_mq_unfreeze_queue(%struct.request_queue*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
