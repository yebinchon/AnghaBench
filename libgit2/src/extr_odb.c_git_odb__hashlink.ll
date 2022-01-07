; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_odb.c_git_odb__hashlink.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_odb.c_git_odb__hashlink.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stat = type { i32, i64 }

@GIT_ERROR_FILESYSTEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"file size overflow for 32-bit systems\00", align 1
@GIT_ERROR_OS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [37 x i8] c"failed to read symlink data for '%s'\00", align 1
@GIT_OBJECT_BLOB = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @git_odb__hashlink(i32* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.stat, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i8* %1, i8** %5, align 8
  %13 = load i8*, i8** %5, align 8
  %14 = call i64 @git_path_lstat(i8* %13, %struct.stat* %6)
  %15 = icmp slt i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %86

17:                                               ; preds = %2
  %18 = getelementptr inbounds %struct.stat, %struct.stat* %6, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = call i32 @git__is_int(i64 %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %27

22:                                               ; preds = %17
  %23 = getelementptr inbounds %struct.stat, %struct.stat* %6, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = trunc i64 %24 to i32
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %22, %17
  %28 = load i32, i32* @GIT_ERROR_FILESYSTEM, align 4
  %29 = call i32 (i32, i8*, ...) @git_error_set(i32 %28, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %86

30:                                               ; preds = %22
  %31 = getelementptr inbounds %struct.stat, %struct.stat* %6, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = trunc i64 %32 to i32
  store i32 %33, i32* %7, align 4
  %34 = getelementptr inbounds %struct.stat, %struct.stat* %6, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = call i64 @S_ISLNK(i32 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %70

38:                                               ; preds = %30
  %39 = load i32, i32* %7, align 4
  %40 = call i32 @GIT_ERROR_CHECK_ALLOC_ADD(i64* %11, i32 %39, i32 1)
  %41 = load i64, i64* %11, align 8
  %42 = call i8* @git__malloc(i64 %41)
  store i8* %42, i8** %9, align 8
  %43 = load i8*, i8** %9, align 8
  %44 = call i32 @GIT_ERROR_CHECK_ALLOC(i8* %43)
  %45 = load i8*, i8** %5, align 8
  %46 = load i8*, i8** %9, align 8
  %47 = load i32, i32* %7, align 4
  %48 = call i32 @p_readlink(i8* %45, i8* %46, i32 %47)
  store i32 %48, i32* %10, align 4
  %49 = load i8*, i8** %9, align 8
  %50 = load i32, i32* %7, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i8, i8* %49, i64 %51
  store i8 0, i8* %52, align 1
  %53 = load i32, i32* %10, align 4
  %54 = load i32, i32* %7, align 4
  %55 = icmp ne i32 %53, %54
  br i1 %55, label %56, label %62

56:                                               ; preds = %38
  %57 = load i32, i32* @GIT_ERROR_OS, align 4
  %58 = load i8*, i8** %5, align 8
  %59 = call i32 (i32, i8*, ...) @git_error_set(i32 %57, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i8* %58)
  %60 = load i8*, i8** %9, align 8
  %61 = call i32 @git__free(i8* %60)
  store i32 -1, i32* %3, align 4
  br label %86

62:                                               ; preds = %38
  %63 = load i32*, i32** %4, align 8
  %64 = load i8*, i8** %9, align 8
  %65 = load i32, i32* %7, align 4
  %66 = load i32, i32* @GIT_OBJECT_BLOB, align 4
  %67 = call i32 @git_odb_hash(i32* %63, i8* %64, i32 %65, i32 %66)
  store i32 %67, i32* %8, align 4
  %68 = load i8*, i8** %9, align 8
  %69 = call i32 @git__free(i8* %68)
  br label %84

70:                                               ; preds = %30
  %71 = load i8*, i8** %5, align 8
  %72 = call i32 @git_futils_open_ro(i8* %71)
  store i32 %72, i32* %12, align 4
  %73 = load i32, i32* %12, align 4
  %74 = icmp slt i32 %73, 0
  br i1 %74, label %75, label %76

75:                                               ; preds = %70
  store i32 -1, i32* %3, align 4
  br label %86

76:                                               ; preds = %70
  %77 = load i32*, i32** %4, align 8
  %78 = load i32, i32* %12, align 4
  %79 = load i32, i32* %7, align 4
  %80 = load i32, i32* @GIT_OBJECT_BLOB, align 4
  %81 = call i32 @git_odb__hashfd(i32* %77, i32 %78, i32 %79, i32 %80)
  store i32 %81, i32* %8, align 4
  %82 = load i32, i32* %12, align 4
  %83 = call i32 @p_close(i32 %82)
  br label %84

84:                                               ; preds = %76, %62
  %85 = load i32, i32* %8, align 4
  store i32 %85, i32* %3, align 4
  br label %86

86:                                               ; preds = %84, %75, %56, %27, %16
  %87 = load i32, i32* %3, align 4
  ret i32 %87
}

declare dso_local i64 @git_path_lstat(i8*, %struct.stat*) #1

declare dso_local i32 @git__is_int(i64) #1

declare dso_local i32 @git_error_set(i32, i8*, ...) #1

declare dso_local i64 @S_ISLNK(i32) #1

declare dso_local i32 @GIT_ERROR_CHECK_ALLOC_ADD(i64*, i32, i32) #1

declare dso_local i8* @git__malloc(i64) #1

declare dso_local i32 @GIT_ERROR_CHECK_ALLOC(i8*) #1

declare dso_local i32 @p_readlink(i8*, i8*, i32) #1

declare dso_local i32 @git__free(i8*) #1

declare dso_local i32 @git_odb_hash(i32*, i8*, i32, i32) #1

declare dso_local i32 @git_futils_open_ro(i8*) #1

declare dso_local i32 @git_odb__hashfd(i32*, i32, i32, i32) #1

declare dso_local i32 @p_close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
