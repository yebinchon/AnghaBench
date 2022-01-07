; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_path.c_git_path_direach.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_path.c_git_path_direach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32 }
%struct.dirent = type { i8* }

@GIT_ERROR_OS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"failed to open directory '%s'\00", align 1
@errno = common dso_local global i64 0, align 8
@ENOENT = common dso_local global i64 0, align 8
@GIT_ENOTFOUND = common dso_local global i32 0, align 4
@GIT_PATH_DIR_PRECOMPOSE_UNICODE = common dso_local global i32 0, align 4
@GIT_PATH_ICONV_INIT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @git_path_direach(%struct.TYPE_9__* %0, i32 %1, i32 (i8*, %struct.TYPE_9__*)* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_9__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32 (i8*, %struct.TYPE_9__*)*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca %struct.dirent*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 (i8*, %struct.TYPE_9__*)* %2, i32 (i8*, %struct.TYPE_9__*)** %8, align 8
  store i8* %3, i8** %9, align 8
  store i32 0, i32* %10, align 4
  %16 = load i32, i32* %7, align 4
  %17 = call i32 @GIT_UNUSED(i32 %16)
  %18 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %19 = call i64 @git_path_to_dir(%struct.TYPE_9__* %18)
  %20 = icmp slt i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %4
  store i32 -1, i32* %5, align 4
  br label %87

22:                                               ; preds = %4
  %23 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %24 = call i32 @git_buf_len(%struct.TYPE_9__* %23)
  store i32 %24, i32* %11, align 4
  %25 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %26 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32* @opendir(i32 %27)
  store i32* %28, i32** %12, align 8
  %29 = icmp eq i32* %28, null
  br i1 %29, label %30, label %42

30:                                               ; preds = %22
  %31 = load i32, i32* @GIT_ERROR_OS, align 4
  %32 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %33 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @git_error_set(i32 %31, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %34)
  %36 = load i64, i64* @errno, align 8
  %37 = load i64, i64* @ENOENT, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %39, label %41

39:                                               ; preds = %30
  %40 = load i32, i32* @GIT_ENOTFOUND, align 4
  store i32 %40, i32* %5, align 4
  br label %87

41:                                               ; preds = %30
  store i32 -1, i32* %5, align 4
  br label %87

42:                                               ; preds = %22
  br label %43

43:                                               ; preds = %82, %56, %42
  %44 = load i32*, i32** %12, align 8
  %45 = call %struct.dirent* @readdir(i32* %44)
  store %struct.dirent* %45, %struct.dirent** %13, align 8
  %46 = icmp ne %struct.dirent* %45, null
  br i1 %46, label %47, label %83

47:                                               ; preds = %43
  %48 = load %struct.dirent*, %struct.dirent** %13, align 8
  %49 = getelementptr inbounds %struct.dirent, %struct.dirent* %48, i32 0, i32 0
  %50 = load i8*, i8** %49, align 8
  store i8* %50, i8** %14, align 8
  %51 = load i8*, i8** %14, align 8
  %52 = call i64 @strlen(i8* %51)
  store i64 %52, i64* %15, align 8
  %53 = load i8*, i8** %14, align 8
  %54 = call i64 @git_path_is_dot_or_dotdot(i8* %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %47
  br label %43

57:                                               ; preds = %47
  %58 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %59 = load i8*, i8** %14, align 8
  %60 = load i64, i64* %15, align 8
  %61 = call i32 @git_buf_put(%struct.TYPE_9__* %58, i8* %59, i64 %60)
  store i32 %61, i32* %10, align 4
  %62 = icmp slt i32 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %57
  br label %83

64:                                               ; preds = %57
  %65 = call i32 (...) @git_error_clear()
  %66 = load i32 (i8*, %struct.TYPE_9__*)*, i32 (i8*, %struct.TYPE_9__*)** %8, align 8
  %67 = load i8*, i8** %9, align 8
  %68 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %69 = call i32 %66(i8* %67, %struct.TYPE_9__* %68)
  store i32 %69, i32* %10, align 4
  %70 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %71 = load i32, i32* %11, align 4
  %72 = call i32 @git_buf_truncate(%struct.TYPE_9__* %70, i32 %71)
  %73 = load i32, i32* %10, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %82

75:                                               ; preds = %64
  %76 = call i32 (...) @git_error_last()
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %81, label %78

78:                                               ; preds = %75
  %79 = load i32, i32* %10, align 4
  %80 = call i32 @git_error_set_after_callback(i32 %79)
  br label %81

81:                                               ; preds = %78, %75
  br label %83

82:                                               ; preds = %64
  br label %43

83:                                               ; preds = %81, %63, %43
  %84 = load i32*, i32** %12, align 8
  %85 = call i32 @closedir(i32* %84)
  %86 = load i32, i32* %10, align 4
  store i32 %86, i32* %5, align 4
  br label %87

87:                                               ; preds = %83, %41, %39, %21
  %88 = load i32, i32* %5, align 4
  ret i32 %88
}

declare dso_local i32 @GIT_UNUSED(i32) #1

declare dso_local i64 @git_path_to_dir(%struct.TYPE_9__*) #1

declare dso_local i32 @git_buf_len(%struct.TYPE_9__*) #1

declare dso_local i32* @opendir(i32) #1

declare dso_local i32 @git_error_set(i32, i8*, i32) #1

declare dso_local %struct.dirent* @readdir(i32*) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i64 @git_path_is_dot_or_dotdot(i8*) #1

declare dso_local i32 @git_buf_put(%struct.TYPE_9__*, i8*, i64) #1

declare dso_local i32 @git_error_clear(...) #1

declare dso_local i32 @git_buf_truncate(%struct.TYPE_9__*, i32) #1

declare dso_local i32 @git_error_last(...) #1

declare dso_local i32 @git_error_set_after_callback(i32) #1

declare dso_local i32 @closedir(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
