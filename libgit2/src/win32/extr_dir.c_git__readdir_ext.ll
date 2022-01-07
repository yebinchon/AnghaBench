; ModuleID = '/home/carl/AnghaBench/libgit2/src/win32/extr_dir.c_git__readdir_ext.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/win32/extr_dir.c_git__readdir_ext.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, %struct.TYPE_5__, i32, i64 }
%struct.TYPE_5__ = type { i32, i32 }
%struct.git__dirent = type { i64, i32 }

@INVALID_HANDLE_VALUE = common dso_local global i64 0, align 8
@ERROR_NO_MORE_FILES = common dso_local global i64 0, align 8
@GIT_ERROR_OS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"could not read from directory '%s'\00", align 1
@FILE_ATTRIBUTE_DIRECTORY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @git__readdir_ext(%struct.TYPE_4__* %0, %struct.git__dirent* %1, %struct.git__dirent** %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_4__*, align 8
  %7 = alloca %struct.git__dirent*, align 8
  %8 = alloca %struct.git__dirent**, align 8
  %9 = alloca i32*, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %6, align 8
  store %struct.git__dirent* %1, %struct.git__dirent** %7, align 8
  store %struct.git__dirent** %2, %struct.git__dirent*** %8, align 8
  store i32* %3, i32** %9, align 8
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %11 = icmp ne %struct.TYPE_4__* %10, null
  br i1 %11, label %12, label %24

12:                                               ; preds = %4
  %13 = load %struct.git__dirent*, %struct.git__dirent** %7, align 8
  %14 = icmp ne %struct.git__dirent* %13, null
  br i1 %14, label %15, label %24

15:                                               ; preds = %12
  %16 = load %struct.git__dirent**, %struct.git__dirent*** %8, align 8
  %17 = icmp ne %struct.git__dirent** %16, null
  br i1 %17, label %18, label %24

18:                                               ; preds = %15
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @INVALID_HANDLE_VALUE, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %18, %15, %12, %4
  store i32 -1, i32* %5, align 4
  br label %83

25:                                               ; preds = %18
  %26 = load %struct.git__dirent**, %struct.git__dirent*** %8, align 8
  store %struct.git__dirent* null, %struct.git__dirent** %26, align 8
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 3
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %25
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 3
  store i64 0, i64* %33, align 8
  br label %54

34:                                               ; preds = %25
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 1
  %40 = call i32 @FindNextFileW(i64 %37, %struct.TYPE_5__* %39)
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %53, label %42

42:                                               ; preds = %34
  %43 = call i64 (...) @GetLastError()
  %44 = load i64, i64* @ERROR_NO_MORE_FILES, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %46, label %47

46:                                               ; preds = %42
  store i32 0, i32* %5, align 4
  br label %83

47:                                               ; preds = %42
  %48 = load i32, i32* @GIT_ERROR_OS, align 4
  %49 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 8
  %52 = call i32 @git_error_set(i32 %48, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %51)
  store i32 -1, i32* %5, align 4
  br label %83

53:                                               ; preds = %34
  br label %54

54:                                               ; preds = %53, %31
  %55 = load %struct.git__dirent*, %struct.git__dirent** %7, align 8
  %56 = getelementptr inbounds %struct.git__dirent, %struct.git__dirent* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 8
  %58 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 1
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = call i64 @git_win32_path_to_utf8(i32 %57, i32 %61)
  %63 = icmp slt i64 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %54
  store i32 -1, i32* %5, align 4
  br label %83

65:                                               ; preds = %54
  %66 = load %struct.git__dirent*, %struct.git__dirent** %7, align 8
  %67 = getelementptr inbounds %struct.git__dirent, %struct.git__dirent* %66, i32 0, i32 0
  store i64 0, i64* %67, align 8
  %68 = load %struct.git__dirent*, %struct.git__dirent** %7, align 8
  %69 = load %struct.git__dirent**, %struct.git__dirent*** %8, align 8
  store %struct.git__dirent* %68, %struct.git__dirent** %69, align 8
  %70 = load i32*, i32** %9, align 8
  %71 = icmp ne i32* %70, null
  br i1 %71, label %72, label %82

72:                                               ; preds = %65
  %73 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 1
  %75 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = load i32, i32* @FILE_ATTRIBUTE_DIRECTORY, align 4
  %78 = and i32 %76, %77
  %79 = icmp ne i32 %78, 0
  %80 = zext i1 %79 to i32
  %81 = load i32*, i32** %9, align 8
  store i32 %80, i32* %81, align 4
  br label %82

82:                                               ; preds = %72, %65
  store i32 0, i32* %5, align 4
  br label %83

83:                                               ; preds = %82, %64, %47, %46, %24
  %84 = load i32, i32* %5, align 4
  ret i32 %84
}

declare dso_local i32 @FindNextFileW(i64, %struct.TYPE_5__*) #1

declare dso_local i64 @GetLastError(...) #1

declare dso_local i32 @git_error_set(i32, i8*, i32) #1

declare dso_local i64 @git_win32_path_to_utf8(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
