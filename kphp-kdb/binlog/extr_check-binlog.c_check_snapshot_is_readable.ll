; ModuleID = '/home/carl/AnghaBench/kphp-kdb/binlog/extr_check-binlog.c_check_snapshot_is_readable.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/binlog/extr_check-binlog.c_check_snapshot_is_readable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, i64, i64 }

@.str = private unnamed_addr constant [27 x i8] c"fail to open snapshot '%s'\00", align 1
@io_buff = common dso_local global i64 0, align 8
@PREVSIZE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [45 x i8] c"reading shapshot '%s' from offset %lld fail.\00", align 1
@.str.2 = private unnamed_addr constant [50 x i8] c"read %lld bytes from snapshot '%s', offset: %lld\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @check_snapshot_is_readable(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca %struct.TYPE_6__, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  %8 = call i32 (...) @reset_max_errors_limit()
  %9 = load i8*, i8** %3, align 8
  %10 = call i64 @stream_open(%struct.TYPE_6__* %4, i32 0, i8* %9, i32 2)
  %11 = icmp slt i64 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %1
  %13 = load i8*, i8** %3, align 8
  %14 = call i32 (i8*, i8*, ...) @log_error(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i8* %13)
  store i32 -1, i32* %2, align 4
  br label %56

15:                                               ; preds = %1
  br label %16

16:                                               ; preds = %49, %15
  %17 = call i32 @stream_eof(%struct.TYPE_6__* %4)
  %18 = icmp ne i32 %17, 0
  %19 = xor i1 %18, true
  br i1 %19, label %20, label %54

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %4, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  store i64 %22, i64* %5, align 8
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %4, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* %5, align 8
  %26 = sub nsw i64 %24, %25
  store i64 %26, i64* %6, align 8
  %27 = load i64, i64* %6, align 8
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %4, i32 0, i32 2
  %29 = load i64, i64* %28, align 8
  %30 = icmp slt i64 %27, %29
  br i1 %30, label %31, label %33

31:                                               ; preds = %20
  %32 = load i64, i64* %6, align 8
  br label %36

33:                                               ; preds = %20
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %4, i32 0, i32 2
  %35 = load i64, i64* %34, align 8
  br label %36

36:                                               ; preds = %33, %31
  %37 = phi i64 [ %32, %31 ], [ %35, %33 ]
  store i64 %37, i64* %7, align 8
  %38 = load i64, i64* @io_buff, align 8
  %39 = load i64, i64* @PREVSIZE, align 8
  %40 = add nsw i64 %38, %39
  %41 = load i64, i64* %7, align 8
  %42 = call i64 @stream_read_limited(%struct.TYPE_6__* %4, i64 %40, i64 %41)
  %43 = icmp slt i64 %42, 0
  br i1 %43, label %44, label %49

44:                                               ; preds = %36
  %45 = load i8*, i8** %3, align 8
  %46 = load i64, i64* %5, align 8
  %47 = call i32 (i8*, i8*, ...) @log_error(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0), i8* %45, i64 %46)
  %48 = call i32 @stream_close(%struct.TYPE_6__* %4)
  store i32 -1, i32* %2, align 4
  br label %56

49:                                               ; preds = %36
  %50 = load i64, i64* %7, align 8
  %51 = load i8*, i8** %3, align 8
  %52 = load i64, i64* %5, align 8
  %53 = call i32 @vkprintf(i32 2, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.2, i64 0, i64 0), i64 %50, i8* %51, i64 %52)
  br label %16

54:                                               ; preds = %16
  %55 = call i32 @stream_close(%struct.TYPE_6__* %4)
  store i32 0, i32* %2, align 4
  br label %56

56:                                               ; preds = %54, %44, %12
  %57 = load i32, i32* %2, align 4
  ret i32 %57
}

declare dso_local i32 @reset_max_errors_limit(...) #1

declare dso_local i64 @stream_open(%struct.TYPE_6__*, i32, i8*, i32) #1

declare dso_local i32 @log_error(i8*, i8*, ...) #1

declare dso_local i32 @stream_eof(%struct.TYPE_6__*) #1

declare dso_local i64 @stream_read_limited(%struct.TYPE_6__*, i64, i64) #1

declare dso_local i32 @stream_close(%struct.TYPE_6__*) #1

declare dso_local i32 @vkprintf(i32, i8*, i64, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
