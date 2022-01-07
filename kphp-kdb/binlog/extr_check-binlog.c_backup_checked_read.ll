; ModuleID = '/home/carl/AnghaBench/kphp-kdb/binlog/extr_check-binlog.c_backup_checked_read.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/binlog/extr_check-binlog.c_backup_checked_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 }

@bs_io_error = common dso_local global i32 0, align 4
@backup_buff = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [48 x i8] c"read %lld bytes from backup '%s', offset: %lld\0A\00", align 1
@io_buff = common dso_local global i64 0, align 8
@PREVSIZE = common dso_local global i64 0, align 8
@bs_differ = common dso_local global i32 0, align 4
@bs_ok = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_8__*, i64, i64, i32*)* @backup_checked_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @backup_checked_read(%struct.TYPE_8__* %0, i64 %1, i64 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_8__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i32* %3, i32** %9, align 8
  %10 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %11 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %11, i32 0, i32 0
  %13 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %14 = call i32 @assert(%struct.TYPE_10__* %13)
  %15 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %16 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %15, i32 0, i32 0
  %17 = load i64, i64* %7, align 8
  %18 = call i64 @stream_seek(%struct.TYPE_9__* %16, i64 %17)
  %19 = icmp slt i64 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %4
  %21 = load i32, i32* @bs_io_error, align 4
  %22 = load i32*, i32** %9, align 8
  store i32 %21, i32* %22, align 4
  store i32 -1, i32* %5, align 4
  br label %58

23:                                               ; preds = %4
  %24 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i32 0, i32 0
  %26 = load i32, i32* @backup_buff, align 4
  %27 = load i64, i64* %8, align 8
  %28 = call i64 @stream_read_limited(%struct.TYPE_9__* %25, i32 %26, i64 %27)
  %29 = icmp slt i64 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %23
  %31 = load i32, i32* @bs_io_error, align 4
  %32 = load i32*, i32** %9, align 8
  store i32 %31, i32* %32, align 4
  store i32 -1, i32* %5, align 4
  br label %58

33:                                               ; preds = %23
  %34 = load i64, i64* %8, align 8
  %35 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %36, i32 0, i32 0
  %38 = load %struct.TYPE_10__*, %struct.TYPE_10__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %38, i32 0, i32 0
  %40 = load %struct.TYPE_7__*, %struct.TYPE_7__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i64, i64* %7, align 8
  %44 = call i32 @vkprintf(i32 2, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), i64 %34, i32 %42, i64 %43)
  %45 = load i64, i64* @io_buff, align 8
  %46 = load i64, i64* @PREVSIZE, align 8
  %47 = add nsw i64 %45, %46
  %48 = load i32, i32* @backup_buff, align 4
  %49 = load i64, i64* %8, align 8
  %50 = call i64 @memcmp(i64 %47, i32 %48, i64 %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %55

52:                                               ; preds = %33
  %53 = load i32, i32* @bs_differ, align 4
  %54 = load i32*, i32** %9, align 8
  store i32 %53, i32* %54, align 4
  store i32 -1, i32* %5, align 4
  br label %58

55:                                               ; preds = %33
  %56 = load i32, i32* @bs_ok, align 4
  %57 = load i32*, i32** %9, align 8
  store i32 %56, i32* %57, align 4
  store i32 0, i32* %5, align 4
  br label %58

58:                                               ; preds = %55, %52, %30, %20
  %59 = load i32, i32* %5, align 4
  ret i32 %59
}

declare dso_local i32 @assert(%struct.TYPE_10__*) #1

declare dso_local i64 @stream_seek(%struct.TYPE_9__*, i64) #1

declare dso_local i64 @stream_read_limited(%struct.TYPE_9__*, i32, i64) #1

declare dso_local i32 @vkprintf(i32, i8*, i64, i32, i64) #1

declare dso_local i64 @memcmp(i64, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
