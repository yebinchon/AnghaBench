; ModuleID = '/home/carl/AnghaBench/kphp-kdb/binlog/extr_kdb-binlog-common.c_sync_binlog.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/binlog/extr_kdb-binlog-common.c_sync_binlog.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_11__ = type { i32 }

@binlogname = common dso_local global i8* null, align 8
@binlog_disabled = common dso_local global i64 0, align 8
@binlog_sync_active = common dso_local global i64 0, align 8
@binlog_sync_aiocb = common dso_local global %struct.TYPE_10__ zeroinitializer, align 4
@EINPROGRESS = common dso_local global i32 0, align 4
@now = common dso_local global i64 0, align 8
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [71 x i8] c"%d binlog aio_sync didn't complete for 120 seconds, invoking fsync()!\0A\00", align 1
@binlog_sync_last = common dso_local global i64 0, align 8
@binlog_fd = common dso_local global i32 0, align 4
@binlog_write_aiocb = common dso_local global %struct.TYPE_11__ zeroinitializer, align 4
@verbosity = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [50 x i8] c"%d aio_fsync() for binlog completed successfully\0A\00", align 1
@errno = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [32 x i8] c"%d error syncing binlog %s: %m\0A\00", align 1
@SIGEV_NONE = common dso_local global i32 0, align 4
@O_DSYNC = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [38 x i8] c"%d aio_fsync() for binlog failed: %m\0A\00", align 1
@.str.4 = private unnamed_addr constant [34 x i8] c"%d queued aio_fsync() for binlog\0A\00", align 1
@.str.5 = private unnamed_addr constant [28 x i8] c"%d error syncing binlog: %m\00", align 1
@.str.6 = private unnamed_addr constant [19 x i8] c"%d binlog sync ok\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sync_binlog(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %5 = load i8*, i8** @binlogname, align 8
  %6 = icmp ne i8* %5, null
  br i1 %6, label %7, label %10

7:                                                ; preds = %1
  %8 = load i64, i64* @binlog_disabled, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %7, %1
  br label %122

11:                                               ; preds = %7
  %12 = load i64, i64* @binlog_sync_active, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %72

14:                                               ; preds = %11
  %15 = call i32 @aio_error(%struct.TYPE_10__* @binlog_sync_aiocb)
  store i32 %15, i32* %4, align 4
  store i32 %15, i32* %3, align 4
  %16 = load i32, i32* %3, align 4
  %17 = load i32, i32* @EINPROGRESS, align 4
  %18 = icmp eq i32 %16, %17
  br i1 %18, label %19, label %33

19:                                               ; preds = %14
  %20 = load i64, i64* @now, align 8
  %21 = load i64, i64* @binlog_sync_active, align 8
  %22 = add nsw i64 %21, 120
  %23 = icmp sgt i64 %20, %22
  br i1 %23, label %24, label %33

24:                                               ; preds = %19
  %25 = load i32, i32* @stderr, align 4
  %26 = load i64, i64* @now, align 8
  %27 = call i32 (i32, i8*, i64, ...) @fprintf(i32 %25, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str, i64 0, i64 0), i64 %26)
  %28 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @binlog_sync_aiocb, i32 0, i32 0), align 4
  %29 = call i32 @aio_cancel(i32 %28, %struct.TYPE_10__* @binlog_sync_aiocb)
  %30 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @binlog_sync_aiocb, i32 0, i32 0), align 4
  %31 = call i64 @fsync(i32 %30)
  %32 = call i32 @exit(i32 3) #3
  unreachable

33:                                               ; preds = %19, %14
  %34 = load i32, i32* %3, align 4
  %35 = load i32, i32* @EINPROGRESS, align 4
  %36 = icmp ne i32 %34, %35
  br i1 %36, label %37, label %71

37:                                               ; preds = %33
  store i64 0, i64* @binlog_sync_active, align 8
  %38 = call i32 @aio_return(%struct.TYPE_10__* @binlog_sync_aiocb)
  store i32 %38, i32* %3, align 4
  %39 = load i32, i32* %3, align 4
  %40 = icmp sge i32 %39, 0
  br i1 %40, label %41, label %61

41:                                               ; preds = %37
  %42 = load i64, i64* @now, align 8
  store i64 %42, i64* @binlog_sync_last, align 8
  %43 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @binlog_sync_aiocb, i32 0, i32 0), align 4
  %44 = load i32, i32* @binlog_fd, align 4
  %45 = icmp ne i32 %43, %44
  br i1 %45, label %46, label %53

46:                                               ; preds = %41
  %47 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @binlog_write_aiocb, i32 0, i32 0), align 4
  %48 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @binlog_sync_aiocb, i32 0, i32 0), align 4
  %49 = icmp ne i32 %47, %48
  br i1 %49, label %50, label %53

50:                                               ; preds = %46
  %51 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @binlog_sync_aiocb, i32 0, i32 0), align 4
  %52 = call i32 @close(i32 %51)
  br label %53

53:                                               ; preds = %50, %46, %41
  store i32 -1, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @binlog_sync_aiocb, i32 0, i32 0), align 4
  %54 = load i32, i32* @verbosity, align 4
  %55 = icmp sgt i32 %54, 1
  br i1 %55, label %56, label %60

