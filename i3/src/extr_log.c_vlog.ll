; ModuleID = '/home/carl/AnghaBench/i3/src/extr_log.c_vlog.c'
source_filename = "/home/carl/AnghaBench/i3/src/extr_log.c_vlog.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tm = type { i32 }
%struct.TYPE_2__ = type { i32, i32 }

@vlog.message = internal global [4096 x i8] zeroinitializer, align 16
@vlog.result = internal global %struct.tm zeroinitializer, align 4
@vlog.t = internal global i32 0, align 4
@vlog.tmp = internal global %struct.tm* null, align 8
@vlog.len = internal global i64 0, align 8
@.str = private unnamed_addr constant [9 x i8] c"%x %X - \00", align 1
@logbuffer = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@stderr = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [30 x i8] c"BUG: single log message > 4k\0A\00", align 1
@logbuffer_size = common dso_local global i64 0, align 8
@logwalk = common dso_local global i64 0, align 8
@loglastwrap = common dso_local global i64 0, align 8
@header = common dso_local global %struct.TYPE_2__* null, align 8
@stdout = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i8*, i32)* @vlog to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vlog(i32 %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = call i32 @time(i32* null)
  store i32 %7, i32* @vlog.t, align 4
  %8 = call %struct.tm* @localtime_r(i32* @vlog.t, %struct.tm* @vlog.result)
  store %struct.tm* %8, %struct.tm** @vlog.tmp, align 8
  %9 = load %struct.tm*, %struct.tm** @vlog.tmp, align 8
  %10 = call i64 @strftime(i8* getelementptr inbounds ([4096 x i8], [4096 x i8]* @vlog.message, i64 0, i64 0), i32 4096, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), %struct.tm* %9)
  store i64 %10, i64* @vlog.len, align 8
  %11 = load i64, i64* @logbuffer, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %18, label %13

13:                                               ; preds = %3
  %14 = call i32 (i8*, i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([4096 x i8], [4096 x i8]* @vlog.message, i64 0, i64 0))
  %15 = load i8*, i8** %5, align 8
  %16 = load i32, i32* %6, align 4
  %17 = call i32 @vprintf(i8* %15, i32 %16)
  br label %72

18:                                               ; preds = %3
  %19 = load i64, i64* @vlog.len, align 8
  %20 = getelementptr inbounds i8, i8* getelementptr inbounds ([4096 x i8], [4096 x i8]* @vlog.message, i64 0, i64 0), i64 %19
  %21 = load i64, i64* @vlog.len, align 8
  %22 = sub i64 4096, %21
  %23 = trunc i64 %22 to i32
  %24 = load i8*, i8** %5, align 8
  %25 = load i32, i32* %6, align 4
  %26 = call i64 @vsnprintf(i8* %20, i32 %23, i8* %24, i32 %25)
  %27 = load i64, i64* @vlog.len, align 8
  %28 = add i64 %27, %26
  store i64 %28, i64* @vlog.len, align 8
  %29 = load i64, i64* @vlog.len, align 8
  %30 = icmp uge i64 %29, 4096
  br i1 %30, label %31, label %37

31:                                               ; preds = %18
  %32 = load i32, i32* @stderr, align 4
  %33 = call i32 @fprintf(i32 %32, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0))
  store i64 4096, i64* @vlog.len, align 8
  %34 = load i64, i64* @vlog.len, align 8
  %35 = sub i64 %34, 2
  %36 = getelementptr inbounds [4096 x i8], [4096 x i8]* @vlog.message, i64 0, i64 %35
  store i8 10, i8* %36, align 1
  br label %37

37:                                               ; preds = %31, %18
  %38 = load i64, i64* @vlog.len, align 8
  %39 = load i64, i64* @logbuffer_size, align 8
  %40 = load i64, i64* @logwalk, align 8
  %41 = load i64, i64* @logbuffer, align 8
  %42 = sub nsw i64 %40, %41
  %43 = sub nsw i64 %39, %42
  %44 = icmp uge i64 %38, %43
  br i1 %44, label %45, label %54

45:                                               ; preds = %37
  %46 = load i64, i64* @logwalk, align 8
  store i64 %46, i64* @loglastwrap, align 8
  %47 = load i64, i64* @logbuffer, align 8
  %48 = add i64 %47, 4
  store i64 %48, i64* @logwalk, align 8
  %49 = call i32 (...) @store_log_markers()
  %50 = load %struct.TYPE_2__*, %struct.TYPE_2__** @header, align 8
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %51, align 4
  br label %54

54:                                               ; preds = %45, %37
  %55 = load i64, i64* @logwalk, align 8
  %56 = load i64, i64* @vlog.len, align 8
  %57 = call i32 @strncpy(i64 %55, i8* getelementptr inbounds ([4096 x i8], [4096 x i8]* @vlog.message, i64 0, i64 0), i64 %56)
  %58 = load i64, i64* @vlog.len, align 8
  %59 = load i64, i64* @logwalk, align 8
  %60 = add i64 %59, %58
  store i64 %60, i64* @logwalk, align 8
  %61 = call i32 (...) @store_log_markers()
  %62 = load %struct.TYPE_2__*, %struct.TYPE_2__** @header, align 8
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 0
  %64 = call i32 @pthread_cond_broadcast(i32* %63)
  %65 = load i32, i32* %4, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %71

67:                                               ; preds = %54
  %68 = load i64, i64* @vlog.len, align 8
  %69 = load i32, i32* @stdout, align 4
  %70 = call i32 @fwrite(i8* getelementptr inbounds ([4096 x i8], [4096 x i8]* @vlog.message, i64 0, i64 0), i64 %68, i32 1, i32 %69)
  br label %71

71:                                               ; preds = %67, %54
  br label %72

72:                                               ; preds = %71, %13
  ret void
}

declare dso_local i32 @time(i32*) #1

declare dso_local %struct.tm* @localtime_r(i32*, %struct.tm*) #1

declare dso_local i64 @strftime(i8*, i32, i8*, %struct.tm*) #1

declare dso_local i32 @printf(i8*, i8*, ...) #1

declare dso_local i32 @vprintf(i8*, i32) #1

declare dso_local i64 @vsnprintf(i8*, i32, i8*, i32) #1

declare dso_local i32 @fprintf(i32, i8*) #1

declare dso_local i32 @store_log_markers(...) #1

declare dso_local i32 @strncpy(i64, i8*, i64) #1

declare dso_local i32 @pthread_cond_broadcast(i32*) #1

declare dso_local i32 @fwrite(i8*, i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
