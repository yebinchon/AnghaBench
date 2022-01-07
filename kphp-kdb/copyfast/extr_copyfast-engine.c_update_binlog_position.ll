; ModuleID = '/home/carl/AnghaBench/kphp-kdb/copyfast/extr_copyfast-engine.c_update_binlog_position.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/copyfast/extr_copyfast-engine.c_update_binlog_position.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.stat = type { i64 }

@BINLOG_BUFFER_FD = common dso_local global i32 0, align 4
@BINLOG_POSITION = common dso_local global i64 0, align 8
@MAX_BINLOG_SIZE = common dso_local global i64 0, align 8
@LOG_BINLOG_UPDATED = common dso_local global i32 0, align 4
@STATS = common dso_local global %struct.TYPE_4__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @update_binlog_position() #0 {
  %1 = alloca %struct.stat, align 8
  %2 = alloca i64, align 8
  %3 = load i32, i32* @BINLOG_BUFFER_FD, align 4
  %4 = call i32 @fstat(i32 %3, %struct.stat* %1)
  %5 = load i64, i64* @BINLOG_POSITION, align 8
  store i64 %5, i64* %2, align 8
  %6 = getelementptr inbounds %struct.stat, %struct.stat* %1, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  store i64 %7, i64* @BINLOG_POSITION, align 8
  %8 = load i64, i64* @BINLOG_POSITION, align 8
  %9 = load i64, i64* @MAX_BINLOG_SIZE, align 8
  %10 = icmp slt i64 %8, %9
  %11 = zext i1 %10 to i32
  %12 = call i32 @assert(i32 %11)
  %13 = load i64, i64* @BINLOG_POSITION, align 8
  %14 = load i64, i64* %2, align 8
  %15 = icmp ne i64 %13, %14
  br i1 %15, label %16, label %29

16:                                               ; preds = %0
  %17 = load i32, i32* @LOG_BINLOG_UPDATED, align 4
  %18 = load i64, i64* @BINLOG_POSITION, align 8
  %19 = call i32 @log_event(i32 1, i32 %17, i64 %18)
  %20 = load i64, i64* %2, align 8
  %21 = call i32 @update_crc64(i64 %20)
  %22 = load i64, i64* %2, align 8
  %23 = call i32 @update_binlog_buffer(i64 %22)
  %24 = call i32 (...) @get_double_time_since_epoch()
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** @STATS, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  store i32 %24, i32* %27, align 4
  %28 = call i32 (...) @send_friends_binlog_position()
  br label %29

29:                                               ; preds = %16, %0
  ret void
}

declare dso_local i32 @fstat(i32, %struct.stat*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @log_event(i32, i32, i64) #1

declare dso_local i32 @update_crc64(i64) #1

declare dso_local i32 @update_binlog_buffer(i64) #1

declare dso_local i32 @get_double_time_since_epoch(...) #1

declare dso_local i32 @send_friends_binlog_position(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
