; ModuleID = '/home/carl/AnghaBench/libgit2/src/win32/extr_dir.c_git__opendir.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/win32/extr_dir.c_git__opendir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, i32, i32, i32 }

@INVALID_HANDLE_VALUE = common dso_local global i64 0, align 8
@GIT_ERROR_OS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"could not open directory '%s'\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_5__* @git__opendir(i8* %0) #0 {
  %2 = alloca %struct.TYPE_5__*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %5, align 8
  %8 = load i8*, i8** %3, align 8
  %9 = icmp ne i8* %8, null
  br i1 %9, label %10, label %15

10:                                               ; preds = %1
  %11 = load i32, i32* %4, align 4
  %12 = load i8*, i8** %3, align 8
  %13 = call i32 @git_win32__findfirstfile_filter(i32 %11, i8* %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %10, %1
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %2, align 8
  br label %60

16:                                               ; preds = %10
  %17 = load i8*, i8** %3, align 8
  %18 = call i64 @strlen(i8* %17)
  store i64 %18, i64* %6, align 8
  %19 = load i64, i64* %6, align 8
  %20 = trunc i64 %19 to i32
  %21 = call i64 @GIT_ADD_SIZET_OVERFLOW(i64* %7, i64 24, i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %31, label %23

23:                                               ; preds = %16
  %24 = load i64, i64* %7, align 8
  %25 = call i64 @GIT_ADD_SIZET_OVERFLOW(i64* %7, i64 %24, i32 1)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %31, label %27

27:                                               ; preds = %23
  %28 = load i64, i64* %7, align 8
  %29 = call %struct.TYPE_5__* @git__calloc(i32 1, i64 %28)
  store %struct.TYPE_5__* %29, %struct.TYPE_5__** %5, align 8
  %30 = icmp ne %struct.TYPE_5__* %29, null
  br i1 %30, label %32, label %31

31:                                               ; preds = %27, %23, %16
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %2, align 8
  br label %60

32:                                               ; preds = %27
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 3
  %35 = load i32, i32* %34, align 8
  %36 = load i8*, i8** %3, align 8
  %37 = load i64, i64* %6, align 8
  %38 = call i32 @memcpy(i32 %35, i8* %36, i64 %37)
  %39 = load i32, i32* %4, align 4
  %40 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 2
  %42 = call i64 @FindFirstFileW(i32 %39, i32* %41)
  %43 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 0
  store i64 %42, i64* %44, align 8
  %45 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @INVALID_HANDLE_VALUE, align 8
  %49 = icmp eq i64 %47, %48
  br i1 %49, label %50, label %56

50:                                               ; preds = %32
  %51 = load i32, i32* @GIT_ERROR_OS, align 4
  %52 = load i8*, i8** %3, align 8
  %53 = call i32 @git_error_set(i32 %51, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i8* %52)
  %54 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %55 = call i32 @git__free(%struct.TYPE_5__* %54)
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %2, align 8
  br label %60

56:                                               ; preds = %32
  %57 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i32 0, i32 1
  store i32 1, i32* %58, align 8
  %59 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  store %struct.TYPE_5__* %59, %struct.TYPE_5__** %2, align 8
  br label %60

60:                                               ; preds = %56, %50, %31, %15
  %61 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  ret %struct.TYPE_5__* %61
}

declare dso_local i32 @git_win32__findfirstfile_filter(i32, i8*) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i64 @GIT_ADD_SIZET_OVERFLOW(i64*, i64, i32) #1

declare dso_local %struct.TYPE_5__* @git__calloc(i32, i64) #1

declare dso_local i32 @memcpy(i32, i8*, i64) #1

declare dso_local i64 @FindFirstFileW(i32, i32*) #1

declare dso_local i32 @git_error_set(i32, i8*, i8*) #1

declare dso_local i32 @git__free(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
