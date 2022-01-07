; ModuleID = '/home/carl/AnghaBench/kphp-kdb/binlog/extr_kdb-binlog-common.c_clear_write_log.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/binlog/extr_kdb-binlog-common.c_clear_write_log.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@binlog_disabled = common dso_local global i64 0, align 8
@W = common dso_local global i32 0, align 4
@LogSlaveBuffer = common dso_local global i32 0, align 4
@SLOG_BUFFER_SIZE = common dso_local global i32 0, align 4
@binlog_write_active = common dso_local global i64 0, align 8
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"cannot write binlog for 3 seconds!\00", align 1
@.str.1 = private unnamed_addr constant [72 x i8] c"clear_write_log: had to wait %d milliseconds for aio_write termination\0A\00", align 1
@aio_write_start = common dso_local global i32 0, align 4
@LogBuffer = common dso_local global i32 0, align 4
@ULOG_BUFFER_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @clear_write_log() #0 {
  %1 = alloca i32, align 4
  %2 = load i64, i64* @binlog_disabled, align 8
  %3 = icmp ne i64 %2, 0
  br i1 %3, label %4, label %8

4:                                                ; preds = %0
  %5 = load i32, i32* @LogSlaveBuffer, align 4
  %6 = load i32, i32* @SLOG_BUFFER_SIZE, align 4
  %7 = call i32 @clear_one_log(i32* @W, i32 %5, i32 %6)
  br label %39

8:                                                ; preds = %0
  store i32 0, i32* %1, align 4
  br label %9

9:                                                ; preds = %22, %8
  %10 = load i64, i64* @binlog_write_active, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %23

12:                                               ; preds = %9
  %13 = call i32 (...) @flush_binlog()
  %14 = call i32 @usleep(i32 10000)
  %15 = load i32, i32* %1, align 4
  %16 = add nsw i32 %15, 1
  store i32 %16, i32* %1, align 4
  %17 = icmp sgt i32 %16, 300
  br i1 %17, label %18, label %22

18:                                               ; preds = %12
  %19 = load i32, i32* @stderr, align 4
  %20 = call i32 (i32, i8*, ...) @fprintf(i32 %19, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  %21 = call i32 @exit(i32 3) #3
  unreachable

22:                                               ; preds = %12
  br label %9

23:                                               ; preds = %9
  %24 = load i32, i32* %1, align 4
  %25 = icmp sgt i32 %24, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %23
  %27 = load i32, i32* @stderr, align 4
  %28 = load i32, i32* %1, align 4
  %29 = call i32 (i32, i8*, ...) @fprintf(i32 %27, i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str.1, i64 0, i64 0), i32 %28)
  br label %30

30:                                               ; preds = %26, %23
  %31 = load i32, i32* @aio_write_start, align 4
  %32 = icmp ne i32 %31, 0
  %33 = xor i1 %32, true
  %34 = zext i1 %33 to i32
  %35 = call i32 @assert(i32 %34)
  %36 = load i32, i32* @LogBuffer, align 4
  %37 = load i32, i32* @ULOG_BUFFER_SIZE, align 4
  %38 = call i32 @clear_one_log(i32* @W, i32 %36, i32 %37)
  br label %39

39:                                               ; preds = %30, %4
  ret void
}

declare dso_local i32 @clear_one_log(i32*, i32, i32) #1

declare dso_local i32 @flush_binlog(...) #1

declare dso_local i32 @usleep(i32) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
