; ModuleID = '/home/carl/AnghaBench/kphp-kdb/binlog/extr_check-binlog.c_check_rotation_match.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/binlog/extr_check-binlog.c_check_rotation_match.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 }
%struct.lev_rotate_to = type { i32 }
%struct.lev_rotate_from = type { i32 }

@.str = private unnamed_addr constant [35 x i8] c"stream open for file '%s' failed.\0A\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"file '%s' is too short.\0A\00", align 1
@io_buff = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [39 x i8] c"fail read %d head bytes from file '%s'\00", align 1
@.str.3 = private unnamed_addr constant [48 x i8] c"rotation check for files '%s' and '%s' failed.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @check_rotation_match(i8* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.TYPE_9__, align 8
  %7 = alloca %struct.TYPE_9__, align 8
  %8 = alloca %struct.lev_rotate_to, align 4
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = call i64 @stream_open(%struct.TYPE_9__* %6, i32 0, i8* %9, i32 0)
  %11 = icmp slt i64 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %2
  %13 = load i8*, i8** %4, align 8
  %14 = call i32 @kprintf(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i8* %13)
  store i32 -1, i32* %3, align 4
  br label %55

15:                                               ; preds = %2
  %16 = call i64 @stream_read_lev_rotate_to(%struct.TYPE_9__* %6, %struct.lev_rotate_to* %8)
  %17 = icmp slt i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %15
  store i32 -1, i32* %3, align 4
  br label %55

19:                                               ; preds = %15
  %20 = load i8*, i8** %5, align 8
  %21 = call i64 @stream_open(%struct.TYPE_9__* %7, i32 0, i8* %20, i32 0)
  %22 = icmp slt i64 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %19
  %24 = load i8*, i8** %5, align 8
  %25 = call i32 @kprintf(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i8* %24)
  store i32 -1, i32* %3, align 4
  br label %55

26:                                               ; preds = %19
  %27 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %7, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = icmp slt i32 %28, 36
  br i1 %29, label %30, label %33

30:                                               ; preds = %26
  %31 = load i8*, i8** %5, align 8
  %32 = call i32 @kprintf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i8* %31)
  store i32 -1, i32* %3, align 4
  br label %55

33:                                               ; preds = %26
  %34 = load i64, i64* @io_buff, align 8
  %35 = call i32 @stream_read_limited(%struct.TYPE_9__* %7, i64 %34, i32 36)
  %36 = icmp slt i32 %35, 36
  br i1 %36, label %37, label %45

37:                                               ; preds = %33
  %38 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %7, i32 0, i32 1
  %39 = load %struct.TYPE_8__*, %struct.TYPE_8__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %39, i32 0, i32 0
  %41 = load %struct.TYPE_7__*, %struct.TYPE_7__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i32 (i8*, ...) @log_fatal(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0), i32 36, i32 %43)
  store i32 -1, i32* %3, align 4
  br label %55

45:                                               ; preds = %33
  %46 = load i64, i64* @io_buff, align 8
  %47 = inttoptr i64 %46 to %struct.lev_rotate_from*
  %48 = call i64 @match_rotate_logevents(%struct.lev_rotate_to* %8, %struct.lev_rotate_from* %47)
  %49 = icmp sle i64 %48, 0
  br i1 %49, label %50, label %54

50:                                               ; preds = %45
  %51 = load i8*, i8** %4, align 8
  %52 = load i8*, i8** %5, align 8
  %53 = call i32 (i8*, ...) @log_fatal(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.3, i64 0, i64 0), i8* %51, i8* %52)
  store i32 -1, i32* %3, align 4
  br label %55

54:                                               ; preds = %45
  store i32 0, i32* %3, align 4
  br label %55

55:                                               ; preds = %54, %50, %37, %30, %23, %18, %12
  %56 = load i32, i32* %3, align 4
  ret i32 %56
}

declare dso_local i64 @stream_open(%struct.TYPE_9__*, i32, i8*, i32) #1

declare dso_local i32 @kprintf(i8*, i8*) #1

declare dso_local i64 @stream_read_lev_rotate_to(%struct.TYPE_9__*, %struct.lev_rotate_to*) #1

declare dso_local i32 @stream_read_limited(%struct.TYPE_9__*, i64, i32) #1

declare dso_local i32 @log_fatal(i8*, ...) #1

declare dso_local i64 @match_rotate_logevents(%struct.lev_rotate_to*, %struct.lev_rotate_from*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
