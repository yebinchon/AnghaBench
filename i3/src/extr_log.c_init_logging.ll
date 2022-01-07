; ModuleID = '/home/carl/AnghaBench/i3/src/extr_log.c_init_logging.c'
source_filename = "/home/carl/AnghaBench/i3/src/extr_log.c_init_logging.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@errorfilename = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [9 x i8] c"errorlog\00", align 1
@stderr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"Could not initialize errorlog\0A\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@errorfile = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [41 x i8] c"Could not initialize errorlog on %s: %s\0A\00", align 1
@errno = common dso_local global i32 0, align 4
@F_SETFD = common dso_local global i32 0, align 4
@FD_CLOEXEC = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [34 x i8] c"Could not set close-on-exec flag\0A\00", align 1
@physical_mem_bytes = common dso_local global i64 0, align 8
@_SC_PHYS_PAGES = common dso_local global i32 0, align 4
@_SC_PAGESIZE = common dso_local global i32 0, align 4
@shmlog_size = common dso_local global i64 0, align 8
@logbuffer = common dso_local global i32* null, align 8
@purge_zerobyte_logfile = common dso_local global i32 0, align 4
@CTL_HW = common dso_local global i32 0, align 4
@HW_MEMSIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @init_logging() #0 {
  %1 = load i8*, i8** @errorfilename, align 8
  %2 = icmp ne i8* %1, null
  br i1 %2, label %33, label %3

3:                                                ; preds = %0
  %4 = call i8* @get_process_filename(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  store i8* %4, i8** @errorfilename, align 8
  %5 = icmp ne i8* %4, null
  br i1 %5, label %9, label %6

6:                                                ; preds = %3
  %7 = load i32, i32* @stderr, align 4
  %8 = call i32 (i32, i8*, ...) @fprintf(i32 %7, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  br label %32

9:                                                ; preds = %3
  %10 = load i8*, i8** @errorfilename, align 8
  %11 = call i32 @fopen(i8* %10, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  store i32 %11, i32* @errorfile, align 4
  %12 = load i32, i32* @errorfile, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %20, label %14

14:                                               ; preds = %9
  %15 = load i32, i32* @stderr, align 4
  %16 = load i8*, i8** @errorfilename, align 8
  %17 = load i32, i32* @errno, align 4
  %18 = call i8* @strerror(i32 %17)
  %19 = call i32 (i32, i8*, ...) @fprintf(i32 %15, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.3, i64 0, i64 0), i8* %16, i8* %18)
  br label %31

20:                                               ; preds = %9
  %21 = load i32, i32* @errorfile, align 4
  %22 = call i32 @fileno(i32 %21)
  %23 = load i32, i32* @F_SETFD, align 4
  %24 = load i32, i32* @FD_CLOEXEC, align 4
  %25 = call i64 @fcntl(i32 %22, i32 %23, i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %20
  %28 = load i32, i32* @stderr, align 4
  %29 = call i32 (i32, i8*, ...) @fprintf(i32 %28, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.4, i64 0, i64 0))
  br label %30

30:                                               ; preds = %27, %20
  br label %31

31:                                               ; preds = %30, %14
  br label %32

32:                                               ; preds = %31, %6
  br label %33

33:                                               ; preds = %32, %0
  %34 = load i64, i64* @physical_mem_bytes, align 8
  %35 = icmp eq i64 %34, 0
  br i1 %35, label %36, label %42

36:                                               ; preds = %33
  %37 = load i32, i32* @_SC_PHYS_PAGES, align 4
  %38 = call i64 @sysconf(i32 %37)
  %39 = load i32, i32* @_SC_PAGESIZE, align 4
  %40 = call i64 @sysconf(i32 %39)
  %41 = mul nsw i64 %38, %40
  store i64 %41, i64* @physical_mem_bytes, align 8
  br label %42

42:                                               ; preds = %36, %33
  %43 = load i64, i64* @shmlog_size, align 8
  %44 = icmp sgt i64 %43, 0
  br i1 %44, label %45, label %50

45:                                               ; preds = %42
  %46 = load i32*, i32** @logbuffer, align 8
  %47 = icmp eq i32* %46, null
  br i1 %47, label %48, label %50

48:                                               ; preds = %45
  %49 = call i32 (...) @open_logbuffer()
  br label %59

50:                                               ; preds = %45, %42
  %51 = load i64, i64* @shmlog_size, align 8
  %52 = icmp sle i64 %51, 0
  br i1 %52, label %53, label %58

53:                                               ; preds = %50
  %54 = load i32*, i32** @logbuffer, align 8
  %55 = icmp ne i32* %54, null
  br i1 %55, label %56, label %58

56:                                               ; preds = %53
  %57 = call i32 (...) @close_logbuffer()
  br label %58

58:                                               ; preds = %56, %53, %50
  br label %59

59:                                               ; preds = %58, %48
  %60 = load i32, i32* @purge_zerobyte_logfile, align 4
  %61 = call i32 @atexit(i32 %60)
  ret void
}

declare dso_local i8* @get_process_filename(i8*) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i32 @fopen(i8*, i8*) #1

declare dso_local i8* @strerror(i32) #1

declare dso_local i64 @fcntl(i32, i32, i32) #1

declare dso_local i32 @fileno(i32) #1

declare dso_local i64 @sysconf(i32) #1

declare dso_local i32 @open_logbuffer(...) #1

declare dso_local i32 @close_logbuffer(...) #1

declare dso_local i32 @atexit(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
