; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_repository.c_git_repository_hashfile.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_repository.c_git_repository_hashfile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }

@GIT_BUF_INIT = common dso_local global %struct.TYPE_5__ zeroinitializer, align 4
@GIT_FILTER_TO_ODB = common dso_local global i32 0, align 4
@GIT_FILTER_DEFAULT = common dso_local global i32 0, align 4
@GIT_ERROR_OS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"file size overflow for 32-bit systems\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @git_repository_hashfile(i32* %0, i32* %1, i8* %2, i32 %3, i8* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca %struct.TYPE_5__, align 4
  store i32* %0, i32** %7, align 8
  store i32* %1, i32** %8, align 8
  store i8* %2, i8** %9, align 8
  store i32 %3, i32* %10, align 4
  store i8* %4, i8** %11, align 8
  store i32* null, i32** %13, align 8
  store i64 -1, i64* %14, align 8
  %17 = bitcast %struct.TYPE_5__* %16 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %17, i8* align 4 bitcast (%struct.TYPE_5__* @GIT_BUF_INIT to i8*), i64 4, i1 false)
  %18 = load i32*, i32** %7, align 8
  %19 = icmp ne i32* %18, null
  br i1 %19, label %20, label %26

20:                                               ; preds = %5
  %21 = load i8*, i8** %9, align 8
  %22 = icmp ne i8* %21, null
  br i1 %22, label %23, label %26

23:                                               ; preds = %20
  %24 = load i32*, i32** %8, align 8
  %25 = icmp ne i32* %24, null
  br label %26

26:                                               ; preds = %23, %20, %5
  %27 = phi i1 [ false, %20 ], [ false, %5 ], [ %25, %23 ]
  %28 = zext i1 %27 to i32
  %29 = call i32 @assert(i32 %28)
  %30 = load i8*, i8** %9, align 8
  %31 = load i32*, i32** %8, align 8
  %32 = call i32 @git_repository_workdir(i32* %31)
  %33 = call i32 @git_path_join_unrooted(%struct.TYPE_5__* %16, i8* %30, i32 %32, i32* null)
  store i32 %33, i32* %12, align 4
  %34 = load i32, i32* %12, align 4
  %35 = icmp slt i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %26
  %37 = load i32, i32* %12, align 4
  store i32 %37, i32* %6, align 4
  br label %101

38:                                               ; preds = %26
  %39 = load i8*, i8** %11, align 8
  %40 = icmp ne i8* %39, null
  br i1 %40, label %43, label %41

41:                                               ; preds = %38
  %42 = load i8*, i8** %9, align 8
  store i8* %42, i8** %11, align 8
  br label %43

43:                                               ; preds = %41, %38
  %44 = load i8*, i8** %11, align 8
  %45 = call i64 @strlen(i8* %44)
  %46 = icmp sgt i64 %45, 0
  br i1 %46, label %47, label %58

47:                                               ; preds = %43
  %48 = load i32*, i32** %8, align 8
  %49 = load i8*, i8** %11, align 8
  %50 = load i32, i32* @GIT_FILTER_TO_ODB, align 4
  %51 = load i32, i32* @GIT_FILTER_DEFAULT, align 4
  %52 = call i32 @git_filter_list_load(i32** %13, i32* %48, i32* null, i8* %49, i32 %50, i32 %51)
  store i32 %52, i32* %12, align 4
  %53 = load i32, i32* %12, align 4
  %54 = icmp slt i32 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %47
  %56 = load i32, i32* %12, align 4
  store i32 %56, i32* %6, align 4
  br label %101

57:                                               ; preds = %47
  br label %59

58:                                               ; preds = %43
  store i32 0, i32* %12, align 4
  br label %59

59:                                               ; preds = %58, %57
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = call i64 @git_futils_open_ro(i32 %61)
  store i64 %62, i64* %14, align 8
  %63 = load i64, i64* %14, align 8
  %64 = icmp slt i64 %63, 0
  br i1 %64, label %65, label %68

65:                                               ; preds = %59
  %66 = load i64, i64* %14, align 8
  %67 = trunc i64 %66 to i32
  store i32 %67, i32* %12, align 4
  br label %90

68:                                               ; preds = %59
  %69 = load i64, i64* %14, align 8
  %70 = call i64 @git_futils_filesize(i64 %69)
  store i64 %70, i64* %15, align 8
  %71 = load i64, i64* %15, align 8
  %72 = icmp slt i64 %71, 0
  br i1 %72, label %73, label %76

73:                                               ; preds = %68
  %74 = load i64, i64* %15, align 8
  %75 = trunc i64 %74 to i32
  store i32 %75, i32* %12, align 4
  br label %90

76:                                               ; preds = %68
  %77 = load i64, i64* %15, align 8
  %78 = call i32 @git__is_sizet(i64 %77)
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %83, label %80

80:                                               ; preds = %76
  %81 = load i32, i32* @GIT_ERROR_OS, align 4
  %82 = call i32 @git_error_set(i32 %81, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %12, align 4
  br label %90

83:                                               ; preds = %76
  %84 = load i32*, i32** %7, align 8
  %85 = load i64, i64* %14, align 8
  %86 = load i64, i64* %15, align 8
  %87 = load i32, i32* %10, align 4
  %88 = load i32*, i32** %13, align 8
  %89 = call i32 @git_odb__hashfd_filtered(i32* %84, i64 %85, i64 %86, i32 %87, i32* %88)
  store i32 %89, i32* %12, align 4
  br label %90

90:                                               ; preds = %83, %80, %73, %65
  %91 = load i64, i64* %14, align 8
  %92 = icmp sge i64 %91, 0
  br i1 %92, label %93, label %96

93:                                               ; preds = %90
  %94 = load i64, i64* %14, align 8
  %95 = call i32 @p_close(i64 %94)
  br label %96

96:                                               ; preds = %93, %90
  %97 = load i32*, i32** %13, align 8
  %98 = call i32 @git_filter_list_free(i32* %97)
  %99 = call i32 @git_buf_dispose(%struct.TYPE_5__* %16)
  %100 = load i32, i32* %12, align 4
  store i32 %100, i32* %6, align 4
  br label %101

101:                                              ; preds = %96, %55, %36
  %102 = load i32, i32* %6, align 4
  ret i32 %102
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @assert(i32) #2

declare dso_local i32 @git_path_join_unrooted(%struct.TYPE_5__*, i8*, i32, i32*) #2

declare dso_local i32 @git_repository_workdir(i32*) #2

declare dso_local i64 @strlen(i8*) #2

declare dso_local i32 @git_filter_list_load(i32**, i32*, i32*, i8*, i32, i32) #2

declare dso_local i64 @git_futils_open_ro(i32) #2

declare dso_local i64 @git_futils_filesize(i64) #2

declare dso_local i32 @git__is_sizet(i64) #2

declare dso_local i32 @git_error_set(i32, i8*) #2

declare dso_local i32 @git_odb__hashfd_filtered(i32*, i64, i64, i32, i32*) #2

declare dso_local i32 @p_close(i64) #2

declare dso_local i32 @git_filter_list_free(i32*) #2

declare dso_local i32 @git_buf_dispose(%struct.TYPE_5__*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