56:                                               ; preds = %53
  %57 = load i32, i32* @stderr, align 4
  %58 = load i64, i64* @now, align 8
  %59 = call i32 (i32, i8*, i64, ...) @fprintf(i32 %57, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.1, i64 0, i64 0), i64 %58)
  br label %60

60:                                               ; preds = %56, %53
  br label %70

61:                                               ; preds = %37
  %62 = load i32, i32* %4, align 4
  store i32 %62, i32* @errno, align 4
  %63 = load i32, i32* @stderr, align 4
  %64 = load i64, i64* @now, align 8
  %65 = load i8*, i8** @binlogname, align 8
  %66 = call i32 (i32, i8*, i64, ...) @fprintf(i32 %63, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0), i64 %64, i8* %65)
  %67 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @binlog_sync_aiocb, i32 0, i32 0), align 4
  %68 = call i64 @fsync(i32 %67)
  %69 = call i32 @exit(i32 3) #3
  unreachable

70:                                               ; preds = %60
  br label %71

71:                                               ; preds = %70, %33
  br label %72

72:                                               ; preds = %71, %11
  %73 = load i64, i64* @binlog_sync_active, align 8
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %101, label %75

75:                                               ; preds = %72
  %76 = load i32, i32* %2, align 4
  %77 = icmp eq i32 %76, 1
  br i1 %77, label %78, label %101

78:                                               ; preds = %75
  %79 = call i32 @memset(%struct.TYPE_10__* @binlog_sync_aiocb, i32 0, i32 4)
  %80 = load i32, i32* @binlog_fd, align 4
  store i32 %80, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @binlog_sync_aiocb, i32 0, i32 0), align 4
  %81 = load i32, i32* @SIGEV_NONE, align 4
  store i32 %81, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @binlog_sync_aiocb, i32 0, i32 1, i32 0), align 4
  %82 = load i32, i32* @O_DSYNC, align 4
  %83 = call i64 @aio_fsync(i32 %82, %struct.TYPE_10__* @binlog_sync_aiocb)
  %84 = icmp slt i64 %83, 0
  br i1 %84, label %85, label %92

85:                                               ; preds = %78
  %86 = load i32, i32* @stderr, align 4
  %87 = load i64, i64* @now, align 8
  %88 = call i32 (i32, i8*, i64, ...) @fprintf(i32 %86, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i64 0, i64 0), i64 %87)
  %89 = load i32, i32* @binlog_fd, align 4
  %90 = call i64 @fsync(i32 %89)
  %91 = call i32 @exit(i32 3) #3
  unreachable

92:                                               ; preds = %78
  %93 = load i64, i64* @now, align 8
  store i64 %93, i64* @binlog_sync_active, align 8
  %94 = load i32, i32* @verbosity, align 4
  %95 = icmp sgt i32 %94, 1
  br i1 %95, label %96, label %100

96:                                               ; preds = %92
  %97 = load i32, i32* @stderr, align 4
  %98 = load i64, i64* @now, align 8
  %99 = call i32 (i32, i8*, i64, ...) @fprintf(i32 %97, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.4, i64 0, i64 0), i64 %98)
  br label %100

100:                                              ; preds = %96, %92
  br label %101

101:                                              ; preds = %100, %75, %72
  %102 = load i32, i32* %2, align 4
  %103 = icmp sge i32 %102, 2
  br i1 %103, label %104, label %122

104:                                              ; preds = %101
  %105 = load i32, i32* @binlog_fd, align 4
  %106 = call i64 @fsync(i32 %105)
  %107 = icmp slt i64 %106, 0
  br i1 %107, label %108, label %112

108:                                              ; preds = %104
  %109 = load i32, i32* @stderr, align 4
  %110 = load i64, i64* @now, align 8
  %111 = call i32 (i32, i8*, i64, ...) @fprintf(i32 %109, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5, i64 0, i64 0), i64 %110)
  br label %121

112:                                              ; preds = %104
  %113 = load i64, i64* @now, align 8
  store i64 %113, i64* @binlog_sync_last, align 8
  %114 = load i32, i32* @verbosity, align 4
  %115 = icmp sgt i32 %114, 1
  br i1 %115, label %116, label %120

116:                                              ; preds = %112
  %117 = load i32, i32* @stderr, align 4
  %118 = load i64, i64* @now, align 8
  %119 = call i32 (i32, i8*, i64, ...) @fprintf(i32 %117, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.6, i64 0, i64 0), i64 %118)
  br label %120

120:                                              ; preds = %116, %112
  br label %121

121:                                              ; preds = %120, %108
  br label %122

122:                                              ; preds = %10, %121, %101
  ret void
}

declare dso_local i32 @aio_error(%struct.TYPE_10__*) #1

declare dso_local i32 @fprintf(i32, i8*, i64, ...) #1

declare dso_local i32 @aio_cancel(i32, %struct.TYPE_10__*) #1

declare dso_local i64 @fsync(i32) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @aio_return(%struct.TYPE_10__*) #1

declare dso_local i32 @close(i32) #1

declare dso_local i32 @memset(%struct.TYPE_10__*, i32, i32) #1

declare dso_local i64 @aio_fsync(i32, %struct.TYPE_10__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
