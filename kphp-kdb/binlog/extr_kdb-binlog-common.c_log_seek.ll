; ModuleID = '/home/carl/AnghaBench/kphp-kdb/binlog/extr_kdb-binlog-common.c_log_seek.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/binlog/extr_kdb-binlog-common.c_log_seek.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }

@log_start_pos = common dso_local global i64 0, align 8
@log_headers_size = common dso_local global i64 0, align 8
@binlog_zipped = common dso_local global i32 0, align 4
@binlog_fd = common dso_local global i32 0, align 4
@SEEK_SET = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [54 x i8] c"cannot seek file position %lld in binlog file %d: %m\0A\00", align 1
@log_last_ts = common dso_local global i32 0, align 4
@log_read_until = common dso_local global i32 0, align 4
@log_first_ts = common dso_local global i32 0, align 4
@log_pos = common dso_local global i64 0, align 8
@R = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@log_crc32_pos = common dso_local global i64 0, align 8
@log_crc32_complement = common dso_local global i32 0, align 4
@disable_crc32 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @log_seek(i64 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store i64 %0, i64* %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load i64, i64* %4, align 8
  %9 = load i64, i64* @log_start_pos, align 8
  %10 = sub nsw i64 %8, %9
  %11 = load i64, i64* @log_headers_size, align 8
  %12 = add nsw i64 %10, %11
  store i64 %12, i64* %7, align 8
  %13 = load i64, i64* %7, align 8
  %14 = icmp slt i64 %13, 0
  br i1 %14, label %24, label %15

15:                                               ; preds = %3
  %16 = load i32, i32* @binlog_zipped, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %30, label %18

18:                                               ; preds = %15
  %19 = load i32, i32* @binlog_fd, align 4
  %20 = load i64, i64* %7, align 8
  %21 = load i32, i32* @SEEK_SET, align 4
  %22 = call i64 @lseek(i32 %19, i64 %20, i32 %21)
  %23 = icmp slt i64 %22, 0
  br i1 %23, label %24, label %30

24:                                               ; preds = %18, %3
  %25 = load i32, i32* @stderr, align 4
  %26 = load i64, i64* %4, align 8
  %27 = load i32, i32* @binlog_fd, align 4
  %28 = call i32 @fprintf(i32 %25, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i64 0, i64 0), i64 %26, i32 %27)
  %29 = call i32 @exit(i32 1) #3
  unreachable

30:                                               ; preds = %18, %15
  %31 = call i32 (...) @clear_read_log()
  %32 = load i32, i32* %5, align 4
  store i32 %32, i32* @log_last_ts, align 4
  store i32 %32, i32* @log_read_until, align 4
  store i32 %32, i32* @log_first_ts, align 4
  %33 = load i64, i64* %4, align 8
  store i64 %33, i64* @log_pos, align 8
  %34 = load i64, i64* @log_pos, align 8
  store i64 %34, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @R, i32 0, i32 0), align 8
  %35 = load i32, i32* %6, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %40, label %37

37:                                               ; preds = %30
  %38 = load i64, i64* %4, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %44, label %40

40:                                               ; preds = %37, %30
  %41 = load i64, i64* %4, align 8
  store i64 %41, i64* @log_crc32_pos, align 8
  %42 = load i32, i32* %6, align 4
  %43 = xor i32 %42, -1
  store i32 %43, i32* @log_crc32_complement, align 4
  br label %45

44:                                               ; preds = %37
  store i32 7, i32* @disable_crc32, align 4
  br label %45

45:                                               ; preds = %44, %40
  ret void
}

declare dso_local i64 @lseek(i32, i64, i32) #1

declare dso_local i32 @fprintf(i32, i8*, i64, i32) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @clear_read_log(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
