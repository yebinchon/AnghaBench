; ModuleID = '/home/carl/AnghaBench/kphp-kdb/storage/extr_storage-engine.c_get_aio_inprogress.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/storage/extr_storage-engine.c_get_aio_inprogress.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i32 }

@aio_fsync_cbp = common dso_local global %struct.TYPE_7__ zeroinitializer, align 4
@EINPROGRESS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"aio_fsync (%s) fails. %s\0A\00", align 1
@last_fsync_binlog_file = common dso_local global %struct.TYPE_6__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @get_aio_inprogress() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @aio_fsync_cbp, i32 0, i32 0), align 4
  %5 = icmp slt i32 %4, 0
  br i1 %5, label %6, label %7

6:                                                ; preds = %0
  store i32 0, i32* %1, align 4
  br label %30

7:                                                ; preds = %0
  %8 = call i32 @aio_error(%struct.TYPE_7__* @aio_fsync_cbp)
  store i32 %8, i32* %2, align 4
  %9 = load i32, i32* %2, align 4
  %10 = load i32, i32* @EINPROGRESS, align 4
  %11 = icmp eq i32 %9, %10
  br i1 %11, label %12, label %13

12:                                               ; preds = %7
  store i32 1, i32* %1, align 4
  br label %30

13:                                               ; preds = %7
  %14 = call i32 @aio_return(%struct.TYPE_7__* @aio_fsync_cbp)
  store i32 %14, i32* %3, align 4
  %15 = load i32, i32* %3, align 4
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %17, label %26

17:                                               ; preds = %13
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** @last_fsync_binlog_file, align 8
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* %3, align 4
  %22 = call i32 @strerror(i32 %21)
  %23 = call i32 @vkprintf(i32 0, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %20, i32 %22)
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** @last_fsync_binlog_file, align 8
  %25 = call i32 @update_binlog_fsync_stat(%struct.TYPE_6__* %24, i32 0)
  br label %29

26:                                               ; preds = %13
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** @last_fsync_binlog_file, align 8
  %28 = call i32 @update_binlog_fsync_stat(%struct.TYPE_6__* %27, i32 1)
  br label %29

29:                                               ; preds = %26, %17
  store i32 -1, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @aio_fsync_cbp, i32 0, i32 0), align 4
  store i32 0, i32* %1, align 4
  br label %30

30:                                               ; preds = %29, %12, %6
  %31 = load i32, i32* %1, align 4
  ret i32 %31
}

declare dso_local i32 @aio_error(%struct.TYPE_7__*) #1

declare dso_local i32 @aio_return(%struct.TYPE_7__*) #1

declare dso_local i32 @vkprintf(i32, i8*, i32, i32) #1

declare dso_local i32 @strerror(i32) #1

declare dso_local i32 @update_binlog_fsync_stat(%struct.TYPE_6__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
