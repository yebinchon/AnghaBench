; ModuleID = '/home/carl/AnghaBench/linux/drivers/atm/extr_firestream.c_process_return_queue.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/atm/extr_firestream.c_process_return_queue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fs_dev = type { i32 }
%struct.queue = type { i32 }
%struct.FS_QENTRY = type { i64, i32, i32, i32 }

@Q_EMPTY = common dso_local global i64 0, align 8
@FS_DEBUG_QUEUE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"reaping return queue entry at %lx\0A\00", align 1
@.str.1 = private unnamed_addr constant [40 x i8] c"queue entry: %08x %08x %08x %08x. (%d)\0A\00", align 1
@FS_DEBUG_ALLOC = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [13 x i8] c"Free tc: %p\0A\00", align 1
@Q_INCWRAP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fs_dev*, %struct.queue*)* @process_return_queue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @process_return_queue(%struct.fs_dev* %0, %struct.queue* %1) #0 {
  %3 = alloca %struct.fs_dev*, align 8
  %4 = alloca %struct.queue*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.FS_QENTRY*, align 8
  %7 = alloca i8*, align 8
  store %struct.fs_dev* %0, %struct.fs_dev** %3, align 8
  store %struct.queue* %1, %struct.queue** %4, align 8
  br label %8

8:                                                ; preds = %57, %2
  %9 = load %struct.fs_dev*, %struct.fs_dev** %3, align 8
  %10 = load %struct.queue*, %struct.queue** %4, align 8
  %11 = getelementptr inbounds %struct.queue, %struct.queue* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @Q_RP(i32 %12)
  %14 = call i64 @read_fs(%struct.fs_dev* %9, i32 %13)
  store i64 %14, i64* %5, align 8
  %15 = load i64, i64* @Q_EMPTY, align 8
  %16 = and i64 %14, %15
  %17 = icmp ne i64 %16, 0
  %18 = xor i1 %17, true
  br i1 %18, label %19, label %65

19:                                               ; preds = %8
  %20 = load i32, i32* @FS_DEBUG_QUEUE, align 4
  %21 = load i64, i64* %5, align 8
  %22 = inttoptr i64 %21 to i8*
  %23 = call i32 (i32, i8*, i8*, ...) @fs_dprintk(i32 %20, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i8* %22)
  %24 = load i64, i64* %5, align 8
  %25 = call i8* @bus_to_virt(i64 %24)
  %26 = bitcast i8* %25 to %struct.FS_QENTRY*
  store %struct.FS_QENTRY* %26, %struct.FS_QENTRY** %6, align 8
  %27 = load i32, i32* @FS_DEBUG_QUEUE, align 4
  %28 = load %struct.FS_QENTRY*, %struct.FS_QENTRY** %6, align 8
  %29 = getelementptr inbounds %struct.FS_QENTRY, %struct.FS_QENTRY* %28, i32 0, i32 3
  %30 = load i32, i32* %29, align 8
  %31 = sext i32 %30 to i64
  %32 = inttoptr i64 %31 to i8*
  %33 = load %struct.FS_QENTRY*, %struct.FS_QENTRY** %6, align 8
  %34 = getelementptr inbounds %struct.FS_QENTRY, %struct.FS_QENTRY* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load %struct.FS_QENTRY*, %struct.FS_QENTRY** %6, align 8
  %37 = getelementptr inbounds %struct.FS_QENTRY, %struct.FS_QENTRY* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.FS_QENTRY*, %struct.FS_QENTRY** %6, align 8
  %40 = getelementptr inbounds %struct.FS_QENTRY, %struct.FS_QENTRY* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 8
  %42 = load %struct.FS_QENTRY*, %struct.FS_QENTRY** %6, align 8
  %43 = call i32 @STATUS_CODE(%struct.FS_QENTRY* %42)
  %44 = call i32 (i32, i8*, i8*, ...) @fs_dprintk(i32 %27, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i8* %32, i64 %35, i32 %38, i32 %41, i32 %43)
  %45 = load %struct.FS_QENTRY*, %struct.FS_QENTRY** %6, align 8
  %46 = call i32 @STATUS_CODE(%struct.FS_QENTRY* %45)
  switch i32 %46, label %57 [
    i32 5, label %47
  ]

47:                                               ; preds = %19
  %48 = load %struct.FS_QENTRY*, %struct.FS_QENTRY** %6, align 8
  %49 = getelementptr inbounds %struct.FS_QENTRY, %struct.FS_QENTRY* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = call i8* @bus_to_virt(i64 %50)
  store i8* %51, i8** %7, align 8
  %52 = load i32, i32* @FS_DEBUG_ALLOC, align 4
  %53 = load i8*, i8** %7, align 8
  %54 = call i32 (i32, i8*, i8*, ...) @fs_dprintk(i32 %52, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i8* %53)
  %55 = load i8*, i8** %7, align 8
  %56 = call i32 @kfree(i8* %55)
  br label %57

57:                                               ; preds = %19, %47
  %58 = load %struct.fs_dev*, %struct.fs_dev** %3, align 8
  %59 = load %struct.queue*, %struct.queue** %4, align 8
  %60 = getelementptr inbounds %struct.queue, %struct.queue* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @Q_RP(i32 %61)
  %63 = load i32, i32* @Q_INCWRAP, align 4
  %64 = call i32 @write_fs(%struct.fs_dev* %58, i32 %62, i32 %63)
  br label %8

65:                                               ; preds = %8
  ret void
}

declare dso_local i64 @read_fs(%struct.fs_dev*, i32) #1

declare dso_local i32 @Q_RP(i32) #1

declare dso_local i32 @fs_dprintk(i32, i8*, i8*, ...) #1

declare dso_local i8* @bus_to_virt(i64) #1

declare dso_local i32 @STATUS_CODE(%struct.FS_QENTRY*) #1

declare dso_local i32 @kfree(i8*) #1

declare dso_local i32 @write_fs(%struct.fs_dev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
