; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_sysdir.c_git_sysdir_find_in_dirlist.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_sysdir.c_git_sysdir_find_in_dirlist.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32 }

@GIT_PATH_LIST_SEPARATOR = common dso_local global i8 0, align 1
@GIT_ERROR_OS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"the %s file '%s' doesn't exist\00", align 1
@GIT_ENOTFOUND = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_9__*, i8*, i32, i8*)* @git_sysdir_find_in_dirlist to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @git_sysdir_find_in_dirlist(%struct.TYPE_9__* %0, i8* %1, i32 %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_9__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca %struct.TYPE_9__*, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  store i8* null, i8** %12, align 8
  %14 = load i32, i32* %8, align 4
  %15 = call i32 @git_sysdir_get(%struct.TYPE_9__** %13, i32 %14)
  %16 = call i32 @GIT_ERROR_CHECK_ERROR(i32 %15)
  %17 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %18 = icmp ne %struct.TYPE_9__* %17, null
  br i1 %18, label %19, label %23

19:                                               ; preds = %4
  %20 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %21 = call i32 @git_buf_len(%struct.TYPE_9__* %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %19, %4
  br label %104

24:                                               ; preds = %19
  %25 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %26 = call i8* @git_buf_cstr(%struct.TYPE_9__* %25)
  store i8* %26, i8** %11, align 8
  br label %27

27:                                               ; preds = %101, %24
  %28 = load i8*, i8** %11, align 8
  %29 = icmp ne i8* %28, null
  br i1 %29, label %30, label %103

30:                                               ; preds = %27
  %31 = load i8*, i8** %11, align 8
  store i8* %31, i8** %12, align 8
  br label %32

32:                                               ; preds = %55, %30
  %33 = load i8*, i8** %12, align 8
  %34 = load i8, i8* %33, align 1
  %35 = icmp ne i8 %34, 0
  br i1 %35, label %36, label %58

36:                                               ; preds = %32
  %37 = load i8*, i8** %12, align 8
  %38 = load i8, i8* %37, align 1
  %39 = sext i8 %38 to i32
  %40 = load i8, i8* @GIT_PATH_LIST_SEPARATOR, align 1
  %41 = sext i8 %40 to i32
  %42 = icmp eq i32 %39, %41
  br i1 %42, label %43, label %54

43:                                               ; preds = %36
  %44 = load i8*, i8** %12, align 8
  %45 = load i8*, i8** %11, align 8
  %46 = icmp ule i8* %44, %45
  br i1 %46, label %53, label %47

47:                                               ; preds = %43
  %48 = load i8*, i8** %12, align 8
  %49 = getelementptr inbounds i8, i8* %48, i64 -1
  %50 = load i8, i8* %49, align 1
  %51 = sext i8 %50 to i32
  %52 = icmp ne i32 %51, 92
  br i1 %52, label %53, label %54

53:                                               ; preds = %47, %43
  br label %58

54:                                               ; preds = %47, %36
  br label %55

55:                                               ; preds = %54
  %56 = load i8*, i8** %12, align 8
  %57 = getelementptr inbounds i8, i8* %56, i32 1
  store i8* %57, i8** %12, align 8
  br label %32

58:                                               ; preds = %53, %32
  %59 = load i8*, i8** %12, align 8
  %60 = load i8*, i8** %11, align 8
  %61 = ptrtoint i8* %59 to i64
  %62 = ptrtoint i8* %60 to i64
  %63 = sub i64 %61, %62
  store i64 %63, i64* %10, align 8
  %64 = load i8*, i8** %12, align 8
  %65 = load i8, i8* %64, align 1
  %66 = sext i8 %65 to i32
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %71

68:                                               ; preds = %58
  %69 = load i8*, i8** %12, align 8
  %70 = getelementptr inbounds i8, i8* %69, i64 1
  br label %72

71:                                               ; preds = %58
  br label %72

72:                                               ; preds = %71, %68
  %73 = phi i8* [ %70, %68 ], [ null, %71 ]
  store i8* %73, i8** %12, align 8
  %74 = load i64, i64* %10, align 8
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %77, label %76

76:                                               ; preds = %72
  br label %101

77:                                               ; preds = %72
  %78 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %79 = load i8*, i8** %11, align 8
  %80 = load i64, i64* %10, align 8
  %81 = call i32 @git_buf_set(%struct.TYPE_9__* %78, i8* %79, i64 %80)
  %82 = call i32 @GIT_ERROR_CHECK_ERROR(i32 %81)
  %83 = load i8*, i8** %7, align 8
  %84 = icmp ne i8* %83, null
  br i1 %84, label %85, label %93

85:                                               ; preds = %77
  %86 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %87 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %88 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = load i8*, i8** %7, align 8
  %91 = call i32 @git_buf_joinpath(%struct.TYPE_9__* %86, i32 %89, i8* %90)
  %92 = call i32 @GIT_ERROR_CHECK_ERROR(i32 %91)
  br label %93

93:                                               ; preds = %85, %77
  %94 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %95 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = call i64 @git_path_exists(i32 %96)
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %100

99:                                               ; preds = %93
  store i32 0, i32* %5, align 4
  br label %112

100:                                              ; preds = %93
  br label %101

101:                                              ; preds = %100, %76
  %102 = load i8*, i8** %12, align 8
  store i8* %102, i8** %11, align 8
  br label %27

103:                                              ; preds = %27
  br label %104

104:                                              ; preds = %103, %23
  %105 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %106 = call i32 @git_buf_dispose(%struct.TYPE_9__* %105)
  %107 = load i32, i32* @GIT_ERROR_OS, align 4
  %108 = load i8*, i8** %9, align 8
  %109 = load i8*, i8** %7, align 8
  %110 = call i32 @git_error_set(i32 %107, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i8* %108, i8* %109)
  %111 = load i32, i32* @GIT_ENOTFOUND, align 4
  store i32 %111, i32* %5, align 4
  br label %112

112:                                              ; preds = %104, %99
  %113 = load i32, i32* %5, align 4
  ret i32 %113
}

declare dso_local i32 @GIT_ERROR_CHECK_ERROR(i32) #1

declare dso_local i32 @git_sysdir_get(%struct.TYPE_9__**, i32) #1

declare dso_local i32 @git_buf_len(%struct.TYPE_9__*) #1

declare dso_local i8* @git_buf_cstr(%struct.TYPE_9__*) #1

declare dso_local i32 @git_buf_set(%struct.TYPE_9__*, i8*, i64) #1

declare dso_local i32 @git_buf_joinpath(%struct.TYPE_9__*, i32, i8*) #1

declare dso_local i64 @git_path_exists(i32) #1

declare dso_local i32 @git_buf_dispose(%struct.TYPE_9__*) #1

declare dso_local i32 @git_error_set(i32, i8*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
