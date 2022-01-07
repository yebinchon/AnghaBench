; ModuleID = '/home/carl/AnghaBench/i3/libi3/extr_get_process_filename.c_get_process_filename.c'
source_filename = "/home/carl/AnghaBench/i3/libi3/extr_get_process_filename.c_get_process_filename.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stat = type { i32 }
%struct.passwd = type { i8* }

@get_process_filename.dir = internal global i8* null, align 8
@.str = private unnamed_addr constant [16 x i8] c"XDG_RUNTIME_DIR\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"%s/i3\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"Could not mkdir(%s)\00", align 1
@EXIT_FAILURE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [45 x i8] c"Check permissions of $XDG_RUNTIME_DIR = '%s'\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"mkdir()\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"unknown\00", align 1
@.str.6 = private unnamed_addr constant [18 x i8] c"/tmp/i3-%s.XXXXXX\00", align 1
@.str.7 = private unnamed_addr constant [10 x i8] c"mkdtemp()\00", align 1
@.str.8 = private unnamed_addr constant [9 x i8] c"%s/%s.%d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @get_process_filename(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.stat, align 4
  %6 = alloca %struct.passwd*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  %9 = load i8*, i8** @get_process_filename.dir, align 8
  %10 = icmp eq i8* %9, null
  br i1 %10, label %11, label %55

11:                                               ; preds = %1
  %12 = call i8* @getenv(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  store i8* %12, i8** @get_process_filename.dir, align 8
  %13 = icmp ne i8* %12, null
  br i1 %13, label %14, label %34

14:                                               ; preds = %11
  %15 = load i8*, i8** @get_process_filename.dir, align 8
  %16 = call i32 (i8**, i8*, i8*, ...) @sasprintf(i8** %4, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8* %15)
  %17 = load i8*, i8** %4, align 8
  store i8* %17, i8** @get_process_filename.dir, align 8
  %18 = load i8*, i8** @get_process_filename.dir, align 8
  %19 = call i64 @stat(i8* %18, %struct.stat* %5)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %33

21:                                               ; preds = %14
  %22 = load i8*, i8** @get_process_filename.dir, align 8
  %23 = call i32 @mkdir(i8* %22, i32 448)
  %24 = icmp eq i32 %23, -1
  br i1 %24, label %25, label %32

25:                                               ; preds = %21
  %26 = load i8*, i8** @get_process_filename.dir, align 8
  %27 = call i32 @warn(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), i8* %26)
  %28 = load i32, i32* @EXIT_FAILURE, align 4
  %29 = call i8* @getenv(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %30 = call i32 @errx(i32 %28, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.3, i64 0, i64 0), i8* %29)
  %31 = call i32 @perror(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0))
  store i8* null, i8** %2, align 8
  br label %61

32:                                               ; preds = %21
  br label %33

33:                                               ; preds = %32, %14
  br label %54

34:                                               ; preds = %11
  %35 = call i32 (...) @getuid()
  %36 = call %struct.passwd* @getpwuid(i32 %35)
  store %struct.passwd* %36, %struct.passwd** %6, align 8
  %37 = load %struct.passwd*, %struct.passwd** %6, align 8
  %38 = icmp ne %struct.passwd* %37, null
  br i1 %38, label %39, label %43

39:                                               ; preds = %34
  %40 = load %struct.passwd*, %struct.passwd** %6, align 8
  %41 = getelementptr inbounds %struct.passwd, %struct.passwd* %40, i32 0, i32 0
  %42 = load i8*, i8** %41, align 8
  br label %44

43:                                               ; preds = %34
  br label %44

44:                                               ; preds = %43, %39
  %45 = phi i8* [ %42, %39 ], [ getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), %43 ]
  store i8* %45, i8** %7, align 8
  %46 = load i8*, i8** %7, align 8
  %47 = call i32 (i8**, i8*, i8*, ...) @sasprintf(i8** @get_process_filename.dir, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.6, i64 0, i64 0), i8* %46)
  %48 = load i8*, i8** @get_process_filename.dir, align 8
  %49 = call i32* @mkdtemp(i8* %48)
  %50 = icmp eq i32* %49, null
  br i1 %50, label %51, label %53

51:                                               ; preds = %44
  %52 = call i32 @perror(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i64 0, i64 0))
  store i8* null, i8** %2, align 8
  br label %61

53:                                               ; preds = %44
  br label %54

54:                                               ; preds = %53, %33
  br label %55

55:                                               ; preds = %54, %1
  %56 = load i8*, i8** @get_process_filename.dir, align 8
  %57 = load i8*, i8** %3, align 8
  %58 = call i32 (...) @getpid()
  %59 = call i32 (i8**, i8*, i8*, ...) @sasprintf(i8** %8, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i64 0, i64 0), i8* %56, i8* %57, i32 %58)
  %60 = load i8*, i8** %8, align 8
  store i8* %60, i8** %2, align 8
  br label %61

61:                                               ; preds = %55, %51, %25
  %62 = load i8*, i8** %2, align 8
  ret i8* %62
}

declare dso_local i8* @getenv(i8*) #1

declare dso_local i32 @sasprintf(i8**, i8*, i8*, ...) #1

declare dso_local i64 @stat(i8*, %struct.stat*) #1

declare dso_local i32 @mkdir(i8*, i32) #1

declare dso_local i32 @warn(i8*, i8*) #1

declare dso_local i32 @errx(i32, i8*, i8*) #1

declare dso_local i32 @perror(i8*) #1

declare dso_local %struct.passwd* @getpwuid(i32) #1

declare dso_local i32 @getuid(...) #1

declare dso_local i32* @mkdtemp(i8*) #1

declare dso_local i32 @getpid(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
