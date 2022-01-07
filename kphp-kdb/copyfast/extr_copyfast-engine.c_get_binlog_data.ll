; ModuleID = '/home/carl/AnghaBench/kphp-kdb/copyfast/extr_copyfast-engine.c_get_binlog_data.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/copyfast/extr_copyfast-engine.c_get_binlog_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@BINLOG_POSITION = common dso_local global i64 0, align 8
@verbosity = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"get_binlog_data: pos = %lld, len = %d\0A\00", align 1
@BINLOG_BUFFER = common dso_local global i64 0, align 8
@BINLOG_BUFFER_WPTR = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [21 x i8] c"copying from buffer\0A\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"reading from file\0A\00", align 1
@STATS = common dso_local global %struct.TYPE_4__* null, align 8
@BINLOG_BUFFER_FD = common dso_local global i32 0, align 4
@SEEK_SET = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [26 x i8] c"copied data successfully\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @get_binlog_data(i8* %0, i64 %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i64 %1, i64* %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load i32, i32* %6, align 4
  %8 = icmp sgt i32 %7, 0
  %9 = zext i1 %8 to i32
  %10 = call i32 @assert(i32 %9)
  %11 = load i64, i64* %5, align 8
  %12 = load i32, i32* %6, align 4
  %13 = sext i32 %12 to i64
  %14 = add nsw i64 %11, %13
  %15 = load i64, i64* @BINLOG_POSITION, align 8
  %16 = icmp sle i64 %14, %15
  %17 = zext i1 %16 to i32
  %18 = call i32 @assert(i32 %17)
  %19 = load i32, i32* @verbosity, align 4
  %20 = icmp sge i32 %19, 4
  br i1 %20, label %21, label %26

21:                                               ; preds = %3
  %22 = load i32, i32* @stderr, align 4
  %23 = load i64, i64* %5, align 8
  %24 = load i32, i32* %6, align 4
  %25 = call i32 (i32, i8*, ...) @fprintf(i32 %22, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i64 %23, i32 %24)
  br label %26

26:                                               ; preds = %21, %3
  %27 = load i64, i64* @BINLOG_POSITION, align 8
  %28 = load i64, i64* %5, align 8
  %29 = sub nsw i64 %27, %28
  %30 = load i64, i64* @BINLOG_BUFFER, align 8
  %31 = add nsw i64 %29, %30
  %32 = load i64, i64* @BINLOG_BUFFER_WPTR, align 8
  %33 = icmp sle i64 %31, %32
  br i1 %33, label %34, label %49

34:                                               ; preds = %26
  %35 = load i32, i32* @verbosity, align 4
  %36 = icmp sge i32 %35, 4
  br i1 %36, label %37, label %40

37:                                               ; preds = %34
  %38 = load i32, i32* @stderr, align 4
  %39 = call i32 (i32, i8*, ...) @fprintf(i32 %38, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  br label %40

40:                                               ; preds = %37, %34
  %41 = load i8*, i8** %4, align 8
  %42 = load i64, i64* @BINLOG_BUFFER_WPTR, align 8
  %43 = load i64, i64* @BINLOG_POSITION, align 8
  %44 = load i64, i64* %5, align 8
  %45 = sub nsw i64 %43, %44
  %46 = sub nsw i64 %42, %45
  %47 = load i32, i32* %6, align 4
  %48 = call i32 @memcpy(i8* %41, i64 %46, i32 %47)
  br label %88

49:                                               ; preds = %26
  %50 = load i32, i32* @verbosity, align 4
  %51 = icmp sge i32 %50, 4
  br i1 %51, label %52, label %55

52:                                               ; preds = %49
  %53 = load i32, i32* @stderr, align 4
  %54 = call i32 (i32, i8*, ...) @fprintf(i32 %53, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0))
  br label %55

55:                                               ; preds = %52, %49
  %56 = call i64 (...) @get_double_time_since_epoch()
  %57 = load %struct.TYPE_4__*, %struct.TYPE_4__** @STATS, align 8
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = sext i32 %60 to i64
  %62 = sub nsw i64 %61, %56
  %63 = trunc i64 %62 to i32
  store i32 %63, i32* %59, align 4
  %64 = load i32, i32* @BINLOG_BUFFER_FD, align 4
  %65 = load i64, i64* %5, align 8
  %66 = load i32, i32* @SEEK_SET, align 4
  %67 = call i64 @lseek(i32 %64, i64 %65, i32 %66)
  %68 = load i64, i64* %5, align 8
  %69 = icmp eq i64 %67, %68
  %70 = zext i1 %69 to i32
  %71 = call i32 @assert(i32 %70)
  %72 = load i32, i32* @BINLOG_BUFFER_FD, align 4
  %73 = load i8*, i8** %4, align 8
  %74 = load i32, i32* %6, align 4
  %75 = call i32 @read(i32 %72, i8* %73, i32 %74)
  %76 = load i32, i32* %6, align 4
  %77 = icmp eq i32 %75, %76
  %78 = zext i1 %77 to i32
  %79 = call i32 @assert(i32 %78)
  %80 = call i64 (...) @get_double_time_since_epoch()
  %81 = load %struct.TYPE_4__*, %struct.TYPE_4__** @STATS, align 8
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = sext i32 %84 to i64
  %86 = add nsw i64 %85, %80
  %87 = trunc i64 %86 to i32
  store i32 %87, i32* %83, align 4
  br label %88

88:                                               ; preds = %55, %40
  %89 = load i32, i32* @verbosity, align 4
  %90 = icmp sge i32 %89, 4
  br i1 %90, label %91, label %94

91:                                               ; preds = %88
  %92 = load i32, i32* @stderr, align 4
  %93 = call i32 (i32, i8*, ...) @fprintf(i32 %92, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0))
  br label %94

94:                                               ; preds = %91, %88
  ret i32 0
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i32 @memcpy(i8*, i64, i32) #1

declare dso_local i64 @get_double_time_since_epoch(...) #1

declare dso_local i64 @lseek(i32, i64, i32) #1

declare dso_local i32 @read(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
